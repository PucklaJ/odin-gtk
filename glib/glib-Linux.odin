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
TEST_OPTION_NO_PRGNAME :: "no_g_set_prgname"
TEST_OPTION_NONFATAL_ASSERTIONS :: "nonfatal-assertions"

Pid :: i32
long :: i64
ulong :: u64
UserDirectory :: enum u32 {DESKTOP = 0, DOCUMENTS = 1, DOWNLOAD = 2, MUSIC = 3, PICTURES = 4, PUBLIC_SHARE = 5, TEMPLATES = 6, VIDEOS = 7, USER_N_DIRECTORIES = 8 }
FormatSizeFlags :: enum u32 {FORMAT_SIZE_DEFAULT = 0, FORMAT_SIZE_LONG_FORMAT = 1, FORMAT_SIZE_IEC_UNITS = 2, FORMAT_SIZE_BITS = 4, FORMAT_SIZE_ONLY_VALUE = 8, FORMAT_SIZE_ONLY_UNIT = 16 }
ThreadError :: enum u32 {AGAIN = 0 }
ThreadPriority :: enum u32 {LOW = 0, NORMAL = 1, HIGH = 2, URGENT = 3 }
OnceStatus :: enum u32 {NOTCALLED = 0, PROGRESS = 1, READY = 2 }
TimeType :: enum u32 {STANDARD = 0, DAYLIGHT = 1, UNIVERSAL = 2 }
BookmarkFileError :: enum u32 {INVALID_URI = 0, INVALID_VALUE = 1, APP_NOT_REGISTERED = 2, URI_NOT_FOUND = 3, READ = 4, UNKNOWN_ENCODING = 5, WRITE = 6, FILE_NOT_FOUND = 7 }
ChecksumType :: enum u32 {CHECKSUM_MD5 = 0, CHECKSUM_SHA1 = 1, CHECKSUM_SHA256 = 2, CHECKSUM_SHA512 = 3, CHECKSUM_SHA384 = 4 }
ConvertError :: enum u32 {NO_CONVERSION = 0, ILLEGAL_SEQUENCE = 1, FAILED = 2, PARTIAL_INPUT = 3, BAD_URI = 4, NOT_ABSOLUTE_PATH = 5, NO_MEMORY = 6, EMBEDDED_NUL = 7 }
DateDMY :: enum u32 {DATE_DAY = 0, DATE_MONTH = 1, DATE_YEAR = 2 }
DateWeekday :: enum u32 {DATE_BAD_WEEKDAY = 0, DATE_MONDAY = 1, DATE_TUESDAY = 2, DATE_WEDNESDAY = 3, DATE_THURSDAY = 4, DATE_FRIDAY = 5, DATE_SATURDAY = 6, DATE_SUNDAY = 7 }
DateMonth :: enum u32 {DATE_BAD_MONTH = 0, DATE_JANUARY = 1, DATE_FEBRUARY = 2, DATE_MARCH = 3, DATE_APRIL = 4, DATE_MAY = 5, DATE_JUNE = 6, DATE_JULY = 7, DATE_AUGUST = 8, DATE_SEPTEMBER = 9, DATE_OCTOBER = 10, DATE_NOVEMBER = 11, DATE_DECEMBER = 12 }
FileError :: enum u32 {EXIST = 0, ISDIR = 1, ACCES = 2, NAMETOOLONG = 3, NOENT = 4, NOTDIR = 5, NXIO = 6, NODEV = 7, ROFS = 8, TXTBSY = 9, FAULT = 10, LOOP = 11, NOSPC = 12, NOMEM = 13, MFILE = 14, NFILE = 15, BADF = 16, INVAL = 17, PIPE = 18, AGAIN = 19, INTR = 20, IO = 21, PERM = 22, NOSYS = 23, FAILED = 24 }
FileTest :: enum u32 {IS_REGULAR = 1, IS_SYMLINK = 2, IS_DIR = 4, IS_EXECUTABLE = 8, EXISTS = 16 }
FileSetContentsFlags :: enum u32 {FILE_SET_CONTENTS_NONE = 0, FILE_SET_CONTENTS_CONSISTENT = 1, FILE_SET_CONTENTS_DURABLE = 2, FILE_SET_CONTENTS_ONLY_EXISTING = 4 }
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
TraverseFlags :: enum u32 {TRAVERSE_LEAVES = 1, TRAVERSE_NON_LEAVES = 2, TRAVERSE_ALL = 3, TRAVERSE_MASK = 3, TRAVERSE_LEAFS = 1, TRAVERSE_NON_LEAFS = 2 }
TraverseType :: enum u32 {IN_ORDER = 0, PRE_ORDER = 1, POST_ORDER = 2, LEVEL_ORDER = 3 }
HookFlagMask :: enum u32 {HOOK_FLAG_ACTIVE = 1, HOOK_FLAG_IN_CALL = 2, HOOK_FLAG_MASK = 15 }
_GPollFD :: struct {
    fd: int_,
    events: ushort,
    revents: ushort,
}
IOCondition :: enum u32 {IO_IN = 1, IO_OUT = 4, IO_PRI = 2, IO_ERR = 8, IO_HUP = 16, IO_NVAL = 32 }
MainContextFlags :: enum u32 {NONE = 0, OWNERLESS_POLLING = 1 }
ref_func_ptr_anon_6 :: #type proc "c" (cb_data: pointer)
unref_func_ptr_anon_7 :: #type proc "c" (cb_data: pointer)
et_func_ptr_anon_8 :: #type proc "c" (cb_data: pointer, source: ^Source, func: ^SourceFunc, data: ^pointer)
_GSourceCallbackFuncs :: struct {
    ref: ref_func_ptr_anon_6,
    unref: unref_func_ptr_anon_7,
    get: et_func_ptr_anon_8,
}
UnicodeType :: enum u32 {UNICODE_CONTROL = 0, UNICODE_FORMAT = 1, UNICODE_UNASSIGNED = 2, UNICODE_PRIVATE_USE = 3, UNICODE_SURROGATE = 4, UNICODE_LOWERCASE_LETTER = 5, UNICODE_MODIFIER_LETTER = 6, UNICODE_OTHER_LETTER = 7, UNICODE_TITLECASE_LETTER = 8, UNICODE_UPPERCASE_LETTER = 9, UNICODE_SPACING_MARK = 10, UNICODE_ENCLOSING_MARK = 11, UNICODE_NON_SPACING_MARK = 12, UNICODE_DECIMAL_NUMBER = 13, UNICODE_LETTER_NUMBER = 14, UNICODE_OTHER_NUMBER = 15, UNICODE_CONNECT_PUNCTUATION = 16, UNICODE_DASH_PUNCTUATION = 17, UNICODE_CLOSE_PUNCTUATION = 18, UNICODE_FINAL_PUNCTUATION = 19, UNICODE_INITIAL_PUNCTUATION = 20, UNICODE_OTHER_PUNCTUATION = 21, UNICODE_OPEN_PUNCTUATION = 22, UNICODE_CURRENCY_SYMBOL = 23, UNICODE_MODIFIER_SYMBOL = 24, UNICODE_MATH_SYMBOL = 25, UNICODE_OTHER_SYMBOL = 26, UNICODE_LINE_SEPARATOR = 27, UNICODE_PARAGRAPH_SEPARATOR = 28, UNICODE_SPACE_SEPARATOR = 29 }
UnicodeBreakType :: enum u32 {UNICODE_BREAK_MANDATORY = 0, UNICODE_BREAK_CARRIAGE_RETURN = 1, UNICODE_BREAK_LINE_FEED = 2, UNICODE_BREAK_COMBINING_MARK = 3, UNICODE_BREAK_SURROGATE = 4, UNICODE_BREAK_ZERO_WIDTH_SPACE = 5, UNICODE_BREAK_INSEPARABLE = 6, UNICODE_BREAK_NON_BREAKING_GLUE = 7, UNICODE_BREAK_CONTINGENT = 8, UNICODE_BREAK_SPACE = 9, UNICODE_BREAK_AFTER = 10, UNICODE_BREAK_BEFORE = 11, UNICODE_BREAK_BEFORE_AND_AFTER = 12, UNICODE_BREAK_HYPHEN = 13, UNICODE_BREAK_NON_STARTER = 14, UNICODE_BREAK_OPEN_PUNCTUATION = 15, UNICODE_BREAK_CLOSE_PUNCTUATION = 16, UNICODE_BREAK_QUOTATION = 17, UNICODE_BREAK_EXCLAMATION = 18, UNICODE_BREAK_IDEOGRAPHIC = 19, UNICODE_BREAK_NUMERIC = 20, UNICODE_BREAK_INFIX_SEPARATOR = 21, UNICODE_BREAK_SYMBOL = 22, UNICODE_BREAK_ALPHABETIC = 23, UNICODE_BREAK_PREFIX = 24, UNICODE_BREAK_POSTFIX = 25, UNICODE_BREAK_COMPLEX_CONTEXT = 26, UNICODE_BREAK_AMBIGUOUS = 27, UNICODE_BREAK_UNKNOWN = 28, UNICODE_BREAK_NEXT_LINE = 29, UNICODE_BREAK_WORD_JOINER = 30, UNICODE_BREAK_HANGUL_L_JAMO = 31, UNICODE_BREAK_HANGUL_V_JAMO = 32, UNICODE_BREAK_HANGUL_T_JAMO = 33, UNICODE_BREAK_HANGUL_LV_SYLLABLE = 34, UNICODE_BREAK_HANGUL_LVT_SYLLABLE = 35, UNICODE_BREAK_CLOSE_PARANTHESIS = 36, UNICODE_BREAK_CLOSE_PARENTHESIS = 36, UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER = 37, UNICODE_BREAK_HEBREW_LETTER = 38, UNICODE_BREAK_REGIONAL_INDICATOR = 39, UNICODE_BREAK_EMOJI_BASE = 40, UNICODE_BREAK_EMOJI_MODIFIER = 41, UNICODE_BREAK_ZERO_WIDTH_JOINER = 42, UNICODE_BREAK_AKSARA = 43, UNICODE_BREAK_AKSARA_PRE_BASE = 44, UNICODE_BREAK_AKSARA_START = 45, UNICODE_BREAK_VIRAMA_FINAL = 46, UNICODE_BREAK_VIRAMA = 47 }
UnicodeScript :: enum i32 {INVALID_CODE = -1, COMMON = 0, INHERITED = 1, ARABIC = 2, ARMENIAN = 3, BENGALI = 4, BOPOMOFO = 5, CHEROKEE = 6, COPTIC = 7, CYRILLIC = 8, DESERET = 9, DEVANAGARI = 10, ETHIOPIC = 11, GEORGIAN = 12, GOTHIC = 13, GREEK = 14, GUJARATI = 15, GURMUKHI = 16, HAN = 17, HANGUL = 18, HEBREW = 19, HIRAGANA = 20, KANNADA = 21, KATAKANA = 22, KHMER = 23, LAO = 24, LATIN = 25, MALAYALAM = 26, MONGOLIAN = 27, MYANMAR = 28, OGHAM = 29, OLD_ITALIC = 30, ORIYA = 31, RUNIC = 32, SINHALA = 33, SYRIAC = 34, TAMIL = 35, TELUGU = 36, THAANA = 37, THAI = 38, TIBETAN = 39, CANADIAN_ABORIGINAL = 40, YI = 41, TAGALOG = 42, HANUNOO = 43, BUHID = 44, TAGBANWA = 45, BRAILLE = 46, CYPRIOT = 47, LIMBU = 48, OSMANYA = 49, SHAVIAN = 50, LINEAR_B = 51, TAI_LE = 52, UGARITIC = 53, NEW_TAI_LUE = 54, BUGINESE = 55, GLAGOLITIC = 56, TIFINAGH = 57, SYLOTI_NAGRI = 58, OLD_PERSIAN = 59, KHAROSHTHI = 60, UNKNOWN = 61, BALINESE = 62, CUNEIFORM = 63, PHOENICIAN = 64, PHAGS_PA = 65, NKO = 66, KAYAH_LI = 67, LEPCHA = 68, REJANG = 69, SUNDANESE = 70, SAURASHTRA = 71, CHAM = 72, OL_CHIKI = 73, VAI = 74, CARIAN = 75, LYCIAN = 76, LYDIAN = 77, AVESTAN = 78, BAMUM = 79, EGYPTIAN_HIEROGLYPHS = 80, IMPERIAL_ARAMAIC = 81, INSCRIPTIONAL_PAHLAVI = 82, INSCRIPTIONAL_PARTHIAN = 83, JAVANESE = 84, KAITHI = 85, LISU = 86, MEETEI_MAYEK = 87, OLD_SOUTH_ARABIAN = 88, OLD_TURKIC = 89, SAMARITAN = 90, TAI_THAM = 91, TAI_VIET = 92, BATAK = 93, BRAHMI = 94, MANDAIC = 95, CHAKMA = 96, MEROITIC_CURSIVE = 97, MEROITIC_HIEROGLYPHS = 98, MIAO = 99, SHARADA = 100, SORA_SOMPENG = 101, TAKRI = 102, BASSA_VAH = 103, CAUCASIAN_ALBANIAN = 104, DUPLOYAN = 105, ELBASAN = 106, GRANTHA = 107, KHOJKI = 108, KHUDAWADI = 109, LINEAR_A = 110, MAHAJANI = 111, MANICHAEAN = 112, MENDE_KIKAKUI = 113, MODI = 114, MRO = 115, NABATAEAN = 116, OLD_NORTH_ARABIAN = 117, OLD_PERMIC = 118, PAHAWH_HMONG = 119, PALMYRENE = 120, PAU_CIN_HAU = 121, PSALTER_PAHLAVI = 122, SIDDHAM = 123, TIRHUTA = 124, WARANG_CITI = 125, AHOM = 126, ANATOLIAN_HIEROGLYPHS = 127, HATRAN = 128, MULTANI = 129, OLD_HUNGARIAN = 130, SIGNWRITING = 131, ADLAM = 132, BHAIKSUKI = 133, MARCHEN = 134, NEWA = 135, OSAGE = 136, TANGUT = 137, MASARAM_GONDI = 138, NUSHU = 139, SOYOMBO = 140, ZANABAZAR_SQUARE = 141, DOGRA = 142, GUNJALA_GONDI = 143, HANIFI_ROHINGYA = 144, MAKASAR = 145, MEDEFAIDRIN = 146, OLD_SOGDIAN = 147, SOGDIAN = 148, ELYMAIC = 149, NANDINAGARI = 150, NYIAKENG_PUACHUE_HMONG = 151, WANCHO = 152, CHORASMIAN = 153, DIVES_AKURU = 154, KHITAN_SMALL_SCRIPT = 155, YEZIDI = 156, CYPRO_MINOAN = 157, OLD_UYGHUR = 158, TANGSA = 159, TOTO = 160, VITHKUQI = 161, MATH = 162, KAWI = 163, NAG_MUNDARI = 164, TODHRI = 165, GARAY = 166, TULU_TIGALARI = 167, SUNUWAR = 168, GURUNG_KHEMA = 169, KIRAT_RAI = 170, OL_ONAL = 171 }
NormalizeMode :: enum u32 {NORMALIZE_DEFAULT = 0, NORMALIZE_NFD = 0, NORMALIZE_DEFAULT_COMPOSE = 1, NORMALIZE_NFC = 1, NORMALIZE_ALL = 2, NORMALIZE_NFKD = 2, NORMALIZE_ALL_COMPOSE = 3, NORMALIZE_NFKC = 3 }
AsciiType :: enum u32 {ASCII_ALNUM = 1, ASCII_ALPHA = 2, ASCII_CNTRL = 4, ASCII_DIGIT = 8, ASCII_GRAPH = 16, ASCII_LOWER = 32, ASCII_PRINT = 64, ASCII_PUNCT = 128, ASCII_SPACE = 256, ASCII_UPPER = 512, ASCII_XDIGIT = 1024 }
NumberParserError :: enum u32 {INVALID = 0, OUT_OF_BOUNDS = 1 }
IOStatus :: enum u32 {ERROR = 0, NORMAL = 1, EOF = 2, AGAIN = 3 }
io_read_func_ptr_anon_9 :: #type proc "c" (channel: ^IOChannel, buf: ^byte, count: size, bytes_read: ^size, err: ^^Error) -> IOStatus
io_write_func_ptr_anon_10 :: #type proc "c" (channel: ^IOChannel, buf: ^byte, count: size, bytes_written: ^size, err: ^^Error) -> IOStatus
SeekType :: enum u32 {SEEK_CUR = 0, SEEK_SET = 1, SEEK_END = 2 }
io_seek_func_ptr_anon_11 :: #type proc "c" (channel: ^IOChannel, offset_p: int64, type: SeekType, err: ^^Error) -> IOStatus
io_close_func_ptr_anon_12 :: #type proc "c" (channel: ^IOChannel, err: ^^Error) -> IOStatus
io_create_watch_func_ptr_anon_13 :: #type proc "c" (channel: ^IOChannel, condition: IOCondition) -> ^Source
io_free_func_ptr_anon_14 :: #type proc "c" (channel: ^IOChannel)
IOFlags :: enum u32 {IO_FLAG_NONE = 0, IO_FLAG_APPEND = 1, IO_FLAG_NONBLOCK = 2, IO_FLAG_IS_READABLE = 4, IO_FLAG_IS_WRITABLE = 8, IO_FLAG_IS_WRITEABLE = 8, IO_FLAG_IS_SEEKABLE = 16, IO_FLAG_MASK = 31, IO_FLAG_GET_MASK = 31, IO_FLAG_SET_MASK = 3 }
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
IOError :: enum u32 {NONE = 0, AGAIN = 1, INVAL = 2, UNKNOWN = 3 }
IOChannelError :: enum u32 {FBIG = 0, INVAL = 1, IO = 2, ISDIR = 3, NOSPC = 4, NXIO = 5, OVERFLOW = 6, PIPE = 7, FAILED = 8 }
KeyFileError :: enum u32 {UNKNOWN_ENCODING = 0, PARSE = 1, NOT_FOUND = 2, KEY_NOT_FOUND = 3, GROUP_NOT_FOUND = 4, INVALID_VALUE = 5 }
KeyFileFlags :: enum u32 {KEY_FILE_NONE = 0, KEY_FILE_KEEP_COMMENTS = 1, KEY_FILE_KEEP_TRANSLATIONS = 2 }
MarkupError :: enum u32 {BAD_UTF8 = 0, EMPTY = 1, PARSE = 2, UNKNOWN_ELEMENT = 3, UNKNOWN_ATTRIBUTE = 4, INVALID_CONTENT = 5, MISSING_ATTRIBUTE = 6 }
MarkupParseFlags :: enum u32 {MARKUP_DEFAULT_FLAGS = 0, MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1, MARKUP_TREAT_CDATA_AS_TEXT = 2, MARKUP_PREFIX_ERROR_POSITION = 4, MARKUP_IGNORE_QUALIFIED = 8 }
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
MarkupCollectType :: enum u32 {MARKUP_COLLECT_INVALID = 0, MARKUP_COLLECT_STRING = 1, MARKUP_COLLECT_STRDUP = 2, MARKUP_COLLECT_BOOLEAN = 3, MARKUP_COLLECT_TRISTATE = 4, MARKUP_COLLECT_OPTIONAL = 65536 }
VariantClass :: enum u32 {BOOLEAN = 98, BYTE = 121, INT16 = 110, UINT16 = 113, INT32 = 105, UINT32 = 117, INT64 = 120, UINT64 = 116, HANDLE = 104, DOUBLE = 100, STRING = 115, OBJECT_PATH = 111, SIGNATURE = 103, VARIANT = 118, MAYBE = 109, ARRAY = 97, TUPLE = 40, DICT_ENTRY = 123 }
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
VariantParseError :: enum u32 {FAILED = 0, BASIC_TYPE_EXPECTED = 1, CANNOT_INFER_TYPE = 2, DEFINITE_TYPE_EXPECTED = 3, INPUT_NOT_AT_END = 4, INVALID_CHARACTER = 5, INVALID_FORMAT_STRING = 6, INVALID_OBJECT_PATH = 7, INVALID_SIGNATURE = 8, INVALID_TYPE_STRING = 9, NO_COMMON_TYPE = 10, NUMBER_OUT_OF_RANGE = 11, NUMBER_TOO_BIG = 12, TYPE_ERROR = 13, UNEXPECTED_TOKEN = 14, UNKNOWN_KEYWORD = 15, UNTERMINATED_STRING_CONSTANT = 16, VALUE_EXPECTED = 17, RECURSION = 18 }
s_struct_anon_24 :: struct {
    asv: ^Variant,
    partial_magic: size,
    y: [14]uintptr_,
}
_GVariantDict :: struct {
    u: u_union_anon_25,
}
LogWriterOutput :: enum u32 {LOG_WRITER_HANDLED = 1, LOG_WRITER_UNHANDLED = 0 }
OptionArg :: enum u32 {NONE = 0, STRING = 1, INT = 2, CALLBACK = 3, FILENAME = 4, STRING_ARRAY = 5, FILENAME_ARRAY = 6, DOUBLE = 7, INT64 = 8 }
OptionFlags :: enum u32 {OPTION_FLAG_NONE = 0, OPTION_FLAG_HIDDEN = 1, OPTION_FLAG_IN_MAIN = 2, OPTION_FLAG_REVERSE = 4, OPTION_FLAG_NO_ARG = 8, OPTION_FLAG_FILENAME = 16, OPTION_FLAG_OPTIONAL_ARG = 32, OPTION_FLAG_NOALIAS = 64 }
OptionError :: enum u32 {UNKNOWN_OPTION = 0, BAD_VALUE = 1, FAILED = 2 }
RegexError :: enum u32 {COMPILE = 0, OPTIMIZE = 1, REPLACE = 2, MATCH = 3, INTERNAL = 4, STRAY_BACKSLASH = 101, MISSING_CONTROL_CHAR = 102, UNRECOGNIZED_ESCAPE = 103, QUANTIFIERS_OUT_OF_ORDER = 104, QUANTIFIER_TOO_BIG = 105, UNTERMINATED_CHARACTER_CLASS = 106, INVALID_ESCAPE_IN_CHARACTER_CLASS = 107, RANGE_OUT_OF_ORDER = 108, NOTHING_TO_REPEAT = 109, UNRECOGNIZED_CHARACTER = 112, POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113, UNMATCHED_PARENTHESIS = 114, INEXISTENT_SUBPATTERN_REFERENCE = 115, UNTERMINATED_COMMENT = 118, EXPRESSION_TOO_LARGE = 120, MEMORY_ERROR = 121, VARIABLE_LENGTH_LOOKBEHIND = 125, MALFORMED_CONDITION = 126, TOO_MANY_CONDITIONAL_BRANCHES = 127, ASSERTION_EXPECTED = 128, UNKNOWN_POSIX_CLASS_NAME = 130, POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131, HEX_CODE_TOO_LARGE = 134, INVALID_CONDITION = 135, SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136, INFINITE_LOOP = 140, MISSING_SUBPATTERN_NAME_TERMINATOR = 142, DUPLICATE_SUBPATTERN_NAME = 143, MALFORMED_PROPERTY = 146, UNKNOWN_PROPERTY = 147, SUBPATTERN_NAME_TOO_LONG = 148, TOO_MANY_SUBPATTERNS = 149, INVALID_OCTAL_VALUE = 151, TOO_MANY_BRANCHES_IN_DEFINE = 154, DEFINE_REPETION = 155, INCONSISTENT_NEWLINE_OPTIONS = 156, MISSING_BACK_REFERENCE = 157, INVALID_RELATIVE_REFERENCE = 158, BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159, UNKNOWN_BACKTRACKING_CONTROL_VERB = 160, NUMBER_TOO_BIG = 161, MISSING_SUBPATTERN_NAME = 162, MISSING_DIGIT = 163, INVALID_DATA_CHARACTER = 164, EXTRA_SUBPATTERN_NAME = 165, BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166, INVALID_CONTROL_CHAR = 168, MISSING_NAME = 169, NOT_SUPPORTED_IN_CLASS = 171, TOO_MANY_FORWARD_REFERENCES = 172, NAME_TOO_LONG = 175, CHARACTER_VALUE_TOO_LARGE = 176 }
RegexCompileFlags :: enum u32 {REGEX_DEFAULT = 0, REGEX_CASELESS = 1, REGEX_MULTILINE = 2, REGEX_DOTALL = 4, REGEX_EXTENDED = 8, REGEX_ANCHORED = 16, REGEX_DOLLAR_ENDONLY = 32, REGEX_UNGREEDY = 512, REGEX_RAW = 2048, REGEX_NO_AUTO_CAPTURE = 4096, REGEX_OPTIMIZE = 8192, REGEX_FIRSTLINE = 262144, REGEX_DUPNAMES = 524288, REGEX_NEWLINE_CR = 1048576, REGEX_NEWLINE_LF = 2097152, REGEX_NEWLINE_CRLF = 3145728, REGEX_NEWLINE_ANYCRLF = 5242880, REGEX_BSR_ANYCRLF = 8388608, REGEX_JAVASCRIPT_COMPAT = 33554432 }
RegexMatchFlags :: enum u32 {REGEX_MATCH_DEFAULT = 0, REGEX_MATCH_ANCHORED = 16, REGEX_MATCH_NOTBOL = 128, REGEX_MATCH_NOTEOL = 256, REGEX_MATCH_NOTEMPTY = 1024, REGEX_MATCH_PARTIAL = 32768, REGEX_MATCH_NEWLINE_CR = 1048576, REGEX_MATCH_NEWLINE_LF = 2097152, REGEX_MATCH_NEWLINE_CRLF = 3145728, REGEX_MATCH_NEWLINE_ANY = 4194304, REGEX_MATCH_NEWLINE_ANYCRLF = 5242880, REGEX_MATCH_BSR_ANYCRLF = 8388608, REGEX_MATCH_BSR_ANY = 16777216, REGEX_MATCH_PARTIAL_SOFT = 32768, REGEX_MATCH_PARTIAL_HARD = 134217728, REGEX_MATCH_NOTEMPTY_ATSTART = 268435456 }
ErrorType :: enum u32 {ERR_UNKNOWN = 0, ERR_UNEXP_EOF = 1, ERR_UNEXP_EOF_IN_STRING = 2, ERR_UNEXP_EOF_IN_COMMENT = 3, ERR_NON_DIGIT_IN_CONST = 4, ERR_DIGIT_RADIX = 5, ERR_FLOAT_RADIX = 6, ERR_FLOAT_MALFORMED = 7 }
TokenType :: enum u32 {TOKEN_EOF = 0, TOKEN_LEFT_PAREN = 40, TOKEN_RIGHT_PAREN = 41, TOKEN_LEFT_CURLY = 123, TOKEN_RIGHT_CURLY = 125, TOKEN_LEFT_BRACE = 91, TOKEN_RIGHT_BRACE = 93, TOKEN_EQUAL_SIGN = 61, TOKEN_COMMA = 44, TOKEN_NONE = 256, TOKEN_ERROR = 257, TOKEN_CHAR = 258, TOKEN_BINARY = 259, TOKEN_OCTAL = 260, TOKEN_INT = 261, TOKEN_HEX = 262, TOKEN_FLOAT = 263, TOKEN_STRING = 264, TOKEN_SYMBOL = 265, TOKEN_IDENTIFIER = 266, TOKEN_IDENTIFIER_NULL = 267, TOKEN_COMMENT_SINGLE = 268, TOKEN_COMMENT_MULTI = 269, TOKEN_LAST = 270 }
ShellError :: enum u32 {BAD_QUOTING = 0, EMPTY_STRING = 1, FAILED = 2 }
SliceConfig :: enum u32 {ALWAYS_MALLOC = 1, BYPASS_MAGAZINES = 2, WORKING_SET_MSECS = 3, COLOR_INCREMENT = 4, CHUNK_SIZES = 5, CONTENTION_COUNTER = 6 }
SpawnError :: enum u32 {FORK = 0, READ = 1, CHDIR = 2, ACCES = 3, PERM = 4, TOO_BIG = 5, _2BIG = 5, NOEXEC = 6, NAMETOOLONG = 7, NOENT = 8, NOMEM = 9, NOTDIR = 10, LOOP = 11, TXTBUSY = 12, IO = 13, NFILE = 14, MFILE = 15, INVAL = 16, ISDIR = 17, LIBBAD = 18, FAILED = 19 }
SpawnFlags :: enum u32 {SPAWN_DEFAULT = 0, SPAWN_LEAVE_DESCRIPTORS_OPEN = 1, SPAWN_DO_NOT_REAP_CHILD = 2, SPAWN_SEARCH_PATH = 4, SPAWN_STDOUT_TO_DEV_NULL = 8, SPAWN_STDERR_TO_DEV_NULL = 16, SPAWN_CHILD_INHERITS_STDIN = 32, SPAWN_FILE_AND_ARGV_ZERO = 64, SPAWN_SEARCH_PATH_FROM_ENVP = 128, SPAWN_CLOEXEC_PIPES = 256, SPAWN_CHILD_INHERITS_STDOUT = 512, SPAWN_CHILD_INHERITS_STDERR = 1024, SPAWN_STDIN_FROM_DEV_NULL = 2048 }
TestTrapFlags :: enum u32 {TEST_TRAP_DEFAULT = 0, TEST_TRAP_SILENCE_STDOUT = 128, TEST_TRAP_SILENCE_STDERR = 256, TEST_TRAP_INHERIT_STDIN = 512 }
TestSubprocessFlags :: enum u32 {TEST_SUBPROCESS_DEFAULT = 0, TEST_SUBPROCESS_INHERIT_STDIN = 1, TEST_SUBPROCESS_INHERIT_STDOUT = 2, TEST_SUBPROCESS_INHERIT_STDERR = 4 }
TestResult :: enum u32 {TEST_RUN_SUCCESS = 0, TEST_RUN_SKIPPED = 1, TEST_RUN_FAILURE = 2, TEST_RUN_INCOMPLETE = 3 }
TestLogType :: enum u32 {TEST_LOG_NONE = 0, TEST_LOG_ERROR = 1, TEST_LOG_START_BINARY = 2, TEST_LOG_LIST_CASE = 3, TEST_LOG_SKIP_CASE = 4, TEST_LOG_START_CASE = 5, TEST_LOG_STOP_CASE = 6, TEST_LOG_MIN_RESULT = 7, TEST_LOG_MAX_RESULT = 8, TEST_LOG_MESSAGE = 9, TEST_LOG_START_SUITE = 10, TEST_LOG_STOP_SUITE = 11 }
TestLogMsg :: struct {
    log_type: TestLogType,
    n_strings: uint_,
    strings: [^]cstring,
    n_nums: uint_,
    nums: [^][16]byte,
}
TestFileType :: enum u32 {TEST_DIST = 0, TEST_BUILT = 1 }
UriFlags :: enum u32 {NONE = 0, PARSE_RELAXED = 1, HAS_PASSWORD = 2, HAS_AUTH_PARAMS = 4, ENCODED = 8, NON_DNS = 16, ENCODED_QUERY = 32, ENCODED_PATH = 64, ENCODED_FRAGMENT = 128, SCHEME_NORMALIZE = 256 }
UriHideFlags :: enum u32 {URI_HIDE_NONE = 0, URI_HIDE_USERINFO = 1, URI_HIDE_PASSWORD = 2, URI_HIDE_AUTH_PARAMS = 4, URI_HIDE_QUERY = 8, URI_HIDE_FRAGMENT = 16 }
UriParamsFlags :: enum u32 {URI_PARAMS_NONE = 0, URI_PARAMS_CASE_INSENSITIVE = 1, URI_PARAMS_WWW_FORM = 2, URI_PARAMS_PARSE_RELAXED = 4 }
UriError :: enum u32 {FAILED = 0, BAD_SCHEME = 1, BAD_USER = 2, BAD_PASSWORD = 3, BAD_AUTH_PARAMS = 4, BAD_HOST = 5, BAD_PORT = 6, BAD_PATH = 7, BAD_QUERY = 8, BAD_FRAGMENT = 9 }
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
    @(link_name = "g_ptr_array_free")
    ptr_array_free :: proc(array: ^PtrArray, free_segment: boolean) -> ^pointer ---

    @(link_name = "g_thread_get_name")
    thread_get_name :: proc(thread: ^Thread) -> cstring ---

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

    @(link_name = "g_variant_builder_init_static")
    variant_builder_init_static :: proc(builder: ^VariantBuilder, type: ^VariantType) ---

    @(link_name = "g_ref_string_equal")
    ref_string_equal :: proc(str1: cstring, str2: cstring) -> boolean ---

    @(link_name = "g_assertion_message_cmpnum")
    assertion_message_cmpnum :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: [16]byte, cmp: cstring, arg2: [16]byte, numtype: char) ---

    @(link_name = "g_steal_handle_id_wrapper")
    steal_handle_id :: proc(handle_pointer: ^u32) -> u32 ---

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

