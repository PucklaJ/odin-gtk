#+build linux amd64, linux arm64, windows amd64
package girepository

import glib ".."

when (ODIN_OS == .Linux) {

Argument :: struct #raw_union {
    v_boolean: glib.boolean,
    v_int8: i8,
    v_uint8: u8,
    v_int16: i16,
    v_uint16: u16,
    v_int32: i32,
    v_uint32: u32,
    v_int64: i64,
    v_uint64: u64,
    v_float: f32,
    v_double: f64,
    v_short: i16,
    v_ushort: u16,
    v_int: i32,
    v_uint: u32,
    v_long: i64,
    v_ulong: u64,
    v_ssize: glib.ssize,
    v_size: uint,
    v_string: cstring,
    v_pointer: rawptr,
}

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

Argument :: struct #raw_union {
    v_boolean: glib.boolean,
    v_int8: i8,
    v_uint8: u8,
    v_int16: i16,
    v_uint16: u16,
    v_int32: i32,
    v_uint32: u32,
    v_int64: i64,
    v_uint64: u64,
    v_float: f32,
    v_double: f64,
    v_short: i16,
    v_ushort: u16,
    v_int: i32,
    v_uint: u32,
    v_long: i32,
    v_ulong: u32,
    v_ssize: glib.ssize,
    v_size: uint,
    v_string: cstring,
    v_pointer: rawptr,
}

}

