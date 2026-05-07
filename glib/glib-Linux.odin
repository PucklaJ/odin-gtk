#+build linux amd64, linux arm64
package glib

import "core:sys/posix"

GINT64_MODIFIER :: "l"
GINT64_FORMAT :: "li"
GUINT64_FORMAT :: "lu"
GSIZE_MODIFIER :: "l"
GSSIZE_MODIFIER :: "l"
GSIZE_FORMAT :: "lu"
GSSIZE_FORMAT :: "li"
MINOFFSET :: ( (-(0x7fffffffffffffff) - (1)))
MAXOFFSET :: (0x7fffffffffffffff)
GOFFSET_MODIFIER :: "l"
GOFFSET_FORMAT :: "li"
POLLFD_FORMAT :: "%d"
GINTPTR_MODIFIER :: "l"
GINTPTR_FORMAT :: "li"
GUINTPTR_FORMAT :: "lu"
PID_FORMAT :: "i"
MININT64 :: min(int64)
MAXINT64 :: max(int64)
MAXUINT64 :: max(uint64)
TIME_SPAN_DAY :: ((86400000000))
TIME_SPAN_HOR :: ((3600000000))
TIME_SPAN_MINTE :: ((60000000))
TIME_SPAN_SECOND :: ((1000000))
TIME_SPAN_MIISECOND :: ((1000))

Pid :: i32
long :: i64
ulong :: u64
malloc_func_ptr_anon_0 :: #type proc "c" (n_bytes: size) -> pointer
realloc_func_ptr_anon_1 :: #type proc "c" (mem: pointer, n_bytes: size) -> pointer
free_func_ptr_anon_2 :: #type proc "c" (mem: pointer)
calloc_func_ptr_anon_3 :: #type proc "c" (n_blocks: size, n_block_bytes: size) -> pointer
try_malloc_func_ptr_anon_4 :: #type proc "c" (n_bytes: size) -> pointer
try_realloc_func_ptr_anon_5 :: #type proc "c" (mem: pointer, n_bytes: size) -> pointer
_GMemVTable :: struct {
    malloc: malloc_func_ptr_anon_0,
    realloc: realloc_func_ptr_anon_1,
    free: free_func_ptr_anon_2,
    calloc: calloc_func_ptr_anon_3,
    try_malloc: try_malloc_func_ptr_anon_4,
    try_realloc: try_realloc_func_ptr_anon_5,
}
_GPollFD :: struct {
    fd: int_,
    events: ushort,
    revents: ushort,
}
ref_func_ptr_anon_6 :: #type proc "c" (cb_data: pointer)
unref_func_ptr_anon_7 :: #type proc "c" (cb_data: pointer)
et_func_ptr_anon_8 :: #type proc "c" (cb_data: pointer, source: ^Source, func: ^SourceFunc, data: ^pointer)
_GSourceCallbackFuncs :: struct {
    ref: ref_func_ptr_anon_6,
    unref: unref_func_ptr_anon_7,
    get: et_func_ptr_anon_8,
}
io_read_func_ptr_anon_9 :: #type proc "c" (channel: ^IOChannel, buf: ^byte, count: size, bytes_read: ^size, err: ^^Error) -> IOStatus
io_write_func_ptr_anon_10 :: #type proc "c" (channel: ^IOChannel, buf: ^byte, count: size, bytes_written: ^size, err: ^^Error) -> IOStatus
io_seek_func_ptr_anon_11 :: #type proc "c" (channel: ^IOChannel, offset_p: int64, type: SeekType, err: ^^Error) -> IOStatus
io_close_func_ptr_anon_12 :: #type proc "c" (channel: ^IOChannel, err: ^^Error) -> IOStatus
io_create_watch_func_ptr_anon_13 :: #type proc "c" (channel: ^IOChannel, condition: IOCondition) -> ^Source
io_free_func_ptr_anon_14 :: #type proc "c" (channel: ^IOChannel)
io_set_flags_func_ptr_anon_15 :: #type proc "c" (channel: ^IOChannel, flags: IOFlags, err: ^^Error) -> IOStatus
io_get_flags_func_ptr_anon_16 :: #type proc "c" (channel: ^IOChannel) -> IOFlags
_GIOFuncs :: struct {
    io_read: io_read_func_ptr_anon_9,
    io_write: io_write_func_ptr_anon_10,
    io_seek: io_seek_func_ptr_anon_11,
    io_close: io_close_func_ptr_anon_12,
    io_create_watch: io_create_watch_func_ptr_anon_13,
    io_free: io_free_func_ptr_anon_14,
    io_set_flags: io_set_flags_func_ptr_anon_15,
    io_get_flags: io_get_flags_func_ptr_anon_16,
}
start_element_func_ptr_anon_17 :: #type proc "c" (context_p: ^MarkupParseContext, element_name: cstring, attribute_names: [^]cstring, attribute_values: [^]cstring, user_data: pointer, error: ^^Error)
end_element_func_ptr_anon_18 :: #type proc "c" (context_p: ^MarkupParseContext, element_name: cstring, user_data: pointer, error: ^^Error)
text_func_ptr_anon_19 :: #type proc "c" (context_p: ^MarkupParseContext, text: cstring, text_len: size, user_data: pointer, error: ^^Error)
passthrough_func_ptr_anon_20 :: #type proc "c" (context_p: ^MarkupParseContext, passthrough_text: cstring, text_len: size, user_data: pointer, error: ^^Error)
error_func_ptr_anon_21 :: #type proc "c" (context_p: ^MarkupParseContext, error: ^Error, user_data: pointer)
_GMarkupParser :: struct {
    start_element: start_element_func_ptr_anon_17,
    end_element: end_element_func_ptr_anon_18,
    text: text_func_ptr_anon_19,
    passthrough: passthrough_func_ptr_anon_20,
    error: error_func_ptr_anon_21,
}
s_struct_anon_22 :: struct {
    partial_magic: size,
    type: ^VariantType,
    y: [14]uintptr_,
}
u_union_anon_23 :: struct #raw_union {
    s: s_struct_anon_22,
    x: [16]uintptr_,
}
_GVariantBuilder :: struct {
    u: u_union_anon_23,
}
s_struct_anon_24 :: struct {
    asv: ^Variant,
    partial_magic: size,
    y: [14]uintptr_,
}
_GVariantDict :: struct {
    u: u_union_anon_25,
}
TestLogMsg :: struct {
    log_type: TestLogType,
    n_strings: uint_,
    strings: [^]cstring,
    n_nums: uint_,
    nums: [^][16]byte,
}
mutex_new_func_ptr_anon_26 :: #type proc "c" () -> ^Mutex
mutex_lock_func_ptr_anon_27 :: #type proc "c" (mutex: ^Mutex)
mutex_trylock_func_ptr_anon_28 :: #type proc "c" (mutex: ^Mutex) -> boolean
mutex_unlock_func_ptr_anon_29 :: #type proc "c" (mutex: ^Mutex)
mutex_free_func_ptr_anon_30 :: #type proc "c" (mutex: ^Mutex)
cond_new_func_ptr_anon_31 :: #type proc "c" () -> ^Cond
cond_signal_func_ptr_anon_32 :: #type proc "c" (cond: ^Cond)
cond_broadcast_func_ptr_anon_33 :: #type proc "c" (cond: ^Cond)
cond_wait_func_ptr_anon_34 :: #type proc "c" (cond: ^Cond, mutex: ^Mutex)
cond_timed_wait_func_ptr_anon_35 :: #type proc "c" (cond: ^Cond, mutex: ^Mutex, end_time: ^TimeVal) -> boolean
cond_free_func_ptr_anon_36 :: #type proc "c" (cond: ^Cond)
private_new_func_ptr_anon_37 :: #type proc "c" (destructor: DestroyNotify) -> ^Private
private_get_func_ptr_anon_38 :: #type proc "c" (private_key: ^Private) -> pointer
private_set_func_ptr_anon_39 :: #type proc "c" (private_key: ^Private, data: pointer)
thread_create_func_ptr_anon_40 :: #type proc "c" (func: ThreadFunc, data: pointer, stack_size: ulong, joinable: boolean, bound: boolean, priority: ThreadPriority, thread: pointer, error: ^^Error)
thread_yield_func_ptr_anon_41 :: #type proc "c" ()
thread_join_func_ptr_anon_42 :: #type proc "c" (thread: pointer)
thread_exit_func_ptr_anon_43 :: #type proc "c" ()
thread_set_priority_func_ptr_anon_44 :: #type proc "c" (thread: pointer, priority: ThreadPriority)
thread_self_func_ptr_anon_45 :: #type proc "c" (thread: pointer)
thread_equal_func_ptr_anon_46 :: #type proc "c" (thread1: pointer, thread2: pointer) -> boolean
_GThreadFunctions :: struct {
    mutex_new: mutex_new_func_ptr_anon_26,
    mutex_lock: mutex_lock_func_ptr_anon_27,
    mutex_trylock: mutex_trylock_func_ptr_anon_28,
    mutex_unlock: mutex_unlock_func_ptr_anon_29,
    mutex_free: mutex_free_func_ptr_anon_30,
    cond_new: cond_new_func_ptr_anon_31,
    cond_signal: cond_signal_func_ptr_anon_32,
    cond_broadcast: cond_broadcast_func_ptr_anon_33,
    cond_wait: cond_wait_func_ptr_anon_34,
    cond_timed_wait: cond_timed_wait_func_ptr_anon_35,
    cond_free: cond_free_func_ptr_anon_36,
    private_new: private_new_func_ptr_anon_37,
    private_get: private_get_func_ptr_anon_38,
    private_set: private_set_func_ptr_anon_39,
    thread_create: thread_create_func_ptr_anon_40,
    thread_yield: thread_yield_func_ptr_anon_41,
    thread_join: thread_join_func_ptr_anon_42,
    thread_exit: thread_exit_func_ptr_anon_43,
    thread_set_priority: thread_set_priority_func_ptr_anon_44,
    thread_self: thread_self_func_ptr_anon_45,
    thread_equal: thread_equal_func_ptr_anon_46,
}
StaticMutex :: struct {
    mutex: ^Mutex,
    unused: posix.pthread_mutex_t,
}
unused_union_anon_47 :: struct #raw_union {
    owner: posix.pthread_t,
    dummy: double,
}
_GStaticRecMutex :: struct {
    mutex: StaticMutex,
    depth: uint_,
    unused: unused_union_anon_47,
}

@(default_calling_convention = "c")
foreign glib_runic {
    @(link_name = "g_bit_lock_and_get")
    bit_lock_and_get :: proc(address: [^]int_, lock_bit: uint_, out_val: ^int_) ---

    @(link_name = "g_bit_unlock_and_set")
    bit_unlock_and_set :: proc(address: [^]int_, lock_bit: uint_, new_val: int_, preserve_mask: int_) ---

    @(link_name = "g_date_get_week_of_year")
    date_get_week_of_year :: proc(date: ^Date, first_day_of_week: DateWeekday) -> uint_ ---

    @(link_name = "g_date_get_weeks_in_year")
    date_get_weeks_in_year :: proc(year: DateYear, first_day_of_week: DateWeekday) -> uint8 ---

    @(link_name = "g_source_dup_context")
    source_dup_context :: proc(source: ^Source) -> ^MainContext ---

    @(link_name = "g_source_add_unix_fd")
    source_add_unix_fd :: proc(source: ^Source, fd: int_, events: IOCondition) -> pointer ---

    @(link_name = "g_source_modify_unix_fd")
    source_modify_unix_fd :: proc(source: ^Source, tag: pointer, new_events: IOCondition) ---

    @(link_name = "g_source_remove_unix_fd")
    source_remove_unix_fd :: proc(source: ^Source, tag: pointer) ---

    @(link_name = "g_source_query_unix_fd")
    source_query_unix_fd :: proc(source: ^Source, tag: pointer) -> IOCondition ---

    @(link_name = "g_unix_signal_funcs")
    g_unix_signal_funcs: SourceFuncs

    @(link_name = "g_unix_fd_source_funcs")
    g_unix_fd_source_funcs: SourceFuncs

    @(link_name = "g_string_copy")
    string_copy :: proc(string_p: ^String) -> ^String ---

    @(link_name = "g_log_get_always_fatal")
    log_get_always_fatal :: proc() -> LogLevelFlags ---

    @(link_name = "g_assertion_message_cmpnum")
    assertion_message_cmpnum :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: [16]byte, cmp: cstring, arg2: [16]byte, numtype: char) ---

    @(link_name = "g_strdup_inline_wrapper")
    strdup_inline :: proc(str: cstring) -> cstring ---

}

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import glib_runic { "../lib/linux/x86_64/libglib-2.0.a", "../lib/linux/x86_64/libglib-wrapper.a", "system:ffi", "system:pcre2-8" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import glib_runic { "system:glib-2.0", "../lib/linux/x86_64/libglib-wrapper.a" }
} 
}

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import glib_runic { "../lib/linux/aarch64/libglib-2.0.a", "../lib/linux/aarch64/libglib-wrapper.a", "system:ffi", "system:pcre2-8" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import glib_runic { "system:glib-2.0", "../lib/linux/aarch64/libglib-wrapper.a" }
} 
}

