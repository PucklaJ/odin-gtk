#+build linux amd64, linux arm64
package gtk_layer_shell

import "../../glib"
import gtk ".."

Layer :: enum u32 {BACKGROUND = 0, BOTTOM = 1, TOP = 2, OVERLAY = 3, ENTRY_NUMBER = 4 }
Edge :: enum u32 {LEFT = 0, RIGHT = 1, TOP = 2, BOTTOM = 3, ENTRY_NUMBER = 4 }
KeyboardMode :: enum u32 {NONE = 0, EXCLUSIVE = 1, ON_DEMAND = 2, ENTRY_NUMBER = 3 }

@(default_calling_convention = "c")
foreign gtk_layer_shell_runic {
    @(link_name = "gtk_layer_get_major_version")
    get_major_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_layer_get_minor_version")
    get_minor_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_layer_get_micro_version")
    get_micro_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_layer_is_supported")
    is_supported :: proc() -> glib.boolean ---

    @(link_name = "gtk_layer_get_protocol_version")
    get_protocol_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_layer_init_for_window")
    init_for_window :: proc(window: ^gtk.Window) ---

    @(link_name = "gtk_layer_is_layer_window")
    is_layer_window :: proc(window: ^gtk.Window) -> glib.boolean ---

    @(link_name = "gtk_layer_get_zwlr_layer_surface_v1")
    get_zwlr_layer_surface_v1 :: proc(window: ^gtk.Window) -> rawptr ---

    @(link_name = "gtk_layer_set_namespace")
    set_namespace :: proc(window: ^gtk.Window, name_space: cstring) ---

    @(link_name = "gtk_layer_get_namespace")
    get_namespace :: proc(window: ^gtk.Window) -> cstring ---

    @(link_name = "gtk_layer_set_layer")
    set_layer :: proc(window: ^gtk.Window, layer: Layer) ---

    @(link_name = "gtk_layer_get_layer")
    get_layer :: proc(window: ^gtk.Window) -> Layer ---

    @(link_name = "gtk_layer_set_monitor")
    set_monitor :: proc(window: ^gtk.Window, monitor: ^gtk.Monitor) ---

    @(link_name = "gtk_layer_get_monitor")
    get_monitor :: proc(window: ^gtk.Window) -> ^gtk.Monitor ---

    @(link_name = "gtk_layer_set_anchor")
    set_anchor :: proc(window: ^gtk.Window, edge: Edge, anchor_to_edge: glib.boolean) ---

    @(link_name = "gtk_layer_get_anchor")
    get_anchor :: proc(window: ^gtk.Window, edge: Edge) -> glib.boolean ---

    @(link_name = "gtk_layer_set_margin")
    set_margin :: proc(window: ^gtk.Window, edge: Edge, margin_size: i32) ---

    @(link_name = "gtk_layer_get_margin")
    get_margin :: proc(window: ^gtk.Window, edge: Edge) -> i32 ---

    @(link_name = "gtk_layer_set_exclusive_zone")
    set_exclusive_zone :: proc(window: ^gtk.Window, exclusive_zone: i32) ---

    @(link_name = "gtk_layer_get_exclusive_zone")
    get_exclusive_zone :: proc(window: ^gtk.Window) -> i32 ---

    @(link_name = "gtk_layer_auto_exclusive_zone_enable")
    auto_exclusive_zone_enable :: proc(window: ^gtk.Window) ---

    @(link_name = "gtk_layer_auto_exclusive_zone_is_enabled")
    auto_exclusive_zone_is_enabled :: proc(window: ^gtk.Window) -> glib.boolean ---

    @(link_name = "gtk_layer_set_keyboard_mode")
    set_keyboard_mode :: proc(window: ^gtk.Window, mode: KeyboardMode) ---

    @(link_name = "gtk_layer_get_keyboard_mode")
    get_keyboard_mode :: proc(window: ^gtk.Window) -> KeyboardMode ---

}

when (ODIN_ARCH == .amd64) {

when #config(GTK_LAYER_SHELL_STATIC, false) {
    foreign import gtk_layer_shell_runic "../../lib/linux/x86_64/libgtk4-layer-shell.a"
} else {
    foreign import gtk_layer_shell_runic "system:gtk4-layer-shell"
}

}

when (ODIN_ARCH == .arm64) {

when #config(GTK_LAYER_SHELL_STATIC, false) {
    foreign import gtk_layer_shell_runic "../../lib/linux/aarch64/libgtk4-layer-shell.a"
} else {
    foreign import gtk_layer_shell_runic "system:gtk4-layer-shell"
}

}

