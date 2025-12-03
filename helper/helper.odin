package helper

import fmt     "core:fmt"
import reflect "core:reflect"
import runtime "base:runtime"
import strconv "core:strconv"
import strings "core:strings"

import gio     "../glib/gio"
import glib    "../glib/"
import gobj    "../glib/gobject"
import gtk     "../gtk"

// Type holding information requried to register and bind template children.
Template_Data :: struct {
    // URI of the `.ui` file in the gresource.
    // Must be registered in advance with `gio.resources_register`
    resource_path: cstring,

    // A slice of template children you'd like registered.
    children:      []Template_Child,

    // The owning type. This is set by `register_type_with_template` automatically.
    type:          typeid,
}

Template_Child :: struct {
    // The id in the `.ui` file.
    id:         cstring,

    // The field name in our struct we want to bind it to.
    // If empty, it won't be bound.
    field_name: string,
}

/*
Register a resource from loaded bytes, embedded into the executable.

In case of an error, the caller must free it.

Example:
```odin
_, load_err := register_resource(#load("../relative/path.gresource"))
if load_err != nil {
    glib.free(err)
}
```
*/
@(require_results)
register_resource :: proc "contextless" (
    resource_bytes: []byte,
) -> (
    resource: ^gio.Resource,
    err: ^glib.Error,
) {
    blp_resource_bytes := glib.bytes_new_static(raw_data(resource_bytes), u64(len(resource_bytes)))
    blp_resource := gio.resource_new_from_data(blp_resource_bytes, &err)
    if err != nil {
        resource = nil
        return resource, err
    }
    gio.resources_register(blp_resource)

    return
}

/*
This must be called once before you do anything with your custom widget,
otherwise it is not defined in the gobject typesystem!

Default class and instance init procs don't do anything, so if you need subtype binding or some other setup,
you need to supply them yourself.
*/
register_type :: proc "contextless" (
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

    context = runtime.default_context()

    info := gobj.TypeInfo{
        class_size = size_of(Custom_Type_Class),
        class_init = class_init_proc,

        instance_size = size_of(instance_type),
        instance_init = instance_init_proc,
    }

    my_type_name := fmt.caprint(typeid_of(instance_type))
    defer delete(my_type_name)
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
register_type_with_template :: proc "contextless" (
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

    template_data.type = instance_type
    context = runtime.default_context()

    info := gobj.TypeInfo{
        class_size = size_of(Custom_Type_Class),
        class_init = class_init_proc,
        class_data = template_data,

        instance_size = size_of(instance_type),
        instance_init = instance_init_proc,
    }

    my_type_name := fmt.caprint(typeid_of(instance_type))
    defer delete(my_type_name)

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
custom_type_get_type :: proc "contextless" ($instance_type: typeid) -> (g_type: gobj.Type) {
    g_type_ptr := custom_type_get_type_ptr(instance_type)
    g_type = g_type_ptr^
    return
}


/*
Takes care of necessary **instance** initialisation, like registering signals and setting
default property values.

**Note**: It is recommended to call this at the beginning of your own implementation too, since this
takes care of the widget initialisation, which is necessary in all cases.
*/
instance_init_default_template :: proc "c" (instance: ^gobj.TypeInstance, class_data: glib.pointer) {
    gtk.widget_init_template(cast(^gtk.Widget)instance)
}

/*
Takes care of necessary **class** initialisation, like binding children and setting up the template.
Everything class-related, such as registering callbacks or implementing virtual methods
should be done here as well.

**Note**: It is recommended to call this at the beginning of your own implementation too, since this
takes care of all the necessary steps you'd need to do anyway.
*/
class_init_default_template :: proc "c" (class: glib.pointer, data: glib.pointer) {
    widget_class := cast(^gtk.WidgetClass)class
    template_data := cast(^Template_Data)data

    gtk.widget_class_set_template_from_resource(widget_class, template_data.resource_path)

    // Required by `reflect`.
    context = runtime.default_context()

    for child in template_data.children {
        field := reflect.struct_field_by_name(template_data.type, child.field_name)

        gtk.widget_class_bind_template_child_full(
            widget_class,
            name = child.id,
            internal_child = false,
            struct_offset = cast(glib.ssize)field.offset,
        )
    }

    object_class := cast(^gobj.ObjectClass)class
    fields := reflect.struct_fields_zipped(template_data.type)
    for field in fields {
        // We need to get the id and the property name, in the format "3,my-property-name"
        tag, ok := reflect.struct_tag_lookup(field.tag, "gproperty")
        if ok {
            sep_index := strings.index_rune(tag, ',')
            if sep_index == -1 { continue }

            param_spec, spec_ok := create_param_spec(field.type.id, tag[sep_index + 1:])
            if !spec_ok { continue }

            id, id_ok := strconv.parse_uint(tag[:sep_index])
            if !id_ok { continue }

            gobj.object_class_install_property(object_class, u32(id), param_spec)
        }
    }

    create_param_spec :: proc "c" (type: typeid, tag: string) -> (param_spec: ^gobj.ParamSpec, ok: bool) {
        context = runtime.default_context()
        ok = true
        name := fmt.caprint(tag)
        defer delete(name)

        switch type {
        case string:
            param_spec = gobj.param_spec_string(
                name = name,
                nick = nil,
                blurb = nil,
                default_value = nil,
                flags = gobj.ParamFlags.READWRITE,
            )
        case cstring:
            param_spec = gobj.param_spec_string(
                name = name,
                nick = nil,
                blurb = nil,
                default_value = nil,
                flags = gobj.ParamFlags.READWRITE,
            )
        case bool:
            param_spec = gobj.param_spec_boolean(
                name = name,
                nick = nil,
                blurb = nil,
                default_value = false,
                flags = gobj.ParamFlags.READWRITE,
            )
        case i8:
            param_spec = gobj.param_spec_char(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(i8),
                maximum = max(i8),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case u8:
            param_spec = gobj.param_spec_uchar(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(u8),
                maximum = max(u8),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case i32:
            param_spec = gobj.param_spec_int(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(i32),
                maximum = max(i32),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case u32:
            param_spec = gobj.param_spec_uint(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(u32),
                maximum = max(u32),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case i64:
            param_spec = gobj.param_spec_int64(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(i64),
                maximum = max(i64),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case int:
            param_spec = gobj.param_spec_int64(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(i64),
                maximum = max(i64),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case u64:
            param_spec = gobj.param_spec_uint64(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(u64),
                maximum = max(u64),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case uint:
            param_spec = gobj.param_spec_uint64(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(u64),
                maximum = max(u64),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case f32:
            param_spec = gobj.param_spec_float(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(f32),
                maximum = max(f32),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case f64:
            param_spec = gobj.param_spec_double(
                name = name,
                nick = nil,
                blurb = nil,
                minimum = min(f64),
                maximum = max(f64),
                default_value = 0,
                flags = gobj.ParamFlags.READWRITE,
            )
        case gobj.Object:
            param_spec = gobj.param_spec_object(
                name = name,
                nick = nil,
                blurb = nil,
                object_type = gobj.object_get_type(),
                flags = gobj.ParamFlags.READWRITE,
            )
        case: ok = false
        }

        return
    }
}

// Helper proc to store the internal `gobject.Type` for each custom type. Needs to be set from
// one of the register procs.
@(private, require_results)
custom_type_get_type_ptr :: proc "contextless" ($instance_type: typeid) -> (g_type: ^gobj.Type) {
    @static static_g_type: gobj.Type
    g_type = &static_g_type
    return
}

@private
instance_init_default :: proc "c" (instance: ^gobj.TypeInstance, class_data: glib.pointer) {}

@private
class_init_default :: proc "c" (class: glib.pointer, data: glib.pointer) {}
