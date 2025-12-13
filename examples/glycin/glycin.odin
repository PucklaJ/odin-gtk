package main

import adw "../../adwaita"
import gio "../../glib/gio"
import gly "../../glycin"
import gly_gtk "../../glycin/gtk4"
import gobj "../../glib/gobject"
import gtk "../../gtk"

app_window: ^adw.ApplicationWindow

// Generic adwaita application setup
main :: proc() {
	gtk.init()

	app := adw.application_new("some.example", .NONE)
    defer gobj.object_unref(app)

    gobj.signal_connect(app, "activate", cast(gobj.Callback)show_window, nil)
    gobj.signal_connect(app, "startup",  cast(gobj.Callback)startup,     nil)

    gio.application_run(cast(^gio.Application)app, 0, nil)
}

startup :: proc "c" (app: ^adw.Application) {
	// Add the window, as per usual.
	_app_window := adw.application_window_new(cast(^gtk.Application)app)
    app_window   = cast(^adw.ApplicationWindow)_app_window
    gtk.application_add_window(cast(^gtk.Application)app, cast(^gtk.Window)_app_window)

    // Load the file with glycin.
    // `loader_new` spins up a sandbox, so if you intend to load multiple images,
    // you should try to reuse the same loader.
	file   := gio.file_new_for_path(#directory + "Odin.jxl")
	loader := gly.loader_new(file)
	image  := gly.loader_load(loader, nil)
	frame  := gly.image_next_frame(image, nil)

	// Clean up everything, since we only need the texture
	// and don't intend to load anything else with this loader after this.
	defer gobj.object_unref(file)
	defer gobj.object_unref(loader)
	defer gobj.object_unref(image)
	defer gobj.object_unref(frame)

	// Make it a ^Paintable
	texture   := gly_gtk.gtk_frame_get_texture(frame)
	paintable := cast(^gtk.Paintable)texture

	// Set it to the image
	_picture := gtk.picture_new()
	picture  := cast(^gtk.Picture)_picture
	gtk.picture_set_paintable(picture, paintable)

	// Et voilà!
	adw.application_window_set_content(app_window, _picture)
}

show_window :: proc "c" (app: ^adw.Application) {
    gtk.window_present(cast(^gtk.Window)app_window)
}
