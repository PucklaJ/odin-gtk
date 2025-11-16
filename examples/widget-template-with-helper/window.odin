package template

@require import "base:runtime"
@require import "core:fmt"
@require import adw "../../adwaita"
@require import "../../glib"
@require import gobj "../../glib/gobject"
@require import "../../glib/gio"
@require import "../../gtk"

// The box instance.
// Note: `parent` field has to be the first.
My_Box :: struct {
    parent_instance: gtk.Box,
    button_clicked: int,
    button: ^gtk.Button,  // This field is populated automatically.
}

main :: proc() {
    context = glib.create_context()

    // We must initialise GTK, otherwise our parent class, `gtk.Box` is not valid.
    gtk.init()

    // We load the resource file that was compiled by `glib-compile-resources`
    // The `.ui` file was created by blueprint-compiler.
    // use the `#load` directive for release builds, to bundle it into the app.
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

    // Context is needed for reflection used by the setup.
    context = runtime.default_context()

    // If we only care about registering the child, and don't want to bind it to our struct,
    // we can leave `field_name` empty.
    template_children := []gtk.Template_Child{
        {
            id         = "my-button",
            field_name = "button",
        },
    }
    // See gtk.Template_Data for more information about what this is.
    template_data := gtk.Template_Data{
        resource_path = "/example/box.ui",
        children = template_children,
        type = My_Box,
    }
    gtk.register_type_with_template(My_Box,
        gtk.BoxClass,
        gtk.box_get_type(),
        &template_data,

        // We want to set a `clicked` signal to our button, so we must supply our own init proc.
        class_init_proc = my_box_class_init,
    )

    // We create our custom box here, initialised as per its init function.
    my_box_g_type := gtk.custom_type_get_type(My_Box)
    _my_box := gobj.object_new(my_box_g_type, nil)

    adw.application_window_set_content(window, cast(^gtk.Widget)_my_box)
    gtk.window_present(cast(^gtk.Window)_window)
}

// Our custom class init proc, since we want to set the `clicked` action on our button.
my_box_class_init :: proc "c" (class: glib.pointer, data: glib.pointer) {
    // We call the default init proc, so that we don't have to do the child binding and template setup ourselves.
    gtk.class_init_default_template(class, data)

    // We register our proc as a callback to the signal defined in the blueprint.
    // Alternatively, we could register the signal in the `instance_init` proc too.
    widget_class := cast(^gtk.WidgetClass)class
    clicked_callback := cast(gobj.Callback)my_button_clicked
    gtk.widget_class_bind_template_callback_full(widget_class, "my_button_clicked", clicked_callback)
}

// This will get called when we click the button.
my_button_clicked :: proc "c"(button: ^gtk.Button, data: glib.pointer) {
    parent := gtk.widget_get_parent(cast(^gtk.Widget)button)
    my_box := cast(^My_Box)parent

    my_box.button_clicked += 1

    context = runtime.default_context()
    fmt.printfln("Button clicked %d times!", my_box.button_clicked)

    button_clicked_cstring := fmt.ctprintf("Clicked %d times!", my_box.button_clicked)
    gtk.button_set_label(button, button_clicked_cstring)
}
