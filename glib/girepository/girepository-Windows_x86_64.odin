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
    v_size: u64,
    v_string: cstring,
    v_pointer: rawptr,
}
Transfer :: enum i32 {NOTHING = 0, CONTAINER = 1, EVERYTHING = 2 }
Direction :: enum i32 {IN = 0, OUT = 1, INOUT = 2 }
ScopeType :: enum i32 {INVALID = 0, CALL = 1, ASYNC = 2, NOTIFIED = 3, FOREVER = 4 }
TypeTag :: enum i32 {VOID = 0, BOOLEAN = 1, INT8 = 2, UINT8 = 3, INT16 = 4, UINT16 = 5, INT32 = 6, UINT32 = 7, INT64 = 8, UINT64 = 9, FLOAT = 10, DOUBLE = 11, GTYPE = 12, UTF8 = 13, FILENAME = 14, ARRAY = 15, INTERFACE = 16, GLIST = 17, GSLIST = 18, GHASH = 19, ERROR = 20, UNICHAR = 21 }
ArrayType :: enum i32 {C = 0, ARRAY = 1, PTR_ARRAY = 2, BYTE_ARRAY = 3 }
FieldInfoFlags :: enum i32 {FIELD_IS_READABLE = 1, FIELD_IS_WRITABLE = 2 }
VFuncInfoFlags :: enum i32 {VFUNC_MUST_CHAIN_UP = 1, VFUNC_MUST_OVERRIDE = 2, VFUNC_MUST_NOT_OVERRIDE = 4 }
FunctionInfoFlags :: enum i32 {FUNCTION_IS_METHOD = 1, FUNCTION_IS_CONSTRUCTOR = 2, FUNCTION_IS_GETTER = 4, FUNCTION_IS_SETTER = 8, FUNCTION_WRAPS_VFUNC = 16, FUNCTION_IS_ASYNC = 32 }
InvokeError :: enum i32 {FAILED = 0, SYMBOL_NOT_FOUND = 1, ARGUMENT_MISMATCH = 2 }
RepositoryLoadFlags :: enum i32 {NONE = 0, LAZY = 1 }
RepositoryError :: enum i32 {TYPELIB_NOT_FOUND = 0, NAMESPACE_MISMATCH = 1, NAMESPACE_VERSION_CONFLICT = 2, LIBRARY_NOT_FOUND = 3 }

