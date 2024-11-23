package main

import g "../../glib"
import "base:runtime"
import "core:fmt"

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
}

