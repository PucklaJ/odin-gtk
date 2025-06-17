package main

import cairo "../../cairo"
import glib "../../glib"
import gio "../../glib/gio"
import gobj "../../glib/gobject"
import gtk "../../gtk"
import gtk_layer "../../gtk/layer-shell"
import "base:runtime"
import "core:os"
import "core:strings"

BALL_RADIUS :: 80
BALL_SPEED :: 200

Data :: struct {
	x, y:         f64,
	dir_x, dir_y: f64,
	start_time:   glib.int64,
	quit_btn:     ^gtk.Button,
	fixed:        ^gtk.Fixed,
	img:          ^cairo.surface_t,
}

main :: proc() {
	ctx := glib.create_context()
	context = ctx
	data := Data {
		start_time = glib.get_monotonic_time(),
		x          = 100.0,
		y          = 100.0,
		dir_x      = 1.0,
		dir_y      = 1.0,
	}

	ctx.user_ptr = &data

	app := gtk.application_new("org.runic.bouncy-ball", .APPLICATION_DEFAULT_FLAGS)
	defer gobj.object_unref(app)

	gobj.signal_connect(app, "activate", cast(gobj.Callback)activate, &ctx)

	argv := make([]cstring, len(os.args))
	for &arg, idx in argv {
		arg = strings.clone_to_cstring(os.args[idx])
	}
	defer delete(argv)
	defer for arg in argv do delete(arg)

	status := gio.application_run(cast(^gio.Application)app, i32(len(argv)), raw_data(argv))

	if status != 0 {
		os.exit(int(status))
	}
}

activate :: proc "c" (app: ^gtk.Application, user_data: glib.pointer) {
	context = (cast(^runtime.Context)user_data)^
	data := cast(^Data)context.user_ptr

	window := gobj.type_cast(gtk.Window, gtk.application_window_new(app), gtk.window_get_type())

	css := gtk.css_provider_new()
	gtk.css_provider_load_from_string(css, "window.background {background: unset;}")
	display := gtk.gdk_display_get_default()
	gtk.style_context_add_provider_for_display(
		display,
		gobj.type_cast(gtk.StyleProvider, css, gtk.style_provider_get_type()),
		600,
	)

	gtk_layer.init_for_window(window)
	gtk_layer.set_layer(window, .TOP)
	gtk_layer.set_anchor(window, .LEFT, true)
	gtk_layer.set_anchor(window, .RIGHT, true)
	gtk_layer.set_anchor(window, .TOP, true)
	gtk_layer.set_anchor(window, .BOTTOM, true)

	area := gobj.type_cast(gtk.DrawingArea, gtk.drawing_area_new(), gtk.TYPE_DRAWING_AREA())
	gtk.drawing_area_set_draw_func(area, draw, user_data, nil)
	gobj.signal_connect(area, "realize", cast(gobj.Callback)init, user_data)

	quit_btn := gobj.type_cast(gtk.Button, gtk.button_new_with_label("Quit"), gtk.TYPE_BUTTON())
	data.quit_btn = quit_btn
	gobj.signal_connect(
		quit_btn,
		"clicked",
		cast(gobj.Callback)proc "c" (self: ^gtk.Button, user_data: glib.pointer) {
			gtk.window_close(cast(^gtk.Window)user_data)
		},
		window,
	)
	fixed := gobj.type_cast(gtk.Fixed, gtk.fixed_new(), gtk.TYPE_FIXED())
	data.fixed = fixed
	gtk.widget_set_hexpand(auto_cast fixed, true)
	gtk.widget_set_vexpand(auto_cast fixed, true)
	gtk.widget_set_halign(auto_cast fixed, .FILL)
	gtk.widget_set_valign(auto_cast fixed, .FILL)

	overlay := gobj.type_cast(gtk.Overlay, gtk.overlay_new(), gtk.TYPE_OVERLAY())
	gtk.overlay_set_child(overlay, auto_cast area)
	gtk.overlay_add_overlay(overlay, auto_cast fixed)

	gtk.fixed_put(fixed, auto_cast quit_btn, 0.0, 0.0)

	gtk.window_set_child(window, auto_cast overlay)
	gtk.window_present(window)
}

init :: proc "c" (area: ^gtk.DrawingArea, user_data: glib.pointer) {
	context = (cast(^runtime.Context)user_data)^
	data := cast(^Data)context.user_ptr

	data.img = cairo.image_surface_create_from_png("examples/bouncy-ball/ball.png")

	gobj.object_ref(area)
	glib.timeout_add(1, proc "c" (user_data: glib.pointer) -> glib.boolean {
			area := gobj.type_cast(
				gtk.DrawingArea,
				cast(^gtk.DrawingArea)user_data,
				gtk.TYPE_DRAWING_AREA(),
			)

			gtk.widget_queue_draw(auto_cast area)

			return true
		}, area)
}

draw :: proc "c" (
	area: ^gtk.DrawingArea,
	cr: ^cairo.context_t,
	width: glib.int_,
	height: glib.int_,
	user_data: glib.pointer,
) {
	context = (cast(^runtime.Context)user_data)^
	data := cast(^Data)context.user_ptr

	defer data.start_time = glib.get_monotonic_time()
	end_time := glib.get_monotonic_time()
	delta_time := f64(end_time - data.start_time) / 1000000

	img_width := cairo.image_surface_get_width(data.img)
	img_height := cairo.image_surface_get_height(data.img)

	data.x += data.dir_x * BALL_SPEED * delta_time
	data.y += data.dir_y * BALL_SPEED * delta_time

	x_right := data.x + f64(img_width / 2)
	x_left := data.x - f64(img_width / 2)
	y_top := data.y - f64(img_height / 2)
	y_bottom := data.y + f64(img_height / 2)

	if x_right > f64(width) {
		data.dir_x = -1.0
	} else if x_left < 0.0 {
		data.dir_x = 1.0
	}
	if y_bottom > f64(height) {
		data.dir_y = -1.0
	} else if y_top < 0.0 {
		data.dir_y = 1.0
	}

	cairo.set_source_surface(
		cr,
		data.img,
		data.x - f64(img_width / 2),
		data.y - f64(img_height / 2),
	)
	cairo.paint(cr)
}
