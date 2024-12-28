#+build linux amd64, linux arm64
package pango

import "../glib"
import "core:c/libc"
import gobj "../glib/gobject"

SCALE :: 1024
TYPE_MATRIX :: matrix_get_type 
TYPE_LANGUAGE :: language_get_type 
SCALE_XX_SMALL :: (0.5787037037037)
SCALE_X_SMALL :: (0.6944444444444)
SCALE_SMALL :: (0.8333333333333)
SCALE_MEDIUM :: (1.0)
SCALE_LARGE :: (1.2)
SCALE_X_LARGE :: (1.44)
SCALE_XX_LARGE :: (1.728)
TYPE_FONT_DESCRIPTION :: font_description_get_type 
TYPE_FONT_METRICS :: font_metrics_get_type 
TYPE_FONT_FAMILY :: font_family_get_type 
TYPE_FONT_FACE :: font_face_get_type 
TYPE_FONT :: font_get_type 
GLYPH_EMPTY :: (0x0FFFFFFF)
GLYPH_INVALID_INPUT :: (0xFFFFFFFF)
GLYPH_UNKNOWN_FLAG :: (0x10000000)
UNKNOWN_GLYPH_WIDTH :: 10
UNKNOWN_GLYPH_HEIGHT :: 14
TYPE_COLOR :: color_get_type 
ATTR_INDEX_FROM_TEXT_BEGINNING :: (0)
ATTR_INDEX_TO_TEXT_END :: ((glib.MAXUINT + 0))
TYPE_ATTR_LIST :: attr_list_get_type 
ANALYSIS_FLAG_CENTERED_BASELINE :: (1 << 0)
ANALYSIS_FLAG_IS_ELLIPSIS :: (1 << 1)
ANALYSIS_FLAG_NEED_HYPHEN :: (1 << 2)
TYPE_ITEM :: item_get_type 
TYPE_FONTSET :: fontset_get_type 
TYPE_FONT_MAP :: font_map_get_type 
TYPE_CONTEXT :: context_get_type 
TYPE_GLYPH_STRING :: glyph_string_get_type 
RENDER_TYPE_NONE :: "PangoRenderNone"
TYPE_ENGINE :: engine_get_type 
ENGINE_TYPE_LANG :: "PangoEngineLang"
TYPE_ENGINE_LANG :: engine_lang_get_type 
ENGINE_TYPE_SHAPE :: "PangoEngineShape"
TYPE_ENGINE_SHAPE :: engine_shape_get_type 
TYPE_ATTR_TYPE :: attr_type_get_type 
TYPE_UNDERLINE :: underline_get_type 
TYPE_OVERLINE :: overline_get_type 
TYPE_SHOW_FLAGS :: show_flags_get_type 
TYPE_TEXT_TRANSFORM :: text_transform_get_type 
TYPE_BASELINE_SHIFT :: baseline_shift_get_type 
TYPE_FONT_SCALE :: font_scale_get_type 
TYPE_BIDI_TYPE :: bidi_type_get_type 
TYPE_COVERAGE_LEVEL :: coverage_level_get_type 
TYPE_DIRECTION :: direction_get_type 
TYPE_STYLE :: style_get_type 
TYPE_VARIANT :: variant_get_type 
TYPE_WEIGHT :: weight_get_type 
TYPE_STRETCH :: stretch_get_type 
TYPE_FONT_MASK :: font_mask_get_type 
TYPE_SHAPE_FLAGS :: shape_flags_get_type 
TYPE_GRAVITY :: gravity_get_type 
TYPE_GRAVITY_HINT :: gravity_hint_get_type 
TYPE_ALIGNMENT :: alignment_get_type 
TYPE_WRAP_MODE :: wrap_mode_get_type 
TYPE_ELLIPSIZE_MODE :: ellipsize_mode_get_type 
TYPE_LAYOUT_SERIALIZE_FLAGS :: layout_serialize_flags_get_type 
TYPE_LAYOUT_DESERIALIZE_ERROR :: layout_deserialize_error_get_type 
TYPE_LAYOUT_DESERIALIZE_FLAGS :: layout_deserialize_flags_get_type 
TYPE_RENDER_PART :: render_part_get_type 
TYPE_SCRIPT :: script_get_type 
TYPE_TAB_ALIGN :: tab_align_get_type 
TYPE_FONTSET_SIMPLE :: fontset_simple_get_type 
TYPE_GLYPH_ITEM :: glyph_item_get_type 
TYPE_GLYPH_ITEM_ITER :: glyph_item_iter_get_type 
TYPE_TAB_ARRAY :: tab_array_get_type 
TYPE_LAYOUT :: layout_get_type 
ERROR :: `(pango_layout_deserialize_error_quark ())`
TYPE_LAYOUT_LINE :: layout_line_get_type 
TYPE_LAYOUT_ITER :: layout_iter_get_type 
TYPE_RENDERER :: renderer_get_type

hb_feature_t :: rawptr
hb_font_t :: rawptr
_PangoCoverage :: struct #packed {}
Coverage :: _PangoCoverage
CoverageLevel :: enum u32 {COVERAGE_NONE = 0, COVERAGE_FALLBACK = 1, COVERAGE_APPROXIMATE = 2, COVERAGE_EXACT = 3 }
Coverage_autoptr :: ^Coverage
Coverage_listautoptr :: ^glib.List
Coverage_slistautoptr :: ^glib.SList
Coverage_queueautoptr :: ^glib.Queue
_PangoLogAttr :: [4]i8
LogAttr :: _PangoLogAttr
_PangoEngine :: struct {
    parent_instance: gobj.Object,
}
Engine :: _PangoEngine
_PangoEngineLang :: struct {
    parent_instance: Engine,
}
EngineLang :: _PangoEngineLang
_PangoEngineShape :: struct {
    parent_instance: Engine,
}
EngineShape :: _PangoEngineShape
_PangoFont :: struct {
    parent_instance: gobj.Object,
}
Font :: _PangoFont
_PangoFontMap :: struct {
    parent_instance: gobj.Object,
}
FontMap :: _PangoFontMap
_PangoRectangle :: struct {
    x: i32,
    y: i32,
    width: i32,
    height: i32,
}
Rectangle :: _PangoRectangle
_PangoContext :: struct #packed {}
Context :: _PangoContext
_PangoLanguage :: struct #packed {}
Language :: _PangoLanguage
Glyph :: glib.uint32
Gravity :: enum u32 {SOUTH = 0, EAST = 1, NORTH = 2, WEST = 3, AUTO = 4 }
GravityHint :: enum u32 {NATURAL = 0, STRONG = 1, LINE = 2 }
_PangoMatrix :: struct {
    xx: f64,
    xy: f64,
    yx: f64,
    yy: f64,
    x0: f64,
    y0: f64,
}
Matrix :: _PangoMatrix
_PangoScriptIter :: struct #packed {}
ScriptIter :: _PangoScriptIter
Script :: enum i32 {INVALID_CODE = -1, COMMON = 0, INHERITED = 1, ARABIC = 2, ARMENIAN = 3, BENGALI = 4, BOPOMOFO = 5, CHEROKEE = 6, COPTIC = 7, CYRILLIC = 8, DESERET = 9, DEVANAGARI = 10, ETHIOPIC = 11, GEORGIAN = 12, GOTHIC = 13, GREEK = 14, GUJARATI = 15, GURMUKHI = 16, HAN = 17, HANGUL = 18, HEBREW = 19, HIRAGANA = 20, KANNADA = 21, KATAKANA = 22, KHMER = 23, LAO = 24, LATIN = 25, MALAYALAM = 26, MONGOLIAN = 27, MYANMAR = 28, OGHAM = 29, OLD_ITALIC = 30, ORIYA = 31, RUNIC = 32, SINHALA = 33, SYRIAC = 34, TAMIL = 35, TELUGU = 36, THAANA = 37, THAI = 38, TIBETAN = 39, CANADIAN_ABORIGINAL = 40, YI = 41, TAGALOG = 42, HANUNOO = 43, BUHID = 44, TAGBANWA = 45, BRAILLE = 46, CYPRIOT = 47, LIMBU = 48, OSMANYA = 49, SHAVIAN = 50, LINEAR_B = 51, TAI_LE = 52, UGARITIC = 53, NEW_TAI_LUE = 54, BUGINESE = 55, GLAGOLITIC = 56, TIFINAGH = 57, SYLOTI_NAGRI = 58, OLD_PERSIAN = 59, KHAROSHTHI = 60, UNKNOWN = 61, BALINESE = 62, CUNEIFORM = 63, PHOENICIAN = 64, PHAGS_PA = 65, NKO = 66, KAYAH_LI = 67, LEPCHA = 68, REJANG = 69, SUNDANESE = 70, SAURASHTRA = 71, CHAM = 72, OL_CHIKI = 73, VAI = 74, CARIAN = 75, LYCIAN = 76, LYDIAN = 77, BATAK = 78, BRAHMI = 79, MANDAIC = 80, CHAKMA = 81, MEROITIC_CURSIVE = 82, MEROITIC_HIEROGLYPHS = 83, MIAO = 84, SHARADA = 85, SORA_SOMPENG = 86, TAKRI = 87, BASSA_VAH = 88, CAUCASIAN_ALBANIAN = 89, DUPLOYAN = 90, ELBASAN = 91, GRANTHA = 92, KHOJKI = 93, KHUDAWADI = 94, LINEAR_A = 95, MAHAJANI = 96, MANICHAEAN = 97, MENDE_KIKAKUI = 98, MODI = 99, MRO = 100, NABATAEAN = 101, OLD_NORTH_ARABIAN = 102, OLD_PERMIC = 103, PAHAWH_HMONG = 104, PALMYRENE = 105, PAU_CIN_HAU = 106, PSALTER_PAHLAVI = 107, SIDDHAM = 108, TIRHUTA = 109, WARANG_CITI = 110, AHOM = 111, ANATOLIAN_HIEROGLYPHS = 112, HATRAN = 113, MULTANI = 114, OLD_HUNGARIAN = 115, SIGNWRITING = 116 }
Direction :: enum u32 {LTR = 0, RTL = 1, TTB_LTR = 2, TTB_RTL = 3, WEAK_LTR = 4, WEAK_RTL = 5, NEUTRAL = 6 }
BidiType :: enum u32 {L = 0, LRE = 1, LRO = 2, R = 3, AL = 4, RLE = 5, RLO = 6, PDF = 7, EN = 8, ES = 9, ET = 10, AN = 11, CS = 12, NSM = 13, BN = 14, B = 15, S = 16, WS = 17, ON = 18, LRI = 19, RLI = 20, FSI = 21, PDI = 22 }
_PangoFontDescription :: struct #packed {}
FontDescription :: _PangoFontDescription
_PangoFontMetrics :: struct {
    ref_count: glib.uint_,
    ascent: i32,
    descent: i32,
    height: i32,
    approximate_char_width: i32,
    approximate_digit_width: i32,
    underline_position: i32,
    underline_thickness: i32,
    strikethrough_position: i32,
    strikethrough_thickness: i32,
}
FontMetrics :: _PangoFontMetrics
Style :: enum u32 {NORMAL = 0, OBLIQUE = 1, ITALIC = 2 }
Variant :: enum u32 {NORMAL = 0, SMALL_CAPS = 1, ALL_SMALL_CAPS = 2, PETITE_CAPS = 3, ALL_PETITE_CAPS = 4, UNICASE = 5, TITLE_CAPS = 6 }
Weight :: enum u32 {THIN = 100, ULTRALIGHT = 200, LIGHT = 300, SEMILIGHT = 350, BOOK = 380, NORMAL = 400, MEDIUM = 500, SEMIBOLD = 600, BOLD = 700, ULTRABOLD = 800, HEAVY = 900, ULTRAHEAVY = 1000 }
Stretch :: enum u32 {ULTRA_CONDENSED = 0, EXTRA_CONDENSED = 1, CONDENSED = 2, SEMI_CONDENSED = 3, NORMAL = 4, SEMI_EXPANDED = 5, EXPANDED = 6, EXTRA_EXPANDED = 7, ULTRA_EXPANDED = 8 }
FontMask :: enum u32 {FAMILY = 1, STYLE = 2, VARIANT = 4, WEIGHT = 8, STRETCH = 16, SIZE = 32, GRAVITY = 64, VARIATIONS = 128 }
_PangoFontFace :: struct {
    parent_instance: gobj.Object,
}
FontFace :: _PangoFontFace
_PangoFontFamily :: struct {
    parent_instance: gobj.Object,
}
FontFamily :: _PangoFontFamily
list_faces_func_ptr_anon_0 :: #type proc "c" (family: ^FontFamily, faces: [^]^^FontFace, n_faces: [^]i32)
et_name_func_ptr_anon_1 :: #type proc "c" (family: ^FontFamily) -> cstring
is_monospace_func_ptr_anon_2 :: #type proc "c" (family: ^FontFamily) -> glib.boolean
is_variable_func_ptr_anon_3 :: #type proc "c" (family: ^FontFamily) -> glib.boolean
et_face_func_ptr_anon_4 :: #type proc "c" (family: ^FontFamily, name: cstring) -> ^FontFace
_pango_reserved2_func_ptr_anon_5 :: #type proc "c" ()
_PangoFontFamilyClass :: struct {
    parent_class: gobj.ObjectClass,
    list_faces: list_faces_func_ptr_anon_0,
    get_name: et_name_func_ptr_anon_1,
    is_monospace: is_monospace_func_ptr_anon_2,
    is_variable: is_variable_func_ptr_anon_3,
    get_face: et_face_func_ptr_anon_4,
    _pango_reserved2: _pango_reserved2_func_ptr_anon_5,
}
FontFamilyClass :: _PangoFontFamilyClass
et_face_name_func_ptr_anon_6 :: #type proc "c" (face: ^FontFace) -> cstring
describe_func_ptr_anon_7 :: #type proc "c" (face: ^FontFace) -> ^FontDescription
list_sizes_func_ptr_anon_8 :: #type proc "c" (face: ^FontFace, sizes: [^]^i32, n_sizes: [^]i32)
is_synthesized_func_ptr_anon_9 :: #type proc "c" (face: ^FontFace) -> glib.boolean
et_family_func_ptr_anon_10 :: #type proc "c" (face: ^FontFace) -> ^FontFamily
_pango_reserved3_func_ptr_anon_11 :: #type proc "c" ()
_pango_reserved4_func_ptr_anon_12 :: #type proc "c" ()
_PangoFontFaceClass :: struct {
    parent_class: gobj.ObjectClass,
    get_face_name: et_face_name_func_ptr_anon_6,
    describe: describe_func_ptr_anon_7,
    list_sizes: list_sizes_func_ptr_anon_8,
    is_synthesized: is_synthesized_func_ptr_anon_9,
    get_family: et_family_func_ptr_anon_10,
    _pango_reserved3: _pango_reserved3_func_ptr_anon_11,
    _pango_reserved4: _pango_reserved4_func_ptr_anon_12,
}
FontFaceClass :: _PangoFontFaceClass
describe_func_ptr_anon_13 :: #type proc "c" (font: ^Font) -> ^FontDescription
et_coverage_func_ptr_anon_14 :: #type proc "c" (font: ^Font, language: ^Language) -> ^Coverage
et_glyph_extents_func_ptr_anon_15 :: #type proc "c" (font: ^Font, glyph: Glyph, ink_rect: ^Rectangle, logical_rect: ^Rectangle)
et_metrics_func_ptr_anon_16 :: #type proc "c" (font: ^Font, language: ^Language) -> ^FontMetrics
et_font_map_func_ptr_anon_17 :: #type proc "c" (font: ^Font) -> ^FontMap
describe_absolute_func_ptr_anon_18 :: #type proc "c" (font: ^Font) -> ^FontDescription
et_features_func_ptr_anon_19 :: #type proc "c" (font: ^Font, features: [^]hb_feature_t, len: glib.uint_, num_features: [^]glib.uint_)
create_hb_font_func_ptr_anon_20 :: #type proc "c" (font: ^Font) -> ^hb_font_t
_PangoFontClass :: struct {
    parent_class: gobj.ObjectClass,
    describe: describe_func_ptr_anon_13,
    get_coverage: et_coverage_func_ptr_anon_14,
    get_glyph_extents: et_glyph_extents_func_ptr_anon_15,
    get_metrics: et_metrics_func_ptr_anon_16,
    get_font_map: et_font_map_func_ptr_anon_17,
    describe_absolute: describe_absolute_func_ptr_anon_18,
    get_features: et_features_func_ptr_anon_19,
    create_hb_font: create_hb_font_func_ptr_anon_20,
}
FontClass :: _PangoFontClass
FontFamily_autoptr :: ^FontFamily
FontFamily_listautoptr :: ^glib.List
FontFamily_slistautoptr :: ^glib.SList
FontFamily_queueautoptr :: ^glib.Queue
FontFace_autoptr :: ^FontFace
FontFace_listautoptr :: ^glib.List
FontFace_slistautoptr :: ^glib.SList
FontFace_queueautoptr :: ^glib.Queue
Font_autoptr :: ^Font
Font_listautoptr :: ^glib.List
Font_slistautoptr :: ^glib.SList
Font_queueautoptr :: ^glib.Queue
FontDescription_autoptr :: ^FontDescription
FontDescription_listautoptr :: ^glib.List
FontDescription_slistautoptr :: ^glib.SList
FontDescription_queueautoptr :: ^glib.Queue
_PangoColor :: struct {
    red: glib.uint16,
    green: glib.uint16,
    blue: glib.uint16,
}
Color :: _PangoColor
Attribute :: _PangoAttribute
AttrClass :: _PangoAttrClass
_PangoAttrString :: struct {
    attr: Attribute,
    value: cstring,
}
AttrString :: _PangoAttrString
_PangoAttrLanguage :: struct {
    attr: Attribute,
    value: ^Language,
}
AttrLanguage :: _PangoAttrLanguage
_PangoAttrInt :: struct {
    attr: Attribute,
    value: i32,
}
AttrInt :: _PangoAttrInt
_PangoAttrSize :: [24]i8
AttrSize :: _PangoAttrSize
_PangoAttrFloat :: struct {
    attr: Attribute,
    value: f64,
}
AttrFloat :: _PangoAttrFloat
_PangoAttrColor :: struct {
    attr: Attribute,
    color: Color,
}
AttrColor :: _PangoAttrColor
_PangoAttrFontDesc :: struct {
    attr: Attribute,
    desc: ^FontDescription,
}
AttrFontDesc :: _PangoAttrFontDesc
AttrDataCopyFunc :: #type proc "c" (user_data: glib.constpointer) -> glib.pointer
_PangoAttrShape :: struct {
    attr: Attribute,
    ink_rect: Rectangle,
    logical_rect: Rectangle,
    data: glib.pointer,
    copy_func: AttrDataCopyFunc,
    destroy_func: glib.DestroyNotify,
}
AttrShape :: _PangoAttrShape
_PangoAttrFontFeatures :: struct {
    attr: Attribute,
    features: cstring,
}
AttrFontFeatures :: _PangoAttrFontFeatures
AttrType :: enum u32 {ATTR_INVALID = 0, ATTR_LANGUAGE = 1, ATTR_FAMILY = 2, ATTR_STYLE = 3, ATTR_WEIGHT = 4, ATTR_VARIANT = 5, ATTR_STRETCH = 6, ATTR_SIZE = 7, ATTR_FONT_DESC = 8, ATTR_FOREGROUND = 9, ATTR_BACKGROUND = 10, ATTR_UNDERLINE = 11, ATTR_STRIKETHROUGH = 12, ATTR_RISE = 13, ATTR_SHAPE = 14, ATTR_SCALE = 15, ATTR_FALLBACK = 16, ATTR_LETTER_SPACING = 17, ATTR_UNDERLINE_COLOR = 18, ATTR_STRIKETHROUGH_COLOR = 19, ATTR_ABSOLUTE_SIZE = 20, ATTR_GRAVITY = 21, ATTR_GRAVITY_HINT = 22, ATTR_FONT_FEATURES = 23, ATTR_FOREGROUND_ALPHA = 24, ATTR_BACKGROUND_ALPHA = 25, ATTR_ALLOW_BREAKS = 26, ATTR_SHOW = 27, ATTR_INSERT_HYPHENS = 28, ATTR_OVERLINE = 29, ATTR_OVERLINE_COLOR = 30, ATTR_LINE_HEIGHT = 31, ATTR_ABSOLUTE_LINE_HEIGHT = 32, ATTR_TEXT_TRANSFORM = 33, ATTR_WORD = 34, ATTR_SENTENCE = 35, ATTR_BASELINE_SHIFT = 36, ATTR_FONT_SCALE = 37 }
Underline :: enum u32 {NONE = 0, SINGLE = 1, DOUBLE = 2, LOW = 3, ERROR = 4, SINGLE_LINE = 5, DOUBLE_LINE = 6, ERROR_LINE = 7 }
Overline :: enum u32 {NONE = 0, SINGLE = 1 }
ShowFlags :: enum u32 {NONE = 0, SPACES = 1, LINE_BREAKS = 2, IGNORABLES = 4 }
TextTransform :: enum u32 {NONE = 0, LOWERCASE = 1, UPPERCASE = 2, CAPITALIZE = 3 }
BaselineShift :: enum u32 {NONE = 0, SUPERSCRIPT = 1, SUBSCRIPT = 2 }
FontScale :: enum u32 {NONE = 0, SUPERSCRIPT = 1, SUBSCRIPT = 2, SMALL_CAPS = 3 }
_PangoAttribute :: struct {
    klass: [^]AttrClass,
    start_index: glib.uint_,
    end_index: glib.uint_,
}
AttrFilterFunc :: #type proc "c" (attribute: ^Attribute, user_data: glib.pointer) -> glib.boolean
copy_func_ptr_anon_21 :: #type proc "c" (attr: ^Attribute) -> ^Attribute
destroy_func_ptr_anon_22 :: #type proc "c" (attr: ^Attribute)
equal_func_ptr_anon_23 :: #type proc "c" (attr1: ^Attribute, attr2: ^Attribute) -> glib.boolean
_PangoAttrClass :: struct {
    type: AttrType,
    copy: copy_func_ptr_anon_21,
    destroy: destroy_func_ptr_anon_22,
    equal: equal_func_ptr_anon_23,
}
_PangoAttrList :: struct #packed {}
AttrList :: _PangoAttrList
_PangoAttrIterator :: struct #packed {}
AttrIterator :: _PangoAttrIterator
Attribute_autoptr :: ^Attribute
Attribute_listautoptr :: ^glib.List
Attribute_slistautoptr :: ^glib.SList
Attribute_queueautoptr :: ^glib.Queue
AttrList_autoptr :: ^AttrList
AttrList_listautoptr :: ^glib.List
AttrList_slistautoptr :: ^glib.SList
AttrList_queueautoptr :: ^glib.Queue
AttrIterator_autoptr :: ^AttrIterator
AttrIterator_listautoptr :: ^glib.List
AttrIterator_slistautoptr :: ^glib.SList
AttrIterator_queueautoptr :: ^glib.Queue
_PangoAnalysis :: struct {
    shape_engine: ^EngineShape,
    lang_engine: ^EngineLang,
    font: ^Font,
    level: glib.uint8,
    gravity: glib.uint8,
    flags: glib.uint8,
    script: glib.uint8,
    language: ^Language,
    extra_attrs: [^]glib.SList,
}
Analysis :: _PangoAnalysis
_PangoItem :: struct {
    offset: i32,
    length: i32,
    num_chars: i32,
    analysis: Analysis,
}
Item :: _PangoItem
_PangoFontset :: struct {
    parent_instance: gobj.Object,
}
Fontset :: _PangoFontset
et_font_func_ptr_anon_24 :: #type proc "c" (fontset: ^Fontset, wc: glib.uint_) -> ^Font
et_metrics_func_ptr_anon_25 :: #type proc "c" (fontset: ^Fontset) -> ^FontMetrics
et_language_func_ptr_anon_26 :: #type proc "c" (fontset: ^Fontset) -> ^Language
FontsetForeachFunc :: #type proc "c" (fontset: ^Fontset, font: ^Font, user_data: glib.pointer) -> glib.boolean
foreach_func_ptr_anon_27 :: #type proc "c" (fontset: ^Fontset, func: FontsetForeachFunc, data: glib.pointer)
_pango_reserved1_func_ptr_anon_28 :: #type proc "c" ()
_pango_reserved2_func_ptr_anon_29 :: #type proc "c" ()
_pango_reserved3_func_ptr_anon_30 :: #type proc "c" ()
_pango_reserved4_func_ptr_anon_31 :: #type proc "c" ()
_PangoFontsetClass :: struct {
    parent_class: gobj.ObjectClass,
    get_font: et_font_func_ptr_anon_24,
    get_metrics: et_metrics_func_ptr_anon_25,
    get_language: et_language_func_ptr_anon_26,
    foreach: foreach_func_ptr_anon_27,
    _pango_reserved1: _pango_reserved1_func_ptr_anon_28,
    _pango_reserved2: _pango_reserved2_func_ptr_anon_29,
    _pango_reserved3: _pango_reserved3_func_ptr_anon_30,
    _pango_reserved4: _pango_reserved4_func_ptr_anon_31,
}
FontsetClass :: _PangoFontsetClass
load_font_func_ptr_anon_32 :: #type proc "c" (fontmap: ^FontMap, context_p: ^Context, desc: ^FontDescription) -> ^Font
list_families_func_ptr_anon_33 :: #type proc "c" (fontmap: ^FontMap, families: [^]^^FontFamily, n_families: [^]i32)
load_fontset_func_ptr_anon_34 :: #type proc "c" (fontmap: ^FontMap, context_p: ^Context, desc: ^FontDescription, language: ^Language) -> ^Fontset
et_serial_func_ptr_anon_35 :: #type proc "c" (fontmap: ^FontMap) -> glib.uint_
changed_func_ptr_anon_36 :: #type proc "c" (fontmap: ^FontMap)
et_family_func_ptr_anon_37 :: #type proc "c" (fontmap: ^FontMap, name: cstring) -> ^FontFamily
et_face_func_ptr_anon_38 :: #type proc "c" (fontmap: ^FontMap, font: ^Font) -> ^FontFace
_PangoFontMapClass :: struct {
    parent_class: gobj.ObjectClass,
    load_font: load_font_func_ptr_anon_32,
    list_families: list_families_func_ptr_anon_33,
    load_fontset: load_fontset_func_ptr_anon_34,
    shape_engine_type: cstring,
    get_serial: et_serial_func_ptr_anon_35,
    changed: changed_func_ptr_anon_36,
    get_family: et_family_func_ptr_anon_37,
    get_face: et_face_func_ptr_anon_38,
}
FontMapClass :: _PangoFontMapClass
FontMap_autoptr :: ^FontMap
FontMap_listautoptr :: ^glib.List
FontMap_slistautoptr :: ^glib.SList
FontMap_queueautoptr :: ^glib.Queue
_PangoContextClass :: struct #packed {}
ContextClass :: _PangoContextClass
GlyphUnit :: glib.int32
_PangoGlyphGeometry :: struct {
    width: GlyphUnit,
    x_offset: GlyphUnit,
    y_offset: GlyphUnit,
}
GlyphGeometry :: _PangoGlyphGeometry
_PangoGlyphVisAttr :: [4]i8
GlyphVisAttr :: _PangoGlyphVisAttr
_PangoGlyphInfo :: struct {
    glyph: Glyph,
    geometry: GlyphGeometry,
    attr: GlyphVisAttr,
}
GlyphInfo :: _PangoGlyphInfo
_PangoGlyphString :: struct {
    num_glyphs: i32,
    glyphs: [^]GlyphInfo,
    log_clusters: [^]i32,
    space: i32,
}
GlyphString :: _PangoGlyphString
ShapeFlags :: enum u32 {NONE = 0, ROUND_POSITIONS = 1 }
_PangoEngineClass :: struct {
    parent_class: gobj.ObjectClass,
}
EngineClass :: _PangoEngineClass
script_break_func_ptr_anon_39 :: #type proc "c" (engine: ^EngineLang, text: cstring, len: i32, analysis: [^]Analysis, attrs: [^]LogAttr, attrs_len: i32)
_PangoEngineLangClass :: struct {
    parent_class: EngineClass,
    script_break: script_break_func_ptr_anon_39,
}
EngineLangClass :: _PangoEngineLangClass
script_shape_func_ptr_anon_40 :: #type proc "c" (engine: ^EngineShape, font: ^Font, item_text: cstring, item_length: u32, analysis: [^]Analysis, glyphs: [^]GlyphString, paragraph_text: cstring, paragraph_length: u32)
covers_func_ptr_anon_41 :: #type proc "c" (engine: ^EngineShape, font: ^Font, language: ^Language, wc: glib.unichar) -> CoverageLevel
_PangoEngineShapeClass :: struct {
    parent_class: EngineClass,
    script_shape: script_shape_func_ptr_anon_40,
    covers: covers_func_ptr_anon_41,
}
EngineShapeClass :: _PangoEngineShapeClass
_PangoEngineScriptInfo :: struct {
    script: Script,
    langs: cstring,
}
EngineScriptInfo :: _PangoEngineScriptInfo
_PangoEngineInfo :: struct {
    id: cstring,
    engine_type: cstring,
    render_type: cstring,
    scripts: [^]EngineScriptInfo,
    n_scripts: glib.int_,
}
EngineInfo :: _PangoEngineInfo
_PangoFontsetSimple :: struct #packed {}
FontsetSimple :: _PangoFontsetSimple
_PangoFontsetSimpleClass :: struct #packed {}
FontsetSimpleClass :: _PangoFontsetSimpleClass
_PangoGlyphItem :: struct {
    item: ^Item,
    glyphs: [^]GlyphString,
    y_offset: i32,
    start_x_offset: i32,
    end_x_offset: i32,
}
GlyphItem :: _PangoGlyphItem
_PangoGlyphItemIter :: struct {
    glyph_item: ^GlyphItem,
    text: cstring,
    start_glyph: i32,
    start_index: i32,
    start_char: i32,
    end_glyph: i32,
    end_index: i32,
    end_char: i32,
}
GlyphItemIter :: _PangoGlyphItemIter
_PangoTabArray :: struct #packed {}
TabArray :: _PangoTabArray
TabAlign :: enum u32 {TAB_LEFT = 0, TAB_RIGHT = 1, TAB_CENTER = 2, TAB_DECIMAL = 3 }
TabArray_autoptr :: ^TabArray
TabArray_listautoptr :: ^glib.List
TabArray_slistautoptr :: ^glib.SList
TabArray_queueautoptr :: ^glib.Queue
_PangoLayout :: struct #packed {}
Layout :: _PangoLayout
_PangoLayoutClass :: struct #packed {}
LayoutClass :: _PangoLayoutClass
_PangoLayoutLine :: [32]i8
LayoutLine :: _PangoLayoutLine
LayoutRun :: GlyphItem
Alignment :: enum u32 {ALIGN_LEFT = 0, ALIGN_CENTER = 1, ALIGN_RIGHT = 2 }
WrapMode :: enum u32 {WRAP_WORD = 0, WRAP_CHAR = 1, WRAP_WORD_CHAR = 2 }
EllipsizeMode :: enum u32 {ELLIPSIZE_NONE = 0, ELLIPSIZE_START = 1, ELLIPSIZE_MIDDLE = 2, ELLIPSIZE_END = 3 }
LayoutSerializeFlags :: enum u32 {DEFAULT = 0, CONTEXT = 1, OUTPUT = 2 }
LayoutDeserializeError :: enum u32 {INVALID = 0, INVALID_VALUE = 1, MISSING_VALUE = 2 }
LayoutDeserializeFlags :: enum u32 {DEFAULT = 0, CONTEXT = 1 }
_PangoLayoutIter :: struct #packed {}
LayoutIter :: _PangoLayoutIter
Layout_autoptr :: ^Layout
Layout_listautoptr :: ^glib.List
Layout_slistautoptr :: ^glib.SList
Layout_queueautoptr :: ^glib.Queue
LayoutIter_autoptr :: ^LayoutIter
LayoutIter_listautoptr :: ^glib.List
LayoutIter_slistautoptr :: ^glib.SList
LayoutIter_queueautoptr :: ^glib.Queue
_PangoRendererPrivate :: struct #packed {}
RendererPrivate :: _PangoRendererPrivate
_PangoRenderer :: struct {
    parent_instance: gobj.Object,
    underline: Underline,
    strikethrough: glib.boolean,
    active_count: i32,
    matrix_m: ^Matrix,
    priv: ^RendererPrivate,
}
Renderer :: _PangoRenderer
draw_glyphs_func_ptr_anon_42 :: #type proc "c" (renderer: ^Renderer, font: ^Font, glyphs: [^]GlyphString, x: i32, y: i32)
RenderPart :: enum u32 {FOREGROUND = 0, BACKGROUND = 1, UNDERLINE = 2, STRIKETHROUGH = 3, OVERLINE = 4 }
draw_rectangle_func_ptr_anon_43 :: #type proc "c" (renderer: ^Renderer, part: RenderPart, x: i32, y: i32, width: i32, height: i32)
draw_error_underline_func_ptr_anon_44 :: #type proc "c" (renderer: ^Renderer, x: i32, y: i32, width: i32, height: i32)
draw_shape_func_ptr_anon_45 :: #type proc "c" (renderer: ^Renderer, attr: ^AttrShape, x: i32, y: i32)
draw_trapezoid_func_ptr_anon_46 :: #type proc "c" (renderer: ^Renderer, part: RenderPart, y1_: f64, x11: f64, x21: f64, y2: f64, x12: f64, x22: f64)
draw_glyph_func_ptr_anon_47 :: #type proc "c" (renderer: ^Renderer, font: ^Font, glyph: Glyph, x: f64, y: f64)
part_changed_func_ptr_anon_48 :: #type proc "c" (renderer: ^Renderer, part: RenderPart)
begin_func_ptr_anon_49 :: #type proc "c" (renderer: ^Renderer)
end_func_ptr_anon_50 :: #type proc "c" (renderer: ^Renderer)
prepare_run_func_ptr_anon_51 :: #type proc "c" (renderer: ^Renderer, run: ^LayoutRun)
draw_glyph_item_func_ptr_anon_52 :: #type proc "c" (renderer: ^Renderer, text: cstring, glyph_item: ^GlyphItem, x: i32, y: i32)
_pango_reserved2_func_ptr_anon_53 :: #type proc "c" ()
_pango_reserved3_func_ptr_anon_54 :: #type proc "c" ()
_pango_reserved4_func_ptr_anon_55 :: #type proc "c" ()
_PangoRendererClass :: struct {
    parent_class: gobj.ObjectClass,
    draw_glyphs: draw_glyphs_func_ptr_anon_42,
    draw_rectangle: draw_rectangle_func_ptr_anon_43,
    draw_error_underline: draw_error_underline_func_ptr_anon_44,
    draw_shape: draw_shape_func_ptr_anon_45,
    draw_trapezoid: draw_trapezoid_func_ptr_anon_46,
    draw_glyph: draw_glyph_func_ptr_anon_47,
    part_changed: part_changed_func_ptr_anon_48,
    begin: begin_func_ptr_anon_49,
    end: end_func_ptr_anon_50,
    prepare_run: prepare_run_func_ptr_anon_51,
    draw_glyph_item: draw_glyph_item_func_ptr_anon_52,
    _pango_reserved2: _pango_reserved2_func_ptr_anon_53,
    _pango_reserved3: _pango_reserved3_func_ptr_anon_54,
    _pango_reserved4: _pango_reserved4_func_ptr_anon_55,
}
RendererClass :: _PangoRendererClass

@(default_calling_convention = "c")
foreign pango_runic {
    @(link_name = "pango_coverage_get_type")
    coverage_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_coverage_new")
    coverage_new :: proc() -> ^Coverage ---

    @(link_name = "pango_coverage_ref")
    coverage_ref :: proc(coverage: ^Coverage) -> ^Coverage ---

    @(link_name = "pango_coverage_unref")
    coverage_unref :: proc(coverage: ^Coverage) ---

    @(link_name = "pango_coverage_copy")
    coverage_copy :: proc(coverage: ^Coverage) -> ^Coverage ---

    @(link_name = "pango_coverage_get")
    coverage_get :: proc(coverage: ^Coverage, index_: i32) -> CoverageLevel ---

    @(link_name = "pango_coverage_set")
    coverage_set :: proc(coverage: ^Coverage, index_: i32, level: CoverageLevel) ---

    @(link_name = "pango_coverage_max")
    coverage_max :: proc(coverage: ^Coverage, other: ^Coverage) ---

    @(link_name = "pango_coverage_to_bytes")
    coverage_to_bytes :: proc(coverage: ^Coverage, bytes: [^]^glib.uchar, n_bytes: [^]i32) ---

    @(link_name = "pango_coverage_from_bytes")
    coverage_from_bytes :: proc(bytes: [^]glib.uchar, n_bytes: i32) -> ^Coverage ---

    @(link_name = "pango_units_from_double")
    units_from_double :: proc(d: f64) -> i32 ---

    @(link_name = "pango_units_to_double")
    units_to_double :: proc(i: i32) -> f64 ---

    @(link_name = "pango_extents_to_pixels")
    extents_to_pixels :: proc(inclusive: ^Rectangle, nearest: ^Rectangle) ---

    @(link_name = "pango_matrix_get_type")
    matrix_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_matrix_copy")
    matrix_copy :: proc(matrix_p: ^Matrix) -> ^Matrix ---

    @(link_name = "pango_matrix_free")
    matrix_free :: proc(matrix_p: ^Matrix) ---

    @(link_name = "pango_matrix_translate")
    matrix_translate :: proc(matrix_p: ^Matrix, tx: f64, ty: f64) ---

    @(link_name = "pango_matrix_scale")
    matrix_scale :: proc(matrix_p: ^Matrix, scale_x: f64, scale_y: f64) ---

    @(link_name = "pango_matrix_rotate")
    matrix_rotate :: proc(matrix_p: ^Matrix, degrees: f64) ---

    @(link_name = "pango_matrix_concat")
    matrix_concat :: proc(matrix_p: ^Matrix, new_matrix: ^Matrix) ---

    @(link_name = "pango_matrix_transform_point")
    matrix_transform_point :: proc(matrix_p: ^Matrix, x: ^f64, y: ^f64) ---

    @(link_name = "pango_matrix_transform_distance")
    matrix_transform_distance :: proc(matrix_p: ^Matrix, dx: ^f64, dy: ^f64) ---

    @(link_name = "pango_matrix_transform_rectangle")
    matrix_transform_rectangle :: proc(matrix_p: ^Matrix, rect: ^Rectangle) ---

    @(link_name = "pango_matrix_transform_pixel_rectangle")
    matrix_transform_pixel_rectangle :: proc(matrix_p: ^Matrix, rect: ^Rectangle) ---

    @(link_name = "pango_matrix_get_font_scale_factor")
    matrix_get_font_scale_factor :: proc(matrix_p: ^Matrix) -> f64 ---

    @(link_name = "pango_matrix_get_font_scale_factors")
    matrix_get_font_scale_factors :: proc(matrix_p: ^Matrix, xscale: ^f64, yscale: ^f64) ---

    @(link_name = "pango_matrix_get_slant_ratio")
    matrix_get_slant_ratio :: proc(matrix_p: ^Matrix) -> f64 ---

    @(link_name = "pango_script_for_unichar")
    script_for_unichar :: proc(ch: glib.unichar) -> Script ---

    @(link_name = "pango_script_iter_get_type")
    script_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_script_iter_new")
    script_iter_new :: proc(text: cstring, length: i32) -> ^ScriptIter ---

    @(link_name = "pango_script_iter_get_range")
    script_iter_get_range :: proc(iter: ^ScriptIter, start: ^cstring, end: ^cstring, script: ^Script) ---

    @(link_name = "pango_script_iter_next")
    script_iter_next :: proc(iter: ^ScriptIter) -> glib.boolean ---

    @(link_name = "pango_script_iter_free")
    script_iter_free :: proc(iter: ^ScriptIter) ---

    @(link_name = "pango_language_get_type")
    language_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_language_get_default")
    language_get_default :: proc() -> ^Language ---

    @(link_name = "pango_language_get_preferred")
    language_get_preferred :: proc() -> ^^Language ---

    @(link_name = "pango_language_from_string")
    language_from_string :: proc(language: cstring) -> ^Language ---

    @(link_name = "pango_language_to_string")
    language_to_string :: proc(language: ^Language) -> cstring ---

    @(link_name = "pango_language_get_sample_string")
    language_get_sample_string :: proc(language: ^Language) -> cstring ---

    @(link_name = "pango_language_matches")
    language_matches :: proc(language: ^Language, range_list: cstring) -> glib.boolean ---

    @(link_name = "pango_language_includes_script")
    language_includes_script :: proc(language: ^Language, script: Script) -> glib.boolean ---

    @(link_name = "pango_language_get_scripts")
    language_get_scripts :: proc(language: ^Language, num_scripts: [^]i32) -> ^Script ---

    @(link_name = "pango_script_get_sample_language")
    script_get_sample_language :: proc(script: Script) -> ^Language ---

    @(link_name = "pango_gravity_to_rotation")
    gravity_to_rotation :: proc(gravity: Gravity) -> f64 ---

    @(link_name = "pango_gravity_get_for_matrix")
    gravity_get_for_matrix :: proc(matrix_p: ^Matrix) -> Gravity ---

    @(link_name = "pango_gravity_get_for_script")
    gravity_get_for_script :: proc(script: Script, base_gravity: Gravity, hint: GravityHint) -> Gravity ---

    @(link_name = "pango_gravity_get_for_script_and_width")
    gravity_get_for_script_and_width :: proc(script: Script, wide: glib.boolean, base_gravity: Gravity, hint: GravityHint) -> Gravity ---

    @(link_name = "pango_bidi_type_for_unichar")
    bidi_type_for_unichar :: proc(ch: glib.unichar) -> BidiType ---

    @(link_name = "pango_unichar_direction")
    unichar_direction :: proc(ch: glib.unichar) -> Direction ---

    @(link_name = "pango_find_base_dir")
    find_base_dir :: proc(text: cstring, length: glib.int_) -> Direction ---

    @(link_name = "pango_get_mirror_char")
    get_mirror_char :: proc(ch: glib.unichar, mirrored_ch: ^glib.unichar) -> glib.boolean ---

    @(link_name = "pango_font_description_get_type")
    font_description_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_font_description_new")
    font_description_new :: proc() -> ^FontDescription ---

    @(link_name = "pango_font_description_copy")
    font_description_copy :: proc(desc: ^FontDescription) -> ^FontDescription ---

    @(link_name = "pango_font_description_copy_static")
    font_description_copy_static :: proc(desc: ^FontDescription) -> ^FontDescription ---

    @(link_name = "pango_font_description_hash")
    font_description_hash :: proc(desc: ^FontDescription) -> glib.uint_ ---

    @(link_name = "pango_font_description_equal")
    font_description_equal :: proc(desc1: ^FontDescription, desc2: ^FontDescription) -> glib.boolean ---

    @(link_name = "pango_font_description_free")
    font_description_free :: proc(desc: ^FontDescription) ---

    @(link_name = "pango_font_descriptions_free")
    font_descriptions_free :: proc(descs: [^]^FontDescription, n_descs: i32) ---

    @(link_name = "pango_font_description_set_family")
    font_description_set_family :: proc(desc: ^FontDescription, family: cstring) ---

    @(link_name = "pango_font_description_set_family_static")
    font_description_set_family_static :: proc(desc: ^FontDescription, family: cstring) ---

    @(link_name = "pango_font_description_get_family")
    font_description_get_family :: proc(desc: ^FontDescription) -> cstring ---

    @(link_name = "pango_font_description_set_style")
    font_description_set_style :: proc(desc: ^FontDescription, style: Style) ---

    @(link_name = "pango_font_description_get_style")
    font_description_get_style :: proc(desc: ^FontDescription) -> Style ---

    @(link_name = "pango_font_description_set_variant")
    font_description_set_variant :: proc(desc: ^FontDescription, variant: Variant) ---

    @(link_name = "pango_font_description_get_variant")
    font_description_get_variant :: proc(desc: ^FontDescription) -> Variant ---

    @(link_name = "pango_font_description_set_weight")
    font_description_set_weight :: proc(desc: ^FontDescription, weight: Weight) ---

    @(link_name = "pango_font_description_get_weight")
    font_description_get_weight :: proc(desc: ^FontDescription) -> Weight ---

    @(link_name = "pango_font_description_set_stretch")
    font_description_set_stretch :: proc(desc: ^FontDescription, stretch: Stretch) ---

    @(link_name = "pango_font_description_get_stretch")
    font_description_get_stretch :: proc(desc: ^FontDescription) -> Stretch ---

    @(link_name = "pango_font_description_set_size")
    font_description_set_size :: proc(desc: ^FontDescription, size_p: glib.int_) ---

    @(link_name = "pango_font_description_get_size")
    font_description_get_size :: proc(desc: ^FontDescription) -> glib.int_ ---

    @(link_name = "pango_font_description_set_absolute_size")
    font_description_set_absolute_size :: proc(desc: ^FontDescription, size_p: f64) ---

    @(link_name = "pango_font_description_get_size_is_absolute")
    font_description_get_size_is_absolute :: proc(desc: ^FontDescription) -> glib.boolean ---

    @(link_name = "pango_font_description_set_gravity")
    font_description_set_gravity :: proc(desc: ^FontDescription, gravity: Gravity) ---

    @(link_name = "pango_font_description_get_gravity")
    font_description_get_gravity :: proc(desc: ^FontDescription) -> Gravity ---

    @(link_name = "pango_font_description_set_variations_static")
    font_description_set_variations_static :: proc(desc: ^FontDescription, variations: cstring) ---

    @(link_name = "pango_font_description_set_variations")
    font_description_set_variations :: proc(desc: ^FontDescription, variations: cstring) ---

    @(link_name = "pango_font_description_get_variations")
    font_description_get_variations :: proc(desc: ^FontDescription) -> cstring ---

    @(link_name = "pango_font_description_get_set_fields")
    font_description_get_set_fields :: proc(desc: ^FontDescription) -> FontMask ---

    @(link_name = "pango_font_description_unset_fields")
    font_description_unset_fields :: proc(desc: ^FontDescription, to_unset: FontMask) ---

    @(link_name = "pango_font_description_merge")
    font_description_merge :: proc(desc: ^FontDescription, desc_to_merge: ^FontDescription, replace_existing: glib.boolean) ---

    @(link_name = "pango_font_description_merge_static")
    font_description_merge_static :: proc(desc: ^FontDescription, desc_to_merge: ^FontDescription, replace_existing: glib.boolean) ---

    @(link_name = "pango_font_description_better_match")
    font_description_better_match :: proc(desc: ^FontDescription, old_match: ^FontDescription, new_match: ^FontDescription) -> glib.boolean ---

    @(link_name = "pango_font_description_from_string")
    font_description_from_string :: proc(str: cstring) -> ^FontDescription ---

    @(link_name = "pango_font_description_to_string")
    font_description_to_string :: proc(desc: ^FontDescription) -> cstring ---

    @(link_name = "pango_font_description_to_filename")
    font_description_to_filename :: proc(desc: ^FontDescription) -> cstring ---

    @(link_name = "pango_font_metrics_get_type")
    font_metrics_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_font_metrics_ref")
    font_metrics_ref :: proc(metrics: [^]FontMetrics) -> ^FontMetrics ---

    @(link_name = "pango_font_metrics_unref")
    font_metrics_unref :: proc(metrics: [^]FontMetrics) ---

    @(link_name = "pango_font_metrics_get_ascent")
    font_metrics_get_ascent :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_metrics_get_descent")
    font_metrics_get_descent :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_metrics_get_height")
    font_metrics_get_height :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_metrics_get_approximate_char_width")
    font_metrics_get_approximate_char_width :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_metrics_get_approximate_digit_width")
    font_metrics_get_approximate_digit_width :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_metrics_get_underline_position")
    font_metrics_get_underline_position :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_metrics_get_underline_thickness")
    font_metrics_get_underline_thickness :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_metrics_get_strikethrough_position")
    font_metrics_get_strikethrough_position :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_metrics_get_strikethrough_thickness")
    font_metrics_get_strikethrough_thickness :: proc(metrics: [^]FontMetrics) -> i32 ---

    @(link_name = "pango_font_family_get_type")
    font_family_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_font_family_list_faces")
    font_family_list_faces :: proc(family: ^FontFamily, faces: [^]^^FontFace, n_faces: [^]i32) ---

    @(link_name = "pango_font_family_get_name")
    font_family_get_name :: proc(family: ^FontFamily) -> cstring ---

    @(link_name = "pango_font_family_is_monospace")
    font_family_is_monospace :: proc(family: ^FontFamily) -> glib.boolean ---

    @(link_name = "pango_font_family_is_variable")
    font_family_is_variable :: proc(family: ^FontFamily) -> glib.boolean ---

    @(link_name = "pango_font_family_get_face")
    font_family_get_face :: proc(family: ^FontFamily, name: cstring) -> ^FontFace ---

    @(link_name = "pango_font_face_get_type")
    font_face_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_font_face_describe")
    font_face_describe :: proc(face: ^FontFace) -> ^FontDescription ---

    @(link_name = "pango_font_face_get_face_name")
    font_face_get_face_name :: proc(face: ^FontFace) -> cstring ---

    @(link_name = "pango_font_face_list_sizes")
    font_face_list_sizes :: proc(face: ^FontFace, sizes: [^]^i32, n_sizes: [^]i32) ---

    @(link_name = "pango_font_face_is_synthesized")
    font_face_is_synthesized :: proc(face: ^FontFace) -> glib.boolean ---

    @(link_name = "pango_font_face_get_family")
    font_face_get_family :: proc(face: ^FontFace) -> ^FontFamily ---

    @(link_name = "pango_font_get_type")
    font_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_font_describe")
    font_describe :: proc(font: ^Font) -> ^FontDescription ---

    @(link_name = "pango_font_describe_with_absolute_size")
    font_describe_with_absolute_size :: proc(font: ^Font) -> ^FontDescription ---

    @(link_name = "pango_font_get_coverage")
    font_get_coverage :: proc(font: ^Font, language: ^Language) -> ^Coverage ---

    @(link_name = "pango_font_find_shaper")
    font_find_shaper :: proc(font: ^Font, language: ^Language, ch: glib.uint32) -> ^EngineShape ---

    @(link_name = "pango_font_get_metrics")
    font_get_metrics :: proc(font: ^Font, language: ^Language) -> ^FontMetrics ---

    @(link_name = "pango_font_get_glyph_extents")
    font_get_glyph_extents :: proc(font: ^Font, glyph: Glyph, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_font_get_font_map")
    font_get_font_map :: proc(font: ^Font) -> ^FontMap ---

    @(link_name = "pango_font_get_face")
    font_get_face :: proc(font: ^Font) -> ^FontFace ---

    @(link_name = "pango_font_has_char")
    font_has_char :: proc(font: ^Font, wc: glib.unichar) -> glib.boolean ---

    @(link_name = "pango_font_get_features")
    font_get_features :: proc(font: ^Font, features: [^]hb_feature_t, len: glib.uint_, num_features: [^]glib.uint_) ---

    @(link_name = "pango_font_get_hb_font")
    font_get_hb_font :: proc(font: ^Font) -> ^hb_font_t ---

    @(link_name = "pango_font_get_languages")
    font_get_languages :: proc(font: ^Font) -> ^^Language ---

    @(link_name = "pango_font_serialize")
    font_serialize :: proc(font: ^Font) -> ^glib.Bytes ---

    @(link_name = "pango_font_deserialize")
    font_deserialize :: proc(context_p: ^Context, bytes: [^]glib.Bytes, error: ^^glib.Error) -> ^Font ---

    @(link_name = "pango_color_get_type")
    color_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_color_copy")
    color_copy :: proc(src: ^Color) -> ^Color ---

    @(link_name = "pango_color_free")
    color_free :: proc(color: ^Color) ---

    @(link_name = "pango_color_parse")
    color_parse :: proc(color: ^Color, spec: cstring) -> glib.boolean ---

    @(link_name = "pango_color_parse_with_alpha")
    color_parse_with_alpha :: proc(color: ^Color, alpha: ^glib.uint16, spec: cstring) -> glib.boolean ---

    @(link_name = "pango_color_to_string")
    color_to_string :: proc(color: ^Color) -> cstring ---

    @(link_name = "pango_attribute_get_type")
    attribute_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_attr_type_register")
    attr_type_register :: proc(name: cstring) -> AttrType ---

    @(link_name = "pango_attr_type_get_name")
    attr_type_get_name :: proc(type: AttrType) -> cstring ---

    @(link_name = "pango_attribute_init")
    attribute_init :: proc(attr: ^Attribute, klass: [^]AttrClass) ---

    @(link_name = "pango_attribute_copy")
    attribute_copy :: proc(attr: ^Attribute) -> ^Attribute ---

    @(link_name = "pango_attribute_destroy")
    attribute_destroy :: proc(attr: ^Attribute) ---

    @(link_name = "pango_attribute_equal")
    attribute_equal :: proc(attr1: ^Attribute, attr2: ^Attribute) -> glib.boolean ---

    @(link_name = "pango_attr_language_new")
    attr_language_new :: proc(language: ^Language) -> ^Attribute ---

    @(link_name = "pango_attr_family_new")
    attr_family_new :: proc(family: cstring) -> ^Attribute ---

    @(link_name = "pango_attr_foreground_new")
    attr_foreground_new :: proc(red: glib.uint16, green: glib.uint16, blue: glib.uint16) -> ^Attribute ---

    @(link_name = "pango_attr_background_new")
    attr_background_new :: proc(red: glib.uint16, green: glib.uint16, blue: glib.uint16) -> ^Attribute ---

    @(link_name = "pango_attr_size_new")
    attr_size_new :: proc(size_p: i32) -> ^Attribute ---

    @(link_name = "pango_attr_size_new_absolute")
    attr_size_new_absolute :: proc(size_p: i32) -> ^Attribute ---

    @(link_name = "pango_attr_style_new")
    attr_style_new :: proc(style: Style) -> ^Attribute ---

    @(link_name = "pango_attr_weight_new")
    attr_weight_new :: proc(weight: Weight) -> ^Attribute ---

    @(link_name = "pango_attr_variant_new")
    attr_variant_new :: proc(variant: Variant) -> ^Attribute ---

    @(link_name = "pango_attr_stretch_new")
    attr_stretch_new :: proc(stretch: Stretch) -> ^Attribute ---

    @(link_name = "pango_attr_font_desc_new")
    attr_font_desc_new :: proc(desc: ^FontDescription) -> ^Attribute ---

    @(link_name = "pango_attr_underline_new")
    attr_underline_new :: proc(underline: Underline) -> ^Attribute ---

    @(link_name = "pango_attr_underline_color_new")
    attr_underline_color_new :: proc(red: glib.uint16, green: glib.uint16, blue: glib.uint16) -> ^Attribute ---

    @(link_name = "pango_attr_strikethrough_new")
    attr_strikethrough_new :: proc(strikethrough: glib.boolean) -> ^Attribute ---

    @(link_name = "pango_attr_strikethrough_color_new")
    attr_strikethrough_color_new :: proc(red: glib.uint16, green: glib.uint16, blue: glib.uint16) -> ^Attribute ---

    @(link_name = "pango_attr_rise_new")
    attr_rise_new :: proc(rise: i32) -> ^Attribute ---

    @(link_name = "pango_attr_baseline_shift_new")
    attr_baseline_shift_new :: proc(shift: i32) -> ^Attribute ---

    @(link_name = "pango_attr_font_scale_new")
    attr_font_scale_new :: proc(scale: FontScale) -> ^Attribute ---

    @(link_name = "pango_attr_scale_new")
    attr_scale_new :: proc(scale_factor: f64) -> ^Attribute ---

    @(link_name = "pango_attr_fallback_new")
    attr_fallback_new :: proc(enable_fallback: glib.boolean) -> ^Attribute ---

    @(link_name = "pango_attr_letter_spacing_new")
    attr_letter_spacing_new :: proc(letter_spacing: i32) -> ^Attribute ---

    @(link_name = "pango_attr_shape_new")
    attr_shape_new :: proc(ink_rect: ^Rectangle, logical_rect: ^Rectangle) -> ^Attribute ---

    @(link_name = "pango_attr_shape_new_with_data")
    attr_shape_new_with_data :: proc(ink_rect: ^Rectangle, logical_rect: ^Rectangle, data: glib.pointer, copy_func: AttrDataCopyFunc, destroy_func: glib.DestroyNotify) -> ^Attribute ---

    @(link_name = "pango_attr_gravity_new")
    attr_gravity_new :: proc(gravity: Gravity) -> ^Attribute ---

    @(link_name = "pango_attr_gravity_hint_new")
    attr_gravity_hint_new :: proc(hint: GravityHint) -> ^Attribute ---

    @(link_name = "pango_attr_font_features_new")
    attr_font_features_new :: proc(features: cstring) -> ^Attribute ---

    @(link_name = "pango_attr_foreground_alpha_new")
    attr_foreground_alpha_new :: proc(alpha: glib.uint16) -> ^Attribute ---

    @(link_name = "pango_attr_background_alpha_new")
    attr_background_alpha_new :: proc(alpha: glib.uint16) -> ^Attribute ---

    @(link_name = "pango_attr_allow_breaks_new")
    attr_allow_breaks_new :: proc(allow_breaks: glib.boolean) -> ^Attribute ---

    @(link_name = "pango_attr_word_new")
    attr_word_new :: proc() -> ^Attribute ---

    @(link_name = "pango_attr_sentence_new")
    attr_sentence_new :: proc() -> ^Attribute ---

    @(link_name = "pango_attr_insert_hyphens_new")
    attr_insert_hyphens_new :: proc(insert_hyphens: glib.boolean) -> ^Attribute ---

    @(link_name = "pango_attr_overline_new")
    attr_overline_new :: proc(overline: Overline) -> ^Attribute ---

    @(link_name = "pango_attr_overline_color_new")
    attr_overline_color_new :: proc(red: glib.uint16, green: glib.uint16, blue: glib.uint16) -> ^Attribute ---

    @(link_name = "pango_attr_show_new")
    attr_show_new :: proc(flags: ShowFlags) -> ^Attribute ---

    @(link_name = "pango_attr_line_height_new")
    attr_line_height_new :: proc(factor: f64) -> ^Attribute ---

    @(link_name = "pango_attr_line_height_new_absolute")
    attr_line_height_new_absolute :: proc(height: i32) -> ^Attribute ---

    @(link_name = "pango_attr_text_transform_new")
    attr_text_transform_new :: proc(transform: TextTransform) -> ^Attribute ---

    @(link_name = "pango_attribute_as_string")
    attribute_as_string :: proc(attr: ^Attribute) -> ^AttrString ---

    @(link_name = "pango_attribute_as_language")
    attribute_as_language :: proc(attr: ^Attribute) -> ^AttrLanguage ---

    @(link_name = "pango_attribute_as_int")
    attribute_as_int :: proc(attr: ^Attribute) -> ^AttrInt ---

    @(link_name = "pango_attribute_as_size")
    attribute_as_size :: proc(attr: ^Attribute) -> ^AttrSize ---

    @(link_name = "pango_attribute_as_float")
    attribute_as_float :: proc(attr: ^Attribute) -> ^AttrFloat ---

    @(link_name = "pango_attribute_as_color")
    attribute_as_color :: proc(attr: ^Attribute) -> ^AttrColor ---

    @(link_name = "pango_attribute_as_font_desc")
    attribute_as_font_desc :: proc(attr: ^Attribute) -> ^AttrFontDesc ---

    @(link_name = "pango_attribute_as_shape")
    attribute_as_shape :: proc(attr: ^Attribute) -> ^AttrShape ---

    @(link_name = "pango_attribute_as_font_features")
    attribute_as_font_features :: proc(attr: ^Attribute) -> ^AttrFontFeatures ---

    @(link_name = "pango_attr_list_get_type")
    attr_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_attr_list_new")
    attr_list_new :: proc() -> ^AttrList ---

    @(link_name = "pango_attr_list_ref")
    attr_list_ref :: proc(list: ^AttrList) -> ^AttrList ---

    @(link_name = "pango_attr_list_unref")
    attr_list_unref :: proc(list: ^AttrList) ---

    @(link_name = "pango_attr_list_copy")
    attr_list_copy :: proc(list: ^AttrList) -> ^AttrList ---

    @(link_name = "pango_attr_list_insert")
    attr_list_insert :: proc(list: ^AttrList, attr: ^Attribute) ---

    @(link_name = "pango_attr_list_insert_before")
    attr_list_insert_before :: proc(list: ^AttrList, attr: ^Attribute) ---

    @(link_name = "pango_attr_list_change")
    attr_list_change :: proc(list: ^AttrList, attr: ^Attribute) ---

    @(link_name = "pango_attr_list_splice")
    attr_list_splice :: proc(list: ^AttrList, other: ^AttrList, pos: i32, len: i32) ---

    @(link_name = "pango_attr_list_update")
    attr_list_update :: proc(list: ^AttrList, pos: i32, remove: i32, add: i32) ---

    @(link_name = "pango_attr_list_filter")
    attr_list_filter :: proc(list: ^AttrList, func: AttrFilterFunc, data: glib.pointer) -> ^AttrList ---

    @(link_name = "pango_attr_list_get_attributes")
    attr_list_get_attributes :: proc(list: ^AttrList) -> ^glib.SList ---

    @(link_name = "pango_attr_list_equal")
    attr_list_equal :: proc(list: ^AttrList, other_list: ^AttrList) -> glib.boolean ---

    @(link_name = "pango_attr_list_to_string")
    attr_list_to_string :: proc(list: ^AttrList) -> cstring ---

    @(link_name = "pango_attr_list_from_string")
    attr_list_from_string :: proc(text: cstring) -> ^AttrList ---

    @(link_name = "pango_attr_iterator_get_type")
    attr_iterator_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_attr_list_get_iterator")
    attr_list_get_iterator :: proc(list: ^AttrList) -> ^AttrIterator ---

    @(link_name = "pango_attr_iterator_range")
    attr_iterator_range :: proc(iterator: ^AttrIterator, start: ^i32, end: ^i32) ---

    @(link_name = "pango_attr_iterator_next")
    attr_iterator_next :: proc(iterator: ^AttrIterator) -> glib.boolean ---

    @(link_name = "pango_attr_iterator_copy")
    attr_iterator_copy :: proc(iterator: ^AttrIterator) -> ^AttrIterator ---

    @(link_name = "pango_attr_iterator_destroy")
    attr_iterator_destroy :: proc(iterator: ^AttrIterator) ---

    @(link_name = "pango_attr_iterator_get")
    attr_iterator_get :: proc(iterator: ^AttrIterator, type: AttrType) -> ^Attribute ---

    @(link_name = "pango_attr_iterator_get_font")
    attr_iterator_get_font :: proc(iterator: ^AttrIterator, desc: ^FontDescription, language: ^^Language, extra_attrs: [^]^glib.SList) ---

    @(link_name = "pango_attr_iterator_get_attrs")
    attr_iterator_get_attrs :: proc(iterator: ^AttrIterator) -> ^glib.SList ---

    @(link_name = "pango_item_get_type")
    item_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_item_new")
    item_new :: proc() -> ^Item ---

    @(link_name = "pango_item_copy")
    item_copy :: proc(item: ^Item) -> ^Item ---

    @(link_name = "pango_item_free")
    item_free :: proc(item: ^Item) ---

    @(link_name = "pango_item_get_char_offset")
    item_get_char_offset :: proc(item: ^Item) -> i32 ---

    @(link_name = "pango_item_split")
    item_split :: proc(orig: ^Item, split_index: i32, split_offset: i32) -> ^Item ---

    @(link_name = "pango_item_apply_attrs")
    item_apply_attrs :: proc(item: ^Item, iter: ^AttrIterator) ---

    @(link_name = "pango_reorder_items")
    reorder_items :: proc(items: [^]glib.List) -> ^glib.List ---

    @(link_name = "pango_itemize")
    itemize :: proc(context_p: ^Context, text: cstring, start_index: i32, length: i32, attrs: [^]AttrList, cached_iter: ^AttrIterator) -> ^glib.List ---

    @(link_name = "pango_itemize_with_base_dir")
    itemize_with_base_dir :: proc(context_p: ^Context, base_dir: Direction, text: cstring, start_index: i32, length: i32, attrs: [^]AttrList, cached_iter: ^AttrIterator) -> ^glib.List ---

    @(link_name = "pango_break")
    break_ :: proc(text: cstring, length: i32, analysis: [^]Analysis, attrs: [^]LogAttr, attrs_len: i32) ---

    @(link_name = "pango_get_log_attrs")
    get_log_attrs :: proc(text: cstring, length: i32, level: i32, language: ^Language, attrs: [^]LogAttr, attrs_len: i32) ---

    @(link_name = "pango_default_break")
    default_break :: proc(text: cstring, length: i32, analysis: [^]Analysis, attrs: [^]LogAttr, attrs_len: i32) ---

    @(link_name = "pango_tailor_break")
    tailor_break :: proc(text: cstring, length: i32, analysis: [^]Analysis, offset: i32, attrs: [^]LogAttr, attrs_len: i32) ---

    @(link_name = "pango_attr_break")
    attr_break :: proc(text: cstring, length: i32, attr_list: ^AttrList, offset: i32, attrs: [^]LogAttr, attrs_len: i32) ---

    @(link_name = "pango_fontset_get_type")
    fontset_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_fontset_get_font")
    fontset_get_font :: proc(fontset: ^Fontset, wc: glib.uint_) -> ^Font ---

    @(link_name = "pango_fontset_get_metrics")
    fontset_get_metrics :: proc(fontset: ^Fontset) -> ^FontMetrics ---

    @(link_name = "pango_fontset_foreach")
    fontset_foreach :: proc(fontset: ^Fontset, func: FontsetForeachFunc, data: glib.pointer) ---

    @(link_name = "pango_font_map_get_type")
    font_map_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_font_map_create_context")
    font_map_create_context :: proc(fontmap: ^FontMap) -> ^Context ---

    @(link_name = "pango_font_map_load_font")
    font_map_load_font :: proc(fontmap: ^FontMap, context_p: ^Context, desc: ^FontDescription) -> ^Font ---

    @(link_name = "pango_font_map_load_fontset")
    font_map_load_fontset :: proc(fontmap: ^FontMap, context_p: ^Context, desc: ^FontDescription, language: ^Language) -> ^Fontset ---

    @(link_name = "pango_font_map_list_families")
    font_map_list_families :: proc(fontmap: ^FontMap, families: [^]^^FontFamily, n_families: [^]i32) ---

    @(link_name = "pango_font_map_get_serial")
    font_map_get_serial :: proc(fontmap: ^FontMap) -> glib.uint_ ---

    @(link_name = "pango_font_map_changed")
    font_map_changed :: proc(fontmap: ^FontMap) ---

    @(link_name = "pango_font_map_get_family")
    font_map_get_family :: proc(fontmap: ^FontMap, name: cstring) -> ^FontFamily ---

    @(link_name = "pango_font_map_reload_font")
    font_map_reload_font :: proc(fontmap: ^FontMap, font: ^Font, scale: f64, context_p: ^Context, variations: cstring) -> ^Font ---

    @(link_name = "pango_font_map_add_font_file")
    font_map_add_font_file :: proc(fontmap: ^FontMap, filename: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "pango_context_get_type")
    context_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_context_new")
    context_new :: proc() -> ^Context ---

    @(link_name = "pango_context_changed")
    context_changed :: proc(context_p: ^Context) ---

    @(link_name = "pango_context_set_font_map")
    context_set_font_map :: proc(context_p: ^Context, font_map: ^FontMap) ---

    @(link_name = "pango_context_get_font_map")
    context_get_font_map :: proc(context_p: ^Context) -> ^FontMap ---

    @(link_name = "pango_context_get_serial")
    context_get_serial :: proc(context_p: ^Context) -> glib.uint_ ---

    @(link_name = "pango_context_list_families")
    context_list_families :: proc(context_p: ^Context, families: [^]^^FontFamily, n_families: [^]i32) ---

    @(link_name = "pango_context_load_font")
    context_load_font :: proc(context_p: ^Context, desc: ^FontDescription) -> ^Font ---

    @(link_name = "pango_context_load_fontset")
    context_load_fontset :: proc(context_p: ^Context, desc: ^FontDescription, language: ^Language) -> ^Fontset ---

    @(link_name = "pango_context_get_metrics")
    context_get_metrics :: proc(context_p: ^Context, desc: ^FontDescription, language: ^Language) -> ^FontMetrics ---

    @(link_name = "pango_context_set_font_description")
    context_set_font_description :: proc(context_p: ^Context, desc: ^FontDescription) ---

    @(link_name = "pango_context_get_font_description")
    context_get_font_description :: proc(context_p: ^Context) -> ^FontDescription ---

    @(link_name = "pango_context_get_language")
    context_get_language :: proc(context_p: ^Context) -> ^Language ---

    @(link_name = "pango_context_set_language")
    context_set_language :: proc(context_p: ^Context, language: ^Language) ---

    @(link_name = "pango_context_set_base_dir")
    context_set_base_dir :: proc(context_p: ^Context, direction: Direction) ---

    @(link_name = "pango_context_get_base_dir")
    context_get_base_dir :: proc(context_p: ^Context) -> Direction ---

    @(link_name = "pango_context_set_base_gravity")
    context_set_base_gravity :: proc(context_p: ^Context, gravity: Gravity) ---

    @(link_name = "pango_context_get_base_gravity")
    context_get_base_gravity :: proc(context_p: ^Context) -> Gravity ---

    @(link_name = "pango_context_get_gravity")
    context_get_gravity :: proc(context_p: ^Context) -> Gravity ---

    @(link_name = "pango_context_set_gravity_hint")
    context_set_gravity_hint :: proc(context_p: ^Context, hint: GravityHint) ---

    @(link_name = "pango_context_get_gravity_hint")
    context_get_gravity_hint :: proc(context_p: ^Context) -> GravityHint ---

    @(link_name = "pango_context_set_matrix")
    context_set_matrix :: proc(context_p: ^Context, matrix_p: ^Matrix) ---

    @(link_name = "pango_context_get_matrix")
    context_get_matrix :: proc(context_p: ^Context) -> ^Matrix ---

    @(link_name = "pango_context_set_round_glyph_positions")
    context_set_round_glyph_positions :: proc(context_p: ^Context, round_positions: glib.boolean) ---

    @(link_name = "pango_context_get_round_glyph_positions")
    context_get_round_glyph_positions :: proc(context_p: ^Context) -> glib.boolean ---

    @(link_name = "pango_glyph_string_get_type")
    glyph_string_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_glyph_string_new")
    glyph_string_new :: proc() -> ^GlyphString ---

    @(link_name = "pango_glyph_string_set_size")
    glyph_string_set_size :: proc(string_p: ^GlyphString, new_len: i32) ---

    @(link_name = "pango_glyph_string_copy")
    glyph_string_copy :: proc(string_p: ^GlyphString) -> ^GlyphString ---

    @(link_name = "pango_glyph_string_free")
    glyph_string_free :: proc(string_p: ^GlyphString) ---

    @(link_name = "pango_glyph_string_extents")
    glyph_string_extents :: proc(glyphs: [^]GlyphString, font: ^Font, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_glyph_string_get_width")
    glyph_string_get_width :: proc(glyphs: [^]GlyphString) -> i32 ---

    @(link_name = "pango_glyph_string_extents_range")
    glyph_string_extents_range :: proc(glyphs: [^]GlyphString, start: i32, end: i32, font: ^Font, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_glyph_string_get_logical_widths")
    glyph_string_get_logical_widths :: proc(glyphs: [^]GlyphString, text: cstring, length: i32, embedding_level: i32, logical_widths: [^]i32) ---

    @(link_name = "pango_glyph_string_index_to_x")
    glyph_string_index_to_x :: proc(glyphs: [^]GlyphString, text: cstring, length: i32, analysis: [^]Analysis, index_: i32, trailing: glib.boolean, x_pos: [^]i32) ---

    @(link_name = "pango_glyph_string_x_to_index")
    glyph_string_x_to_index :: proc(glyphs: [^]GlyphString, text: cstring, length: i32, analysis: [^]Analysis, x_pos: i32, index_: ^i32, trailing: ^i32) ---

    @(link_name = "pango_glyph_string_index_to_x_full")
    glyph_string_index_to_x_full :: proc(glyphs: [^]GlyphString, text: cstring, length: i32, analysis: [^]Analysis, attrs: [^]LogAttr, index_: i32, trailing: glib.boolean, x_pos: [^]i32) ---

    @(link_name = "pango_shape")
    shape :: proc(text: cstring, length: i32, analysis: [^]Analysis, glyphs: [^]GlyphString) ---

    @(link_name = "pango_shape_full")
    shape_full :: proc(item_text: cstring, item_length: i32, paragraph_text: cstring, paragraph_length: i32, analysis: [^]Analysis, glyphs: [^]GlyphString) ---

    @(link_name = "pango_shape_with_flags")
    shape_with_flags :: proc(item_text: cstring, item_length: i32, paragraph_text: cstring, paragraph_length: i32, analysis: [^]Analysis, glyphs: [^]GlyphString, flags: ShapeFlags) ---

    @(link_name = "pango_shape_item")
    shape_item :: proc(item: ^Item, paragraph_text: cstring, paragraph_length: i32, log_attrs: [^]LogAttr, glyphs: [^]GlyphString, flags: ShapeFlags) ---

    @(link_name = "pango_engine_get_type")
    engine_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_engine_lang_get_type")
    engine_lang_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_engine_shape_get_type")
    engine_shape_get_type :: proc() -> gobj.Type ---

    @(link_name = "script_engine_list")
    script_engine_list :: proc(engines: [^]^EngineInfo, n_engines: [^]i32) ---

    @(link_name = "script_engine_init")
    script_engine_init :: proc(module: ^gobj.TypeModule) ---

    @(link_name = "script_engine_exit")
    script_engine_exit :: proc() ---

    @(link_name = "script_engine_create")
    script_engine_create :: proc(id: cstring) -> ^Engine ---

    @(link_name = "pango_attr_type_get_type")
    attr_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_underline_get_type")
    underline_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_overline_get_type")
    overline_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_show_flags_get_type")
    show_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_text_transform_get_type")
    text_transform_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_baseline_shift_get_type")
    baseline_shift_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_font_scale_get_type")
    font_scale_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_bidi_type_get_type")
    bidi_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_coverage_level_get_type")
    coverage_level_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_direction_get_type")
    direction_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_style_get_type")
    style_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_variant_get_type")
    variant_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_weight_get_type")
    weight_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_stretch_get_type")
    stretch_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_font_mask_get_type")
    font_mask_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_shape_flags_get_type")
    shape_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_gravity_get_type")
    gravity_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_gravity_hint_get_type")
    gravity_hint_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_alignment_get_type")
    alignment_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_wrap_mode_get_type")
    wrap_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_ellipsize_mode_get_type")
    ellipsize_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_layout_serialize_flags_get_type")
    layout_serialize_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_layout_deserialize_error_get_type")
    layout_deserialize_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_layout_deserialize_flags_get_type")
    layout_deserialize_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_render_part_get_type")
    render_part_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_script_get_type")
    script_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_tab_align_get_type")
    tab_align_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_fontset_simple_get_type")
    fontset_simple_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_fontset_simple_new")
    fontset_simple_new :: proc(language: ^Language) -> ^FontsetSimple ---

    @(link_name = "pango_fontset_simple_append")
    fontset_simple_append :: proc(fontset: ^FontsetSimple, font: ^Font) ---

    @(link_name = "pango_fontset_simple_size")
    fontset_simple_size :: proc(fontset: ^FontsetSimple) -> i32 ---

    @(link_name = "pango_glyph_item_get_type")
    glyph_item_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_glyph_item_split")
    glyph_item_split :: proc(orig: ^GlyphItem, text: cstring, split_index: i32) -> ^GlyphItem ---

    @(link_name = "pango_glyph_item_copy")
    glyph_item_copy :: proc(orig: ^GlyphItem) -> ^GlyphItem ---

    @(link_name = "pango_glyph_item_free")
    glyph_item_free :: proc(glyph_item: ^GlyphItem) ---

    @(link_name = "pango_glyph_item_apply_attrs")
    glyph_item_apply_attrs :: proc(glyph_item: ^GlyphItem, text: cstring, list: ^AttrList) -> ^glib.SList ---

    @(link_name = "pango_glyph_item_letter_space")
    glyph_item_letter_space :: proc(glyph_item: ^GlyphItem, text: cstring, log_attrs: [^]LogAttr, letter_spacing: i32) ---

    @(link_name = "pango_glyph_item_get_logical_widths")
    glyph_item_get_logical_widths :: proc(glyph_item: ^GlyphItem, text: cstring, logical_widths: [^]i32) ---

    @(link_name = "pango_glyph_item_iter_get_type")
    glyph_item_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_glyph_item_iter_copy")
    glyph_item_iter_copy :: proc(orig: ^GlyphItemIter) -> ^GlyphItemIter ---

    @(link_name = "pango_glyph_item_iter_free")
    glyph_item_iter_free :: proc(iter: ^GlyphItemIter) ---

    @(link_name = "pango_glyph_item_iter_init_start")
    glyph_item_iter_init_start :: proc(iter: ^GlyphItemIter, glyph_item: ^GlyphItem, text: cstring) -> glib.boolean ---

    @(link_name = "pango_glyph_item_iter_init_end")
    glyph_item_iter_init_end :: proc(iter: ^GlyphItemIter, glyph_item: ^GlyphItem, text: cstring) -> glib.boolean ---

    @(link_name = "pango_glyph_item_iter_next_cluster")
    glyph_item_iter_next_cluster :: proc(iter: ^GlyphItemIter) -> glib.boolean ---

    @(link_name = "pango_glyph_item_iter_prev_cluster")
    glyph_item_iter_prev_cluster :: proc(iter: ^GlyphItemIter) -> glib.boolean ---

    @(link_name = "pango_tab_array_new")
    tab_array_new :: proc(initial_size: glib.int_, positions_in_pixels: glib.boolean) -> ^TabArray ---

    @(link_name = "pango_tab_array_new_with_positions")
    tab_array_new_with_positions :: proc(size_p: glib.int_, positions_in_pixels: glib.boolean, first_alignment: TabAlign, first_position: glib.int_, #c_vararg var_args: ..any) -> ^TabArray ---

    @(link_name = "pango_tab_array_get_type")
    tab_array_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_tab_array_copy")
    tab_array_copy :: proc(src: ^TabArray) -> ^TabArray ---

    @(link_name = "pango_tab_array_free")
    tab_array_free :: proc(tab_array: ^TabArray) ---

    @(link_name = "pango_tab_array_get_size")
    tab_array_get_size :: proc(tab_array: ^TabArray) -> glib.int_ ---

    @(link_name = "pango_tab_array_resize")
    tab_array_resize :: proc(tab_array: ^TabArray, new_size: glib.int_) ---

    @(link_name = "pango_tab_array_set_tab")
    tab_array_set_tab :: proc(tab_array: ^TabArray, tab_index: glib.int_, alignment: TabAlign, location: glib.int_) ---

    @(link_name = "pango_tab_array_get_tab")
    tab_array_get_tab :: proc(tab_array: ^TabArray, tab_index: glib.int_, alignment: ^TabAlign, location: ^glib.int_) ---

    @(link_name = "pango_tab_array_get_tabs")
    tab_array_get_tabs :: proc(tab_array: ^TabArray, alignments: [^]^TabAlign, locations: [^]^glib.int_) ---

    @(link_name = "pango_tab_array_get_positions_in_pixels")
    tab_array_get_positions_in_pixels :: proc(tab_array: ^TabArray) -> glib.boolean ---

    @(link_name = "pango_tab_array_set_positions_in_pixels")
    tab_array_set_positions_in_pixels :: proc(tab_array: ^TabArray, positions_in_pixels: glib.boolean) ---

    @(link_name = "pango_tab_array_to_string")
    tab_array_to_string :: proc(tab_array: ^TabArray) -> cstring ---

    @(link_name = "pango_tab_array_from_string")
    tab_array_from_string :: proc(text: cstring) -> ^TabArray ---

    @(link_name = "pango_tab_array_set_decimal_point")
    tab_array_set_decimal_point :: proc(tab_array: ^TabArray, tab_index: i32, decimal_point: glib.unichar) ---

    @(link_name = "pango_tab_array_get_decimal_point")
    tab_array_get_decimal_point :: proc(tab_array: ^TabArray, tab_index: i32) -> glib.unichar ---

    @(link_name = "pango_tab_array_sort")
    tab_array_sort :: proc(tab_array: ^TabArray) ---

    @(link_name = "pango_layout_get_type")
    layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_layout_new")
    layout_new :: proc(context_p: ^Context) -> ^Layout ---

    @(link_name = "pango_layout_copy")
    layout_copy :: proc(src: ^Layout) -> ^Layout ---

    @(link_name = "pango_layout_get_context")
    layout_get_context :: proc(layout: ^Layout) -> ^Context ---

    @(link_name = "pango_layout_set_attributes")
    layout_set_attributes :: proc(layout: ^Layout, attrs: [^]AttrList) ---

    @(link_name = "pango_layout_get_attributes")
    layout_get_attributes :: proc(layout: ^Layout) -> ^AttrList ---

    @(link_name = "pango_layout_set_text")
    layout_set_text :: proc(layout: ^Layout, text: cstring, length: i32) ---

    @(link_name = "pango_layout_get_text")
    layout_get_text :: proc(layout: ^Layout) -> cstring ---

    @(link_name = "pango_layout_get_character_count")
    layout_get_character_count :: proc(layout: ^Layout) -> glib.int_ ---

    @(link_name = "pango_layout_set_markup")
    layout_set_markup :: proc(layout: ^Layout, markup: cstring, length: i32) ---

    @(link_name = "pango_layout_set_markup_with_accel")
    layout_set_markup_with_accel :: proc(layout: ^Layout, markup: cstring, length: i32, accel_marker: glib.unichar, accel_char: ^glib.unichar) ---

    @(link_name = "pango_layout_set_font_description")
    layout_set_font_description :: proc(layout: ^Layout, desc: ^FontDescription) ---

    @(link_name = "pango_layout_get_font_description")
    layout_get_font_description :: proc(layout: ^Layout) -> ^FontDescription ---

    @(link_name = "pango_layout_set_width")
    layout_set_width :: proc(layout: ^Layout, width: i32) ---

    @(link_name = "pango_layout_get_width")
    layout_get_width :: proc(layout: ^Layout) -> i32 ---

    @(link_name = "pango_layout_set_height")
    layout_set_height :: proc(layout: ^Layout, height: i32) ---

    @(link_name = "pango_layout_get_height")
    layout_get_height :: proc(layout: ^Layout) -> i32 ---

    @(link_name = "pango_layout_set_wrap")
    layout_set_wrap :: proc(layout: ^Layout, wrap: WrapMode) ---

    @(link_name = "pango_layout_get_wrap")
    layout_get_wrap :: proc(layout: ^Layout) -> WrapMode ---

    @(link_name = "pango_layout_is_wrapped")
    layout_is_wrapped :: proc(layout: ^Layout) -> glib.boolean ---

    @(link_name = "pango_layout_set_indent")
    layout_set_indent :: proc(layout: ^Layout, indent: i32) ---

    @(link_name = "pango_layout_get_indent")
    layout_get_indent :: proc(layout: ^Layout) -> i32 ---

    @(link_name = "pango_layout_set_spacing")
    layout_set_spacing :: proc(layout: ^Layout, spacing: i32) ---

    @(link_name = "pango_layout_get_spacing")
    layout_get_spacing :: proc(layout: ^Layout) -> i32 ---

    @(link_name = "pango_layout_set_line_spacing")
    layout_set_line_spacing :: proc(layout: ^Layout, factor: f32) ---

    @(link_name = "pango_layout_get_line_spacing")
    layout_get_line_spacing :: proc(layout: ^Layout) -> f32 ---

    @(link_name = "pango_layout_set_justify")
    layout_set_justify :: proc(layout: ^Layout, justify: glib.boolean) ---

    @(link_name = "pango_layout_get_justify")
    layout_get_justify :: proc(layout: ^Layout) -> glib.boolean ---

    @(link_name = "pango_layout_set_justify_last_line")
    layout_set_justify_last_line :: proc(layout: ^Layout, justify: glib.boolean) ---

    @(link_name = "pango_layout_get_justify_last_line")
    layout_get_justify_last_line :: proc(layout: ^Layout) -> glib.boolean ---

    @(link_name = "pango_layout_set_auto_dir")
    layout_set_auto_dir :: proc(layout: ^Layout, auto_dir: glib.boolean) ---

    @(link_name = "pango_layout_get_auto_dir")
    layout_get_auto_dir :: proc(layout: ^Layout) -> glib.boolean ---

    @(link_name = "pango_layout_set_alignment")
    layout_set_alignment :: proc(layout: ^Layout, alignment: Alignment) ---

    @(link_name = "pango_layout_get_alignment")
    layout_get_alignment :: proc(layout: ^Layout) -> Alignment ---

    @(link_name = "pango_layout_set_tabs")
    layout_set_tabs :: proc(layout: ^Layout, tabs: [^]TabArray) ---

    @(link_name = "pango_layout_get_tabs")
    layout_get_tabs :: proc(layout: ^Layout) -> ^TabArray ---

    @(link_name = "pango_layout_set_single_paragraph_mode")
    layout_set_single_paragraph_mode :: proc(layout: ^Layout, setting: glib.boolean) ---

    @(link_name = "pango_layout_get_single_paragraph_mode")
    layout_get_single_paragraph_mode :: proc(layout: ^Layout) -> glib.boolean ---

    @(link_name = "pango_layout_set_ellipsize")
    layout_set_ellipsize :: proc(layout: ^Layout, ellipsize: EllipsizeMode) ---

    @(link_name = "pango_layout_get_ellipsize")
    layout_get_ellipsize :: proc(layout: ^Layout) -> EllipsizeMode ---

    @(link_name = "pango_layout_is_ellipsized")
    layout_is_ellipsized :: proc(layout: ^Layout) -> glib.boolean ---

    @(link_name = "pango_layout_get_unknown_glyphs_count")
    layout_get_unknown_glyphs_count :: proc(layout: ^Layout) -> i32 ---

    @(link_name = "pango_layout_get_direction")
    layout_get_direction :: proc(layout: ^Layout, index: i32) -> Direction ---

    @(link_name = "pango_layout_context_changed")
    layout_context_changed :: proc(layout: ^Layout) ---

    @(link_name = "pango_layout_get_serial")
    layout_get_serial :: proc(layout: ^Layout) -> glib.uint_ ---

    @(link_name = "pango_layout_get_log_attrs")
    layout_get_log_attrs :: proc(layout: ^Layout, attrs: [^]^LogAttr, n_attrs: [^]glib.int_) ---

    @(link_name = "pango_layout_get_log_attrs_readonly")
    layout_get_log_attrs_readonly :: proc(layout: ^Layout, n_attrs: [^]glib.int_) -> ^LogAttr ---

    @(link_name = "pango_layout_index_to_pos")
    layout_index_to_pos :: proc(layout: ^Layout, index_: i32, pos: [^]Rectangle) ---

    @(link_name = "pango_layout_index_to_line_x")
    layout_index_to_line_x :: proc(layout: ^Layout, index_: i32, trailing: glib.boolean, line: ^i32, x_pos: [^]i32) ---

    @(link_name = "pango_layout_get_cursor_pos")
    layout_get_cursor_pos :: proc(layout: ^Layout, index_: i32, strong_pos: [^]Rectangle, weak_pos: [^]Rectangle) ---

    @(link_name = "pango_layout_get_caret_pos")
    layout_get_caret_pos :: proc(layout: ^Layout, index_: i32, strong_pos: [^]Rectangle, weak_pos: [^]Rectangle) ---

    @(link_name = "pango_layout_move_cursor_visually")
    layout_move_cursor_visually :: proc(layout: ^Layout, strong: glib.boolean, old_index: i32, old_trailing: i32, direction: i32, new_index: ^i32, new_trailing: ^i32) ---

    @(link_name = "pango_layout_xy_to_index")
    layout_xy_to_index :: proc(layout: ^Layout, x: i32, y: i32, index_: ^i32, trailing: ^i32) -> glib.boolean ---

    @(link_name = "pango_layout_get_extents")
    layout_get_extents :: proc(layout: ^Layout, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_get_pixel_extents")
    layout_get_pixel_extents :: proc(layout: ^Layout, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_get_size")
    layout_get_size :: proc(layout: ^Layout, width: ^i32, height: ^i32) ---

    @(link_name = "pango_layout_get_pixel_size")
    layout_get_pixel_size :: proc(layout: ^Layout, width: ^i32, height: ^i32) ---

    @(link_name = "pango_layout_get_baseline")
    layout_get_baseline :: proc(layout: ^Layout) -> i32 ---

    @(link_name = "pango_layout_get_line_count")
    layout_get_line_count :: proc(layout: ^Layout) -> i32 ---

    @(link_name = "pango_layout_get_line")
    layout_get_line :: proc(layout: ^Layout, line: i32) -> ^LayoutLine ---

    @(link_name = "pango_layout_get_line_readonly")
    layout_get_line_readonly :: proc(layout: ^Layout, line: i32) -> ^LayoutLine ---

    @(link_name = "pango_layout_get_lines")
    layout_get_lines :: proc(layout: ^Layout) -> ^glib.SList ---

    @(link_name = "pango_layout_get_lines_readonly")
    layout_get_lines_readonly :: proc(layout: ^Layout) -> ^glib.SList ---

    @(link_name = "pango_layout_serialize")
    layout_serialize :: proc(layout: ^Layout, flags: LayoutSerializeFlags) -> ^glib.Bytes ---

    @(link_name = "pango_layout_write_to_file")
    layout_write_to_file :: proc(layout: ^Layout, flags: LayoutSerializeFlags, filename: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "pango_layout_deserialize_error_quark")
    layout_deserialize_error_quark :: proc() -> glib.Quark ---

    @(link_name = "pango_layout_deserialize")
    layout_deserialize :: proc(context_p: ^Context, bytes: [^]glib.Bytes, flags: LayoutDeserializeFlags, error: ^^glib.Error) -> ^Layout ---

    @(link_name = "pango_layout_line_get_type")
    layout_line_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_layout_line_ref")
    layout_line_ref :: proc(line: ^LayoutLine) -> ^LayoutLine ---

    @(link_name = "pango_layout_line_unref")
    layout_line_unref :: proc(line: ^LayoutLine) ---

    @(link_name = "pango_layout_line_get_start_index")
    layout_line_get_start_index :: proc(line: ^LayoutLine) -> i32 ---

    @(link_name = "pango_layout_line_get_length")
    layout_line_get_length :: proc(line: ^LayoutLine) -> i32 ---

    @(link_name = "pango_layout_line_is_paragraph_start")
    layout_line_is_paragraph_start :: proc(line: ^LayoutLine) -> glib.boolean ---

    @(link_name = "pango_layout_line_get_resolved_direction")
    layout_line_get_resolved_direction :: proc(line: ^LayoutLine) -> Direction ---

    @(link_name = "pango_layout_line_x_to_index")
    layout_line_x_to_index :: proc(line: ^LayoutLine, x_pos: i32, index_: ^i32, trailing: ^i32) -> glib.boolean ---

    @(link_name = "pango_layout_line_index_to_x")
    layout_line_index_to_x :: proc(line: ^LayoutLine, index_: i32, trailing: glib.boolean, x_pos: [^]i32) ---

    @(link_name = "pango_layout_line_get_x_ranges")
    layout_line_get_x_ranges :: proc(line: ^LayoutLine, start_index: i32, end_index: i32, ranges: [^]^i32, n_ranges: [^]i32) ---

    @(link_name = "pango_layout_line_get_extents")
    layout_line_get_extents :: proc(line: ^LayoutLine, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_line_get_height")
    layout_line_get_height :: proc(line: ^LayoutLine, height: ^i32) ---

    @(link_name = "pango_layout_line_get_pixel_extents")
    layout_line_get_pixel_extents :: proc(layout_line: ^LayoutLine, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_iter_get_type")
    layout_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_layout_get_iter")
    layout_get_iter :: proc(layout: ^Layout) -> ^LayoutIter ---

    @(link_name = "pango_layout_iter_copy")
    layout_iter_copy :: proc(iter: ^LayoutIter) -> ^LayoutIter ---

    @(link_name = "pango_layout_iter_free")
    layout_iter_free :: proc(iter: ^LayoutIter) ---

    @(link_name = "pango_layout_iter_get_index")
    layout_iter_get_index :: proc(iter: ^LayoutIter) -> i32 ---

    @(link_name = "pango_layout_iter_get_run")
    layout_iter_get_run :: proc(iter: ^LayoutIter) -> ^LayoutRun ---

    @(link_name = "pango_layout_iter_get_run_readonly")
    layout_iter_get_run_readonly :: proc(iter: ^LayoutIter) -> ^LayoutRun ---

    @(link_name = "pango_layout_iter_get_line")
    layout_iter_get_line :: proc(iter: ^LayoutIter) -> ^LayoutLine ---

    @(link_name = "pango_layout_iter_get_line_readonly")
    layout_iter_get_line_readonly :: proc(iter: ^LayoutIter) -> ^LayoutLine ---

    @(link_name = "pango_layout_iter_at_last_line")
    layout_iter_at_last_line :: proc(iter: ^LayoutIter) -> glib.boolean ---

    @(link_name = "pango_layout_iter_get_layout")
    layout_iter_get_layout :: proc(iter: ^LayoutIter) -> ^Layout ---

    @(link_name = "pango_layout_iter_next_char")
    layout_iter_next_char :: proc(iter: ^LayoutIter) -> glib.boolean ---

    @(link_name = "pango_layout_iter_next_cluster")
    layout_iter_next_cluster :: proc(iter: ^LayoutIter) -> glib.boolean ---

    @(link_name = "pango_layout_iter_next_run")
    layout_iter_next_run :: proc(iter: ^LayoutIter) -> glib.boolean ---

    @(link_name = "pango_layout_iter_next_line")
    layout_iter_next_line :: proc(iter: ^LayoutIter) -> glib.boolean ---

    @(link_name = "pango_layout_iter_get_char_extents")
    layout_iter_get_char_extents :: proc(iter: ^LayoutIter, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_iter_get_cluster_extents")
    layout_iter_get_cluster_extents :: proc(iter: ^LayoutIter, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_iter_get_run_extents")
    layout_iter_get_run_extents :: proc(iter: ^LayoutIter, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_iter_get_line_extents")
    layout_iter_get_line_extents :: proc(iter: ^LayoutIter, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_iter_get_line_yrange")
    layout_iter_get_line_yrange :: proc(iter: ^LayoutIter, y0_: ^i32, y1_: ^i32) ---

    @(link_name = "pango_layout_iter_get_layout_extents")
    layout_iter_get_layout_extents :: proc(iter: ^LayoutIter, ink_rect: ^Rectangle, logical_rect: ^Rectangle) ---

    @(link_name = "pango_layout_iter_get_baseline")
    layout_iter_get_baseline :: proc(iter: ^LayoutIter) -> i32 ---

    @(link_name = "pango_layout_iter_get_run_baseline")
    layout_iter_get_run_baseline :: proc(iter: ^LayoutIter) -> i32 ---

    @(link_name = "pango_markup_parser_new")
    markup_parser_new :: proc(accel_marker: glib.unichar) -> ^glib.MarkupParseContext ---

    @(link_name = "pango_markup_parser_finish")
    markup_parser_finish :: proc(context_p: ^glib.MarkupParseContext, attr_list: ^^AttrList, text: ^cstring, accel_char: ^glib.unichar, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "pango_parse_markup")
    parse_markup :: proc(markup_text: cstring, length: i32, accel_marker: glib.unichar, attr_list: ^^AttrList, text: ^cstring, accel_char: ^glib.unichar, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "pango_renderer_get_type")
    renderer_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_renderer_draw_layout")
    renderer_draw_layout :: proc(renderer: ^Renderer, layout: ^Layout, x: i32, y: i32) ---

    @(link_name = "pango_renderer_draw_layout_line")
    renderer_draw_layout_line :: proc(renderer: ^Renderer, line: ^LayoutLine, x: i32, y: i32) ---

    @(link_name = "pango_renderer_draw_glyphs")
    renderer_draw_glyphs :: proc(renderer: ^Renderer, font: ^Font, glyphs: [^]GlyphString, x: i32, y: i32) ---

    @(link_name = "pango_renderer_draw_glyph_item")
    renderer_draw_glyph_item :: proc(renderer: ^Renderer, text: cstring, glyph_item: ^GlyphItem, x: i32, y: i32) ---

    @(link_name = "pango_renderer_draw_rectangle")
    renderer_draw_rectangle :: proc(renderer: ^Renderer, part: RenderPart, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "pango_renderer_draw_error_underline")
    renderer_draw_error_underline :: proc(renderer: ^Renderer, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "pango_renderer_draw_trapezoid")
    renderer_draw_trapezoid :: proc(renderer: ^Renderer, part: RenderPart, y1_: f64, x11: f64, x21: f64, y2: f64, x12: f64, x22: f64) ---

    @(link_name = "pango_renderer_draw_glyph")
    renderer_draw_glyph :: proc(renderer: ^Renderer, font: ^Font, glyph: Glyph, x: f64, y: f64) ---

    @(link_name = "pango_renderer_activate")
    renderer_activate :: proc(renderer: ^Renderer) ---

    @(link_name = "pango_renderer_deactivate")
    renderer_deactivate :: proc(renderer: ^Renderer) ---

    @(link_name = "pango_renderer_part_changed")
    renderer_part_changed :: proc(renderer: ^Renderer, part: RenderPart) ---

    @(link_name = "pango_renderer_set_color")
    renderer_set_color :: proc(renderer: ^Renderer, part: RenderPart, color: ^Color) ---

    @(link_name = "pango_renderer_get_color")
    renderer_get_color :: proc(renderer: ^Renderer, part: RenderPart) -> ^Color ---

    @(link_name = "pango_renderer_set_alpha")
    renderer_set_alpha :: proc(renderer: ^Renderer, part: RenderPart, alpha: glib.uint16) ---

    @(link_name = "pango_renderer_get_alpha")
    renderer_get_alpha :: proc(renderer: ^Renderer, part: RenderPart) -> glib.uint16 ---

    @(link_name = "pango_renderer_set_matrix")
    renderer_set_matrix :: proc(renderer: ^Renderer, matrix_p: ^Matrix) ---

    @(link_name = "pango_renderer_get_matrix")
    renderer_get_matrix :: proc(renderer: ^Renderer) -> ^Matrix ---

    @(link_name = "pango_renderer_get_layout")
    renderer_get_layout :: proc(renderer: ^Renderer) -> ^Layout ---

    @(link_name = "pango_renderer_get_layout_line")
    renderer_get_layout_line :: proc(renderer: ^Renderer) -> ^LayoutLine ---

    @(link_name = "pango_split_file_list")
    split_file_list :: proc(str: cstring) -> ^cstring ---

    @(link_name = "pango_trim_string")
    trim_string :: proc(str: cstring) -> cstring ---

    @(link_name = "pango_read_line")
    read_line :: proc(stream: ^libc.FILE, str: ^glib.String) -> glib.int_ ---

    @(link_name = "pango_skip_space")
    skip_space :: proc(pos: [^]cstring) -> glib.boolean ---

    @(link_name = "pango_scan_word")
    scan_word :: proc(pos: [^]cstring, out: ^glib.String) -> glib.boolean ---

    @(link_name = "pango_scan_string")
    scan_string :: proc(pos: [^]cstring, out: ^glib.String) -> glib.boolean ---

    @(link_name = "pango_scan_int")
    scan_int :: proc(pos: [^]cstring, out: ^i32) -> glib.boolean ---

    @(link_name = "pango_parse_enum")
    parse_enum :: proc(type: gobj.Type, str: cstring, value: ^i32, warn: glib.boolean, possible_values: [^]cstring) -> glib.boolean ---

    @(link_name = "pango_parse_style")
    parse_style :: proc(str: cstring, style: ^Style, warn: glib.boolean) -> glib.boolean ---

    @(link_name = "pango_parse_variant")
    parse_variant :: proc(str: cstring, variant: ^Variant, warn: glib.boolean) -> glib.boolean ---

    @(link_name = "pango_parse_weight")
    parse_weight :: proc(str: cstring, weight: ^Weight, warn: glib.boolean) -> glib.boolean ---

    @(link_name = "pango_parse_stretch")
    parse_stretch :: proc(str: cstring, stretch: ^Stretch, warn: glib.boolean) -> glib.boolean ---

    @(link_name = "pango_quantize_line_geometry")
    quantize_line_geometry :: proc(thickness: [^]i32, position: ^i32) ---

    @(link_name = "pango_log2vis_get_embedding_levels")
    log2vis_get_embedding_levels :: proc(text: cstring, length: i32, pbase_dir: ^Direction) -> ^glib.uint8 ---

    @(link_name = "pango_is_zero_width")
    is_zero_width :: proc(ch: glib.unichar) -> glib.boolean ---

    @(link_name = "pango_find_paragraph_boundary")
    find_paragraph_boundary :: proc(text: cstring, length: i32, paragraph_delimiter_index: ^i32, next_paragraph_start: ^i32) ---

    @(link_name = "pango_version")
    version :: proc() -> i32 ---

    @(link_name = "pango_version_string")
    version_string :: proc() -> cstring ---

    @(link_name = "pango_version_check")
    version_check :: proc(required_major: i32, required_minor: i32, required_micro: i32) -> cstring ---

    @(link_name = "glib_autoptr_clear_PangoCoverage_wrapper")
    autoptr_clear_PangoCoverage :: proc(_ptr: ^Coverage) ---

    @(link_name = "glib_autoptr_cleanup_PangoCoverage_wrapper")
    autoptr_cleanup_PangoCoverage :: proc(_ptr: ^^Coverage) ---

    @(link_name = "glib_autoptr_destroy_PangoCoverage_wrapper")
    autoptr_destroy_PangoCoverage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoCoverage_wrapper")
    listautoptr_cleanup_PangoCoverage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoCoverage_wrapper")
    slistautoptr_cleanup_PangoCoverage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoCoverage_wrapper")
    queueautoptr_cleanup_PangoCoverage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoFontFamily_wrapper")
    autoptr_clear_PangoFontFamily :: proc(_ptr: ^FontFamily) ---

    @(link_name = "glib_autoptr_cleanup_PangoFontFamily_wrapper")
    autoptr_cleanup_PangoFontFamily :: proc(_ptr: ^^FontFamily) ---

    @(link_name = "glib_autoptr_destroy_PangoFontFamily_wrapper")
    autoptr_destroy_PangoFontFamily :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoFontFamily_wrapper")
    listautoptr_cleanup_PangoFontFamily :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoFontFamily_wrapper")
    slistautoptr_cleanup_PangoFontFamily :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoFontFamily_wrapper")
    queueautoptr_cleanup_PangoFontFamily :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoFontFace_wrapper")
    autoptr_clear_PangoFontFace :: proc(_ptr: ^FontFace) ---

    @(link_name = "glib_autoptr_cleanup_PangoFontFace_wrapper")
    autoptr_cleanup_PangoFontFace :: proc(_ptr: ^^FontFace) ---

    @(link_name = "glib_autoptr_destroy_PangoFontFace_wrapper")
    autoptr_destroy_PangoFontFace :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoFontFace_wrapper")
    listautoptr_cleanup_PangoFontFace :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoFontFace_wrapper")
    slistautoptr_cleanup_PangoFontFace :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoFontFace_wrapper")
    queueautoptr_cleanup_PangoFontFace :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoFont_wrapper")
    autoptr_clear_PangoFont :: proc(_ptr: ^Font) ---

    @(link_name = "glib_autoptr_cleanup_PangoFont_wrapper")
    autoptr_cleanup_PangoFont :: proc(_ptr: ^^Font) ---

    @(link_name = "glib_autoptr_destroy_PangoFont_wrapper")
    autoptr_destroy_PangoFont :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoFont_wrapper")
    listautoptr_cleanup_PangoFont :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoFont_wrapper")
    slistautoptr_cleanup_PangoFont :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoFont_wrapper")
    queueautoptr_cleanup_PangoFont :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoFontDescription_wrapper")
    autoptr_clear_PangoFontDescription :: proc(_ptr: ^FontDescription) ---

    @(link_name = "glib_autoptr_cleanup_PangoFontDescription_wrapper")
    autoptr_cleanup_PangoFontDescription :: proc(_ptr: ^^FontDescription) ---

    @(link_name = "glib_autoptr_destroy_PangoFontDescription_wrapper")
    autoptr_destroy_PangoFontDescription :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoFontDescription_wrapper")
    listautoptr_cleanup_PangoFontDescription :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoFontDescription_wrapper")
    slistautoptr_cleanup_PangoFontDescription :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoFontDescription_wrapper")
    queueautoptr_cleanup_PangoFontDescription :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoAttribute_wrapper")
    autoptr_clear_PangoAttribute :: proc(_ptr: ^Attribute) ---

    @(link_name = "glib_autoptr_cleanup_PangoAttribute_wrapper")
    autoptr_cleanup_PangoAttribute :: proc(_ptr: ^^Attribute) ---

    @(link_name = "glib_autoptr_destroy_PangoAttribute_wrapper")
    autoptr_destroy_PangoAttribute :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoAttribute_wrapper")
    listautoptr_cleanup_PangoAttribute :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoAttribute_wrapper")
    slistautoptr_cleanup_PangoAttribute :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoAttribute_wrapper")
    queueautoptr_cleanup_PangoAttribute :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoAttrList_wrapper")
    autoptr_clear_PangoAttrList :: proc(_ptr: ^AttrList) ---

    @(link_name = "glib_autoptr_cleanup_PangoAttrList_wrapper")
    autoptr_cleanup_PangoAttrList :: proc(_ptr: ^^AttrList) ---

    @(link_name = "glib_autoptr_destroy_PangoAttrList_wrapper")
    autoptr_destroy_PangoAttrList :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoAttrList_wrapper")
    listautoptr_cleanup_PangoAttrList :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoAttrList_wrapper")
    slistautoptr_cleanup_PangoAttrList :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoAttrList_wrapper")
    queueautoptr_cleanup_PangoAttrList :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoAttrIterator_wrapper")
    autoptr_clear_PangoAttrIterator :: proc(_ptr: ^AttrIterator) ---

    @(link_name = "glib_autoptr_cleanup_PangoAttrIterator_wrapper")
    autoptr_cleanup_PangoAttrIterator :: proc(_ptr: ^^AttrIterator) ---

    @(link_name = "glib_autoptr_destroy_PangoAttrIterator_wrapper")
    autoptr_destroy_PangoAttrIterator :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoAttrIterator_wrapper")
    listautoptr_cleanup_PangoAttrIterator :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoAttrIterator_wrapper")
    slistautoptr_cleanup_PangoAttrIterator :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoAttrIterator_wrapper")
    queueautoptr_cleanup_PangoAttrIterator :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoFontMap_wrapper")
    autoptr_clear_PangoFontMap :: proc(_ptr: ^FontMap) ---

    @(link_name = "glib_autoptr_cleanup_PangoFontMap_wrapper")
    autoptr_cleanup_PangoFontMap :: proc(_ptr: ^^FontMap) ---

    @(link_name = "glib_autoptr_destroy_PangoFontMap_wrapper")
    autoptr_destroy_PangoFontMap :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoFontMap_wrapper")
    listautoptr_cleanup_PangoFontMap :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoFontMap_wrapper")
    slistautoptr_cleanup_PangoFontMap :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoFontMap_wrapper")
    queueautoptr_cleanup_PangoFontMap :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoTabArray_wrapper")
    autoptr_clear_PangoTabArray :: proc(_ptr: ^TabArray) ---

    @(link_name = "glib_autoptr_cleanup_PangoTabArray_wrapper")
    autoptr_cleanup_PangoTabArray :: proc(_ptr: ^^TabArray) ---

    @(link_name = "glib_autoptr_destroy_PangoTabArray_wrapper")
    autoptr_destroy_PangoTabArray :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoTabArray_wrapper")
    listautoptr_cleanup_PangoTabArray :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoTabArray_wrapper")
    slistautoptr_cleanup_PangoTabArray :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoTabArray_wrapper")
    queueautoptr_cleanup_PangoTabArray :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoLayout_wrapper")
    autoptr_clear_PangoLayout :: proc(_ptr: ^Layout) ---

    @(link_name = "glib_autoptr_cleanup_PangoLayout_wrapper")
    autoptr_cleanup_PangoLayout :: proc(_ptr: ^^Layout) ---

    @(link_name = "glib_autoptr_destroy_PangoLayout_wrapper")
    autoptr_destroy_PangoLayout :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoLayout_wrapper")
    listautoptr_cleanup_PangoLayout :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoLayout_wrapper")
    slistautoptr_cleanup_PangoLayout :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoLayout_wrapper")
    queueautoptr_cleanup_PangoLayout :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_PangoLayoutIter_wrapper")
    autoptr_clear_PangoLayoutIter :: proc(_ptr: ^LayoutIter) ---

    @(link_name = "glib_autoptr_cleanup_PangoLayoutIter_wrapper")
    autoptr_cleanup_PangoLayoutIter :: proc(_ptr: ^^LayoutIter) ---

    @(link_name = "glib_autoptr_destroy_PangoLayoutIter_wrapper")
    autoptr_destroy_PangoLayoutIter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_PangoLayoutIter_wrapper")
    listautoptr_cleanup_PangoLayoutIter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_PangoLayoutIter_wrapper")
    slistautoptr_cleanup_PangoLayoutIter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_PangoLayoutIter_wrapper")
    queueautoptr_cleanup_PangoLayoutIter :: proc(_q: ^^glib.Queue) ---

}

when (ODIN_ARCH == .amd64) {

when #config(PANGO_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import pango_runic { "../lib/linux/x86_64/libpango-1.0.a", "../lib/linux/x86_64/libpango-wrapper.a" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import pango_runic { "system:pango-1.0", "../lib/linux/x86_64/libpango-wrapper.a" }
} 
}

}

when (ODIN_ARCH == .arm64) {

when #config(PANGO_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import pango_runic { "../lib/linux/aarch64/libpango-1.0.a", "../lib/linux/aarch64/libpango-wrapper.a" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import pango_runic { "system:pango-1.0", "../lib/linux/aarch64/libpango-wrapper.a" }
} 
}

}

