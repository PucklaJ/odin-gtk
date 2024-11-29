package main

import g "../../glib"
import "base:runtime"
import "core:fmt"
import "core:time"

main :: proc() {
	g.g_set_print_handler(proc "c" (msg: cstring) {
		context = runtime.default_context()
		fmt.printfln("[GLIB PRINT]: {}", msg)
	})
	g.g_print("Hello g_print!\n")
	g.g_printerr("Hello g_print_err!\n")

	environ := cast([^]cstring)g.g_get_environ()
	defer g.g_strfreev(environ)
	for i := 0; environ[i] != nil; i += 1 {
		g.g_print("%d: %s", i, environ[i])
	}

	hello_thread := g.g_thread_new("hello thread", proc "c" (data: g.gpointer) -> g.gpointer {
			context = runtime.default_context()
			for i in 0 ..< 10 {
				time.sleep(100 * time.Millisecond)
				g.g_print("Hello from thread %d", i)
			}

			g.g_thread_exit(nil)
			return nil
		}, nil)

	time.sleep(500 * time.Millisecond)
	g.g_print("Hello from main")

	g.g_thread_join(hello_thread)
}

