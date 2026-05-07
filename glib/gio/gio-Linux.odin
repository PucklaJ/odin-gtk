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

    @(link_name = "g_zlib_compressor_get_os")
    zlib_compressor_get_os :: proc(compressor: ^ZlibCompressor) -> i32 ---

    @(link_name = "g_zlib_compressor_set_os")
    zlib_compressor_set_os :: proc(compressor: ^ZlibCompressor, os: i32) ---

    @(link_name = "g_clear_dbus_signal_subscription_wrapper")
    clear_dbus_signal_subscription :: proc(subscription_id_pointer: ^glib.uint_, connection: ^DBusConnection) ---

    @(link_name = "glib_autoptr_clear_GDebugController_wrapper")
    autoptr_clear_GDebugController :: proc(_ptr: ^DebugController) ---

    @(link_name = "glib_autoptr_cleanup_GDebugController_wrapper")
    autoptr_cleanup_GDebugController :: proc(_ptr: ^^DebugController) ---

    @(link_name = "glib_autoptr_destroy_GDebugController_wrapper")
    autoptr_destroy_GDebugController :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDebugController_wrapper")
    listautoptr_cleanup_GDebugController :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDebugController_wrapper")
    slistautoptr_cleanup_GDebugController :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDebugController_wrapper")
    queueautoptr_cleanup_GDebugController :: proc(_q: ^^glib.Queue) ---

    @(link_name = "g_debug_controller_wrapper")
    debug_controller :: proc(ptr: glib.pointer) -> ^DebugController ---

    @(link_name = "g_IS_debug_controller_wrapper")
    IS_debug_controller :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_debug_controller_GET_IFACE_wrapper")
    debug_controller_GET_IFACE :: proc(ptr: glib.pointer) -> ^DebugControllerInterface ---

    @(link_name = "glib_autoptr_clear_GDebugControllerDBus_wrapper")
    autoptr_clear_GDebugControllerDBus :: proc(_ptr: ^DebugControllerDBus) ---

    @(link_name = "glib_autoptr_cleanup_GDebugControllerDBus_wrapper")
    autoptr_cleanup_GDebugControllerDBus :: proc(_ptr: ^^DebugControllerDBus) ---

    @(link_name = "glib_autoptr_destroy_GDebugControllerDBus_wrapper")
    autoptr_destroy_GDebugControllerDBus :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDebugControllerDBus_wrapper")
    listautoptr_cleanup_GDebugControllerDBus :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDebugControllerDBus_wrapper")
    slistautoptr_cleanup_GDebugControllerDBus :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDebugControllerDBus_wrapper")
    queueautoptr_cleanup_GDebugControllerDBus :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDebugControllerDBusClass_wrapper")
    autoptr_clear_GDebugControllerDBusClass :: proc(_ptr: ^DebugControllerDBusClass) ---

    @(link_name = "glib_autoptr_cleanup_GDebugControllerDBusClass_wrapper")
    autoptr_cleanup_GDebugControllerDBusClass :: proc(_ptr: ^^DebugControllerDBusClass) ---

    @(link_name = "glib_autoptr_destroy_GDebugControllerDBusClass_wrapper")
    autoptr_destroy_GDebugControllerDBusClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDebugControllerDBusClass_wrapper")
    listautoptr_cleanup_GDebugControllerDBusClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDebugControllerDBusClass_wrapper")
    slistautoptr_cleanup_GDebugControllerDBusClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDebugControllerDBusClass_wrapper")
    queueautoptr_cleanup_GDebugControllerDBusClass :: proc(_q: ^^glib.Queue) ---

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

    @(link_name = "glib_autoptr_clear_GListModel_wrapper")
    autoptr_clear_GListModel :: proc(_ptr: ^ListModel) ---

    @(link_name = "glib_autoptr_cleanup_GListModel_wrapper")
    autoptr_cleanup_GListModel :: proc(_ptr: ^^ListModel) ---

    @(link_name = "glib_autoptr_destroy_GListModel_wrapper")
    autoptr_destroy_GListModel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GListModel_wrapper")
    listautoptr_cleanup_GListModel :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GListModel_wrapper")
    slistautoptr_cleanup_GListModel :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GListModel_wrapper")
    queueautoptr_cleanup_GListModel :: proc(_q: ^^glib.Queue) ---

    @(link_name = "G_LIST_MODEL_wrapper")
    G_LIST_MODEL :: proc(ptr: glib.pointer) -> ^ListModel ---

    @(link_name = "G_IS_LIST_MODEL_wrapper")
    G_IS_LIST_MODEL :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_LIST_MODEL_GET_IFACE_wrapper")
    G_LIST_MODEL_GET_IFACE :: proc(ptr: glib.pointer) -> ^ListModelInterface ---

    @(link_name = "glib_autoptr_clear_GListStore_wrapper")
    autoptr_clear_GListStore :: proc(_ptr: ^ListStore) ---

    @(link_name = "glib_autoptr_cleanup_GListStore_wrapper")
    autoptr_cleanup_GListStore :: proc(_ptr: ^^ListStore) ---

    @(link_name = "glib_autoptr_destroy_GListStore_wrapper")
    autoptr_destroy_GListStore :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GListStore_wrapper")
    listautoptr_cleanup_GListStore :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GListStore_wrapper")
    slistautoptr_cleanup_GListStore :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GListStore_wrapper")
    queueautoptr_cleanup_GListStore :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GListStoreClass_wrapper")
    autoptr_clear_GListStoreClass :: proc(_ptr: ^ListStoreClass) ---

    @(link_name = "glib_autoptr_cleanup_GListStoreClass_wrapper")
    autoptr_cleanup_GListStoreClass :: proc(_ptr: ^^ListStoreClass) ---

    @(link_name = "glib_autoptr_destroy_GListStoreClass_wrapper")
    autoptr_destroy_GListStoreClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GListStoreClass_wrapper")
    listautoptr_cleanup_GListStoreClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GListStoreClass_wrapper")
    slistautoptr_cleanup_GListStoreClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GListStoreClass_wrapper")
    queueautoptr_cleanup_GListStoreClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "G_LIST_STORE_wrapper")
    G_LIST_STORE :: proc(ptr: glib.pointer) -> ^ListStore ---

    @(link_name = "G_IS_LIST_STORE_wrapper")
    G_IS_LIST_STORE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_GMemoryMonitor_wrapper")
    autoptr_clear_GMemoryMonitor :: proc(_ptr: ^MemoryMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GMemoryMonitor_wrapper")
    autoptr_cleanup_GMemoryMonitor :: proc(_ptr: ^^MemoryMonitor) ---

    @(link_name = "glib_autoptr_destroy_GMemoryMonitor_wrapper")
    autoptr_destroy_GMemoryMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMemoryMonitor_wrapper")
    listautoptr_cleanup_GMemoryMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMemoryMonitor_wrapper")
    slistautoptr_cleanup_GMemoryMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMemoryMonitor_wrapper")
    queueautoptr_cleanup_GMemoryMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "g_memory_monitor_wrapper")
    memory_monitor :: proc(ptr: glib.pointer) -> ^MemoryMonitor ---

    @(link_name = "g_IS_memory_monitor_wrapper")
    IS_memory_monitor :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_memory_monitor_GET_IFACE_wrapper")
    memory_monitor_GET_IFACE :: proc(ptr: glib.pointer) -> ^MemoryMonitorInterface ---

    @(link_name = "glib_autoptr_clear_GPowerProfileMonitor_wrapper")
    autoptr_clear_GPowerProfileMonitor :: proc(_ptr: ^PowerProfileMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GPowerProfileMonitor_wrapper")
    autoptr_cleanup_GPowerProfileMonitor :: proc(_ptr: ^^PowerProfileMonitor) ---

    @(link_name = "glib_autoptr_destroy_GPowerProfileMonitor_wrapper")
    autoptr_destroy_GPowerProfileMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPowerProfileMonitor_wrapper")
    listautoptr_cleanup_GPowerProfileMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPowerProfileMonitor_wrapper")
    slistautoptr_cleanup_GPowerProfileMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPowerProfileMonitor_wrapper")
    queueautoptr_cleanup_GPowerProfileMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "g_power_profile_monitor_wrapper")
    power_profile_monitor :: proc(ptr: glib.pointer) -> ^PowerProfileMonitor ---

    @(link_name = "g_IS_power_profile_monitor_wrapper")
    IS_power_profile_monitor :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_power_profile_monitor_GET_IFACE_wrapper")
    power_profile_monitor_GET_IFACE :: proc(ptr: glib.pointer) -> ^PowerProfileMonitorInterface ---

    @(link_name = "glib_autoptr_clear_GUnixConnection_wrapper")
    autoptr_clear_GUnixConnection :: proc(_ptr: ^UnixConnection) ---

    @(link_name = "glib_autoptr_cleanup_GUnixConnection_wrapper")
    autoptr_cleanup_GUnixConnection :: proc(_ptr: ^^UnixConnection) ---

    @(link_name = "glib_autoptr_destroy_GUnixConnection_wrapper")
    autoptr_destroy_GUnixConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUnixConnection_wrapper")
    listautoptr_cleanup_GUnixConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUnixConnection_wrapper")
    slistautoptr_cleanup_GUnixConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUnixConnection_wrapper")
    queueautoptr_cleanup_GUnixConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GUnixCredentialsMessage_wrapper")
    autoptr_clear_GUnixCredentialsMessage :: proc(_ptr: ^UnixCredentialsMessage) ---

    @(link_name = "glib_autoptr_cleanup_GUnixCredentialsMessage_wrapper")
    autoptr_cleanup_GUnixCredentialsMessage :: proc(_ptr: ^^UnixCredentialsMessage) ---

    @(link_name = "glib_autoptr_destroy_GUnixCredentialsMessage_wrapper")
    autoptr_destroy_GUnixCredentialsMessage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUnixCredentialsMessage_wrapper")
    listautoptr_cleanup_GUnixCredentialsMessage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUnixCredentialsMessage_wrapper")
    slistautoptr_cleanup_GUnixCredentialsMessage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUnixCredentialsMessage_wrapper")
    queueautoptr_cleanup_GUnixCredentialsMessage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GUnixFDList_wrapper")
    autoptr_clear_GUnixFDList :: proc(_ptr: ^UnixFDList) ---

    @(link_name = "glib_autoptr_cleanup_GUnixFDList_wrapper")
    autoptr_cleanup_GUnixFDList :: proc(_ptr: ^^UnixFDList) ---

    @(link_name = "glib_autoptr_destroy_GUnixFDList_wrapper")
    autoptr_destroy_GUnixFDList :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUnixFDList_wrapper")
    listautoptr_cleanup_GUnixFDList :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUnixFDList_wrapper")
    slistautoptr_cleanup_GUnixFDList :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUnixFDList_wrapper")
    queueautoptr_cleanup_GUnixFDList :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GUnixSocketAddress_wrapper")
    autoptr_clear_GUnixSocketAddress :: proc(_ptr: ^UnixSocketAddress) ---

    @(link_name = "glib_autoptr_cleanup_GUnixSocketAddress_wrapper")
    autoptr_cleanup_GUnixSocketAddress :: proc(_ptr: ^^UnixSocketAddress) ---

    @(link_name = "glib_autoptr_destroy_GUnixSocketAddress_wrapper")
    autoptr_destroy_GUnixSocketAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUnixSocketAddress_wrapper")
    listautoptr_cleanup_GUnixSocketAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUnixSocketAddress_wrapper")
    slistautoptr_cleanup_GUnixSocketAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUnixSocketAddress_wrapper")
    queueautoptr_cleanup_GUnixSocketAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAction_wrapper")
    autoptr_clear_GAction :: proc(_ptr: ^Action) ---

    @(link_name = "glib_autoptr_cleanup_GAction_wrapper")
    autoptr_cleanup_GAction :: proc(_ptr: ^^Action) ---

    @(link_name = "glib_autoptr_destroy_GAction_wrapper")
    autoptr_destroy_GAction :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAction_wrapper")
    listautoptr_cleanup_GAction :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAction_wrapper")
    slistautoptr_cleanup_GAction :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAction_wrapper")
    queueautoptr_cleanup_GAction :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GActionMap_wrapper")
    autoptr_clear_GActionMap :: proc(_ptr: ^ActionMap) ---

    @(link_name = "glib_autoptr_cleanup_GActionMap_wrapper")
    autoptr_cleanup_GActionMap :: proc(_ptr: ^^ActionMap) ---

    @(link_name = "glib_autoptr_destroy_GActionMap_wrapper")
    autoptr_destroy_GActionMap :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GActionMap_wrapper")
    listautoptr_cleanup_GActionMap :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GActionMap_wrapper")
    slistautoptr_cleanup_GActionMap :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GActionMap_wrapper")
    queueautoptr_cleanup_GActionMap :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAppInfo_wrapper")
    autoptr_clear_GAppInfo :: proc(_ptr: ^AppInfo) ---

    @(link_name = "glib_autoptr_cleanup_GAppInfo_wrapper")
    autoptr_cleanup_GAppInfo :: proc(_ptr: ^^AppInfo) ---

    @(link_name = "glib_autoptr_destroy_GAppInfo_wrapper")
    autoptr_destroy_GAppInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAppInfo_wrapper")
    listautoptr_cleanup_GAppInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAppInfo_wrapper")
    slistautoptr_cleanup_GAppInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAppInfo_wrapper")
    queueautoptr_cleanup_GAppInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAppLaunchContext_wrapper")
    autoptr_clear_GAppLaunchContext :: proc(_ptr: ^AppLaunchContext) ---

    @(link_name = "glib_autoptr_cleanup_GAppLaunchContext_wrapper")
    autoptr_cleanup_GAppLaunchContext :: proc(_ptr: ^^AppLaunchContext) ---

    @(link_name = "glib_autoptr_destroy_GAppLaunchContext_wrapper")
    autoptr_destroy_GAppLaunchContext :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAppLaunchContext_wrapper")
    listautoptr_cleanup_GAppLaunchContext :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAppLaunchContext_wrapper")
    slistautoptr_cleanup_GAppLaunchContext :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAppLaunchContext_wrapper")
    queueautoptr_cleanup_GAppLaunchContext :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAppInfoMonitor_wrapper")
    autoptr_clear_GAppInfoMonitor :: proc(_ptr: ^AppInfoMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GAppInfoMonitor_wrapper")
    autoptr_cleanup_GAppInfoMonitor :: proc(_ptr: ^^AppInfoMonitor) ---

    @(link_name = "glib_autoptr_destroy_GAppInfoMonitor_wrapper")
    autoptr_destroy_GAppInfoMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAppInfoMonitor_wrapper")
    listautoptr_cleanup_GAppInfoMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAppInfoMonitor_wrapper")
    slistautoptr_cleanup_GAppInfoMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAppInfoMonitor_wrapper")
    queueautoptr_cleanup_GAppInfoMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GApplicationCommandLine_wrapper")
    autoptr_clear_GApplicationCommandLine :: proc(_ptr: ^ApplicationCommandLine) ---

    @(link_name = "glib_autoptr_cleanup_GApplicationCommandLine_wrapper")
    autoptr_cleanup_GApplicationCommandLine :: proc(_ptr: ^^ApplicationCommandLine) ---

    @(link_name = "glib_autoptr_destroy_GApplicationCommandLine_wrapper")
    autoptr_destroy_GApplicationCommandLine :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GApplicationCommandLine_wrapper")
    listautoptr_cleanup_GApplicationCommandLine :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GApplicationCommandLine_wrapper")
    slistautoptr_cleanup_GApplicationCommandLine :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GApplicationCommandLine_wrapper")
    queueautoptr_cleanup_GApplicationCommandLine :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GApplication_wrapper")
    autoptr_clear_GApplication :: proc(_ptr: ^Application) ---

    @(link_name = "glib_autoptr_cleanup_GApplication_wrapper")
    autoptr_cleanup_GApplication :: proc(_ptr: ^^Application) ---

    @(link_name = "glib_autoptr_destroy_GApplication_wrapper")
    autoptr_destroy_GApplication :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GApplication_wrapper")
    listautoptr_cleanup_GApplication :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GApplication_wrapper")
    slistautoptr_cleanup_GApplication :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GApplication_wrapper")
    queueautoptr_cleanup_GApplication :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAsyncInitable_wrapper")
    autoptr_clear_GAsyncInitable :: proc(_ptr: ^AsyncInitable) ---

    @(link_name = "glib_autoptr_cleanup_GAsyncInitable_wrapper")
    autoptr_cleanup_GAsyncInitable :: proc(_ptr: ^^AsyncInitable) ---

    @(link_name = "glib_autoptr_destroy_GAsyncInitable_wrapper")
    autoptr_destroy_GAsyncInitable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAsyncInitable_wrapper")
    listautoptr_cleanup_GAsyncInitable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAsyncInitable_wrapper")
    slistautoptr_cleanup_GAsyncInitable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAsyncInitable_wrapper")
    queueautoptr_cleanup_GAsyncInitable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAsyncResult_wrapper")
    autoptr_clear_GAsyncResult :: proc(_ptr: ^AsyncResult) ---

    @(link_name = "glib_autoptr_cleanup_GAsyncResult_wrapper")
    autoptr_cleanup_GAsyncResult :: proc(_ptr: ^^AsyncResult) ---

    @(link_name = "glib_autoptr_destroy_GAsyncResult_wrapper")
    autoptr_destroy_GAsyncResult :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAsyncResult_wrapper")
    listautoptr_cleanup_GAsyncResult :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAsyncResult_wrapper")
    slistautoptr_cleanup_GAsyncResult :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAsyncResult_wrapper")
    queueautoptr_cleanup_GAsyncResult :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GBufferedInputStream_wrapper")
    autoptr_clear_GBufferedInputStream :: proc(_ptr: ^BufferedInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GBufferedInputStream_wrapper")
    autoptr_cleanup_GBufferedInputStream :: proc(_ptr: ^^BufferedInputStream) ---

    @(link_name = "glib_autoptr_destroy_GBufferedInputStream_wrapper")
    autoptr_destroy_GBufferedInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GBufferedInputStream_wrapper")
    listautoptr_cleanup_GBufferedInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GBufferedInputStream_wrapper")
    slistautoptr_cleanup_GBufferedInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GBufferedInputStream_wrapper")
    queueautoptr_cleanup_GBufferedInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GBufferedOutputStream_wrapper")
    autoptr_clear_GBufferedOutputStream :: proc(_ptr: ^BufferedOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GBufferedOutputStream_wrapper")
    autoptr_cleanup_GBufferedOutputStream :: proc(_ptr: ^^BufferedOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GBufferedOutputStream_wrapper")
    autoptr_destroy_GBufferedOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GBufferedOutputStream_wrapper")
    listautoptr_cleanup_GBufferedOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GBufferedOutputStream_wrapper")
    slistautoptr_cleanup_GBufferedOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GBufferedOutputStream_wrapper")
    queueautoptr_cleanup_GBufferedOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GBytesIcon_wrapper")
    autoptr_clear_GBytesIcon :: proc(_ptr: ^BytesIcon) ---

    @(link_name = "glib_autoptr_cleanup_GBytesIcon_wrapper")
    autoptr_cleanup_GBytesIcon :: proc(_ptr: ^^BytesIcon) ---

    @(link_name = "glib_autoptr_destroy_GBytesIcon_wrapper")
    autoptr_destroy_GBytesIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GBytesIcon_wrapper")
    listautoptr_cleanup_GBytesIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GBytesIcon_wrapper")
    slistautoptr_cleanup_GBytesIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GBytesIcon_wrapper")
    queueautoptr_cleanup_GBytesIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GCancellable_wrapper")
    autoptr_clear_GCancellable :: proc(_ptr: ^Cancellable) ---

    @(link_name = "glib_autoptr_cleanup_GCancellable_wrapper")
    autoptr_cleanup_GCancellable :: proc(_ptr: ^^Cancellable) ---

    @(link_name = "glib_autoptr_destroy_GCancellable_wrapper")
    autoptr_destroy_GCancellable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GCancellable_wrapper")
    listautoptr_cleanup_GCancellable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GCancellable_wrapper")
    slistautoptr_cleanup_GCancellable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GCancellable_wrapper")
    queueautoptr_cleanup_GCancellable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GCharsetConverter_wrapper")
    autoptr_clear_GCharsetConverter :: proc(_ptr: ^CharsetConverter) ---

    @(link_name = "glib_autoptr_cleanup_GCharsetConverter_wrapper")
    autoptr_cleanup_GCharsetConverter :: proc(_ptr: ^^CharsetConverter) ---

    @(link_name = "glib_autoptr_destroy_GCharsetConverter_wrapper")
    autoptr_destroy_GCharsetConverter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GCharsetConverter_wrapper")
    listautoptr_cleanup_GCharsetConverter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GCharsetConverter_wrapper")
    slistautoptr_cleanup_GCharsetConverter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GCharsetConverter_wrapper")
    queueautoptr_cleanup_GCharsetConverter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GConverter_wrapper")
    autoptr_clear_GConverter :: proc(_ptr: ^Converter) ---

    @(link_name = "glib_autoptr_cleanup_GConverter_wrapper")
    autoptr_cleanup_GConverter :: proc(_ptr: ^^Converter) ---

    @(link_name = "glib_autoptr_destroy_GConverter_wrapper")
    autoptr_destroy_GConverter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GConverter_wrapper")
    listautoptr_cleanup_GConverter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GConverter_wrapper")
    slistautoptr_cleanup_GConverter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GConverter_wrapper")
    queueautoptr_cleanup_GConverter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GConverterInputStream_wrapper")
    autoptr_clear_GConverterInputStream :: proc(_ptr: ^ConverterInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GConverterInputStream_wrapper")
    autoptr_cleanup_GConverterInputStream :: proc(_ptr: ^^ConverterInputStream) ---

    @(link_name = "glib_autoptr_destroy_GConverterInputStream_wrapper")
    autoptr_destroy_GConverterInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GConverterInputStream_wrapper")
    listautoptr_cleanup_GConverterInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GConverterInputStream_wrapper")
    slistautoptr_cleanup_GConverterInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GConverterInputStream_wrapper")
    queueautoptr_cleanup_GConverterInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GConverterOutputStream_wrapper")
    autoptr_clear_GConverterOutputStream :: proc(_ptr: ^ConverterOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GConverterOutputStream_wrapper")
    autoptr_cleanup_GConverterOutputStream :: proc(_ptr: ^^ConverterOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GConverterOutputStream_wrapper")
    autoptr_destroy_GConverterOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GConverterOutputStream_wrapper")
    listautoptr_cleanup_GConverterOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GConverterOutputStream_wrapper")
    slistautoptr_cleanup_GConverterOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GConverterOutputStream_wrapper")
    queueautoptr_cleanup_GConverterOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GCredentials_wrapper")
    autoptr_clear_GCredentials :: proc(_ptr: ^Credentials) ---

    @(link_name = "glib_autoptr_cleanup_GCredentials_wrapper")
    autoptr_cleanup_GCredentials :: proc(_ptr: ^^Credentials) ---

    @(link_name = "glib_autoptr_destroy_GCredentials_wrapper")
    autoptr_destroy_GCredentials :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GCredentials_wrapper")
    listautoptr_cleanup_GCredentials :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GCredentials_wrapper")
    slistautoptr_cleanup_GCredentials :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GCredentials_wrapper")
    queueautoptr_cleanup_GCredentials :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDatagramBased_wrapper")
    autoptr_clear_GDatagramBased :: proc(_ptr: ^DatagramBased) ---

    @(link_name = "glib_autoptr_cleanup_GDatagramBased_wrapper")
    autoptr_cleanup_GDatagramBased :: proc(_ptr: ^^DatagramBased) ---

    @(link_name = "glib_autoptr_destroy_GDatagramBased_wrapper")
    autoptr_destroy_GDatagramBased :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDatagramBased_wrapper")
    listautoptr_cleanup_GDatagramBased :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDatagramBased_wrapper")
    slistautoptr_cleanup_GDatagramBased :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDatagramBased_wrapper")
    queueautoptr_cleanup_GDatagramBased :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDataInputStream_wrapper")
    autoptr_clear_GDataInputStream :: proc(_ptr: ^DataInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GDataInputStream_wrapper")
    autoptr_cleanup_GDataInputStream :: proc(_ptr: ^^DataInputStream) ---

    @(link_name = "glib_autoptr_destroy_GDataInputStream_wrapper")
    autoptr_destroy_GDataInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDataInputStream_wrapper")
    listautoptr_cleanup_GDataInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDataInputStream_wrapper")
    slistautoptr_cleanup_GDataInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDataInputStream_wrapper")
    queueautoptr_cleanup_GDataInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDataOutputStream_wrapper")
    autoptr_clear_GDataOutputStream :: proc(_ptr: ^DataOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GDataOutputStream_wrapper")
    autoptr_cleanup_GDataOutputStream :: proc(_ptr: ^^DataOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GDataOutputStream_wrapper")
    autoptr_destroy_GDataOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDataOutputStream_wrapper")
    listautoptr_cleanup_GDataOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDataOutputStream_wrapper")
    slistautoptr_cleanup_GDataOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDataOutputStream_wrapper")
    queueautoptr_cleanup_GDataOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusActionGroup_wrapper")
    autoptr_clear_GDBusActionGroup :: proc(_ptr: ^DBusActionGroup) ---

    @(link_name = "glib_autoptr_cleanup_GDBusActionGroup_wrapper")
    autoptr_cleanup_GDBusActionGroup :: proc(_ptr: ^^DBusActionGroup) ---

    @(link_name = "glib_autoptr_destroy_GDBusActionGroup_wrapper")
    autoptr_destroy_GDBusActionGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusActionGroup_wrapper")
    listautoptr_cleanup_GDBusActionGroup :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusActionGroup_wrapper")
    slistautoptr_cleanup_GDBusActionGroup :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusActionGroup_wrapper")
    queueautoptr_cleanup_GDBusActionGroup :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusAuthObserver_wrapper")
    autoptr_clear_GDBusAuthObserver :: proc(_ptr: ^DBusAuthObserver) ---

    @(link_name = "glib_autoptr_cleanup_GDBusAuthObserver_wrapper")
    autoptr_cleanup_GDBusAuthObserver :: proc(_ptr: ^^DBusAuthObserver) ---

    @(link_name = "glib_autoptr_destroy_GDBusAuthObserver_wrapper")
    autoptr_destroy_GDBusAuthObserver :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusAuthObserver_wrapper")
    listautoptr_cleanup_GDBusAuthObserver :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusAuthObserver_wrapper")
    slistautoptr_cleanup_GDBusAuthObserver :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusAuthObserver_wrapper")
    queueautoptr_cleanup_GDBusAuthObserver :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusConnection_wrapper")
    autoptr_clear_GDBusConnection :: proc(_ptr: ^DBusConnection) ---

    @(link_name = "glib_autoptr_cleanup_GDBusConnection_wrapper")
    autoptr_cleanup_GDBusConnection :: proc(_ptr: ^^DBusConnection) ---

    @(link_name = "glib_autoptr_destroy_GDBusConnection_wrapper")
    autoptr_destroy_GDBusConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusConnection_wrapper")
    listautoptr_cleanup_GDBusConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusConnection_wrapper")
    slistautoptr_cleanup_GDBusConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusConnection_wrapper")
    queueautoptr_cleanup_GDBusConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusInterface_wrapper")
    autoptr_clear_GDBusInterface :: proc(_ptr: ^DBusInterface) ---

    @(link_name = "glib_autoptr_cleanup_GDBusInterface_wrapper")
    autoptr_cleanup_GDBusInterface :: proc(_ptr: ^^DBusInterface) ---

    @(link_name = "glib_autoptr_destroy_GDBusInterface_wrapper")
    autoptr_destroy_GDBusInterface :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusInterface_wrapper")
    listautoptr_cleanup_GDBusInterface :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusInterface_wrapper")
    slistautoptr_cleanup_GDBusInterface :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusInterface_wrapper")
    queueautoptr_cleanup_GDBusInterface :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusInterfaceSkeleton_wrapper")
    autoptr_clear_GDBusInterfaceSkeleton :: proc(_ptr: ^DBusInterfaceSkeleton) ---

    @(link_name = "glib_autoptr_cleanup_GDBusInterfaceSkeleton_wrapper")
    autoptr_cleanup_GDBusInterfaceSkeleton :: proc(_ptr: ^^DBusInterfaceSkeleton) ---

    @(link_name = "glib_autoptr_destroy_GDBusInterfaceSkeleton_wrapper")
    autoptr_destroy_GDBusInterfaceSkeleton :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusInterfaceSkeleton_wrapper")
    listautoptr_cleanup_GDBusInterfaceSkeleton :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusInterfaceSkeleton_wrapper")
    slistautoptr_cleanup_GDBusInterfaceSkeleton :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusInterfaceSkeleton_wrapper")
    queueautoptr_cleanup_GDBusInterfaceSkeleton :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusMenuModel_wrapper")
    autoptr_clear_GDBusMenuModel :: proc(_ptr: ^DBusMenuModel) ---

    @(link_name = "glib_autoptr_cleanup_GDBusMenuModel_wrapper")
    autoptr_cleanup_GDBusMenuModel :: proc(_ptr: ^^DBusMenuModel) ---

    @(link_name = "glib_autoptr_destroy_GDBusMenuModel_wrapper")
    autoptr_destroy_GDBusMenuModel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusMenuModel_wrapper")
    listautoptr_cleanup_GDBusMenuModel :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusMenuModel_wrapper")
    slistautoptr_cleanup_GDBusMenuModel :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusMenuModel_wrapper")
    queueautoptr_cleanup_GDBusMenuModel :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusMessage_wrapper")
    autoptr_clear_GDBusMessage :: proc(_ptr: ^DBusMessage) ---

    @(link_name = "glib_autoptr_cleanup_GDBusMessage_wrapper")
    autoptr_cleanup_GDBusMessage :: proc(_ptr: ^^DBusMessage) ---

    @(link_name = "glib_autoptr_destroy_GDBusMessage_wrapper")
    autoptr_destroy_GDBusMessage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusMessage_wrapper")
    listautoptr_cleanup_GDBusMessage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusMessage_wrapper")
    slistautoptr_cleanup_GDBusMessage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusMessage_wrapper")
    queueautoptr_cleanup_GDBusMessage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusMethodInvocation_wrapper")
    autoptr_clear_GDBusMethodInvocation :: proc(_ptr: ^DBusMethodInvocation) ---

    @(link_name = "glib_autoptr_cleanup_GDBusMethodInvocation_wrapper")
    autoptr_cleanup_GDBusMethodInvocation :: proc(_ptr: ^^DBusMethodInvocation) ---

    @(link_name = "glib_autoptr_destroy_GDBusMethodInvocation_wrapper")
    autoptr_destroy_GDBusMethodInvocation :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusMethodInvocation_wrapper")
    listautoptr_cleanup_GDBusMethodInvocation :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusMethodInvocation_wrapper")
    slistautoptr_cleanup_GDBusMethodInvocation :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusMethodInvocation_wrapper")
    queueautoptr_cleanup_GDBusMethodInvocation :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusNodeInfo_wrapper")
    autoptr_clear_GDBusNodeInfo :: proc(_ptr: ^DBusNodeInfo) ---

    @(link_name = "glib_autoptr_cleanup_GDBusNodeInfo_wrapper")
    autoptr_cleanup_GDBusNodeInfo :: proc(_ptr: ^^DBusNodeInfo) ---

    @(link_name = "glib_autoptr_destroy_GDBusNodeInfo_wrapper")
    autoptr_destroy_GDBusNodeInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusNodeInfo_wrapper")
    listautoptr_cleanup_GDBusNodeInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusNodeInfo_wrapper")
    slistautoptr_cleanup_GDBusNodeInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusNodeInfo_wrapper")
    queueautoptr_cleanup_GDBusNodeInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObject_wrapper")
    autoptr_clear_GDBusObject :: proc(_ptr: ^DBusObject) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObject_wrapper")
    autoptr_cleanup_GDBusObject :: proc(_ptr: ^^DBusObject) ---

    @(link_name = "glib_autoptr_destroy_GDBusObject_wrapper")
    autoptr_destroy_GDBusObject :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObject_wrapper")
    listautoptr_cleanup_GDBusObject :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObject_wrapper")
    slistautoptr_cleanup_GDBusObject :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObject_wrapper")
    queueautoptr_cleanup_GDBusObject :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectManagerClient_wrapper")
    autoptr_clear_GDBusObjectManagerClient :: proc(_ptr: ^DBusObjectManagerClient) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectManagerClient_wrapper")
    autoptr_cleanup_GDBusObjectManagerClient :: proc(_ptr: ^^DBusObjectManagerClient) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectManagerClient_wrapper")
    autoptr_destroy_GDBusObjectManagerClient :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectManagerClient_wrapper")
    listautoptr_cleanup_GDBusObjectManagerClient :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectManagerClient_wrapper")
    slistautoptr_cleanup_GDBusObjectManagerClient :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectManagerClient_wrapper")
    queueautoptr_cleanup_GDBusObjectManagerClient :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectManager_wrapper")
    autoptr_clear_GDBusObjectManager :: proc(_ptr: ^DBusObjectManager) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectManager_wrapper")
    autoptr_cleanup_GDBusObjectManager :: proc(_ptr: ^^DBusObjectManager) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectManager_wrapper")
    autoptr_destroy_GDBusObjectManager :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectManager_wrapper")
    listautoptr_cleanup_GDBusObjectManager :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectManager_wrapper")
    slistautoptr_cleanup_GDBusObjectManager :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectManager_wrapper")
    queueautoptr_cleanup_GDBusObjectManager :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectManagerServer_wrapper")
    autoptr_clear_GDBusObjectManagerServer :: proc(_ptr: ^DBusObjectManagerServer) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectManagerServer_wrapper")
    autoptr_cleanup_GDBusObjectManagerServer :: proc(_ptr: ^^DBusObjectManagerServer) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectManagerServer_wrapper")
    autoptr_destroy_GDBusObjectManagerServer :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectManagerServer_wrapper")
    listautoptr_cleanup_GDBusObjectManagerServer :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectManagerServer_wrapper")
    slistautoptr_cleanup_GDBusObjectManagerServer :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectManagerServer_wrapper")
    queueautoptr_cleanup_GDBusObjectManagerServer :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectProxy_wrapper")
    autoptr_clear_GDBusObjectProxy :: proc(_ptr: ^DBusObjectProxy) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectProxy_wrapper")
    autoptr_cleanup_GDBusObjectProxy :: proc(_ptr: ^^DBusObjectProxy) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectProxy_wrapper")
    autoptr_destroy_GDBusObjectProxy :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectProxy_wrapper")
    listautoptr_cleanup_GDBusObjectProxy :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectProxy_wrapper")
    slistautoptr_cleanup_GDBusObjectProxy :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectProxy_wrapper")
    queueautoptr_cleanup_GDBusObjectProxy :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectSkeleton_wrapper")
    autoptr_clear_GDBusObjectSkeleton :: proc(_ptr: ^DBusObjectSkeleton) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectSkeleton_wrapper")
    autoptr_cleanup_GDBusObjectSkeleton :: proc(_ptr: ^^DBusObjectSkeleton) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectSkeleton_wrapper")
    autoptr_destroy_GDBusObjectSkeleton :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectSkeleton_wrapper")
    listautoptr_cleanup_GDBusObjectSkeleton :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectSkeleton_wrapper")
    slistautoptr_cleanup_GDBusObjectSkeleton :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectSkeleton_wrapper")
    queueautoptr_cleanup_GDBusObjectSkeleton :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusProxy_wrapper")
    autoptr_clear_GDBusProxy :: proc(_ptr: ^DBusProxy) ---

    @(link_name = "glib_autoptr_cleanup_GDBusProxy_wrapper")
    autoptr_cleanup_GDBusProxy :: proc(_ptr: ^^DBusProxy) ---

    @(link_name = "glib_autoptr_destroy_GDBusProxy_wrapper")
    autoptr_destroy_GDBusProxy :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusProxy_wrapper")
    listautoptr_cleanup_GDBusProxy :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusProxy_wrapper")
    slistautoptr_cleanup_GDBusProxy :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusProxy_wrapper")
    queueautoptr_cleanup_GDBusProxy :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusServer_wrapper")
    autoptr_clear_GDBusServer :: proc(_ptr: ^DBusServer) ---

    @(link_name = "glib_autoptr_cleanup_GDBusServer_wrapper")
    autoptr_cleanup_GDBusServer :: proc(_ptr: ^^DBusServer) ---

    @(link_name = "glib_autoptr_destroy_GDBusServer_wrapper")
    autoptr_destroy_GDBusServer :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusServer_wrapper")
    listautoptr_cleanup_GDBusServer :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusServer_wrapper")
    slistautoptr_cleanup_GDBusServer :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusServer_wrapper")
    queueautoptr_cleanup_GDBusServer :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDrive_wrapper")
    autoptr_clear_GDrive :: proc(_ptr: ^Drive) ---

    @(link_name = "glib_autoptr_cleanup_GDrive_wrapper")
    autoptr_cleanup_GDrive :: proc(_ptr: ^^Drive) ---

    @(link_name = "glib_autoptr_destroy_GDrive_wrapper")
    autoptr_destroy_GDrive :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDrive_wrapper")
    listautoptr_cleanup_GDrive :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDrive_wrapper")
    slistautoptr_cleanup_GDrive :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDrive_wrapper")
    queueautoptr_cleanup_GDrive :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GEmblemedIcon_wrapper")
    autoptr_clear_GEmblemedIcon :: proc(_ptr: ^EmblemedIcon) ---

    @(link_name = "glib_autoptr_cleanup_GEmblemedIcon_wrapper")
    autoptr_cleanup_GEmblemedIcon :: proc(_ptr: ^^EmblemedIcon) ---

    @(link_name = "glib_autoptr_destroy_GEmblemedIcon_wrapper")
    autoptr_destroy_GEmblemedIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GEmblemedIcon_wrapper")
    listautoptr_cleanup_GEmblemedIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GEmblemedIcon_wrapper")
    slistautoptr_cleanup_GEmblemedIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GEmblemedIcon_wrapper")
    queueautoptr_cleanup_GEmblemedIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GEmblem_wrapper")
    autoptr_clear_GEmblem :: proc(_ptr: ^Emblem) ---

    @(link_name = "glib_autoptr_cleanup_GEmblem_wrapper")
    autoptr_cleanup_GEmblem :: proc(_ptr: ^^Emblem) ---

    @(link_name = "glib_autoptr_destroy_GEmblem_wrapper")
    autoptr_destroy_GEmblem :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GEmblem_wrapper")
    listautoptr_cleanup_GEmblem :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GEmblem_wrapper")
    slistautoptr_cleanup_GEmblem :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GEmblem_wrapper")
    queueautoptr_cleanup_GEmblem :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileEnumerator_wrapper")
    autoptr_clear_GFileEnumerator :: proc(_ptr: ^FileEnumerator) ---

    @(link_name = "glib_autoptr_cleanup_GFileEnumerator_wrapper")
    autoptr_cleanup_GFileEnumerator :: proc(_ptr: ^^FileEnumerator) ---

    @(link_name = "glib_autoptr_destroy_GFileEnumerator_wrapper")
    autoptr_destroy_GFileEnumerator :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileEnumerator_wrapper")
    listautoptr_cleanup_GFileEnumerator :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileEnumerator_wrapper")
    slistautoptr_cleanup_GFileEnumerator :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileEnumerator_wrapper")
    queueautoptr_cleanup_GFileEnumerator :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFile_wrapper")
    autoptr_clear_GFile :: proc(_ptr: ^File) ---

    @(link_name = "glib_autoptr_cleanup_GFile_wrapper")
    autoptr_cleanup_GFile :: proc(_ptr: ^^File) ---

    @(link_name = "glib_autoptr_destroy_GFile_wrapper")
    autoptr_destroy_GFile :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFile_wrapper")
    listautoptr_cleanup_GFile :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFile_wrapper")
    slistautoptr_cleanup_GFile :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFile_wrapper")
    queueautoptr_cleanup_GFile :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileAttributeInfoList_wrapper")
    autoptr_clear_GFileAttributeInfoList :: proc(_ptr: ^FileAttributeInfoList) ---

    @(link_name = "glib_autoptr_cleanup_GFileAttributeInfoList_wrapper")
    autoptr_cleanup_GFileAttributeInfoList :: proc(_ptr: ^^FileAttributeInfoList) ---

    @(link_name = "glib_autoptr_destroy_GFileAttributeInfoList_wrapper")
    autoptr_destroy_GFileAttributeInfoList :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileAttributeInfoList_wrapper")
    listautoptr_cleanup_GFileAttributeInfoList :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileAttributeInfoList_wrapper")
    slistautoptr_cleanup_GFileAttributeInfoList :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileAttributeInfoList_wrapper")
    queueautoptr_cleanup_GFileAttributeInfoList :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileIcon_wrapper")
    autoptr_clear_GFileIcon :: proc(_ptr: ^FileIcon) ---

    @(link_name = "glib_autoptr_cleanup_GFileIcon_wrapper")
    autoptr_cleanup_GFileIcon :: proc(_ptr: ^^FileIcon) ---

    @(link_name = "glib_autoptr_destroy_GFileIcon_wrapper")
    autoptr_destroy_GFileIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileIcon_wrapper")
    listautoptr_cleanup_GFileIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileIcon_wrapper")
    slistautoptr_cleanup_GFileIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileIcon_wrapper")
    queueautoptr_cleanup_GFileIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileInfo_wrapper")
    autoptr_clear_GFileInfo :: proc(_ptr: ^FileInfo) ---

    @(link_name = "glib_autoptr_cleanup_GFileInfo_wrapper")
    autoptr_cleanup_GFileInfo :: proc(_ptr: ^^FileInfo) ---

    @(link_name = "glib_autoptr_destroy_GFileInfo_wrapper")
    autoptr_destroy_GFileInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileInfo_wrapper")
    listautoptr_cleanup_GFileInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileInfo_wrapper")
    slistautoptr_cleanup_GFileInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileInfo_wrapper")
    queueautoptr_cleanup_GFileInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileInputStream_wrapper")
    autoptr_clear_GFileInputStream :: proc(_ptr: ^FileInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GFileInputStream_wrapper")
    autoptr_cleanup_GFileInputStream :: proc(_ptr: ^^FileInputStream) ---

    @(link_name = "glib_autoptr_destroy_GFileInputStream_wrapper")
    autoptr_destroy_GFileInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileInputStream_wrapper")
    listautoptr_cleanup_GFileInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileInputStream_wrapper")
    slistautoptr_cleanup_GFileInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileInputStream_wrapper")
    queueautoptr_cleanup_GFileInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileIOStream_wrapper")
    autoptr_clear_GFileIOStream :: proc(_ptr: ^FileIOStream) ---

    @(link_name = "glib_autoptr_cleanup_GFileIOStream_wrapper")
    autoptr_cleanup_GFileIOStream :: proc(_ptr: ^^FileIOStream) ---

    @(link_name = "glib_autoptr_destroy_GFileIOStream_wrapper")
    autoptr_destroy_GFileIOStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileIOStream_wrapper")
    listautoptr_cleanup_GFileIOStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileIOStream_wrapper")
    slistautoptr_cleanup_GFileIOStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileIOStream_wrapper")
    queueautoptr_cleanup_GFileIOStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileMonitor_wrapper")
    autoptr_clear_GFileMonitor :: proc(_ptr: ^FileMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GFileMonitor_wrapper")
    autoptr_cleanup_GFileMonitor :: proc(_ptr: ^^FileMonitor) ---

    @(link_name = "glib_autoptr_destroy_GFileMonitor_wrapper")
    autoptr_destroy_GFileMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileMonitor_wrapper")
    listautoptr_cleanup_GFileMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileMonitor_wrapper")
    slistautoptr_cleanup_GFileMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileMonitor_wrapper")
    queueautoptr_cleanup_GFileMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFilenameCompleter_wrapper")
    autoptr_clear_GFilenameCompleter :: proc(_ptr: ^FilenameCompleter) ---

    @(link_name = "glib_autoptr_cleanup_GFilenameCompleter_wrapper")
    autoptr_cleanup_GFilenameCompleter :: proc(_ptr: ^^FilenameCompleter) ---

    @(link_name = "glib_autoptr_destroy_GFilenameCompleter_wrapper")
    autoptr_destroy_GFilenameCompleter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFilenameCompleter_wrapper")
    listautoptr_cleanup_GFilenameCompleter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFilenameCompleter_wrapper")
    slistautoptr_cleanup_GFilenameCompleter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFilenameCompleter_wrapper")
    queueautoptr_cleanup_GFilenameCompleter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileOutputStream_wrapper")
    autoptr_clear_GFileOutputStream :: proc(_ptr: ^FileOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GFileOutputStream_wrapper")
    autoptr_cleanup_GFileOutputStream :: proc(_ptr: ^^FileOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GFileOutputStream_wrapper")
    autoptr_destroy_GFileOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileOutputStream_wrapper")
    listautoptr_cleanup_GFileOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileOutputStream_wrapper")
    slistautoptr_cleanup_GFileOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileOutputStream_wrapper")
    queueautoptr_cleanup_GFileOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFilterInputStream_wrapper")
    autoptr_clear_GFilterInputStream :: proc(_ptr: ^FilterInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GFilterInputStream_wrapper")
    autoptr_cleanup_GFilterInputStream :: proc(_ptr: ^^FilterInputStream) ---

    @(link_name = "glib_autoptr_destroy_GFilterInputStream_wrapper")
    autoptr_destroy_GFilterInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFilterInputStream_wrapper")
    listautoptr_cleanup_GFilterInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFilterInputStream_wrapper")
    slistautoptr_cleanup_GFilterInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFilterInputStream_wrapper")
    queueautoptr_cleanup_GFilterInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFilterOutputStream_wrapper")
    autoptr_clear_GFilterOutputStream :: proc(_ptr: ^FilterOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GFilterOutputStream_wrapper")
    autoptr_cleanup_GFilterOutputStream :: proc(_ptr: ^^FilterOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GFilterOutputStream_wrapper")
    autoptr_destroy_GFilterOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFilterOutputStream_wrapper")
    listautoptr_cleanup_GFilterOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFilterOutputStream_wrapper")
    slistautoptr_cleanup_GFilterOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFilterOutputStream_wrapper")
    queueautoptr_cleanup_GFilterOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIcon_wrapper")
    autoptr_clear_GIcon :: proc(_ptr: ^Icon) ---

    @(link_name = "glib_autoptr_cleanup_GIcon_wrapper")
    autoptr_cleanup_GIcon :: proc(_ptr: ^^Icon) ---

    @(link_name = "glib_autoptr_destroy_GIcon_wrapper")
    autoptr_destroy_GIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIcon_wrapper")
    listautoptr_cleanup_GIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIcon_wrapper")
    slistautoptr_cleanup_GIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIcon_wrapper")
    queueautoptr_cleanup_GIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInetAddress_wrapper")
    autoptr_clear_GInetAddress :: proc(_ptr: ^InetAddress) ---

    @(link_name = "glib_autoptr_cleanup_GInetAddress_wrapper")
    autoptr_cleanup_GInetAddress :: proc(_ptr: ^^InetAddress) ---

    @(link_name = "glib_autoptr_destroy_GInetAddress_wrapper")
    autoptr_destroy_GInetAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInetAddress_wrapper")
    listautoptr_cleanup_GInetAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInetAddress_wrapper")
    slistautoptr_cleanup_GInetAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInetAddress_wrapper")
    queueautoptr_cleanup_GInetAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInetAddressMask_wrapper")
    autoptr_clear_GInetAddressMask :: proc(_ptr: ^InetAddressMask) ---

    @(link_name = "glib_autoptr_cleanup_GInetAddressMask_wrapper")
    autoptr_cleanup_GInetAddressMask :: proc(_ptr: ^^InetAddressMask) ---

    @(link_name = "glib_autoptr_destroy_GInetAddressMask_wrapper")
    autoptr_destroy_GInetAddressMask :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInetAddressMask_wrapper")
    listautoptr_cleanup_GInetAddressMask :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInetAddressMask_wrapper")
    slistautoptr_cleanup_GInetAddressMask :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInetAddressMask_wrapper")
    queueautoptr_cleanup_GInetAddressMask :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInetSocketAddress_wrapper")
    autoptr_clear_GInetSocketAddress :: proc(_ptr: ^InetSocketAddress) ---

    @(link_name = "glib_autoptr_cleanup_GInetSocketAddress_wrapper")
    autoptr_cleanup_GInetSocketAddress :: proc(_ptr: ^^InetSocketAddress) ---

    @(link_name = "glib_autoptr_destroy_GInetSocketAddress_wrapper")
    autoptr_destroy_GInetSocketAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInetSocketAddress_wrapper")
    listautoptr_cleanup_GInetSocketAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInetSocketAddress_wrapper")
    slistautoptr_cleanup_GInetSocketAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInetSocketAddress_wrapper")
    queueautoptr_cleanup_GInetSocketAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInitable_wrapper")
    autoptr_clear_GInitable :: proc(_ptr: ^Initable) ---

    @(link_name = "glib_autoptr_cleanup_GInitable_wrapper")
    autoptr_cleanup_GInitable :: proc(_ptr: ^^Initable) ---

    @(link_name = "glib_autoptr_destroy_GInitable_wrapper")
    autoptr_destroy_GInitable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInitable_wrapper")
    listautoptr_cleanup_GInitable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInitable_wrapper")
    slistautoptr_cleanup_GInitable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInitable_wrapper")
    queueautoptr_cleanup_GInitable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInputStream_wrapper")
    autoptr_clear_GInputStream :: proc(_ptr: ^InputStream) ---

    @(link_name = "glib_autoptr_cleanup_GInputStream_wrapper")
    autoptr_cleanup_GInputStream :: proc(_ptr: ^^InputStream) ---

    @(link_name = "glib_autoptr_destroy_GInputStream_wrapper")
    autoptr_destroy_GInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInputStream_wrapper")
    listautoptr_cleanup_GInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInputStream_wrapper")
    slistautoptr_cleanup_GInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInputStream_wrapper")
    queueautoptr_cleanup_GInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIOModule_wrapper")
    autoptr_clear_GIOModule :: proc(_ptr: ^IOModule) ---

    @(link_name = "glib_autoptr_cleanup_GIOModule_wrapper")
    autoptr_cleanup_GIOModule :: proc(_ptr: ^^IOModule) ---

    @(link_name = "glib_autoptr_destroy_GIOModule_wrapper")
    autoptr_destroy_GIOModule :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIOModule_wrapper")
    listautoptr_cleanup_GIOModule :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIOModule_wrapper")
    slistautoptr_cleanup_GIOModule :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIOModule_wrapper")
    queueautoptr_cleanup_GIOModule :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIOStream_wrapper")
    autoptr_clear_GIOStream :: proc(_ptr: ^IOStream) ---

    @(link_name = "glib_autoptr_cleanup_GIOStream_wrapper")
    autoptr_cleanup_GIOStream :: proc(_ptr: ^^IOStream) ---

    @(link_name = "glib_autoptr_destroy_GIOStream_wrapper")
    autoptr_destroy_GIOStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIOStream_wrapper")
    listautoptr_cleanup_GIOStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIOStream_wrapper")
    slistautoptr_cleanup_GIOStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIOStream_wrapper")
    queueautoptr_cleanup_GIOStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GLoadableIcon_wrapper")
    autoptr_clear_GLoadableIcon :: proc(_ptr: ^LoadableIcon) ---

    @(link_name = "glib_autoptr_cleanup_GLoadableIcon_wrapper")
    autoptr_cleanup_GLoadableIcon :: proc(_ptr: ^^LoadableIcon) ---

    @(link_name = "glib_autoptr_destroy_GLoadableIcon_wrapper")
    autoptr_destroy_GLoadableIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GLoadableIcon_wrapper")
    listautoptr_cleanup_GLoadableIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GLoadableIcon_wrapper")
    slistautoptr_cleanup_GLoadableIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GLoadableIcon_wrapper")
    queueautoptr_cleanup_GLoadableIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMemoryInputStream_wrapper")
    autoptr_clear_GMemoryInputStream :: proc(_ptr: ^MemoryInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GMemoryInputStream_wrapper")
    autoptr_cleanup_GMemoryInputStream :: proc(_ptr: ^^MemoryInputStream) ---

    @(link_name = "glib_autoptr_destroy_GMemoryInputStream_wrapper")
    autoptr_destroy_GMemoryInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMemoryInputStream_wrapper")
    listautoptr_cleanup_GMemoryInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMemoryInputStream_wrapper")
    slistautoptr_cleanup_GMemoryInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMemoryInputStream_wrapper")
    queueautoptr_cleanup_GMemoryInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMemoryOutputStream_wrapper")
    autoptr_clear_GMemoryOutputStream :: proc(_ptr: ^MemoryOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GMemoryOutputStream_wrapper")
    autoptr_cleanup_GMemoryOutputStream :: proc(_ptr: ^^MemoryOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GMemoryOutputStream_wrapper")
    autoptr_destroy_GMemoryOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMemoryOutputStream_wrapper")
    listautoptr_cleanup_GMemoryOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMemoryOutputStream_wrapper")
    slistautoptr_cleanup_GMemoryOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMemoryOutputStream_wrapper")
    queueautoptr_cleanup_GMemoryOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenu_wrapper")
    autoptr_clear_GMenu :: proc(_ptr: ^Menu) ---

    @(link_name = "glib_autoptr_cleanup_GMenu_wrapper")
    autoptr_cleanup_GMenu :: proc(_ptr: ^^Menu) ---

    @(link_name = "glib_autoptr_destroy_GMenu_wrapper")
    autoptr_destroy_GMenu :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenu_wrapper")
    listautoptr_cleanup_GMenu :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenu_wrapper")
    slistautoptr_cleanup_GMenu :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenu_wrapper")
    queueautoptr_cleanup_GMenu :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenuItem_wrapper")
    autoptr_clear_GMenuItem :: proc(_ptr: ^MenuItem) ---

    @(link_name = "glib_autoptr_cleanup_GMenuItem_wrapper")
    autoptr_cleanup_GMenuItem :: proc(_ptr: ^^MenuItem) ---

    @(link_name = "glib_autoptr_destroy_GMenuItem_wrapper")
    autoptr_destroy_GMenuItem :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenuItem_wrapper")
    listautoptr_cleanup_GMenuItem :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenuItem_wrapper")
    slistautoptr_cleanup_GMenuItem :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenuItem_wrapper")
    queueautoptr_cleanup_GMenuItem :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenuModel_wrapper")
    autoptr_clear_GMenuModel :: proc(_ptr: ^MenuModel) ---

    @(link_name = "glib_autoptr_cleanup_GMenuModel_wrapper")
    autoptr_cleanup_GMenuModel :: proc(_ptr: ^^MenuModel) ---

    @(link_name = "glib_autoptr_destroy_GMenuModel_wrapper")
    autoptr_destroy_GMenuModel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenuModel_wrapper")
    listautoptr_cleanup_GMenuModel :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenuModel_wrapper")
    slistautoptr_cleanup_GMenuModel :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenuModel_wrapper")
    queueautoptr_cleanup_GMenuModel :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenuAttributeIter_wrapper")
    autoptr_clear_GMenuAttributeIter :: proc(_ptr: ^MenuAttributeIter) ---

    @(link_name = "glib_autoptr_cleanup_GMenuAttributeIter_wrapper")
    autoptr_cleanup_GMenuAttributeIter :: proc(_ptr: ^^MenuAttributeIter) ---

    @(link_name = "glib_autoptr_destroy_GMenuAttributeIter_wrapper")
    autoptr_destroy_GMenuAttributeIter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenuAttributeIter_wrapper")
    listautoptr_cleanup_GMenuAttributeIter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenuAttributeIter_wrapper")
    slistautoptr_cleanup_GMenuAttributeIter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenuAttributeIter_wrapper")
    queueautoptr_cleanup_GMenuAttributeIter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenuLinkIter_wrapper")
    autoptr_clear_GMenuLinkIter :: proc(_ptr: ^MenuLinkIter) ---

    @(link_name = "glib_autoptr_cleanup_GMenuLinkIter_wrapper")
    autoptr_cleanup_GMenuLinkIter :: proc(_ptr: ^^MenuLinkIter) ---

    @(link_name = "glib_autoptr_destroy_GMenuLinkIter_wrapper")
    autoptr_destroy_GMenuLinkIter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenuLinkIter_wrapper")
    listautoptr_cleanup_GMenuLinkIter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenuLinkIter_wrapper")
    slistautoptr_cleanup_GMenuLinkIter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenuLinkIter_wrapper")
    queueautoptr_cleanup_GMenuLinkIter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMount_wrapper")
    autoptr_clear_GMount :: proc(_ptr: ^Mount) ---

    @(link_name = "glib_autoptr_cleanup_GMount_wrapper")
    autoptr_cleanup_GMount :: proc(_ptr: ^^Mount) ---

    @(link_name = "glib_autoptr_destroy_GMount_wrapper")
    autoptr_destroy_GMount :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMount_wrapper")
    listautoptr_cleanup_GMount :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMount_wrapper")
    slistautoptr_cleanup_GMount :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMount_wrapper")
    queueautoptr_cleanup_GMount :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMountOperation_wrapper")
    autoptr_clear_GMountOperation :: proc(_ptr: ^MountOperation) ---

    @(link_name = "glib_autoptr_cleanup_GMountOperation_wrapper")
    autoptr_cleanup_GMountOperation :: proc(_ptr: ^^MountOperation) ---

    @(link_name = "glib_autoptr_destroy_GMountOperation_wrapper")
    autoptr_destroy_GMountOperation :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMountOperation_wrapper")
    listautoptr_cleanup_GMountOperation :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMountOperation_wrapper")
    slistautoptr_cleanup_GMountOperation :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMountOperation_wrapper")
    queueautoptr_cleanup_GMountOperation :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNativeVolumeMonitor_wrapper")
    autoptr_clear_GNativeVolumeMonitor :: proc(_ptr: ^NativeVolumeMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GNativeVolumeMonitor_wrapper")
    autoptr_cleanup_GNativeVolumeMonitor :: proc(_ptr: ^^NativeVolumeMonitor) ---

    @(link_name = "glib_autoptr_destroy_GNativeVolumeMonitor_wrapper")
    autoptr_destroy_GNativeVolumeMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNativeVolumeMonitor_wrapper")
    listautoptr_cleanup_GNativeVolumeMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNativeVolumeMonitor_wrapper")
    slistautoptr_cleanup_GNativeVolumeMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNativeVolumeMonitor_wrapper")
    queueautoptr_cleanup_GNativeVolumeMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNetworkAddress_wrapper")
    autoptr_clear_GNetworkAddress :: proc(_ptr: ^NetworkAddress) ---

    @(link_name = "glib_autoptr_cleanup_GNetworkAddress_wrapper")
    autoptr_cleanup_GNetworkAddress :: proc(_ptr: ^^NetworkAddress) ---

    @(link_name = "glib_autoptr_destroy_GNetworkAddress_wrapper")
    autoptr_destroy_GNetworkAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNetworkAddress_wrapper")
    listautoptr_cleanup_GNetworkAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNetworkAddress_wrapper")
    slistautoptr_cleanup_GNetworkAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNetworkAddress_wrapper")
    queueautoptr_cleanup_GNetworkAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNetworkMonitor_wrapper")
    autoptr_clear_GNetworkMonitor :: proc(_ptr: ^NetworkMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GNetworkMonitor_wrapper")
    autoptr_cleanup_GNetworkMonitor :: proc(_ptr: ^^NetworkMonitor) ---

    @(link_name = "glib_autoptr_destroy_GNetworkMonitor_wrapper")
    autoptr_destroy_GNetworkMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNetworkMonitor_wrapper")
    listautoptr_cleanup_GNetworkMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNetworkMonitor_wrapper")
    slistautoptr_cleanup_GNetworkMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNetworkMonitor_wrapper")
    queueautoptr_cleanup_GNetworkMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNetworkService_wrapper")
    autoptr_clear_GNetworkService :: proc(_ptr: ^NetworkService) ---

    @(link_name = "glib_autoptr_cleanup_GNetworkService_wrapper")
    autoptr_cleanup_GNetworkService :: proc(_ptr: ^^NetworkService) ---

    @(link_name = "glib_autoptr_destroy_GNetworkService_wrapper")
    autoptr_destroy_GNetworkService :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNetworkService_wrapper")
    listautoptr_cleanup_GNetworkService :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNetworkService_wrapper")
    slistautoptr_cleanup_GNetworkService :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNetworkService_wrapper")
    queueautoptr_cleanup_GNetworkService :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNotification_wrapper")
    autoptr_clear_GNotification :: proc(_ptr: ^Notification) ---

    @(link_name = "glib_autoptr_cleanup_GNotification_wrapper")
    autoptr_cleanup_GNotification :: proc(_ptr: ^^Notification) ---

    @(link_name = "glib_autoptr_destroy_GNotification_wrapper")
    autoptr_destroy_GNotification :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNotification_wrapper")
    listautoptr_cleanup_GNotification :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNotification_wrapper")
    slistautoptr_cleanup_GNotification :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNotification_wrapper")
    queueautoptr_cleanup_GNotification :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GOutputStream_wrapper")
    autoptr_clear_GOutputStream :: proc(_ptr: ^OutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GOutputStream_wrapper")
    autoptr_cleanup_GOutputStream :: proc(_ptr: ^^OutputStream) ---

    @(link_name = "glib_autoptr_destroy_GOutputStream_wrapper")
    autoptr_destroy_GOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GOutputStream_wrapper")
    listautoptr_cleanup_GOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GOutputStream_wrapper")
    slistautoptr_cleanup_GOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GOutputStream_wrapper")
    queueautoptr_cleanup_GOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GPermission_wrapper")
    autoptr_clear_GPermission :: proc(_ptr: ^Permission) ---

    @(link_name = "glib_autoptr_cleanup_GPermission_wrapper")
    autoptr_cleanup_GPermission :: proc(_ptr: ^^Permission) ---

    @(link_name = "glib_autoptr_destroy_GPermission_wrapper")
    autoptr_destroy_GPermission :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPermission_wrapper")
    listautoptr_cleanup_GPermission :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPermission_wrapper")
    slistautoptr_cleanup_GPermission :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPermission_wrapper")
    queueautoptr_cleanup_GPermission :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GPollableInputStream_wrapper")
    autoptr_clear_GPollableInputStream :: proc(_ptr: ^PollableInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GPollableInputStream_wrapper")
    autoptr_cleanup_GPollableInputStream :: proc(_ptr: ^^PollableInputStream) ---

    @(link_name = "glib_autoptr_destroy_GPollableInputStream_wrapper")
    autoptr_destroy_GPollableInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPollableInputStream_wrapper")
    listautoptr_cleanup_GPollableInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPollableInputStream_wrapper")
    slistautoptr_cleanup_GPollableInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPollableInputStream_wrapper")
    queueautoptr_cleanup_GPollableInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GPollableOutputStream_wrapper")
    autoptr_clear_GPollableOutputStream :: proc(_ptr: ^PollableOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GPollableOutputStream_wrapper")
    autoptr_cleanup_GPollableOutputStream :: proc(_ptr: ^^PollableOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GPollableOutputStream_wrapper")
    autoptr_destroy_GPollableOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPollableOutputStream_wrapper")
    listautoptr_cleanup_GPollableOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPollableOutputStream_wrapper")
    slistautoptr_cleanup_GPollableOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPollableOutputStream_wrapper")
    queueautoptr_cleanup_GPollableOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GPropertyAction_wrapper")
    autoptr_clear_GPropertyAction :: proc(_ptr: ^PropertyAction) ---

    @(link_name = "glib_autoptr_cleanup_GPropertyAction_wrapper")
    autoptr_cleanup_GPropertyAction :: proc(_ptr: ^^PropertyAction) ---

    @(link_name = "glib_autoptr_destroy_GPropertyAction_wrapper")
    autoptr_destroy_GPropertyAction :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPropertyAction_wrapper")
    listautoptr_cleanup_GPropertyAction :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPropertyAction_wrapper")
    slistautoptr_cleanup_GPropertyAction :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPropertyAction_wrapper")
    queueautoptr_cleanup_GPropertyAction :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GProxyAddressEnumerator_wrapper")
    autoptr_clear_GProxyAddressEnumerator :: proc(_ptr: ^ProxyAddressEnumerator) ---

    @(link_name = "glib_autoptr_cleanup_GProxyAddressEnumerator_wrapper")
    autoptr_cleanup_GProxyAddressEnumerator :: proc(_ptr: ^^ProxyAddressEnumerator) ---

    @(link_name = "glib_autoptr_destroy_GProxyAddressEnumerator_wrapper")
    autoptr_destroy_GProxyAddressEnumerator :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GProxyAddressEnumerator_wrapper")
    listautoptr_cleanup_GProxyAddressEnumerator :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GProxyAddressEnumerator_wrapper")
    slistautoptr_cleanup_GProxyAddressEnumerator :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GProxyAddressEnumerator_wrapper")
    queueautoptr_cleanup_GProxyAddressEnumerator :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GProxyAddress_wrapper")
    autoptr_clear_GProxyAddress :: proc(_ptr: ^ProxyAddress) ---

    @(link_name = "glib_autoptr_cleanup_GProxyAddress_wrapper")
    autoptr_cleanup_GProxyAddress :: proc(_ptr: ^^ProxyAddress) ---

    @(link_name = "glib_autoptr_destroy_GProxyAddress_wrapper")
    autoptr_destroy_GProxyAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GProxyAddress_wrapper")
    listautoptr_cleanup_GProxyAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GProxyAddress_wrapper")
    slistautoptr_cleanup_GProxyAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GProxyAddress_wrapper")
    queueautoptr_cleanup_GProxyAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GProxy_wrapper")
    autoptr_clear_GProxy :: proc(_ptr: ^Proxy) ---

    @(link_name = "glib_autoptr_cleanup_GProxy_wrapper")
    autoptr_cleanup_GProxy :: proc(_ptr: ^^Proxy) ---

    @(link_name = "glib_autoptr_destroy_GProxy_wrapper")
    autoptr_destroy_GProxy :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GProxy_wrapper")
    listautoptr_cleanup_GProxy :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GProxy_wrapper")
    slistautoptr_cleanup_GProxy :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GProxy_wrapper")
    queueautoptr_cleanup_GProxy :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GProxyResolver_wrapper")
    autoptr_clear_GProxyResolver :: proc(_ptr: ^ProxyResolver) ---

    @(link_name = "glib_autoptr_cleanup_GProxyResolver_wrapper")
    autoptr_cleanup_GProxyResolver :: proc(_ptr: ^^ProxyResolver) ---

    @(link_name = "glib_autoptr_destroy_GProxyResolver_wrapper")
    autoptr_destroy_GProxyResolver :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GProxyResolver_wrapper")
    listautoptr_cleanup_GProxyResolver :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GProxyResolver_wrapper")
    slistautoptr_cleanup_GProxyResolver :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GProxyResolver_wrapper")
    queueautoptr_cleanup_GProxyResolver :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GRemoteActionGroup_wrapper")
    autoptr_clear_GRemoteActionGroup :: proc(_ptr: ^RemoteActionGroup) ---

    @(link_name = "glib_autoptr_cleanup_GRemoteActionGroup_wrapper")
    autoptr_cleanup_GRemoteActionGroup :: proc(_ptr: ^^RemoteActionGroup) ---

    @(link_name = "glib_autoptr_destroy_GRemoteActionGroup_wrapper")
    autoptr_destroy_GRemoteActionGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GRemoteActionGroup_wrapper")
    listautoptr_cleanup_GRemoteActionGroup :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GRemoteActionGroup_wrapper")
    slistautoptr_cleanup_GRemoteActionGroup :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GRemoteActionGroup_wrapper")
    queueautoptr_cleanup_GRemoteActionGroup :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GResolver_wrapper")
    autoptr_clear_GResolver :: proc(_ptr: ^Resolver) ---

    @(link_name = "glib_autoptr_cleanup_GResolver_wrapper")
    autoptr_cleanup_GResolver :: proc(_ptr: ^^Resolver) ---

    @(link_name = "glib_autoptr_destroy_GResolver_wrapper")
    autoptr_destroy_GResolver :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GResolver_wrapper")
    listautoptr_cleanup_GResolver :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GResolver_wrapper")
    slistautoptr_cleanup_GResolver :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GResolver_wrapper")
    queueautoptr_cleanup_GResolver :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GResource_wrapper")
    autoptr_clear_GResource :: proc(_ptr: ^Resource) ---

    @(link_name = "glib_autoptr_cleanup_GResource_wrapper")
    autoptr_cleanup_GResource :: proc(_ptr: ^^Resource) ---

    @(link_name = "glib_autoptr_destroy_GResource_wrapper")
    autoptr_destroy_GResource :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GResource_wrapper")
    listautoptr_cleanup_GResource :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GResource_wrapper")
    slistautoptr_cleanup_GResource :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GResource_wrapper")
    queueautoptr_cleanup_GResource :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSeekable_wrapper")
    autoptr_clear_GSeekable :: proc(_ptr: ^Seekable) ---

    @(link_name = "glib_autoptr_cleanup_GSeekable_wrapper")
    autoptr_cleanup_GSeekable :: proc(_ptr: ^^Seekable) ---

    @(link_name = "glib_autoptr_destroy_GSeekable_wrapper")
    autoptr_destroy_GSeekable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSeekable_wrapper")
    listautoptr_cleanup_GSeekable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSeekable_wrapper")
    slistautoptr_cleanup_GSeekable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSeekable_wrapper")
    queueautoptr_cleanup_GSeekable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettingsBackend_wrapper")
    autoptr_clear_GSettingsBackend :: proc(_ptr: ^SettingsBackend) ---

    @(link_name = "glib_autoptr_cleanup_GSettingsBackend_wrapper")
    autoptr_cleanup_GSettingsBackend :: proc(_ptr: ^^SettingsBackend) ---

    @(link_name = "glib_autoptr_destroy_GSettingsBackend_wrapper")
    autoptr_destroy_GSettingsBackend :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettingsBackend_wrapper")
    listautoptr_cleanup_GSettingsBackend :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettingsBackend_wrapper")
    slistautoptr_cleanup_GSettingsBackend :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettingsBackend_wrapper")
    queueautoptr_cleanup_GSettingsBackend :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettingsSchema_wrapper")
    autoptr_clear_GSettingsSchema :: proc(_ptr: ^SettingsSchema) ---

    @(link_name = "glib_autoptr_cleanup_GSettingsSchema_wrapper")
    autoptr_cleanup_GSettingsSchema :: proc(_ptr: ^^SettingsSchema) ---

    @(link_name = "glib_autoptr_destroy_GSettingsSchema_wrapper")
    autoptr_destroy_GSettingsSchema :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettingsSchema_wrapper")
    listautoptr_cleanup_GSettingsSchema :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettingsSchema_wrapper")
    slistautoptr_cleanup_GSettingsSchema :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettingsSchema_wrapper")
    queueautoptr_cleanup_GSettingsSchema :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettingsSchemaKey_wrapper")
    autoptr_clear_GSettingsSchemaKey :: proc(_ptr: ^SettingsSchemaKey) ---

    @(link_name = "glib_autoptr_cleanup_GSettingsSchemaKey_wrapper")
    autoptr_cleanup_GSettingsSchemaKey :: proc(_ptr: ^^SettingsSchemaKey) ---

    @(link_name = "glib_autoptr_destroy_GSettingsSchemaKey_wrapper")
    autoptr_destroy_GSettingsSchemaKey :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettingsSchemaKey_wrapper")
    listautoptr_cleanup_GSettingsSchemaKey :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettingsSchemaKey_wrapper")
    slistautoptr_cleanup_GSettingsSchemaKey :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettingsSchemaKey_wrapper")
    queueautoptr_cleanup_GSettingsSchemaKey :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettingsSchemaSource_wrapper")
    autoptr_clear_GSettingsSchemaSource :: proc(_ptr: ^SettingsSchemaSource) ---

    @(link_name = "glib_autoptr_cleanup_GSettingsSchemaSource_wrapper")
    autoptr_cleanup_GSettingsSchemaSource :: proc(_ptr: ^^SettingsSchemaSource) ---

    @(link_name = "glib_autoptr_destroy_GSettingsSchemaSource_wrapper")
    autoptr_destroy_GSettingsSchemaSource :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettingsSchemaSource_wrapper")
    listautoptr_cleanup_GSettingsSchemaSource :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettingsSchemaSource_wrapper")
    slistautoptr_cleanup_GSettingsSchemaSource :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettingsSchemaSource_wrapper")
    queueautoptr_cleanup_GSettingsSchemaSource :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettings_wrapper")
    autoptr_clear_GSettings :: proc(_ptr: ^Settings) ---

    @(link_name = "glib_autoptr_cleanup_GSettings_wrapper")
    autoptr_cleanup_GSettings :: proc(_ptr: ^^Settings) ---

    @(link_name = "glib_autoptr_destroy_GSettings_wrapper")
    autoptr_destroy_GSettings :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettings_wrapper")
    listautoptr_cleanup_GSettings :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettings_wrapper")
    slistautoptr_cleanup_GSettings :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettings_wrapper")
    queueautoptr_cleanup_GSettings :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimpleActionGroup_wrapper")
    autoptr_clear_GSimpleActionGroup :: proc(_ptr: ^SimpleActionGroup) ---

    @(link_name = "glib_autoptr_cleanup_GSimpleActionGroup_wrapper")
    autoptr_cleanup_GSimpleActionGroup :: proc(_ptr: ^^SimpleActionGroup) ---

    @(link_name = "glib_autoptr_destroy_GSimpleActionGroup_wrapper")
    autoptr_destroy_GSimpleActionGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimpleActionGroup_wrapper")
    listautoptr_cleanup_GSimpleActionGroup :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimpleActionGroup_wrapper")
    slistautoptr_cleanup_GSimpleActionGroup :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimpleActionGroup_wrapper")
    queueautoptr_cleanup_GSimpleActionGroup :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimpleAction_wrapper")
    autoptr_clear_GSimpleAction :: proc(_ptr: ^SimpleAction) ---

    @(link_name = "glib_autoptr_cleanup_GSimpleAction_wrapper")
    autoptr_cleanup_GSimpleAction :: proc(_ptr: ^^SimpleAction) ---

    @(link_name = "glib_autoptr_destroy_GSimpleAction_wrapper")
    autoptr_destroy_GSimpleAction :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimpleAction_wrapper")
    listautoptr_cleanup_GSimpleAction :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimpleAction_wrapper")
    slistautoptr_cleanup_GSimpleAction :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimpleAction_wrapper")
    queueautoptr_cleanup_GSimpleAction :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimpleAsyncResult_wrapper")
    autoptr_clear_GSimpleAsyncResult :: proc(_ptr: ^SimpleAsyncResult) ---

    @(link_name = "glib_autoptr_cleanup_GSimpleAsyncResult_wrapper")
    autoptr_cleanup_GSimpleAsyncResult :: proc(_ptr: ^^SimpleAsyncResult) ---

    @(link_name = "glib_autoptr_destroy_GSimpleAsyncResult_wrapper")
    autoptr_destroy_GSimpleAsyncResult :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimpleAsyncResult_wrapper")
    listautoptr_cleanup_GSimpleAsyncResult :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimpleAsyncResult_wrapper")
    slistautoptr_cleanup_GSimpleAsyncResult :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimpleAsyncResult_wrapper")
    queueautoptr_cleanup_GSimpleAsyncResult :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimplePermission_wrapper")
    autoptr_clear_GSimplePermission :: proc(_ptr: ^SimplePermission) ---

    @(link_name = "glib_autoptr_cleanup_GSimplePermission_wrapper")
    autoptr_cleanup_GSimplePermission :: proc(_ptr: ^^SimplePermission) ---

    @(link_name = "glib_autoptr_destroy_GSimplePermission_wrapper")
    autoptr_destroy_GSimplePermission :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimplePermission_wrapper")
    listautoptr_cleanup_GSimplePermission :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimplePermission_wrapper")
    slistautoptr_cleanup_GSimplePermission :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimplePermission_wrapper")
    queueautoptr_cleanup_GSimplePermission :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimpleProxyResolver_wrapper")
    autoptr_clear_GSimpleProxyResolver :: proc(_ptr: ^SimpleProxyResolver) ---

    @(link_name = "glib_autoptr_cleanup_GSimpleProxyResolver_wrapper")
    autoptr_cleanup_GSimpleProxyResolver :: proc(_ptr: ^^SimpleProxyResolver) ---

    @(link_name = "glib_autoptr_destroy_GSimpleProxyResolver_wrapper")
    autoptr_destroy_GSimpleProxyResolver :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimpleProxyResolver_wrapper")
    listautoptr_cleanup_GSimpleProxyResolver :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimpleProxyResolver_wrapper")
    slistautoptr_cleanup_GSimpleProxyResolver :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimpleProxyResolver_wrapper")
    queueautoptr_cleanup_GSimpleProxyResolver :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketAddressEnumerator_wrapper")
    autoptr_clear_GSocketAddressEnumerator :: proc(_ptr: ^SocketAddressEnumerator) ---

    @(link_name = "glib_autoptr_cleanup_GSocketAddressEnumerator_wrapper")
    autoptr_cleanup_GSocketAddressEnumerator :: proc(_ptr: ^^SocketAddressEnumerator) ---

    @(link_name = "glib_autoptr_destroy_GSocketAddressEnumerator_wrapper")
    autoptr_destroy_GSocketAddressEnumerator :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketAddressEnumerator_wrapper")
    listautoptr_cleanup_GSocketAddressEnumerator :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketAddressEnumerator_wrapper")
    slistautoptr_cleanup_GSocketAddressEnumerator :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketAddressEnumerator_wrapper")
    queueautoptr_cleanup_GSocketAddressEnumerator :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketAddress_wrapper")
    autoptr_clear_GSocketAddress :: proc(_ptr: ^SocketAddress) ---

    @(link_name = "glib_autoptr_cleanup_GSocketAddress_wrapper")
    autoptr_cleanup_GSocketAddress :: proc(_ptr: ^^SocketAddress) ---

    @(link_name = "glib_autoptr_destroy_GSocketAddress_wrapper")
    autoptr_destroy_GSocketAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketAddress_wrapper")
    listautoptr_cleanup_GSocketAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketAddress_wrapper")
    slistautoptr_cleanup_GSocketAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketAddress_wrapper")
    queueautoptr_cleanup_GSocketAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketClient_wrapper")
    autoptr_clear_GSocketClient :: proc(_ptr: ^SocketClient) ---

    @(link_name = "glib_autoptr_cleanup_GSocketClient_wrapper")
    autoptr_cleanup_GSocketClient :: proc(_ptr: ^^SocketClient) ---

    @(link_name = "glib_autoptr_destroy_GSocketClient_wrapper")
    autoptr_destroy_GSocketClient :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketClient_wrapper")
    listautoptr_cleanup_GSocketClient :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketClient_wrapper")
    slistautoptr_cleanup_GSocketClient :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketClient_wrapper")
    queueautoptr_cleanup_GSocketClient :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketConnectable_wrapper")
    autoptr_clear_GSocketConnectable :: proc(_ptr: ^SocketConnectable) ---

    @(link_name = "glib_autoptr_cleanup_GSocketConnectable_wrapper")
    autoptr_cleanup_GSocketConnectable :: proc(_ptr: ^^SocketConnectable) ---

    @(link_name = "glib_autoptr_destroy_GSocketConnectable_wrapper")
    autoptr_destroy_GSocketConnectable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketConnectable_wrapper")
    listautoptr_cleanup_GSocketConnectable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketConnectable_wrapper")
    slistautoptr_cleanup_GSocketConnectable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketConnectable_wrapper")
    queueautoptr_cleanup_GSocketConnectable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketConnection_wrapper")
    autoptr_clear_GSocketConnection :: proc(_ptr: ^SocketConnection) ---

    @(link_name = "glib_autoptr_cleanup_GSocketConnection_wrapper")
    autoptr_cleanup_GSocketConnection :: proc(_ptr: ^^SocketConnection) ---

    @(link_name = "glib_autoptr_destroy_GSocketConnection_wrapper")
    autoptr_destroy_GSocketConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketConnection_wrapper")
    listautoptr_cleanup_GSocketConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketConnection_wrapper")
    slistautoptr_cleanup_GSocketConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketConnection_wrapper")
    queueautoptr_cleanup_GSocketConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketControlMessage_wrapper")
    autoptr_clear_GSocketControlMessage :: proc(_ptr: ^SocketControlMessage) ---

    @(link_name = "glib_autoptr_cleanup_GSocketControlMessage_wrapper")
    autoptr_cleanup_GSocketControlMessage :: proc(_ptr: ^^SocketControlMessage) ---

    @(link_name = "glib_autoptr_destroy_GSocketControlMessage_wrapper")
    autoptr_destroy_GSocketControlMessage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketControlMessage_wrapper")
    listautoptr_cleanup_GSocketControlMessage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketControlMessage_wrapper")
    slistautoptr_cleanup_GSocketControlMessage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketControlMessage_wrapper")
    queueautoptr_cleanup_GSocketControlMessage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocket_wrapper")
    autoptr_clear_GSocket :: proc(_ptr: ^Socket) ---

    @(link_name = "glib_autoptr_cleanup_GSocket_wrapper")
    autoptr_cleanup_GSocket :: proc(_ptr: ^^Socket) ---

    @(link_name = "glib_autoptr_destroy_GSocket_wrapper")
    autoptr_destroy_GSocket :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocket_wrapper")
    listautoptr_cleanup_GSocket :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocket_wrapper")
    slistautoptr_cleanup_GSocket :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocket_wrapper")
    queueautoptr_cleanup_GSocket :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketListener_wrapper")
    autoptr_clear_GSocketListener :: proc(_ptr: ^SocketListener) ---

    @(link_name = "glib_autoptr_cleanup_GSocketListener_wrapper")
    autoptr_cleanup_GSocketListener :: proc(_ptr: ^^SocketListener) ---

    @(link_name = "glib_autoptr_destroy_GSocketListener_wrapper")
    autoptr_destroy_GSocketListener :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketListener_wrapper")
    listautoptr_cleanup_GSocketListener :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketListener_wrapper")
    slistautoptr_cleanup_GSocketListener :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketListener_wrapper")
    queueautoptr_cleanup_GSocketListener :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketService_wrapper")
    autoptr_clear_GSocketService :: proc(_ptr: ^SocketService) ---

    @(link_name = "glib_autoptr_cleanup_GSocketService_wrapper")
    autoptr_cleanup_GSocketService :: proc(_ptr: ^^SocketService) ---

    @(link_name = "glib_autoptr_destroy_GSocketService_wrapper")
    autoptr_destroy_GSocketService :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketService_wrapper")
    listautoptr_cleanup_GSocketService :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketService_wrapper")
    slistautoptr_cleanup_GSocketService :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketService_wrapper")
    queueautoptr_cleanup_GSocketService :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSubprocess_wrapper")
    autoptr_clear_GSubprocess :: proc(_ptr: ^Subprocess) ---

    @(link_name = "glib_autoptr_cleanup_GSubprocess_wrapper")
    autoptr_cleanup_GSubprocess :: proc(_ptr: ^^Subprocess) ---

    @(link_name = "glib_autoptr_destroy_GSubprocess_wrapper")
    autoptr_destroy_GSubprocess :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSubprocess_wrapper")
    listautoptr_cleanup_GSubprocess :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSubprocess_wrapper")
    slistautoptr_cleanup_GSubprocess :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSubprocess_wrapper")
    queueautoptr_cleanup_GSubprocess :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSubprocessLauncher_wrapper")
    autoptr_clear_GSubprocessLauncher :: proc(_ptr: ^SubprocessLauncher) ---

    @(link_name = "glib_autoptr_cleanup_GSubprocessLauncher_wrapper")
    autoptr_cleanup_GSubprocessLauncher :: proc(_ptr: ^^SubprocessLauncher) ---

    @(link_name = "glib_autoptr_destroy_GSubprocessLauncher_wrapper")
    autoptr_destroy_GSubprocessLauncher :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSubprocessLauncher_wrapper")
    listautoptr_cleanup_GSubprocessLauncher :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSubprocessLauncher_wrapper")
    slistautoptr_cleanup_GSubprocessLauncher :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSubprocessLauncher_wrapper")
    queueautoptr_cleanup_GSubprocessLauncher :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTask_wrapper")
    autoptr_clear_GTask :: proc(_ptr: ^Task) ---

    @(link_name = "glib_autoptr_cleanup_GTask_wrapper")
    autoptr_cleanup_GTask :: proc(_ptr: ^^Task) ---

    @(link_name = "glib_autoptr_destroy_GTask_wrapper")
    autoptr_destroy_GTask :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTask_wrapper")
    listautoptr_cleanup_GTask :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTask_wrapper")
    slistautoptr_cleanup_GTask :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTask_wrapper")
    queueautoptr_cleanup_GTask :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTcpConnection_wrapper")
    autoptr_clear_GTcpConnection :: proc(_ptr: ^TcpConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTcpConnection_wrapper")
    autoptr_cleanup_GTcpConnection :: proc(_ptr: ^^TcpConnection) ---

    @(link_name = "glib_autoptr_destroy_GTcpConnection_wrapper")
    autoptr_destroy_GTcpConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTcpConnection_wrapper")
    listautoptr_cleanup_GTcpConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTcpConnection_wrapper")
    slistautoptr_cleanup_GTcpConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTcpConnection_wrapper")
    queueautoptr_cleanup_GTcpConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTcpWrapperConnection_wrapper")
    autoptr_clear_GTcpWrapperConnection :: proc(_ptr: ^TcpWrapperConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTcpWrapperConnection_wrapper")
    autoptr_cleanup_GTcpWrapperConnection :: proc(_ptr: ^^TcpWrapperConnection) ---

    @(link_name = "glib_autoptr_destroy_GTcpWrapperConnection_wrapper")
    autoptr_destroy_GTcpWrapperConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTcpWrapperConnection_wrapper")
    listautoptr_cleanup_GTcpWrapperConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTcpWrapperConnection_wrapper")
    slistautoptr_cleanup_GTcpWrapperConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTcpWrapperConnection_wrapper")
    queueautoptr_cleanup_GTcpWrapperConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTestDBus_wrapper")
    autoptr_clear_GTestDBus :: proc(_ptr: ^TestDBus) ---

    @(link_name = "glib_autoptr_cleanup_GTestDBus_wrapper")
    autoptr_cleanup_GTestDBus :: proc(_ptr: ^^TestDBus) ---

    @(link_name = "glib_autoptr_destroy_GTestDBus_wrapper")
    autoptr_destroy_GTestDBus :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTestDBus_wrapper")
    listautoptr_cleanup_GTestDBus :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTestDBus_wrapper")
    slistautoptr_cleanup_GTestDBus :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTestDBus_wrapper")
    queueautoptr_cleanup_GTestDBus :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GThemedIcon_wrapper")
    autoptr_clear_GThemedIcon :: proc(_ptr: ^ThemedIcon) ---

    @(link_name = "glib_autoptr_cleanup_GThemedIcon_wrapper")
    autoptr_cleanup_GThemedIcon :: proc(_ptr: ^^ThemedIcon) ---

    @(link_name = "glib_autoptr_destroy_GThemedIcon_wrapper")
    autoptr_destroy_GThemedIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GThemedIcon_wrapper")
    listautoptr_cleanup_GThemedIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GThemedIcon_wrapper")
    slistautoptr_cleanup_GThemedIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GThemedIcon_wrapper")
    queueautoptr_cleanup_GThemedIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GThreadedSocketService_wrapper")
    autoptr_clear_GThreadedSocketService :: proc(_ptr: ^ThreadedSocketService) ---

    @(link_name = "glib_autoptr_cleanup_GThreadedSocketService_wrapper")
    autoptr_cleanup_GThreadedSocketService :: proc(_ptr: ^^ThreadedSocketService) ---

    @(link_name = "glib_autoptr_destroy_GThreadedSocketService_wrapper")
    autoptr_destroy_GThreadedSocketService :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GThreadedSocketService_wrapper")
    listautoptr_cleanup_GThreadedSocketService :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GThreadedSocketService_wrapper")
    slistautoptr_cleanup_GThreadedSocketService :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GThreadedSocketService_wrapper")
    queueautoptr_cleanup_GThreadedSocketService :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsBackend_wrapper")
    autoptr_clear_GTlsBackend :: proc(_ptr: ^TlsBackend) ---

    @(link_name = "glib_autoptr_cleanup_GTlsBackend_wrapper")
    autoptr_cleanup_GTlsBackend :: proc(_ptr: ^^TlsBackend) ---

    @(link_name = "glib_autoptr_destroy_GTlsBackend_wrapper")
    autoptr_destroy_GTlsBackend :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsBackend_wrapper")
    listautoptr_cleanup_GTlsBackend :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsBackend_wrapper")
    slistautoptr_cleanup_GTlsBackend :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsBackend_wrapper")
    queueautoptr_cleanup_GTlsBackend :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsCertificate_wrapper")
    autoptr_clear_GTlsCertificate :: proc(_ptr: ^TlsCertificate) ---

    @(link_name = "glib_autoptr_cleanup_GTlsCertificate_wrapper")
    autoptr_cleanup_GTlsCertificate :: proc(_ptr: ^^TlsCertificate) ---

    @(link_name = "glib_autoptr_destroy_GTlsCertificate_wrapper")
    autoptr_destroy_GTlsCertificate :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsCertificate_wrapper")
    listautoptr_cleanup_GTlsCertificate :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsCertificate_wrapper")
    slistautoptr_cleanup_GTlsCertificate :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsCertificate_wrapper")
    queueautoptr_cleanup_GTlsCertificate :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsClientConnection_wrapper")
    autoptr_clear_GTlsClientConnection :: proc(_ptr: ^TlsClientConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTlsClientConnection_wrapper")
    autoptr_cleanup_GTlsClientConnection :: proc(_ptr: ^^TlsClientConnection) ---

    @(link_name = "glib_autoptr_destroy_GTlsClientConnection_wrapper")
    autoptr_destroy_GTlsClientConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsClientConnection_wrapper")
    listautoptr_cleanup_GTlsClientConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsClientConnection_wrapper")
    slistautoptr_cleanup_GTlsClientConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsClientConnection_wrapper")
    queueautoptr_cleanup_GTlsClientConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsConnection_wrapper")
    autoptr_clear_GTlsConnection :: proc(_ptr: ^TlsConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTlsConnection_wrapper")
    autoptr_cleanup_GTlsConnection :: proc(_ptr: ^^TlsConnection) ---

    @(link_name = "glib_autoptr_destroy_GTlsConnection_wrapper")
    autoptr_destroy_GTlsConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsConnection_wrapper")
    listautoptr_cleanup_GTlsConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsConnection_wrapper")
    slistautoptr_cleanup_GTlsConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsConnection_wrapper")
    queueautoptr_cleanup_GTlsConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsDatabase_wrapper")
    autoptr_clear_GTlsDatabase :: proc(_ptr: ^TlsDatabase) ---

    @(link_name = "glib_autoptr_cleanup_GTlsDatabase_wrapper")
    autoptr_cleanup_GTlsDatabase :: proc(_ptr: ^^TlsDatabase) ---

    @(link_name = "glib_autoptr_destroy_GTlsDatabase_wrapper")
    autoptr_destroy_GTlsDatabase :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsDatabase_wrapper")
    listautoptr_cleanup_GTlsDatabase :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsDatabase_wrapper")
    slistautoptr_cleanup_GTlsDatabase :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsDatabase_wrapper")
    queueautoptr_cleanup_GTlsDatabase :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsFileDatabase_wrapper")
    autoptr_clear_GTlsFileDatabase :: proc(_ptr: ^TlsFileDatabase) ---

    @(link_name = "glib_autoptr_cleanup_GTlsFileDatabase_wrapper")
    autoptr_cleanup_GTlsFileDatabase :: proc(_ptr: ^^TlsFileDatabase) ---

    @(link_name = "glib_autoptr_destroy_GTlsFileDatabase_wrapper")
    autoptr_destroy_GTlsFileDatabase :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsFileDatabase_wrapper")
    listautoptr_cleanup_GTlsFileDatabase :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsFileDatabase_wrapper")
    slistautoptr_cleanup_GTlsFileDatabase :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsFileDatabase_wrapper")
    queueautoptr_cleanup_GTlsFileDatabase :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsInteraction_wrapper")
    autoptr_clear_GTlsInteraction :: proc(_ptr: ^TlsInteraction) ---

    @(link_name = "glib_autoptr_cleanup_GTlsInteraction_wrapper")
    autoptr_cleanup_GTlsInteraction :: proc(_ptr: ^^TlsInteraction) ---

    @(link_name = "glib_autoptr_destroy_GTlsInteraction_wrapper")
    autoptr_destroy_GTlsInteraction :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsInteraction_wrapper")
    listautoptr_cleanup_GTlsInteraction :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsInteraction_wrapper")
    slistautoptr_cleanup_GTlsInteraction :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsInteraction_wrapper")
    queueautoptr_cleanup_GTlsInteraction :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsPassword_wrapper")
    autoptr_clear_GTlsPassword :: proc(_ptr: ^TlsPassword) ---

    @(link_name = "glib_autoptr_cleanup_GTlsPassword_wrapper")
    autoptr_cleanup_GTlsPassword :: proc(_ptr: ^^TlsPassword) ---

    @(link_name = "glib_autoptr_destroy_GTlsPassword_wrapper")
    autoptr_destroy_GTlsPassword :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsPassword_wrapper")
    listautoptr_cleanup_GTlsPassword :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsPassword_wrapper")
    slistautoptr_cleanup_GTlsPassword :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsPassword_wrapper")
    queueautoptr_cleanup_GTlsPassword :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsServerConnection_wrapper")
    autoptr_clear_GTlsServerConnection :: proc(_ptr: ^TlsServerConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTlsServerConnection_wrapper")
    autoptr_cleanup_GTlsServerConnection :: proc(_ptr: ^^TlsServerConnection) ---

    @(link_name = "glib_autoptr_destroy_GTlsServerConnection_wrapper")
    autoptr_destroy_GTlsServerConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsServerConnection_wrapper")
    listautoptr_cleanup_GTlsServerConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsServerConnection_wrapper")
    slistautoptr_cleanup_GTlsServerConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsServerConnection_wrapper")
    queueautoptr_cleanup_GTlsServerConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GVfs_wrapper")
    autoptr_clear_GVfs :: proc(_ptr: ^Vfs) ---

    @(link_name = "glib_autoptr_cleanup_GVfs_wrapper")
    autoptr_cleanup_GVfs :: proc(_ptr: ^^Vfs) ---

    @(link_name = "glib_autoptr_destroy_GVfs_wrapper")
    autoptr_destroy_GVfs :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVfs_wrapper")
    listautoptr_cleanup_GVfs :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVfs_wrapper")
    slistautoptr_cleanup_GVfs :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVfs_wrapper")
    queueautoptr_cleanup_GVfs :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GVolume_wrapper")
    autoptr_clear_GVolume :: proc(_ptr: ^Volume) ---

    @(link_name = "glib_autoptr_cleanup_GVolume_wrapper")
    autoptr_cleanup_GVolume :: proc(_ptr: ^^Volume) ---

    @(link_name = "glib_autoptr_destroy_GVolume_wrapper")
    autoptr_destroy_GVolume :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVolume_wrapper")
    listautoptr_cleanup_GVolume :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVolume_wrapper")
    slistautoptr_cleanup_GVolume :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVolume_wrapper")
    queueautoptr_cleanup_GVolume :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GVolumeMonitor_wrapper")
    autoptr_clear_GVolumeMonitor :: proc(_ptr: ^VolumeMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GVolumeMonitor_wrapper")
    autoptr_cleanup_GVolumeMonitor :: proc(_ptr: ^^VolumeMonitor) ---

    @(link_name = "glib_autoptr_destroy_GVolumeMonitor_wrapper")
    autoptr_destroy_GVolumeMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVolumeMonitor_wrapper")
    listautoptr_cleanup_GVolumeMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVolumeMonitor_wrapper")
    slistautoptr_cleanup_GVolumeMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVolumeMonitor_wrapper")
    queueautoptr_cleanup_GVolumeMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GZlibCompressor_wrapper")
    autoptr_clear_GZlibCompressor :: proc(_ptr: ^ZlibCompressor) ---

    @(link_name = "glib_autoptr_cleanup_GZlibCompressor_wrapper")
    autoptr_cleanup_GZlibCompressor :: proc(_ptr: ^^ZlibCompressor) ---

    @(link_name = "glib_autoptr_destroy_GZlibCompressor_wrapper")
    autoptr_destroy_GZlibCompressor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GZlibCompressor_wrapper")
    listautoptr_cleanup_GZlibCompressor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GZlibCompressor_wrapper")
    slistautoptr_cleanup_GZlibCompressor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GZlibCompressor_wrapper")
    queueautoptr_cleanup_GZlibCompressor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GZlibDecompressor_wrapper")
    autoptr_clear_GZlibDecompressor :: proc(_ptr: ^ZlibDecompressor) ---

    @(link_name = "glib_autoptr_cleanup_GZlibDecompressor_wrapper")
    autoptr_cleanup_GZlibDecompressor :: proc(_ptr: ^^ZlibDecompressor) ---

    @(link_name = "glib_autoptr_destroy_GZlibDecompressor_wrapper")
    autoptr_destroy_GZlibDecompressor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GZlibDecompressor_wrapper")
    listautoptr_cleanup_GZlibDecompressor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GZlibDecompressor_wrapper")
    slistautoptr_cleanup_GZlibDecompressor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GZlibDecompressor_wrapper")
    queueautoptr_cleanup_GZlibDecompressor :: proc(_q: ^^glib.Queue) ---

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

