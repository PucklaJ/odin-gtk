package main

import "../../glib"
import "../../glib/gio"
import gobj "../../glib/gobject"
import "../../gtk"
import "core:os"
import "core:strings"

on_button_clicked :: proc "c" (button: ^gtk.Button, user_data: glib.pointer) {
    glib.print("Button clicked! >///<\n")
}

activate :: proc "c" (app: ^gtk.Application, user_data: glib.pointer) {
    window := cast(^gtk.Window)gtk.application_window_new(app)
    gtk.window_set_title(window, "Window")
    gtk.window_set_default_size(window, 640, 480)
    gtk.window_set_title(window, "Hello, GTK4!")

    button := cast(^gtk.Button)gtk.button_new_with_label("Click me! >///<")
    gtk.window_set_child(window, cast(^gtk.Widget)button)

    gobj.signal_connect_data(
        button,
        "clicked",
        cast(gobj.Callback)on_button_clicked,
        nil,
        nil,
        .CONNECT_DEFAULT,
    )

    gtk.window_present(window)
}

main :: proc() {
    app := gtk.application_new(
        "org.runic.hello-gtk",
        .APPLICATION_DEFAULT_FLAGS,
    )
    gobj.signal_connect_data(
        app,
        "activate",
        cast(gobj.Callback)activate,
        nil,
        nil,
        .CONNECT_DEFAULT,
    )

    argv := make([]cstring, len(os.args))
    for &arg, idx in argv {
        arg = strings.clone_to_cstring(os.args[idx])
    }
    defer delete(argv)
    defer for arg in argv do delete(arg)

    status := gio.application_run(
        cast(^gio.Application)app,
        i32(len(argv)),
        raw_data(argv),
    )
    gobj.object_unref(app)

    if status != 0 {
        os.exit(int(status))
    }
}

