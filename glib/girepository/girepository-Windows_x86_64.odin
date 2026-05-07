#+build windows amd64
package girepository

import glib ".."

_GIArgument :: struct #raw_union {
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
FieldInfoFlags :: enum u32 {FIELD_IS_READABLE = 1, FIELD_IS_WRITABLE = 2 }
VFuncInfoFlags :: enum u32 {VFUNC_MUST_CHAIN_UP = 1, VFUNC_MUST_OVERRIDE = 2, VFUNC_MUST_NOT_OVERRIDE = 4 }
FunctionInfoFlags :: enum u32 {FUNCTION_IS_METHOD = 1, FUNCTION_IS_CONSTRUCTOR = 2, FUNCTION_IS_GETTER = 4, FUNCTION_IS_SETTER = 8, FUNCTION_WRAPS_VFUNC = 16, FUNCTION_IS_ASYNC = 32 }

