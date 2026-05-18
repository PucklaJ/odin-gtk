#+build linux amd64, linux arm64
package gio

import "core:sys/linux"
import glib ".."

@(default_calling_convention = "c")
foreign gio_runic {
    @(link_name = "g_credentials_get_unix_pid")
    credentials_get_unix_pid :: proc(credentials: [^]Credentials, error: ^^glib.Error) -> linux.Pid ---

    @(link_name = "g_credentials_get_unix_user")
    credentials_get_unix_user :: proc(credentials: [^]Credentials, error: ^^glib.Error) -> linux.Uid ---

    @(link_name = "g_credentials_set_unix_user")
    credentials_set_unix_user :: proc(credentials: [^]Credentials, uid: linux.Uid, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list")
    dbus_connection_call_with_unix_fd_list :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list_finish")
    dbus_connection_call_with_unix_fd_list_finish :: proc(connection: ^DBusConnection, out_fd_list: ^^UnixFDList, res: [^]AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list_sync")
    dbus_connection_call_with_unix_fd_list_sync :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, out_fd_list: ^^UnixFDList, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_message_get_unix_fd_list")
    dbus_message_get_unix_fd_list :: proc(message: ^DBusMessage) -> ^UnixFDList ---

    @(link_name = "g_dbus_message_set_unix_fd_list")
    dbus_message_set_unix_fd_list :: proc(message: ^DBusMessage, fd_list: ^UnixFDList) ---

    @(link_name = "g_dbus_method_invocation_return_value_with_unix_fd_list")
    dbus_method_invocation_return_value_with_unix_fd_list :: proc(invocation: ^DBusMethodInvocation, parameters: [^]glib.Variant, fd_list: ^UnixFDList) ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list")
    dbus_proxy_call_with_unix_fd_list :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: [^]glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list_finish")
    dbus_proxy_call_with_unix_fd_list_finish :: proc(proxy: ^DBusProxy, out_fd_list: ^^UnixFDList, res: [^]AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list_sync")
    dbus_proxy_call_with_unix_fd_list_sync :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: [^]glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, out_fd_list: ^^UnixFDList, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_subprocess_send_signal")
    subprocess_send_signal :: proc(subprocess: [^]Subprocess, signal_num: glib.int_) ---

    @(link_name = "g_subprocess_launcher_set_stdin_file_path")
    subprocess_launcher_set_stdin_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---

    @(link_name = "g_subprocess_launcher_take_stdin_fd")
    subprocess_launcher_take_stdin_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---

    @(link_name = "g_subprocess_launcher_set_stdout_file_path")
    subprocess_launcher_set_stdout_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---

    @(link_name = "g_subprocess_launcher_take_stdout_fd")
    subprocess_launcher_take_stdout_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---

    @(link_name = "g_subprocess_launcher_set_stderr_file_path")
    subprocess_launcher_set_stderr_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---

    @(link_name = "g_subprocess_launcher_take_stderr_fd")
    subprocess_launcher_take_stderr_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---

    @(link_name = "g_subprocess_launcher_take_fd")
    subprocess_launcher_take_fd :: proc(self: ^SubprocessLauncher, source_fd: glib.int_, target_fd: glib.int_) ---

    @(link_name = "g_subprocess_launcher_close")
    subprocess_launcher_close :: proc(self: ^SubprocessLauncher) ---

    @(link_name = "g_subprocess_launcher_set_child_setup")
    subprocess_launcher_set_child_setup :: proc(self: ^SubprocessLauncher, child_setup: glib.SpawnChildSetupFunc, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---

    @(link_name = "g_clear_dbus_signal_subscription_wrapper")
    clear_dbus_signal_subscription :: proc(subscription_id_pointer: ^glib.uint_, connection: ^DBusConnection) ---

    @(link_name = "g_debug_controller_wrapper")
    debug_controller :: proc(ptr: glib.pointer) -> ^DebugController ---

    @(link_name = "g_IS_debug_controller_wrapper")
    IS_debug_controller :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_debug_controller_GET_IFACE_wrapper")
    debug_controller_GET_IFACE :: proc(ptr: glib.pointer) -> ^DebugControllerInterface ---

    @(link_name = "G_DEBUG_CONTROLLER_DBUS_wrapper")
    G_DEBUG_CONTROLLER_DBUS :: proc(ptr: glib.pointer) -> ^DebugControllerDBus ---

    @(link_name = "G_DEBUG_CONTROLLER_DBUS_CLASS_wrapper")
    G_DEBUG_CONTROLLER_DBUS_CLASS :: proc(ptr: glib.pointer) -> ^DebugControllerDBusClass ---

    @(link_name = "G_IS_DEBUG_CONTROLLER_DBUS_wrapper")
    G_IS_DEBUG_CONTROLLER_DBUS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_IS_DEBUG_CONTROLLER_DBUS_CLASS_wrapper")
    G_IS_DEBUG_CONTROLLER_DBUS_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_DEBUG_CONTROLLER_DBUS_GET_CLASS_wrapper")
    G_DEBUG_CONTROLLER_DBUS_GET_CLASS :: proc(ptr: glib.pointer) -> ^DebugControllerDBusClass ---

    @(link_name = "G_IP_TOS_MESSAGE_wrapper")
    G_IP_TOS_MESSAGE :: proc(ptr: glib.pointer) -> ^IPTosMessage ---

    @(link_name = "G_IS_IP_TOS_MESSAGE_wrapper")
    G_IS_IP_TOS_MESSAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_IPV6_TCLASS_MESSAGE_wrapper")
    G_IPV6_TCLASS_MESSAGE :: proc(ptr: glib.pointer) -> ^IPv6TclassMessage ---

    @(link_name = "G_IS_IPV6_TCLASS_MESSAGE_wrapper")
    G_IS_IPV6_TCLASS_MESSAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_LIST_MODEL_wrapper")
    G_LIST_MODEL :: proc(ptr: glib.pointer) -> ^ListModel ---

    @(link_name = "G_IS_LIST_MODEL_wrapper")
    G_IS_LIST_MODEL :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_LIST_MODEL_GET_IFACE_wrapper")
    G_LIST_MODEL_GET_IFACE :: proc(ptr: glib.pointer) -> ^ListModelInterface ---

    @(link_name = "G_LIST_STORE_wrapper")
    G_LIST_STORE :: proc(ptr: glib.pointer) -> ^ListStore ---

    @(link_name = "G_IS_LIST_STORE_wrapper")
    G_IS_LIST_STORE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_memory_monitor_wrapper")
    memory_monitor :: proc(ptr: glib.pointer) -> ^MemoryMonitor ---

    @(link_name = "g_IS_memory_monitor_wrapper")
    IS_memory_monitor :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_memory_monitor_GET_IFACE_wrapper")
    memory_monitor_GET_IFACE :: proc(ptr: glib.pointer) -> ^MemoryMonitorInterface ---

    @(link_name = "g_power_profile_monitor_wrapper")
    power_profile_monitor :: proc(ptr: glib.pointer) -> ^PowerProfileMonitor ---

    @(link_name = "g_IS_power_profile_monitor_wrapper")
    IS_power_profile_monitor :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_power_profile_monitor_GET_IFACE_wrapper")
    power_profile_monitor_GET_IFACE :: proc(ptr: glib.pointer) -> ^PowerProfileMonitorInterface ---

}

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import gio_runic { "../../lib/linux/x86_64/libgio-2.0.a", "../../lib/linux/x86_64/libgio-wrapper.a", "system:ffi", "system:pcre2-8", "system:mount", "system:z" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import gio_runic { "system:gio-2.0", "../../lib/linux/x86_64/libgio-wrapper.a" }
} 
}

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import gio_runic { "../../lib/linux/aarch64/libgio-2.0.a", "../../lib/linux/aarch64/libgio-wrapper.a", "system:ffi", "system:pcre2-8", "system:mount", "system:z" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import gio_runic { "system:gio-2.0", "../../lib/linux/aarch64/libgio-wrapper.a" }
} 
}

