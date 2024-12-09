package gobject

import glib ".."

signal_connect :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: Callback,
    data: glib.pointer,
) -> glib.ulong {
    return signal_connect_data(
        instance,
        detailed_signal,
        c_handler,
        data,
        nil,
        ConnectFlags(0),
    )
}

signal_connect_after :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: Callback,
    data: glib.pointer,
) -> glib.ulong {
    return signal_connect_data(
        instance,
        detailed_signal,
        c_handler,
        data,
        nil,
        .CONNECT_AFTER,
    )
}

signal_connect_swapped :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: Callback,
    data: glib.pointer,
) -> glib.ulong {
    return signal_connect_data(
        instance,
        detailed_signal,
        c_handler,
        data,
        nil,
        .CONNECT_SWAPPED,
    )
}

