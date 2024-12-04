package gmodule

import glib ".."

ModuleFlags :: enum u32 {BIND_LAZY = 1, BIND_LOCAL = 2, BIND_MASK = 3, }
_GModule :: rawptr
Module :: _GModule
ModuleCheckInit :: #type proc "c" (module: ^Module) -> cstring
ModuleUnload :: #type proc "c" (module: ^Module)
ModuleError :: enum u32 {FAILED = 0, CHECK_FAILED = 1, }

foreign import gmodule_runic "system:gmodule-2.0"

@(default_calling_convention = "c")
foreign gmodule_runic {
    @(link_name = "g_module_error_quark")
    error_quark :: proc() -> glib.Quark ---

    @(link_name = "g_module_supported")
    supported :: proc() -> glib.boolean ---

    @(link_name = "g_module_open")
    open :: proc(file_name: cstring, flags: ModuleFlags) -> ^Module ---

    @(link_name = "g_module_open_full")
    open_full :: proc(file_name: cstring, flags: ModuleFlags, error: ^^glib.Error) -> ^Module ---

    @(link_name = "g_module_close")
    close :: proc(module: ^Module) -> glib.boolean ---

    @(link_name = "g_module_make_resident")
    make_resident :: proc(module: ^Module) ---

    @(link_name = "g_module_error")
    error :: proc() -> cstring ---

    @(link_name = "g_module_symbol")
    symbol :: proc(module: ^Module, symbol_name: cstring, symbol: ^glib.pointer) -> glib.boolean ---

    @(link_name = "g_module_name")
    name :: proc(module: ^Module) -> cstring ---

    @(link_name = "g_module_build_path")
    build_path :: proc(directory: cstring, module_name: cstring) -> cstring ---

}

