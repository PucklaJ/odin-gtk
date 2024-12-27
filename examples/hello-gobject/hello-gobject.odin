package main

import g "../../glib"
import gobj "../../glib/gobject"
import "core:c/libc"

Person :: _Person
PersonClass :: _PersonClass

// The Person class structure
_Person :: struct {
    parent_instance: gobj.Object,
    name:            cstring,
    age:             g.int_,
}

// The class structure of Person
_PersonClass :: struct {
    parent_class: gobj.ObjectClass,
}

person_parent_class: g.pointer = nil
Person_private_offset: g.int_
person_class_intern_init :: proc "c" (klass, klass_data: g.pointer) {
    person_parent_class = gobj.type_class_peek_parent(klass)
    if (Person_private_offset != 0) do gobj.type_class_adjust_private_offset(klass, &Person_private_offset)

    person_class_init(cast(^PersonClass)klass)
}

person_type_id: gobj.Type
person_get_type :: proc "c" () -> gobj.Type {
    if person_type_id == 0 {
        person_type_id = gobj.type_register_static_simple(
            gobj.TYPE_OBJECT,
            g.intern_static_string("Person"),
            size_of(PersonClass),
            person_class_intern_init,
            size_of(Person),
            person_init,
            .NONE,
        )
    }

    return person_type_id
}

// Define the Person object
// G_DEFINE_TYPE(Person, person, G_TYPE_OBJECT);

// The class initialization function (like a constructor)
person_class_init :: proc "c" (klass: ^PersonClass) {
    object_class: ^gobj.ObjectClass = cast(^gobj.ObjectClass)klass

    // GObject class setup for property management
    object_class.set_property =
    proc "c" (
        object: ^gobj.Object,
        property_id: g.uint_,
        value: ^gobj.Value,
        pspec: ^gobj.ParamSpec,
    ) {
        person := cast(^Person)object
        switch property_id {
        case 1:
            if person.name != nil do g.free(cast(rawptr)person.name)

            name := gobj.value_get_string(value)
            person.name = g.strdup(name)
        case 2:
            age := gobj.value_get_int(value)
            person.age = age
        }
    }
    object_class.get_property =
    proc "c" (
        object: ^gobj.Object,
        property_id: g.uint_,
        value: ^gobj.Value,
        pspec: ^gobj.ParamSpec,
    ) {
        person := cast(^Person)object

        switch property_id {
        case 1:
            gobj.value_set_string(value, g.strdup(person.name))
        case 2:
            gobj.value_set_int(value, person.age)
        }
    }

    // Register properties (name and age) for the object class
    gobj.object_class_install_property(
        object_class,
        1,
        gobj.param_spec_string(
            "name",
            "Name",
            "The name of the person",
            nil,
            .READWRITE,
        ),
    )

    gobj.object_class_install_property(
        object_class,
        2,
        gobj.param_spec_int(
            "age",
            "Age",
            "The age of the person",
            0,
            libc.INT32_MAX,
            0,
            .READWRITE,
        ),
    )
}

// The object initialization function (like a constructor)
person_init :: proc "c" (instance: ^gobj.TypeInstance, klass: g.pointer) {
    self := cast(^Person)instance

    self.name = g.strdup("Unknown")
    self.age = 69
}

// A method to print the details of the Person
person_print_details :: proc "c" (self: ^Person) {
    g.print("Person: %s, Age: %d\n", self.name, self.age)
}

main :: proc() {
    // Initialize GObject system
    gobj.type_init()

    person_type := person_get_type()

    // Create a new Person object
    person := cast(^Person)gobj.object_new(person_type, nil)
    defer gobj.object_unref(person)
    // Set properties using g_object_set
    prop_names := [?]cstring{"name", "age"}


    prop_values: [2]gobj.Value
    name_value := &prop_values[0]
    age_value := &prop_values[1]

    gobj.value_init(name_value, gobj.TYPE_STRING)
    gobj.value_init(age_value, gobj.TYPE_INT)

    gobj.value_set_int(age_value, 32)
    gobj.value_set_string(name_value, "John Doe")

    gobj.object_setv(
        cast(^gobj.Object)person,
        len(prop_names),
        &prop_names[0],
        &prop_values[0],
    )

    // Print details using our method
    person_print_details(person)

    // Get properties using g_object_getv
    gobj.object_getv(
        cast(^gobj.Object)person,
        len(prop_names),
        &prop_names[0],
        &prop_values[0],
    )

    name := gobj.value_steal_string(name_value)
    defer g.free(cast(rawptr)name)
    age := gobj.value_get_int(age_value)

    g.print("g_object_getv name=%s age=%d\n", name, age)
}

