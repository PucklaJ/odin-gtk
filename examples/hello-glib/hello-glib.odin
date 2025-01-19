package main

import g "../../glib"
import "core:fmt"
import "core:time"

main :: proc() {
    context = g.create_context()

    g.set_print_handler(proc "c" (msg: cstring) {
        context = g.create_context()
        fmt.printfln("[GLIB PRINT]: {}", msg)
    })
    g.print("Hello g_print!\n")
    g.printerr("Hello g_print_err!\n")

    environ := cast([^]cstring)g.get_environ()
    defer g.strfreev(environ)
    for i := 0; environ[i] != nil; i += 1 {
        g.print("%d: %s", i, environ[i])
    }

    hello_thread := g.thread_new(
        "hello thread",
        proc "c" (data: g.pointer) -> g.pointer {
            context = g.create_context()
            for i in 0 ..< 10 {
                time.sleep(100 * time.Millisecond)
                g.print("Hello from thread %d", i)
            }

            g.thread_exit(nil)
            return nil
        },
        nil,
    )

    time.sleep(500 * time.Millisecond)
    g.print("Hello from main")

    g.thread_join(hello_thread)
}

