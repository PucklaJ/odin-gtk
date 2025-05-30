#+build linux amd64, linux arm64, windows amd64
package gobject

import "core:c/libc"
import glib ".."

TYPE_FUNDAMENTAL_MAX :: (255 << (2))
TYPE_INVALID :: ( ((0) << (2)))
TYPE_NONE :: ( ((1) << (2)))
TYPE_INTERFACE :: ( ((2) << (2)))
TYPE_CHAR :: ( ((3) << (2)))
TYPE_UCHAR :: ( ((4) << (2)))
TYPE_BOOLEAN :: ( ((5) << (2)))
TYPE_INT :: ( ((6) << (2)))
TYPE_UINT :: ( ((7) << (2)))
TYPE_LONG :: ( ((8) << (2)))
TYPE_ULONG :: ( ((9) << (2)))
TYPE_INT64 :: ( ((10) << (2)))
TYPE_UINT64 :: ( ((11) << (2)))
TYPE_ENUM :: ( ((12) << (2)))
TYPE_FLAGS :: ( ((13) << (2)))
TYPE_FLOAT :: ( ((14) << (2)))
TYPE_DOUBLE :: ( ((15) << (2)))
TYPE_STRING :: ( ((16) << (2)))
TYPE_POINTER :: ( ((17) << (2)))
TYPE_BOXED :: ( ((18) << (2)))
TYPE_PARAM :: ( ((19) << (2)))
TYPE_OBJECT :: ( ((20) << (2)))
TYPE_VARIANT :: ( ((21) << (2)))
VALUE_NOCOPY_CONTENTS :: (1 << 27)
VALUE_INTERNED_STRING :: (1 << 28)
PARAM_STATIC_STRINGS :: (ParamFlags.STATIC_NAME | ParamFlags.STATIC_NICK | ParamFlags.STATIC_BLURB)
PARAM_MASK :: (0x000000ff)
PARAM_USER_SHIFT :: (8)
FLAGS_MASK :: 511
MATCH_MASK :: 63
TYPE_STATIC_SCOPE :: (( (1 << 0)))
TYPE_DATE :: date_get_type 
TYPE_STRV :: strv_get_type 
TYPE_GSTRING :: gstring_get_type 
TYPE_HASH_TABLE :: hash_table_get_type 
TYPE_REGEX :: regex_get_type 
TYPE_MATCH_INFO :: match_info_get_type 
TYPE_ARRAY :: array_get_type 
TYPE_BYTE_ARRAY :: byte_array_get_type 
TYPE_PTR_ARRAY :: ptr_array_get_type 
TYPE_BYTES :: bytes_get_type 
TYPE_VARIANT_TYPE :: variant_type_get_gtype 
TYPE_ERROR :: error_get_type 
TYPE_DATE_TIME :: date_time_get_type 
TYPE_TIME_ZONE :: time_zone_get_type 
TYPE_IO_CHANNEL :: io_channel_get_type 
TYPE_IO_CONDITION :: io_condition_get_type 
TYPE_VARIANT_BUILDER :: variant_builder_get_type 
TYPE_VARIANT_DICT :: variant_dict_get_type 
TYPE_MAIN_LOOP :: main_loop_get_type 
TYPE_MAIN_CONTEXT :: main_context_get_type 
TYPE_SOURCE :: source_get_type 
TYPE_POLLFD :: pollfd_get_type 
TYPE_MARKUP_PARSE_CONTEXT :: markup_parse_context_get_type 
TYPE_KEY_FILE :: key_file_get_type 
TYPE_MAPPED_FILE :: mapped_file_get_type 
TYPE_THREAD :: thread_get_type 
TYPE_CHECKSUM :: checksum_get_type 
TYPE_OPTION_GROUP :: option_group_get_type 
TYPE_URI :: uri_get_type 
TYPE_TREE :: tree_get_type 
TYPE_PATTERN_SPEC :: pattern_spec_get_type 
TYPE_BOOKMARK_FILE :: bookmark_file_get_type 
TYPE_HMAC :: hmac_get_type 
TYPE_DIR :: dir_get_type 
TYPE_RAND :: rand_get_type 
TYPE_STRV_BUILDER :: strv_builder_get_type 
TYPE_CLOSURE :: closure_get_type 
TYPE_VALUE :: value_get_type 
TYPE_INITIALLY_UNOWNED :: initially_unowned_get_type
TYPE_BINDING_FLAGS :: binding_flags_get_type 
TYPE_BINDING :: binding_get_type 
TYPE_BINDING_GROUP :: binding_group_get_type
TYPE_UNICODE_TYPE :: unicode_type_get_type 
TYPE_UNICODE_BREAK_TYPE :: unicode_break_type_get_type 
TYPE_UNICODE_SCRIPT :: unicode_script_get_type 
TYPE_NORMALIZE_MODE :: normalize_mode_get_type 
TYPE_PARAM_CHAR :: #force_inline proc "c" () -> Type { return param_spec_types[0] }
TYPE_PARAM_UCHAR :: #force_inline proc "c" () -> Type { return param_spec_types[1] }
TYPE_PARAM_BOOLEAN :: #force_inline proc "c" () -> Type { return param_spec_types[2] }
TYPE_PARAM_INT :: #force_inline proc "c" () -> Type { return param_spec_types[3] }
TYPE_PARAM_UINT :: #force_inline proc "c" () -> Type { return param_spec_types[4] }
TYPE_PARAM_LONG :: #force_inline proc "c" () -> Type { return param_spec_types[5] }
TYPE_PARAM_ULONG :: #force_inline proc "c" () -> Type { return param_spec_types[6] }
TYPE_PARAM_INT64 :: #force_inline proc "c" () -> Type { return param_spec_types[7] }
TYPE_PARAM_UINT64 :: #force_inline proc "c" () -> Type { return param_spec_types[8] }
TYPE_PARAM_UNICHAR :: #force_inline proc "c" () -> Type { return param_spec_types[9] }
TYPE_PARAM_ENUM :: #force_inline proc "c" () -> Type { return param_spec_types[10] }
TYPE_PARAM_FLAGS :: #force_inline proc "c" () -> Type { return param_spec_types[11] }
TYPE_PARAM_FLOAT :: #force_inline proc "c" () -> Type { return param_spec_types[12] }
TYPE_PARAM_DOUBLE :: #force_inline proc "c" () -> Type { return param_spec_types[13] }
TYPE_PARAM_STRING :: #force_inline proc "c" () -> Type { return param_spec_types[14] }
TYPE_PARAM_PARAM :: #force_inline proc "c" () -> Type { return param_spec_types[15] }
TYPE_PARAM_BOXED :: #force_inline proc "c" () -> Type { return param_spec_types[16] }
TYPE_PARAM_POINTER :: #force_inline proc "c" () -> Type { return param_spec_types[17] }
TYPE_PARAM_VALUE_ARRAY :: #force_inline proc "c" () -> Type { return param_spec_types[18] }
TYPE_PARAM_OBJECT :: #force_inline proc "c" () -> Type { return param_spec_types[19] }
TYPE_PARAM_OVERRIDE :: #force_inline proc "c" () -> Type { return param_spec_types[20] }
TYPE_PARAM_GTYPE :: #force_inline proc "c" () -> Type { return param_spec_types[21] }
TYPE_PARAM_VARIANT :: #force_inline proc "c" () -> Type { return param_spec_types[22] }
TYPE_SIGNAL_GROUP :: signal_group_get_type
TYPE_TYPE_MODULE :: type_module_get_type 
TYPE_TYPE_PLUGIN :: type_plugin_get_type 
TYPE_VALUE_ARRAY :: value_array_get_type 
TYPE_GTYPE :: gtype_get_type

Type :: glib.size
array_union_anon_0 :: struct #raw_union {
    v_int: glib.int_,
    v_uint: glib.uint_,
    v_long: glib.long,
    v_ulong: glib.ulong,
    v_int64: glib.int64,
    v_uint64: glib.uint64,
    v_float: glib.float,
    v_double: glib.double,
    v_pointer: glib.pointer,
}
_GValue :: struct {
    g_type: Type,
    data: [2]array_union_anon_0,
}
Value :: _GValue
_GTypeCValue :: struct #packed {}
TypeCValue :: _GTypeCValue
_GTypePlugin :: struct #packed {}
TypePlugin :: _GTypePlugin
_GTypeClass :: struct {
    g_type: Type,
}
TypeClass :: _GTypeClass
_GTypeInterface :: struct {
    g_type: Type,
    g_instance_type: Type,
}
TypeInterface :: _GTypeInterface
_GTypeInstance :: struct {
    g_class: ^TypeClass,
}
TypeInstance :: _GTypeInstance
BaseInitFunc :: #type proc "c" (g_class: glib.pointer)
BaseFinalizeFunc :: #type proc "c" (g_class: glib.pointer)
ClassInitFunc :: #type proc "c" (g_class: glib.pointer, class_data: glib.pointer)
ClassFinalizeFunc :: #type proc "c" (g_class: glib.pointer, class_data: glib.pointer)
InstanceInitFunc :: #type proc "c" (instance: ^TypeInstance, g_class: glib.pointer)
TypeValueInitFunc :: #type proc "c" (value: ^Value)
TypeValueFreeFunc :: #type proc "c" (value: ^Value)
TypeValueCopyFunc :: #type proc "c" (src_value: ^Value, dest_value: ^Value)
TypeValuePeekPointerFunc :: #type proc "c" (value: ^Value) -> glib.pointer
TypeValueCollectFunc :: #type proc "c" (value: ^Value, n_collect_values: glib.uint_, collect_values: [^]TypeCValue, collect_flags: glib.uint_) -> cstring
TypeValueLCopyFunc :: #type proc "c" (value: ^Value, n_collect_values: glib.uint_, collect_values: [^]TypeCValue, collect_flags: glib.uint_) -> cstring
_GTypeValueTable :: struct {
    value_init: TypeValueInitFunc,
    value_free: TypeValueFreeFunc,
    value_copy: TypeValueCopyFunc,
    value_peek_pointer: TypeValuePeekPointerFunc,
    collect_format: cstring,
    collect_value: TypeValueCollectFunc,
    lcopy_format: cstring,
    lcopy_value: TypeValueLCopyFunc,
}
TypeValueTable :: _GTypeValueTable
_GTypeInfo :: struct {
    class_size: glib.uint16,
    base_init: BaseInitFunc,
    base_finalize: BaseFinalizeFunc,
    class_init: ClassInitFunc,
    class_finalize: ClassFinalizeFunc,
    class_data: glib.constpointer,
    instance_size: glib.uint16,
    n_preallocs: glib.uint16,
    instance_init: InstanceInitFunc,
    value_table: ^TypeValueTable,
}
TypeInfo :: _GTypeInfo
_GTypeFundamentalInfo :: struct {
    type_flags: TypeFundamentalFlags,
}
TypeFundamentalInfo :: _GTypeFundamentalInfo
InterfaceInitFunc :: #type proc "c" (g_iface: glib.pointer, iface_data: glib.pointer)
InterfaceFinalizeFunc :: #type proc "c" (g_iface: glib.pointer, iface_data: glib.pointer)
_GInterfaceInfo :: struct {
    interface_init: InterfaceInitFunc,
    interface_finalize: InterfaceFinalizeFunc,
    interface_data: glib.pointer,
}
InterfaceInfo :: _GInterfaceInfo
_GTypeQuery :: struct {
    type: Type,
    type_name: cstring,
    class_size: glib.uint_,
    instance_size: glib.uint_,
}
TypeQuery :: _GTypeQuery
TypeClassCacheFunc :: #type proc "c" (cache_data: glib.pointer, g_class: ^TypeClass) -> glib.boolean
TypeInterfaceCheckFunc :: #type proc "c" (check_data: glib.pointer, g_iface: glib.pointer)
ValueTransform :: #type proc "c" (src_value: ^Value, dest_value: ^Value)
ParamFlags :: enum i32 {READABLE = 1, WRITABLE = 2, READWRITE = 3, CONSTRUCT = 4, CONSTRUCT_ONLY = 8, LAX_VALIDATION = 16, STATIC_NAME = 32, PRIVATE = 32, STATIC_NICK = 64, STATIC_BLURB = 128, EXPLICIT_NOTIFY = 1073741824, DEPRECATED = -2147483648 }
_GParamSpec :: struct {
    g_type_instance: TypeInstance,
    name: cstring,
    flags: ParamFlags,
    value_type: Type,
    owner_type: Type,
    _nick: cstring,
    _blurb: cstring,
    qdata: ^glib.Data,
    ref_count: glib.uint_,
    param_id: glib.uint_,
}
ParamSpec :: _GParamSpec
finalize_func_ptr_anon_1 :: #type proc "c" (pspec: ^ParamSpec)
value_set_default_func_ptr_anon_2 :: #type proc "c" (pspec: ^ParamSpec, value: ^Value)
value_validate_func_ptr_anon_3 :: #type proc "c" (pspec: ^ParamSpec, value: ^Value) -> glib.boolean
values_cmp_func_ptr_anon_4 :: #type proc "c" (pspec: ^ParamSpec, value1: ^Value, value2: ^Value) -> glib.int_
value_is_valid_func_ptr_anon_5 :: #type proc "c" (pspec: ^ParamSpec, value: ^Value) -> glib.boolean
_GParamSpecClass :: struct {
    g_type_class: TypeClass,
    value_type: Type,
    finalize: finalize_func_ptr_anon_1,
    value_set_default: value_set_default_func_ptr_anon_2,
    value_validate: value_validate_func_ptr_anon_3,
    values_cmp: values_cmp_func_ptr_anon_4,
    value_is_valid: value_is_valid_func_ptr_anon_5,
    dummy: [3]glib.pointer,
}
ParamSpecClass :: _GParamSpecClass
_GParameter :: struct {
    name: cstring,
    value: Value,
}
Parameter :: _GParameter
_GParamSpecPool :: struct #packed {}
ParamSpecPool :: _GParamSpecPool
instance_init_func_ptr_anon_6 :: #type proc "c" (pspec: ^ParamSpec)
finalize_func_ptr_anon_7 :: #type proc "c" (pspec: ^ParamSpec)
value_set_default_func_ptr_anon_8 :: #type proc "c" (pspec: ^ParamSpec, value: ^Value)
value_validate_func_ptr_anon_9 :: #type proc "c" (pspec: ^ParamSpec, value: ^Value) -> glib.boolean
values_cmp_func_ptr_anon_10 :: #type proc "c" (pspec: ^ParamSpec, value1: ^Value, value2: ^Value) -> glib.int_
_GParamSpecTypeInfo :: struct {
    instance_size: glib.uint16,
    n_preallocs: glib.uint16,
    instance_init: instance_init_func_ptr_anon_6,
    value_type: Type,
    finalize: finalize_func_ptr_anon_7,
    value_set_default: value_set_default_func_ptr_anon_8,
    value_validate: value_validate_func_ptr_anon_9,
    values_cmp: values_cmp_func_ptr_anon_10,
}
ParamSpecTypeInfo :: _GParamSpecTypeInfo
_GClosure :: [32]i8
Closure :: _GClosure
ClosureNotify :: #type proc "c" (data: glib.pointer, closure: ^Closure)
_GClosureNotifyData :: struct {
    data: glib.pointer,
    notify: ClosureNotify,
}
ClosureNotifyData :: _GClosureNotifyData
Callback :: #type proc "c" ()
ClosureMarshal :: #type proc "c" (closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer)
VaClosureMarshal :: #type proc "c" (closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type)
_GCClosure :: struct {
    closure: Closure,
    callback: glib.pointer,
}
CClosure :: _GCClosure
_GSignalQuery :: struct {
    signal_id: glib.uint_,
    signal_name: cstring,
    itype: Type,
    signal_flags: SignalFlags,
    return_type: Type,
    n_params: glib.uint_,
    param_types: [^]Type,
}
SignalQuery :: _GSignalQuery
_GSignalInvocationHint :: struct {
    signal_id: glib.uint_,
    detail: glib.Quark,
    run_type: SignalFlags,
}
SignalInvocationHint :: _GSignalInvocationHint
SignalCMarshaller :: ClosureMarshal
SignalCVaMarshaller :: VaClosureMarshal
SignalEmissionHook :: #type proc "c" (ihint: ^SignalInvocationHint, n_param_values: glib.uint_, param_values: [^]Value, data: glib.pointer) -> glib.boolean
SignalAccumulator :: #type proc "c" (ihint: ^SignalInvocationHint, return_accu: ^Value, handler_return: ^Value, data: glib.pointer) -> glib.boolean
BoxedCopyFunc :: #type proc "c" (boxed: glib.pointer) -> glib.pointer
BoxedFreeFunc :: #type proc "c" (boxed: glib.pointer)
_GObject :: struct {
    g_type_instance: TypeInstance,
    ref_count: glib.uint_,
    qdata: ^glib.Data,
}
Object :: _GObject
_GObjectConstructParam :: struct {
    pspec: ^ParamSpec,
    value: ^Value,
}
ObjectConstructParam :: _GObjectConstructParam
constructor_func_ptr_anon_11 :: #type proc "c" (type: Type, n_construct_properties: glib.uint_, construct_properties: [^]ObjectConstructParam) -> ^Object
set_property_func_ptr_anon_12 :: #type proc "c" (object: ^Object, property_id: glib.uint_, value: ^Value, pspec: ^ParamSpec)
et_property_func_ptr_anon_13 :: #type proc "c" (object: ^Object, property_id: glib.uint_, value: ^Value, pspec: ^ParamSpec)
dispose_func_ptr_anon_14 :: #type proc "c" (object: ^Object)
finalize_func_ptr_anon_15 :: #type proc "c" (object: ^Object)
dispatch_properties_changed_func_ptr_anon_16 :: #type proc "c" (object: ^Object, n_pspecs: glib.uint_, pspecs: [^]^ParamSpec)
notify_func_ptr_anon_17 :: #type proc "c" (object: ^Object, pspec: ^ParamSpec)
constructed_func_ptr_anon_18 :: #type proc "c" (object: ^Object)
_GObjectClass :: struct {
    g_type_class: TypeClass,
    construct_properties: [^]glib.SList,
    constructor: constructor_func_ptr_anon_11,
    set_property: set_property_func_ptr_anon_12,
    get_property: et_property_func_ptr_anon_13,
    dispose: dispose_func_ptr_anon_14,
    finalize: finalize_func_ptr_anon_15,
    dispatch_properties_changed: dispatch_properties_changed_func_ptr_anon_16,
    notify: notify_func_ptr_anon_17,
    constructed: constructed_func_ptr_anon_18,
    flags: glib.size,
    n_construct_properties: glib.size,
    pspecs: glib.pointer,
    n_pspecs: glib.size,
    pdummy: [3]glib.pointer,
}
ObjectClass :: _GObjectClass
InitiallyUnowned :: _GObject
InitiallyUnownedClass :: _GObjectClass
ObjectGetPropertyFunc :: #type proc "c" (object: ^Object, property_id: glib.uint_, value: ^Value, pspec: ^ParamSpec)
ObjectSetPropertyFunc :: #type proc "c" (object: ^Object, property_id: glib.uint_, value: ^Value, pspec: ^ParamSpec)
ObjectFinalizeFunc :: #type proc "c" (object: ^Object)
WeakNotify :: #type proc "c" (data: glib.pointer, where_the_object_was: [^]Object)
ToggleNotify :: #type proc "c" (data: glib.pointer, object: ^Object, is_last_ref: glib.boolean)
priv_union_anon_19 :: struct #raw_union {
    p: glib.pointer,
}
WeakRef :: struct {
    priv: priv_union_anon_19,
}
_GBinding :: struct #packed {}
Binding :: _GBinding
BindingTransformFunc :: #type proc "c" (binding: ^Binding, from_value: ^Value, to_value: ^Value, user_data: glib.pointer) -> glib.boolean
_GBindingGroup :: struct #packed {}
BindingGroup :: _GBindingGroup
_GEnumValue :: struct {
    value: glib.int_,
    value_name: cstring,
    value_nick: cstring,
}
EnumValue :: _GEnumValue
_GEnumClass :: struct {
    g_type_class: TypeClass,
    minimum: glib.int_,
    maximum: glib.int_,
    n_values: glib.uint_,
    values: [^]EnumValue,
}
EnumClass :: _GEnumClass
_GFlagsValue :: struct {
    value: glib.uint_,
    value_name: cstring,
    value_nick: cstring,
}
FlagsValue :: _GFlagsValue
_GFlagsClass :: struct {
    g_type_class: TypeClass,
    mask: glib.uint_,
    n_values: glib.uint_,
    values: [^]FlagsValue,
}
FlagsClass :: _GFlagsClass
_GParamSpecChar :: struct {
    parent_instance: ParamSpec,
    minimum: glib.int8,
    maximum: glib.int8,
    default_value: glib.int8,
}
ParamSpecChar :: _GParamSpecChar
_GParamSpecUChar :: struct {
    parent_instance: ParamSpec,
    minimum: glib.uint8,
    maximum: glib.uint8,
    default_value: glib.uint8,
}
ParamSpecUChar :: _GParamSpecUChar
_GParamSpecBoolean :: struct {
    parent_instance: ParamSpec,
    default_value: glib.boolean,
}
ParamSpecBoolean :: _GParamSpecBoolean
_GParamSpecInt :: struct {
    parent_instance: ParamSpec,
    minimum: glib.int_,
    maximum: glib.int_,
    default_value: glib.int_,
}
ParamSpecInt :: _GParamSpecInt
_GParamSpecUInt :: struct {
    parent_instance: ParamSpec,
    minimum: glib.uint_,
    maximum: glib.uint_,
    default_value: glib.uint_,
}
ParamSpecUInt :: _GParamSpecUInt
_GParamSpecLong :: struct {
    parent_instance: ParamSpec,
    minimum: glib.long,
    maximum: glib.long,
    default_value: glib.long,
}
ParamSpecLong :: _GParamSpecLong
_GParamSpecULong :: struct {
    parent_instance: ParamSpec,
    minimum: glib.ulong,
    maximum: glib.ulong,
    default_value: glib.ulong,
}
ParamSpecULong :: _GParamSpecULong
_GParamSpecInt64 :: struct {
    parent_instance: ParamSpec,
    minimum: glib.int64,
    maximum: glib.int64,
    default_value: glib.int64,
}
ParamSpecInt64 :: _GParamSpecInt64
_GParamSpecUInt64 :: struct {
    parent_instance: ParamSpec,
    minimum: glib.uint64,
    maximum: glib.uint64,
    default_value: glib.uint64,
}
ParamSpecUInt64 :: _GParamSpecUInt64
_GParamSpecUnichar :: struct {
    parent_instance: ParamSpec,
    default_value: glib.unichar,
}
ParamSpecUnichar :: _GParamSpecUnichar
_GParamSpecEnum :: struct {
    parent_instance: ParamSpec,
    enum_class: ^EnumClass,
    default_value: glib.int_,
}
ParamSpecEnum :: _GParamSpecEnum
_GParamSpecFlags :: struct {
    parent_instance: ParamSpec,
    flags_class: ^FlagsClass,
    default_value: glib.uint_,
}
ParamSpecFlags :: _GParamSpecFlags
_GParamSpecFloat :: struct {
    parent_instance: ParamSpec,
    minimum: glib.float,
    maximum: glib.float,
    default_value: glib.float,
    epsilon: glib.float,
}
ParamSpecFloat :: _GParamSpecFloat
_GParamSpecDouble :: struct {
    parent_instance: ParamSpec,
    minimum: glib.double,
    maximum: glib.double,
    default_value: glib.double,
    epsilon: glib.double,
}
ParamSpecDouble :: _GParamSpecDouble
_GParamSpecString :: [104]i8
ParamSpecString :: _GParamSpecString
_GParamSpecParam :: struct {
    parent_instance: ParamSpec,
}
ParamSpecParam :: _GParamSpecParam
_GParamSpecBoxed :: struct {
    parent_instance: ParamSpec,
}
ParamSpecBoxed :: _GParamSpecBoxed
_GParamSpecPointer :: struct {
    parent_instance: ParamSpec,
}
ParamSpecPointer :: _GParamSpecPointer
_GParamSpecValueArray :: struct {
    parent_instance: ParamSpec,
    element_spec: ^ParamSpec,
    fixed_n_elements: glib.uint_,
}
ParamSpecValueArray :: _GParamSpecValueArray
_GParamSpecObject :: struct {
    parent_instance: ParamSpec,
}
ParamSpecObject :: _GParamSpecObject
_GParamSpecOverride :: struct {
    parent_instance: ParamSpec,
    overridden: ^ParamSpec,
}
ParamSpecOverride :: _GParamSpecOverride
_GParamSpecGType :: struct {
    parent_instance: ParamSpec,
    is_a_type: Type,
}
ParamSpecGType :: _GParamSpecGType
_GParamSpecVariant :: struct {
    parent_instance: ParamSpec,
    type: ^glib.VariantType,
    default_value: ^glib.Variant,
    padding: [4]glib.pointer,
}
ParamSpecVariant :: _GParamSpecVariant
_GSignalGroup :: struct #packed {}
SignalGroup :: _GSignalGroup
_GTypeModule :: struct {
    parent_instance: Object,
    use_count: glib.uint_,
    type_infos: [^]glib.SList,
    interface_infos: [^]glib.SList,
    name: cstring,
}
TypeModule :: _GTypeModule
load_func_ptr_anon_20 :: #type proc "c" (module: ^TypeModule) -> glib.boolean
unload_func_ptr_anon_21 :: #type proc "c" (module: ^TypeModule)
reserved1_func_ptr_anon_22 :: #type proc "c" ()
reserved2_func_ptr_anon_23 :: #type proc "c" ()
reserved3_func_ptr_anon_24 :: #type proc "c" ()
reserved4_func_ptr_anon_25 :: #type proc "c" ()
_GTypeModuleClass :: struct {
    parent_class: ObjectClass,
    load: load_func_ptr_anon_20,
    unload: unload_func_ptr_anon_21,
    reserved1: reserved1_func_ptr_anon_22,
    reserved2: reserved2_func_ptr_anon_23,
    reserved3: reserved3_func_ptr_anon_24,
    reserved4: reserved4_func_ptr_anon_25,
}
TypeModuleClass :: _GTypeModuleClass
TypeModule_autoptr :: ^TypeModule
TypeModule_listautoptr :: ^glib.List
TypeModule_slistautoptr :: ^glib.SList
TypeModule_queueautoptr :: ^glib.Queue
TypePluginUse :: #type proc "c" (plugin: ^TypePlugin)
TypePluginUnuse :: #type proc "c" (plugin: ^TypePlugin)
TypePluginCompleteTypeInfo :: #type proc "c" (plugin: ^TypePlugin, g_type: Type, info: ^TypeInfo, value_table: ^TypeValueTable)
TypePluginCompleteInterfaceInfo :: #type proc "c" (plugin: ^TypePlugin, instance_type: Type, interface_type: Type, info: ^InterfaceInfo)
_GTypePluginClass :: struct {
    base_iface: TypeInterface,
    use_plugin: TypePluginUse,
    unuse_plugin: TypePluginUnuse,
    complete_type_info: TypePluginCompleteTypeInfo,
    complete_interface_info: TypePluginCompleteInterfaceInfo,
}
TypePluginClass :: _GTypePluginClass
_GValueArray :: struct {
    n_values: glib.uint_,
    values: [^]Value,
    n_prealloced: glib.uint_,
}
ValueArray :: _GValueArray
chararray :: cstring
Closure_autoptr :: ^Closure
Closure_listautoptr :: ^glib.List
Closure_slistautoptr :: ^glib.SList
Closure_queueautoptr :: ^glib.Queue
EnumClass_autoptr :: ^EnumClass
EnumClass_listautoptr :: ^glib.List
EnumClass_slistautoptr :: ^glib.SList
EnumClass_queueautoptr :: ^glib.Queue
FlagsClass_autoptr :: ^FlagsClass
FlagsClass_listautoptr :: ^glib.List
FlagsClass_slistautoptr :: ^glib.SList
FlagsClass_queueautoptr :: ^glib.Queue
Object_autoptr :: ^Object
Object_listautoptr :: ^glib.List
Object_slistautoptr :: ^glib.SList
Object_queueautoptr :: ^glib.Queue
InitiallyUnowned_autoptr :: ^InitiallyUnowned
InitiallyUnowned_listautoptr :: ^glib.List
InitiallyUnowned_slistautoptr :: ^glib.SList
InitiallyUnowned_queueautoptr :: ^glib.Queue
ParamSpec_autoptr :: ^ParamSpec
ParamSpec_listautoptr :: ^glib.List
ParamSpec_slistautoptr :: ^glib.SList
ParamSpec_queueautoptr :: ^glib.Queue
TypeClass_autoptr :: ^TypeClass
TypeClass_listautoptr :: ^glib.List
TypeClass_slistautoptr :: ^glib.SList
TypeClass_queueautoptr :: ^glib.Queue
_g_type_once_init_type :: Type

@(default_calling_convention = "c")
foreign gobject_runic {
    @(link_name = "g_type_init")
    type_init :: proc() ---

    @(link_name = "g_type_init_with_debug_flags")
    type_init_with_debug_flags :: proc(debug_flags: TypeDebugFlags) ---

    @(link_name = "g_type_name")
    type_name :: proc(type: Type) -> cstring ---

    @(link_name = "g_type_qname")
    type_qname :: proc(type: Type) -> glib.Quark ---

    @(link_name = "g_type_from_name")
    type_from_name :: proc(name: cstring) -> Type ---

    @(link_name = "g_type_parent")
    type_parent :: proc(type: Type) -> Type ---

    @(link_name = "g_type_depth")
    type_depth :: proc(type: Type) -> glib.uint_ ---

    @(link_name = "g_type_next_base")
    type_next_base :: proc(leaf_type: Type, root_type: Type) -> Type ---

    @(link_name = "g_type_is_a")
    type_is_a :: proc(type: Type, is_a_type: Type) -> glib.boolean ---

    @(link_name = "g_type_class_get")
    type_class_get :: proc(type: Type) -> glib.pointer ---

    @(link_name = "g_type_class_ref")
    type_class_ref :: proc(type: Type) -> glib.pointer ---

    @(link_name = "g_type_class_peek")
    type_class_peek :: proc(type: Type) -> glib.pointer ---

    @(link_name = "g_type_class_peek_static")
    type_class_peek_static :: proc(type: Type) -> glib.pointer ---

    @(link_name = "g_type_class_unref")
    type_class_unref :: proc(g_class: glib.pointer) ---

    @(link_name = "g_type_class_peek_parent")
    type_class_peek_parent :: proc(g_class: glib.pointer) -> glib.pointer ---

    @(link_name = "g_type_interface_peek")
    type_interface_peek :: proc(instance_class: glib.pointer, iface_type: Type) -> glib.pointer ---

    @(link_name = "g_type_interface_peek_parent")
    type_interface_peek_parent :: proc(g_iface: glib.pointer) -> glib.pointer ---

    @(link_name = "g_type_default_interface_get")
    type_default_interface_get :: proc(g_type: Type) -> glib.pointer ---

    @(link_name = "g_type_default_interface_ref")
    type_default_interface_ref :: proc(g_type: Type) -> glib.pointer ---

    @(link_name = "g_type_default_interface_peek")
    type_default_interface_peek :: proc(g_type: Type) -> glib.pointer ---

    @(link_name = "g_type_default_interface_unref")
    type_default_interface_unref :: proc(g_iface: glib.pointer) ---

    @(link_name = "g_type_children")
    type_children :: proc(type: Type, n_children: ^glib.uint_) -> ^Type ---

    @(link_name = "g_type_interfaces")
    type_interfaces :: proc(type: Type, n_interfaces: [^]glib.uint_) -> ^Type ---

    @(link_name = "g_type_set_qdata")
    type_set_qdata :: proc(type: Type, quark: glib.Quark, data: glib.pointer) ---

    @(link_name = "g_type_get_qdata")
    type_get_qdata :: proc(type: Type, quark: glib.Quark) -> glib.pointer ---

    @(link_name = "g_type_query")
    type_query :: proc(type: Type, query: ^TypeQuery) ---

    @(link_name = "g_type_get_instance_count")
    type_get_instance_count :: proc(type: Type) -> i32 ---

    @(link_name = "g_type_register_static")
    type_register_static :: proc(parent_type: Type, type_name: cstring, info: ^TypeInfo, flags: TypeFlags) -> Type ---

    @(link_name = "g_type_register_static_simple")
    type_register_static_simple :: proc(parent_type: Type, type_name: cstring, class_size: glib.uint_, class_init: ClassInitFunc, instance_size: glib.uint_, instance_init: InstanceInitFunc, flags: TypeFlags) -> Type ---

    @(link_name = "g_type_register_dynamic")
    type_register_dynamic :: proc(parent_type: Type, type_name: cstring, plugin: ^TypePlugin, flags: TypeFlags) -> Type ---

    @(link_name = "g_type_register_fundamental")
    type_register_fundamental :: proc(type_id: Type, type_name: cstring, info: ^TypeInfo, finfo: ^TypeFundamentalInfo, flags: TypeFlags) -> Type ---

    @(link_name = "g_type_add_interface_static")
    type_add_interface_static :: proc(instance_type: Type, interface_type: Type, info: ^InterfaceInfo) ---

    @(link_name = "g_type_add_interface_dynamic")
    type_add_interface_dynamic :: proc(instance_type: Type, interface_type: Type, plugin: ^TypePlugin) ---

    @(link_name = "g_type_interface_add_prerequisite")
    type_interface_add_prerequisite :: proc(interface_type: Type, prerequisite_type: Type) ---

    @(link_name = "g_type_interface_prerequisites")
    type_interface_prerequisites :: proc(interface_type: Type, n_prerequisites: [^]glib.uint_) -> ^Type ---

    @(link_name = "g_type_interface_instantiatable_prerequisite")
    type_interface_instantiatable_prerequisite :: proc(interface_type: Type) -> Type ---

    @(link_name = "g_type_class_add_private")
    type_class_add_private :: proc(g_class: glib.pointer, private_size: glib.size) ---

    @(link_name = "g_type_add_instance_private")
    type_add_instance_private :: proc(class_type: Type, private_size: glib.size) -> glib.int_ ---

    @(link_name = "g_type_instance_get_private")
    type_instance_get_private :: proc(instance: ^TypeInstance, private_type: Type) -> glib.pointer ---

    @(link_name = "g_type_class_adjust_private_offset")
    type_class_adjust_private_offset :: proc(g_class: glib.pointer, private_size_or_offset: ^glib.int_) ---

    @(link_name = "g_type_add_class_private")
    type_add_class_private :: proc(class_type: Type, private_size: glib.size) ---

    @(link_name = "g_type_class_get_private")
    type_class_get_private :: proc(klass: [^]TypeClass, private_type: Type) -> glib.pointer ---

    @(link_name = "g_type_class_get_instance_private_offset")
    type_class_get_instance_private_offset :: proc(g_class: glib.pointer) -> glib.int_ ---

    @(link_name = "g_type_ensure")
    type_ensure :: proc(type: Type) ---

    @(link_name = "g_type_get_type_registration_serial")
    type_get_type_registration_serial :: proc() -> glib.uint_ ---

    @(link_name = "g_type_get_plugin")
    type_get_plugin :: proc(type: Type) -> ^TypePlugin ---

    @(link_name = "g_type_interface_get_plugin")
    type_interface_get_plugin :: proc(instance_type: Type, interface_type: Type) -> ^TypePlugin ---

    @(link_name = "g_type_fundamental_next")
    type_fundamental_next :: proc() -> Type ---

    @(link_name = "g_type_fundamental")
    type_fundamental :: proc(type_id: Type) -> Type ---

    @(link_name = "g_type_create_instance")
    type_create_instance :: proc(type: Type) -> ^TypeInstance ---

    @(link_name = "g_type_free_instance")
    type_free_instance :: proc(instance: ^TypeInstance) ---

    @(link_name = "g_type_add_class_cache_func")
    type_add_class_cache_func :: proc(cache_data: glib.pointer, cache_func: TypeClassCacheFunc) ---

    @(link_name = "g_type_remove_class_cache_func")
    type_remove_class_cache_func :: proc(cache_data: glib.pointer, cache_func: TypeClassCacheFunc) ---

    @(link_name = "g_type_class_unref_uncached")
    type_class_unref_uncached :: proc(g_class: glib.pointer) ---

    @(link_name = "g_type_add_interface_check")
    type_add_interface_check :: proc(check_data: glib.pointer, check_func: TypeInterfaceCheckFunc) ---

    @(link_name = "g_type_remove_interface_check")
    type_remove_interface_check :: proc(check_data: glib.pointer, check_func: TypeInterfaceCheckFunc) ---

    @(link_name = "g_type_value_table_peek")
    type_value_table_peek :: proc(type: Type) -> ^TypeValueTable ---

    @(link_name = "g_type_check_instance")
    type_check_instance :: proc(instance: ^TypeInstance) -> glib.boolean ---

    @(link_name = "g_type_check_instance_cast")
    type_check_instance_cast :: proc(instance: ^TypeInstance, iface_type: Type) -> ^TypeInstance ---

    @(link_name = "g_type_check_instance_is_a")
    type_check_instance_is_a :: proc(instance: ^TypeInstance, iface_type: Type) -> glib.boolean ---

    @(link_name = "g_type_check_instance_is_fundamentally_a")
    type_check_instance_is_fundamentally_a :: proc(instance: ^TypeInstance, fundamental_type: Type) -> glib.boolean ---

    @(link_name = "g_type_check_class_cast")
    type_check_class_cast :: proc(g_class: ^TypeClass, is_a_type: Type) -> ^TypeClass ---

    @(link_name = "g_type_check_class_is_a")
    type_check_class_is_a :: proc(g_class: ^TypeClass, is_a_type: Type) -> glib.boolean ---

    @(link_name = "g_type_check_is_value_type")
    type_check_is_value_type :: proc(type: Type) -> glib.boolean ---

    @(link_name = "g_type_check_value")
    type_check_value :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "g_type_check_value_holds")
    type_check_value_holds :: proc(value: ^Value, type: Type) -> glib.boolean ---

    @(link_name = "g_type_test_flags")
    type_test_flags :: proc(type: Type, flags: glib.uint_) -> glib.boolean ---

    @(link_name = "g_type_name_from_instance")
    type_name_from_instance :: proc(instance: ^TypeInstance) -> cstring ---

    @(link_name = "g_type_name_from_class")
    type_name_from_class :: proc(g_class: ^TypeClass) -> cstring ---

    @(link_name = "g_value_init")
    value_init :: proc(value: ^Value, g_type: Type) -> ^Value ---

    @(link_name = "g_value_copy")
    value_copy :: proc(src_value: ^Value, dest_value: ^Value) ---

    @(link_name = "g_value_reset")
    value_reset :: proc(value: ^Value) -> ^Value ---

    @(link_name = "g_value_unset")
    value_unset :: proc(value: ^Value) ---

    @(link_name = "g_value_set_instance")
    value_set_instance :: proc(value: ^Value, instance: glib.pointer) ---

    @(link_name = "g_value_init_from_instance")
    value_init_from_instance :: proc(value: ^Value, instance: glib.pointer) ---

    @(link_name = "g_value_fits_pointer")
    value_fits_pointer :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "g_value_peek_pointer")
    value_peek_pointer :: proc(value: ^Value) -> glib.pointer ---

    @(link_name = "g_value_type_compatible")
    value_type_compatible :: proc(src_type: Type, dest_type: Type) -> glib.boolean ---

    @(link_name = "g_value_type_transformable")
    value_type_transformable :: proc(src_type: Type, dest_type: Type) -> glib.boolean ---

    @(link_name = "g_value_transform")
    value_transform :: proc(src_value: ^Value, dest_value: ^Value) -> glib.boolean ---

    @(link_name = "g_value_register_transform_func")
    value_register_transform_func :: proc(src_type: Type, dest_type: Type, transform_func: ValueTransform) ---

    @(link_name = "g_param_spec_ref")
    param_spec_ref :: proc(pspec: ^ParamSpec) -> ^ParamSpec ---

    @(link_name = "g_param_spec_unref")
    param_spec_unref :: proc(pspec: ^ParamSpec) ---

    @(link_name = "g_param_spec_sink")
    param_spec_sink :: proc(pspec: ^ParamSpec) ---

    @(link_name = "g_param_spec_ref_sink")
    param_spec_ref_sink :: proc(pspec: ^ParamSpec) -> ^ParamSpec ---

    @(link_name = "g_param_spec_get_qdata")
    param_spec_get_qdata :: proc(pspec: ^ParamSpec, quark: glib.Quark) -> glib.pointer ---

    @(link_name = "g_param_spec_set_qdata")
    param_spec_set_qdata :: proc(pspec: ^ParamSpec, quark: glib.Quark, data: glib.pointer) ---

    @(link_name = "g_param_spec_set_qdata_full")
    param_spec_set_qdata_full :: proc(pspec: ^ParamSpec, quark: glib.Quark, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "g_param_spec_steal_qdata")
    param_spec_steal_qdata :: proc(pspec: ^ParamSpec, quark: glib.Quark) -> glib.pointer ---

    @(link_name = "g_param_spec_get_redirect_target")
    param_spec_get_redirect_target :: proc(pspec: ^ParamSpec) -> ^ParamSpec ---

    @(link_name = "g_param_value_set_default")
    param_value_set_default :: proc(pspec: ^ParamSpec, value: ^Value) ---

    @(link_name = "g_param_value_defaults")
    param_value_defaults :: proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean ---

    @(link_name = "g_param_value_validate")
    param_value_validate :: proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean ---

    @(link_name = "g_param_value_is_valid")
    param_value_is_valid :: proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean ---

    @(link_name = "g_param_value_convert")
    param_value_convert :: proc(pspec: ^ParamSpec, src_value: ^Value, dest_value: ^Value, strict_validation: glib.boolean) -> glib.boolean ---

    @(link_name = "g_param_values_cmp")
    param_values_cmp :: proc(pspec: ^ParamSpec, value1: ^Value, value2: ^Value) -> glib.int_ ---

    @(link_name = "g_param_spec_get_name")
    param_spec_get_name :: proc(pspec: ^ParamSpec) -> cstring ---

    @(link_name = "g_param_spec_get_nick")
    param_spec_get_nick :: proc(pspec: ^ParamSpec) -> cstring ---

    @(link_name = "g_param_spec_get_blurb")
    param_spec_get_blurb :: proc(pspec: ^ParamSpec) -> cstring ---

    @(link_name = "g_value_set_param")
    value_set_param :: proc(value: ^Value, param: ^ParamSpec) ---

    @(link_name = "g_value_get_param")
    value_get_param :: proc(value: ^Value) -> ^ParamSpec ---

    @(link_name = "g_value_dup_param")
    value_dup_param :: proc(value: ^Value) -> ^ParamSpec ---

    @(link_name = "g_value_take_param")
    value_take_param :: proc(value: ^Value, param: ^ParamSpec) ---

    @(link_name = "g_value_set_param_take_ownership")
    value_set_param_take_ownership :: proc(value: ^Value, param: ^ParamSpec) ---

    @(link_name = "g_param_spec_get_default_value")
    param_spec_get_default_value :: proc(pspec: ^ParamSpec) -> ^Value ---

    @(link_name = "g_param_spec_get_name_quark")
    param_spec_get_name_quark :: proc(pspec: ^ParamSpec) -> glib.Quark ---

    @(link_name = "g_param_type_register_static")
    param_type_register_static :: proc(name: cstring, pspec_info: ^ParamSpecTypeInfo) -> Type ---

    @(link_name = "g_param_spec_is_valid_name")
    param_spec_is_valid_name :: proc(name: cstring) -> glib.boolean ---

    @(link_name = "_g_param_type_register_static_constant")
    _g_param_type_register_static_constant :: proc(name: cstring, pspec_info: ^ParamSpecTypeInfo, opt_type: Type) -> Type ---

    @(link_name = "g_param_spec_internal")
    param_spec_internal :: proc(param_type: Type, name: cstring, nick: cstring, blurb: cstring, flags: ParamFlags) -> glib.pointer ---

    @(link_name = "g_param_spec_pool_new")
    param_spec_pool_new :: proc(type_prefixing: glib.boolean) -> ^ParamSpecPool ---

    @(link_name = "g_param_spec_pool_insert")
    param_spec_pool_insert :: proc(pool: ^ParamSpecPool, pspec: ^ParamSpec, owner_type: Type) ---

    @(link_name = "g_param_spec_pool_remove")
    param_spec_pool_remove :: proc(pool: ^ParamSpecPool, pspec: ^ParamSpec) ---

    @(link_name = "g_param_spec_pool_lookup")
    param_spec_pool_lookup :: proc(pool: ^ParamSpecPool, param_name: cstring, owner_type: Type, walk_ancestors: glib.boolean) -> ^ParamSpec ---

    @(link_name = "g_param_spec_pool_list_owned")
    param_spec_pool_list_owned :: proc(pool: ^ParamSpecPool, owner_type: Type) -> ^glib.List ---

    @(link_name = "g_param_spec_pool_list")
    param_spec_pool_list :: proc(pool: ^ParamSpecPool, owner_type: Type, n_pspecs_p: ^glib.uint_) -> ^^ParamSpec ---

    @(link_name = "g_param_spec_pool_free")
    param_spec_pool_free :: proc(pool: ^ParamSpecPool) ---

    @(link_name = "g_cclosure_new")
    cclosure_new :: proc(callback_func: Callback, user_data: glib.pointer, destroy_data: ClosureNotify) -> ^Closure ---

    @(link_name = "g_cclosure_new_swap")
    cclosure_new_swap :: proc(callback_func: Callback, user_data: glib.pointer, destroy_data: ClosureNotify) -> ^Closure ---

    @(link_name = "g_signal_type_cclosure_new")
    signal_type_cclosure_new :: proc(itype: Type, struct_offset: glib.uint_) -> ^Closure ---

    @(link_name = "g_closure_ref")
    closure_ref :: proc(closure: ^Closure) -> ^Closure ---

    @(link_name = "g_closure_sink")
    closure_sink :: proc(closure: ^Closure) ---

    @(link_name = "g_closure_unref")
    closure_unref :: proc(closure: ^Closure) ---

    @(link_name = "g_closure_new_simple")
    closure_new_simple :: proc(sizeof_closure: glib.uint_, data: glib.pointer) -> ^Closure ---

    @(link_name = "g_closure_add_finalize_notifier")
    closure_add_finalize_notifier :: proc(closure: ^Closure, notify_data: glib.pointer, notify_func: ClosureNotify) ---

    @(link_name = "g_closure_remove_finalize_notifier")
    closure_remove_finalize_notifier :: proc(closure: ^Closure, notify_data: glib.pointer, notify_func: ClosureNotify) ---

    @(link_name = "g_closure_add_invalidate_notifier")
    closure_add_invalidate_notifier :: proc(closure: ^Closure, notify_data: glib.pointer, notify_func: ClosureNotify) ---

    @(link_name = "g_closure_remove_invalidate_notifier")
    closure_remove_invalidate_notifier :: proc(closure: ^Closure, notify_data: glib.pointer, notify_func: ClosureNotify) ---

    @(link_name = "g_closure_add_marshal_guards")
    closure_add_marshal_guards :: proc(closure: ^Closure, pre_marshal_data: glib.pointer, pre_marshal_notify: ClosureNotify, post_marshal_data: glib.pointer, post_marshal_notify: ClosureNotify) ---

    @(link_name = "g_closure_set_marshal")
    closure_set_marshal :: proc(closure: ^Closure, marshal: ClosureMarshal) ---

    @(link_name = "g_closure_set_meta_marshal")
    closure_set_meta_marshal :: proc(closure: ^Closure, marshal_data: glib.pointer, meta_marshal: ClosureMarshal) ---

    @(link_name = "g_closure_invalidate")
    closure_invalidate :: proc(closure: ^Closure) ---

    @(link_name = "g_closure_invoke")
    closure_invoke :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_generic")
    cclosure_marshal_generic :: proc(closure: ^Closure, return_gvalue: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_generic_va")
    cclosure_marshal_generic_va :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args_list: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__VOID")
    cclosure_marshal_VOID__VOID :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__VOIDv")
    cclosure_marshal_VOID__VOIDv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__BOOLEAN")
    cclosure_marshal_VOID__BOOLEAN :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__BOOLEANv")
    cclosure_marshal_VOID__BOOLEANv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__CHAR")
    cclosure_marshal_VOID__CHAR :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__CHARv")
    cclosure_marshal_VOID__CHARv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__UCHAR")
    cclosure_marshal_VOID__UCHAR :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__UCHARv")
    cclosure_marshal_VOID__UCHARv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__INT")
    cclosure_marshal_VOID__INT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__INTv")
    cclosure_marshal_VOID__INTv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__UINT")
    cclosure_marshal_VOID__UINT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__UINTv")
    cclosure_marshal_VOID__UINTv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__LONG")
    cclosure_marshal_VOID__LONG :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__LONGv")
    cclosure_marshal_VOID__LONGv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__ULONG")
    cclosure_marshal_VOID__ULONG :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__ULONGv")
    cclosure_marshal_VOID__ULONGv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__ENUM")
    cclosure_marshal_VOID__ENUM :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__ENUMv")
    cclosure_marshal_VOID__ENUMv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__FLAGS")
    cclosure_marshal_VOID__FLAGS :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__FLAGSv")
    cclosure_marshal_VOID__FLAGSv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__FLOAT")
    cclosure_marshal_VOID__FLOAT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__FLOATv")
    cclosure_marshal_VOID__FLOATv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__DOUBLE")
    cclosure_marshal_VOID__DOUBLE :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__DOUBLEv")
    cclosure_marshal_VOID__DOUBLEv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__STRING")
    cclosure_marshal_VOID__STRING :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__STRINGv")
    cclosure_marshal_VOID__STRINGv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__PARAM")
    cclosure_marshal_VOID__PARAM :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__PARAMv")
    cclosure_marshal_VOID__PARAMv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__BOXED")
    cclosure_marshal_VOID__BOXED :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__BOXEDv")
    cclosure_marshal_VOID__BOXEDv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__POINTER")
    cclosure_marshal_VOID__POINTER :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__POINTERv")
    cclosure_marshal_VOID__POINTERv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__OBJECT")
    cclosure_marshal_VOID__OBJECT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__OBJECTv")
    cclosure_marshal_VOID__OBJECTv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__VARIANT")
    cclosure_marshal_VOID__VARIANT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__VARIANTv")
    cclosure_marshal_VOID__VARIANTv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_VOID__UINT_POINTER")
    cclosure_marshal_VOID__UINT_POINTER :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_VOID__UINT_POINTERv")
    cclosure_marshal_VOID__UINT_POINTERv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_BOOLEAN__FLAGS")
    cclosure_marshal_BOOLEAN__FLAGS :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_BOOLEAN__FLAGSv")
    cclosure_marshal_BOOLEAN__FLAGSv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_STRING__OBJECT_POINTER")
    cclosure_marshal_STRING__OBJECT_POINTER :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_STRING__OBJECT_POINTERv")
    cclosure_marshal_STRING__OBJECT_POINTERv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_cclosure_marshal_BOOLEAN__BOXED_BOXED")
    cclosure_marshal_BOOLEAN__BOXED_BOXED :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---

    @(link_name = "g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv")
    cclosure_marshal_BOOLEAN__BOXED_BOXEDv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---

    @(link_name = "g_signal_newv")
    signal_newv :: proc(signal_name: cstring, itype: Type, signal_flags: SignalFlags, class_closure: ^Closure, accumulator: SignalAccumulator, accu_data: glib.pointer, c_marshaller: SignalCMarshaller, return_type: Type, n_params: glib.uint_, param_types: [^]Type) -> glib.uint_ ---

    @(link_name = "g_signal_new_valist")
    signal_new_valist :: proc(signal_name: cstring, itype: Type, signal_flags: SignalFlags, class_closure: ^Closure, accumulator: SignalAccumulator, accu_data: glib.pointer, c_marshaller: SignalCMarshaller, return_type: Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> glib.uint_ ---

    @(link_name = "g_signal_new")
    signal_new :: proc(signal_name: cstring, itype: Type, signal_flags: SignalFlags, class_offset: glib.uint_, accumulator: SignalAccumulator, accu_data: glib.pointer, c_marshaller: SignalCMarshaller, return_type: Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> glib.uint_ ---

    @(link_name = "g_signal_new_class_handler")
    signal_new_class_handler :: proc(signal_name: cstring, itype: Type, signal_flags: SignalFlags, class_handler: Callback, accumulator: SignalAccumulator, accu_data: glib.pointer, c_marshaller: SignalCMarshaller, return_type: Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> glib.uint_ ---

    @(link_name = "g_signal_set_va_marshaller")
    signal_set_va_marshaller :: proc(signal_id: glib.uint_, instance_type: Type, va_marshaller: SignalCVaMarshaller) ---

    @(link_name = "g_signal_emitv")
    signal_emitv :: proc(instance_and_params: [^]Value, signal_id: glib.uint_, detail: glib.Quark, return_value: ^Value) ---

    @(link_name = "g_signal_emit_valist")
    signal_emit_valist :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark, #c_vararg var_args: ..any) ---

    @(link_name = "g_signal_emit")
    signal_emit :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark, #c_vararg var_args: ..any) ---

    @(link_name = "g_signal_emit_by_name")
    signal_emit_by_name :: proc(instance: glib.pointer, detailed_signal: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_signal_lookup")
    signal_lookup :: proc(name: cstring, itype: Type) -> glib.uint_ ---

    @(link_name = "g_signal_name")
    signal_name :: proc(signal_id: glib.uint_) -> cstring ---

    @(link_name = "g_signal_query")
    signal_query :: proc(signal_id: glib.uint_, query: ^SignalQuery) ---

    @(link_name = "g_signal_list_ids")
    signal_list_ids :: proc(itype: Type, n_ids: [^]glib.uint_) -> ^glib.uint_ ---

    @(link_name = "g_signal_is_valid_name")
    signal_is_valid_name :: proc(name: cstring) -> glib.boolean ---

    @(link_name = "g_signal_parse_name")
    signal_parse_name :: proc(detailed_signal: cstring, itype: Type, signal_id_p: ^glib.uint_, detail_p: ^glib.Quark, force_detail_quark: glib.boolean) -> glib.boolean ---

    @(link_name = "g_signal_get_invocation_hint")
    signal_get_invocation_hint :: proc(instance: glib.pointer) -> ^SignalInvocationHint ---

    @(link_name = "g_signal_stop_emission")
    signal_stop_emission :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark) ---

    @(link_name = "g_signal_stop_emission_by_name")
    signal_stop_emission_by_name :: proc(instance: glib.pointer, detailed_signal: cstring) ---

    @(link_name = "g_signal_add_emission_hook")
    signal_add_emission_hook :: proc(signal_id: glib.uint_, detail: glib.Quark, hook_func: SignalEmissionHook, hook_data: glib.pointer, data_destroy: glib.DestroyNotify) -> glib.ulong ---

    @(link_name = "g_signal_remove_emission_hook")
    signal_remove_emission_hook :: proc(signal_id: glib.uint_, hook_id: glib.ulong) ---

    @(link_name = "g_signal_has_handler_pending")
    signal_has_handler_pending :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark, may_be_blocked: glib.boolean) -> glib.boolean ---

    @(link_name = "g_signal_connect_closure_by_id")
    signal_connect_closure_by_id :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, after: glib.boolean) -> glib.ulong ---

    @(link_name = "g_signal_connect_closure")
    signal_connect_closure :: proc(instance: glib.pointer, detailed_signal: cstring, closure: ^Closure, after: glib.boolean) -> glib.ulong ---

    @(link_name = "g_signal_connect_data")
    signal_connect_data :: proc(instance: glib.pointer, detailed_signal: cstring, c_handler: Callback, data: glib.pointer, destroy_data: ClosureNotify, connect_flags: ConnectFlags) -> glib.ulong ---

    @(link_name = "g_signal_handler_block")
    signal_handler_block :: proc(instance: glib.pointer, handler_id: glib.ulong) ---

    @(link_name = "g_signal_handler_unblock")
    signal_handler_unblock :: proc(instance: glib.pointer, handler_id: glib.ulong) ---

    @(link_name = "g_signal_handler_disconnect")
    signal_handler_disconnect :: proc(instance: glib.pointer, handler_id: glib.ulong) ---

    @(link_name = "g_signal_handler_is_connected")
    signal_handler_is_connected :: proc(instance: glib.pointer, handler_id: glib.ulong) -> glib.boolean ---

    @(link_name = "g_signal_handler_find")
    signal_handler_find :: proc(instance: glib.pointer, mask: SignalMatchType, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, func: glib.pointer, data: glib.pointer) -> glib.ulong ---

    @(link_name = "g_signal_handlers_block_matched")
    signal_handlers_block_matched :: proc(instance: glib.pointer, mask: SignalMatchType, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, func: glib.pointer, data: glib.pointer) -> glib.uint_ ---

    @(link_name = "g_signal_handlers_unblock_matched")
    signal_handlers_unblock_matched :: proc(instance: glib.pointer, mask: SignalMatchType, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, func: glib.pointer, data: glib.pointer) -> glib.uint_ ---

    @(link_name = "g_signal_handlers_disconnect_matched")
    signal_handlers_disconnect_matched :: proc(instance: glib.pointer, mask: SignalMatchType, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, func: glib.pointer, data: glib.pointer) -> glib.uint_ ---

    @(link_name = "g_clear_signal_handler")
    clear_signal_handler :: proc(handler_id_ptr: ^glib.ulong, instance: glib.pointer) ---

    @(link_name = "g_signal_override_class_closure")
    signal_override_class_closure :: proc(signal_id: glib.uint_, instance_type: Type, class_closure: ^Closure) ---

    @(link_name = "g_signal_override_class_handler")
    signal_override_class_handler :: proc(signal_name: cstring, instance_type: Type, class_handler: Callback) ---

    @(link_name = "g_signal_chain_from_overridden")
    signal_chain_from_overridden :: proc(instance_and_params: [^]Value, return_value: ^Value) ---

    @(link_name = "g_signal_chain_from_overridden_handler")
    signal_chain_from_overridden_handler :: proc(instance: glib.pointer, #c_vararg var_args: ..any) ---

    @(link_name = "g_signal_accumulator_true_handled")
    signal_accumulator_true_handled :: proc(ihint: ^SignalInvocationHint, return_accu: ^Value, handler_return: ^Value, dummy: glib.pointer) -> glib.boolean ---

    @(link_name = "g_signal_accumulator_first_wins")
    signal_accumulator_first_wins :: proc(ihint: ^SignalInvocationHint, return_accu: ^Value, handler_return: ^Value, dummy: glib.pointer) -> glib.boolean ---

    @(link_name = "g_signal_handlers_destroy")
    signal_handlers_destroy :: proc(instance: glib.pointer) ---

    @(link_name = "_g_signals_destroy")
    _g_signals_destroy :: proc(itype: Type) ---

    @(link_name = "g_date_get_type")
    date_get_type :: proc() -> Type ---

    @(link_name = "g_strv_get_type")
    strv_get_type :: proc() -> Type ---

    @(link_name = "g_gstring_get_type")
    gstring_get_type :: proc() -> Type ---

    @(link_name = "g_hash_table_get_type")
    hash_table_get_type :: proc() -> Type ---

    @(link_name = "g_array_get_type")
    array_get_type :: proc() -> Type ---

    @(link_name = "g_byte_array_get_type")
    byte_array_get_type :: proc() -> Type ---

    @(link_name = "g_ptr_array_get_type")
    ptr_array_get_type :: proc() -> Type ---

    @(link_name = "g_bytes_get_type")
    bytes_get_type :: proc() -> Type ---

    @(link_name = "g_variant_type_get_gtype")
    variant_type_get_gtype :: proc() -> Type ---

    @(link_name = "g_regex_get_type")
    regex_get_type :: proc() -> Type ---

    @(link_name = "g_match_info_get_type")
    match_info_get_type :: proc() -> Type ---

    @(link_name = "g_error_get_type")
    error_get_type :: proc() -> Type ---

    @(link_name = "g_date_time_get_type")
    date_time_get_type :: proc() -> Type ---

    @(link_name = "g_time_zone_get_type")
    time_zone_get_type :: proc() -> Type ---

    @(link_name = "g_io_channel_get_type")
    io_channel_get_type :: proc() -> Type ---

    @(link_name = "g_io_condition_get_type")
    io_condition_get_type :: proc() -> Type ---

    @(link_name = "g_variant_builder_get_type")
    variant_builder_get_type :: proc() -> Type ---

    @(link_name = "g_variant_dict_get_type")
    variant_dict_get_type :: proc() -> Type ---

    @(link_name = "g_key_file_get_type")
    key_file_get_type :: proc() -> Type ---

    @(link_name = "g_main_loop_get_type")
    main_loop_get_type :: proc() -> Type ---

    @(link_name = "g_main_context_get_type")
    main_context_get_type :: proc() -> Type ---

    @(link_name = "g_source_get_type")
    source_get_type :: proc() -> Type ---

    @(link_name = "g_pollfd_get_type")
    pollfd_get_type :: proc() -> Type ---

    @(link_name = "g_thread_get_type")
    thread_get_type :: proc() -> Type ---

    @(link_name = "g_checksum_get_type")
    checksum_get_type :: proc() -> Type ---

    @(link_name = "g_markup_parse_context_get_type")
    markup_parse_context_get_type :: proc() -> Type ---

    @(link_name = "g_mapped_file_get_type")
    mapped_file_get_type :: proc() -> Type ---

    @(link_name = "g_option_group_get_type")
    option_group_get_type :: proc() -> Type ---

    @(link_name = "g_uri_get_type")
    uri_get_type :: proc() -> Type ---

    @(link_name = "g_tree_get_type")
    tree_get_type :: proc() -> Type ---

    @(link_name = "g_pattern_spec_get_type")
    pattern_spec_get_type :: proc() -> Type ---

    @(link_name = "g_bookmark_file_get_type")
    bookmark_file_get_type :: proc() -> Type ---

    @(link_name = "g_hmac_get_type")
    hmac_get_type :: proc() -> Type ---

    @(link_name = "g_dir_get_type")
    dir_get_type :: proc() -> Type ---

    @(link_name = "g_rand_get_type")
    rand_get_type :: proc() -> Type ---

    @(link_name = "g_strv_builder_get_type")
    strv_builder_get_type :: proc() -> Type ---

    @(link_name = "g_variant_get_gtype")
    variant_get_gtype :: proc() -> Type ---

    @(link_name = "g_boxed_copy")
    boxed_copy :: proc(boxed_type: Type, src_boxed: glib.constpointer) -> glib.pointer ---

    @(link_name = "g_boxed_free")
    boxed_free :: proc(boxed_type: Type, boxed: glib.pointer) ---

    @(link_name = "g_value_set_boxed")
    value_set_boxed :: proc(value: ^Value, v_boxed: glib.constpointer) ---

    @(link_name = "g_value_set_static_boxed")
    value_set_static_boxed :: proc(value: ^Value, v_boxed: glib.constpointer) ---

    @(link_name = "g_value_take_boxed")
    value_take_boxed :: proc(value: ^Value, v_boxed: glib.constpointer) ---

    @(link_name = "g_value_set_boxed_take_ownership")
    value_set_boxed_take_ownership :: proc(value: ^Value, v_boxed: glib.constpointer) ---

    @(link_name = "g_value_get_boxed")
    value_get_boxed :: proc(value: ^Value) -> glib.pointer ---

    @(link_name = "g_value_dup_boxed")
    value_dup_boxed :: proc(value: ^Value) -> glib.pointer ---

    @(link_name = "g_boxed_type_register_static")
    boxed_type_register_static :: proc(name: cstring, boxed_copy: BoxedCopyFunc, boxed_free: BoxedFreeFunc) -> Type ---

    @(link_name = "g_closure_get_type")
    closure_get_type :: proc() -> Type ---

    @(link_name = "g_value_get_type")
    value_get_type :: proc() -> Type ---

    @(link_name = "g_initially_unowned_get_type")
    initially_unowned_get_type :: proc() -> Type ---

    @(link_name = "g_object_class_install_property")
    object_class_install_property :: proc(oclass: ^ObjectClass, property_id: glib.uint_, pspec: ^ParamSpec) ---

    @(link_name = "g_object_class_find_property")
    object_class_find_property :: proc(oclass: ^ObjectClass, property_name: cstring) -> ^ParamSpec ---

    @(link_name = "g_object_class_list_properties")
    object_class_list_properties :: proc(oclass: ^ObjectClass, n_properties: [^]glib.uint_) -> ^^ParamSpec ---

    @(link_name = "g_object_class_override_property")
    object_class_override_property :: proc(oclass: ^ObjectClass, property_id: glib.uint_, name: cstring) ---

    @(link_name = "g_object_class_install_properties")
    object_class_install_properties :: proc(oclass: ^ObjectClass, n_pspecs: glib.uint_, pspecs: [^]^ParamSpec) ---

    @(link_name = "g_object_interface_install_property")
    object_interface_install_property :: proc(g_iface: glib.pointer, pspec: ^ParamSpec) ---

    @(link_name = "g_object_interface_find_property")
    object_interface_find_property :: proc(g_iface: glib.pointer, property_name: cstring) -> ^ParamSpec ---

    @(link_name = "g_object_interface_list_properties")
    object_interface_list_properties :: proc(g_iface: glib.pointer, n_properties_p: ^glib.uint_) -> ^^ParamSpec ---

    @(link_name = "g_object_get_type")
    object_get_type :: proc() -> Type ---

    @(link_name = "g_object_new")
    object_new :: proc(object_type: Type, first_property_name: cstring, #c_vararg var_args: ..any) -> glib.pointer ---

    @(link_name = "g_object_new_with_properties")
    object_new_with_properties :: proc(object_type: Type, n_properties: glib.uint_, names: [^]cstring, values: [^]Value) -> ^Object ---

    @(link_name = "g_object_newv")
    object_newv :: proc(object_type: Type, n_parameters: glib.uint_, parameters: [^]Parameter) -> glib.pointer ---

    @(link_name = "g_object_new_valist")
    object_new_valist :: proc(object_type: Type, first_property_name: cstring, #c_vararg var_args: ..any) -> ^Object ---

    @(link_name = "g_object_get")
    object_get :: proc(object: glib.pointer, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_object_connect")
    object_connect :: proc(object: glib.pointer, signal_spec: cstring, #c_vararg var_args: ..any) -> glib.pointer ---

    @(link_name = "g_object_disconnect")
    object_disconnect :: proc(object: glib.pointer, signal_spec: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_object_setv")
    object_setv :: proc(object: ^Object, n_properties: glib.uint_, names: [^]cstring, values: [^]Value) ---

    @(link_name = "g_object_set_valist")
    object_set_valist :: proc(object: ^Object, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_object_getv")
    object_getv :: proc(object: ^Object, n_properties: glib.uint_, names: [^]cstring, values: [^]Value) ---

    @(link_name = "g_object_get_valist")
    object_get_valist :: proc(object: ^Object, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_object_set_property")
    object_set_property :: proc(object: ^Object, property_name: cstring, value: ^Value) ---

    @(link_name = "g_object_get_property")
    object_get_property :: proc(object: ^Object, property_name: cstring, value: ^Value) ---

    @(link_name = "g_object_freeze_notify")
    object_freeze_notify :: proc(object: ^Object) ---

    @(link_name = "g_object_notify")
    object_notify :: proc(object: ^Object, property_name: cstring) ---

    @(link_name = "g_object_notify_by_pspec")
    object_notify_by_pspec :: proc(object: ^Object, pspec: ^ParamSpec) ---

    @(link_name = "g_object_thaw_notify")
    object_thaw_notify :: proc(object: ^Object) ---

    @(link_name = "g_object_is_floating")
    object_is_floating :: proc(object: glib.pointer) -> glib.boolean ---

    @(link_name = "g_object_ref_sink")
    object_ref_sink :: proc(object: glib.pointer) -> glib.pointer ---

    @(link_name = "g_object_take_ref")
    object_take_ref :: proc(object: glib.pointer) -> glib.pointer ---

    @(link_name = "g_object_ref")
    object_ref :: proc(object: glib.pointer) -> glib.pointer ---

    @(link_name = "g_object_unref")
    object_unref :: proc(object: glib.pointer) ---

    @(link_name = "g_object_weak_ref")
    object_weak_ref :: proc(object: ^Object, notify: WeakNotify, data: glib.pointer) ---

    @(link_name = "g_object_weak_unref")
    object_weak_unref :: proc(object: ^Object, notify: WeakNotify, data: glib.pointer) ---

    @(link_name = "g_object_add_weak_pointer")
    object_add_weak_pointer :: proc(object: ^Object, weak_pointer_location: ^glib.pointer) ---

    @(link_name = "g_object_remove_weak_pointer")
    object_remove_weak_pointer :: proc(object: ^Object, weak_pointer_location: ^glib.pointer) ---

    @(link_name = "g_object_add_toggle_ref")
    object_add_toggle_ref :: proc(object: ^Object, notify: ToggleNotify, data: glib.pointer) ---

    @(link_name = "g_object_remove_toggle_ref")
    object_remove_toggle_ref :: proc(object: ^Object, notify: ToggleNotify, data: glib.pointer) ---

    @(link_name = "g_object_get_qdata")
    object_get_qdata :: proc(object: ^Object, quark: glib.Quark) -> glib.pointer ---

    @(link_name = "g_object_set_qdata")
    object_set_qdata :: proc(object: ^Object, quark: glib.Quark, data: glib.pointer) ---

    @(link_name = "g_object_set_qdata_full")
    object_set_qdata_full :: proc(object: ^Object, quark: glib.Quark, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "g_object_steal_qdata")
    object_steal_qdata :: proc(object: ^Object, quark: glib.Quark) -> glib.pointer ---

    @(link_name = "g_object_dup_qdata")
    object_dup_qdata :: proc(object: ^Object, quark: glib.Quark, dup_func: glib.DuplicateFunc, user_data: glib.pointer) -> glib.pointer ---

    @(link_name = "g_object_replace_qdata")
    object_replace_qdata :: proc(object: ^Object, quark: glib.Quark, oldval: glib.pointer, newval: glib.pointer, destroy: glib.DestroyNotify, old_destroy: ^glib.DestroyNotify) -> glib.boolean ---

    @(link_name = "g_object_get_data")
    object_get_data :: proc(object: ^Object, key: cstring) -> glib.pointer ---

    @(link_name = "g_object_set_data")
    object_set_data :: proc(object: ^Object, key: cstring, data: glib.pointer) ---

    @(link_name = "g_object_set_data_full")
    object_set_data_full :: proc(object: ^Object, key: cstring, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "g_object_steal_data")
    object_steal_data :: proc(object: ^Object, key: cstring) -> glib.pointer ---

    @(link_name = "g_object_dup_data")
    object_dup_data :: proc(object: ^Object, key: cstring, dup_func: glib.DuplicateFunc, user_data: glib.pointer) -> glib.pointer ---

    @(link_name = "g_object_replace_data")
    object_replace_data :: proc(object: ^Object, key: cstring, oldval: glib.pointer, newval: glib.pointer, destroy: glib.DestroyNotify, old_destroy: ^glib.DestroyNotify) -> glib.boolean ---

    @(link_name = "g_object_watch_closure")
    object_watch_closure :: proc(object: ^Object, closure: ^Closure) ---

    @(link_name = "g_cclosure_new_object")
    cclosure_new_object :: proc(callback_func: Callback, object: ^Object) -> ^Closure ---

    @(link_name = "g_cclosure_new_object_swap")
    cclosure_new_object_swap :: proc(callback_func: Callback, object: ^Object) -> ^Closure ---

    @(link_name = "g_closure_new_object")
    closure_new_object :: proc(sizeof_closure: glib.uint_, object: ^Object) -> ^Closure ---

    @(link_name = "g_value_set_object")
    value_set_object :: proc(value: ^Value, v_object: glib.pointer) ---

    @(link_name = "g_value_get_object")
    value_get_object :: proc(value: ^Value) -> glib.pointer ---

    @(link_name = "g_value_dup_object")
    value_dup_object :: proc(value: ^Value) -> glib.pointer ---

    @(link_name = "g_signal_connect_object")
    signal_connect_object :: proc(instance: glib.pointer, detailed_signal: cstring, c_handler: Callback, gobject: glib.pointer, connect_flags: ConnectFlags) -> glib.ulong ---

    @(link_name = "g_object_force_floating")
    object_force_floating :: proc(object: ^Object) ---

    @(link_name = "g_object_run_dispose")
    object_run_dispose :: proc(object: ^Object) ---

    @(link_name = "g_value_take_object")
    value_take_object :: proc(value: ^Value, v_object: glib.pointer) ---

    @(link_name = "g_value_set_object_take_ownership")
    value_set_object_take_ownership :: proc(value: ^Value, v_object: glib.pointer) ---

    @(link_name = "g_object_compat_control")
    object_compat_control :: proc(what: glib.size, data: glib.pointer) -> glib.size ---

    @(link_name = "g_clear_object")
    clear_object :: proc(object_ptr: ^^Object) ---

    @(link_name = "g_weak_ref_init")
    weak_ref_init :: proc(weak_ref: ^WeakRef, object: glib.pointer) ---

    @(link_name = "g_weak_ref_clear")
    weak_ref_clear :: proc(weak_ref: ^WeakRef) ---

    @(link_name = "g_weak_ref_get")
    weak_ref_get :: proc(weak_ref: ^WeakRef) -> glib.pointer ---

    @(link_name = "g_weak_ref_set")
    weak_ref_set :: proc(weak_ref: ^WeakRef, object: glib.pointer) ---

    @(link_name = "g_binding_flags_get_type")
    binding_flags_get_type :: proc() -> Type ---

    @(link_name = "g_binding_get_type")
    binding_get_type :: proc() -> Type ---

    @(link_name = "g_binding_get_flags")
    binding_get_flags :: proc(binding: ^Binding) -> BindingFlags ---

    @(link_name = "g_binding_get_source")
    binding_get_source :: proc(binding: ^Binding) -> ^Object ---

    @(link_name = "g_binding_dup_source")
    binding_dup_source :: proc(binding: ^Binding) -> ^Object ---

    @(link_name = "g_binding_get_target")
    binding_get_target :: proc(binding: ^Binding) -> ^Object ---

    @(link_name = "g_binding_dup_target")
    binding_dup_target :: proc(binding: ^Binding) -> ^Object ---

    @(link_name = "g_binding_get_source_property")
    binding_get_source_property :: proc(binding: ^Binding) -> cstring ---

    @(link_name = "g_binding_get_target_property")
    binding_get_target_property :: proc(binding: ^Binding) -> cstring ---

    @(link_name = "g_binding_unbind")
    binding_unbind :: proc(binding: ^Binding) ---

    @(link_name = "g_object_bind_property")
    object_bind_property :: proc(source: glib.pointer, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags) -> ^Binding ---

    @(link_name = "g_object_bind_property_full")
    object_bind_property_full :: proc(source: glib.pointer, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags, transform_to: BindingTransformFunc, transform_from: BindingTransformFunc, user_data: glib.pointer, notify: glib.DestroyNotify) -> ^Binding ---

    @(link_name = "g_object_bind_property_with_closures")
    object_bind_property_with_closures :: proc(source: glib.pointer, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags, transform_to: ^Closure, transform_from: ^Closure) -> ^Binding ---

    @(link_name = "g_binding_group_get_type")
    binding_group_get_type :: proc() -> Type ---

    @(link_name = "g_binding_group_new")
    binding_group_new :: proc() -> ^BindingGroup ---

    @(link_name = "g_binding_group_dup_source")
    binding_group_dup_source :: proc(self: ^BindingGroup) -> glib.pointer ---

    @(link_name = "g_binding_group_set_source")
    binding_group_set_source :: proc(self: ^BindingGroup, source: glib.pointer) ---

    @(link_name = "g_binding_group_bind")
    binding_group_bind :: proc(self: ^BindingGroup, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags) ---

    @(link_name = "g_binding_group_bind_full")
    binding_group_bind_full :: proc(self: ^BindingGroup, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags, transform_to: BindingTransformFunc, transform_from: BindingTransformFunc, user_data: glib.pointer, user_data_destroy: glib.DestroyNotify) ---

    @(link_name = "g_binding_group_bind_with_closures")
    binding_group_bind_with_closures :: proc(self: ^BindingGroup, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags, transform_to: ^Closure, transform_from: ^Closure) ---

    @(link_name = "g_enum_get_value")
    enum_get_value :: proc(enum_class: ^EnumClass, value: glib.int_) -> ^EnumValue ---

    @(link_name = "g_enum_get_value_by_name")
    enum_get_value_by_name :: proc(enum_class: ^EnumClass, name: cstring) -> ^EnumValue ---

    @(link_name = "g_enum_get_value_by_nick")
    enum_get_value_by_nick :: proc(enum_class: ^EnumClass, nick: cstring) -> ^EnumValue ---

    @(link_name = "g_flags_get_first_value")
    flags_get_first_value :: proc(flags_class: ^FlagsClass, value: glib.uint_) -> ^FlagsValue ---

    @(link_name = "g_flags_get_value_by_name")
    flags_get_value_by_name :: proc(flags_class: ^FlagsClass, name: cstring) -> ^FlagsValue ---

    @(link_name = "g_flags_get_value_by_nick")
    flags_get_value_by_nick :: proc(flags_class: ^FlagsClass, nick: cstring) -> ^FlagsValue ---

    @(link_name = "g_enum_to_string")
    enum_to_string :: proc(g_enum_type: Type, value: glib.int_) -> cstring ---

    @(link_name = "g_flags_to_string")
    flags_to_string :: proc(flags_type: Type, value: glib.uint_) -> cstring ---

    @(link_name = "g_value_set_enum")
    value_set_enum :: proc(value: ^Value, v_enum: glib.int_) ---

    @(link_name = "g_value_get_enum")
    value_get_enum :: proc(value: ^Value) -> glib.int_ ---

    @(link_name = "g_value_set_flags")
    value_set_flags :: proc(value: ^Value, v_flags: glib.uint_) ---

    @(link_name = "g_value_get_flags")
    value_get_flags :: proc(value: ^Value) -> glib.uint_ ---

    @(link_name = "g_enum_register_static")
    enum_register_static :: proc(name: cstring, const_static_values: [^]EnumValue) -> Type ---

    @(link_name = "g_flags_register_static")
    flags_register_static :: proc(name: cstring, const_static_values: [^]FlagsValue) -> Type ---

    @(link_name = "g_enum_complete_type_info")
    enum_complete_type_info :: proc(g_enum_type: Type, info: ^TypeInfo, const_values: [^]EnumValue) ---

    @(link_name = "g_flags_complete_type_info")
    flags_complete_type_info :: proc(g_flags_type: Type, info: ^TypeInfo, const_values: [^]FlagsValue) ---

    @(link_name = "g_unicode_type_get_type")
    unicode_type_get_type :: proc() -> Type ---

    @(link_name = "g_unicode_break_type_get_type")
    unicode_break_type_get_type :: proc() -> Type ---

    @(link_name = "g_unicode_script_get_type")
    unicode_script_get_type :: proc() -> Type ---

    @(link_name = "g_normalize_mode_get_type")
    normalize_mode_get_type :: proc() -> Type ---

    @(link_name = "g_param_spec_char")
    param_spec_char :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.int8, maximum: glib.int8, default_value: glib.int8, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_uchar")
    param_spec_uchar :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.uint8, maximum: glib.uint8, default_value: glib.uint8, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_boolean")
    param_spec_boolean :: proc(name: cstring, nick: cstring, blurb: cstring, default_value: glib.boolean, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_int")
    param_spec_int :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.int_, maximum: glib.int_, default_value: glib.int_, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_uint")
    param_spec_uint :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.uint_, maximum: glib.uint_, default_value: glib.uint_, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_long")
    param_spec_long :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.long, maximum: glib.long, default_value: glib.long, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_ulong")
    param_spec_ulong :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.ulong, maximum: glib.ulong, default_value: glib.ulong, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_int64")
    param_spec_int64 :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.int64, maximum: glib.int64, default_value: glib.int64, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_uint64")
    param_spec_uint64 :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.uint64, maximum: glib.uint64, default_value: glib.uint64, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_unichar")
    param_spec_unichar :: proc(name: cstring, nick: cstring, blurb: cstring, default_value: glib.unichar, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_enum")
    param_spec_enum :: proc(name: cstring, nick: cstring, blurb: cstring, enum_type: Type, default_value: glib.int_, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_flags")
    param_spec_flags :: proc(name: cstring, nick: cstring, blurb: cstring, flags_type: Type, default_value: glib.uint_, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_float")
    param_spec_float :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.float, maximum: glib.float, default_value: glib.float, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_double")
    param_spec_double :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.double, maximum: glib.double, default_value: glib.double, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_string")
    param_spec_string :: proc(name: cstring, nick: cstring, blurb: cstring, default_value: cstring, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_param")
    param_spec_param :: proc(name: cstring, nick: cstring, blurb: cstring, param_type: Type, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_boxed")
    param_spec_boxed :: proc(name: cstring, nick: cstring, blurb: cstring, boxed_type: Type, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_pointer")
    param_spec_pointer :: proc(name: cstring, nick: cstring, blurb: cstring, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_value_array")
    param_spec_value_array :: proc(name: cstring, nick: cstring, blurb: cstring, element_spec: ^ParamSpec, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_object")
    param_spec_object :: proc(name: cstring, nick: cstring, blurb: cstring, object_type: Type, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_override")
    param_spec_override :: proc(name: cstring, overridden: ^ParamSpec) -> ^ParamSpec ---

    @(link_name = "g_param_spec_gtype")
    param_spec_gtype :: proc(name: cstring, nick: cstring, blurb: cstring, is_a_type: Type, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_variant")
    param_spec_variant :: proc(name: cstring, nick: cstring, blurb: cstring, type: ^glib.VariantType, default_value: ^glib.Variant, flags: ParamFlags) -> ^ParamSpec ---

    @(link_name = "g_param_spec_types")
    param_spec_types: [^]Type

    @(link_name = "g_signal_group_get_type")
    signal_group_get_type :: proc() -> Type ---

    @(link_name = "g_signal_group_new")
    signal_group_new :: proc(target_type: Type) -> ^SignalGroup ---

    @(link_name = "g_signal_group_set_target")
    signal_group_set_target :: proc(self: ^SignalGroup, target: glib.pointer) ---

    @(link_name = "g_signal_group_dup_target")
    signal_group_dup_target :: proc(self: ^SignalGroup) -> glib.pointer ---

    @(link_name = "g_signal_group_block")
    signal_group_block :: proc(self: ^SignalGroup) ---

    @(link_name = "g_signal_group_unblock")
    signal_group_unblock :: proc(self: ^SignalGroup) ---

    @(link_name = "g_signal_group_connect_closure")
    signal_group_connect_closure :: proc(self: ^SignalGroup, detailed_signal: cstring, closure: ^Closure, after: glib.boolean) ---

    @(link_name = "g_signal_group_connect_object")
    signal_group_connect_object :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, object: glib.pointer, flags: ConnectFlags) ---

    @(link_name = "g_signal_group_connect_data")
    signal_group_connect_data :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, data: glib.pointer, notify: ClosureNotify, flags: ConnectFlags) ---

    @(link_name = "g_signal_group_connect")
    signal_group_connect :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, data: glib.pointer) ---

    @(link_name = "g_signal_group_connect_after")
    signal_group_connect_after :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, data: glib.pointer) ---

    @(link_name = "g_signal_group_connect_swapped")
    signal_group_connect_swapped :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, data: glib.pointer) ---

    @(link_name = "g_source_set_closure")
    source_set_closure :: proc(source: ^glib.Source, closure: ^Closure) ---

    @(link_name = "g_source_set_dummy_callback")
    source_set_dummy_callback :: proc(source: ^glib.Source) ---

    @(link_name = "g_type_module_get_type")
    type_module_get_type :: proc() -> Type ---

    @(link_name = "g_type_module_use")
    type_module_use :: proc(module: ^TypeModule) -> glib.boolean ---

    @(link_name = "g_type_module_unuse")
    type_module_unuse :: proc(module: ^TypeModule) ---

    @(link_name = "g_type_module_set_name")
    type_module_set_name :: proc(module: ^TypeModule, name: cstring) ---

    @(link_name = "g_type_module_register_type")
    type_module_register_type :: proc(module: ^TypeModule, parent_type: Type, type_name: cstring, type_info: ^TypeInfo, flags: TypeFlags) -> Type ---

    @(link_name = "g_type_module_add_interface")
    type_module_add_interface :: proc(module: ^TypeModule, instance_type: Type, interface_type: Type, interface_info: ^InterfaceInfo) ---

    @(link_name = "g_type_module_register_enum")
    type_module_register_enum :: proc(module: ^TypeModule, name: cstring, const_static_values: [^]EnumValue) -> Type ---

    @(link_name = "g_type_module_register_flags")
    type_module_register_flags :: proc(module: ^TypeModule, name: cstring, const_static_values: [^]FlagsValue) -> Type ---

    @(link_name = "g_type_plugin_get_type")
    type_plugin_get_type :: proc() -> Type ---

    @(link_name = "g_type_plugin_use")
    type_plugin_use :: proc(plugin: ^TypePlugin) ---

    @(link_name = "g_type_plugin_unuse")
    type_plugin_unuse :: proc(plugin: ^TypePlugin) ---

    @(link_name = "g_type_plugin_complete_type_info")
    type_plugin_complete_type_info :: proc(plugin: ^TypePlugin, g_type: Type, info: ^TypeInfo, value_table: ^TypeValueTable) ---

    @(link_name = "g_type_plugin_complete_interface_info")
    type_plugin_complete_interface_info :: proc(plugin: ^TypePlugin, instance_type: Type, interface_type: Type, info: ^InterfaceInfo) ---

    @(link_name = "g_value_array_get_type")
    value_array_get_type :: proc() -> Type ---

    @(link_name = "g_value_array_get_nth")
    value_array_get_nth :: proc(value_array: ^ValueArray, index_: glib.uint_) -> ^Value ---

    @(link_name = "g_value_array_new")
    value_array_new :: proc(n_prealloced: glib.uint_) -> ^ValueArray ---

    @(link_name = "g_value_array_free")
    value_array_free :: proc(value_array: ^ValueArray) ---

    @(link_name = "g_value_array_copy")
    value_array_copy :: proc(value_array: ^ValueArray) -> ^ValueArray ---

    @(link_name = "g_value_array_prepend")
    value_array_prepend :: proc(value_array: ^ValueArray, value: ^Value) -> ^ValueArray ---

    @(link_name = "g_value_array_append")
    value_array_append :: proc(value_array: ^ValueArray, value: ^Value) -> ^ValueArray ---

    @(link_name = "g_value_array_insert")
    value_array_insert :: proc(value_array: ^ValueArray, index_: glib.uint_, value: ^Value) -> ^ValueArray ---

    @(link_name = "g_value_array_remove")
    value_array_remove :: proc(value_array: ^ValueArray, index_: glib.uint_) -> ^ValueArray ---

    @(link_name = "g_value_array_sort")
    value_array_sort :: proc(value_array: ^ValueArray, compare_func: glib.CompareFunc) -> ^ValueArray ---

    @(link_name = "g_value_array_sort_with_data")
    value_array_sort_with_data :: proc(value_array: ^ValueArray, compare_func: glib.CompareDataFunc, user_data: glib.pointer) -> ^ValueArray ---

    @(link_name = "g_value_set_char")
    value_set_char :: proc(value: ^Value, v_char: glib.char) ---

    @(link_name = "g_value_get_char")
    value_get_char :: proc(value: ^Value) -> glib.char ---

    @(link_name = "g_value_set_schar")
    value_set_schar :: proc(value: ^Value, v_char: glib.int8) ---

    @(link_name = "g_value_get_schar")
    value_get_schar :: proc(value: ^Value) -> glib.int8 ---

    @(link_name = "g_value_set_uchar")
    value_set_uchar :: proc(value: ^Value, v_uchar: glib.uchar) ---

    @(link_name = "g_value_get_uchar")
    value_get_uchar :: proc(value: ^Value) -> glib.uchar ---

    @(link_name = "g_value_set_boolean")
    value_set_boolean :: proc(value: ^Value, v_boolean: glib.boolean) ---

    @(link_name = "g_value_get_boolean")
    value_get_boolean :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "g_value_set_int")
    value_set_int :: proc(value: ^Value, v_int: glib.int_) ---

    @(link_name = "g_value_get_int")
    value_get_int :: proc(value: ^Value) -> glib.int_ ---

    @(link_name = "g_value_set_uint")
    value_set_uint :: proc(value: ^Value, v_uint: glib.uint_) ---

    @(link_name = "g_value_get_uint")
    value_get_uint :: proc(value: ^Value) -> glib.uint_ ---

    @(link_name = "g_value_set_long")
    value_set_long :: proc(value: ^Value, v_long: glib.long) ---

    @(link_name = "g_value_get_long")
    value_get_long :: proc(value: ^Value) -> glib.long ---

    @(link_name = "g_value_set_ulong")
    value_set_ulong :: proc(value: ^Value, v_ulong: glib.ulong) ---

    @(link_name = "g_value_get_ulong")
    value_get_ulong :: proc(value: ^Value) -> glib.ulong ---

    @(link_name = "g_value_set_int64")
    value_set_int64 :: proc(value: ^Value, v_int64: glib.int64) ---

    @(link_name = "g_value_get_int64")
    value_get_int64 :: proc(value: ^Value) -> glib.int64 ---

    @(link_name = "g_value_set_uint64")
    value_set_uint64 :: proc(value: ^Value, v_uint64: glib.uint64) ---

    @(link_name = "g_value_get_uint64")
    value_get_uint64 :: proc(value: ^Value) -> glib.uint64 ---

    @(link_name = "g_value_set_float")
    value_set_float :: proc(value: ^Value, v_float: glib.float) ---

    @(link_name = "g_value_get_float")
    value_get_float :: proc(value: ^Value) -> glib.float ---

    @(link_name = "g_value_set_double")
    value_set_double :: proc(value: ^Value, v_double: glib.double) ---

    @(link_name = "g_value_get_double")
    value_get_double :: proc(value: ^Value) -> glib.double ---

    @(link_name = "g_value_set_string")
    value_set_string :: proc(value: ^Value, v_string: cstring) ---

    @(link_name = "g_value_set_static_string")
    value_set_static_string :: proc(value: ^Value, v_string: cstring) ---

    @(link_name = "g_value_set_interned_string")
    value_set_interned_string :: proc(value: ^Value, v_string: cstring) ---

    @(link_name = "g_value_get_string")
    value_get_string :: proc(value: ^Value) -> cstring ---

    @(link_name = "g_value_dup_string")
    value_dup_string :: proc(value: ^Value) -> cstring ---

    @(link_name = "g_value_steal_string")
    value_steal_string :: proc(value: ^Value) -> cstring ---

    @(link_name = "g_value_set_pointer")
    value_set_pointer :: proc(value: ^Value, v_pointer: glib.pointer) ---

    @(link_name = "g_value_get_pointer")
    value_get_pointer :: proc(value: ^Value) -> glib.pointer ---

    @(link_name = "g_gtype_get_type")
    gtype_get_type :: proc() -> Type ---

    @(link_name = "g_value_set_gtype")
    value_set_gtype :: proc(value: ^Value, v_gtype: Type) ---

    @(link_name = "g_value_get_gtype")
    value_get_gtype :: proc(value: ^Value) -> Type ---

    @(link_name = "g_value_set_variant")
    value_set_variant :: proc(value: ^Value, variant: ^glib.Variant) ---

    @(link_name = "g_value_take_variant")
    value_take_variant :: proc(value: ^Value, variant: ^glib.Variant) ---

    @(link_name = "g_value_get_variant")
    value_get_variant :: proc(value: ^Value) -> ^glib.Variant ---

    @(link_name = "g_value_dup_variant")
    value_dup_variant :: proc(value: ^Value) -> ^glib.Variant ---

    @(link_name = "g_pointer_type_register_static")
    pointer_type_register_static :: proc(name: cstring) -> Type ---

    @(link_name = "g_strdup_value_contents")
    strdup_value_contents :: proc(value: ^Value) -> cstring ---

    @(link_name = "g_value_take_string")
    value_take_string :: proc(value: ^Value, v_string: cstring) ---

    @(link_name = "g_value_set_string_take_ownership")
    value_set_string_take_ownership :: proc(value: ^Value, v_string: cstring) ---

}

cclosure_marshal_BOOL__FLAGS :: cclosure_marshal_BOOLEAN__FLAGS

cclosure_marshal_BOOL__BOXED_BOXED :: cclosure_marshal_BOOLEAN__BOXED_BOXED

when (ODIN_OS == .Linux) {

pid_t :: i32
uid_t :: i32
TypeFundamentalFlags :: enum u32 {CLASSED = 1, INSTANTIATABLE = 2, DERIVABLE = 4, DEEP_DERIVABLE = 8 }
TypeDebugFlags :: enum u32 {NONE = 0, OBJECTS = 1, SIGNALS = 2, INSTANCE_COUNT = 4, MASK = 7 }
TypeFlags :: enum u32 {NONE = 0, ABSTRACT = 16, VALUE_ABSTRACT = 32, FINAL = 64, DEPRECATED = 128 }
SignalFlags :: enum u32 {RUN_FIRST = 1, RUN_LAST = 2, RUN_CLEANUP = 4, NO_RECURSE = 8, DETAILED = 16, ACTION = 32, NO_HOOKS = 64, MUST_COLLECT = 128, DEPRECATED = 256, ACCUMULATOR_FIRST_RUN = 131072 }
ConnectFlags :: enum u32 {DEFAULT = 0, AFTER = 1, SWAPPED = 2 }
SignalMatchType :: enum u32 {MATCH_ID = 1, MATCH_DETAIL = 2, MATCH_CLOSURE = 4, MATCH_FUNC = 8, MATCH_DATA = 16, MATCH_UNBLOCKED = 32 }
BindingFlags :: enum u32 {DEFAULT = 0, BIDIRECTIONAL = 1, SYNC_CREATE = 2, INVERT_BOOLEAN = 4 }

@(default_calling_convention = "c")
foreign gobject_runic {
    @(link_name = "g_set_object_wrapper")
    set_object :: proc(object_ptr: ^^Object, new_object: ^Object) -> glib.boolean ---

    @(link_name = "g_assert_finalize_object_wrapper")
    assert_finalize_object :: proc(object: ^Object) ---

    @(link_name = "g_clear_weak_pointer_wrapper")
    clear_weak_pointer :: proc(weak_pointer_location: ^glib.pointer) ---

    @(link_name = "g_set_weak_pointer_wrapper")
    set_weak_pointer :: proc(weak_pointer_location: ^glib.pointer, new_object: ^Object) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_GTypeModule_wrapper")
    glib_autoptr_clear_GTypeModule :: proc(_ptr: ^TypeModule) ---

    @(link_name = "glib_autoptr_cleanup_GTypeModule_wrapper")
    glib_autoptr_cleanup_GTypeModule :: proc(_ptr: ^^TypeModule) ---

    @(link_name = "glib_autoptr_destroy_GTypeModule_wrapper")
    glib_autoptr_destroy_GTypeModule :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTypeModule_wrapper")
    glib_listautoptr_cleanup_GTypeModule :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTypeModule_wrapper")
    glib_slistautoptr_cleanup_GTypeModule :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTypeModule_wrapper")
    glib_queueautoptr_cleanup_GTypeModule :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GClosure_wrapper")
    glib_autoptr_clear_GClosure :: proc(_ptr: ^Closure) ---

    @(link_name = "glib_autoptr_cleanup_GClosure_wrapper")
    glib_autoptr_cleanup_GClosure :: proc(_ptr: ^^Closure) ---

    @(link_name = "glib_autoptr_destroy_GClosure_wrapper")
    glib_autoptr_destroy_GClosure :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GClosure_wrapper")
    glib_listautoptr_cleanup_GClosure :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GClosure_wrapper")
    glib_slistautoptr_cleanup_GClosure :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GClosure_wrapper")
    glib_queueautoptr_cleanup_GClosure :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GEnumClass_wrapper")
    glib_autoptr_clear_GEnumClass :: proc(_ptr: ^EnumClass) ---

    @(link_name = "glib_autoptr_cleanup_GEnumClass_wrapper")
    glib_autoptr_cleanup_GEnumClass :: proc(_ptr: ^^EnumClass) ---

    @(link_name = "glib_autoptr_destroy_GEnumClass_wrapper")
    glib_autoptr_destroy_GEnumClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GEnumClass_wrapper")
    glib_listautoptr_cleanup_GEnumClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GEnumClass_wrapper")
    glib_slistautoptr_cleanup_GEnumClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GEnumClass_wrapper")
    glib_queueautoptr_cleanup_GEnumClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFlagsClass_wrapper")
    glib_autoptr_clear_GFlagsClass :: proc(_ptr: ^FlagsClass) ---

    @(link_name = "glib_autoptr_cleanup_GFlagsClass_wrapper")
    glib_autoptr_cleanup_GFlagsClass :: proc(_ptr: ^^FlagsClass) ---

    @(link_name = "glib_autoptr_destroy_GFlagsClass_wrapper")
    glib_autoptr_destroy_GFlagsClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFlagsClass_wrapper")
    glib_listautoptr_cleanup_GFlagsClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFlagsClass_wrapper")
    glib_slistautoptr_cleanup_GFlagsClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFlagsClass_wrapper")
    glib_queueautoptr_cleanup_GFlagsClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GObject_wrapper")
    glib_autoptr_clear_GObject :: proc(_ptr: ^Object) ---

    @(link_name = "glib_autoptr_cleanup_GObject_wrapper")
    glib_autoptr_cleanup_GObject :: proc(_ptr: ^^Object) ---

    @(link_name = "glib_autoptr_destroy_GObject_wrapper")
    glib_autoptr_destroy_GObject :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GObject_wrapper")
    glib_listautoptr_cleanup_GObject :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GObject_wrapper")
    glib_slistautoptr_cleanup_GObject :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GObject_wrapper")
    glib_queueautoptr_cleanup_GObject :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInitiallyUnowned_wrapper")
    glib_autoptr_clear_GInitiallyUnowned :: proc(_ptr: ^InitiallyUnowned) ---

    @(link_name = "glib_autoptr_cleanup_GInitiallyUnowned_wrapper")
    glib_autoptr_cleanup_GInitiallyUnowned :: proc(_ptr: ^^InitiallyUnowned) ---

    @(link_name = "glib_autoptr_destroy_GInitiallyUnowned_wrapper")
    glib_autoptr_destroy_GInitiallyUnowned :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInitiallyUnowned_wrapper")
    glib_listautoptr_cleanup_GInitiallyUnowned :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInitiallyUnowned_wrapper")
    glib_slistautoptr_cleanup_GInitiallyUnowned :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInitiallyUnowned_wrapper")
    glib_queueautoptr_cleanup_GInitiallyUnowned :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GParamSpec_wrapper")
    glib_autoptr_clear_GParamSpec :: proc(_ptr: ^ParamSpec) ---

    @(link_name = "glib_autoptr_cleanup_GParamSpec_wrapper")
    glib_autoptr_cleanup_GParamSpec :: proc(_ptr: ^^ParamSpec) ---

    @(link_name = "glib_autoptr_destroy_GParamSpec_wrapper")
    glib_autoptr_destroy_GParamSpec :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GParamSpec_wrapper")
    glib_listautoptr_cleanup_GParamSpec :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GParamSpec_wrapper")
    glib_slistautoptr_cleanup_GParamSpec :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GParamSpec_wrapper")
    glib_queueautoptr_cleanup_GParamSpec :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTypeClass_wrapper")
    glib_autoptr_clear_GTypeClass :: proc(_ptr: ^TypeClass) ---

    @(link_name = "glib_autoptr_cleanup_GTypeClass_wrapper")
    glib_autoptr_cleanup_GTypeClass :: proc(_ptr: ^^TypeClass) ---

    @(link_name = "glib_autoptr_destroy_GTypeClass_wrapper")
    glib_autoptr_destroy_GTypeClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTypeClass_wrapper")
    glib_listautoptr_cleanup_GTypeClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTypeClass_wrapper")
    glib_slistautoptr_cleanup_GTypeClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTypeClass_wrapper")
    glib_queueautoptr_cleanup_GTypeClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_auto_cleanup_GValue_wrapper")
    glib_auto_cleanup_GValue :: proc(_ptr: ^Value) ---

}

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

TypeFundamentalFlags :: enum i32 {CLASSED = 1, INSTANTIATABLE = 2, DERIVABLE = 4, DEEP_DERIVABLE = 8 }
TypeDebugFlags :: enum i32 {NONE = 0, OBJECTS = 1, SIGNALS = 2, INSTANCE_COUNT = 4, MASK = 7 }
TypeFlags :: enum i32 {NONE = 0, ABSTRACT = 16, VALUE_ABSTRACT = 32, FINAL = 64, DEPRECATED = 128 }
SignalFlags :: enum i32 {RUN_FIRST = 1, RUN_LAST = 2, RUN_CLEANUP = 4, NO_RECURSE = 8, DETAILED = 16, ACTION = 32, NO_HOOKS = 64, MUST_COLLECT = 128, DEPRECATED = 256, ACCUMULATOR_FIRST_RUN = 131072 }
ConnectFlags :: enum i32 {DEFAULT = 0, AFTER = 1, SWAPPED = 2 }
SignalMatchType :: enum i32 {MATCH_ID = 1, MATCH_DETAIL = 2, MATCH_CLOSURE = 4, MATCH_FUNC = 8, MATCH_DATA = 16, MATCH_UNBLOCKED = 32 }
BindingFlags :: enum i32 {DEFAULT = 0, BIDIRECTIONAL = 1, SYNC_CREATE = 2, INVERT_BOOLEAN = 4 }

}

when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {

when #config(GOBJECT_STATIC, false) {
    foreign import gobject_runic "../../lib/linux/x86_64/libgobject-2.0.a"
} else {
    foreign import gobject_runic "system:gobject-2.0"
}

}

when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {

when #config(GOBJECT_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import gobject_runic { "../../lib/linux/aarch64/libgobject-2.0.a", "../../lib/linux/aarch64/libgobject-wrapper.a", "system:ffi", "system:pcre2-8" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import gobject_runic { "system:gobject-2.0", "../../lib/linux/aarch64/libgobject-wrapper.a" }
} 
}

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {
    foreign import gobject_runic { "../../lib/windows/x86_64/gobject-2.0.lib", "../../lib/windows/x86_64/gobject-wrapper.lib" }
} 

}

