/*
This example registers all the template widgets and GObjects manually.
*/
package template_manual

import fmt     "core:fmt"
import runtime "base:runtime"

import adw  "../../adwaita"
import gio  "../../glib/gio"
import glib "../../glib"
import gobj "../../glib/gobject"
import gtk  "../../gtk"

// Needed by GTK internally.
My_Box_Class :: struct {
	parent_class: gtk.BoxClass,
}

// The box instance.
// Note: `parent` field has to be the first.
My_Box :: struct {
	parent_instance: gtk.Box,
	button_clicked:  int,
	button:          ^gtk.Button, // this field is set by us in the `class_init` proc.
}

// Return the GType of our widget, and register it if it isn't already.
my_box_get_type :: proc "contextless" () -> (g_type: gobj.Type) {
	@static static_g_type: gobj.Type

	// If the type is already registered, we just return the type id.
	if static_g_type != 0 { return static_g_type }

	info := gobj.TypeInfo{
		class_size = size_of(My_Box_Class),
		class_init = class_init,

		instance_size = size_of(My_Box),
		instance_init = instance_init,
	}
	// We save the type id so it sticks.
	static_g_type = gobj.type_register_static(gtk.box_get_type(), "My_Box", &info, .NONE)
	g_type = static_g_type
	return

	// Constructors
	// These could be defined outside of this proc too, but it's nicer to have them contained here.

	// This handles everything that's related to the overall widget class.
	class_init :: proc "c" (class: ^gobj.TypeClass, data: glib.pointer) {
		gtk.widget_class_set_template_from_resource(cast(^gtk.WidgetClass)class, "/example/box.ui")

		// We can set the click action here. See the blueprint `box.blp` for more information.
		// Alternatively, we could set it in the `instance_init` proc as well.
		widget_class := cast(^gtk.WidgetClass)class
		offset := cast(glib.ssize)offset_of(My_Box, button)

		gtk.widget_class_bind_template_child_full(
			widget_class,
			name = "my-button",
			internal_child = false, // I have no idea what this does. Both work (shrug).
			struct_offset = offset, // This will automatically bind our button into our My_Box struct. How cool!
		)

		// We set up our button's clicked action defined in the blueprint.
		// Refer to the `instance_init` proc if you want to set it without blueprint.
		clicked_callback := cast(gobj.Callback)my_button_clicked
		gtk.widget_class_bind_template_callback_full(widget_class, "my_button_clicked", clicked_callback)

		// Rest of your class setup and virtual methods etc. go here as well.
	}

	// This handles the individual instances of the widget.
	instance_init :: proc "c" (instance: ^gobj.TypeInstance, class_data: glib.pointer) {
		gtk.widget_init_template(cast(^gtk.Widget)instance)

		/*
		// We could also set up our child button here instead, if we wanted to.

		button := cast(^gtk.Button)(
			gtk.widget_get_template_child(cast(^gtk.Widget)instance, my_button_get_type(), "my-button")
		)
		my_box := cast(^My_Box)instance
		my_box.button = button

		// It is, however, important to note that we would need to unset the `my_button_clicked` signal
		// in the blueprint. It's either-or. Both cannot be true at once, GTK will yell at us otherwise.

		clicked_callback := cast(gobj.Callback)my_button_clicked
		gobj.signal_connect(button, "clicked", clicked_callback, nil)
		*/

		// Rest of your instance overrides and setup go here as well.
	}

	// This will get called when we click the button.
	my_button_clicked :: proc "c" (button: ^gtk.Button, data: glib.pointer) {
		parent := gtk.widget_get_parent(cast(^gtk.Widget)button)
		my_box := cast(^My_Box)parent

		my_box.button_clicked += 1

		context = runtime.default_context()
		fmt.printfln("Button clicked %d times!", my_box.button_clicked)

		// GTK copies our string, so we are responsible for freeing the memory.
		button_clicked_cstring := fmt.caprintf("Clicked %d times!", my_box.button_clicked)
		defer delete(button_clicked_cstring)

		gtk.button_set_label(button, button_clicked_cstring)
	}
}


main :: proc() {
	context = glib.create_context()

	// We must initialise GTK, otherwise our parent class, `gtk.Box` is not valid.
	gtk.init()

	// We load the resource file that was compiled by `glib-compile-resources`
	// The `.ui` file was created by blueprint-compiler.
	// use the `#load` directive for release builds, to bundle it into the app.
	resource := gio.resource_load(#directory + "box.gresource", nil)
	gio.resources_register(resource)

	app := adw.application_new("some.example", .NONE)
	defer gobj.object_unref(app)

	Signals: {
		// This is emitted exactly once when our app is getting set up.
		gobj.signal_connect(app, "startup", startup)

		// This can be emitted multiple times while the app is running, so we don't
		// want to do any initialisation here, just display the window.
		gobj.signal_connect(app, "activate", show_window)
	}

	status := gio.application_run(cast(^gio.Application)app, 0, nil)
	if status != 0 {
		fmt.eprintfln("%#v", "oh no!")
	}
}

// We run this when the `startup` signal is emitted to set up our window.
startup :: proc "c" (app: ^gtk.Application) {
	// I like to prefix generic GTK variables with `_` as a note to myself.
	_window := adw.application_window_new(app)
	window := cast(^adw.ApplicationWindow)_window

	// We create our custom box here, initialised as per its init function.
	my_box_g_type := my_box_get_type()
	_my_box := gobj.object_new(my_box_g_type, nil)

	adw.application_window_set_content(window, cast(^gtk.Widget)_my_box)
}

// We present the window whenever the `activate` signal is emitted.
show_window :: proc "c" (app: ^gtk.Application) {
	window := gtk.application_get_active_window(app)
	gtk.window_present(window)
}
