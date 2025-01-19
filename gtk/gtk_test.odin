package gtk

import glib "../glib"
import gio "../glib/gio"
import gobj "../glib/gobject"
import "core:log"
import ts "core:testing"

@(test)
test_log :: proc(t: ^ts.T) {
    app := application_new("org.odin-gtk.test_log", .APPLICATION_DEFAULT_FLAGS)

    gobj.signal_connect(
        app,
        "activate",
        cast(gobj.Callback)proc "c" (
            app: ^Application,
            user_data: glib.pointer,
        ) {
            context = glib.create_context()

            log.info("this is an gtk info log using the odin log package")
        },
        nil,
    )

    gio.application_run(
        gobj.type_cast(gio.Application, app, gio.TYPE_APPLICATION()),
        0,
        nil,
    )
    gobj.object_unref(app)
}

