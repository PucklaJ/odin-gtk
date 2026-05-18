package gobject

import glib ".."
import "base:intrinsics"

signal_connect :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: $T,
    data: glib.pointer = nil,
) -> glib.ulong where intrinsics.type_is_proc(T) {
    return signal_connect_data(
        instance,
        detailed_signal,
        cast(Callback)c_handler,
        data,
        nil,
        ConnectFlags(0),
    )
}

signal_connect_after :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: $T,
    data: glib.pointer = nil,
) -> glib.ulong where intrinsics.type_is_proc(T) {
    return signal_connect_data(
        instance,
        detailed_signal,
        cast(Callback)c_handler,
        data,
        nil,
        .AFTER,
    )
}

signal_connect_swapped :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: $T,
    data: glib.pointer = nil,
) -> glib.ulong where intrinsics.type_is_proc(T) {
    return signal_connect_data(
        instance,
        detailed_signal,
        cast(Callback)c_handler,
        data,
        nil,
        .SWAPPED,
    )
}

type_cast :: #force_inline proc "contextless" (
    $T: typeid,
    instance: $Ptr,
    g_type: $TypeProc,
) -> ^T where intrinsics.type_is_pointer(Ptr),
    intrinsics.type_is_proc(TypeProc) &&
    intrinsics.type_proc_return_count(TypeProc) == 1 &&
    intrinsics.type_proc_return_type(TypeProc, 0) == Type {
    when #config(GTK_SAFE_CAST, true) {
        return(
            cast(^T)type_check_instance_cast(
                cast(^TypeInstance)instance,
                g_type(),
            ) \
        )
    } else {
        return cast(^T)instance
    }
}

type_is :: #force_inline proc "contextless" (
    instance: $Ptr,
    g_type: $TypeProc,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr),
    intrinsics.type_is_proc(TypeProc) &&
    intrinsics.type_proc_return_count(TypeProc) == 1 &&
    intrinsics.type_proc_return_type(TypeProc, 0) == Type {
    return type_check_instance_is_a(cast(^TypeInstance)instance, g_type())
}
