#+build linux amd64, linux arm64
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
    v_long: i64,
    v_ulong: u64,
    v_ssize: glib.ssize,
    v_size: u64,
    v_string: cstring,
    v_pointer: rawptr,
}
Transfer :: enum u32 {NOTHING = 0, CONTAINER = 1, EVERYTHING = 2 }
Direction :: enum u32 {IN = 0, OUT = 1, INOUT = 2 }
ScopeType :: enum u32 {INVALID = 0, CALL = 1, ASYNC = 2, NOTIFIED = 3, FOREVER = 4 }
TypeTag :: enum u32 {VOID = 0, BOOLEAN = 1, INT8 = 2, UINT8 = 3, INT16 = 4, UINT16 = 5, INT32 = 6, UINT32 = 7, INT64 = 8, UINT64 = 9, FLOAT = 10, DOUBLE = 11, GTYPE = 12, UTF8 = 13, FILENAME = 14, ARRAY = 15, INTERFACE = 16, GLIST = 17, GSLIST = 18, GHASH = 19, ERROR = 20, UNICHAR = 21 }
ArrayType :: enum u32 {C = 0, ARRAY = 1, PTR_ARRAY = 2, BYTE_ARRAY = 3 }
FieldInfoFlags :: enum u32 {NONE = 0, FIELD_IS_READABLE = 1, FIELD_IS_WRITABLE = 2 }
VFuncInfoFlags :: enum u32 {VFUNC_INFO_FLAGS_NONE = 0, VFUNC_MUST_CHAIN_UP = 1, VFUNC_MUST_OVERRIDE = 2, VFUNC_MUST_NOT_OVERRIDE = 4 }
FunctionInfoFlags :: enum u32 {NONE = 0, FUNCTION_IS_METHOD = 1, FUNCTION_IS_CONSTRUCTOR = 2, FUNCTION_IS_GETTER = 4, FUNCTION_IS_SETTER = 8, FUNCTION_WRAPS_VFUNC = 16, FUNCTION_IS_ASYNC = 32 }
InvokeError :: enum u32 {FAILED = 0, SYMBOL_NOT_FOUND = 1, ARGUMENT_MISMATCH = 2 }
RepositoryLoadFlags :: enum u32 {NONE = 0, LAZY = 1 }
RepositoryError :: enum u32 {TYPELIB_NOT_FOUND = 0, NAMESPACE_MISMATCH = 1, NAMESPACE_VERSION_CONFLICT = 2, LIBRARY_NOT_FOUND = 3 }

@(default_calling_convention = "c")
foreign girepository_runic {
    @(link_name = "glib_autoptr_clear_GIRepository_wrapper")
    autoptr_clear_GIRepository :: proc(_ptr: ^Repository) ---

    @(link_name = "glib_autoptr_cleanup_GIRepository_wrapper")
    autoptr_cleanup_GIRepository :: proc(_ptr: ^^Repository) ---

    @(link_name = "glib_autoptr_destroy_GIRepository_wrapper")
    autoptr_destroy_GIRepository :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIRepository_wrapper")
    listautoptr_cleanup_GIRepository :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIRepository_wrapper")
    slistautoptr_cleanup_GIRepository :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIRepository_wrapper")
    queueautoptr_cleanup_GIRepository :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIRepositoryClass_wrapper")
    autoptr_clear_GIRepositoryClass :: proc(_ptr: ^RepositoryClass) ---

    @(link_name = "glib_autoptr_cleanup_GIRepositoryClass_wrapper")
    autoptr_cleanup_GIRepositoryClass :: proc(_ptr: ^^RepositoryClass) ---

    @(link_name = "glib_autoptr_destroy_GIRepositoryClass_wrapper")
    autoptr_destroy_GIRepositoryClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIRepositoryClass_wrapper")
    listautoptr_cleanup_GIRepositoryClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIRepositoryClass_wrapper")
    slistautoptr_cleanup_GIRepositoryClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIRepositoryClass_wrapper")
    queueautoptr_cleanup_GIRepositoryClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "GI_REPOSITORY_wrapper")
    GI_REPOSITORY :: proc(ptr: glib.pointer) -> ^Repository ---

    @(link_name = "GI_IS_REPOSITORY_wrapper")
    GI_IS_REPOSITORY :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_GITypelib_wrapper")
    autoptr_clear_GITypelib :: proc(_ptr: ^Typelib) ---

    @(link_name = "glib_autoptr_cleanup_GITypelib_wrapper")
    autoptr_cleanup_GITypelib :: proc(_ptr: ^^Typelib) ---

    @(link_name = "glib_autoptr_destroy_GITypelib_wrapper")
    autoptr_destroy_GITypelib :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GITypelib_wrapper")
    listautoptr_cleanup_GITypelib :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GITypelib_wrapper")
    slistautoptr_cleanup_GITypelib :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GITypelib_wrapper")
    queueautoptr_cleanup_GITypelib :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIBaseInfo_wrapper")
    autoptr_clear_GIBaseInfo :: proc(_ptr: ^BaseInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIBaseInfo_wrapper")
    autoptr_cleanup_GIBaseInfo :: proc(_ptr: ^^BaseInfo) ---

    @(link_name = "glib_autoptr_destroy_GIBaseInfo_wrapper")
    autoptr_destroy_GIBaseInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIBaseInfo_wrapper")
    listautoptr_cleanup_GIBaseInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIBaseInfo_wrapper")
    slistautoptr_cleanup_GIBaseInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIBaseInfo_wrapper")
    queueautoptr_cleanup_GIBaseInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIArgInfo_wrapper")
    autoptr_clear_GIArgInfo :: proc(_ptr: ^ArgInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIArgInfo_wrapper")
    autoptr_cleanup_GIArgInfo :: proc(_ptr: ^^ArgInfo) ---

    @(link_name = "glib_autoptr_destroy_GIArgInfo_wrapper")
    autoptr_destroy_GIArgInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIArgInfo_wrapper")
    listautoptr_cleanup_GIArgInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIArgInfo_wrapper")
    slistautoptr_cleanup_GIArgInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIArgInfo_wrapper")
    queueautoptr_cleanup_GIArgInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GICallableInfo_wrapper")
    autoptr_clear_GICallableInfo :: proc(_ptr: ^CallableInfo) ---

    @(link_name = "glib_autoptr_cleanup_GICallableInfo_wrapper")
    autoptr_cleanup_GICallableInfo :: proc(_ptr: ^^CallableInfo) ---

    @(link_name = "glib_autoptr_destroy_GICallableInfo_wrapper")
    autoptr_destroy_GICallableInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GICallableInfo_wrapper")
    listautoptr_cleanup_GICallableInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GICallableInfo_wrapper")
    slistautoptr_cleanup_GICallableInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GICallableInfo_wrapper")
    queueautoptr_cleanup_GICallableInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GICallbackInfo_wrapper")
    autoptr_clear_GICallbackInfo :: proc(_ptr: ^CallbackInfo) ---

    @(link_name = "glib_autoptr_cleanup_GICallbackInfo_wrapper")
    autoptr_cleanup_GICallbackInfo :: proc(_ptr: ^^CallbackInfo) ---

    @(link_name = "glib_autoptr_destroy_GICallbackInfo_wrapper")
    autoptr_destroy_GICallbackInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GICallbackInfo_wrapper")
    listautoptr_cleanup_GICallbackInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GICallbackInfo_wrapper")
    slistautoptr_cleanup_GICallbackInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GICallbackInfo_wrapper")
    queueautoptr_cleanup_GICallbackInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIConstantInfo_wrapper")
    autoptr_clear_GIConstantInfo :: proc(_ptr: ^ConstantInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIConstantInfo_wrapper")
    autoptr_cleanup_GIConstantInfo :: proc(_ptr: ^^ConstantInfo) ---

    @(link_name = "glib_autoptr_destroy_GIConstantInfo_wrapper")
    autoptr_destroy_GIConstantInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIConstantInfo_wrapper")
    listautoptr_cleanup_GIConstantInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIConstantInfo_wrapper")
    slistautoptr_cleanup_GIConstantInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIConstantInfo_wrapper")
    queueautoptr_cleanup_GIConstantInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIEnumInfo_wrapper")
    autoptr_clear_GIEnumInfo :: proc(_ptr: ^EnumInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIEnumInfo_wrapper")
    autoptr_cleanup_GIEnumInfo :: proc(_ptr: ^^EnumInfo) ---

    @(link_name = "glib_autoptr_destroy_GIEnumInfo_wrapper")
    autoptr_destroy_GIEnumInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIEnumInfo_wrapper")
    listautoptr_cleanup_GIEnumInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIEnumInfo_wrapper")
    slistautoptr_cleanup_GIEnumInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIEnumInfo_wrapper")
    queueautoptr_cleanup_GIEnumInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIFieldInfo_wrapper")
    autoptr_clear_GIFieldInfo :: proc(_ptr: ^FieldInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIFieldInfo_wrapper")
    autoptr_cleanup_GIFieldInfo :: proc(_ptr: ^^FieldInfo) ---

    @(link_name = "glib_autoptr_destroy_GIFieldInfo_wrapper")
    autoptr_destroy_GIFieldInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIFieldInfo_wrapper")
    listautoptr_cleanup_GIFieldInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIFieldInfo_wrapper")
    slistautoptr_cleanup_GIFieldInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIFieldInfo_wrapper")
    queueautoptr_cleanup_GIFieldInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIFlagsInfo_wrapper")
    autoptr_clear_GIFlagsInfo :: proc(_ptr: ^FlagsInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIFlagsInfo_wrapper")
    autoptr_cleanup_GIFlagsInfo :: proc(_ptr: ^^FlagsInfo) ---

    @(link_name = "glib_autoptr_destroy_GIFlagsInfo_wrapper")
    autoptr_destroy_GIFlagsInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIFlagsInfo_wrapper")
    listautoptr_cleanup_GIFlagsInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIFlagsInfo_wrapper")
    slistautoptr_cleanup_GIFlagsInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIFlagsInfo_wrapper")
    queueautoptr_cleanup_GIFlagsInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIFunctionInfo_wrapper")
    autoptr_clear_GIFunctionInfo :: proc(_ptr: ^FunctionInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIFunctionInfo_wrapper")
    autoptr_cleanup_GIFunctionInfo :: proc(_ptr: ^^FunctionInfo) ---

    @(link_name = "glib_autoptr_destroy_GIFunctionInfo_wrapper")
    autoptr_destroy_GIFunctionInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIFunctionInfo_wrapper")
    listautoptr_cleanup_GIFunctionInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIFunctionInfo_wrapper")
    slistautoptr_cleanup_GIFunctionInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIFunctionInfo_wrapper")
    queueautoptr_cleanup_GIFunctionInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIInterfaceInfo_wrapper")
    autoptr_clear_GIInterfaceInfo :: proc(_ptr: ^InterfaceInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIInterfaceInfo_wrapper")
    autoptr_cleanup_GIInterfaceInfo :: proc(_ptr: ^^InterfaceInfo) ---

    @(link_name = "glib_autoptr_destroy_GIInterfaceInfo_wrapper")
    autoptr_destroy_GIInterfaceInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIInterfaceInfo_wrapper")
    listautoptr_cleanup_GIInterfaceInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIInterfaceInfo_wrapper")
    slistautoptr_cleanup_GIInterfaceInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIInterfaceInfo_wrapper")
    queueautoptr_cleanup_GIInterfaceInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIObjectInfo_wrapper")
    autoptr_clear_GIObjectInfo :: proc(_ptr: ^ObjectInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIObjectInfo_wrapper")
    autoptr_cleanup_GIObjectInfo :: proc(_ptr: ^^ObjectInfo) ---

    @(link_name = "glib_autoptr_destroy_GIObjectInfo_wrapper")
    autoptr_destroy_GIObjectInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIObjectInfo_wrapper")
    listautoptr_cleanup_GIObjectInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIObjectInfo_wrapper")
    slistautoptr_cleanup_GIObjectInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIObjectInfo_wrapper")
    queueautoptr_cleanup_GIObjectInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIPropertyInfo_wrapper")
    autoptr_clear_GIPropertyInfo :: proc(_ptr: ^PropertyInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIPropertyInfo_wrapper")
    autoptr_cleanup_GIPropertyInfo :: proc(_ptr: ^^PropertyInfo) ---

    @(link_name = "glib_autoptr_destroy_GIPropertyInfo_wrapper")
    autoptr_destroy_GIPropertyInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIPropertyInfo_wrapper")
    listautoptr_cleanup_GIPropertyInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIPropertyInfo_wrapper")
    slistautoptr_cleanup_GIPropertyInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIPropertyInfo_wrapper")
    queueautoptr_cleanup_GIPropertyInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIRegisteredTypeInfo_wrapper")
    autoptr_clear_GIRegisteredTypeInfo :: proc(_ptr: ^RegisteredTypeInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIRegisteredTypeInfo_wrapper")
    autoptr_cleanup_GIRegisteredTypeInfo :: proc(_ptr: ^^RegisteredTypeInfo) ---

    @(link_name = "glib_autoptr_destroy_GIRegisteredTypeInfo_wrapper")
    autoptr_destroy_GIRegisteredTypeInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIRegisteredTypeInfo_wrapper")
    listautoptr_cleanup_GIRegisteredTypeInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIRegisteredTypeInfo_wrapper")
    slistautoptr_cleanup_GIRegisteredTypeInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIRegisteredTypeInfo_wrapper")
    queueautoptr_cleanup_GIRegisteredTypeInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GISignalInfo_wrapper")
    autoptr_clear_GISignalInfo :: proc(_ptr: ^SignalInfo) ---

    @(link_name = "glib_autoptr_cleanup_GISignalInfo_wrapper")
    autoptr_cleanup_GISignalInfo :: proc(_ptr: ^^SignalInfo) ---

    @(link_name = "glib_autoptr_destroy_GISignalInfo_wrapper")
    autoptr_destroy_GISignalInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GISignalInfo_wrapper")
    listautoptr_cleanup_GISignalInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GISignalInfo_wrapper")
    slistautoptr_cleanup_GISignalInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GISignalInfo_wrapper")
    queueautoptr_cleanup_GISignalInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIStructInfo_wrapper")
    autoptr_clear_GIStructInfo :: proc(_ptr: ^StructInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIStructInfo_wrapper")
    autoptr_cleanup_GIStructInfo :: proc(_ptr: ^^StructInfo) ---

    @(link_name = "glib_autoptr_destroy_GIStructInfo_wrapper")
    autoptr_destroy_GIStructInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIStructInfo_wrapper")
    listautoptr_cleanup_GIStructInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIStructInfo_wrapper")
    slistautoptr_cleanup_GIStructInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIStructInfo_wrapper")
    queueautoptr_cleanup_GIStructInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GITypeInfo_wrapper")
    autoptr_clear_GITypeInfo :: proc(_ptr: ^TypeInfo) ---

    @(link_name = "glib_autoptr_cleanup_GITypeInfo_wrapper")
    autoptr_cleanup_GITypeInfo :: proc(_ptr: ^^TypeInfo) ---

    @(link_name = "glib_autoptr_destroy_GITypeInfo_wrapper")
    autoptr_destroy_GITypeInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GITypeInfo_wrapper")
    listautoptr_cleanup_GITypeInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GITypeInfo_wrapper")
    slistautoptr_cleanup_GITypeInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GITypeInfo_wrapper")
    queueautoptr_cleanup_GITypeInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIUnionInfo_wrapper")
    autoptr_clear_GIUnionInfo :: proc(_ptr: ^UnionInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIUnionInfo_wrapper")
    autoptr_cleanup_GIUnionInfo :: proc(_ptr: ^^UnionInfo) ---

    @(link_name = "glib_autoptr_destroy_GIUnionInfo_wrapper")
    autoptr_destroy_GIUnionInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIUnionInfo_wrapper")
    listautoptr_cleanup_GIUnionInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIUnionInfo_wrapper")
    slistautoptr_cleanup_GIUnionInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIUnionInfo_wrapper")
    queueautoptr_cleanup_GIUnionInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIUnresolvedInfo_wrapper")
    autoptr_clear_GIUnresolvedInfo :: proc(_ptr: ^UnresolvedInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIUnresolvedInfo_wrapper")
    autoptr_cleanup_GIUnresolvedInfo :: proc(_ptr: ^^UnresolvedInfo) ---

    @(link_name = "glib_autoptr_destroy_GIUnresolvedInfo_wrapper")
    autoptr_destroy_GIUnresolvedInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIUnresolvedInfo_wrapper")
    listautoptr_cleanup_GIUnresolvedInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIUnresolvedInfo_wrapper")
    slistautoptr_cleanup_GIUnresolvedInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIUnresolvedInfo_wrapper")
    queueautoptr_cleanup_GIUnresolvedInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIValueInfo_wrapper")
    autoptr_clear_GIValueInfo :: proc(_ptr: ^ValueInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIValueInfo_wrapper")
    autoptr_cleanup_GIValueInfo :: proc(_ptr: ^^ValueInfo) ---

    @(link_name = "glib_autoptr_destroy_GIValueInfo_wrapper")
    autoptr_destroy_GIValueInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIValueInfo_wrapper")
    listautoptr_cleanup_GIValueInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIValueInfo_wrapper")
    slistautoptr_cleanup_GIValueInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIValueInfo_wrapper")
    queueautoptr_cleanup_GIValueInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIVFuncInfo_wrapper")
    autoptr_clear_GIVFuncInfo :: proc(_ptr: ^VFuncInfo) ---

    @(link_name = "glib_autoptr_cleanup_GIVFuncInfo_wrapper")
    autoptr_cleanup_GIVFuncInfo :: proc(_ptr: ^^VFuncInfo) ---

    @(link_name = "glib_autoptr_destroy_GIVFuncInfo_wrapper")
    autoptr_destroy_GIVFuncInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIVFuncInfo_wrapper")
    listautoptr_cleanup_GIVFuncInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIVFuncInfo_wrapper")
    slistautoptr_cleanup_GIVFuncInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIVFuncInfo_wrapper")
    queueautoptr_cleanup_GIVFuncInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_auto_cleanup_GIArgInfo_wrapper")
    auto_cleanup_GIArgInfo :: proc(_ptr: ^ArgInfo) ---

    @(link_name = "glib_auto_cleanup_GITypeInfo_wrapper")
    auto_cleanup_GITypeInfo :: proc(_ptr: ^TypeInfo) ---

}

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import girepository_runic { "../../lib/linux/x86_64/libgirepository-2.0.a", "../../lib/linux/x86_64/libgirepository-wrapper.a", "system:ffi", "system:pcre2-8" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import girepository_runic { "system:girepository-2.0", "../../lib/linux/x86_64/libgirepository-wrapper.a" }
} 
}

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import girepository_runic { "../../lib/linux/aarch64/libgirepository-2.0.a", "../../lib/linux/aarch64/libgirepository-wrapper.a", "system:ffi", "system:pcre2-8" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import girepository_runic { "system:girepository-2.0", "../../lib/linux/aarch64/libgirepository-wrapper.a" }
} 
}

