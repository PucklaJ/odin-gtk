package gtk

import "base:runtime"
import "core:reflect"
@require import "core:fmt"
import gobj "../glib/gobject"
import "../glib/"

Template_Data :: struct {
    // URI of the `.ui` file in the gresource.
    // Must be registered in advance with `gio.resources_register`
    resource_path: cstring,

    // A slice of template ids of the children you'd like registered.
    children: []cstring,

    // The owning type.
    type: typeid,
}

/*
This must be called once before you do anything with your custom widget,
otherwise it is not defined in the gobject typesystem!

Default class and instance init procs don't do anything, so if you need subtype binding or some other setup,
you need to supply them yourself.
*/
register_type :: proc(
    $instance_type: typeid,
    $parent_class_type: typeid,
    parent_g_type: gobj.Type,
    instance_init_proc: gobj.InstanceInitFunc = instance_init_default,
    class_init_proc: gobj.ClassInitFunc = class_init_default,
) -> (
    g_type: gobj.Type,
) {

    static_g_type_ptr := custom_type_get_type_ptr(instance_type)
    static_g_type := static_g_type_ptr^
    if static_g_type != 0 { return static_g_type }

    info := gobj.TypeInfo{
        class_size = size_of(Custom_Type_Class),
        class_init = class_init_proc,

        instance_size = size_of(instance_type),
        instance_init = instance_init_proc,
    }

    my_type_name := fmt.ctprint(typeid_of(instance_type))
    registered_g_type := gobj.type_register_static(parent_g_type, my_type_name, &info, .NONE)

    static_g_type_ptr^ = registered_g_type
    g_type = registered_g_type
    return

    Custom_Type_Class :: struct {
        parent_class: parent_class_type,
    }
}

/*
This must be called once before you do anything with your custom widget,
otherwise it is not defined in the gobject typesystem!

Default class and instance init procs don't do anything, so if you need subtype binding or some other setup,
you need to supply them yourself.

The default instance init proc does not depend on the template data, so it can safely be on the stack.

**Warning**: If your instance init proc depends on the template data, you must not free it while you
keep making widgets of this type!
*/
register_type_with_template :: proc(
    $instance_type: typeid,
    $parent_class_type: typeid,
    parent_g_type: gobj.Type,
    template_data: ^Template_Data,
    instance_init_proc: gobj.InstanceInitFunc = instance_init_default_template,
    class_init_proc: gobj.ClassInitFunc = class_init_default_template,
) -> (
    g_type: gobj.Type,
) {
    static_g_type_ptr := custom_type_get_type_ptr(instance_type)
    static_g_type := static_g_type_ptr^
    if static_g_type != 0 { return static_g_type }

    info := gobj.TypeInfo{
        class_size = size_of(Custom_Type_Class),
        class_init = class_init_proc,
        class_data = template_data,

        instance_size = size_of(instance_type),
        instance_init = instance_init_proc,
    }

    my_type_name := fmt.ctprint(typeid_of(instance_type))
    registered_g_type := gobj.type_register_static(parent_g_type, my_type_name, &info, .NONE)

    static_g_type_ptr^ = registered_g_type
    g_type = registered_g_type
    return

    Custom_Type_Class :: struct {
        parent_class: parent_class_type,
    }
}

// Returns the `gobject.Type` of the custom widget.
//
// Note: Widget must already be registered in the type system via `register_type` or
// `register_type_from_template`.
@(require_results)
custom_type_get_type :: proc($instance_type: typeid) -> (g_type: gobj.Type) {
    g_type_ptr := custom_type_get_type_ptr(instance_type)
    g_type = g_type_ptr^
    return
}

// Helper proc to store the internal `gobject.Type` for each custom type. Needs to be set from
// one of the register procs.
@(private, require_results)
custom_type_get_type_ptr :: proc($instance_type: typeid) -> (g_type: ^gobj.Type) {
    @static static_g_type: gobj.Type
    g_type = &static_g_type
    return
}

@private
instance_init_default :: proc "c" (instance: ^gobj.TypeInstance, class_data: glib.pointer) {}

@private
class_init_default :: proc "c" (class: glib.pointer, data: glib.pointer) {}

// Takes care of necessary initialisation, like binding children and setting up the template.
// You can safely call this at the beginning of your own implementation too.
instance_init_default_template :: proc "c" (instance: ^gobj.TypeInstance, class_data: glib.pointer) {
    widget_init_template(cast(^Widget)instance)
}

// Takes care of necessary initialisation, like binding children and setting up the template.
// You can safely call this at the beginning of your own implementation too.
class_init_default_template :: proc "c" (class: glib.pointer, data: glib.pointer) {
    widget_class := cast(^WidgetClass)class
    template_data := cast(^Template_Data)data

    widget_class_set_template_from_resource(cast(^WidgetClass)class, template_data.resource_path)

    // Required by `reflect`.
    context = runtime.default_context()

    for child in template_data.children {
        field := reflect.struct_field_by_name(template_data.type, string(child))

        widget_class_bind_template_child_full(
            widget_class,
            name = child,
            internal_child = false,
            struct_offset = cast(glib.ssize)field.offset,
        )
    }
}
