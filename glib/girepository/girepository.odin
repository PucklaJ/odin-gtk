#+build amd64, arm64
package girepository

import glib ".."
import gobj "../gobject"

TYPE_TAG_N_TYPES :: int(TypeTag.TYPE_TAG_UNICHAR) + 1
TYPE_ARG_INFO :: arg_info_get_type 
TYPE_TYPELIB :: typelib_get_type 
TYPE_BASE_INFO :: base_info_get_type 
TYPE_CALLABLE_INFO :: callable_info_get_type 
TYPE_CALLBACK_INFO :: callback_info_get_type 
TYPE_CONSTANT_INFO :: constant_info_get_type 
TYPE_ENUM_INFO :: enum_info_get_type 
TYPE_FIELD_INFO :: field_info_get_type 
TYPE_FLAGS_INFO :: flags_info_get_type 
TYPE_FUNCTION_INFO :: function_info_get_type 
INVOKE_ERROR :: invoke_error_quark 
TYPE_INTERFACE_INFO :: interface_info_get_type 
TYPE_OBJECT_INFO :: object_info_get_type 
TYPE_PROPERTY_INFO :: property_info_get_type 
TYPE_REGISTERED_TYPE_INFO :: registered_type_info_get_type 
TYPE_SIGNAL_INFO :: signal_info_get_type 
TYPE_STRUCT_INFO :: struct_info_get_type 
TYPE_TYPE_INFO :: type_info_get_type 
TYPE_UNION_INFO :: union_info_get_type 
TYPE_UNRESOLVED_INFO :: unresolved_info_get_type 
TYPE_VALUE_INFO :: value_info_get_type 
TYPE_VFUNC_INFO :: vfunc_info_get_type 
TYPE_REPOSITORY :: repository_get_type 
REPOSITORY_ERROR :: repository_error_quark 

_GIBaseInfo :: struct #packed {}
BaseInfo :: _GIBaseInfo
_GIBaseInfoClass :: struct #packed {}
BaseInfoClass :: _GIBaseInfoClass
BaseInfoStack :: struct {
    parent_instance: gobj.TypeInstance,
    dummy0: i32,
    dummy1: [3]rawptr,
    dummy2: [2]u32,
    dummy3: [6]rawptr,
}
_GICallableInfo :: struct #packed {}
CallableInfo :: _GICallableInfo
_GIFunctionInfo :: struct #packed {}
FunctionInfo :: _GIFunctionInfo
_GICallbackInfo :: struct #packed {}
CallbackInfo :: _GICallbackInfo
_GIRegisteredTypeInfo :: struct #packed {}
RegisteredTypeInfo :: _GIRegisteredTypeInfo
_GIStructInfo :: struct #packed {}
StructInfo :: _GIStructInfo
_GIUnionInfo :: struct #packed {}
UnionInfo :: _GIUnionInfo
_GIEnumInfo :: struct #packed {}
EnumInfo :: _GIEnumInfo
_GIFlagsInfo :: struct #packed {}
FlagsInfo :: _GIFlagsInfo
_GIObjectInfo :: struct #packed {}
ObjectInfo :: _GIObjectInfo
_GIInterfaceInfo :: struct #packed {}
InterfaceInfo :: _GIInterfaceInfo
_GIConstantInfo :: struct #packed {}
ConstantInfo :: _GIConstantInfo
_GIValueInfo :: struct #packed {}
ValueInfo :: _GIValueInfo
_GISignalInfo :: struct #packed {}
SignalInfo :: _GISignalInfo
_GIVFuncInfo :: struct #packed {}
VFuncInfo :: _GIVFuncInfo
_GIPropertyInfo :: struct #packed {}
PropertyInfo :: _GIPropertyInfo
_GIFieldInfo :: struct #packed {}
FieldInfo :: _GIFieldInfo
ArgInfo :: struct {
    parent: BaseInfoStack,
    padding: [6]rawptr,
}
TypeInfo :: struct {
    parent: BaseInfoStack,
    padding: [6]rawptr,
}
_GIUnresolvedInfo :: struct #packed {}
UnresolvedInfo :: _GIUnresolvedInfo
_GIArgument :: struct #raw_union {v_boolean: glib.boolean, v_int8: i8, v_uint8: u8, v_int16: i16, v_uint16: u16, v_int32: i32, v_uint32: u32, v_int64: i64, v_uint64: u64, v_float: f32, v_double: f64, v_short: i16, v_ushort: u16, v_int: i32, v_uint: u32, v_long: i64, v_ulong: u64, v_ssize: glib.ssize, v_size: u64, v_string: cstring, v_pointer: rawptr, }
Argument :: _GIArgument
Transfer :: enum u32 {TRANSFER_NOTHING = 0, TRANSFER_CONTAINER = 1, TRANSFER_EVERYTHING = 2, }
Direction :: enum u32 {DIRECTION_IN = 0, DIRECTION_OUT = 1, DIRECTION_INOUT = 2, }
ScopeType :: enum u32 {SCOPE_TYPE_INVALID = 0, SCOPE_TYPE_CALL = 1, SCOPE_TYPE_ASYNC = 2, SCOPE_TYPE_NOTIFIED = 3, SCOPE_TYPE_FOREVER = 4, }
TypeTag :: enum u32 {TYPE_TAG_VOID = 0, TYPE_TAG_BOOLEAN = 1, TYPE_TAG_INT8 = 2, TYPE_TAG_UINT8 = 3, TYPE_TAG_INT16 = 4, TYPE_TAG_UINT16 = 5, TYPE_TAG_INT32 = 6, TYPE_TAG_UINT32 = 7, TYPE_TAG_INT64 = 8, TYPE_TAG_UINT64 = 9, TYPE_TAG_FLOAT = 10, TYPE_TAG_DOUBLE = 11, TYPE_TAG_GTYPE = 12, TYPE_TAG_UTF8 = 13, TYPE_TAG_FILENAME = 14, TYPE_TAG_ARRAY = 15, TYPE_TAG_INTERFACE = 16, TYPE_TAG_GLIST = 17, TYPE_TAG_GSLIST = 18, TYPE_TAG_GHASH = 19, TYPE_TAG_ERROR = 20, TYPE_TAG_UNICHAR = 21, }
ArrayType :: enum u32 {ARRAY_TYPE_C = 0, ARRAY_TYPE_ARRAY = 1, ARRAY_TYPE_PTR_ARRAY = 2, ARRAY_TYPE_BYTE_ARRAY = 3, }
FieldInfoFlags :: enum u32 {FIELD_IS_READABLE = 1, FIELD_IS_WRITABLE = 2, }
VFuncInfoFlags :: enum u32 {VFUNC_MUST_CHAIN_UP = 1, VFUNC_MUST_OVERRIDE = 2, VFUNC_MUST_NOT_OVERRIDE = 4, }
FunctionInfoFlags :: enum u32 {FUNCTION_IS_METHOD = 1, FUNCTION_IS_CONSTRUCTOR = 2, FUNCTION_IS_GETTER = 4, FUNCTION_IS_SETTER = 8, FUNCTION_WRAPS_VFUNC = 16, FUNCTION_IS_ASYNC = 32, }
_GITypelib :: struct #packed {}
Typelib :: _GITypelib
AttributeIter :: struct {
    data: rawptr,
    _dummy: [4]rawptr,
}
InvokeError :: enum u32 {INVOKE_ERROR_FAILED = 0, INVOKE_ERROR_SYMBOL_NOT_FOUND = 1, INVOKE_ERROR_ARGUMENT_MISMATCH = 2, }
ObjectInfoRefFunction :: #type proc "c" (object: rawptr) -> rawptr
ObjectInfoUnrefFunction :: #type proc "c" (object: rawptr)
ObjectInfoSetValueFunction :: #type proc "c" (value: ^gobj.Value, object: rawptr)
ObjectInfoGetValueFunction :: #type proc "c" (value: ^gobj.Value) -> rawptr
_GIRepository :: struct #packed {}
Repository :: _GIRepository
RepositoryClass :: struct {
    parent_class: gobj.ObjectClass,
}
Repository_autoptr :: ^Repository
Repository_listautoptr :: ^glib.List
Repository_slistautoptr :: ^glib.SList
Repository_queueautoptr :: ^glib.Queue
RepositoryClass_autoptr :: ^RepositoryClass
RepositoryClass_listautoptr :: ^glib.List
RepositoryClass_slistautoptr :: ^glib.SList
RepositoryClass_queueautoptr :: ^glib.Queue
RepositoryLoadFlags :: enum u32 {REPOSITORY_LOAD_FLAG_NONE = 0, REPOSITORY_LOAD_FLAG_LAZY = 1, }
RepositoryError :: enum u32 {REPOSITORY_ERROR_TYPELIB_NOT_FOUND = 0, REPOSITORY_ERROR_NAMESPACE_MISMATCH = 1, REPOSITORY_ERROR_NAMESPACE_VERSION_CONFLICT = 2, REPOSITORY_ERROR_LIBRARY_NOT_FOUND = 3, }
Typelib_autoptr :: ^Typelib
Typelib_listautoptr :: ^glib.List
Typelib_slistautoptr :: ^glib.SList
Typelib_queueautoptr :: ^glib.Queue
BaseInfo_autoptr :: ^BaseInfo
BaseInfo_listautoptr :: ^glib.List
BaseInfo_slistautoptr :: ^glib.SList
BaseInfo_queueautoptr :: ^glib.Queue
ArgInfo_autoptr :: ^ArgInfo
ArgInfo_listautoptr :: ^glib.List
ArgInfo_slistautoptr :: ^glib.SList
ArgInfo_queueautoptr :: ^glib.Queue
CallableInfo_autoptr :: ^CallableInfo
CallableInfo_listautoptr :: ^glib.List
CallableInfo_slistautoptr :: ^glib.SList
CallableInfo_queueautoptr :: ^glib.Queue
CallbackInfo_autoptr :: ^CallbackInfo
CallbackInfo_listautoptr :: ^glib.List
CallbackInfo_slistautoptr :: ^glib.SList
CallbackInfo_queueautoptr :: ^glib.Queue
ConstantInfo_autoptr :: ^ConstantInfo
ConstantInfo_listautoptr :: ^glib.List
ConstantInfo_slistautoptr :: ^glib.SList
ConstantInfo_queueautoptr :: ^glib.Queue
EnumInfo_autoptr :: ^EnumInfo
EnumInfo_listautoptr :: ^glib.List
EnumInfo_slistautoptr :: ^glib.SList
EnumInfo_queueautoptr :: ^glib.Queue
FieldInfo_autoptr :: ^FieldInfo
FieldInfo_listautoptr :: ^glib.List
FieldInfo_slistautoptr :: ^glib.SList
FieldInfo_queueautoptr :: ^glib.Queue
FlagsInfo_autoptr :: ^FlagsInfo
FlagsInfo_listautoptr :: ^glib.List
FlagsInfo_slistautoptr :: ^glib.SList
FlagsInfo_queueautoptr :: ^glib.Queue
FunctionInfo_autoptr :: ^FunctionInfo
FunctionInfo_listautoptr :: ^glib.List
FunctionInfo_slistautoptr :: ^glib.SList
FunctionInfo_queueautoptr :: ^glib.Queue
InterfaceInfo_autoptr :: ^InterfaceInfo
InterfaceInfo_listautoptr :: ^glib.List
InterfaceInfo_slistautoptr :: ^glib.SList
InterfaceInfo_queueautoptr :: ^glib.Queue
ObjectInfo_autoptr :: ^ObjectInfo
ObjectInfo_listautoptr :: ^glib.List
ObjectInfo_slistautoptr :: ^glib.SList
ObjectInfo_queueautoptr :: ^glib.Queue
PropertyInfo_autoptr :: ^PropertyInfo
PropertyInfo_listautoptr :: ^glib.List
PropertyInfo_slistautoptr :: ^glib.SList
PropertyInfo_queueautoptr :: ^glib.Queue
RegisteredTypeInfo_autoptr :: ^RegisteredTypeInfo
RegisteredTypeInfo_listautoptr :: ^glib.List
RegisteredTypeInfo_slistautoptr :: ^glib.SList
RegisteredTypeInfo_queueautoptr :: ^glib.Queue
SignalInfo_autoptr :: ^SignalInfo
SignalInfo_listautoptr :: ^glib.List
SignalInfo_slistautoptr :: ^glib.SList
SignalInfo_queueautoptr :: ^glib.Queue
StructInfo_autoptr :: ^StructInfo
StructInfo_listautoptr :: ^glib.List
StructInfo_slistautoptr :: ^glib.SList
StructInfo_queueautoptr :: ^glib.Queue
TypeInfo_autoptr :: ^TypeInfo
TypeInfo_listautoptr :: ^glib.List
TypeInfo_slistautoptr :: ^glib.SList
TypeInfo_queueautoptr :: ^glib.Queue
UnionInfo_autoptr :: ^UnionInfo
UnionInfo_listautoptr :: ^glib.List
UnionInfo_slistautoptr :: ^glib.SList
UnionInfo_queueautoptr :: ^glib.Queue
UnresolvedInfo_autoptr :: ^UnresolvedInfo
UnresolvedInfo_listautoptr :: ^glib.List
UnresolvedInfo_slistautoptr :: ^glib.SList
UnresolvedInfo_queueautoptr :: ^glib.Queue
ValueInfo_autoptr :: ^ValueInfo
ValueInfo_listautoptr :: ^glib.List
ValueInfo_slistautoptr :: ^glib.SList
ValueInfo_queueautoptr :: ^glib.Queue
VFuncInfo_autoptr :: ^VFuncInfo
VFuncInfo_listautoptr :: ^glib.List
VFuncInfo_slistautoptr :: ^glib.SList
VFuncInfo_queueautoptr :: ^glib.Queue

@(default_calling_convention = "c")
foreign girepository_runic {
    @(link_name = "gi_callable_info_get_type")
    callable_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_function_info_get_type")
    function_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_callback_info_get_type")
    callback_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_registered_type_info_get_type")
    registered_type_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_struct_info_get_type")
    struct_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_union_info_get_type")
    union_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_enum_info_get_type")
    enum_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_flags_info_get_type")
    flags_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_object_info_get_type")
    object_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_interface_info_get_type")
    interface_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_constant_info_get_type")
    constant_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_value_info_get_type")
    value_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_signal_info_get_type")
    signal_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_vfunc_info_get_type")
    vfunc_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_property_info_get_type")
    property_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_field_info_get_type")
    field_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_arg_info_get_type")
    arg_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_type_info_get_type")
    type_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_unresolved_info_get_type")
    unresolved_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_arg_info_get_direction")
    arg_info_get_direction :: proc(info: ^ArgInfo) -> Direction ---

    @(link_name = "gi_arg_info_is_return_value")
    arg_info_is_return_value :: proc(info: ^ArgInfo) -> glib.boolean ---

    @(link_name = "gi_arg_info_is_optional")
    arg_info_is_optional :: proc(info: ^ArgInfo) -> glib.boolean ---

    @(link_name = "gi_arg_info_is_caller_allocates")
    arg_info_is_caller_allocates :: proc(info: ^ArgInfo) -> glib.boolean ---

    @(link_name = "gi_arg_info_may_be_null")
    arg_info_may_be_null :: proc(info: ^ArgInfo) -> glib.boolean ---

    @(link_name = "gi_arg_info_is_skip")
    arg_info_is_skip :: proc(info: ^ArgInfo) -> glib.boolean ---

    @(link_name = "gi_arg_info_get_ownership_transfer")
    arg_info_get_ownership_transfer :: proc(info: ^ArgInfo) -> Transfer ---

    @(link_name = "gi_arg_info_get_scope")
    arg_info_get_scope :: proc(info: ^ArgInfo) -> ScopeType ---

    @(link_name = "gi_arg_info_get_closure_index")
    arg_info_get_closure_index :: proc(info: ^ArgInfo, out_closure_index: ^u32) -> glib.boolean ---

    @(link_name = "gi_arg_info_get_destroy_index")
    arg_info_get_destroy_index :: proc(info: ^ArgInfo, out_destroy_index: ^u32) -> glib.boolean ---

    @(link_name = "gi_arg_info_get_type_info")
    arg_info_get_type_info :: proc(info: ^ArgInfo) -> ^TypeInfo ---

    @(link_name = "gi_arg_info_load_type_info")
    arg_info_load_type_info :: proc(info: ^ArgInfo, type: ^TypeInfo) ---

    @(link_name = "gi_typelib_get_type")
    typelib_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_typelib_new_from_bytes")
    typelib_new_from_bytes :: proc(bytes: [^]glib.Bytes, error: ^^glib.Error) -> ^Typelib ---

    @(link_name = "gi_typelib_ref")
    typelib_ref :: proc(typelib: ^Typelib) -> ^Typelib ---

    @(link_name = "gi_typelib_unref")
    typelib_unref :: proc(typelib: ^Typelib) ---

    @(link_name = "gi_typelib_symbol")
    typelib_symbol :: proc(typelib: ^Typelib, symbol_name: cstring, symbol: ^rawptr) -> glib.boolean ---

    @(link_name = "gi_typelib_get_namespace")
    typelib_get_namespace :: proc(typelib: ^Typelib) -> cstring ---

    @(link_name = "gi_base_info_get_type")
    base_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_base_info_ref")
    base_info_ref :: proc(info: rawptr) -> ^BaseInfo ---

    @(link_name = "gi_base_info_unref")
    base_info_unref :: proc(info: rawptr) ---

    @(link_name = "gi_base_info_clear")
    base_info_clear :: proc(info: rawptr) ---

    @(link_name = "gi_base_info_get_name")
    base_info_get_name :: proc(info: ^BaseInfo) -> cstring ---

    @(link_name = "gi_base_info_get_namespace")
    base_info_get_namespace :: proc(info: ^BaseInfo) -> cstring ---

    @(link_name = "gi_base_info_is_deprecated")
    base_info_is_deprecated :: proc(info: ^BaseInfo) -> glib.boolean ---

    @(link_name = "gi_base_info_get_attribute")
    base_info_get_attribute :: proc(info: ^BaseInfo, name: cstring) -> cstring ---

    @(link_name = "gi_base_info_iterate_attributes")
    base_info_iterate_attributes :: proc(info: ^BaseInfo, iterator: ^AttributeIter, name: ^cstring, value: ^cstring) -> glib.boolean ---

    @(link_name = "gi_base_info_get_container")
    base_info_get_container :: proc(info: ^BaseInfo) -> ^BaseInfo ---

    @(link_name = "gi_base_info_get_typelib")
    base_info_get_typelib :: proc(info: ^BaseInfo) -> ^Typelib ---

    @(link_name = "gi_base_info_equal")
    base_info_equal :: proc(info1: ^BaseInfo, info2: ^BaseInfo) -> glib.boolean ---

    @(link_name = "gi_callable_info_is_method")
    callable_info_is_method :: proc(info: ^CallableInfo) -> glib.boolean ---

    @(link_name = "gi_callable_info_can_throw_gerror")
    callable_info_can_throw_gerror :: proc(info: ^CallableInfo) -> glib.boolean ---

    @(link_name = "gi_callable_info_get_return_type")
    callable_info_get_return_type :: proc(info: ^CallableInfo) -> ^TypeInfo ---

    @(link_name = "gi_callable_info_load_return_type")
    callable_info_load_return_type :: proc(info: ^CallableInfo, type: ^TypeInfo) ---

    @(link_name = "gi_callable_info_get_return_attribute")
    callable_info_get_return_attribute :: proc(info: ^CallableInfo, name: cstring) -> cstring ---

    @(link_name = "gi_callable_info_iterate_return_attributes")
    callable_info_iterate_return_attributes :: proc(info: ^CallableInfo, iterator: ^AttributeIter, name: ^cstring, value: ^cstring) -> glib.boolean ---

    @(link_name = "gi_callable_info_get_caller_owns")
    callable_info_get_caller_owns :: proc(info: ^CallableInfo) -> Transfer ---

    @(link_name = "gi_callable_info_may_return_null")
    callable_info_may_return_null :: proc(info: ^CallableInfo) -> glib.boolean ---

    @(link_name = "gi_callable_info_skip_return")
    callable_info_skip_return :: proc(info: ^CallableInfo) -> glib.boolean ---

    @(link_name = "gi_callable_info_get_n_args")
    callable_info_get_n_args :: proc(info: ^CallableInfo) -> u32 ---

    @(link_name = "gi_callable_info_get_arg")
    callable_info_get_arg :: proc(info: ^CallableInfo, n: u32) -> ^ArgInfo ---

    @(link_name = "gi_callable_info_load_arg")
    callable_info_load_arg :: proc(info: ^CallableInfo, n: u32, arg: ^ArgInfo) ---

    @(link_name = "gi_callable_info_invoke")
    callable_info_invoke :: proc(info: ^CallableInfo, function: rawptr, in_args: [^]Argument, n_in_args: u64, out_args: [^]Argument, n_out_args: u64, return_value: ^Argument, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gi_callable_info_get_instance_ownership_transfer")
    callable_info_get_instance_ownership_transfer :: proc(info: ^CallableInfo) -> Transfer ---

    @(link_name = "gi_callable_info_get_async_function")
    callable_info_get_async_function :: proc(info: ^CallableInfo) -> ^CallableInfo ---

    @(link_name = "gi_callable_info_get_sync_function")
    callable_info_get_sync_function :: proc(info: ^CallableInfo) -> ^CallableInfo ---

    @(link_name = "gi_callable_info_get_finish_function")
    callable_info_get_finish_function :: proc(info: ^CallableInfo) -> ^CallableInfo ---

    @(link_name = "gi_callable_info_is_async")
    callable_info_is_async :: proc(info: ^CallableInfo) -> glib.boolean ---

    @(link_name = "gi_constant_info_get_type_info")
    constant_info_get_type_info :: proc(info: ^ConstantInfo) -> ^TypeInfo ---

    @(link_name = "gi_constant_info_free_value")
    constant_info_free_value :: proc(info: ^ConstantInfo, value: ^Argument) ---

    @(link_name = "gi_constant_info_get_value")
    constant_info_get_value :: proc(info: ^ConstantInfo, value: ^Argument) -> u64 ---

    @(link_name = "gi_enum_info_get_n_values")
    enum_info_get_n_values :: proc(info: ^EnumInfo) -> u32 ---

    @(link_name = "gi_enum_info_get_value")
    enum_info_get_value :: proc(info: ^EnumInfo, n: u32) -> ^ValueInfo ---

    @(link_name = "gi_enum_info_get_n_methods")
    enum_info_get_n_methods :: proc(info: ^EnumInfo) -> u32 ---

    @(link_name = "gi_enum_info_get_method")
    enum_info_get_method :: proc(info: ^EnumInfo, n: u32) -> ^FunctionInfo ---

    @(link_name = "gi_enum_info_get_storage_type")
    enum_info_get_storage_type :: proc(info: ^EnumInfo) -> TypeTag ---

    @(link_name = "gi_enum_info_get_error_domain")
    enum_info_get_error_domain :: proc(info: ^EnumInfo) -> cstring ---

    @(link_name = "gi_field_info_get_flags")
    field_info_get_flags :: proc(info: ^FieldInfo) -> FieldInfoFlags ---

    @(link_name = "gi_field_info_get_size")
    field_info_get_size :: proc(info: ^FieldInfo) -> u64 ---

    @(link_name = "gi_field_info_get_offset")
    field_info_get_offset :: proc(info: ^FieldInfo) -> u64 ---

    @(link_name = "gi_field_info_get_type_info")
    field_info_get_type_info :: proc(info: ^FieldInfo) -> ^TypeInfo ---

    @(link_name = "gi_field_info_get_field")
    field_info_get_field :: proc(field_info: ^FieldInfo, mem: rawptr, value: ^Argument) -> glib.boolean ---

    @(link_name = "gi_field_info_set_field")
    field_info_set_field :: proc(field_info: ^FieldInfo, mem: rawptr, value: ^Argument) -> glib.boolean ---

    @(link_name = "gi_function_info_get_symbol")
    function_info_get_symbol :: proc(info: ^FunctionInfo) -> cstring ---

    @(link_name = "gi_function_info_get_flags")
    function_info_get_flags :: proc(info: ^FunctionInfo) -> FunctionInfoFlags ---

    @(link_name = "gi_function_info_get_property")
    function_info_get_property :: proc(info: ^FunctionInfo) -> ^PropertyInfo ---

    @(link_name = "gi_function_info_get_vfunc")
    function_info_get_vfunc :: proc(info: ^FunctionInfo) -> ^VFuncInfo ---

    @(link_name = "gi_invoke_error_quark")
    invoke_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gi_function_info_invoke")
    function_info_invoke :: proc(info: ^FunctionInfo, in_args: [^]Argument, n_in_args: u64, out_args: [^]Argument, n_out_args: u64, return_value: ^Argument, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gi_interface_info_get_n_prerequisites")
    interface_info_get_n_prerequisites :: proc(info: ^InterfaceInfo) -> u32 ---

    @(link_name = "gi_interface_info_get_prerequisite")
    interface_info_get_prerequisite :: proc(info: ^InterfaceInfo, n: u32) -> ^BaseInfo ---

    @(link_name = "gi_interface_info_get_n_properties")
    interface_info_get_n_properties :: proc(info: ^InterfaceInfo) -> u32 ---

    @(link_name = "gi_interface_info_get_property")
    interface_info_get_property :: proc(info: ^InterfaceInfo, n: u32) -> ^PropertyInfo ---

    @(link_name = "gi_interface_info_get_n_methods")
    interface_info_get_n_methods :: proc(info: ^InterfaceInfo) -> u32 ---

    @(link_name = "gi_interface_info_get_method")
    interface_info_get_method :: proc(info: ^InterfaceInfo, n: u32) -> ^FunctionInfo ---

    @(link_name = "gi_interface_info_find_method")
    interface_info_find_method :: proc(info: ^InterfaceInfo, name: cstring) -> ^FunctionInfo ---

    @(link_name = "gi_interface_info_get_n_signals")
    interface_info_get_n_signals :: proc(info: ^InterfaceInfo) -> u32 ---

    @(link_name = "gi_interface_info_get_signal")
    interface_info_get_signal :: proc(info: ^InterfaceInfo, n: u32) -> ^SignalInfo ---

    @(link_name = "gi_interface_info_find_signal")
    interface_info_find_signal :: proc(info: ^InterfaceInfo, name: cstring) -> ^SignalInfo ---

    @(link_name = "gi_interface_info_get_n_vfuncs")
    interface_info_get_n_vfuncs :: proc(info: ^InterfaceInfo) -> u32 ---

    @(link_name = "gi_interface_info_get_vfunc")
    interface_info_get_vfunc :: proc(info: ^InterfaceInfo, n: u32) -> ^VFuncInfo ---

    @(link_name = "gi_interface_info_find_vfunc")
    interface_info_find_vfunc :: proc(info: ^InterfaceInfo, name: cstring) -> ^VFuncInfo ---

    @(link_name = "gi_interface_info_get_n_constants")
    interface_info_get_n_constants :: proc(info: ^InterfaceInfo) -> u32 ---

    @(link_name = "gi_interface_info_get_constant")
    interface_info_get_constant :: proc(info: ^InterfaceInfo, n: u32) -> ^ConstantInfo ---

    @(link_name = "gi_interface_info_get_iface_struct")
    interface_info_get_iface_struct :: proc(info: ^InterfaceInfo) -> ^StructInfo ---

    @(link_name = "gi_object_info_get_type_name")
    object_info_get_type_name :: proc(info: ^ObjectInfo) -> cstring ---

    @(link_name = "gi_object_info_get_type_init_function_name")
    object_info_get_type_init_function_name :: proc(info: ^ObjectInfo) -> cstring ---

    @(link_name = "gi_object_info_get_abstract")
    object_info_get_abstract :: proc(info: ^ObjectInfo) -> glib.boolean ---

    @(link_name = "gi_object_info_get_final")
    object_info_get_final :: proc(info: ^ObjectInfo) -> glib.boolean ---

    @(link_name = "gi_object_info_get_fundamental")
    object_info_get_fundamental :: proc(info: ^ObjectInfo) -> glib.boolean ---

    @(link_name = "gi_object_info_get_parent")
    object_info_get_parent :: proc(info: ^ObjectInfo) -> ^ObjectInfo ---

    @(link_name = "gi_object_info_get_n_interfaces")
    object_info_get_n_interfaces :: proc(info: ^ObjectInfo) -> u32 ---

    @(link_name = "gi_object_info_get_interface")
    object_info_get_interface :: proc(info: ^ObjectInfo, n: u32) -> ^InterfaceInfo ---

    @(link_name = "gi_object_info_get_n_fields")
    object_info_get_n_fields :: proc(info: ^ObjectInfo) -> u32 ---

    @(link_name = "gi_object_info_get_field")
    object_info_get_field :: proc(info: ^ObjectInfo, n: u32) -> ^FieldInfo ---

    @(link_name = "gi_object_info_get_n_properties")
    object_info_get_n_properties :: proc(info: ^ObjectInfo) -> u32 ---

    @(link_name = "gi_object_info_get_property")
    object_info_get_property :: proc(info: ^ObjectInfo, n: u32) -> ^PropertyInfo ---

    @(link_name = "gi_object_info_get_n_methods")
    object_info_get_n_methods :: proc(info: ^ObjectInfo) -> u32 ---

    @(link_name = "gi_object_info_get_method")
    object_info_get_method :: proc(info: ^ObjectInfo, n: u32) -> ^FunctionInfo ---

    @(link_name = "gi_object_info_find_method")
    object_info_find_method :: proc(info: ^ObjectInfo, name: cstring) -> ^FunctionInfo ---

    @(link_name = "gi_object_info_find_method_using_interfaces")
    object_info_find_method_using_interfaces :: proc(info: ^ObjectInfo, name: cstring, declarer: ^^BaseInfo) -> ^FunctionInfo ---

    @(link_name = "gi_object_info_get_n_signals")
    object_info_get_n_signals :: proc(info: ^ObjectInfo) -> u32 ---

    @(link_name = "gi_object_info_get_signal")
    object_info_get_signal :: proc(info: ^ObjectInfo, n: u32) -> ^SignalInfo ---

    @(link_name = "gi_object_info_find_signal")
    object_info_find_signal :: proc(info: ^ObjectInfo, name: cstring) -> ^SignalInfo ---

    @(link_name = "gi_object_info_get_n_vfuncs")
    object_info_get_n_vfuncs :: proc(info: ^ObjectInfo) -> u32 ---

    @(link_name = "gi_object_info_get_vfunc")
    object_info_get_vfunc :: proc(info: ^ObjectInfo, n: u32) -> ^VFuncInfo ---

    @(link_name = "gi_object_info_find_vfunc")
    object_info_find_vfunc :: proc(info: ^ObjectInfo, name: cstring) -> ^VFuncInfo ---

    @(link_name = "gi_object_info_find_vfunc_using_interfaces")
    object_info_find_vfunc_using_interfaces :: proc(info: ^ObjectInfo, name: cstring, declarer: ^^BaseInfo) -> ^VFuncInfo ---

    @(link_name = "gi_object_info_get_n_constants")
    object_info_get_n_constants :: proc(info: ^ObjectInfo) -> u32 ---

    @(link_name = "gi_object_info_get_constant")
    object_info_get_constant :: proc(info: ^ObjectInfo, n: u32) -> ^ConstantInfo ---

    @(link_name = "gi_object_info_get_class_struct")
    object_info_get_class_struct :: proc(info: ^ObjectInfo) -> ^StructInfo ---

    @(link_name = "gi_object_info_get_ref_function_name")
    object_info_get_ref_function_name :: proc(info: ^ObjectInfo) -> cstring ---

    @(link_name = "gi_object_info_get_ref_function_pointer")
    object_info_get_ref_function_pointer :: proc(info: ^ObjectInfo) -> ObjectInfoRefFunction ---

    @(link_name = "gi_object_info_get_unref_function_name")
    object_info_get_unref_function_name :: proc(info: ^ObjectInfo) -> cstring ---

    @(link_name = "gi_object_info_get_unref_function_pointer")
    object_info_get_unref_function_pointer :: proc(info: ^ObjectInfo) -> ObjectInfoUnrefFunction ---

    @(link_name = "gi_object_info_get_set_value_function_name")
    object_info_get_set_value_function_name :: proc(info: ^ObjectInfo) -> cstring ---

    @(link_name = "gi_object_info_get_set_value_function_pointer")
    object_info_get_set_value_function_pointer :: proc(info: ^ObjectInfo) -> ObjectInfoSetValueFunction ---

    @(link_name = "gi_object_info_get_get_value_function_name")
    object_info_get_get_value_function_name :: proc(info: ^ObjectInfo) -> cstring ---

    @(link_name = "gi_object_info_get_get_value_function_pointer")
    object_info_get_get_value_function_pointer :: proc(info: ^ObjectInfo) -> ObjectInfoGetValueFunction ---

    @(link_name = "gi_property_info_get_flags")
    property_info_get_flags :: proc(info: ^PropertyInfo) -> gobj.ParamFlags ---

    @(link_name = "gi_property_info_get_type_info")
    property_info_get_type_info :: proc(info: ^PropertyInfo) -> ^TypeInfo ---

    @(link_name = "gi_property_info_get_ownership_transfer")
    property_info_get_ownership_transfer :: proc(info: ^PropertyInfo) -> Transfer ---

    @(link_name = "gi_property_info_get_setter")
    property_info_get_setter :: proc(info: ^PropertyInfo) -> ^FunctionInfo ---

    @(link_name = "gi_property_info_get_getter")
    property_info_get_getter :: proc(info: ^PropertyInfo) -> ^FunctionInfo ---

    @(link_name = "gi_registered_type_info_get_type_name")
    registered_type_info_get_type_name :: proc(info: ^RegisteredTypeInfo) -> cstring ---

    @(link_name = "gi_registered_type_info_get_type_init_function_name")
    registered_type_info_get_type_init_function_name :: proc(info: ^RegisteredTypeInfo) -> cstring ---

    @(link_name = "gi_registered_type_info_get_g_type")
    registered_type_info_get_g_type :: proc(info: ^RegisteredTypeInfo) -> gobj.Type ---

    @(link_name = "gi_registered_type_info_is_boxed")
    registered_type_info_is_boxed :: proc(info: ^RegisteredTypeInfo) -> glib.boolean ---

    @(link_name = "gi_signal_info_get_flags")
    signal_info_get_flags :: proc(info: ^SignalInfo) -> gobj.SignalFlags ---

    @(link_name = "gi_signal_info_get_class_closure")
    signal_info_get_class_closure :: proc(info: ^SignalInfo) -> ^VFuncInfo ---

    @(link_name = "gi_signal_info_true_stops_emit")
    signal_info_true_stops_emit :: proc(info: ^SignalInfo) -> glib.boolean ---

    @(link_name = "gi_struct_info_get_n_fields")
    struct_info_get_n_fields :: proc(info: ^StructInfo) -> u32 ---

    @(link_name = "gi_struct_info_get_field")
    struct_info_get_field :: proc(info: ^StructInfo, n: u32) -> ^FieldInfo ---

    @(link_name = "gi_struct_info_find_field")
    struct_info_find_field :: proc(info: ^StructInfo, name: cstring) -> ^FieldInfo ---

    @(link_name = "gi_struct_info_get_n_methods")
    struct_info_get_n_methods :: proc(info: ^StructInfo) -> u32 ---

    @(link_name = "gi_struct_info_get_method")
    struct_info_get_method :: proc(info: ^StructInfo, n: u32) -> ^FunctionInfo ---

    @(link_name = "gi_struct_info_find_method")
    struct_info_find_method :: proc(info: ^StructInfo, name: cstring) -> ^FunctionInfo ---

    @(link_name = "gi_struct_info_get_size")
    struct_info_get_size :: proc(info: ^StructInfo) -> u64 ---

    @(link_name = "gi_struct_info_get_alignment")
    struct_info_get_alignment :: proc(info: ^StructInfo) -> u64 ---

    @(link_name = "gi_struct_info_is_gtype_struct")
    struct_info_is_gtype_struct :: proc(info: ^StructInfo) -> glib.boolean ---

    @(link_name = "gi_struct_info_is_foreign")
    struct_info_is_foreign :: proc(info: ^StructInfo) -> glib.boolean ---

    @(link_name = "gi_struct_info_get_copy_function_name")
    struct_info_get_copy_function_name :: proc(info: ^StructInfo) -> cstring ---

    @(link_name = "gi_struct_info_get_free_function_name")
    struct_info_get_free_function_name :: proc(info: ^StructInfo) -> cstring ---

    @(link_name = "gi_type_tag_to_string")
    type_tag_to_string :: proc(type: TypeTag) -> cstring ---

    @(link_name = "gi_type_info_is_pointer")
    type_info_is_pointer :: proc(info: ^TypeInfo) -> glib.boolean ---

    @(link_name = "gi_type_info_get_tag")
    type_info_get_tag :: proc(info: ^TypeInfo) -> TypeTag ---

    @(link_name = "gi_type_info_get_param_type")
    type_info_get_param_type :: proc(info: ^TypeInfo, n: u32) -> ^TypeInfo ---

    @(link_name = "gi_type_info_get_interface")
    type_info_get_interface :: proc(info: ^TypeInfo) -> ^BaseInfo ---

    @(link_name = "gi_type_info_get_array_length_index")
    type_info_get_array_length_index :: proc(info: ^TypeInfo, out_length_index: ^u32) -> glib.boolean ---

    @(link_name = "gi_type_info_get_array_fixed_size")
    type_info_get_array_fixed_size :: proc(info: ^TypeInfo, out_size: ^u64) -> glib.boolean ---

    @(link_name = "gi_type_info_is_zero_terminated")
    type_info_is_zero_terminated :: proc(info: ^TypeInfo) -> glib.boolean ---

    @(link_name = "gi_type_info_get_array_type")
    type_info_get_array_type :: proc(info: ^TypeInfo) -> ArrayType ---

    @(link_name = "gi_type_info_get_storage_type")
    type_info_get_storage_type :: proc(info: ^TypeInfo) -> TypeTag ---

    @(link_name = "gi_type_info_argument_from_hash_pointer")
    type_info_argument_from_hash_pointer :: proc(info: ^TypeInfo, hash_pointer: rawptr, arg: ^Argument) ---

    @(link_name = "gi_type_info_hash_pointer_from_argument")
    type_info_hash_pointer_from_argument :: proc(info: ^TypeInfo, arg: ^Argument) -> rawptr ---

    @(link_name = "gi_type_tag_argument_from_hash_pointer")
    type_tag_argument_from_hash_pointer :: proc(storage_type: TypeTag, hash_pointer: rawptr, arg: ^Argument) ---

    @(link_name = "gi_type_tag_hash_pointer_from_argument")
    type_tag_hash_pointer_from_argument :: proc(storage_type: TypeTag, arg: ^Argument) -> rawptr ---

    @(link_name = "gi_union_info_get_n_fields")
    union_info_get_n_fields :: proc(info: ^UnionInfo) -> u32 ---

    @(link_name = "gi_union_info_get_field")
    union_info_get_field :: proc(info: ^UnionInfo, n: u32) -> ^FieldInfo ---

    @(link_name = "gi_union_info_get_n_methods")
    union_info_get_n_methods :: proc(info: ^UnionInfo) -> u32 ---

    @(link_name = "gi_union_info_get_method")
    union_info_get_method :: proc(info: ^UnionInfo, n: u32) -> ^FunctionInfo ---

    @(link_name = "gi_union_info_is_discriminated")
    union_info_is_discriminated :: proc(info: ^UnionInfo) -> glib.boolean ---

    @(link_name = "gi_union_info_get_discriminator_offset")
    union_info_get_discriminator_offset :: proc(info: ^UnionInfo, out_offset: ^u64) -> glib.boolean ---

    @(link_name = "gi_union_info_get_discriminator_type")
    union_info_get_discriminator_type :: proc(info: ^UnionInfo) -> ^TypeInfo ---

    @(link_name = "gi_union_info_get_discriminator")
    union_info_get_discriminator :: proc(info: ^UnionInfo, n: u64) -> ^ConstantInfo ---

    @(link_name = "gi_union_info_find_method")
    union_info_find_method :: proc(info: ^UnionInfo, name: cstring) -> ^FunctionInfo ---

    @(link_name = "gi_union_info_get_size")
    union_info_get_size :: proc(info: ^UnionInfo) -> u64 ---

    @(link_name = "gi_union_info_get_alignment")
    union_info_get_alignment :: proc(info: ^UnionInfo) -> u64 ---

    @(link_name = "gi_union_info_get_copy_function_name")
    union_info_get_copy_function_name :: proc(info: ^UnionInfo) -> cstring ---

    @(link_name = "gi_union_info_get_free_function_name")
    union_info_get_free_function_name :: proc(info: ^UnionInfo) -> cstring ---

    @(link_name = "gi_value_info_get_value")
    value_info_get_value :: proc(info: ^ValueInfo) -> i64 ---

    @(link_name = "gi_vfunc_info_get_flags")
    vfunc_info_get_flags :: proc(info: ^VFuncInfo) -> VFuncInfoFlags ---

    @(link_name = "gi_vfunc_info_get_offset")
    vfunc_info_get_offset :: proc(info: ^VFuncInfo) -> u64 ---

    @(link_name = "gi_vfunc_info_get_signal")
    vfunc_info_get_signal :: proc(info: ^VFuncInfo) -> ^SignalInfo ---

    @(link_name = "gi_vfunc_info_get_invoker")
    vfunc_info_get_invoker :: proc(info: ^VFuncInfo) -> ^FunctionInfo ---

    @(link_name = "gi_vfunc_info_get_address")
    vfunc_info_get_address :: proc(info: ^VFuncInfo, implementor_gtype: gobj.Type, error: ^^glib.Error) -> rawptr ---

    @(link_name = "gi_vfunc_info_invoke")
    vfunc_info_invoke :: proc(info: ^VFuncInfo, implementor: gobj.Type, in_args: [^]Argument, n_in_args: u64, out_args: [^]Argument, n_out_args: u64, return_value: ^Argument, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gi_repository_get_type")
    repository_get_type :: proc() -> gobj.Type ---

    @(link_name = "gi_repository_new")
    repository_new :: proc() -> ^Repository ---

    @(link_name = "gi_repository_prepend_search_path")
    repository_prepend_search_path :: proc(repository: ^Repository, directory: cstring) ---

    @(link_name = "gi_repository_prepend_library_path")
    repository_prepend_library_path :: proc(repository: ^Repository, directory: cstring) ---

    @(link_name = "gi_repository_get_search_path")
    repository_get_search_path :: proc(repository: ^Repository, n_paths_out: ^u64) -> ^cstring ---

    @(link_name = "gi_repository_get_library_path")
    repository_get_library_path :: proc(repository: ^Repository, n_paths_out: ^u64) -> ^cstring ---

    @(link_name = "gi_repository_load_typelib")
    repository_load_typelib :: proc(repository: ^Repository, typelib: ^Typelib, flags: RepositoryLoadFlags, error: ^^glib.Error) -> cstring ---

    @(link_name = "gi_repository_is_registered")
    repository_is_registered :: proc(repository: ^Repository, namespace_: cstring, version: cstring) -> glib.boolean ---

    @(link_name = "gi_repository_find_by_name")
    repository_find_by_name :: proc(repository: ^Repository, namespace_: cstring, name: cstring) -> ^BaseInfo ---

    @(link_name = "gi_repository_enumerate_versions")
    repository_enumerate_versions :: proc(repository: ^Repository, namespace_: cstring, n_versions_out: ^u64) -> ^cstring ---

    @(link_name = "gi_repository_require")
    repository_require :: proc(repository: ^Repository, namespace_: cstring, version: cstring, flags: RepositoryLoadFlags, error: ^^glib.Error) -> ^Typelib ---

    @(link_name = "gi_repository_require_private")
    repository_require_private :: proc(repository: ^Repository, typelib_dir: cstring, namespace_: cstring, version: cstring, flags: RepositoryLoadFlags, error: ^^glib.Error) -> ^Typelib ---

    @(link_name = "gi_repository_get_immediate_dependencies")
    repository_get_immediate_dependencies :: proc(repository: ^Repository, namespace_: cstring, n_dependencies_out: ^u64) -> ^cstring ---

    @(link_name = "gi_repository_get_dependencies")
    repository_get_dependencies :: proc(repository: ^Repository, namespace_: cstring, n_dependencies_out: ^u64) -> ^cstring ---

    @(link_name = "gi_repository_get_loaded_namespaces")
    repository_get_loaded_namespaces :: proc(repository: ^Repository, n_namespaces_out: ^u64) -> ^cstring ---

    @(link_name = "gi_repository_find_by_gtype")
    repository_find_by_gtype :: proc(repository: ^Repository, gtype: gobj.Type) -> ^BaseInfo ---

    @(link_name = "gi_repository_get_object_gtype_interfaces")
    repository_get_object_gtype_interfaces :: proc(repository: ^Repository, gtype: gobj.Type, n_interfaces_out: ^u64, interfaces_out: ^^^InterfaceInfo) ---

    @(link_name = "gi_repository_get_n_infos")
    repository_get_n_infos :: proc(repository: ^Repository, namespace_: cstring) -> u32 ---

    @(link_name = "gi_repository_get_info")
    repository_get_info :: proc(repository: ^Repository, namespace_: cstring, idx: u32) -> ^BaseInfo ---

    @(link_name = "gi_repository_find_by_error_domain")
    repository_find_by_error_domain :: proc(repository: ^Repository, domain: glib.Quark) -> ^EnumInfo ---

    @(link_name = "gi_repository_get_typelib_path")
    repository_get_typelib_path :: proc(repository: ^Repository, namespace_: cstring) -> cstring ---

    @(link_name = "gi_repository_get_shared_libraries")
    repository_get_shared_libraries :: proc(repository: ^Repository, namespace_: cstring, out_n_elements: [^]u64) -> ^cstring ---

    @(link_name = "gi_repository_get_c_prefix")
    repository_get_c_prefix :: proc(repository: ^Repository, namespace_: cstring) -> cstring ---

    @(link_name = "gi_repository_get_version")
    repository_get_version :: proc(repository: ^Repository, namespace_: cstring) -> cstring ---

    @(link_name = "gi_repository_get_option_group")
    repository_get_option_group :: proc() -> ^glib.OptionGroup ---

    @(link_name = "gi_repository_dump")
    repository_dump :: proc(input_filename: cstring, output_filename: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gi_repository_error_quark")
    repository_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gi_cclosure_marshal_generic")
    cclosure_marshal_generic :: proc(closure: ^gobj.Closure, return_gvalue: ^gobj.Value, n_param_values: u32, param_values: [^]gobj.Value, invocation_hint: rawptr, marshal_data: rawptr) ---

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

when (ODIN_ARCH == .amd64) {

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import girepository_runic { "../../lib/linux/x86_64/libgirepository-2.0.a", "../../lib/linux/x86_64/libgirepository-wrapper.a", "system:ffi", "system:pcre2-8" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import girepository_runic { "system:girepository-2.0", "../../lib/linux/x86_64/libgirepository-wrapper.a" }
} 
}

}

when (ODIN_ARCH == .arm64) {

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import girepository_runic { "../../lib/linux/aarch64/libgirepository-2.0.a", "../../lib/linux/aarch64/libgirepository-wrapper.a", "system:ffi", "system:pcre2-8" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import girepository_runic { "system:girepository-2.0", "../../lib/linux/aarch64/libgirepository-wrapper.a" }
} 
}

}

