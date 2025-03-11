#+build linux amd64, linux arm64, windows amd64
package girepository

import glib ".."
import gobj "../gobject"

TYPE_TAG_N_TYPES :: int(TypeTag.UNICHAR) + 1
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
Argument :: _GIArgument
_GITypelib :: struct #packed {}
Typelib :: _GITypelib
AttributeIter :: struct {
    data: rawptr,
    _dummy: [4]rawptr,
}
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

}

when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {

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

when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {

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

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {
    foreign import girepository_runic { "../../lib/windows/x86_64/girepository-2.0.lib", "../../lib/windows/x86_64/girepository-wrapper.lib" }
} 

}

