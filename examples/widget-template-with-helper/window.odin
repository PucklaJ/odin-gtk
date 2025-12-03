package template

import fmt     "core:fmt"
import runtime "base:runtime"

import adw     "../../adwaita"
import gio     "../../glib/gio"
import glib    "../../glib"
import gobj    "../../glib/gobject"
import gtk     "../../gtk"
import helper    "../../helper"

// The box instance.
// Note: `parent` field has to be the first.
My_Box :: struct {
    parent_instance: gtk.Box,
    button_clicked: int,
    button: ^gtk.Button,  // This field is populated automatically.
    button_label: cstring `gproperty:"1,button-label"`,
}

main :: proc() {
    context = glib.create_context()

    // We must initialise GTK, otherwise our parent class, `gtk.Box` is not valid.
    gtk.init()

    /*
    We load the resource file that was compiled by `glib-compile-resources`
    The `.ui` file was created by blueprint-compiler.
    Here, the resource is loaded from disk on every app start. Useful for development.

    resource := gio.resource_load(#directory + "box.gresource", nil)
    gio.resources_register(resource)
    */

    // Here, the resource is bundled into the application, useful for release builds.
    _, resource_err := helper.register_resource(#load("box.gresource"))
    if resource_err != nil {
        // log.fatalf("Could not load resource. Error: %s", resource_err.message)
        glib.free(resource_err)
        return
    }


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

    // If we only care about registering the child, and don't want to bind it to our struct,
    // we can leave `field_name` empty.
    template_children := []helper.Template_Child{
        {
            id         = "my-button",
            field_name = "button",
        },
    }
    // See gtk.Template_Data for more information about what this is.
    template_data := helper.Template_Data{
        resource_path = "/example/box.ui",
        children = template_children,
    }
    helper.register_type_with_template(
        My_Box,
        gtk.BoxClass,
        gtk.box_get_type(),
        &template_data,

        // We want to set a `clicked` signal to our button, so we must supply our own init proc.
        class_init_proc = my_box_class_init,
        instance_init_proc = my_box_instance_init,
    )

    // We create our custom box here, initialised as per its init function.
    my_box_g_type := helper.custom_type_get_type(My_Box)
    _my_box := gobj.object_new(my_box_g_type, nil)

    adw.application_window_set_content(window, cast(^gtk.Widget)_my_box)
    gtk.window_present(cast(^gtk.Window)_window)
}

// Our custom class init proc, since we want to set the `clicked` action on our button.
my_box_class_init :: proc "c" (class: glib.pointer, data: glib.pointer) {
    // We register the getter and setter procs for our box's custom gproperties.
    object_class := cast(^gobj.ObjectClass)class
    object_class.get_property = my_box_property_get
    object_class.set_property = my_box_property_set

    // We call the default init proc, so that we don't have to do the child binding and template setup ourselves.
    // This takes care of common use cases like registering children and annotated gproperties.
    helper.class_init_default_template(class, data)

    // We register our proc as a callback to the signal defined in the blueprint.
    // Alternatively, we could register the signal in the `instance_init` proc too.
    widget_class := cast(^gtk.WidgetClass)class
    clicked_callback := cast(gobj.Callback)my_button_clicked
    gtk.widget_class_bind_template_callback_full(widget_class, "my_button_clicked", clicked_callback)
}

// This is called by GTK whenever it wants to know the value of any of the registered properties.
my_box_property_get :: proc "c" (object: ^gobj.Object, property_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec) {
    my_box := cast(^My_Box)object
    switch property_id {
    case 1: // We set the id of our property to 1.
        gobj.value_set_string(value, my_box.button_label)
    }
}

my_box_instance_init :: proc "c" (instance: ^gobj.TypeInstance, class_data: glib.pointer) {
    // We call the default template to do the setup.
    helper.instance_init_default_template(instance, class_data)

    // We set a default value for our label, since the binding sets none by itself.
    my_box := cast(^My_Box)instance
    gtk.button_set_label(my_box.button, "Click me!")
}

// We can leave this empty for now because we don't plan on setting it through GTK.
my_box_property_set :: proc "c" (object: ^gobj.Object, property_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec) {}

// This will get called when we click the button.
my_button_clicked :: proc "c" (button: ^gtk.Button, data: glib.pointer) {
    parent := gtk.widget_get_parent(cast(^gtk.Widget)button)
    my_box := cast(^My_Box)parent

    my_box.button_clicked += 1

    context = runtime.default_context()
    fmt.printfln("Button clicked %d times!", my_box.button_clicked)

    button_clicked_cstring := fmt.caprintf("Clicked %d times!", my_box.button_clicked)

    // We set the property of our box, and tell GTK that it changed, which will automatically update everything that depends on it.
    delete(my_box.button_label)
    my_box.button_label = button_clicked_cstring
    gobj.object_notify(cast(^gobj.Object)my_box, "button-label")

    // In this case, we could have set the button label directly too, via:
    // gtk.button_set_label(button, button_clicked_cstring)
}
