package main

import glib "../../glib"
import gio "../../glib/gio"
import gobj "../../glib/gobject"
import gtk "../../gtk"
import gtk_layer "../../gtk/layer-shell"
import "core:os"
import "core:strings"

main :: proc() {
    app := gtk.application_new(
        "org.runic.gtk-layer-shell",
        .APPLICATION_DEFAULT_FLAGS,
    )
    defer gobj.object_unref(app)

    gobj.signal_connect(app, "activate", cast(gobj.Callback)activate, nil)

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

    if status != 0 {
        os.exit(int(status))
    }
}

activate :: proc "c" (app: ^gtk.Application, user_data: glib.pointer) {
    window := gobj.type_cast(
        gtk.Window,
        gtk.application_window_new(app),
        gtk.window_get_type(),
    )

    css := gtk.css_provider_new()
    gtk.css_provider_load_from_string(
        css,
        "window.background {background: unset;}",
    )
    display := gtk.gdk_display_get_default()
    gtk.style_context_add_provider_for_display(
        display,
        gobj.type_cast(gtk.StyleProvider, css, gtk.style_provider_get_type()),
        600,
    )

    gtk_layer.init_for_window(window)
    gtk_layer.set_layer(window, .TOP)
    gtk_layer.set_margin(window, .LEFT, 40)
    gtk_layer.set_margin(window, .RIGHT, 40)
    gtk_layer.set_margin(window, .TOP, 20)
    gtk_layer.set_margin(window, .BOTTOM, 40)

    label := gtk.label_new("")
    gtk.label_set_markup(
        gobj.type_cast(gtk.Label, label, gtk.label_get_type()),
        `<span font_desc="100.0" color="white">
GTK Layer
Shell example!
         </span>`,
    )

    button := gtk.button_new_with_label("Quit")
    gobj.signal_connect(
        button,
        "clicked",
        cast(gobj.Callback)button_clicked,
        window,
    )

    box := gobj.type_cast(
        gtk.Box,
        gtk.box_new(.ORIENTATION_VERTICAL, 10),
        gtk.box_get_type(),
    )
    gtk.box_append(box, label)
    gtk.box_append(box, button)

    gtk.window_set_child(window, cast(^gtk.Widget)box)
    gtk.window_present(window)
}

button_clicked :: proc "c" (button: ^gtk.Button, user_data: glib.pointer) {
    window := gobj.type_cast(
        gtk.Window,
        cast(^gtk.Widget)user_data,
        gtk.window_get_type(),
    )
    gtk.window_close(window)
}

