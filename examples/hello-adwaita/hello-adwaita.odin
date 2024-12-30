package main

import adw "../../adwaita"
import glib "../../glib"
import gio "../../glib/gio"
import gobj "../../glib/gobject"
import gtk "../../gtk"
import "core:os"
import "core:strings"

activate_cb :: proc "c" (app: ^gtk.Application) {
    window := gobj.type_cast(
        gtk.Window,
        gtk.application_window_new(app),
        gtk.window_get_type(),
    )

    label := gtk.label_new("Hello, enjoy this spinner :-)")
    spinner := adw.spinner_new()
    about_btn := gtk.button_new_with_label("About")

    box := gobj.type_cast(
        gtk.CenterBox,
        gtk.center_box_new(),
        gtk.center_box_get_type(),
    )
    gtk.orientable_set_orientation(
        gobj.type_cast(gtk.Orientable, box, gtk.orientable_get_type()),
        .VERTICAL,
    )
    gtk.center_box_set_start_widget(box, label)
    gtk.center_box_set_center_widget(box, spinner)
    gtk.center_box_set_end_widget(box, about_btn)

    gobj.signal_connect(
        about_btn,
        "clicked",
        cast(gobj.Callback)on_about,
        window,
    )

    gtk.widget_set_halign(spinner, .FILL)
    gtk.widget_set_valign(spinner, .FILL)
    gtk.widget_set_valign(cast(^gtk.Widget)box, .FILL)

    gtk.window_set_title(window, "Hello Libadwaita")
    gtk.window_set_default_size(window, 200, 200)
    gtk.window_set_child(window, cast(^gtk.Widget)box)
    gtk.window_present(window)
}

on_about :: proc "c" (self: ^gtk.Button, user_data: glib.pointer) {
    developers := [?]cstring{"Mr. Developer", "Ms. Developress", nil}

    designers := [?]cstring{"Mr. Designer", "Ms. Designress", nil}

    window := cast(^gtk.Widget)user_data

    dlg := adw.about_dialog_new()

    adw.about_dialog_set_application_name(
        adw.ABOUT_DIALOG(dlg),
        "Hello Adwaita",
    )
    adw.about_dialog_set_application_icon(
        adw.ABOUT_DIALOG(dlg),
        "application-x-executable",
    )
    adw.about_dialog_set_developers(adw.ABOUT_DIALOG(dlg), &developers[0])
    adw.about_dialog_set_designers(adw.ABOUT_DIALOG(dlg), &designers[0])
    adw.about_dialog_set_version(adw.ABOUT_DIALOG(dlg), "0.0.0")
    adw.about_dialog_set_copyright(
        adw.ABOUT_DIALOG(dlg),
        "© 2245 Mr Future, Mrs Future",
    )
    adw.about_dialog_set_license_type(adw.ABOUT_DIALOG(dlg), .GPL_3_0)

    adw.dialog_present(dlg, window)
}

main :: proc() {
    app := adw.application_new("runic.hello-adwaita", .NONE)

    gobj.signal_connect(app, "activate", cast(gobj.Callback)activate_cb, nil)

    argv := make([dynamic]cstring, len(os.args))
    argc := i32(len(os.args))
    defer delete(argv)
    for arg, idx in os.args {
        argv[idx] = strings.clone_to_cstring(arg)
    }
    defer for arg in argv do delete(arg)

    status := gio.application_run(
        gobj.type_cast(gio.Application, app, gio.TYPE_APPLICATION()),
        argc,
        raw_data(argv),
    )
    if status != 0 {
        os.exit(int(status))
    }
}

