package template

@require import "base:runtime"
@require import "core:fmt"
@require import adw "../../adwaita"
@require import "../../glib"
@require import gobj "../../glib/gobject"
@require import "../../glib/gio"
@require import "../../gtk"

// Return the GType of our widget, and register it if it isn't already.
my_button_get_type :: proc "c" () -> (type: gobj.Type) {
    @static static_type: gobj.Type

    // If the type is already registered, we just return the type id.
    if static_type != 0 { return static_type }

    info := gobj.TypeInfo{
        class_size = size_of(My_Box_Class),
        class_init = class_init,

        instance_size = size_of(My_Box),
        instance_init = instance_init,
    }
    type = gobj.type_register_static(gtk.box_get_type(), "My_Box", &info, .NONE)
    return

    // Constructors
    // These could be defined outside of this proc too, but it's nicer to have them contained here.

    // This handles everything that's related to the overall widget class.
    class_init :: proc "c" (class: glib.pointer, data: glib.pointer) {
        gtk.widget_class_set_template_from_resource(cast(^gtk.WidgetClass)class, "/example/box.ui")

        // We can set the click action here. See the blueprint `box.blp` for more information.
        widget_class := cast(^gtk.WidgetClass)class
        callback := cast(gobj.Callback)my_button_clicked
        gtk.widget_class_bind_template_callback_full(widget_class, "my_button_clicked", callback)

        // Rest of your class setup and virtual methods etc. go here as well.

        /*
        // Note: Normally, we could use this to bind children in the template too, but I can't get this to work.

        offset := cast(glib.ssize)offset_of(My_Box, button)

        gtk.widget_class_bind_template_child_full(
            widget_class,
            name = "my_button",
            internal_child = true,
            struct_offset = offset,
        )
        */

    }

    // This handles the individual instances of the widget.
    instance_init :: proc "c" (instance: ^gobj.TypeInstance, class_data: glib.pointer) {
        gtk.widget_init_template(cast(^gtk.Widget)instance)

        /*
        Similarly, this needs the binding from `class_init` to work.
        If it did, we could set up our child button here too.
        However, this currently segfaults and I have no idea why.

        button := cast(^gtk.Button)(
            gtk.widget_get_template_child(cast(^gtk.Widget)instance, gtk.button_get_type(), "my_button")
        )
        my_box := cast(^My_Box)instance
        my_box.button = button
        */

        // Rest of your instance overrides and setup go here as well.
    }
}

// This would get called when we click the button, if the above binding worked.
my_button_clicked :: proc "c"(button: ^gtk.Button) {
    parent := &button.parent_instance
    my_box := cast(^My_Box)parent

    my_box.button_clicked += 1

    context = runtime.default_context()
    fmt.printfln("Button clicked %d times!", my_box.button_clicked)
}

// Needed by GTK internally.
My_Box_Class :: struct {
    parent_class: gtk.BoxClass,
}

// The box instance.
// Note: `parent` field has to be the first.
My_Box :: struct {
    parent_instance: gtk.Box,
    button_clicked: int,
    // button: ^gtk.Button, // Segfaults if you try to access this, with the other button stuff uncommented.
}

main :: proc() {
    context = glib.create_context()

    // We must initialise GTK, otherwise our parent class, `gtk.Box` is not valid.
    gtk.init()

    // We load the resource file that was compiled by `glib-compile-resources`
    // The `.ui` file was created by blueprint-compiler.
    resource := gio.resource_load("box.gresource", nil)
    gio.resources_register(resource)

    app := adw.application_new("some.example", .NONE)
    defer gobj.object_unref(app)

    gobj.signal_connect(app, "activate", cast(gobj.Callback)show_window, nil)
    status := gio.application_run(cast(^gio.Application)app, 0, nil)

    if status != 0 {
        fmt.eprintfln("%#v", "oh no!")
    }
}

// We set up and show the main window here. This could be split up to multiple procs, obviously.
show_window :: proc "c" (app: ^adw.Application) {
    // GTK is very cast heavy, unfortunately.
    // I like to prefix generic variables with `_` as a note to myself.
    _window := adw.application_window_new(cast(^gtk.Application)(app))
    window := cast(^adw.ApplicationWindow)_window

    // We create our custom box here, initialised as per its init function.
    g_type := my_button_get_type()
    _my_button := gobj.object_new(g_type, nil)

    adw.application_window_set_content(window, cast(^gtk.Widget)_my_button)
    gtk.window_present(cast(^gtk.Window)_window)
}
