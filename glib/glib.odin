#+build amd64, arm64
package glib

import "core:c/libc"
import "core:sys/posix"

gint8 :: i8
guint8 :: u8
gint16 :: i16
guint16 :: u16
gint32 :: i32
guint32 :: u32
gint64 :: i64
guint64 :: u64
gssize :: i64
gsize :: u64
goffset :: gint64
gintptr :: i64
guintptr :: u64
GPid :: i32
gshort :: i16
glong :: i64
gint :: i32
gboolean :: gint
guchar :: u8
gushort :: u16
gulong :: u64
guint :: u32
gfloat :: f32
gdouble :: f64
gpointer :: rawptr
gconstpointer :: rawptr
GCompareFunc :: #type proc "c" (a: gconstpointer, b: gconstpointer) -> gint
GCompareDataFunc :: #type proc "c" (a: gconstpointer, b: gconstpointer, user_data: gpointer) -> gint
GEqualFunc :: #type proc "c" (a: gconstpointer, b: gconstpointer) -> gboolean
GEqualFuncFull :: #type proc "c" (a: gconstpointer, b: gconstpointer, user_data: gpointer) -> gboolean
GDestroyNotify :: #type proc "c" (data: gpointer)
GFunc :: #type proc "c" (data: gpointer, user_data: gpointer)
GHashFunc :: #type proc "c" (key: gconstpointer) -> guint
GHFunc :: #type proc "c" (key: gpointer, value: gpointer, user_data: gpointer)
GCopyFunc :: #type proc "c" (src: gconstpointer, data: gpointer) -> gpointer
GFreeFunc :: #type proc "c" (data: gpointer)
GTranslateFunc :: #type proc "c" (str: cstring, data: gpointer) -> cstring
_GDoubleIEEE754 :: gdouble
GDoubleIEEE754 :: _GDoubleIEEE754
_GFloatIEEE754 :: gfloat
GFloatIEEE754 :: _GFloatIEEE754
_GTimeVal :: struct {
    tv_sec: glong,
    tv_usec: glong,
}
GTimeVal :: _GTimeVal
grefcount :: gint
gatomicrefcount :: gint
_GBytes :: rawptr
GBytes :: _GBytes
_GArray :: struct {
    data: ^byte,
    len: guint,
}
GArray :: _GArray
_GByteArray :: struct {
    data: ^guint8,
    len: guint,
}
GByteArray :: _GByteArray
_GPtrArray :: struct {
    pdata: ^gpointer,
    len: guint,
}
GPtrArray :: _GPtrArray
va_list :: [16]byte
GQuark :: guint32
_GError :: struct {
    domain: GQuark,
    code: gint,
    message: cstring,
}
GError :: _GError
GErrorInitFunc :: #type proc "c" (error: ^GError)
GErrorCopyFunc :: #type proc "c" (src_error: ^GError, dest_error: ^GError)
GErrorClearFunc :: #type proc "c" (error: ^GError)
GUserDirectory :: enum u32 {G_USER_DIRECTORY_DESKTOP = 0, G_USER_DIRECTORY_DOCUMENTS = 1, G_USER_DIRECTORY_DOWNLOAD = 2, G_USER_DIRECTORY_MUSIC = 3, G_USER_DIRECTORY_PICTURES = 4, G_USER_DIRECTORY_PUBLIC_SHARE = 5, G_USER_DIRECTORY_TEMPLATES = 6, G_USER_DIRECTORY_VIDEOS = 7, G_USER_N_DIRECTORIES = 8, }
_GDebugKey :: struct {
    key: cstring,
    value: guint,
}
GDebugKey :: _GDebugKey
GFormatSizeFlags :: enum u32 {G_FORMAT_SIZE_DEFAULT = 0, G_FORMAT_SIZE_LONG_FORMAT = 1, G_FORMAT_SIZE_IEC_UNITS = 2, G_FORMAT_SIZE_BITS = 4, G_FORMAT_SIZE_ONLY_VALUE = 8, G_FORMAT_SIZE_ONLY_UNIT = 16, }
GVoidFunc :: #type proc "c" ()
GThreadError :: enum u32 {G_THREAD_ERROR_AGAIN = 0, }
GThreadFunc :: #type proc "c" (data: gpointer) -> gpointer
GThreadPriority :: enum u32 {G_THREAD_PRIORITY_LOW = 0, G_THREAD_PRIORITY_NORMAL = 1, G_THREAD_PRIORITY_HIGH = 2, G_THREAD_PRIORITY_URGENT = 3, }
_GThread :: struct {
    func: GThreadFunc,
    data: gpointer,
    joinable: gboolean,
    priority: GThreadPriority,
}
GThread :: _GThread
_GMutex :: struct #raw_union {p: gpointer, i: [2]guint, }
GMutex :: _GMutex
_GRecMutex :: struct {
    p: gpointer,
    i: [2]guint,
}
GRecMutex :: _GRecMutex
_GRWLock :: struct {
    p: gpointer,
    i: [2]guint,
}
GRWLock :: _GRWLock
_GCond :: struct {
    p: gpointer,
    i: [2]guint,
}
GCond :: _GCond
_GPrivate :: struct {
    p: gpointer,
    notify: GDestroyNotify,
    future: [2]gpointer,
}
GPrivate :: _GPrivate
GOnceStatus :: enum u32 {G_ONCE_STATUS_NOTCALLED = 0, G_ONCE_STATUS_PROGRESS = 1, G_ONCE_STATUS_READY = 2, }
_GOnce :: struct {
    status: GOnceStatus,
    retval: gpointer,
}
GOnce :: _GOnce
GMutexLocker :: rawptr
GRecMutexLocker :: rawptr
GRWLockWriterLocker :: rawptr
GRWLockReaderLocker :: rawptr
_GAsyncQueue :: rawptr
GAsyncQueue :: _GAsyncQueue
_GTimeZone :: rawptr
GTimeZone :: _GTimeZone
GTimeType :: enum u32 {G_TIME_TYPE_STANDARD = 0, G_TIME_TYPE_DAYLIGHT = 1, G_TIME_TYPE_UNIVERSAL = 2, }
GTimeSpan :: gint64
_GDateTime :: rawptr
GDateTime :: _GDateTime
GBookmarkFileError :: enum u32 {G_BOOKMARK_FILE_ERROR_INVALID_URI = 0, G_BOOKMARK_FILE_ERROR_INVALID_VALUE = 1, G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED = 2, G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND = 3, G_BOOKMARK_FILE_ERROR_READ = 4, G_BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING = 5, G_BOOKMARK_FILE_ERROR_WRITE = 6, G_BOOKMARK_FILE_ERROR_FILE_NOT_FOUND = 7, }
_GBookmarkFile :: rawptr
GBookmarkFile :: _GBookmarkFile
GChecksumType :: enum u32 {G_CHECKSUM_MD5 = 0, G_CHECKSUM_SHA1 = 1, G_CHECKSUM_SHA256 = 2, G_CHECKSUM_SHA512 = 3, G_CHECKSUM_SHA384 = 4, }
_GChecksum :: rawptr
GChecksum :: _GChecksum
GConvertError :: enum u32 {G_CONVERT_ERROR_NO_CONVERSION = 0, G_CONVERT_ERROR_ILLEGAL_SEQUENCE = 1, G_CONVERT_ERROR_FAILED = 2, G_CONVERT_ERROR_PARTIAL_INPUT = 3, G_CONVERT_ERROR_BAD_URI = 4, G_CONVERT_ERROR_NOT_ABSOLUTE_PATH = 5, G_CONVERT_ERROR_NO_MEMORY = 6, G_CONVERT_ERROR_EMBEDDED_NUL = 7, }
_GIConv :: rawptr
GIConv :: ^_GIConv
_GData :: rawptr
GData :: _GData
GDataForeachFunc :: #type proc "c" (key_id: GQuark, data: gpointer, user_data: gpointer)
GDuplicateFunc :: #type proc "c" (data: gpointer, user_data: gpointer) -> gpointer
GTime :: gint32
GDateYear :: guint16
GDateDay :: guint8
_GDate :: [8]u8
GDate :: _GDate
GDateDMY :: enum u32 {G_DATE_DAY = 0, G_DATE_MONTH = 1, G_DATE_YEAR = 2, }
GDateWeekday :: enum u32 {G_DATE_BAD_WEEKDAY = 0, G_DATE_MONDAY = 1, G_DATE_TUESDAY = 2, G_DATE_WEDNESDAY = 3, G_DATE_THURSDAY = 4, G_DATE_FRIDAY = 5, G_DATE_SATURDAY = 6, G_DATE_SUNDAY = 7, }
GDateMonth :: enum u32 {G_DATE_BAD_MONTH = 0, G_DATE_JANUARY = 1, G_DATE_FEBRUARY = 2, G_DATE_MARCH = 3, G_DATE_APRIL = 4, G_DATE_MAY = 5, G_DATE_JUNE = 6, G_DATE_JULY = 7, G_DATE_AUGUST = 8, G_DATE_SEPTEMBER = 9, G_DATE_OCTOBER = 10, G_DATE_NOVEMBER = 11, G_DATE_DECEMBER = 12, }
_GDir :: rawptr
GDir :: _GDir
GFileError :: enum u32 {G_FILE_ERROR_EXIST = 0, G_FILE_ERROR_ISDIR = 1, G_FILE_ERROR_ACCES = 2, G_FILE_ERROR_NAMETOOLONG = 3, G_FILE_ERROR_NOENT = 4, G_FILE_ERROR_NOTDIR = 5, G_FILE_ERROR_NXIO = 6, G_FILE_ERROR_NODEV = 7, G_FILE_ERROR_ROFS = 8, G_FILE_ERROR_TXTBSY = 9, G_FILE_ERROR_FAULT = 10, G_FILE_ERROR_LOOP = 11, G_FILE_ERROR_NOSPC = 12, G_FILE_ERROR_NOMEM = 13, G_FILE_ERROR_MFILE = 14, G_FILE_ERROR_NFILE = 15, G_FILE_ERROR_BADF = 16, G_FILE_ERROR_INVAL = 17, G_FILE_ERROR_PIPE = 18, G_FILE_ERROR_AGAIN = 19, G_FILE_ERROR_INTR = 20, G_FILE_ERROR_IO = 21, G_FILE_ERROR_PERM = 22, G_FILE_ERROR_NOSYS = 23, G_FILE_ERROR_FAILED = 24, }
GFileTest :: enum u32 {G_FILE_TEST_IS_REGULAR = 1, G_FILE_TEST_IS_SYMLINK = 2, G_FILE_TEST_IS_DIR = 4, G_FILE_TEST_IS_EXECUTABLE = 8, G_FILE_TEST_EXISTS = 16, }
GFileSetContentsFlags :: enum u32 {G_FILE_SET_CONTENTS_NONE = 0, G_FILE_SET_CONTENTS_CONSISTENT = 1, G_FILE_SET_CONTENTS_DURABLE = 2, G_FILE_SET_CONTENTS_ONLY_EXISTING = 4, }
malloc_func_ptr_anon_0 :: #type proc "c" (n_bytes: gsize) -> gpointer
realloc_func_ptr_anon_1 :: #type proc "c" (mem: gpointer, n_bytes: gsize) -> gpointer
free_func_ptr_anon_2 :: #type proc "c" (mem: gpointer)
calloc_func_ptr_anon_3 :: #type proc "c" (n_blocks: gsize, n_block_bytes: gsize) -> gpointer
try_malloc_func_ptr_anon_4 :: #type proc "c" (n_bytes: gsize) -> gpointer
try_realloc_func_ptr_anon_5 :: #type proc "c" (mem: gpointer, n_bytes: gsize) -> gpointer
_GMemVTable :: struct {
    malloc: malloc_func_ptr_anon_0,
    realloc: realloc_func_ptr_anon_1,
    free: free_func_ptr_anon_2,
    calloc: calloc_func_ptr_anon_3,
    try_malloc: try_malloc_func_ptr_anon_4,
    try_realloc: try_realloc_func_ptr_anon_5,
}
GMemVTable :: _GMemVTable
_GNode :: struct {
    data: gpointer,
    next: ^GNode,
    prev: ^GNode,
    parent: ^GNode,
    children: ^GNode,
}
GNode :: _GNode
GTraverseFlags :: enum u32 {G_TRAVERSE_LEAVES = 1, G_TRAVERSE_NON_LEAVES = 2, G_TRAVERSE_ALL = 3, G_TRAVERSE_MASK = 3, G_TRAVERSE_LEAFS = 1, G_TRAVERSE_NON_LEAFS = 2, }
GTraverseType :: enum u32 {G_IN_ORDER = 0, G_PRE_ORDER = 1, G_POST_ORDER = 2, G_LEVEL_ORDER = 3, }
GNodeTraverseFunc :: #type proc "c" (node: ^GNode, data: gpointer) -> gboolean
GNodeForeachFunc :: #type proc "c" (node: ^GNode, data: gpointer)
_GList :: struct {
    data: gpointer,
    next: ^GList,
    prev: ^GList,
}
GList :: _GList
_GHashTable :: rawptr
GHashTable :: _GHashTable
GHRFunc :: #type proc "c" (key: gpointer, value: gpointer, user_data: gpointer) -> gboolean
_GHashTableIter :: struct {
    dummy1: gpointer,
    dummy2: gpointer,
    dummy3: gpointer,
    dummy4: i32,
    dummy5: gboolean,
    dummy6: gpointer,
}
GHashTableIter :: _GHashTableIter
_GHmac :: rawptr
GHmac :: _GHmac
_GHook :: struct {
    data: gpointer,
    next: ^GHook,
    prev: ^GHook,
    ref_count: guint,
    hook_id: gulong,
    flags: guint,
    func: gpointer,
    destroy: GDestroyNotify,
}
GHook :: _GHook
GHookCompareFunc :: #type proc "c" (new_hook: ^GHook, sibling: ^GHook) -> gint
GHookFindFunc :: #type proc "c" (hook: ^GHook, data: gpointer) -> gboolean
GHookMarshaller :: #type proc "c" (hook: ^GHook, marshal_data: gpointer)
GHookCheckMarshaller :: #type proc "c" (hook: ^GHook, marshal_data: gpointer) -> gboolean
GHookFunc :: #type proc "c" (data: gpointer)
GHookCheckFunc :: #type proc "c" (data: gpointer) -> gboolean
GHookFinalizeFunc :: #type proc "c" (hook_list: rawptr, hook: ^GHook)
GHookFlagMask :: enum u32 {G_HOOK_FLAG_ACTIVE = 1, G_HOOK_FLAG_IN_CALL = 2, G_HOOK_FLAG_MASK = 15, }
_GPollFD :: struct {
    fd: gint,
    events: gushort,
    revents: gushort,
}
GPollFD :: _GPollFD
GPollFunc :: #type proc "c" (ufds: [^]GPollFD, nfsd: guint, timeout_: gint) -> gint
_GSList :: struct {
    data: gpointer,
    next: ^GSList,
}
GSList :: _GSList
GIOCondition :: enum u32 {G_IO_IN = 1, G_IO_OUT = 4, G_IO_PRI = 2, G_IO_ERR = 8, G_IO_HUP = 16, G_IO_NVAL = 32, }
GMainContextFlags :: enum u32 {G_MAIN_CONTEXT_FLAGS_NONE = 0, G_MAIN_CONTEXT_FLAGS_OWNERLESS_POLLING = 1, }
_GMainContext :: rawptr
GMainContext :: _GMainContext
_GMainLoop :: rawptr
GMainLoop :: _GMainLoop
_GSourcePrivate :: rawptr
GSourcePrivate :: _GSourcePrivate
_GSource :: struct {
    callback_data: gpointer,
    callback_funcs: [^]GSourceCallbackFuncs,
    source_funcs: [^]GSourceFuncs,
    ref_count: guint,
    context_m: ^GMainContext,
    priority: gint,
    flags: guint,
    source_id: guint,
    poll_fds: [^]GSList,
    prev: ^GSource,
    next: ^GSource,
    name: cstring,
    priv: ^GSourcePrivate,
}
GSource :: _GSource
ref_func_ptr_anon_6 :: #type proc "c" (cb_data: gpointer)
unref_func_ptr_anon_7 :: #type proc "c" (cb_data: gpointer)
_GSourceCallbackFuncs :: struct {
    ref: ref_func_ptr_anon_6,
    unref: unref_func_ptr_anon_7,
    get: get_func_ptr_anon_8,
}
GSourceCallbackFuncs :: _GSourceCallbackFuncs
GSourceFunc :: #type proc "c" (user_data: gpointer) -> gboolean
GSourceDummyMarshal :: #type proc "c" ()
_GSourceFuncs :: struct {
    prepare: GSourceFuncsPrepareFunc,
    check: GSourceFuncsCheckFunc,
    dispatch: GSourceFuncsDispatchFunc,
    finalize: GSourceFuncsFinalizeFunc,
    closure_callback: GSourceFunc,
    closure_marshal: GSourceDummyMarshal,
}
GSourceFuncs :: _GSourceFuncs
GSourceOnceFunc :: #type proc "c" (user_data: gpointer)
GChildWatchFunc :: #type proc "c" (pid: GPid, wait_status: gint, user_data: gpointer)
GSourceDisposeFunc :: #type proc "c" (source: ^GSource)
get_func_ptr_anon_8 :: #type proc "c" (cb_data: gpointer, source: ^GSource, func: ^GSourceFunc, data: ^gpointer)
GSourceFuncsPrepareFunc :: #type proc "c" (source: ^GSource, timeout_: ^gint) -> gboolean
GSourceFuncsCheckFunc :: #type proc "c" (source: ^GSource) -> gboolean
GSourceFuncsDispatchFunc :: #type proc "c" (source: ^GSource, callback: GSourceFunc, user_data: gpointer) -> gboolean
GSourceFuncsFinalizeFunc :: #type proc "c" (source: ^GSource)
GMainContextPusher :: rawptr
GClearHandleFunc :: #type proc "c" (handle_id: guint)
gunichar :: guint32
gunichar2 :: guint16
GUnicodeType :: enum u32 {G_UNICODE_CONTROL = 0, G_UNICODE_FORMAT = 1, G_UNICODE_UNASSIGNED = 2, G_UNICODE_PRIVATE_USE = 3, G_UNICODE_SURROGATE = 4, G_UNICODE_LOWERCASE_LETTER = 5, G_UNICODE_MODIFIER_LETTER = 6, G_UNICODE_OTHER_LETTER = 7, G_UNICODE_TITLECASE_LETTER = 8, G_UNICODE_UPPERCASE_LETTER = 9, G_UNICODE_SPACING_MARK = 10, G_UNICODE_ENCLOSING_MARK = 11, G_UNICODE_NON_SPACING_MARK = 12, G_UNICODE_DECIMAL_NUMBER = 13, G_UNICODE_LETTER_NUMBER = 14, G_UNICODE_OTHER_NUMBER = 15, G_UNICODE_CONNECT_PUNCTUATION = 16, G_UNICODE_DASH_PUNCTUATION = 17, G_UNICODE_CLOSE_PUNCTUATION = 18, G_UNICODE_FINAL_PUNCTUATION = 19, G_UNICODE_INITIAL_PUNCTUATION = 20, G_UNICODE_OTHER_PUNCTUATION = 21, G_UNICODE_OPEN_PUNCTUATION = 22, G_UNICODE_CURRENCY_SYMBOL = 23, G_UNICODE_MODIFIER_SYMBOL = 24, G_UNICODE_MATH_SYMBOL = 25, G_UNICODE_OTHER_SYMBOL = 26, G_UNICODE_LINE_SEPARATOR = 27, G_UNICODE_PARAGRAPH_SEPARATOR = 28, G_UNICODE_SPACE_SEPARATOR = 29, }
GUnicodeBreakType :: enum u32 {G_UNICODE_BREAK_MANDATORY = 0, G_UNICODE_BREAK_CARRIAGE_RETURN = 1, G_UNICODE_BREAK_LINE_FEED = 2, G_UNICODE_BREAK_COMBINING_MARK = 3, G_UNICODE_BREAK_SURROGATE = 4, G_UNICODE_BREAK_ZERO_WIDTH_SPACE = 5, G_UNICODE_BREAK_INSEPARABLE = 6, G_UNICODE_BREAK_NON_BREAKING_GLUE = 7, G_UNICODE_BREAK_CONTINGENT = 8, G_UNICODE_BREAK_SPACE = 9, G_UNICODE_BREAK_AFTER = 10, G_UNICODE_BREAK_BEFORE = 11, G_UNICODE_BREAK_BEFORE_AND_AFTER = 12, G_UNICODE_BREAK_HYPHEN = 13, G_UNICODE_BREAK_NON_STARTER = 14, G_UNICODE_BREAK_OPEN_PUNCTUATION = 15, G_UNICODE_BREAK_CLOSE_PUNCTUATION = 16, G_UNICODE_BREAK_QUOTATION = 17, G_UNICODE_BREAK_EXCLAMATION = 18, G_UNICODE_BREAK_IDEOGRAPHIC = 19, G_UNICODE_BREAK_NUMERIC = 20, G_UNICODE_BREAK_INFIX_SEPARATOR = 21, G_UNICODE_BREAK_SYMBOL = 22, G_UNICODE_BREAK_ALPHABETIC = 23, G_UNICODE_BREAK_PREFIX = 24, G_UNICODE_BREAK_POSTFIX = 25, G_UNICODE_BREAK_COMPLEX_CONTEXT = 26, G_UNICODE_BREAK_AMBIGUOUS = 27, G_UNICODE_BREAK_UNKNOWN = 28, G_UNICODE_BREAK_NEXT_LINE = 29, G_UNICODE_BREAK_WORD_JOINER = 30, G_UNICODE_BREAK_HANGUL_L_JAMO = 31, G_UNICODE_BREAK_HANGUL_V_JAMO = 32, G_UNICODE_BREAK_HANGUL_T_JAMO = 33, G_UNICODE_BREAK_HANGUL_LV_SYLLABLE = 34, G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE = 35, G_UNICODE_BREAK_CLOSE_PARANTHESIS = 36, G_UNICODE_BREAK_CLOSE_PARENTHESIS = 36, G_UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER = 37, G_UNICODE_BREAK_HEBREW_LETTER = 38, G_UNICODE_BREAK_REGIONAL_INDICATOR = 39, G_UNICODE_BREAK_EMOJI_BASE = 40, G_UNICODE_BREAK_EMOJI_MODIFIER = 41, G_UNICODE_BREAK_ZERO_WIDTH_JOINER = 42, G_UNICODE_BREAK_AKSARA = 43, G_UNICODE_BREAK_AKSARA_PRE_BASE = 44, G_UNICODE_BREAK_AKSARA_START = 45, G_UNICODE_BREAK_VIRAMA_FINAL = 46, G_UNICODE_BREAK_VIRAMA = 47, }
GUnicodeScript :: enum i32 {G_UNICODE_SCRIPT_INVALID_CODE = -1, G_UNICODE_SCRIPT_COMMON = 0, G_UNICODE_SCRIPT_INHERITED = 1, G_UNICODE_SCRIPT_ARABIC = 2, G_UNICODE_SCRIPT_ARMENIAN = 3, G_UNICODE_SCRIPT_BENGALI = 4, G_UNICODE_SCRIPT_BOPOMOFO = 5, G_UNICODE_SCRIPT_CHEROKEE = 6, G_UNICODE_SCRIPT_COPTIC = 7, G_UNICODE_SCRIPT_CYRILLIC = 8, G_UNICODE_SCRIPT_DESERET = 9, G_UNICODE_SCRIPT_DEVANAGARI = 10, G_UNICODE_SCRIPT_ETHIOPIC = 11, G_UNICODE_SCRIPT_GEORGIAN = 12, G_UNICODE_SCRIPT_GOTHIC = 13, G_UNICODE_SCRIPT_GREEK = 14, G_UNICODE_SCRIPT_GUJARATI = 15, G_UNICODE_SCRIPT_GURMUKHI = 16, G_UNICODE_SCRIPT_HAN = 17, G_UNICODE_SCRIPT_HANGUL = 18, G_UNICODE_SCRIPT_HEBREW = 19, G_UNICODE_SCRIPT_HIRAGANA = 20, G_UNICODE_SCRIPT_KANNADA = 21, G_UNICODE_SCRIPT_KATAKANA = 22, G_UNICODE_SCRIPT_KHMER = 23, G_UNICODE_SCRIPT_LAO = 24, G_UNICODE_SCRIPT_LATIN = 25, G_UNICODE_SCRIPT_MALAYALAM = 26, G_UNICODE_SCRIPT_MONGOLIAN = 27, G_UNICODE_SCRIPT_MYANMAR = 28, G_UNICODE_SCRIPT_OGHAM = 29, G_UNICODE_SCRIPT_OLD_ITALIC = 30, G_UNICODE_SCRIPT_ORIYA = 31, G_UNICODE_SCRIPT_RUNIC = 32, G_UNICODE_SCRIPT_SINHALA = 33, G_UNICODE_SCRIPT_SYRIAC = 34, G_UNICODE_SCRIPT_TAMIL = 35, G_UNICODE_SCRIPT_TELUGU = 36, G_UNICODE_SCRIPT_THAANA = 37, G_UNICODE_SCRIPT_THAI = 38, G_UNICODE_SCRIPT_TIBETAN = 39, G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL = 40, G_UNICODE_SCRIPT_YI = 41, G_UNICODE_SCRIPT_TAGALOG = 42, G_UNICODE_SCRIPT_HANUNOO = 43, G_UNICODE_SCRIPT_BUHID = 44, G_UNICODE_SCRIPT_TAGBANWA = 45, G_UNICODE_SCRIPT_BRAILLE = 46, G_UNICODE_SCRIPT_CYPRIOT = 47, G_UNICODE_SCRIPT_LIMBU = 48, G_UNICODE_SCRIPT_OSMANYA = 49, G_UNICODE_SCRIPT_SHAVIAN = 50, G_UNICODE_SCRIPT_LINEAR_B = 51, G_UNICODE_SCRIPT_TAI_LE = 52, G_UNICODE_SCRIPT_UGARITIC = 53, G_UNICODE_SCRIPT_NEW_TAI_LUE = 54, G_UNICODE_SCRIPT_BUGINESE = 55, G_UNICODE_SCRIPT_GLAGOLITIC = 56, G_UNICODE_SCRIPT_TIFINAGH = 57, G_UNICODE_SCRIPT_SYLOTI_NAGRI = 58, G_UNICODE_SCRIPT_OLD_PERSIAN = 59, G_UNICODE_SCRIPT_KHAROSHTHI = 60, G_UNICODE_SCRIPT_UNKNOWN = 61, G_UNICODE_SCRIPT_BALINESE = 62, G_UNICODE_SCRIPT_CUNEIFORM = 63, G_UNICODE_SCRIPT_PHOENICIAN = 64, G_UNICODE_SCRIPT_PHAGS_PA = 65, G_UNICODE_SCRIPT_NKO = 66, G_UNICODE_SCRIPT_KAYAH_LI = 67, G_UNICODE_SCRIPT_LEPCHA = 68, G_UNICODE_SCRIPT_REJANG = 69, G_UNICODE_SCRIPT_SUNDANESE = 70, G_UNICODE_SCRIPT_SAURASHTRA = 71, G_UNICODE_SCRIPT_CHAM = 72, G_UNICODE_SCRIPT_OL_CHIKI = 73, G_UNICODE_SCRIPT_VAI = 74, G_UNICODE_SCRIPT_CARIAN = 75, G_UNICODE_SCRIPT_LYCIAN = 76, G_UNICODE_SCRIPT_LYDIAN = 77, G_UNICODE_SCRIPT_AVESTAN = 78, G_UNICODE_SCRIPT_BAMUM = 79, G_UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS = 80, G_UNICODE_SCRIPT_IMPERIAL_ARAMAIC = 81, G_UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI = 82, G_UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN = 83, G_UNICODE_SCRIPT_JAVANESE = 84, G_UNICODE_SCRIPT_KAITHI = 85, G_UNICODE_SCRIPT_LISU = 86, G_UNICODE_SCRIPT_MEETEI_MAYEK = 87, G_UNICODE_SCRIPT_OLD_SOUTH_ARABIAN = 88, G_UNICODE_SCRIPT_OLD_TURKIC = 89, G_UNICODE_SCRIPT_SAMARITAN = 90, G_UNICODE_SCRIPT_TAI_THAM = 91, G_UNICODE_SCRIPT_TAI_VIET = 92, G_UNICODE_SCRIPT_BATAK = 93, G_UNICODE_SCRIPT_BRAHMI = 94, G_UNICODE_SCRIPT_MANDAIC = 95, G_UNICODE_SCRIPT_CHAKMA = 96, G_UNICODE_SCRIPT_MEROITIC_CURSIVE = 97, G_UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS = 98, G_UNICODE_SCRIPT_MIAO = 99, G_UNICODE_SCRIPT_SHARADA = 100, G_UNICODE_SCRIPT_SORA_SOMPENG = 101, G_UNICODE_SCRIPT_TAKRI = 102, G_UNICODE_SCRIPT_BASSA_VAH = 103, G_UNICODE_SCRIPT_CAUCASIAN_ALBANIAN = 104, G_UNICODE_SCRIPT_DUPLOYAN = 105, G_UNICODE_SCRIPT_ELBASAN = 106, G_UNICODE_SCRIPT_GRANTHA = 107, G_UNICODE_SCRIPT_KHOJKI = 108, G_UNICODE_SCRIPT_KHUDAWADI = 109, G_UNICODE_SCRIPT_LINEAR_A = 110, G_UNICODE_SCRIPT_MAHAJANI = 111, G_UNICODE_SCRIPT_MANICHAEAN = 112, G_UNICODE_SCRIPT_MENDE_KIKAKUI = 113, G_UNICODE_SCRIPT_MODI = 114, G_UNICODE_SCRIPT_MRO = 115, G_UNICODE_SCRIPT_NABATAEAN = 116, G_UNICODE_SCRIPT_OLD_NORTH_ARABIAN = 117, G_UNICODE_SCRIPT_OLD_PERMIC = 118, G_UNICODE_SCRIPT_PAHAWH_HMONG = 119, G_UNICODE_SCRIPT_PALMYRENE = 120, G_UNICODE_SCRIPT_PAU_CIN_HAU = 121, G_UNICODE_SCRIPT_PSALTER_PAHLAVI = 122, G_UNICODE_SCRIPT_SIDDHAM = 123, G_UNICODE_SCRIPT_TIRHUTA = 124, G_UNICODE_SCRIPT_WARANG_CITI = 125, G_UNICODE_SCRIPT_AHOM = 126, G_UNICODE_SCRIPT_ANATOLIAN_HIEROGLYPHS = 127, G_UNICODE_SCRIPT_HATRAN = 128, G_UNICODE_SCRIPT_MULTANI = 129, G_UNICODE_SCRIPT_OLD_HUNGARIAN = 130, G_UNICODE_SCRIPT_SIGNWRITING = 131, G_UNICODE_SCRIPT_ADLAM = 132, G_UNICODE_SCRIPT_BHAIKSUKI = 133, G_UNICODE_SCRIPT_MARCHEN = 134, G_UNICODE_SCRIPT_NEWA = 135, G_UNICODE_SCRIPT_OSAGE = 136, G_UNICODE_SCRIPT_TANGUT = 137, G_UNICODE_SCRIPT_MASARAM_GONDI = 138, G_UNICODE_SCRIPT_NUSHU = 139, G_UNICODE_SCRIPT_SOYOMBO = 140, G_UNICODE_SCRIPT_ZANABAZAR_SQUARE = 141, G_UNICODE_SCRIPT_DOGRA = 142, G_UNICODE_SCRIPT_GUNJALA_GONDI = 143, G_UNICODE_SCRIPT_HANIFI_ROHINGYA = 144, G_UNICODE_SCRIPT_MAKASAR = 145, G_UNICODE_SCRIPT_MEDEFAIDRIN = 146, G_UNICODE_SCRIPT_OLD_SOGDIAN = 147, G_UNICODE_SCRIPT_SOGDIAN = 148, G_UNICODE_SCRIPT_ELYMAIC = 149, G_UNICODE_SCRIPT_NANDINAGARI = 150, G_UNICODE_SCRIPT_NYIAKENG_PUACHUE_HMONG = 151, G_UNICODE_SCRIPT_WANCHO = 152, G_UNICODE_SCRIPT_CHORASMIAN = 153, G_UNICODE_SCRIPT_DIVES_AKURU = 154, G_UNICODE_SCRIPT_KHITAN_SMALL_SCRIPT = 155, G_UNICODE_SCRIPT_YEZIDI = 156, G_UNICODE_SCRIPT_CYPRO_MINOAN = 157, G_UNICODE_SCRIPT_OLD_UYGHUR = 158, G_UNICODE_SCRIPT_TANGSA = 159, G_UNICODE_SCRIPT_TOTO = 160, G_UNICODE_SCRIPT_VITHKUQI = 161, G_UNICODE_SCRIPT_MATH = 162, G_UNICODE_SCRIPT_KAWI = 163, G_UNICODE_SCRIPT_NAG_MUNDARI = 164, G_UNICODE_SCRIPT_TODHRI = 165, G_UNICODE_SCRIPT_GARAY = 166, G_UNICODE_SCRIPT_TULU_TIGALARI = 167, G_UNICODE_SCRIPT_SUNUWAR = 168, G_UNICODE_SCRIPT_GURUNG_KHEMA = 169, G_UNICODE_SCRIPT_KIRAT_RAI = 170, G_UNICODE_SCRIPT_OL_ONAL = 171, }
GNormalizeMode :: enum u32 {G_NORMALIZE_DEFAULT = 0, G_NORMALIZE_NFD = 0, G_NORMALIZE_DEFAULT_COMPOSE = 1, G_NORMALIZE_NFC = 1, G_NORMALIZE_ALL = 2, G_NORMALIZE_NFKD = 2, G_NORMALIZE_ALL_COMPOSE = 3, G_NORMALIZE_NFKC = 3, }
GAsciiType :: enum u32 {G_ASCII_ALNUM = 1, G_ASCII_ALPHA = 2, G_ASCII_CNTRL = 4, G_ASCII_DIGIT = 8, G_ASCII_GRAPH = 16, G_ASCII_LOWER = 32, G_ASCII_PRINT = 64, G_ASCII_PUNCT = 128, G_ASCII_SPACE = 256, G_ASCII_UPPER = 512, G_ASCII_XDIGIT = 1024, }
GStrv :: ^cstring
GNumberParserError :: enum u32 {G_NUMBER_PARSER_ERROR_INVALID = 0, G_NUMBER_PARSER_ERROR_OUT_OF_BOUNDS = 1, }
_GString :: struct {
    str: cstring,
    len: gsize,
    allocated_len: gsize,
}
GString :: _GString
GIOStatus :: enum u32 {G_IO_STATUS_ERROR = 0, G_IO_STATUS_NORMAL = 1, G_IO_STATUS_EOF = 2, G_IO_STATUS_AGAIN = 3, }
io_read_func_ptr_anon_9 :: #type proc "c" (channel: rawptr, buf: ^byte, count: gsize, bytes_read: ^gsize, err: ^^GError) -> GIOStatus
io_write_func_ptr_anon_10 :: #type proc "c" (channel: rawptr, buf: ^byte, count: gsize, bytes_written: ^gsize, err: ^^GError) -> GIOStatus
GSeekType :: enum u32 {G_SEEK_CUR = 0, G_SEEK_SET = 1, G_SEEK_END = 2, }
io_seek_func_ptr_anon_11 :: #type proc "c" (channel: rawptr, offset: gint64, type: GSeekType, err: ^^GError) -> GIOStatus
io_close_func_ptr_anon_12 :: #type proc "c" (channel: rawptr, err: ^^GError) -> GIOStatus
io_create_watch_func_ptr_anon_13 :: #type proc "c" (channel: rawptr, condition: GIOCondition) -> ^GSource
io_free_func_ptr_anon_14 :: #type proc "c" (channel: rawptr)
GIOFlags :: enum u32 {G_IO_FLAG_NONE = 0, G_IO_FLAG_APPEND = 1, G_IO_FLAG_NONBLOCK = 2, G_IO_FLAG_IS_READABLE = 4, G_IO_FLAG_IS_WRITABLE = 8, G_IO_FLAG_IS_WRITEABLE = 8, G_IO_FLAG_IS_SEEKABLE = 16, G_IO_FLAG_MASK = 31, G_IO_FLAG_GET_MASK = 31, G_IO_FLAG_SET_MASK = 3, }
io_set_flags_func_ptr_anon_15 :: #type proc "c" (channel: rawptr, flags: GIOFlags, err: ^^GError) -> GIOStatus
io_get_flags_func_ptr_anon_16 :: #type proc "c" (channel: rawptr) -> GIOFlags
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
GIOFuncs :: _GIOFuncs
GIOError :: enum u32 {G_IO_ERROR_NONE = 0, G_IO_ERROR_AGAIN = 1, G_IO_ERROR_INVAL = 2, G_IO_ERROR_UNKNOWN = 3, }
GIOChannelError :: enum u32 {G_IO_CHANNEL_ERROR_FBIG = 0, G_IO_CHANNEL_ERROR_INVAL = 1, G_IO_CHANNEL_ERROR_IO = 2, G_IO_CHANNEL_ERROR_ISDIR = 3, G_IO_CHANNEL_ERROR_NOSPC = 4, G_IO_CHANNEL_ERROR_NXIO = 5, G_IO_CHANNEL_ERROR_OVERFLOW = 6, G_IO_CHANNEL_ERROR_PIPE = 7, G_IO_CHANNEL_ERROR_FAILED = 8, }
GIOFunc :: #type proc "c" (source: rawptr, condition: GIOCondition, data: gpointer) -> gboolean
GKeyFileError :: enum u32 {G_KEY_FILE_ERROR_UNKNOWN_ENCODING = 0, G_KEY_FILE_ERROR_PARSE = 1, G_KEY_FILE_ERROR_NOT_FOUND = 2, G_KEY_FILE_ERROR_KEY_NOT_FOUND = 3, G_KEY_FILE_ERROR_GROUP_NOT_FOUND = 4, G_KEY_FILE_ERROR_INVALID_VALUE = 5, }
_GKeyFile :: rawptr
GKeyFile :: _GKeyFile
GKeyFileFlags :: enum u32 {G_KEY_FILE_NONE = 0, G_KEY_FILE_KEEP_COMMENTS = 1, G_KEY_FILE_KEEP_TRANSLATIONS = 2, }
_GMappedFile :: rawptr
GMappedFile :: _GMappedFile
GMarkupError :: enum u32 {G_MARKUP_ERROR_BAD_UTF8 = 0, G_MARKUP_ERROR_EMPTY = 1, G_MARKUP_ERROR_PARSE = 2, G_MARKUP_ERROR_UNKNOWN_ELEMENT = 3, G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE = 4, G_MARKUP_ERROR_INVALID_CONTENT = 5, G_MARKUP_ERROR_MISSING_ATTRIBUTE = 6, }
GMarkupParseFlags :: enum u32 {G_MARKUP_DEFAULT_FLAGS = 0, G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1, G_MARKUP_TREAT_CDATA_AS_TEXT = 2, G_MARKUP_PREFIX_ERROR_POSITION = 4, G_MARKUP_IGNORE_QUALIFIED = 8, }
_GMarkupParseContext :: rawptr
GMarkupParseContext :: _GMarkupParseContext
start_element_func_ptr_anon_17 :: #type proc "c" (context_p: ^GMarkupParseContext, element_name: cstring, attribute_names: [^]cstring, attribute_values: [^]cstring, user_data: gpointer, error: ^^GError)
end_element_func_ptr_anon_18 :: #type proc "c" (context_p: ^GMarkupParseContext, element_name: cstring, user_data: gpointer, error: ^^GError)
text_func_ptr_anon_19 :: #type proc "c" (context_p: ^GMarkupParseContext, text: cstring, text_len: gsize, user_data: gpointer, error: ^^GError)
passthrough_func_ptr_anon_20 :: #type proc "c" (context_p: ^GMarkupParseContext, passthrough_text: cstring, text_len: gsize, user_data: gpointer, error: ^^GError)
error_func_ptr_anon_21 :: #type proc "c" (context_p: ^GMarkupParseContext, error: ^GError, user_data: gpointer)
_GMarkupParser :: struct {
    start_element: start_element_func_ptr_anon_17,
    end_element: end_element_func_ptr_anon_18,
    text: text_func_ptr_anon_19,
    passthrough: passthrough_func_ptr_anon_20,
    error: error_func_ptr_anon_21,
}
GMarkupParser :: _GMarkupParser
GMarkupCollectType :: enum u32 {G_MARKUP_COLLECT_INVALID = 0, G_MARKUP_COLLECT_STRING = 1, G_MARKUP_COLLECT_STRDUP = 2, G_MARKUP_COLLECT_BOOLEAN = 3, G_MARKUP_COLLECT_TRISTATE = 4, G_MARKUP_COLLECT_OPTIONAL = 65536, }
_GVariantType :: rawptr
GVariantType :: _GVariantType
_GVariant :: rawptr
GVariant :: _GVariant
GVariantClass :: enum u32 {G_VARIANT_CLASS_BOOLEAN = 98, G_VARIANT_CLASS_BYTE = 121, G_VARIANT_CLASS_INT16 = 110, G_VARIANT_CLASS_UINT16 = 113, G_VARIANT_CLASS_INT32 = 105, G_VARIANT_CLASS_UINT32 = 117, G_VARIANT_CLASS_INT64 = 120, G_VARIANT_CLASS_UINT64 = 116, G_VARIANT_CLASS_HANDLE = 104, G_VARIANT_CLASS_DOUBLE = 100, G_VARIANT_CLASS_STRING = 115, G_VARIANT_CLASS_OBJECT_PATH = 111, G_VARIANT_CLASS_SIGNATURE = 103, G_VARIANT_CLASS_VARIANT = 118, G_VARIANT_CLASS_MAYBE = 109, G_VARIANT_CLASS_ARRAY = 97, G_VARIANT_CLASS_TUPLE = 40, G_VARIANT_CLASS_DICT_ENTRY = 123, }
_GVariantIter :: struct {
    x: [16]guintptr,
}
GVariantIter :: _GVariantIter
s_struct_anon_22 :: struct {
    partial_magic: gsize,
    type: ^GVariantType,
    y: [14]guintptr,
}
u_union_anon_23 :: struct #raw_union {s: s_struct_anon_22, x: [16]guintptr, }
_GVariantBuilder :: struct {
    u: u_union_anon_23,
}
GVariantBuilder :: _GVariantBuilder
GVariantParseError :: enum u32 {G_VARIANT_PARSE_ERROR_FAILED = 0, G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED = 1, G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE = 2, G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED = 3, G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END = 4, G_VARIANT_PARSE_ERROR_INVALID_CHARACTER = 5, G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING = 6, G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH = 7, G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE = 8, G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING = 9, G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE = 10, G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE = 11, G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG = 12, G_VARIANT_PARSE_ERROR_TYPE_ERROR = 13, G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN = 14, G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD = 15, G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT = 16, G_VARIANT_PARSE_ERROR_VALUE_EXPECTED = 17, G_VARIANT_PARSE_ERROR_RECURSION = 18, }
s_struct_anon_24 :: struct {
    asv: ^GVariant,
    partial_magic: gsize,
    y: [14]guintptr,
}
u_union_anon_25 :: struct #raw_union {s: s_struct_anon_24, x: [16]guintptr, }
_GVariantDict :: struct {
    u: u_union_anon_25,
}
GVariantDict :: _GVariantDict
GLogLevelFlags :: enum i32 {G_LOG_FLAG_RECURSION = 1, G_LOG_FLAG_FATAL = 2, G_LOG_LEVEL_ERROR = 4, G_LOG_LEVEL_CRITICAL = 8, G_LOG_LEVEL_WARNING = 16, G_LOG_LEVEL_MESSAGE = 32, G_LOG_LEVEL_INFO = 64, G_LOG_LEVEL_DEBUG = 128, G_LOG_LEVEL_MASK = -4, }
GLogFunc :: #type proc "c" (log_domain: cstring, log_level: GLogLevelFlags, message: cstring, user_data: gpointer)
GLogWriterOutput :: enum u32 {G_LOG_WRITER_HANDLED = 1, G_LOG_WRITER_UNHANDLED = 0, }
_GLogField :: struct {
    key: cstring,
    value: gconstpointer,
    length: gssize,
}
GLogField :: _GLogField
GLogWriterFunc :: #type proc "c" (log_level: GLogLevelFlags, fields: [^]GLogField, n_fields: gsize, user_data: gpointer) -> GLogWriterOutput
GPrintFunc :: #type proc "c" (string_p: cstring)
_GOptionContext :: rawptr
GOptionContext :: _GOptionContext
_GOptionGroup :: rawptr
GOptionGroup :: _GOptionGroup
GOptionArg :: enum u32 {G_OPTION_ARG_NONE = 0, G_OPTION_ARG_STRING = 1, G_OPTION_ARG_INT = 2, G_OPTION_ARG_CALLBACK = 3, G_OPTION_ARG_FILENAME = 4, G_OPTION_ARG_STRING_ARRAY = 5, G_OPTION_ARG_FILENAME_ARRAY = 6, G_OPTION_ARG_DOUBLE = 7, G_OPTION_ARG_INT64 = 8, }
_GOptionEntry :: struct {
    long_name: cstring,
    short_name: gchar,
    flags: gint,
    arg: GOptionArg,
    arg_data: gpointer,
    description: cstring,
    arg_description: cstring,
}
GOptionEntry :: _GOptionEntry
GOptionFlags :: enum u32 {G_OPTION_FLAG_NONE = 0, G_OPTION_FLAG_HIDDEN = 1, G_OPTION_FLAG_IN_MAIN = 2, G_OPTION_FLAG_REVERSE = 4, G_OPTION_FLAG_NO_ARG = 8, G_OPTION_FLAG_FILENAME = 16, G_OPTION_FLAG_OPTIONAL_ARG = 32, G_OPTION_FLAG_NOALIAS = 64, }
GOptionArgFunc :: #type proc "c" (option_name: cstring, value: cstring, data: gpointer, error: ^^GError) -> gboolean
GOptionParseFunc :: #type proc "c" (context_p: ^GOptionContext, group: ^GOptionGroup, data: gpointer, error: ^^GError) -> gboolean
GOptionErrorFunc :: #type proc "c" (context_p: ^GOptionContext, group: ^GOptionGroup, data: gpointer, error: ^^GError)
GOptionError :: enum u32 {G_OPTION_ERROR_UNKNOWN_OPTION = 0, G_OPTION_ERROR_BAD_VALUE = 1, G_OPTION_ERROR_FAILED = 2, }
_GPathBuf :: struct {
    dummy: [8]gpointer,
}
GPathBuf :: _GPathBuf
_GPatternSpec :: rawptr
GPatternSpec :: _GPatternSpec
_GQueue :: struct {
    head: ^GList,
    tail: ^GList,
    length: guint,
}
GQueue :: _GQueue
_GRand :: rawptr
GRand :: _GRand
GRefString :: gchar
GRegexError :: enum u32 {G_REGEX_ERROR_COMPILE = 0, G_REGEX_ERROR_OPTIMIZE = 1, G_REGEX_ERROR_REPLACE = 2, G_REGEX_ERROR_MATCH = 3, G_REGEX_ERROR_INTERNAL = 4, G_REGEX_ERROR_STRAY_BACKSLASH = 101, G_REGEX_ERROR_MISSING_CONTROL_CHAR = 102, G_REGEX_ERROR_UNRECOGNIZED_ESCAPE = 103, G_REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER = 104, G_REGEX_ERROR_QUANTIFIER_TOO_BIG = 105, G_REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS = 106, G_REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS = 107, G_REGEX_ERROR_RANGE_OUT_OF_ORDER = 108, G_REGEX_ERROR_NOTHING_TO_REPEAT = 109, G_REGEX_ERROR_UNRECOGNIZED_CHARACTER = 112, G_REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113, G_REGEX_ERROR_UNMATCHED_PARENTHESIS = 114, G_REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE = 115, G_REGEX_ERROR_UNTERMINATED_COMMENT = 118, G_REGEX_ERROR_EXPRESSION_TOO_LARGE = 120, G_REGEX_ERROR_MEMORY_ERROR = 121, G_REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND = 125, G_REGEX_ERROR_MALFORMED_CONDITION = 126, G_REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES = 127, G_REGEX_ERROR_ASSERTION_EXPECTED = 128, G_REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME = 130, G_REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131, G_REGEX_ERROR_HEX_CODE_TOO_LARGE = 134, G_REGEX_ERROR_INVALID_CONDITION = 135, G_REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136, G_REGEX_ERROR_INFINITE_LOOP = 140, G_REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR = 142, G_REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME = 143, G_REGEX_ERROR_MALFORMED_PROPERTY = 146, G_REGEX_ERROR_UNKNOWN_PROPERTY = 147, G_REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG = 148, G_REGEX_ERROR_TOO_MANY_SUBPATTERNS = 149, G_REGEX_ERROR_INVALID_OCTAL_VALUE = 151, G_REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE = 154, G_REGEX_ERROR_DEFINE_REPETION = 155, G_REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS = 156, G_REGEX_ERROR_MISSING_BACK_REFERENCE = 157, G_REGEX_ERROR_INVALID_RELATIVE_REFERENCE = 158, G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159, G_REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB = 160, G_REGEX_ERROR_NUMBER_TOO_BIG = 161, G_REGEX_ERROR_MISSING_SUBPATTERN_NAME = 162, G_REGEX_ERROR_MISSING_DIGIT = 163, G_REGEX_ERROR_INVALID_DATA_CHARACTER = 164, G_REGEX_ERROR_EXTRA_SUBPATTERN_NAME = 165, G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166, G_REGEX_ERROR_INVALID_CONTROL_CHAR = 168, G_REGEX_ERROR_MISSING_NAME = 169, G_REGEX_ERROR_NOT_SUPPORTED_IN_CLASS = 171, G_REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES = 172, G_REGEX_ERROR_NAME_TOO_LONG = 175, G_REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE = 176, }
GRegexCompileFlags :: enum u32 {G_REGEX_DEFAULT = 0, G_REGEX_CASELESS = 1, G_REGEX_MULTILINE = 2, G_REGEX_DOTALL = 4, G_REGEX_EXTENDED = 8, G_REGEX_ANCHORED = 16, G_REGEX_DOLLAR_ENDONLY = 32, G_REGEX_UNGREEDY = 512, G_REGEX_RAW = 2048, G_REGEX_NO_AUTO_CAPTURE = 4096, G_REGEX_OPTIMIZE = 8192, G_REGEX_FIRSTLINE = 262144, G_REGEX_DUPNAMES = 524288, G_REGEX_NEWLINE_CR = 1048576, G_REGEX_NEWLINE_LF = 2097152, G_REGEX_NEWLINE_CRLF = 3145728, G_REGEX_NEWLINE_ANYCRLF = 5242880, G_REGEX_BSR_ANYCRLF = 8388608, G_REGEX_JAVASCRIPT_COMPAT = 33554432, }
GRegexMatchFlags :: enum u32 {G_REGEX_MATCH_DEFAULT = 0, G_REGEX_MATCH_ANCHORED = 16, G_REGEX_MATCH_NOTBOL = 128, G_REGEX_MATCH_NOTEOL = 256, G_REGEX_MATCH_NOTEMPTY = 1024, G_REGEX_MATCH_PARTIAL = 32768, G_REGEX_MATCH_NEWLINE_CR = 1048576, G_REGEX_MATCH_NEWLINE_LF = 2097152, G_REGEX_MATCH_NEWLINE_CRLF = 3145728, G_REGEX_MATCH_NEWLINE_ANY = 4194304, G_REGEX_MATCH_NEWLINE_ANYCRLF = 5242880, G_REGEX_MATCH_BSR_ANYCRLF = 8388608, G_REGEX_MATCH_BSR_ANY = 16777216, G_REGEX_MATCH_PARTIAL_SOFT = 32768, G_REGEX_MATCH_PARTIAL_HARD = 134217728, G_REGEX_MATCH_NOTEMPTY_ATSTART = 268435456, }
_GRegex :: rawptr
GRegex :: _GRegex
_GMatchInfo :: rawptr
GMatchInfo :: _GMatchInfo
GRegexEvalCallback :: #type proc "c" (match_info: ^GMatchInfo, result: ^GString, user_data: gpointer) -> gboolean
GTokenType :: enum u32 {G_TOKEN_EOF = 0, G_TOKEN_LEFT_PAREN = 40, G_TOKEN_RIGHT_PAREN = 41, G_TOKEN_LEFT_CURLY = 123, G_TOKEN_RIGHT_CURLY = 125, G_TOKEN_LEFT_BRACE = 91, G_TOKEN_RIGHT_BRACE = 93, G_TOKEN_EQUAL_SIGN = 61, G_TOKEN_COMMA = 44, G_TOKEN_NONE = 256, G_TOKEN_ERROR = 257, G_TOKEN_CHAR = 258, G_TOKEN_BINARY = 259, G_TOKEN_OCTAL = 260, G_TOKEN_INT = 261, G_TOKEN_HEX = 262, G_TOKEN_FLOAT = 263, G_TOKEN_STRING = 264, G_TOKEN_SYMBOL = 265, G_TOKEN_IDENTIFIER = 266, G_TOKEN_IDENTIFIER_NULL = 267, G_TOKEN_COMMENT_SINGLE = 268, G_TOKEN_COMMENT_MULTI = 269, G_TOKEN_LAST = 270, }
_GTokenValue :: struct #raw_union {v_symbol: gpointer, v_identifier: cstring, v_binary: gulong, v_octal: gulong, v_int: gulong, v_int64: guint64, v_float: gdouble, v_hex: gulong, v_string: cstring, v_comment: cstring, v_char: guchar, v_error: guint, }
GTokenValue :: _GTokenValue
_GScanner :: struct {
    user_data: gpointer,
    max_parse_errors: guint,
    parse_errors: guint,
    input_name: cstring,
    qdata: ^GData,
    config: rawptr,
    token: GTokenType,
    value: GTokenValue,
    line: guint,
    position: guint,
    next_token: GTokenType,
    next_value: GTokenValue,
    next_line: guint,
    next_position: guint,
    symbol_table: ^GHashTable,
    input_fd: gint,
    text: cstring,
    text_end: cstring,
    buffer: ^byte,
    scope_id: guint,
    msg_handler: GScannerMsgFunc,
}
GScanner :: _GScanner
GScannerMsgFunc :: #type proc "c" (scanner: ^GScanner, message: cstring, error: gboolean)
GErrorType :: enum u32 {G_ERR_UNKNOWN = 0, G_ERR_UNEXP_EOF = 1, G_ERR_UNEXP_EOF_IN_STRING = 2, G_ERR_UNEXP_EOF_IN_COMMENT = 3, G_ERR_NON_DIGIT_IN_CONST = 4, G_ERR_DIGIT_RADIX = 5, G_ERR_FLOAT_RADIX = 6, G_ERR_FLOAT_MALFORMED = 7, }
_GSequence :: rawptr
GSequence :: _GSequence
_GSequenceNode :: rawptr
GSequenceIter :: _GSequenceNode
GSequenceIterCompareFunc :: #type proc "c" (a: ^GSequenceIter, b: ^GSequenceIter, data: gpointer) -> gint
GShellError :: enum u32 {G_SHELL_ERROR_BAD_QUOTING = 0, G_SHELL_ERROR_EMPTY_STRING = 1, G_SHELL_ERROR_FAILED = 2, }
GSliceConfig :: enum u32 {G_SLICE_CONFIG_ALWAYS_MALLOC = 1, G_SLICE_CONFIG_BYPASS_MAGAZINES = 2, G_SLICE_CONFIG_WORKING_SET_MSECS = 3, G_SLICE_CONFIG_COLOR_INCREMENT = 4, G_SLICE_CONFIG_CHUNK_SIZES = 5, G_SLICE_CONFIG_CONTENTION_COUNTER = 6, }
GSpawnError :: enum u32 {G_SPAWN_ERROR_FORK = 0, G_SPAWN_ERROR_READ = 1, G_SPAWN_ERROR_CHDIR = 2, G_SPAWN_ERROR_ACCES = 3, G_SPAWN_ERROR_PERM = 4, G_SPAWN_ERROR_TOO_BIG = 5, G_SPAWN_ERROR_2BIG = 5, G_SPAWN_ERROR_NOEXEC = 6, G_SPAWN_ERROR_NAMETOOLONG = 7, G_SPAWN_ERROR_NOENT = 8, G_SPAWN_ERROR_NOMEM = 9, G_SPAWN_ERROR_NOTDIR = 10, G_SPAWN_ERROR_LOOP = 11, G_SPAWN_ERROR_TXTBUSY = 12, G_SPAWN_ERROR_IO = 13, G_SPAWN_ERROR_NFILE = 14, G_SPAWN_ERROR_MFILE = 15, G_SPAWN_ERROR_INVAL = 16, G_SPAWN_ERROR_ISDIR = 17, G_SPAWN_ERROR_LIBBAD = 18, G_SPAWN_ERROR_FAILED = 19, }
GSpawnChildSetupFunc :: #type proc "c" (data: gpointer)
GSpawnFlags :: enum u32 {G_SPAWN_DEFAULT = 0, G_SPAWN_LEAVE_DESCRIPTORS_OPEN = 1, G_SPAWN_DO_NOT_REAP_CHILD = 2, G_SPAWN_SEARCH_PATH = 4, G_SPAWN_STDOUT_TO_DEV_NULL = 8, G_SPAWN_STDERR_TO_DEV_NULL = 16, G_SPAWN_CHILD_INHERITS_STDIN = 32, G_SPAWN_FILE_AND_ARGV_ZERO = 64, G_SPAWN_SEARCH_PATH_FROM_ENVP = 128, G_SPAWN_CLOEXEC_PIPES = 256, G_SPAWN_CHILD_INHERITS_STDOUT = 512, G_SPAWN_CHILD_INHERITS_STDERR = 1024, G_SPAWN_STDIN_FROM_DEV_NULL = 2048, }
_GStringChunk :: rawptr
GStringChunk :: _GStringChunk
_GStrvBuilder :: rawptr
GStrvBuilder :: _GStrvBuilder
GTestCase :: rawptr
GTestSuite :: rawptr
GTestFunc :: #type proc "c" ()
GTestDataFunc :: #type proc "c" (user_data: gconstpointer)
GTestFixtureFunc :: #type proc "c" (fixture: gpointer, user_data: gconstpointer)
GTestTrapFlags :: enum u32 {G_TEST_TRAP_DEFAULT = 0, G_TEST_TRAP_SILENCE_STDOUT = 128, G_TEST_TRAP_SILENCE_STDERR = 256, G_TEST_TRAP_INHERIT_STDIN = 512, }
GTestSubprocessFlags :: enum u32 {G_TEST_SUBPROCESS_DEFAULT = 0, G_TEST_SUBPROCESS_INHERIT_STDIN = 1, G_TEST_SUBPROCESS_INHERIT_STDOUT = 2, G_TEST_SUBPROCESS_INHERIT_STDERR = 4, }
GTestConfig :: struct {
    test_initialized: gboolean,
    test_quick: gboolean,
    test_perf: gboolean,
    test_verbose: gboolean,
    test_quiet: gboolean,
    test_undefined: gboolean,
}
GTestResult :: enum u32 {G_TEST_RUN_SUCCESS = 0, G_TEST_RUN_SKIPPED = 1, G_TEST_RUN_FAILURE = 2, G_TEST_RUN_INCOMPLETE = 3, }
GTestLogType :: enum u32 {G_TEST_LOG_NONE = 0, G_TEST_LOG_ERROR = 1, G_TEST_LOG_START_BINARY = 2, G_TEST_LOG_LIST_CASE = 3, G_TEST_LOG_SKIP_CASE = 4, G_TEST_LOG_START_CASE = 5, G_TEST_LOG_STOP_CASE = 6, G_TEST_LOG_MIN_RESULT = 7, G_TEST_LOG_MAX_RESULT = 8, G_TEST_LOG_MESSAGE = 9, G_TEST_LOG_START_SUITE = 10, G_TEST_LOG_STOP_SUITE = 11, }
GTestLogMsg :: struct {
    log_type: GTestLogType,
    n_strings: guint,
    strings: [^]cstring,
    n_nums: guint,
    nums: [^][16]byte,
}
GTestLogBuffer :: struct {
    data: ^GString,
    msgs: [^]GSList,
}
GTestLogFatalFunc :: #type proc "c" (log_domain: cstring, log_level: GLogLevelFlags, message: cstring, user_data: gpointer) -> gboolean
GTestFileType :: enum u32 {G_TEST_DIST = 0, G_TEST_BUILT = 1, }
_GThreadPool :: struct {
    func: GFunc,
    user_data: gpointer,
    exclusive: gboolean,
}
GThreadPool :: _GThreadPool
_GTimer :: rawptr
GTimer :: _GTimer
_GTrashStack :: struct {
    next: ^GTrashStack,
}
GTrashStack :: _GTrashStack
_GTree :: rawptr
GTree :: _GTree
_GTreeNode :: rawptr
GTreeNode :: _GTreeNode
GTraverseFunc :: #type proc "c" (key: gpointer, value: gpointer, data: gpointer) -> gboolean
GTraverseNodeFunc :: #type proc "c" (node: ^GTreeNode, data: gpointer) -> gboolean
_GUri :: rawptr
GUri :: _GUri
GUriFlags :: enum u32 {G_URI_FLAGS_NONE = 0, G_URI_FLAGS_PARSE_RELAXED = 1, G_URI_FLAGS_HAS_PASSWORD = 2, G_URI_FLAGS_HAS_AUTH_PARAMS = 4, G_URI_FLAGS_ENCODED = 8, G_URI_FLAGS_NON_DNS = 16, G_URI_FLAGS_ENCODED_QUERY = 32, G_URI_FLAGS_ENCODED_PATH = 64, G_URI_FLAGS_ENCODED_FRAGMENT = 128, G_URI_FLAGS_SCHEME_NORMALIZE = 256, }
GUriHideFlags :: enum u32 {G_URI_HIDE_NONE = 0, G_URI_HIDE_USERINFO = 1, G_URI_HIDE_PASSWORD = 2, G_URI_HIDE_AUTH_PARAMS = 4, G_URI_HIDE_QUERY = 8, G_URI_HIDE_FRAGMENT = 16, }
GUriParamsFlags :: enum u32 {G_URI_PARAMS_NONE = 0, G_URI_PARAMS_CASE_INSENSITIVE = 1, G_URI_PARAMS_WWW_FORM = 2, G_URI_PARAMS_PARSE_RELAXED = 4, }
_GUriParamsIter :: struct {
    dummy0: gint,
    dummy1: gpointer,
    dummy2: gpointer,
    dummy3: [256]guint8,
}
GUriParamsIter :: _GUriParamsIter
GUriError :: enum u32 {G_URI_ERROR_FAILED = 0, G_URI_ERROR_BAD_SCHEME = 1, G_URI_ERROR_BAD_USER = 2, G_URI_ERROR_BAD_PASSWORD = 3, G_URI_ERROR_BAD_AUTH_PARAMS = 4, G_URI_ERROR_BAD_HOST = 5, G_URI_ERROR_BAD_PORT = 6, G_URI_ERROR_BAD_PATH = 7, G_URI_ERROR_BAD_QUERY = 8, G_URI_ERROR_BAD_FRAGMENT = 9, }
_GAllocator :: rawptr
GAllocator :: _GAllocator
_GMemChunk :: rawptr
GMemChunk :: _GMemChunk
_GCache :: rawptr
GCache :: _GCache
GCacheNewFunc :: #type proc "c" (key: gpointer) -> gpointer
GCacheDupFunc :: #type proc "c" (value: gpointer) -> gpointer
GCacheDestroyFunc :: #type proc "c" (value: gpointer)
GCompletionFunc :: #type proc "c" (item: gpointer) -> cstring
GCompletionStrncmpFunc :: #type proc "c" (s1: cstring, s2: cstring, n: gsize) -> gint
_GCompletion :: struct {
    items: [^]GList,
    func: GCompletionFunc,
    prefix: cstring,
    cache: ^GList,
    strncmp_func: GCompletionStrncmpFunc,
}
GCompletion :: _GCompletion
_GRelation :: rawptr
GRelation :: _GRelation
_GTuples :: struct {
    len: guint,
}
GTuples :: _GTuples
mutex_new_func_ptr_anon_26 :: #type proc "c" () -> ^GMutex
mutex_lock_func_ptr_anon_27 :: #type proc "c" (mutex: ^GMutex)
mutex_trylock_func_ptr_anon_28 :: #type proc "c" (mutex: ^GMutex) -> gboolean
mutex_unlock_func_ptr_anon_29 :: #type proc "c" (mutex: ^GMutex)
mutex_free_func_ptr_anon_30 :: #type proc "c" (mutex: ^GMutex)
cond_new_func_ptr_anon_31 :: #type proc "c" () -> ^GCond
cond_signal_func_ptr_anon_32 :: #type proc "c" (cond: ^GCond)
cond_broadcast_func_ptr_anon_33 :: #type proc "c" (cond: ^GCond)
cond_wait_func_ptr_anon_34 :: #type proc "c" (cond: ^GCond, mutex: ^GMutex)
cond_timed_wait_func_ptr_anon_35 :: #type proc "c" (cond: ^GCond, mutex: ^GMutex, end_time: ^GTimeVal) -> gboolean
cond_free_func_ptr_anon_36 :: #type proc "c" (cond: ^GCond)
private_new_func_ptr_anon_37 :: #type proc "c" (destructor: GDestroyNotify) -> ^GPrivate
private_get_func_ptr_anon_38 :: #type proc "c" (private_key: ^GPrivate) -> gpointer
private_set_func_ptr_anon_39 :: #type proc "c" (private_key: ^GPrivate, data: gpointer)
thread_create_func_ptr_anon_40 :: #type proc "c" (func: GThreadFunc, data: gpointer, stack_size: gulong, joinable: gboolean, bound: gboolean, priority: GThreadPriority, thread: gpointer, error: ^^GError)
thread_yield_func_ptr_anon_41 :: #type proc "c" ()
thread_join_func_ptr_anon_42 :: #type proc "c" (thread: gpointer)
thread_exit_func_ptr_anon_43 :: #type proc "c" ()
thread_set_priority_func_ptr_anon_44 :: #type proc "c" (thread: gpointer, priority: GThreadPriority)
thread_self_func_ptr_anon_45 :: #type proc "c" (thread: gpointer)
thread_equal_func_ptr_anon_46 :: #type proc "c" (thread1: gpointer, thread2: gpointer) -> gboolean
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
GThreadFunctions :: _GThreadFunctions
GStaticMutex :: struct {
    mutex: ^GMutex,
    unused: posix.pthread_mutex_t,
}
unused_union_anon_47 :: struct #raw_union {owner: posix.pthread_t, dummy: gdouble, }
_GStaticRecMutex :: struct {
    mutex: GStaticMutex,
    depth: guint,
    unused: unused_union_anon_47,
}
GStaticRecMutex :: _GStaticRecMutex
_GStaticRWLock :: struct {
    mutex: GStaticMutex,
    read_cond: ^GCond,
    write_cond: ^GCond,
    read_counter: guint,
    have_writer: gboolean,
    want_to_read: guint,
    want_to_write: guint,
}
GStaticRWLock :: _GStaticRWLock
_GStaticPrivate :: struct {
    index: guint,
}
GStaticPrivate :: _GStaticPrivate
GAsyncQueue_autoptr :: ^GAsyncQueue
GAsyncQueue_listautoptr :: ^GList
GAsyncQueue_slistautoptr :: ^GSList
GAsyncQueue_queueautoptr :: ^GQueue
GBookmarkFile_autoptr :: ^GBookmarkFile
GBookmarkFile_listautoptr :: ^GList
GBookmarkFile_slistautoptr :: ^GSList
GBookmarkFile_queueautoptr :: ^GQueue
GBytes_autoptr :: ^GBytes
GBytes_listautoptr :: ^GList
GBytes_slistautoptr :: ^GSList
GBytes_queueautoptr :: ^GQueue
GChecksum_autoptr :: ^GChecksum
GChecksum_listautoptr :: ^GList
GChecksum_slistautoptr :: ^GSList
GChecksum_queueautoptr :: ^GQueue
GDateTime_autoptr :: ^GDateTime
GDateTime_listautoptr :: ^GList
GDateTime_slistautoptr :: ^GSList
GDateTime_queueautoptr :: ^GQueue
GDate_autoptr :: ^GDate
GDate_listautoptr :: ^GList
GDate_slistautoptr :: ^GSList
GDate_queueautoptr :: ^GQueue
GDir_autoptr :: ^GDir
GDir_listautoptr :: ^GList
GDir_slistautoptr :: ^GSList
GDir_queueautoptr :: ^GQueue
GError_autoptr :: ^GError
GError_listautoptr :: ^GList
GError_slistautoptr :: ^GSList
GError_queueautoptr :: ^GQueue
GHashTable_autoptr :: ^GHashTable
GHashTable_listautoptr :: ^GList
GHashTable_slistautoptr :: ^GSList
GHashTable_queueautoptr :: ^GQueue
GHmac_autoptr :: ^GHmac
GHmac_listautoptr :: ^GList
GHmac_slistautoptr :: ^GSList
GHmac_queueautoptr :: ^GQueue
GIOChannel_autoptr :: rawptr
GIOChannel_listautoptr :: ^GList
GIOChannel_slistautoptr :: ^GSList
GIOChannel_queueautoptr :: ^GQueue
GKeyFile_autoptr :: ^GKeyFile
GKeyFile_listautoptr :: ^GList
GKeyFile_slistautoptr :: ^GSList
GKeyFile_queueautoptr :: ^GQueue
GList_autoptr :: ^GList
GList_listautoptr :: ^GList
GList_slistautoptr :: ^GSList
GList_queueautoptr :: ^GQueue
GArray_autoptr :: ^GArray
GArray_listautoptr :: ^GList
GArray_slistautoptr :: ^GSList
GArray_queueautoptr :: ^GQueue
GPtrArray_autoptr :: ^GPtrArray
GPtrArray_listautoptr :: ^GList
GPtrArray_slistautoptr :: ^GSList
GPtrArray_queueautoptr :: ^GQueue
GByteArray_autoptr :: ^GByteArray
GByteArray_listautoptr :: ^GList
GByteArray_slistautoptr :: ^GSList
GByteArray_queueautoptr :: ^GQueue
GMainContext_autoptr :: ^GMainContext
GMainContext_listautoptr :: ^GList
GMainContext_slistautoptr :: ^GSList
GMainContext_queueautoptr :: ^GQueue
GMainContextPusher_autoptr :: ^GMainContextPusher
GMainContextPusher_listautoptr :: ^GList
GMainContextPusher_slistautoptr :: ^GSList
GMainContextPusher_queueautoptr :: ^GQueue
GMainLoop_autoptr :: ^GMainLoop
GMainLoop_listautoptr :: ^GList
GMainLoop_slistautoptr :: ^GSList
GMainLoop_queueautoptr :: ^GQueue
GSource_autoptr :: ^GSource
GSource_listautoptr :: ^GList
GSource_slistautoptr :: ^GSList
GSource_queueautoptr :: ^GQueue
GMappedFile_autoptr :: ^GMappedFile
GMappedFile_listautoptr :: ^GList
GMappedFile_slistautoptr :: ^GSList
GMappedFile_queueautoptr :: ^GQueue
GMarkupParseContext_autoptr :: ^GMarkupParseContext
GMarkupParseContext_listautoptr :: ^GList
GMarkupParseContext_slistautoptr :: ^GSList
GMarkupParseContext_queueautoptr :: ^GQueue
GNode_autoptr :: ^GNode
GNode_listautoptr :: ^GList
GNode_slistautoptr :: ^GSList
GNode_queueautoptr :: ^GQueue
GOptionContext_autoptr :: ^GOptionContext
GOptionContext_listautoptr :: ^GList
GOptionContext_slistautoptr :: ^GSList
GOptionContext_queueautoptr :: ^GQueue
GOptionGroup_autoptr :: ^GOptionGroup
GOptionGroup_listautoptr :: ^GList
GOptionGroup_slistautoptr :: ^GSList
GOptionGroup_queueautoptr :: ^GQueue
GPatternSpec_autoptr :: ^GPatternSpec
GPatternSpec_listautoptr :: ^GList
GPatternSpec_slistautoptr :: ^GSList
GPatternSpec_queueautoptr :: ^GQueue
GQueue_autoptr :: ^GQueue
GQueue_listautoptr :: ^GList
GQueue_slistautoptr :: ^GSList
GQueue_queueautoptr :: ^GQueue
GRand_autoptr :: ^GRand
GRand_listautoptr :: ^GList
GRand_slistautoptr :: ^GSList
GRand_queueautoptr :: ^GQueue
GRegex_autoptr :: ^GRegex
GRegex_listautoptr :: ^GList
GRegex_slistautoptr :: ^GSList
GRegex_queueautoptr :: ^GQueue
GMatchInfo_autoptr :: ^GMatchInfo
GMatchInfo_listautoptr :: ^GList
GMatchInfo_slistautoptr :: ^GSList
GMatchInfo_queueautoptr :: ^GQueue
GScanner_autoptr :: ^GScanner
GScanner_listautoptr :: ^GList
GScanner_slistautoptr :: ^GSList
GScanner_queueautoptr :: ^GQueue
GSequence_autoptr :: ^GSequence
GSequence_listautoptr :: ^GList
GSequence_slistautoptr :: ^GSList
GSequence_queueautoptr :: ^GQueue
GSList_autoptr :: ^GSList
GSList_listautoptr :: ^GList
GSList_slistautoptr :: ^GSList
GSList_queueautoptr :: ^GQueue
GString_autoptr :: ^GString
GString_listautoptr :: ^GList
GString_slistautoptr :: ^GSList
GString_queueautoptr :: ^GQueue
GStringChunk_autoptr :: ^GStringChunk
GStringChunk_listautoptr :: ^GList
GStringChunk_slistautoptr :: ^GSList
GStringChunk_queueautoptr :: ^GQueue
GStrvBuilder_autoptr :: ^GStrvBuilder
GStrvBuilder_listautoptr :: ^GList
GStrvBuilder_slistautoptr :: ^GSList
GStrvBuilder_queueautoptr :: ^GQueue
GThread_autoptr :: ^GThread
GThread_listautoptr :: ^GList
GThread_slistautoptr :: ^GSList
GThread_queueautoptr :: ^GQueue
GMutexLocker_autoptr :: ^GMutexLocker
GMutexLocker_listautoptr :: ^GList
GMutexLocker_slistautoptr :: ^GSList
GMutexLocker_queueautoptr :: ^GQueue
GRecMutexLocker_autoptr :: ^GRecMutexLocker
GRecMutexLocker_listautoptr :: ^GList
GRecMutexLocker_slistautoptr :: ^GSList
GRecMutexLocker_queueautoptr :: ^GQueue
GRWLockWriterLocker_autoptr :: ^GRWLockWriterLocker
GRWLockWriterLocker_listautoptr :: ^GList
GRWLockWriterLocker_slistautoptr :: ^GSList
GRWLockWriterLocker_queueautoptr :: ^GQueue
GRWLockReaderLocker_autoptr :: ^GRWLockReaderLocker
GRWLockReaderLocker_listautoptr :: ^GList
GRWLockReaderLocker_slistautoptr :: ^GSList
GRWLockReaderLocker_queueautoptr :: ^GQueue
GTimer_autoptr :: ^GTimer
GTimer_listautoptr :: ^GList
GTimer_slistautoptr :: ^GSList
GTimer_queueautoptr :: ^GQueue
GTimeZone_autoptr :: ^GTimeZone
GTimeZone_listautoptr :: ^GList
GTimeZone_slistautoptr :: ^GSList
GTimeZone_queueautoptr :: ^GQueue
GTree_autoptr :: ^GTree
GTree_listautoptr :: ^GList
GTree_slistautoptr :: ^GSList
GTree_queueautoptr :: ^GQueue
GVariant_autoptr :: ^GVariant
GVariant_listautoptr :: ^GList
GVariant_slistautoptr :: ^GSList
GVariant_queueautoptr :: ^GQueue
GVariantBuilder_autoptr :: ^GVariantBuilder
GVariantBuilder_listautoptr :: ^GList
GVariantBuilder_slistautoptr :: ^GSList
GVariantBuilder_queueautoptr :: ^GQueue
GVariantIter_autoptr :: ^GVariantIter
GVariantIter_listautoptr :: ^GList
GVariantIter_slistautoptr :: ^GSList
GVariantIter_queueautoptr :: ^GQueue
GVariantDict_autoptr :: ^GVariantDict
GVariantDict_listautoptr :: ^GList
GVariantDict_slistautoptr :: ^GSList
GVariantDict_queueautoptr :: ^GQueue
GVariantType_autoptr :: ^GVariantType
GVariantType_listautoptr :: ^GList
GVariantType_slistautoptr :: ^GSList
GVariantType_queueautoptr :: ^GQueue
GRefString_autoptr :: ^GRefString
GRefString_listautoptr :: ^GList
GRefString_slistautoptr :: ^GSList
GRefString_queueautoptr :: ^GQueue
GUri_autoptr :: ^GUri
GUri_listautoptr :: ^GList
GUri_slistautoptr :: ^GSList
GUri_queueautoptr :: ^GQueue
GPathBuf_autoptr :: ^GPathBuf
GPathBuf_listautoptr :: ^GList
GPathBuf_slistautoptr :: ^GSList
GPathBuf_queueautoptr :: ^GQueue

foreign import glib_runic "system:glib-2.0"

@(default_calling_convention = "c")
foreign glib_runic {
    @(link_name = "g_array_new")
    g_array_new :: proc(zero_terminated: gboolean, clear_: gboolean, element_size: guint) -> ^GArray ---

    @(link_name = "g_array_new_take")
    g_array_new_take :: proc(data: gpointer, len: gsize, clear: gboolean, element_size: gsize) -> ^GArray ---

    @(link_name = "g_array_new_take_zero_terminated")
    g_array_new_take_zero_terminated :: proc(data: gpointer, clear: gboolean, element_size: gsize) -> ^GArray ---

    @(link_name = "g_array_steal")
    g_array_steal :: proc(array: ^GArray, len: ^gsize) -> gpointer ---

    @(link_name = "g_array_sized_new")
    g_array_sized_new :: proc(zero_terminated: gboolean, clear_: gboolean, element_size: guint, reserved_size: guint) -> ^GArray ---

    @(link_name = "g_array_copy")
    g_array_copy :: proc(array: ^GArray) -> ^GArray ---

    @(link_name = "g_array_free")
    g_array_free :: proc(array: ^GArray, free_segment: gboolean) -> cstring ---

    @(link_name = "g_array_ref")
    g_array_ref :: proc(array: ^GArray) -> ^GArray ---

    @(link_name = "g_array_unref")
    g_array_unref :: proc(array: ^GArray) ---

    @(link_name = "g_array_get_element_size")
    g_array_get_element_size :: proc(array: ^GArray) -> guint ---

    @(link_name = "g_array_append_vals")
    g_array_append_vals :: proc(array: ^GArray, data: gconstpointer, len: guint) -> ^GArray ---

    @(link_name = "g_array_prepend_vals")
    g_array_prepend_vals :: proc(array: ^GArray, data: gconstpointer, len: guint) -> ^GArray ---

    @(link_name = "g_array_insert_vals")
    g_array_insert_vals :: proc(array: ^GArray, index_: guint, data: gconstpointer, len: guint) -> ^GArray ---

    @(link_name = "g_array_set_size")
    g_array_set_size :: proc(array: ^GArray, length: guint) -> ^GArray ---

    @(link_name = "g_array_remove_index")
    g_array_remove_index :: proc(array: ^GArray, index_: guint) -> ^GArray ---

    @(link_name = "g_array_remove_index_fast")
    g_array_remove_index_fast :: proc(array: ^GArray, index_: guint) -> ^GArray ---

    @(link_name = "g_array_remove_range")
    g_array_remove_range :: proc(array: ^GArray, index_: guint, length: guint) -> ^GArray ---

    @(link_name = "g_array_sort")
    g_array_sort :: proc(array: ^GArray, compare_func: GCompareFunc) ---

    @(link_name = "g_array_sort_with_data")
    g_array_sort_with_data :: proc(array: ^GArray, compare_func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_array_binary_search")
    g_array_binary_search :: proc(array: ^GArray, target: gconstpointer, compare_func: GCompareFunc, out_match_index: ^guint) -> gboolean ---

    @(link_name = "g_array_set_clear_func")
    g_array_set_clear_func :: proc(array: ^GArray, clear_func: GDestroyNotify) ---

    @(link_name = "g_ptr_array_new")
    g_ptr_array_new :: proc() -> ^GPtrArray ---

    @(link_name = "g_ptr_array_new_with_free_func")
    g_ptr_array_new_with_free_func :: proc(element_free_func: GDestroyNotify) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_new_take")
    g_ptr_array_new_take :: proc(data: ^gpointer, len: gsize, element_free_func: GDestroyNotify) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_new_from_array")
    g_ptr_array_new_from_array :: proc(data: ^gpointer, len: gsize, copy_func: GCopyFunc, copy_func_user_data: gpointer, element_free_func: GDestroyNotify) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_steal")
    g_ptr_array_steal :: proc(array: ^GPtrArray, len: ^gsize) -> ^gpointer ---

    @(link_name = "g_ptr_array_copy")
    g_ptr_array_copy :: proc(array: ^GPtrArray, func: GCopyFunc, user_data: gpointer) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_sized_new")
    g_ptr_array_sized_new :: proc(reserved_size: guint) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_new_full")
    g_ptr_array_new_full :: proc(reserved_size: guint, element_free_func: GDestroyNotify) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_new_null_terminated")
    g_ptr_array_new_null_terminated :: proc(reserved_size: guint, element_free_func: GDestroyNotify, null_terminated: gboolean) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_new_take_null_terminated")
    g_ptr_array_new_take_null_terminated :: proc(data: ^gpointer, element_free_func: GDestroyNotify) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_new_from_null_terminated_array")
    g_ptr_array_new_from_null_terminated_array :: proc(data: ^gpointer, copy_func: GCopyFunc, copy_func_user_data: gpointer, element_free_func: GDestroyNotify) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_free")
    g_ptr_array_free :: proc(array: ^GPtrArray, free_segment: gboolean) -> ^gpointer ---

    @(link_name = "g_ptr_array_ref")
    g_ptr_array_ref :: proc(array: ^GPtrArray) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_unref")
    g_ptr_array_unref :: proc(array: ^GPtrArray) ---

    @(link_name = "g_ptr_array_set_free_func")
    g_ptr_array_set_free_func :: proc(array: ^GPtrArray, element_free_func: GDestroyNotify) ---

    @(link_name = "g_ptr_array_set_size")
    g_ptr_array_set_size :: proc(array: ^GPtrArray, length: gint) ---

    @(link_name = "g_ptr_array_remove_index")
    g_ptr_array_remove_index :: proc(array: ^GPtrArray, index_: guint) -> gpointer ---

    @(link_name = "g_ptr_array_remove_index_fast")
    g_ptr_array_remove_index_fast :: proc(array: ^GPtrArray, index_: guint) -> gpointer ---

    @(link_name = "g_ptr_array_steal_index")
    g_ptr_array_steal_index :: proc(array: ^GPtrArray, index_: guint) -> gpointer ---

    @(link_name = "g_ptr_array_steal_index_fast")
    g_ptr_array_steal_index_fast :: proc(array: ^GPtrArray, index_: guint) -> gpointer ---

    @(link_name = "g_ptr_array_remove")
    g_ptr_array_remove :: proc(array: ^GPtrArray, data: gpointer) -> gboolean ---

    @(link_name = "g_ptr_array_remove_fast")
    g_ptr_array_remove_fast :: proc(array: ^GPtrArray, data: gpointer) -> gboolean ---

    @(link_name = "g_ptr_array_remove_range")
    g_ptr_array_remove_range :: proc(array: ^GPtrArray, index_: guint, length: guint) -> ^GPtrArray ---

    @(link_name = "g_ptr_array_add")
    g_ptr_array_add :: proc(array: ^GPtrArray, data: gpointer) ---

    @(link_name = "g_ptr_array_extend")
    g_ptr_array_extend :: proc(array_to_extend: ^GPtrArray, array: ^GPtrArray, func: GCopyFunc, user_data: gpointer) ---

    @(link_name = "g_ptr_array_extend_and_steal")
    g_ptr_array_extend_and_steal :: proc(array_to_extend: ^GPtrArray, array: ^GPtrArray) ---

    @(link_name = "g_ptr_array_insert")
    g_ptr_array_insert :: proc(array: ^GPtrArray, index_: gint, data: gpointer) ---

    @(link_name = "g_ptr_array_sort")
    g_ptr_array_sort :: proc(array: ^GPtrArray, compare_func: GCompareFunc) ---

    @(link_name = "g_ptr_array_sort_with_data")
    g_ptr_array_sort_with_data :: proc(array: ^GPtrArray, compare_func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_ptr_array_sort_values")
    g_ptr_array_sort_values :: proc(array: ^GPtrArray, compare_func: GCompareFunc) ---

    @(link_name = "g_ptr_array_sort_values_with_data")
    g_ptr_array_sort_values_with_data :: proc(array: ^GPtrArray, compare_func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_ptr_array_foreach")
    g_ptr_array_foreach :: proc(array: ^GPtrArray, func: GFunc, user_data: gpointer) ---

    @(link_name = "g_ptr_array_find")
    g_ptr_array_find :: proc(haystack: ^GPtrArray, needle: gconstpointer, index_: ^guint) -> gboolean ---

    @(link_name = "g_ptr_array_find_with_equal_func")
    g_ptr_array_find_with_equal_func :: proc(haystack: ^GPtrArray, needle: gconstpointer, equal_func: GEqualFunc, index_: ^guint) -> gboolean ---

    @(link_name = "g_ptr_array_is_null_terminated")
    g_ptr_array_is_null_terminated :: proc(array: ^GPtrArray) -> gboolean ---

    @(link_name = "g_byte_array_new")
    g_byte_array_new :: proc() -> ^GByteArray ---

    @(link_name = "g_byte_array_new_take")
    g_byte_array_new_take :: proc(data: ^guint8, len: gsize) -> ^GByteArray ---

    @(link_name = "g_byte_array_steal")
    g_byte_array_steal :: proc(array: ^GByteArray, len: ^gsize) -> ^guint8 ---

    @(link_name = "g_byte_array_sized_new")
    g_byte_array_sized_new :: proc(reserved_size: guint) -> ^GByteArray ---

    @(link_name = "g_byte_array_free")
    g_byte_array_free :: proc(array: ^GByteArray, free_segment: gboolean) -> ^guint8 ---

    @(link_name = "g_byte_array_free_to_bytes")
    g_byte_array_free_to_bytes :: proc(array: ^GByteArray) -> ^GBytes ---

    @(link_name = "g_byte_array_ref")
    g_byte_array_ref :: proc(array: ^GByteArray) -> ^GByteArray ---

    @(link_name = "g_byte_array_unref")
    g_byte_array_unref :: proc(array: ^GByteArray) ---

    @(link_name = "g_byte_array_append")
    g_byte_array_append :: proc(array: ^GByteArray, data: ^guint8, len: guint) -> ^GByteArray ---

    @(link_name = "g_byte_array_prepend")
    g_byte_array_prepend :: proc(array: ^GByteArray, data: ^guint8, len: guint) -> ^GByteArray ---

    @(link_name = "g_byte_array_set_size")
    g_byte_array_set_size :: proc(array: ^GByteArray, length: guint) -> ^GByteArray ---

    @(link_name = "g_byte_array_remove_index")
    g_byte_array_remove_index :: proc(array: ^GByteArray, index_: guint) -> ^GByteArray ---

    @(link_name = "g_byte_array_remove_index_fast")
    g_byte_array_remove_index_fast :: proc(array: ^GByteArray, index_: guint) -> ^GByteArray ---

    @(link_name = "g_byte_array_remove_range")
    g_byte_array_remove_range :: proc(array: ^GByteArray, index_: guint, length: guint) -> ^GByteArray ---

    @(link_name = "g_byte_array_sort")
    g_byte_array_sort :: proc(array: ^GByteArray, compare_func: GCompareFunc) ---

    @(link_name = "g_byte_array_sort_with_data")
    g_byte_array_sort_with_data :: proc(array: ^GByteArray, compare_func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_atomic_int_get")
    g_atomic_int_get :: proc(atomic: ^gint) -> gint ---

    @(link_name = "g_atomic_int_set")
    g_atomic_int_set :: proc(atomic: ^gint, newval: gint) ---

    @(link_name = "g_atomic_int_inc")
    g_atomic_int_inc :: proc(atomic: ^gint) ---

    @(link_name = "g_atomic_int_dec_and_test")
    g_atomic_int_dec_and_test :: proc(atomic: ^gint) -> gboolean ---

    @(link_name = "g_atomic_int_compare_and_exchange")
    g_atomic_int_compare_and_exchange :: proc(atomic: ^gint, oldval: gint, newval: gint) -> gboolean ---

    @(link_name = "g_atomic_int_compare_and_exchange_full")
    g_atomic_int_compare_and_exchange_full :: proc(atomic: ^gint, oldval: gint, newval: gint, preval: ^gint) -> gboolean ---

    @(link_name = "g_atomic_int_exchange")
    g_atomic_int_exchange :: proc(atomic: ^gint, newval: gint) -> gint ---

    @(link_name = "g_atomic_int_add")
    g_atomic_int_add :: proc(atomic: ^gint, val: gint) -> gint ---

    @(link_name = "g_atomic_int_and")
    g_atomic_int_and :: proc(atomic: ^guint, val: guint) -> guint ---

    @(link_name = "g_atomic_int_or")
    g_atomic_int_or :: proc(atomic: ^guint, val: guint) -> guint ---

    @(link_name = "g_atomic_int_xor")
    g_atomic_int_xor :: proc(atomic: ^guint, val: guint) -> guint ---

    @(link_name = "g_atomic_pointer_get")
    g_atomic_pointer_get :: proc(atomic: rawptr) -> gpointer ---

    @(link_name = "g_atomic_pointer_set")
    g_atomic_pointer_set :: proc(atomic: rawptr, newval: gpointer) ---

    @(link_name = "g_atomic_pointer_compare_and_exchange")
    g_atomic_pointer_compare_and_exchange :: proc(atomic: rawptr, oldval: gpointer, newval: gpointer) -> gboolean ---

    @(link_name = "g_atomic_pointer_compare_and_exchange_full")
    g_atomic_pointer_compare_and_exchange_full :: proc(atomic: rawptr, oldval: gpointer, newval: gpointer, preval: rawptr) -> gboolean ---

    @(link_name = "g_atomic_pointer_exchange")
    g_atomic_pointer_exchange :: proc(atomic: rawptr, newval: gpointer) -> gpointer ---

    @(link_name = "g_atomic_pointer_add")
    g_atomic_pointer_add :: proc(atomic: rawptr, val: gssize) -> gintptr ---

    @(link_name = "g_atomic_pointer_and")
    g_atomic_pointer_and :: proc(atomic: rawptr, val: gsize) -> guintptr ---

    @(link_name = "g_atomic_pointer_or")
    g_atomic_pointer_or :: proc(atomic: rawptr, val: gsize) -> guintptr ---

    @(link_name = "g_atomic_pointer_xor")
    g_atomic_pointer_xor :: proc(atomic: rawptr, val: gsize) -> guintptr ---

    @(link_name = "g_atomic_int_exchange_and_add")
    g_atomic_int_exchange_and_add :: proc(atomic: ^gint, val: gint) -> gint ---

    @(link_name = "g_quark_try_string")
    g_quark_try_string :: proc(string_p: cstring) -> GQuark ---

    @(link_name = "g_quark_from_static_string")
    g_quark_from_static_string :: proc(string_p: cstring) -> GQuark ---

    @(link_name = "g_quark_from_string")
    g_quark_from_string :: proc(string_p: cstring) -> GQuark ---

    @(link_name = "g_quark_to_string")
    g_quark_to_string :: proc(quark: GQuark) -> cstring ---

    @(link_name = "g_intern_string")
    g_intern_string :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_intern_static_string")
    g_intern_static_string :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_error_domain_register_static")
    g_error_domain_register_static :: proc(error_type_name: cstring, error_type_private_size: gsize, error_type_init: GErrorInitFunc, error_type_copy: GErrorCopyFunc, error_type_clear: GErrorClearFunc) -> GQuark ---

    @(link_name = "g_error_domain_register")
    g_error_domain_register :: proc(error_type_name: cstring, error_type_private_size: gsize, error_type_init: GErrorInitFunc, error_type_copy: GErrorCopyFunc, error_type_clear: GErrorClearFunc) -> GQuark ---

    @(link_name = "g_error_new")
    g_error_new :: proc(domain: GQuark, code: gint, format: cstring, #c_vararg var_args: ..any) -> ^GError ---

    @(link_name = "g_error_new_literal")
    g_error_new_literal :: proc(domain: GQuark, code: gint, message: cstring) -> ^GError ---

    @(link_name = "g_error_new_valist")
    g_error_new_valist :: proc(domain: GQuark, code: gint, format: cstring, #c_vararg var_args: ..any) -> ^GError ---

    @(link_name = "g_error_free")
    g_error_free :: proc(error: ^GError) ---

    @(link_name = "g_error_copy")
    g_error_copy :: proc(error: ^GError) -> ^GError ---

    @(link_name = "g_error_matches")
    g_error_matches :: proc(error: ^GError, domain: GQuark, code: gint) -> gboolean ---

    @(link_name = "g_set_error")
    g_set_error :: proc(err: ^^GError, domain: GQuark, code: gint, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_set_error_literal")
    g_set_error_literal :: proc(err: ^^GError, domain: GQuark, code: gint, message: cstring) ---

    @(link_name = "g_propagate_error")
    g_propagate_error :: proc(dest: ^^GError, src: ^GError) ---

    @(link_name = "g_clear_error")
    g_clear_error :: proc(err: ^^GError) ---

    @(link_name = "g_prefix_error")
    g_prefix_error :: proc(err: ^^GError, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_prefix_error_literal")
    g_prefix_error_literal :: proc(err: ^^GError, prefix: cstring) ---

    @(link_name = "g_propagate_prefixed_error")
    g_propagate_prefixed_error :: proc(dest: ^^GError, src: ^GError, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_get_user_name")
    g_get_user_name :: proc() -> cstring ---

    @(link_name = "g_get_real_name")
    g_get_real_name :: proc() -> cstring ---

    @(link_name = "g_get_home_dir")
    g_get_home_dir :: proc() -> cstring ---

    @(link_name = "g_get_tmp_dir")
    g_get_tmp_dir :: proc() -> cstring ---

    @(link_name = "g_get_host_name")
    g_get_host_name :: proc() -> cstring ---

    @(link_name = "g_get_prgname")
    g_get_prgname :: proc() -> cstring ---

    @(link_name = "g_set_prgname")
    g_set_prgname :: proc(prgname: cstring) ---

    @(link_name = "g_get_application_name")
    g_get_application_name :: proc() -> cstring ---

    @(link_name = "g_set_application_name")
    g_set_application_name :: proc(application_name: cstring) ---

    @(link_name = "g_get_os_info")
    g_get_os_info :: proc(key_name: cstring) -> cstring ---

    @(link_name = "g_reload_user_special_dirs_cache")
    g_reload_user_special_dirs_cache :: proc() ---

    @(link_name = "g_get_user_data_dir")
    g_get_user_data_dir :: proc() -> cstring ---

    @(link_name = "g_get_user_config_dir")
    g_get_user_config_dir :: proc() -> cstring ---

    @(link_name = "g_get_user_cache_dir")
    g_get_user_cache_dir :: proc() -> cstring ---

    @(link_name = "g_get_user_state_dir")
    g_get_user_state_dir :: proc() -> cstring ---

    @(link_name = "g_get_system_data_dirs")
    g_get_system_data_dirs :: proc() -> ^cstring ---

    @(link_name = "g_get_system_config_dirs")
    g_get_system_config_dirs :: proc() -> ^cstring ---

    @(link_name = "g_get_user_runtime_dir")
    g_get_user_runtime_dir :: proc() -> cstring ---

    @(link_name = "g_get_user_special_dir")
    g_get_user_special_dir :: proc(directory: GUserDirectory) -> cstring ---

    @(link_name = "g_parse_debug_string")
    g_parse_debug_string :: proc(string_p: cstring, keys: [^]GDebugKey, nkeys: guint) -> guint ---

    @(link_name = "g_snprintf")
    g_snprintf :: proc(string_p: cstring, n: gulong, format: cstring, #c_vararg var_args: ..any) -> gint ---

    @(link_name = "g_vsnprintf")
    g_vsnprintf :: proc(string_p: cstring, n: gulong, format: cstring, #c_vararg var_args: ..any) -> gint ---

    @(link_name = "g_nullify_pointer")
    g_nullify_pointer :: proc(nullify_location: ^gpointer) ---

    @(link_name = "g_format_size_full")
    g_format_size_full :: proc(size: guint64, flags: GFormatSizeFlags) -> cstring ---

    @(link_name = "g_format_size")
    g_format_size :: proc(size: guint64) -> cstring ---

    @(link_name = "g_format_size_for_display")
    g_format_size_for_display :: proc(size: goffset) -> cstring ---

    @(link_name = "g_atexit")
    g_atexit :: proc(func: GVoidFunc) ---

    @(link_name = "g_find_program_in_path")
    g_find_program_in_path :: proc(program: cstring) -> cstring ---

    @(link_name = "g_bit_nth_lsf")
    g_bit_nth_lsf :: proc(mask: gulong, nth_bit: gint) -> gint ---

    @(link_name = "g_bit_nth_msf")
    g_bit_nth_msf :: proc(mask: gulong, nth_bit: gint) -> gint ---

    @(link_name = "g_bit_storage")
    g_bit_storage :: proc(number: gulong) -> guint ---

    @(link_name = "g_thread_error_quark")
    g_thread_error_quark :: proc() -> GQuark ---

    @(link_name = "g_thread_ref")
    g_thread_ref :: proc(thread: ^GThread) -> ^GThread ---

    @(link_name = "g_thread_unref")
    g_thread_unref :: proc(thread: ^GThread) ---

    @(link_name = "g_thread_new")
    g_thread_new :: proc(name: cstring, func: GThreadFunc, data: gpointer) -> ^GThread ---

    @(link_name = "g_thread_try_new")
    g_thread_try_new :: proc(name: cstring, func: GThreadFunc, data: gpointer, error: ^^GError) -> ^GThread ---

    @(link_name = "g_thread_self")
    g_thread_self :: proc() -> ^GThread ---

    @(link_name = "g_thread_exit")
    g_thread_exit :: proc(retval: gpointer) ---

    @(link_name = "g_thread_join")
    g_thread_join :: proc(thread: ^GThread) -> gpointer ---

    @(link_name = "g_thread_yield")
    g_thread_yield :: proc() ---

    @(link_name = "g_mutex_init")
    g_mutex_init :: proc(mutex: ^GMutex) ---

    @(link_name = "g_mutex_clear")
    g_mutex_clear :: proc(mutex: ^GMutex) ---

    @(link_name = "g_mutex_lock")
    g_mutex_lock :: proc(mutex: ^GMutex) ---

    @(link_name = "g_mutex_trylock")
    g_mutex_trylock :: proc(mutex: ^GMutex) -> gboolean ---

    @(link_name = "g_mutex_unlock")
    g_mutex_unlock :: proc(mutex: ^GMutex) ---

    @(link_name = "g_rw_lock_init")
    g_rw_lock_init :: proc(rw_lock: ^GRWLock) ---

    @(link_name = "g_rw_lock_clear")
    g_rw_lock_clear :: proc(rw_lock: ^GRWLock) ---

    @(link_name = "g_rw_lock_writer_lock")
    g_rw_lock_writer_lock :: proc(rw_lock: ^GRWLock) ---

    @(link_name = "g_rw_lock_writer_trylock")
    g_rw_lock_writer_trylock :: proc(rw_lock: ^GRWLock) -> gboolean ---

    @(link_name = "g_rw_lock_writer_unlock")
    g_rw_lock_writer_unlock :: proc(rw_lock: ^GRWLock) ---

    @(link_name = "g_rw_lock_reader_lock")
    g_rw_lock_reader_lock :: proc(rw_lock: ^GRWLock) ---

    @(link_name = "g_rw_lock_reader_trylock")
    g_rw_lock_reader_trylock :: proc(rw_lock: ^GRWLock) -> gboolean ---

    @(link_name = "g_rw_lock_reader_unlock")
    g_rw_lock_reader_unlock :: proc(rw_lock: ^GRWLock) ---

    @(link_name = "g_rec_mutex_init")
    g_rec_mutex_init :: proc(rec_mutex: ^GRecMutex) ---

    @(link_name = "g_rec_mutex_clear")
    g_rec_mutex_clear :: proc(rec_mutex: ^GRecMutex) ---

    @(link_name = "g_rec_mutex_lock")
    g_rec_mutex_lock :: proc(rec_mutex: ^GRecMutex) ---

    @(link_name = "g_rec_mutex_trylock")
    g_rec_mutex_trylock :: proc(rec_mutex: ^GRecMutex) -> gboolean ---

    @(link_name = "g_rec_mutex_unlock")
    g_rec_mutex_unlock :: proc(rec_mutex: ^GRecMutex) ---

    @(link_name = "g_cond_init")
    g_cond_init :: proc(cond: ^GCond) ---

    @(link_name = "g_cond_clear")
    g_cond_clear :: proc(cond: ^GCond) ---

    @(link_name = "g_cond_wait")
    g_cond_wait :: proc(cond: ^GCond, mutex: ^GMutex) ---

    @(link_name = "g_cond_signal")
    g_cond_signal :: proc(cond: ^GCond) ---

    @(link_name = "g_cond_broadcast")
    g_cond_broadcast :: proc(cond: ^GCond) ---

    @(link_name = "g_cond_wait_until")
    g_cond_wait_until :: proc(cond: ^GCond, mutex: ^GMutex, end_time: gint64) -> gboolean ---

    @(link_name = "g_private_get")
    g_private_get :: proc(key: ^GPrivate) -> gpointer ---

    @(link_name = "g_private_set")
    g_private_set :: proc(key: ^GPrivate, value: gpointer) ---

    @(link_name = "g_private_replace")
    g_private_replace :: proc(key: ^GPrivate, value: gpointer) ---

    @(link_name = "g_once_impl")
    g_once_impl :: proc(once: ^GOnce, func: GThreadFunc, arg: gpointer) -> gpointer ---

    @(link_name = "g_once_init_enter")
    g_once_init_enter :: proc(location: rawptr) -> gboolean ---

    @(link_name = "g_once_init_leave")
    g_once_init_leave :: proc(location: rawptr, result: gsize) ---

    @(link_name = "g_once_init_enter_pointer")
    g_once_init_enter_pointer :: proc(location: rawptr) -> gboolean ---

    @(link_name = "g_once_init_leave_pointer")
    g_once_init_leave_pointer :: proc(location: rawptr, result: gpointer) ---

    @(link_name = "g_get_num_processors")
    g_get_num_processors :: proc() -> guint ---

    @(link_name = "g_async_queue_new")
    g_async_queue_new :: proc() -> ^GAsyncQueue ---

    @(link_name = "g_async_queue_new_full")
    g_async_queue_new_full :: proc(item_free_func: GDestroyNotify) -> ^GAsyncQueue ---

    @(link_name = "g_async_queue_lock")
    g_async_queue_lock :: proc(queue: ^GAsyncQueue) ---

    @(link_name = "g_async_queue_unlock")
    g_async_queue_unlock :: proc(queue: ^GAsyncQueue) ---

    @(link_name = "g_async_queue_ref")
    g_async_queue_ref :: proc(queue: ^GAsyncQueue) -> ^GAsyncQueue ---

    @(link_name = "g_async_queue_unref")
    g_async_queue_unref :: proc(queue: ^GAsyncQueue) ---

    @(link_name = "g_async_queue_ref_unlocked")
    g_async_queue_ref_unlocked :: proc(queue: ^GAsyncQueue) ---

    @(link_name = "g_async_queue_unref_and_unlock")
    g_async_queue_unref_and_unlock :: proc(queue: ^GAsyncQueue) ---

    @(link_name = "g_async_queue_push")
    g_async_queue_push :: proc(queue: ^GAsyncQueue, data: gpointer) ---

    @(link_name = "g_async_queue_push_unlocked")
    g_async_queue_push_unlocked :: proc(queue: ^GAsyncQueue, data: gpointer) ---

    @(link_name = "g_async_queue_push_sorted")
    g_async_queue_push_sorted :: proc(queue: ^GAsyncQueue, data: gpointer, func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_async_queue_push_sorted_unlocked")
    g_async_queue_push_sorted_unlocked :: proc(queue: ^GAsyncQueue, data: gpointer, func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_async_queue_pop")
    g_async_queue_pop :: proc(queue: ^GAsyncQueue) -> gpointer ---

    @(link_name = "g_async_queue_pop_unlocked")
    g_async_queue_pop_unlocked :: proc(queue: ^GAsyncQueue) -> gpointer ---

    @(link_name = "g_async_queue_try_pop")
    g_async_queue_try_pop :: proc(queue: ^GAsyncQueue) -> gpointer ---

    @(link_name = "g_async_queue_try_pop_unlocked")
    g_async_queue_try_pop_unlocked :: proc(queue: ^GAsyncQueue) -> gpointer ---

    @(link_name = "g_async_queue_timeout_pop")
    g_async_queue_timeout_pop :: proc(queue: ^GAsyncQueue, timeout: guint64) -> gpointer ---

    @(link_name = "g_async_queue_timeout_pop_unlocked")
    g_async_queue_timeout_pop_unlocked :: proc(queue: ^GAsyncQueue, timeout: guint64) -> gpointer ---

    @(link_name = "g_async_queue_length")
    g_async_queue_length :: proc(queue: ^GAsyncQueue) -> gint ---

    @(link_name = "g_async_queue_length_unlocked")
    g_async_queue_length_unlocked :: proc(queue: ^GAsyncQueue) -> gint ---

    @(link_name = "g_async_queue_sort")
    g_async_queue_sort :: proc(queue: ^GAsyncQueue, func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_async_queue_sort_unlocked")
    g_async_queue_sort_unlocked :: proc(queue: ^GAsyncQueue, func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_async_queue_remove")
    g_async_queue_remove :: proc(queue: ^GAsyncQueue, item: gpointer) -> gboolean ---

    @(link_name = "g_async_queue_remove_unlocked")
    g_async_queue_remove_unlocked :: proc(queue: ^GAsyncQueue, item: gpointer) -> gboolean ---

    @(link_name = "g_async_queue_push_front")
    g_async_queue_push_front :: proc(queue: ^GAsyncQueue, item: gpointer) ---

    @(link_name = "g_async_queue_push_front_unlocked")
    g_async_queue_push_front_unlocked :: proc(queue: ^GAsyncQueue, item: gpointer) ---

    @(link_name = "g_async_queue_timed_pop")
    g_async_queue_timed_pop :: proc(queue: ^GAsyncQueue, end_time: ^GTimeVal) -> gpointer ---

    @(link_name = "g_async_queue_timed_pop_unlocked")
    g_async_queue_timed_pop_unlocked :: proc(queue: ^GAsyncQueue, end_time: ^GTimeVal) -> gpointer ---

    @(link_name = "g_on_error_query")
    g_on_error_query :: proc(prg_name: cstring) ---

    @(link_name = "g_on_error_stack_trace")
    g_on_error_stack_trace :: proc(prg_name: cstring) ---

    @(link_name = "g_base64_encode_step")
    g_base64_encode_step :: proc(in_p: ^guchar, len: gsize, break_lines: gboolean, out: cstring, state: ^gint, save: ^gint) -> gsize ---

    @(link_name = "g_base64_encode_close")
    g_base64_encode_close :: proc(break_lines: gboolean, out: cstring, state: ^gint, save: ^gint) -> gsize ---

    @(link_name = "g_base64_encode")
    g_base64_encode :: proc(data: ^guchar, len: gsize) -> cstring ---

    @(link_name = "g_base64_decode_step")
    g_base64_decode_step :: proc(in_p: cstring, len: gsize, out: ^guchar, state: ^gint, save: ^guint) -> gsize ---

    @(link_name = "g_base64_decode")
    g_base64_decode :: proc(text: cstring, out_len: ^gsize) -> ^guchar ---

    @(link_name = "g_base64_decode_inplace")
    g_base64_decode_inplace :: proc(text: cstring, out_len: ^gsize) -> ^guchar ---

    @(link_name = "g_bit_lock")
    g_bit_lock :: proc(address: [^]gint, lock_bit: gint) ---

    @(link_name = "g_bit_trylock")
    g_bit_trylock :: proc(address: [^]gint, lock_bit: gint) -> gboolean ---

    @(link_name = "g_bit_unlock")
    g_bit_unlock :: proc(address: [^]gint, lock_bit: gint) ---

    @(link_name = "g_pointer_bit_lock")
    g_pointer_bit_lock :: proc(address: rawptr, lock_bit: gint) ---

    @(link_name = "g_pointer_bit_lock_and_get")
    g_pointer_bit_lock_and_get :: proc(address: gpointer, lock_bit: guint, out_ptr: ^guintptr) ---

    @(link_name = "g_pointer_bit_trylock")
    g_pointer_bit_trylock :: proc(address: rawptr, lock_bit: gint) -> gboolean ---

    @(link_name = "g_pointer_bit_unlock")
    g_pointer_bit_unlock :: proc(address: rawptr, lock_bit: gint) ---

    @(link_name = "g_pointer_bit_lock_mask_ptr")
    g_pointer_bit_lock_mask_ptr :: proc(ptr: gpointer, lock_bit: guint, set: gboolean, preserve_mask: guintptr, preserve_ptr: gpointer) -> gpointer ---

    @(link_name = "g_pointer_bit_unlock_and_set")
    g_pointer_bit_unlock_and_set :: proc(address: rawptr, lock_bit: guint, ptr: gpointer, preserve_mask: guintptr) ---

    @(link_name = "g_time_zone_new")
    g_time_zone_new :: proc(identifier: cstring) -> ^GTimeZone ---

    @(link_name = "g_time_zone_new_identifier")
    g_time_zone_new_identifier :: proc(identifier: cstring) -> ^GTimeZone ---

    @(link_name = "g_time_zone_new_utc")
    g_time_zone_new_utc :: proc() -> ^GTimeZone ---

    @(link_name = "g_time_zone_new_local")
    g_time_zone_new_local :: proc() -> ^GTimeZone ---

    @(link_name = "g_time_zone_new_offset")
    g_time_zone_new_offset :: proc(seconds: gint32) -> ^GTimeZone ---

    @(link_name = "g_time_zone_ref")
    g_time_zone_ref :: proc(tz: ^GTimeZone) -> ^GTimeZone ---

    @(link_name = "g_time_zone_unref")
    g_time_zone_unref :: proc(tz: ^GTimeZone) ---

    @(link_name = "g_time_zone_find_interval")
    g_time_zone_find_interval :: proc(tz: ^GTimeZone, type: GTimeType, time_: gint64) -> gint ---

    @(link_name = "g_time_zone_adjust_time")
    g_time_zone_adjust_time :: proc(tz: ^GTimeZone, type: GTimeType, time_: ^gint64) -> gint ---

    @(link_name = "g_time_zone_get_abbreviation")
    g_time_zone_get_abbreviation :: proc(tz: ^GTimeZone, interval: gint) -> cstring ---

    @(link_name = "g_time_zone_get_offset")
    g_time_zone_get_offset :: proc(tz: ^GTimeZone, interval: gint) -> gint32 ---

    @(link_name = "g_time_zone_is_dst")
    g_time_zone_is_dst :: proc(tz: ^GTimeZone, interval: gint) -> gboolean ---

    @(link_name = "g_time_zone_get_identifier")
    g_time_zone_get_identifier :: proc(tz: ^GTimeZone) -> cstring ---

    @(link_name = "g_date_time_unref")
    g_date_time_unref :: proc(datetime: ^GDateTime) ---

    @(link_name = "g_date_time_ref")
    g_date_time_ref :: proc(datetime: ^GDateTime) -> ^GDateTime ---

    @(link_name = "g_date_time_new_now")
    g_date_time_new_now :: proc(tz: ^GTimeZone) -> ^GDateTime ---

    @(link_name = "g_date_time_new_now_local")
    g_date_time_new_now_local :: proc() -> ^GDateTime ---

    @(link_name = "g_date_time_new_now_utc")
    g_date_time_new_now_utc :: proc() -> ^GDateTime ---

    @(link_name = "g_date_time_new_from_unix_local")
    g_date_time_new_from_unix_local :: proc(t: gint64) -> ^GDateTime ---

    @(link_name = "g_date_time_new_from_unix_utc")
    g_date_time_new_from_unix_utc :: proc(t: gint64) -> ^GDateTime ---

    @(link_name = "g_date_time_new_from_unix_local_usec")
    g_date_time_new_from_unix_local_usec :: proc(usecs: gint64) -> ^GDateTime ---

    @(link_name = "g_date_time_new_from_unix_utc_usec")
    g_date_time_new_from_unix_utc_usec :: proc(usecs: gint64) -> ^GDateTime ---

    @(link_name = "g_date_time_new_from_timeval_local")
    g_date_time_new_from_timeval_local :: proc(tv: ^GTimeVal) -> ^GDateTime ---

    @(link_name = "g_date_time_new_from_timeval_utc")
    g_date_time_new_from_timeval_utc :: proc(tv: ^GTimeVal) -> ^GDateTime ---

    @(link_name = "g_date_time_new_from_iso8601")
    g_date_time_new_from_iso8601 :: proc(text: cstring, default_tz: ^GTimeZone) -> ^GDateTime ---

    @(link_name = "g_date_time_new")
    g_date_time_new :: proc(tz: ^GTimeZone, year: gint, month: gint, day: gint, hour: gint, minute: gint, seconds: gdouble) -> ^GDateTime ---

    @(link_name = "g_date_time_new_local")
    g_date_time_new_local :: proc(year: gint, month: gint, day: gint, hour: gint, minute: gint, seconds: gdouble) -> ^GDateTime ---

    @(link_name = "g_date_time_new_utc")
    g_date_time_new_utc :: proc(year: gint, month: gint, day: gint, hour: gint, minute: gint, seconds: gdouble) -> ^GDateTime ---

    @(link_name = "g_date_time_add")
    g_date_time_add :: proc(datetime: ^GDateTime, timespan: GTimeSpan) -> ^GDateTime ---

    @(link_name = "g_date_time_add_years")
    g_date_time_add_years :: proc(datetime: ^GDateTime, years: gint) -> ^GDateTime ---

    @(link_name = "g_date_time_add_months")
    g_date_time_add_months :: proc(datetime: ^GDateTime, months: gint) -> ^GDateTime ---

    @(link_name = "g_date_time_add_weeks")
    g_date_time_add_weeks :: proc(datetime: ^GDateTime, weeks: gint) -> ^GDateTime ---

    @(link_name = "g_date_time_add_days")
    g_date_time_add_days :: proc(datetime: ^GDateTime, days: gint) -> ^GDateTime ---

    @(link_name = "g_date_time_add_hours")
    g_date_time_add_hours :: proc(datetime: ^GDateTime, hours: gint) -> ^GDateTime ---

    @(link_name = "g_date_time_add_minutes")
    g_date_time_add_minutes :: proc(datetime: ^GDateTime, minutes: gint) -> ^GDateTime ---

    @(link_name = "g_date_time_add_seconds")
    g_date_time_add_seconds :: proc(datetime: ^GDateTime, seconds: gdouble) -> ^GDateTime ---

    @(link_name = "g_date_time_add_full")
    g_date_time_add_full :: proc(datetime: ^GDateTime, years: gint, months: gint, days: gint, hours: gint, minutes: gint, seconds: gdouble) -> ^GDateTime ---

    @(link_name = "g_date_time_compare")
    g_date_time_compare :: proc(dt1: gconstpointer, dt2: gconstpointer) -> gint ---

    @(link_name = "g_date_time_difference")
    g_date_time_difference :: proc(end: ^GDateTime, begin: ^GDateTime) -> GTimeSpan ---

    @(link_name = "g_date_time_hash")
    g_date_time_hash :: proc(datetime: gconstpointer) -> guint ---

    @(link_name = "g_date_time_equal")
    g_date_time_equal :: proc(dt1: gconstpointer, dt2: gconstpointer) -> gboolean ---

    @(link_name = "g_date_time_get_ymd")
    g_date_time_get_ymd :: proc(datetime: ^GDateTime, year: ^gint, month: ^gint, day: ^gint) ---

    @(link_name = "g_date_time_get_year")
    g_date_time_get_year :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_month")
    g_date_time_get_month :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_day_of_month")
    g_date_time_get_day_of_month :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_week_numbering_year")
    g_date_time_get_week_numbering_year :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_week_of_year")
    g_date_time_get_week_of_year :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_day_of_week")
    g_date_time_get_day_of_week :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_day_of_year")
    g_date_time_get_day_of_year :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_hour")
    g_date_time_get_hour :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_minute")
    g_date_time_get_minute :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_second")
    g_date_time_get_second :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_microsecond")
    g_date_time_get_microsecond :: proc(datetime: ^GDateTime) -> gint ---

    @(link_name = "g_date_time_get_seconds")
    g_date_time_get_seconds :: proc(datetime: ^GDateTime) -> gdouble ---

    @(link_name = "g_date_time_to_unix")
    g_date_time_to_unix :: proc(datetime: ^GDateTime) -> gint64 ---

    @(link_name = "g_date_time_to_unix_usec")
    g_date_time_to_unix_usec :: proc(datetime: ^GDateTime) -> gint64 ---

    @(link_name = "g_date_time_to_timeval")
    g_date_time_to_timeval :: proc(datetime: ^GDateTime, tv: ^GTimeVal) -> gboolean ---

    @(link_name = "g_date_time_get_utc_offset")
    g_date_time_get_utc_offset :: proc(datetime: ^GDateTime) -> GTimeSpan ---

    @(link_name = "g_date_time_get_timezone")
    g_date_time_get_timezone :: proc(datetime: ^GDateTime) -> ^GTimeZone ---

    @(link_name = "g_date_time_get_timezone_abbreviation")
    g_date_time_get_timezone_abbreviation :: proc(datetime: ^GDateTime) -> cstring ---

    @(link_name = "g_date_time_is_daylight_savings")
    g_date_time_is_daylight_savings :: proc(datetime: ^GDateTime) -> gboolean ---

    @(link_name = "g_date_time_to_timezone")
    g_date_time_to_timezone :: proc(datetime: ^GDateTime, tz: ^GTimeZone) -> ^GDateTime ---

    @(link_name = "g_date_time_to_local")
    g_date_time_to_local :: proc(datetime: ^GDateTime) -> ^GDateTime ---

    @(link_name = "g_date_time_to_utc")
    g_date_time_to_utc :: proc(datetime: ^GDateTime) -> ^GDateTime ---

    @(link_name = "g_date_time_format")
    g_date_time_format :: proc(datetime: ^GDateTime, format: cstring) -> cstring ---

    @(link_name = "g_date_time_format_iso8601")
    g_date_time_format_iso8601 :: proc(datetime: ^GDateTime) -> cstring ---

    @(link_name = "g_bookmark_file_error_quark")
    g_bookmark_file_error_quark :: proc() -> GQuark ---

    @(link_name = "g_bookmark_file_new")
    g_bookmark_file_new :: proc() -> ^GBookmarkFile ---

    @(link_name = "g_bookmark_file_free")
    g_bookmark_file_free :: proc(bookmark: ^GBookmarkFile) ---

    @(link_name = "g_bookmark_file_copy")
    g_bookmark_file_copy :: proc(bookmark: ^GBookmarkFile) -> ^GBookmarkFile ---

    @(link_name = "g_bookmark_file_load_from_file")
    g_bookmark_file_load_from_file :: proc(bookmark: ^GBookmarkFile, filename: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_load_from_data")
    g_bookmark_file_load_from_data :: proc(bookmark: ^GBookmarkFile, data: ^byte, length: gsize, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_load_from_data_dirs")
    g_bookmark_file_load_from_data_dirs :: proc(bookmark: ^GBookmarkFile, file: cstring, full_path: ^cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_to_data")
    g_bookmark_file_to_data :: proc(bookmark: ^GBookmarkFile, length: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_bookmark_file_to_file")
    g_bookmark_file_to_file :: proc(bookmark: ^GBookmarkFile, filename: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_set_title")
    g_bookmark_file_set_title :: proc(bookmark: ^GBookmarkFile, uri: cstring, title: cstring) ---

    @(link_name = "g_bookmark_file_get_title")
    g_bookmark_file_get_title :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_bookmark_file_set_description")
    g_bookmark_file_set_description :: proc(bookmark: ^GBookmarkFile, uri: cstring, description: cstring) ---

    @(link_name = "g_bookmark_file_get_description")
    g_bookmark_file_get_description :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_bookmark_file_set_mime_type")
    g_bookmark_file_set_mime_type :: proc(bookmark: ^GBookmarkFile, uri: cstring, mime_type: cstring) ---

    @(link_name = "g_bookmark_file_get_mime_type")
    g_bookmark_file_get_mime_type :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_bookmark_file_set_groups")
    g_bookmark_file_set_groups :: proc(bookmark: ^GBookmarkFile, uri: cstring, groups: [^]cstring, length: gsize) ---

    @(link_name = "g_bookmark_file_add_group")
    g_bookmark_file_add_group :: proc(bookmark: ^GBookmarkFile, uri: cstring, group: cstring) ---

    @(link_name = "g_bookmark_file_has_group")
    g_bookmark_file_has_group :: proc(bookmark: ^GBookmarkFile, uri: cstring, group: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_get_groups")
    g_bookmark_file_get_groups :: proc(bookmark: ^GBookmarkFile, uri: cstring, length: ^gsize, error: ^^GError) -> ^cstring ---

    @(link_name = "g_bookmark_file_add_application")
    g_bookmark_file_add_application :: proc(bookmark: ^GBookmarkFile, uri: cstring, name: cstring, exec: cstring) ---

    @(link_name = "g_bookmark_file_has_application")
    g_bookmark_file_has_application :: proc(bookmark: ^GBookmarkFile, uri: cstring, name: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_get_applications")
    g_bookmark_file_get_applications :: proc(bookmark: ^GBookmarkFile, uri: cstring, length: ^gsize, error: ^^GError) -> ^cstring ---

    @(link_name = "g_bookmark_file_set_app_info")
    g_bookmark_file_set_app_info :: proc(bookmark: ^GBookmarkFile, uri: cstring, name: cstring, exec: cstring, count: gint, stamp: libc.time_t, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_set_application_info")
    g_bookmark_file_set_application_info :: proc(bookmark: ^GBookmarkFile, uri: cstring, name: cstring, exec: cstring, count: i32, stamp: ^GDateTime, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_get_app_info")
    g_bookmark_file_get_app_info :: proc(bookmark: ^GBookmarkFile, uri: cstring, name: cstring, exec: ^cstring, count: ^guint, stamp: ^libc.time_t, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_get_application_info")
    g_bookmark_file_get_application_info :: proc(bookmark: ^GBookmarkFile, uri: cstring, name: cstring, exec: ^cstring, count: ^u32, stamp: ^^GDateTime, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_set_is_private")
    g_bookmark_file_set_is_private :: proc(bookmark: ^GBookmarkFile, uri: cstring, is_private: gboolean) ---

    @(link_name = "g_bookmark_file_get_is_private")
    g_bookmark_file_get_is_private :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_set_icon")
    g_bookmark_file_set_icon :: proc(bookmark: ^GBookmarkFile, uri: cstring, href: cstring, mime_type: cstring) ---

    @(link_name = "g_bookmark_file_get_icon")
    g_bookmark_file_get_icon :: proc(bookmark: ^GBookmarkFile, uri: cstring, href: ^cstring, mime_type: ^cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_set_added")
    g_bookmark_file_set_added :: proc(bookmark: ^GBookmarkFile, uri: cstring, added: libc.time_t) ---

    @(link_name = "g_bookmark_file_set_added_date_time")
    g_bookmark_file_set_added_date_time :: proc(bookmark: ^GBookmarkFile, uri: cstring, added: ^GDateTime) ---

    @(link_name = "g_bookmark_file_get_added")
    g_bookmark_file_get_added :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> libc.time_t ---

    @(link_name = "g_bookmark_file_get_added_date_time")
    g_bookmark_file_get_added_date_time :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> ^GDateTime ---

    @(link_name = "g_bookmark_file_set_modified")
    g_bookmark_file_set_modified :: proc(bookmark: ^GBookmarkFile, uri: cstring, modified: libc.time_t) ---

    @(link_name = "g_bookmark_file_set_modified_date_time")
    g_bookmark_file_set_modified_date_time :: proc(bookmark: ^GBookmarkFile, uri: cstring, modified: ^GDateTime) ---

    @(link_name = "g_bookmark_file_get_modified")
    g_bookmark_file_get_modified :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> libc.time_t ---

    @(link_name = "g_bookmark_file_get_modified_date_time")
    g_bookmark_file_get_modified_date_time :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> ^GDateTime ---

    @(link_name = "g_bookmark_file_set_visited")
    g_bookmark_file_set_visited :: proc(bookmark: ^GBookmarkFile, uri: cstring, visited: libc.time_t) ---

    @(link_name = "g_bookmark_file_set_visited_date_time")
    g_bookmark_file_set_visited_date_time :: proc(bookmark: ^GBookmarkFile, uri: cstring, visited: ^GDateTime) ---

    @(link_name = "g_bookmark_file_get_visited")
    g_bookmark_file_get_visited :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> libc.time_t ---

    @(link_name = "g_bookmark_file_get_visited_date_time")
    g_bookmark_file_get_visited_date_time :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> ^GDateTime ---

    @(link_name = "g_bookmark_file_has_item")
    g_bookmark_file_has_item :: proc(bookmark: ^GBookmarkFile, uri: cstring) -> gboolean ---

    @(link_name = "g_bookmark_file_get_size")
    g_bookmark_file_get_size :: proc(bookmark: ^GBookmarkFile) -> gint ---

    @(link_name = "g_bookmark_file_get_uris")
    g_bookmark_file_get_uris :: proc(bookmark: ^GBookmarkFile, length: ^gsize) -> ^cstring ---

    @(link_name = "g_bookmark_file_remove_group")
    g_bookmark_file_remove_group :: proc(bookmark: ^GBookmarkFile, uri: cstring, group: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_remove_application")
    g_bookmark_file_remove_application :: proc(bookmark: ^GBookmarkFile, uri: cstring, name: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_remove_item")
    g_bookmark_file_remove_item :: proc(bookmark: ^GBookmarkFile, uri: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bookmark_file_move_item")
    g_bookmark_file_move_item :: proc(bookmark: ^GBookmarkFile, old_uri: cstring, new_uri: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_bytes_new")
    g_bytes_new :: proc(data: gconstpointer, size: gsize) -> ^GBytes ---

    @(link_name = "g_bytes_new_take")
    g_bytes_new_take :: proc(data: gpointer, size: gsize) -> ^GBytes ---

    @(link_name = "g_bytes_new_static")
    g_bytes_new_static :: proc(data: gconstpointer, size: gsize) -> ^GBytes ---

    @(link_name = "g_bytes_new_with_free_func")
    g_bytes_new_with_free_func :: proc(data: gconstpointer, size: gsize, free_func: GDestroyNotify, user_data: gpointer) -> ^GBytes ---

    @(link_name = "g_bytes_new_from_bytes")
    g_bytes_new_from_bytes :: proc(bytes: [^]GBytes, offset: gsize, length: gsize) -> ^GBytes ---

    @(link_name = "g_bytes_get_data")
    g_bytes_get_data :: proc(bytes: [^]GBytes, size: ^gsize) -> gconstpointer ---

    @(link_name = "g_bytes_get_size")
    g_bytes_get_size :: proc(bytes: [^]GBytes) -> gsize ---

    @(link_name = "g_bytes_ref")
    g_bytes_ref :: proc(bytes: [^]GBytes) -> ^GBytes ---

    @(link_name = "g_bytes_unref")
    g_bytes_unref :: proc(bytes: [^]GBytes) ---

    @(link_name = "g_bytes_unref_to_data")
    g_bytes_unref_to_data :: proc(bytes: [^]GBytes, size: ^gsize) -> gpointer ---

    @(link_name = "g_bytes_unref_to_array")
    g_bytes_unref_to_array :: proc(bytes: [^]GBytes) -> ^GByteArray ---

    @(link_name = "g_bytes_hash")
    g_bytes_hash :: proc(bytes: gconstpointer) -> guint ---

    @(link_name = "g_bytes_equal")
    g_bytes_equal :: proc(bytes1: gconstpointer, bytes2: gconstpointer) -> gboolean ---

    @(link_name = "g_bytes_compare")
    g_bytes_compare :: proc(bytes1: gconstpointer, bytes2: gconstpointer) -> gint ---

    @(link_name = "g_bytes_get_region")
    g_bytes_get_region :: proc(bytes: [^]GBytes, element_size: gsize, offset: gsize, n_elements: gsize) -> gconstpointer ---

    @(link_name = "g_get_charset")
    g_get_charset :: proc(charset: ^cstring) -> gboolean ---

    @(link_name = "g_get_codeset")
    g_get_codeset :: proc() -> cstring ---

    @(link_name = "g_get_console_charset")
    g_get_console_charset :: proc(charset: ^cstring) -> gboolean ---

    @(link_name = "g_get_language_names")
    g_get_language_names :: proc() -> ^cstring ---

    @(link_name = "g_get_language_names_with_category")
    g_get_language_names_with_category :: proc(category_name: cstring) -> ^cstring ---

    @(link_name = "g_get_locale_variants")
    g_get_locale_variants :: proc(locale: cstring) -> ^cstring ---

    @(link_name = "g_checksum_type_get_length")
    g_checksum_type_get_length :: proc(checksum_type: GChecksumType) -> gssize ---

    @(link_name = "g_checksum_new")
    g_checksum_new :: proc(checksum_type: GChecksumType) -> ^GChecksum ---

    @(link_name = "g_checksum_reset")
    g_checksum_reset :: proc(checksum: ^GChecksum) ---

    @(link_name = "g_checksum_copy")
    g_checksum_copy :: proc(checksum: ^GChecksum) -> ^GChecksum ---

    @(link_name = "g_checksum_free")
    g_checksum_free :: proc(checksum: ^GChecksum) ---

    @(link_name = "g_checksum_update")
    g_checksum_update :: proc(checksum: ^GChecksum, data: ^guchar, length: gssize) ---

    @(link_name = "g_checksum_get_string")
    g_checksum_get_string :: proc(checksum: ^GChecksum) -> cstring ---

    @(link_name = "g_checksum_get_digest")
    g_checksum_get_digest :: proc(checksum: ^GChecksum, buffer: ^guint8, digest_len: ^gsize) ---

    @(link_name = "g_compute_checksum_for_data")
    g_compute_checksum_for_data :: proc(checksum_type: GChecksumType, data: ^guchar, length: gsize) -> cstring ---

    @(link_name = "g_compute_checksum_for_string")
    g_compute_checksum_for_string :: proc(checksum_type: GChecksumType, str: cstring, length: gssize) -> cstring ---

    @(link_name = "g_compute_checksum_for_bytes")
    g_compute_checksum_for_bytes :: proc(checksum_type: GChecksumType, data: ^GBytes) -> cstring ---

    @(link_name = "g_convert_error_quark")
    g_convert_error_quark :: proc() -> GQuark ---

    @(link_name = "g_iconv_open")
    g_iconv_open :: proc(to_codeset: cstring, from_codeset: cstring) -> GIConv ---

    @(link_name = "g_iconv")
    g_iconv :: proc(converter: GIConv, inbuf: ^^byte, inbytes_left: ^gsize, outbuf: ^^byte, outbytes_left: ^gsize) -> gsize ---

    @(link_name = "g_iconv_close")
    g_iconv_close :: proc(converter: GIConv) -> gint ---

    @(link_name = "g_convert")
    g_convert :: proc(str: cstring, len: gssize, to_codeset: cstring, from_codeset: cstring, bytes_read: ^gsize, bytes_written: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_convert_with_iconv")
    g_convert_with_iconv :: proc(str: cstring, len: gssize, converter: GIConv, bytes_read: ^gsize, bytes_written: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_convert_with_fallback")
    g_convert_with_fallback :: proc(str: cstring, len: gssize, to_codeset: cstring, from_codeset: cstring, fallback: cstring, bytes_read: ^gsize, bytes_written: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_locale_to_utf8")
    g_locale_to_utf8 :: proc(opsysstring: cstring, len: gssize, bytes_read: ^gsize, bytes_written: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_locale_from_utf8")
    g_locale_from_utf8 :: proc(utf8string: cstring, len: gssize, bytes_read: ^gsize, bytes_written: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_filename_to_utf8")
    g_filename_to_utf8 :: proc(opsysstring: cstring, len: gssize, bytes_read: ^gsize, bytes_written: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_filename_from_utf8")
    g_filename_from_utf8 :: proc(utf8string: cstring, len: gssize, bytes_read: ^gsize, bytes_written: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_filename_from_uri")
    g_filename_from_uri :: proc(uri: cstring, hostname: ^cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_filename_to_uri")
    g_filename_to_uri :: proc(filename: cstring, hostname: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_filename_display_name")
    g_filename_display_name :: proc(filename: cstring) -> cstring ---

    @(link_name = "g_get_filename_charsets")
    g_get_filename_charsets :: proc(filename_charsets: [^]^cstring) -> gboolean ---

    @(link_name = "g_filename_display_basename")
    g_filename_display_basename :: proc(filename: cstring) -> cstring ---

    @(link_name = "g_uri_list_extract_uris")
    g_uri_list_extract_uris :: proc(uri_list: cstring) -> ^cstring ---

    @(link_name = "g_datalist_init")
    g_datalist_init :: proc(datalist: ^^GData) ---

    @(link_name = "g_datalist_clear")
    g_datalist_clear :: proc(datalist: ^^GData) ---

    @(link_name = "g_datalist_id_get_data")
    g_datalist_id_get_data :: proc(datalist: ^^GData, key_id: GQuark) -> gpointer ---

    @(link_name = "g_datalist_id_set_data_full")
    g_datalist_id_set_data_full :: proc(datalist: ^^GData, key_id: GQuark, data: gpointer, destroy_func: GDestroyNotify) ---

    @(link_name = "g_datalist_id_remove_multiple")
    g_datalist_id_remove_multiple :: proc(datalist: ^^GData, keys: [^]GQuark, n_keys: gsize) ---

    @(link_name = "g_datalist_id_dup_data")
    g_datalist_id_dup_data :: proc(datalist: ^^GData, key_id: GQuark, dup_func: GDuplicateFunc, user_data: gpointer) -> gpointer ---

    @(link_name = "g_datalist_id_replace_data")
    g_datalist_id_replace_data :: proc(datalist: ^^GData, key_id: GQuark, oldval: gpointer, newval: gpointer, destroy: GDestroyNotify, old_destroy: ^GDestroyNotify) -> gboolean ---

    @(link_name = "g_datalist_id_remove_no_notify")
    g_datalist_id_remove_no_notify :: proc(datalist: ^^GData, key_id: GQuark) -> gpointer ---

    @(link_name = "g_datalist_foreach")
    g_datalist_foreach :: proc(datalist: ^^GData, func: GDataForeachFunc, user_data: gpointer) ---

    @(link_name = "g_datalist_set_flags")
    g_datalist_set_flags :: proc(datalist: ^^GData, flags: guint) ---

    @(link_name = "g_datalist_unset_flags")
    g_datalist_unset_flags :: proc(datalist: ^^GData, flags: guint) ---

    @(link_name = "g_datalist_get_flags")
    g_datalist_get_flags :: proc(datalist: ^^GData) -> guint ---

    @(link_name = "g_dataset_destroy")
    g_dataset_destroy :: proc(dataset_location: gconstpointer) ---

    @(link_name = "g_dataset_id_get_data")
    g_dataset_id_get_data :: proc(dataset_location: gconstpointer, key_id: GQuark) -> gpointer ---

    @(link_name = "g_datalist_get_data")
    g_datalist_get_data :: proc(datalist: ^^GData, key: cstring) -> gpointer ---

    @(link_name = "g_dataset_id_set_data_full")
    g_dataset_id_set_data_full :: proc(dataset_location: gconstpointer, key_id: GQuark, data: gpointer, destroy_func: GDestroyNotify) ---

    @(link_name = "g_dataset_id_remove_no_notify")
    g_dataset_id_remove_no_notify :: proc(dataset_location: gconstpointer, key_id: GQuark) -> gpointer ---

    @(link_name = "g_dataset_foreach")
    g_dataset_foreach :: proc(dataset_location: gconstpointer, func: GDataForeachFunc, user_data: gpointer) ---

    @(link_name = "g_date_new")
    g_date_new :: proc() -> ^GDate ---

    @(link_name = "g_date_new_dmy")
    g_date_new_dmy :: proc(day: GDateDay, month: GDateMonth, year: GDateYear) -> ^GDate ---

    @(link_name = "g_date_new_julian")
    g_date_new_julian :: proc(julian_day: guint32) -> ^GDate ---

    @(link_name = "g_date_free")
    g_date_free :: proc(date: ^GDate) ---

    @(link_name = "g_date_copy")
    g_date_copy :: proc(date: ^GDate) -> ^GDate ---

    @(link_name = "g_date_valid")
    g_date_valid :: proc(date: ^GDate) -> gboolean ---

    @(link_name = "g_date_valid_day")
    g_date_valid_day :: proc(day: GDateDay) -> gboolean ---

    @(link_name = "g_date_valid_month")
    g_date_valid_month :: proc(month: GDateMonth) -> gboolean ---

    @(link_name = "g_date_valid_year")
    g_date_valid_year :: proc(year: GDateYear) -> gboolean ---

    @(link_name = "g_date_valid_weekday")
    g_date_valid_weekday :: proc(weekday: GDateWeekday) -> gboolean ---

    @(link_name = "g_date_valid_julian")
    g_date_valid_julian :: proc(julian_date: guint32) -> gboolean ---

    @(link_name = "g_date_valid_dmy")
    g_date_valid_dmy :: proc(day: GDateDay, month: GDateMonth, year: GDateYear) -> gboolean ---

    @(link_name = "g_date_get_weekday")
    g_date_get_weekday :: proc(date: ^GDate) -> GDateWeekday ---

    @(link_name = "g_date_get_month")
    g_date_get_month :: proc(date: ^GDate) -> GDateMonth ---

    @(link_name = "g_date_get_year")
    g_date_get_year :: proc(date: ^GDate) -> GDateYear ---

    @(link_name = "g_date_get_day")
    g_date_get_day :: proc(date: ^GDate) -> GDateDay ---

    @(link_name = "g_date_get_julian")
    g_date_get_julian :: proc(date: ^GDate) -> guint32 ---

    @(link_name = "g_date_get_day_of_year")
    g_date_get_day_of_year :: proc(date: ^GDate) -> guint ---

    @(link_name = "g_date_get_monday_week_of_year")
    g_date_get_monday_week_of_year :: proc(date: ^GDate) -> guint ---

    @(link_name = "g_date_get_sunday_week_of_year")
    g_date_get_sunday_week_of_year :: proc(date: ^GDate) -> guint ---

    @(link_name = "g_date_get_iso8601_week_of_year")
    g_date_get_iso8601_week_of_year :: proc(date: ^GDate) -> guint ---

    @(link_name = "g_date_clear")
    g_date_clear :: proc(date: ^GDate, n_dates: guint) ---

    @(link_name = "g_date_set_parse")
    g_date_set_parse :: proc(date: ^GDate, str: cstring) ---

    @(link_name = "g_date_set_time_t")
    g_date_set_time_t :: proc(date: ^GDate, timet: libc.time_t) ---

    @(link_name = "g_date_set_time_val")
    g_date_set_time_val :: proc(date: ^GDate, timeval: ^GTimeVal) ---

    @(link_name = "g_date_set_time")
    g_date_set_time :: proc(date: ^GDate, time_: GTime) ---

    @(link_name = "g_date_set_month")
    g_date_set_month :: proc(date: ^GDate, month: GDateMonth) ---

    @(link_name = "g_date_set_day")
    g_date_set_day :: proc(date: ^GDate, day: GDateDay) ---

    @(link_name = "g_date_set_year")
    g_date_set_year :: proc(date: ^GDate, year: GDateYear) ---

    @(link_name = "g_date_set_dmy")
    g_date_set_dmy :: proc(date: ^GDate, day: GDateDay, month: GDateMonth, y: GDateYear) ---

    @(link_name = "g_date_set_julian")
    g_date_set_julian :: proc(date: ^GDate, julian_date: guint32) ---

    @(link_name = "g_date_is_first_of_month")
    g_date_is_first_of_month :: proc(date: ^GDate) -> gboolean ---

    @(link_name = "g_date_is_last_of_month")
    g_date_is_last_of_month :: proc(date: ^GDate) -> gboolean ---

    @(link_name = "g_date_add_days")
    g_date_add_days :: proc(date: ^GDate, n_days: guint) ---

    @(link_name = "g_date_subtract_days")
    g_date_subtract_days :: proc(date: ^GDate, n_days: guint) ---

    @(link_name = "g_date_add_months")
    g_date_add_months :: proc(date: ^GDate, n_months: guint) ---

    @(link_name = "g_date_subtract_months")
    g_date_subtract_months :: proc(date: ^GDate, n_months: guint) ---

    @(link_name = "g_date_add_years")
    g_date_add_years :: proc(date: ^GDate, n_years: guint) ---

    @(link_name = "g_date_subtract_years")
    g_date_subtract_years :: proc(date: ^GDate, n_years: guint) ---

    @(link_name = "g_date_is_leap_year")
    g_date_is_leap_year :: proc(year: GDateYear) -> gboolean ---

    @(link_name = "g_date_get_days_in_month")
    g_date_get_days_in_month :: proc(month: GDateMonth, year: GDateYear) -> guint8 ---

    @(link_name = "g_date_get_monday_weeks_in_year")
    g_date_get_monday_weeks_in_year :: proc(year: GDateYear) -> guint8 ---

    @(link_name = "g_date_get_sunday_weeks_in_year")
    g_date_get_sunday_weeks_in_year :: proc(year: GDateYear) -> guint8 ---

    @(link_name = "g_date_days_between")
    g_date_days_between :: proc(date1: ^GDate, date2: ^GDate) -> gint ---

    @(link_name = "g_date_compare")
    g_date_compare :: proc(lhs: [^]GDate, rhs: [^]GDate) -> gint ---

    @(link_name = "g_date_to_struct_tm")
    g_date_to_struct_tm :: proc(date: ^GDate, tm: ^libc.tm) ---

    @(link_name = "g_date_clamp")
    g_date_clamp :: proc(date: ^GDate, min_date: ^GDate, max_date: ^GDate) ---

    @(link_name = "g_date_order")
    g_date_order :: proc(date1: ^GDate, date2: ^GDate) ---

    @(link_name = "g_date_strftime")
    g_date_strftime :: proc(s: cstring, slen: gsize, format: cstring, date: ^GDate) -> gsize ---

    @(link_name = "g_dir_open")
    g_dir_open :: proc(path: cstring, flags: guint, error: ^^GError) -> ^GDir ---

    @(link_name = "g_dir_read_name")
    g_dir_read_name :: proc(dir: ^GDir) -> cstring ---

    @(link_name = "g_dir_rewind")
    g_dir_rewind :: proc(dir: ^GDir) ---

    @(link_name = "g_dir_close")
    g_dir_close :: proc(dir: ^GDir) ---

    @(link_name = "g_dir_ref")
    g_dir_ref :: proc(dir: ^GDir) -> ^GDir ---

    @(link_name = "g_dir_unref")
    g_dir_unref :: proc(dir: ^GDir) ---

    @(link_name = "g_getenv")
    g_getenv :: proc(variable: cstring) -> cstring ---

    @(link_name = "g_setenv")
    g_setenv :: proc(variable: cstring, value: cstring, overwrite: gboolean) -> gboolean ---

    @(link_name = "g_unsetenv")
    g_unsetenv :: proc(variable: cstring) ---

    @(link_name = "g_listenv")
    g_listenv :: proc() -> ^cstring ---

    @(link_name = "g_get_environ")
    g_get_environ :: proc() -> ^cstring ---

    @(link_name = "g_environ_getenv")
    g_environ_getenv :: proc(envp: ^cstring, variable: cstring) -> cstring ---

    @(link_name = "g_environ_setenv")
    g_environ_setenv :: proc(envp: ^cstring, variable: cstring, value: cstring, overwrite: gboolean) -> ^cstring ---

    @(link_name = "g_environ_unsetenv")
    g_environ_unsetenv :: proc(envp: ^cstring, variable: cstring) -> ^cstring ---

    @(link_name = "g_file_error_quark")
    g_file_error_quark :: proc() -> GQuark ---

    @(link_name = "g_file_error_from_errno")
    g_file_error_from_errno :: proc(err_no: gint) -> GFileError ---

    @(link_name = "g_file_test")
    g_file_test :: proc(filename: cstring, test: GFileTest) -> gboolean ---

    @(link_name = "g_file_get_contents")
    g_file_get_contents :: proc(filename: cstring, contents: [^]cstring, length: ^gsize, error: ^^GError) -> gboolean ---

    @(link_name = "g_file_set_contents")
    g_file_set_contents :: proc(filename: cstring, contents: [^]gchar, length: gssize, error: ^^GError) -> gboolean ---

    @(link_name = "g_file_set_contents_full")
    g_file_set_contents_full :: proc(filename: cstring, contents: [^]gchar, length: gssize, flags: GFileSetContentsFlags, mode: i32, error: ^^GError) -> gboolean ---

    @(link_name = "g_file_read_link")
    g_file_read_link :: proc(filename: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_mkdtemp")
    g_mkdtemp :: proc(tmpl: cstring) -> cstring ---

    @(link_name = "g_mkdtemp_full")
    g_mkdtemp_full :: proc(tmpl: cstring, mode: gint) -> cstring ---

    @(link_name = "g_mkstemp")
    g_mkstemp :: proc(tmpl: cstring) -> gint ---

    @(link_name = "g_mkstemp_full")
    g_mkstemp_full :: proc(tmpl: cstring, flags: gint, mode: gint) -> gint ---

    @(link_name = "g_file_open_tmp")
    g_file_open_tmp :: proc(tmpl: cstring, name_used: ^cstring, error: ^^GError) -> gint ---

    @(link_name = "g_dir_make_tmp")
    g_dir_make_tmp :: proc(tmpl: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_build_path")
    g_build_path :: proc(separator: cstring, first_element: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_build_pathv")
    g_build_pathv :: proc(separator: cstring, args: [^]cstring) -> cstring ---

    @(link_name = "g_build_filename")
    g_build_filename :: proc(first_element: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_build_filenamev")
    g_build_filenamev :: proc(args: [^]cstring) -> cstring ---

    @(link_name = "g_build_filename_valist")
    g_build_filename_valist :: proc(first_element: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_mkdir_with_parents")
    g_mkdir_with_parents :: proc(pathname: cstring, mode: gint) -> gint ---

    @(link_name = "g_path_is_absolute")
    g_path_is_absolute :: proc(file_name: cstring) -> gboolean ---

    @(link_name = "g_path_skip_root")
    g_path_skip_root :: proc(file_name: cstring) -> cstring ---

    @(link_name = "g_basename")
    g_basename :: proc(file_name: cstring) -> cstring ---

    @(link_name = "g_get_current_dir")
    g_get_current_dir :: proc() -> cstring ---

    @(link_name = "g_path_get_basename")
    g_path_get_basename :: proc(file_name: cstring) -> cstring ---

    @(link_name = "g_path_get_dirname")
    g_path_get_dirname :: proc(file_name: cstring) -> cstring ---

    @(link_name = "g_canonicalize_filename")
    g_canonicalize_filename :: proc(filename: cstring, relative_to: cstring) -> cstring ---

    @(link_name = "g_strip_context")
    g_strip_context :: proc(msgid: cstring, msgval: cstring) -> cstring ---

    @(link_name = "g_dgettext")
    g_dgettext :: proc(domain: cstring, msgid: cstring) -> cstring ---

    @(link_name = "g_dcgettext")
    g_dcgettext :: proc(domain: cstring, msgid: cstring, category: gint) -> cstring ---

    @(link_name = "g_dngettext")
    g_dngettext :: proc(domain: cstring, msgid: cstring, msgid_plural: cstring, n: gulong) -> cstring ---

    @(link_name = "g_dpgettext")
    g_dpgettext :: proc(domain: cstring, msgctxtid: cstring, msgidoffset: gsize) -> cstring ---

    @(link_name = "g_dpgettext2")
    g_dpgettext2 :: proc(domain: cstring, context_p: cstring, msgid: cstring) -> cstring ---

    @(link_name = "g_free")
    g_free :: proc(mem: gpointer) ---

    @(link_name = "g_free_sized")
    g_free_sized :: proc(mem: gpointer, size: u64) ---

    @(link_name = "g_clear_pointer")
    g_clear_pointer :: proc(pp: ^gpointer, destroy: GDestroyNotify) ---

    @(link_name = "g_malloc")
    g_malloc :: proc(n_bytes: gsize) -> gpointer ---

    @(link_name = "g_malloc0")
    g_malloc0 :: proc(n_bytes: gsize) -> gpointer ---

    @(link_name = "g_realloc")
    g_realloc :: proc(mem: gpointer, n_bytes: gsize) -> gpointer ---

    @(link_name = "g_try_malloc")
    g_try_malloc :: proc(n_bytes: gsize) -> gpointer ---

    @(link_name = "g_try_malloc0")
    g_try_malloc0 :: proc(n_bytes: gsize) -> gpointer ---

    @(link_name = "g_try_realloc")
    g_try_realloc :: proc(mem: gpointer, n_bytes: gsize) -> gpointer ---

    @(link_name = "g_malloc_n")
    g_malloc_n :: proc(n_blocks: gsize, n_block_bytes: gsize) -> gpointer ---

    @(link_name = "g_malloc0_n")
    g_malloc0_n :: proc(n_blocks: gsize, n_block_bytes: gsize) -> gpointer ---

    @(link_name = "g_realloc_n")
    g_realloc_n :: proc(mem: gpointer, n_blocks: gsize, n_block_bytes: gsize) -> gpointer ---

    @(link_name = "g_try_malloc_n")
    g_try_malloc_n :: proc(n_blocks: gsize, n_block_bytes: gsize) -> gpointer ---

    @(link_name = "g_try_malloc0_n")
    g_try_malloc0_n :: proc(n_blocks: gsize, n_block_bytes: gsize) -> gpointer ---

    @(link_name = "g_try_realloc_n")
    g_try_realloc_n :: proc(mem: gpointer, n_blocks: gsize, n_block_bytes: gsize) -> gpointer ---

    @(link_name = "g_aligned_alloc")
    g_aligned_alloc :: proc(n_blocks: gsize, n_block_bytes: gsize, alignment: gsize) -> gpointer ---

    @(link_name = "g_aligned_alloc0")
    g_aligned_alloc0 :: proc(n_blocks: gsize, n_block_bytes: gsize, alignment: gsize) -> gpointer ---

    @(link_name = "g_aligned_free")
    g_aligned_free :: proc(mem: gpointer) ---

    @(link_name = "g_aligned_free_sized")
    g_aligned_free_sized :: proc(mem: gpointer, alignment: u64, size: u64) ---

    @(link_name = "g_mem_set_vtable")
    g_mem_set_vtable :: proc(vtable: ^GMemVTable) ---

    @(link_name = "g_mem_is_system_malloc")
    g_mem_is_system_malloc :: proc() -> gboolean ---

    @(link_name = "g_mem_gc_friendly")
    g_mem_gc_friendly: gboolean

    @(link_name = "glib_mem_profiler_table")
    glib_mem_profiler_table: ^GMemVTable

    @(link_name = "g_mem_profile")
    g_mem_profile :: proc() ---

    @(link_name = "g_node_new")
    g_node_new :: proc(data: gpointer) -> ^GNode ---

    @(link_name = "g_node_destroy")
    g_node_destroy :: proc(root: ^GNode) ---

    @(link_name = "g_node_unlink")
    g_node_unlink :: proc(node: ^GNode) ---

    @(link_name = "g_node_copy_deep")
    g_node_copy_deep :: proc(node: ^GNode, copy_func: GCopyFunc, data: gpointer) -> ^GNode ---

    @(link_name = "g_node_copy")
    g_node_copy :: proc(node: ^GNode) -> ^GNode ---

    @(link_name = "g_node_insert")
    g_node_insert :: proc(parent: ^GNode, position: gint, node: ^GNode) -> ^GNode ---

    @(link_name = "g_node_insert_before")
    g_node_insert_before :: proc(parent: ^GNode, sibling: ^GNode, node: ^GNode) -> ^GNode ---

    @(link_name = "g_node_insert_after")
    g_node_insert_after :: proc(parent: ^GNode, sibling: ^GNode, node: ^GNode) -> ^GNode ---

    @(link_name = "g_node_prepend")
    g_node_prepend :: proc(parent: ^GNode, node: ^GNode) -> ^GNode ---

    @(link_name = "g_node_n_nodes")
    g_node_n_nodes :: proc(root: ^GNode, flags: GTraverseFlags) -> guint ---

    @(link_name = "g_node_get_root")
    g_node_get_root :: proc(node: ^GNode) -> ^GNode ---

    @(link_name = "g_node_is_ancestor")
    g_node_is_ancestor :: proc(node: ^GNode, descendant: ^GNode) -> gboolean ---

    @(link_name = "g_node_depth")
    g_node_depth :: proc(node: ^GNode) -> guint ---

    @(link_name = "g_node_find")
    g_node_find :: proc(root: ^GNode, order: GTraverseType, flags: GTraverseFlags, data: gpointer) -> ^GNode ---

    @(link_name = "g_node_traverse")
    g_node_traverse :: proc(root: ^GNode, order: GTraverseType, flags: GTraverseFlags, max_depth: gint, func: GNodeTraverseFunc, data: gpointer) ---

    @(link_name = "g_node_max_height")
    g_node_max_height :: proc(root: ^GNode) -> guint ---

    @(link_name = "g_node_children_foreach")
    g_node_children_foreach :: proc(node: ^GNode, flags: GTraverseFlags, func: GNodeForeachFunc, data: gpointer) ---

    @(link_name = "g_node_reverse_children")
    g_node_reverse_children :: proc(node: ^GNode) ---

    @(link_name = "g_node_n_children")
    g_node_n_children :: proc(node: ^GNode) -> guint ---

    @(link_name = "g_node_nth_child")
    g_node_nth_child :: proc(node: ^GNode, n: guint) -> ^GNode ---

    @(link_name = "g_node_last_child")
    g_node_last_child :: proc(node: ^GNode) -> ^GNode ---

    @(link_name = "g_node_find_child")
    g_node_find_child :: proc(node: ^GNode, flags: GTraverseFlags, data: gpointer) -> ^GNode ---

    @(link_name = "g_node_child_position")
    g_node_child_position :: proc(node: ^GNode, child: ^GNode) -> gint ---

    @(link_name = "g_node_child_index")
    g_node_child_index :: proc(node: ^GNode, data: gpointer) -> gint ---

    @(link_name = "g_node_first_sibling")
    g_node_first_sibling :: proc(node: ^GNode) -> ^GNode ---

    @(link_name = "g_node_last_sibling")
    g_node_last_sibling :: proc(node: ^GNode) -> ^GNode ---

    @(link_name = "g_list_alloc")
    g_list_alloc :: proc() -> ^GList ---

    @(link_name = "g_list_free")
    g_list_free :: proc(list: ^GList) ---

    @(link_name = "g_list_free_1")
    g_list_free_1 :: proc(list: ^GList) ---

    @(link_name = "g_list_free_full")
    g_list_free_full :: proc(list: ^GList, free_func: GDestroyNotify) ---

    @(link_name = "g_list_append")
    g_list_append :: proc(list: ^GList, data: gpointer) -> ^GList ---

    @(link_name = "g_list_prepend")
    g_list_prepend :: proc(list: ^GList, data: gpointer) -> ^GList ---

    @(link_name = "g_list_insert")
    g_list_insert :: proc(list: ^GList, data: gpointer, position: gint) -> ^GList ---

    @(link_name = "g_list_insert_sorted")
    g_list_insert_sorted :: proc(list: ^GList, data: gpointer, func: GCompareFunc) -> ^GList ---

    @(link_name = "g_list_insert_sorted_with_data")
    g_list_insert_sorted_with_data :: proc(list: ^GList, data: gpointer, func: GCompareDataFunc, user_data: gpointer) -> ^GList ---

    @(link_name = "g_list_insert_before")
    g_list_insert_before :: proc(list: ^GList, sibling: ^GList, data: gpointer) -> ^GList ---

    @(link_name = "g_list_insert_before_link")
    g_list_insert_before_link :: proc(list: ^GList, sibling: ^GList, link_: ^GList) -> ^GList ---

    @(link_name = "g_list_concat")
    g_list_concat :: proc(list1: ^GList, list2: ^GList) -> ^GList ---

    @(link_name = "g_list_remove")
    g_list_remove :: proc(list: ^GList, data: gconstpointer) -> ^GList ---

    @(link_name = "g_list_remove_all")
    g_list_remove_all :: proc(list: ^GList, data: gconstpointer) -> ^GList ---

    @(link_name = "g_list_remove_link")
    g_list_remove_link :: proc(list: ^GList, llink: ^GList) -> ^GList ---

    @(link_name = "g_list_delete_link")
    g_list_delete_link :: proc(list: ^GList, link_: ^GList) -> ^GList ---

    @(link_name = "g_list_reverse")
    g_list_reverse :: proc(list: ^GList) -> ^GList ---

    @(link_name = "g_list_copy")
    g_list_copy :: proc(list: ^GList) -> ^GList ---

    @(link_name = "g_list_copy_deep")
    g_list_copy_deep :: proc(list: ^GList, func: GCopyFunc, user_data: gpointer) -> ^GList ---

    @(link_name = "g_list_nth")
    g_list_nth :: proc(list: ^GList, n: guint) -> ^GList ---

    @(link_name = "g_list_nth_prev")
    g_list_nth_prev :: proc(list: ^GList, n: guint) -> ^GList ---

    @(link_name = "g_list_find")
    g_list_find :: proc(list: ^GList, data: gconstpointer) -> ^GList ---

    @(link_name = "g_list_find_custom")
    g_list_find_custom :: proc(list: ^GList, data: gconstpointer, func: GCompareFunc) -> ^GList ---

    @(link_name = "g_list_position")
    g_list_position :: proc(list: ^GList, llink: ^GList) -> gint ---

    @(link_name = "g_list_index")
    g_list_index :: proc(list: ^GList, data: gconstpointer) -> gint ---

    @(link_name = "g_list_last")
    g_list_last :: proc(list: ^GList) -> ^GList ---

    @(link_name = "g_list_first")
    g_list_first :: proc(list: ^GList) -> ^GList ---

    @(link_name = "g_list_length")
    g_list_length :: proc(list: ^GList) -> guint ---

    @(link_name = "g_list_foreach")
    g_list_foreach :: proc(list: ^GList, func: GFunc, user_data: gpointer) ---

    @(link_name = "g_list_sort")
    g_list_sort :: proc(list: ^GList, compare_func: GCompareFunc) -> ^GList ---

    @(link_name = "g_list_sort_with_data")
    g_list_sort_with_data :: proc(list: ^GList, compare_func: GCompareDataFunc, user_data: gpointer) -> ^GList ---

    @(link_name = "g_list_nth_data")
    g_list_nth_data :: proc(list: ^GList, n: guint) -> gpointer ---

    @(link_name = "g_clear_list")
    g_clear_list :: proc(list_ptr: ^^GList, destroy: GDestroyNotify) ---

    @(link_name = "g_hash_table_new")
    g_hash_table_new :: proc(hash_func: GHashFunc, key_equal_func: GEqualFunc) -> ^GHashTable ---

    @(link_name = "g_hash_table_new_full")
    g_hash_table_new_full :: proc(hash_func: GHashFunc, key_equal_func: GEqualFunc, key_destroy_func: GDestroyNotify, value_destroy_func: GDestroyNotify) -> ^GHashTable ---

    @(link_name = "g_hash_table_new_similar")
    g_hash_table_new_similar :: proc(other_hash_table: ^GHashTable) -> ^GHashTable ---

    @(link_name = "g_hash_table_destroy")
    g_hash_table_destroy :: proc(hash_table: ^GHashTable) ---

    @(link_name = "g_hash_table_insert")
    g_hash_table_insert :: proc(hash_table: ^GHashTable, key: gpointer, value: gpointer) -> gboolean ---

    @(link_name = "g_hash_table_replace")
    g_hash_table_replace :: proc(hash_table: ^GHashTable, key: gpointer, value: gpointer) -> gboolean ---

    @(link_name = "g_hash_table_add")
    g_hash_table_add :: proc(hash_table: ^GHashTable, key: gpointer) -> gboolean ---

    @(link_name = "g_hash_table_remove")
    g_hash_table_remove :: proc(hash_table: ^GHashTable, key: gconstpointer) -> gboolean ---

    @(link_name = "g_hash_table_remove_all")
    g_hash_table_remove_all :: proc(hash_table: ^GHashTable) ---

    @(link_name = "g_hash_table_steal")
    g_hash_table_steal :: proc(hash_table: ^GHashTable, key: gconstpointer) -> gboolean ---

    @(link_name = "g_hash_table_steal_extended")
    g_hash_table_steal_extended :: proc(hash_table: ^GHashTable, lookup_key: gconstpointer, stolen_key: ^gpointer, stolen_value: ^gpointer) -> gboolean ---

    @(link_name = "g_hash_table_steal_all")
    g_hash_table_steal_all :: proc(hash_table: ^GHashTable) ---

    @(link_name = "g_hash_table_steal_all_keys")
    g_hash_table_steal_all_keys :: proc(hash_table: ^GHashTable) -> ^GPtrArray ---

    @(link_name = "g_hash_table_steal_all_values")
    g_hash_table_steal_all_values :: proc(hash_table: ^GHashTable) -> ^GPtrArray ---

    @(link_name = "g_hash_table_lookup")
    g_hash_table_lookup :: proc(hash_table: ^GHashTable, key: gconstpointer) -> gpointer ---

    @(link_name = "g_hash_table_contains")
    g_hash_table_contains :: proc(hash_table: ^GHashTable, key: gconstpointer) -> gboolean ---

    @(link_name = "g_hash_table_lookup_extended")
    g_hash_table_lookup_extended :: proc(hash_table: ^GHashTable, lookup_key: gconstpointer, orig_key: ^gpointer, value: ^gpointer) -> gboolean ---

    @(link_name = "g_hash_table_foreach")
    g_hash_table_foreach :: proc(hash_table: ^GHashTable, func: GHFunc, user_data: gpointer) ---

    @(link_name = "g_hash_table_find")
    g_hash_table_find :: proc(hash_table: ^GHashTable, predicate: GHRFunc, user_data: gpointer) -> gpointer ---

    @(link_name = "g_hash_table_foreach_remove")
    g_hash_table_foreach_remove :: proc(hash_table: ^GHashTable, func: GHRFunc, user_data: gpointer) -> guint ---

    @(link_name = "g_hash_table_foreach_steal")
    g_hash_table_foreach_steal :: proc(hash_table: ^GHashTable, func: GHRFunc, user_data: gpointer) -> guint ---

    @(link_name = "g_hash_table_size")
    g_hash_table_size :: proc(hash_table: ^GHashTable) -> guint ---

    @(link_name = "g_hash_table_get_keys")
    g_hash_table_get_keys :: proc(hash_table: ^GHashTable) -> ^GList ---

    @(link_name = "g_hash_table_get_values")
    g_hash_table_get_values :: proc(hash_table: ^GHashTable) -> ^GList ---

    @(link_name = "g_hash_table_get_keys_as_array")
    g_hash_table_get_keys_as_array :: proc(hash_table: ^GHashTable, length: ^guint) -> ^gpointer ---

    @(link_name = "g_hash_table_get_keys_as_ptr_array")
    g_hash_table_get_keys_as_ptr_array :: proc(hash_table: ^GHashTable) -> ^GPtrArray ---

    @(link_name = "g_hash_table_get_values_as_ptr_array")
    g_hash_table_get_values_as_ptr_array :: proc(hash_table: ^GHashTable) -> ^GPtrArray ---

    @(link_name = "g_hash_table_iter_init")
    g_hash_table_iter_init :: proc(iter: ^GHashTableIter, hash_table: ^GHashTable) ---

    @(link_name = "g_hash_table_iter_next")
    g_hash_table_iter_next :: proc(iter: ^GHashTableIter, key: ^gpointer, value: ^gpointer) -> gboolean ---

    @(link_name = "g_hash_table_iter_get_hash_table")
    g_hash_table_iter_get_hash_table :: proc(iter: ^GHashTableIter) -> ^GHashTable ---

    @(link_name = "g_hash_table_iter_remove")
    g_hash_table_iter_remove :: proc(iter: ^GHashTableIter) ---

    @(link_name = "g_hash_table_iter_replace")
    g_hash_table_iter_replace :: proc(iter: ^GHashTableIter, value: gpointer) ---

    @(link_name = "g_hash_table_iter_steal")
    g_hash_table_iter_steal :: proc(iter: ^GHashTableIter) ---

    @(link_name = "g_hash_table_ref")
    g_hash_table_ref :: proc(hash_table: ^GHashTable) -> ^GHashTable ---

    @(link_name = "g_hash_table_unref")
    g_hash_table_unref :: proc(hash_table: ^GHashTable) ---

    @(link_name = "g_str_equal")
    g_str_equal :: proc(v1: gconstpointer, v2: gconstpointer) -> gboolean ---

    @(link_name = "g_str_hash")
    g_str_hash :: proc(v: gconstpointer) -> guint ---

    @(link_name = "g_int_equal")
    g_int_equal :: proc(v1: gconstpointer, v2: gconstpointer) -> gboolean ---

    @(link_name = "g_int_hash")
    g_int_hash :: proc(v: gconstpointer) -> guint ---

    @(link_name = "g_int64_equal")
    g_int64_equal :: proc(v1: gconstpointer, v2: gconstpointer) -> gboolean ---

    @(link_name = "g_int64_hash")
    g_int64_hash :: proc(v: gconstpointer) -> guint ---

    @(link_name = "g_double_equal")
    g_double_equal :: proc(v1: gconstpointer, v2: gconstpointer) -> gboolean ---

    @(link_name = "g_double_hash")
    g_double_hash :: proc(v: gconstpointer) -> guint ---

    @(link_name = "g_direct_hash")
    g_direct_hash :: proc(v: gconstpointer) -> guint ---

    @(link_name = "g_direct_equal")
    g_direct_equal :: proc(v1: gconstpointer, v2: gconstpointer) -> gboolean ---

    @(link_name = "g_hmac_new")
    g_hmac_new :: proc(digest_type: GChecksumType, key: ^guchar, key_len: gsize) -> ^GHmac ---

    @(link_name = "g_hmac_copy")
    g_hmac_copy :: proc(hmac: ^GHmac) -> ^GHmac ---

    @(link_name = "g_hmac_ref")
    g_hmac_ref :: proc(hmac: ^GHmac) -> ^GHmac ---

    @(link_name = "g_hmac_unref")
    g_hmac_unref :: proc(hmac: ^GHmac) ---

    @(link_name = "g_hmac_update")
    g_hmac_update :: proc(hmac: ^GHmac, data: ^guchar, length: gssize) ---

    @(link_name = "g_hmac_get_string")
    g_hmac_get_string :: proc(hmac: ^GHmac) -> cstring ---

    @(link_name = "g_hmac_get_digest")
    g_hmac_get_digest :: proc(hmac: ^GHmac, buffer: ^guint8, digest_len: ^gsize) ---

    @(link_name = "g_compute_hmac_for_data")
    g_compute_hmac_for_data :: proc(digest_type: GChecksumType, key: ^guchar, key_len: gsize, data: ^guchar, length: gsize) -> cstring ---

    @(link_name = "g_compute_hmac_for_string")
    g_compute_hmac_for_string :: proc(digest_type: GChecksumType, key: ^guchar, key_len: gsize, str: cstring, length: gssize) -> cstring ---

    @(link_name = "g_compute_hmac_for_bytes")
    g_compute_hmac_for_bytes :: proc(digest_type: GChecksumType, key: ^GBytes, data: ^GBytes) -> cstring ---

    @(link_name = "g_hook_list_init")
    g_hook_list_init :: proc(hook_list: rawptr, hook_size: guint) ---

    @(link_name = "g_hook_list_clear")
    g_hook_list_clear :: proc(hook_list: rawptr) ---

    @(link_name = "g_hook_alloc")
    g_hook_alloc :: proc(hook_list: rawptr) -> ^GHook ---

    @(link_name = "g_hook_free")
    g_hook_free :: proc(hook_list: rawptr, hook: ^GHook) ---

    @(link_name = "g_hook_ref")
    g_hook_ref :: proc(hook_list: rawptr, hook: ^GHook) -> ^GHook ---

    @(link_name = "g_hook_unref")
    g_hook_unref :: proc(hook_list: rawptr, hook: ^GHook) ---

    @(link_name = "g_hook_destroy")
    g_hook_destroy :: proc(hook_list: rawptr, hook_id: gulong) -> gboolean ---

    @(link_name = "g_hook_destroy_link")
    g_hook_destroy_link :: proc(hook_list: rawptr, hook: ^GHook) ---

    @(link_name = "g_hook_prepend")
    g_hook_prepend :: proc(hook_list: rawptr, hook: ^GHook) ---

    @(link_name = "g_hook_insert_before")
    g_hook_insert_before :: proc(hook_list: rawptr, sibling: ^GHook, hook: ^GHook) ---

    @(link_name = "g_hook_insert_sorted")
    g_hook_insert_sorted :: proc(hook_list: rawptr, hook: ^GHook, func: GHookCompareFunc) ---

    @(link_name = "g_hook_get")
    g_hook_get :: proc(hook_list: rawptr, hook_id: gulong) -> ^GHook ---

    @(link_name = "g_hook_find")
    g_hook_find :: proc(hook_list: rawptr, need_valids: gboolean, func: GHookFindFunc, data: gpointer) -> ^GHook ---

    @(link_name = "g_hook_find_data")
    g_hook_find_data :: proc(hook_list: rawptr, need_valids: gboolean, data: gpointer) -> ^GHook ---

    @(link_name = "g_hook_find_func")
    g_hook_find_func :: proc(hook_list: rawptr, need_valids: gboolean, func: gpointer) -> ^GHook ---

    @(link_name = "g_hook_find_func_data")
    g_hook_find_func_data :: proc(hook_list: rawptr, need_valids: gboolean, func: gpointer, data: gpointer) -> ^GHook ---

    @(link_name = "g_hook_first_valid")
    g_hook_first_valid :: proc(hook_list: rawptr, may_be_in_call: gboolean) -> ^GHook ---

    @(link_name = "g_hook_next_valid")
    g_hook_next_valid :: proc(hook_list: rawptr, hook: ^GHook, may_be_in_call: gboolean) -> ^GHook ---

    @(link_name = "g_hook_compare_ids")
    g_hook_compare_ids :: proc(new_hook: ^GHook, sibling: ^GHook) -> gint ---

    @(link_name = "g_hook_list_invoke")
    g_hook_list_invoke :: proc(hook_list: rawptr, may_recurse: gboolean) ---

    @(link_name = "g_hook_list_invoke_check")
    g_hook_list_invoke_check :: proc(hook_list: rawptr, may_recurse: gboolean) ---

    @(link_name = "g_hook_list_marshal")
    g_hook_list_marshal :: proc(hook_list: rawptr, may_recurse: gboolean, marshaller: GHookMarshaller, marshal_data: gpointer) ---

    @(link_name = "g_hook_list_marshal_check")
    g_hook_list_marshal_check :: proc(hook_list: rawptr, may_recurse: gboolean, marshaller: GHookCheckMarshaller, marshal_data: gpointer) ---

    @(link_name = "g_hostname_is_non_ascii")
    g_hostname_is_non_ascii :: proc(hostname: cstring) -> gboolean ---

    @(link_name = "g_hostname_is_ascii_encoded")
    g_hostname_is_ascii_encoded :: proc(hostname: cstring) -> gboolean ---

    @(link_name = "g_hostname_is_ip_address")
    g_hostname_is_ip_address :: proc(hostname: cstring) -> gboolean ---

    @(link_name = "g_hostname_to_ascii")
    g_hostname_to_ascii :: proc(hostname: cstring) -> cstring ---

    @(link_name = "g_hostname_to_unicode")
    g_hostname_to_unicode :: proc(hostname: cstring) -> cstring ---

    @(link_name = "g_poll")
    g_poll :: proc(fds: [^]GPollFD, nfds: guint, timeout: gint) -> gint ---

    @(link_name = "g_slist_alloc")
    g_slist_alloc :: proc() -> ^GSList ---

    @(link_name = "g_slist_free")
    g_slist_free :: proc(list: ^GSList) ---

    @(link_name = "g_slist_free_1")
    g_slist_free_1 :: proc(list: ^GSList) ---

    @(link_name = "g_slist_free_full")
    g_slist_free_full :: proc(list: ^GSList, free_func: GDestroyNotify) ---

    @(link_name = "g_slist_append")
    g_slist_append :: proc(list: ^GSList, data: gpointer) -> ^GSList ---

    @(link_name = "g_slist_prepend")
    g_slist_prepend :: proc(list: ^GSList, data: gpointer) -> ^GSList ---

    @(link_name = "g_slist_insert")
    g_slist_insert :: proc(list: ^GSList, data: gpointer, position: gint) -> ^GSList ---

    @(link_name = "g_slist_insert_sorted")
    g_slist_insert_sorted :: proc(list: ^GSList, data: gpointer, func: GCompareFunc) -> ^GSList ---

    @(link_name = "g_slist_insert_sorted_with_data")
    g_slist_insert_sorted_with_data :: proc(list: ^GSList, data: gpointer, func: GCompareDataFunc, user_data: gpointer) -> ^GSList ---

    @(link_name = "g_slist_insert_before")
    g_slist_insert_before :: proc(slist: ^GSList, sibling: ^GSList, data: gpointer) -> ^GSList ---

    @(link_name = "g_slist_concat")
    g_slist_concat :: proc(list1: ^GSList, list2: ^GSList) -> ^GSList ---

    @(link_name = "g_slist_remove")
    g_slist_remove :: proc(list: ^GSList, data: gconstpointer) -> ^GSList ---

    @(link_name = "g_slist_remove_all")
    g_slist_remove_all :: proc(list: ^GSList, data: gconstpointer) -> ^GSList ---

    @(link_name = "g_slist_remove_link")
    g_slist_remove_link :: proc(list: ^GSList, link_: ^GSList) -> ^GSList ---

    @(link_name = "g_slist_delete_link")
    g_slist_delete_link :: proc(list: ^GSList, link_: ^GSList) -> ^GSList ---

    @(link_name = "g_slist_reverse")
    g_slist_reverse :: proc(list: ^GSList) -> ^GSList ---

    @(link_name = "g_slist_copy")
    g_slist_copy :: proc(list: ^GSList) -> ^GSList ---

    @(link_name = "g_slist_copy_deep")
    g_slist_copy_deep :: proc(list: ^GSList, func: GCopyFunc, user_data: gpointer) -> ^GSList ---

    @(link_name = "g_slist_nth")
    g_slist_nth :: proc(list: ^GSList, n: guint) -> ^GSList ---

    @(link_name = "g_slist_find")
    g_slist_find :: proc(list: ^GSList, data: gconstpointer) -> ^GSList ---

    @(link_name = "g_slist_find_custom")
    g_slist_find_custom :: proc(list: ^GSList, data: gconstpointer, func: GCompareFunc) -> ^GSList ---

    @(link_name = "g_slist_position")
    g_slist_position :: proc(list: ^GSList, llink: ^GSList) -> gint ---

    @(link_name = "g_slist_index")
    g_slist_index :: proc(list: ^GSList, data: gconstpointer) -> gint ---

    @(link_name = "g_slist_last")
    g_slist_last :: proc(list: ^GSList) -> ^GSList ---

    @(link_name = "g_slist_length")
    g_slist_length :: proc(list: ^GSList) -> guint ---

    @(link_name = "g_slist_foreach")
    g_slist_foreach :: proc(list: ^GSList, func: GFunc, user_data: gpointer) ---

    @(link_name = "g_slist_sort")
    g_slist_sort :: proc(list: ^GSList, compare_func: GCompareFunc) -> ^GSList ---

    @(link_name = "g_slist_sort_with_data")
    g_slist_sort_with_data :: proc(list: ^GSList, compare_func: GCompareDataFunc, user_data: gpointer) -> ^GSList ---

    @(link_name = "g_slist_nth_data")
    g_slist_nth_data :: proc(list: ^GSList, n: guint) -> gpointer ---

    @(link_name = "g_clear_slist")
    g_clear_slist :: proc(slist_ptr: ^^GSList, destroy: GDestroyNotify) ---

    @(link_name = "g_main_context_new")
    g_main_context_new :: proc() -> ^GMainContext ---

    @(link_name = "g_main_context_new_with_flags")
    g_main_context_new_with_flags :: proc(flags: GMainContextFlags) -> ^GMainContext ---

    @(link_name = "g_main_context_ref")
    g_main_context_ref :: proc(context_p: ^GMainContext) -> ^GMainContext ---

    @(link_name = "g_main_context_unref")
    g_main_context_unref :: proc(context_p: ^GMainContext) ---

    @(link_name = "g_main_context_default")
    g_main_context_default :: proc() -> ^GMainContext ---

    @(link_name = "g_main_context_iteration")
    g_main_context_iteration :: proc(context_p: ^GMainContext, may_block: gboolean) -> gboolean ---

    @(link_name = "g_main_context_pending")
    g_main_context_pending :: proc(context_p: ^GMainContext) -> gboolean ---

    @(link_name = "g_main_context_find_source_by_id")
    g_main_context_find_source_by_id :: proc(context_p: ^GMainContext, source_id: guint) -> ^GSource ---

    @(link_name = "g_main_context_find_source_by_user_data")
    g_main_context_find_source_by_user_data :: proc(context_p: ^GMainContext, user_data: gpointer) -> ^GSource ---

    @(link_name = "g_main_context_find_source_by_funcs_user_data")
    g_main_context_find_source_by_funcs_user_data :: proc(context_p: ^GMainContext, funcs: [^]GSourceFuncs, user_data: gpointer) -> ^GSource ---

    @(link_name = "g_main_context_wakeup")
    g_main_context_wakeup :: proc(context_p: ^GMainContext) ---

    @(link_name = "g_main_context_acquire")
    g_main_context_acquire :: proc(context_p: ^GMainContext) -> gboolean ---

    @(link_name = "g_main_context_release")
    g_main_context_release :: proc(context_p: ^GMainContext) ---

    @(link_name = "g_main_context_is_owner")
    g_main_context_is_owner :: proc(context_p: ^GMainContext) -> gboolean ---

    @(link_name = "g_main_context_wait")
    g_main_context_wait :: proc(context_p: ^GMainContext, cond: ^GCond, mutex: ^GMutex) -> gboolean ---

    @(link_name = "g_main_context_prepare")
    g_main_context_prepare :: proc(context_p: ^GMainContext, priority: ^gint) -> gboolean ---

    @(link_name = "g_main_context_query")
    g_main_context_query :: proc(context_p: ^GMainContext, max_priority: gint, timeout_: ^gint, fds: [^]GPollFD, n_fds: gint) -> gint ---

    @(link_name = "g_main_context_check")
    g_main_context_check :: proc(context_p: ^GMainContext, max_priority: gint, fds: [^]GPollFD, n_fds: gint) -> gboolean ---

    @(link_name = "g_main_context_dispatch")
    g_main_context_dispatch :: proc(context_p: ^GMainContext) ---

    @(link_name = "g_main_context_set_poll_func")
    g_main_context_set_poll_func :: proc(context_p: ^GMainContext, func: GPollFunc) ---

    @(link_name = "g_main_context_get_poll_func")
    g_main_context_get_poll_func :: proc(context_p: ^GMainContext) -> GPollFunc ---

    @(link_name = "g_main_context_add_poll")
    g_main_context_add_poll :: proc(context_p: ^GMainContext, fd: ^GPollFD, priority: gint) ---

    @(link_name = "g_main_context_remove_poll")
    g_main_context_remove_poll :: proc(context_p: ^GMainContext, fd: ^GPollFD) ---

    @(link_name = "g_main_depth")
    g_main_depth :: proc() -> gint ---

    @(link_name = "g_main_current_source")
    g_main_current_source :: proc() -> ^GSource ---

    @(link_name = "g_main_context_push_thread_default")
    g_main_context_push_thread_default :: proc(context_p: ^GMainContext) ---

    @(link_name = "g_main_context_pop_thread_default")
    g_main_context_pop_thread_default :: proc(context_p: ^GMainContext) ---

    @(link_name = "g_main_context_get_thread_default")
    g_main_context_get_thread_default :: proc() -> ^GMainContext ---

    @(link_name = "g_main_context_ref_thread_default")
    g_main_context_ref_thread_default :: proc() -> ^GMainContext ---

    @(link_name = "g_main_loop_new")
    g_main_loop_new :: proc(context_p: ^GMainContext, is_running: gboolean) -> ^GMainLoop ---

    @(link_name = "g_main_loop_run")
    g_main_loop_run :: proc(loop: ^GMainLoop) ---

    @(link_name = "g_main_loop_quit")
    g_main_loop_quit :: proc(loop: ^GMainLoop) ---

    @(link_name = "g_main_loop_ref")
    g_main_loop_ref :: proc(loop: ^GMainLoop) -> ^GMainLoop ---

    @(link_name = "g_main_loop_unref")
    g_main_loop_unref :: proc(loop: ^GMainLoop) ---

    @(link_name = "g_main_loop_is_running")
    g_main_loop_is_running :: proc(loop: ^GMainLoop) -> gboolean ---

    @(link_name = "g_main_loop_get_context")
    g_main_loop_get_context :: proc(loop: ^GMainLoop) -> ^GMainContext ---

    @(link_name = "g_source_new")
    g_source_new :: proc(source_funcs: [^]GSourceFuncs, struct_size: guint) -> ^GSource ---

    @(link_name = "g_source_set_dispose_function")
    g_source_set_dispose_function :: proc(source: ^GSource, dispose: GSourceDisposeFunc) ---

    @(link_name = "g_source_ref")
    g_source_ref :: proc(source: ^GSource) -> ^GSource ---

    @(link_name = "g_source_unref")
    g_source_unref :: proc(source: ^GSource) ---

    @(link_name = "g_source_attach")
    g_source_attach :: proc(source: ^GSource, context_p: ^GMainContext) -> guint ---

    @(link_name = "g_source_destroy")
    g_source_destroy :: proc(source: ^GSource) ---

    @(link_name = "g_source_set_priority")
    g_source_set_priority :: proc(source: ^GSource, priority: gint) ---

    @(link_name = "g_source_get_priority")
    g_source_get_priority :: proc(source: ^GSource) -> gint ---

    @(link_name = "g_source_set_can_recurse")
    g_source_set_can_recurse :: proc(source: ^GSource, can_recurse: gboolean) ---

    @(link_name = "g_source_get_can_recurse")
    g_source_get_can_recurse :: proc(source: ^GSource) -> gboolean ---

    @(link_name = "g_source_get_id")
    g_source_get_id :: proc(source: ^GSource) -> guint ---

    @(link_name = "g_source_get_context")
    g_source_get_context :: proc(source: ^GSource) -> ^GMainContext ---

    @(link_name = "g_source_set_callback")
    g_source_set_callback :: proc(source: ^GSource, func: GSourceFunc, data: gpointer, notify: GDestroyNotify) ---

    @(link_name = "g_source_set_funcs")
    g_source_set_funcs :: proc(source: ^GSource, funcs: [^]GSourceFuncs) ---

    @(link_name = "g_source_is_destroyed")
    g_source_is_destroyed :: proc(source: ^GSource) -> gboolean ---

    @(link_name = "g_source_set_name")
    g_source_set_name :: proc(source: ^GSource, name: cstring) ---

    @(link_name = "g_source_set_static_name")
    g_source_set_static_name :: proc(source: ^GSource, name: cstring) ---

    @(link_name = "g_source_get_name")
    g_source_get_name :: proc(source: ^GSource) -> cstring ---

    @(link_name = "g_source_set_name_by_id")
    g_source_set_name_by_id :: proc(tag: guint, name: cstring) ---

    @(link_name = "g_source_set_ready_time")
    g_source_set_ready_time :: proc(source: ^GSource, ready_time: gint64) ---

    @(link_name = "g_source_get_ready_time")
    g_source_get_ready_time :: proc(source: ^GSource) -> gint64 ---

    @(link_name = "g_source_add_unix_fd")
    g_source_add_unix_fd :: proc(source: ^GSource, fd: gint, events: GIOCondition) -> gpointer ---

    @(link_name = "g_source_modify_unix_fd")
    g_source_modify_unix_fd :: proc(source: ^GSource, tag: gpointer, new_events: GIOCondition) ---

    @(link_name = "g_source_remove_unix_fd")
    g_source_remove_unix_fd :: proc(source: ^GSource, tag: gpointer) ---

    @(link_name = "g_source_query_unix_fd")
    g_source_query_unix_fd :: proc(source: ^GSource, tag: gpointer) -> GIOCondition ---

    @(link_name = "g_source_set_callback_indirect")
    g_source_set_callback_indirect :: proc(source: ^GSource, callback_data: gpointer, callback_funcs: [^]GSourceCallbackFuncs) ---

    @(link_name = "g_source_add_poll")
    g_source_add_poll :: proc(source: ^GSource, fd: ^GPollFD) ---

    @(link_name = "g_source_remove_poll")
    g_source_remove_poll :: proc(source: ^GSource, fd: ^GPollFD) ---

    @(link_name = "g_source_add_child_source")
    g_source_add_child_source :: proc(source: ^GSource, child_source: ^GSource) ---

    @(link_name = "g_source_remove_child_source")
    g_source_remove_child_source :: proc(source: ^GSource, child_source: ^GSource) ---

    @(link_name = "g_source_get_current_time")
    g_source_get_current_time :: proc(source: ^GSource, timeval: ^GTimeVal) ---

    @(link_name = "g_source_get_time")
    g_source_get_time :: proc(source: ^GSource) -> gint64 ---

    @(link_name = "g_idle_source_new")
    g_idle_source_new :: proc() -> ^GSource ---

    @(link_name = "g_child_watch_source_new")
    g_child_watch_source_new :: proc(pid: GPid) -> ^GSource ---

    @(link_name = "g_timeout_source_new")
    g_timeout_source_new :: proc(interval: guint) -> ^GSource ---

    @(link_name = "g_timeout_source_new_seconds")
    g_timeout_source_new_seconds :: proc(interval: guint) -> ^GSource ---

    @(link_name = "g_get_current_time")
    g_get_current_time :: proc(result: ^GTimeVal) ---

    @(link_name = "g_get_monotonic_time")
    g_get_monotonic_time :: proc() -> gint64 ---

    @(link_name = "g_get_real_time")
    g_get_real_time :: proc() -> gint64 ---

    @(link_name = "g_source_remove")
    g_source_remove :: proc(tag: guint) -> gboolean ---

    @(link_name = "g_source_remove_by_user_data")
    g_source_remove_by_user_data :: proc(user_data: gpointer) -> gboolean ---

    @(link_name = "g_source_remove_by_funcs_user_data")
    g_source_remove_by_funcs_user_data :: proc(funcs: [^]GSourceFuncs, user_data: gpointer) -> gboolean ---

    @(link_name = "g_clear_handle_id")
    g_clear_handle_id :: proc(tag_ptr: ^guint, clear_func: GClearHandleFunc) ---

    @(link_name = "g_timeout_add_full")
    g_timeout_add_full :: proc(priority: gint, interval: guint, function: GSourceFunc, data: gpointer, notify: GDestroyNotify) -> guint ---

    @(link_name = "g_timeout_add")
    g_timeout_add :: proc(interval: guint, function: GSourceFunc, data: gpointer) -> guint ---

    @(link_name = "g_timeout_add_once")
    g_timeout_add_once :: proc(interval: guint, function: GSourceOnceFunc, data: gpointer) -> guint ---

    @(link_name = "g_timeout_add_seconds_full")
    g_timeout_add_seconds_full :: proc(priority: gint, interval: guint, function: GSourceFunc, data: gpointer, notify: GDestroyNotify) -> guint ---

    @(link_name = "g_timeout_add_seconds")
    g_timeout_add_seconds :: proc(interval: guint, function: GSourceFunc, data: gpointer) -> guint ---

    @(link_name = "g_timeout_add_seconds_once")
    g_timeout_add_seconds_once :: proc(interval: guint, function: GSourceOnceFunc, data: gpointer) -> guint ---

    @(link_name = "g_child_watch_add_full")
    g_child_watch_add_full :: proc(priority: gint, pid: GPid, function: GChildWatchFunc, data: gpointer, notify: GDestroyNotify) -> guint ---

    @(link_name = "g_child_watch_add")
    g_child_watch_add :: proc(pid: GPid, function: GChildWatchFunc, data: gpointer) -> guint ---

    @(link_name = "g_idle_add")
    g_idle_add :: proc(function: GSourceFunc, data: gpointer) -> guint ---

    @(link_name = "g_idle_add_full")
    g_idle_add_full :: proc(priority: gint, function: GSourceFunc, data: gpointer, notify: GDestroyNotify) -> guint ---

    @(link_name = "g_idle_add_once")
    g_idle_add_once :: proc(function: GSourceOnceFunc, data: gpointer) -> guint ---

    @(link_name = "g_idle_remove_by_data")
    g_idle_remove_by_data :: proc(data: gpointer) -> gboolean ---

    @(link_name = "g_main_context_invoke_full")
    g_main_context_invoke_full :: proc(context_p: ^GMainContext, priority: gint, function: GSourceFunc, data: gpointer, notify: GDestroyNotify) ---

    @(link_name = "g_main_context_invoke")
    g_main_context_invoke :: proc(context_p: ^GMainContext, function: GSourceFunc, data: gpointer) ---

    @(link_name = "g_timeout_funcs")
    g_timeout_funcs: GSourceFuncs

    @(link_name = "g_child_watch_funcs")
    g_child_watch_funcs: GSourceFuncs

    @(link_name = "g_idle_funcs")
    g_idle_funcs: GSourceFuncs

    @(link_name = "g_unix_signal_funcs")
    g_unix_signal_funcs: GSourceFuncs

    @(link_name = "g_unix_fd_source_funcs")
    g_unix_fd_source_funcs: GSourceFuncs

    @(link_name = "g_unicode_script_to_iso15924")
    g_unicode_script_to_iso15924 :: proc(script: GUnicodeScript) -> guint32 ---

    @(link_name = "g_unicode_script_from_iso15924")
    g_unicode_script_from_iso15924 :: proc(iso15924: guint32) -> GUnicodeScript ---

    @(link_name = "g_unichar_isalnum")
    g_unichar_isalnum :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_isalpha")
    g_unichar_isalpha :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_iscntrl")
    g_unichar_iscntrl :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_isdigit")
    g_unichar_isdigit :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_isgraph")
    g_unichar_isgraph :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_islower")
    g_unichar_islower :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_isprint")
    g_unichar_isprint :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_ispunct")
    g_unichar_ispunct :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_isspace")
    g_unichar_isspace :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_isupper")
    g_unichar_isupper :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_isxdigit")
    g_unichar_isxdigit :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_istitle")
    g_unichar_istitle :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_isdefined")
    g_unichar_isdefined :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_iswide")
    g_unichar_iswide :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_iswide_cjk")
    g_unichar_iswide_cjk :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_iszerowidth")
    g_unichar_iszerowidth :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_ismark")
    g_unichar_ismark :: proc(c: gunichar) -> gboolean ---

    @(link_name = "g_unichar_toupper")
    g_unichar_toupper :: proc(c: gunichar) -> gunichar ---

    @(link_name = "g_unichar_tolower")
    g_unichar_tolower :: proc(c: gunichar) -> gunichar ---

    @(link_name = "g_unichar_totitle")
    g_unichar_totitle :: proc(c: gunichar) -> gunichar ---

    @(link_name = "g_unichar_digit_value")
    g_unichar_digit_value :: proc(c: gunichar) -> gint ---

    @(link_name = "g_unichar_xdigit_value")
    g_unichar_xdigit_value :: proc(c: gunichar) -> gint ---

    @(link_name = "g_unichar_type")
    g_unichar_type :: proc(c: gunichar) -> GUnicodeType ---

    @(link_name = "g_unichar_break_type")
    g_unichar_break_type :: proc(c: gunichar) -> GUnicodeBreakType ---

    @(link_name = "g_unichar_combining_class")
    g_unichar_combining_class :: proc(uc: gunichar) -> gint ---

    @(link_name = "g_unichar_get_mirror_char")
    g_unichar_get_mirror_char :: proc(ch: gunichar, mirrored_ch: ^gunichar) -> gboolean ---

    @(link_name = "g_unichar_get_script")
    g_unichar_get_script :: proc(ch: gunichar) -> GUnicodeScript ---

    @(link_name = "g_unichar_validate")
    g_unichar_validate :: proc(ch: gunichar) -> gboolean ---

    @(link_name = "g_unichar_compose")
    g_unichar_compose :: proc(a: gunichar, b: gunichar, ch: ^gunichar) -> gboolean ---

    @(link_name = "g_unichar_decompose")
    g_unichar_decompose :: proc(ch: gunichar, a: ^gunichar, b: ^gunichar) -> gboolean ---

    @(link_name = "g_unichar_fully_decompose")
    g_unichar_fully_decompose :: proc(ch: gunichar, compat: gboolean, result: ^gunichar, result_len: gsize) -> gsize ---

    @(link_name = "g_unicode_canonical_ordering")
    g_unicode_canonical_ordering :: proc(string_p: ^gunichar, len: gsize) ---

    @(link_name = "g_unicode_canonical_decomposition")
    g_unicode_canonical_decomposition :: proc(ch: gunichar, result_len: ^gsize) -> ^gunichar ---

    @(link_name = "g_utf8_skip")
    g_utf8_skip: cstring

    @(link_name = "g_utf8_get_char")
    g_utf8_get_char :: proc(p: cstring) -> gunichar ---

    @(link_name = "g_utf8_get_char_validated")
    g_utf8_get_char_validated :: proc(p: cstring, max_len: gssize) -> gunichar ---

    @(link_name = "g_utf8_offset_to_pointer")
    g_utf8_offset_to_pointer :: proc(str: cstring, offset: glong) -> cstring ---

    @(link_name = "g_utf8_pointer_to_offset")
    g_utf8_pointer_to_offset :: proc(str: cstring, pos: [^]gchar) -> glong ---

    @(link_name = "g_utf8_prev_char")
    g_utf8_prev_char :: proc(p: cstring) -> cstring ---

    @(link_name = "g_utf8_find_next_char")
    g_utf8_find_next_char :: proc(p: cstring, end: cstring) -> cstring ---

    @(link_name = "g_utf8_find_prev_char")
    g_utf8_find_prev_char :: proc(str: cstring, p: cstring) -> cstring ---

    @(link_name = "g_utf8_strlen")
    g_utf8_strlen :: proc(p: cstring, max: gssize) -> glong ---

    @(link_name = "g_utf8_substring")
    g_utf8_substring :: proc(str: cstring, start_pos: glong, end_pos: glong) -> cstring ---

    @(link_name = "g_utf8_strncpy")
    g_utf8_strncpy :: proc(dest: cstring, src: cstring, n: gsize) -> cstring ---

    @(link_name = "g_utf8_truncate_middle")
    g_utf8_truncate_middle :: proc(string_p: cstring, truncate_length: gsize) -> cstring ---

    @(link_name = "g_utf8_strchr")
    g_utf8_strchr :: proc(p: cstring, len: gssize, c: gunichar) -> cstring ---

    @(link_name = "g_utf8_strrchr")
    g_utf8_strrchr :: proc(p: cstring, len: gssize, c: gunichar) -> cstring ---

    @(link_name = "g_utf8_strreverse")
    g_utf8_strreverse :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_utf8_to_utf16")
    g_utf8_to_utf16 :: proc(str: cstring, len: glong, items_read: ^glong, items_written: ^glong, error: ^^GError) -> ^gunichar2 ---

    @(link_name = "g_utf8_to_ucs4")
    g_utf8_to_ucs4 :: proc(str: cstring, len: glong, items_read: ^glong, items_written: ^glong, error: ^^GError) -> ^gunichar ---

    @(link_name = "g_utf8_to_ucs4_fast")
    g_utf8_to_ucs4_fast :: proc(str: cstring, len: glong, items_written: ^glong) -> ^gunichar ---

    @(link_name = "g_utf16_to_ucs4")
    g_utf16_to_ucs4 :: proc(str: ^gunichar2, len: glong, items_read: ^glong, items_written: ^glong, error: ^^GError) -> ^gunichar ---

    @(link_name = "g_utf16_to_utf8")
    g_utf16_to_utf8 :: proc(str: ^gunichar2, len: glong, items_read: ^glong, items_written: ^glong, error: ^^GError) -> cstring ---

    @(link_name = "g_ucs4_to_utf16")
    g_ucs4_to_utf16 :: proc(str: ^gunichar, len: glong, items_read: ^glong, items_written: ^glong, error: ^^GError) -> ^gunichar2 ---

    @(link_name = "g_ucs4_to_utf8")
    g_ucs4_to_utf8 :: proc(str: ^gunichar, len: glong, items_read: ^glong, items_written: ^glong, error: ^^GError) -> cstring ---

    @(link_name = "g_unichar_to_utf8")
    g_unichar_to_utf8 :: proc(c: gunichar, outbuf: ^byte) -> gint ---

    @(link_name = "g_utf8_validate")
    g_utf8_validate :: proc(str: cstring, max_len: gssize, end: ^cstring) -> gboolean ---

    @(link_name = "g_utf8_validate_len")
    g_utf8_validate_len :: proc(str: cstring, max_len: gsize, end: ^cstring) -> gboolean ---

    @(link_name = "g_utf8_strup")
    g_utf8_strup :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_utf8_strdown")
    g_utf8_strdown :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_utf8_casefold")
    g_utf8_casefold :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_utf8_normalize")
    g_utf8_normalize :: proc(str: cstring, len: gssize, mode: GNormalizeMode) -> cstring ---

    @(link_name = "g_utf8_collate")
    g_utf8_collate :: proc(str1: cstring, str2: cstring) -> gint ---

    @(link_name = "g_utf8_collate_key")
    g_utf8_collate_key :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_utf8_collate_key_for_filename")
    g_utf8_collate_key_for_filename :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_utf8_make_valid")
    g_utf8_make_valid :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_ascii_table")
    g_ascii_table: ^guint16

    @(link_name = "g_ascii_tolower")
    g_ascii_tolower :: proc(c: gchar) -> gchar ---

    @(link_name = "g_ascii_toupper")
    g_ascii_toupper :: proc(c: gchar) -> gchar ---

    @(link_name = "g_ascii_digit_value")
    g_ascii_digit_value :: proc(c: gchar) -> gint ---

    @(link_name = "g_ascii_xdigit_value")
    g_ascii_xdigit_value :: proc(c: gchar) -> gint ---

    @(link_name = "g_strdelimit")
    g_strdelimit :: proc(string_p: cstring, delimiters: [^]gchar, new_delimiter: gchar) -> cstring ---

    @(link_name = "g_strcanon")
    g_strcanon :: proc(string_p: cstring, valid_chars: [^]gchar, substitutor: gchar) -> cstring ---

    @(link_name = "g_strerror")
    g_strerror :: proc(errnum: gint) -> cstring ---

    @(link_name = "g_strsignal")
    g_strsignal :: proc(signum: gint) -> cstring ---

    @(link_name = "g_strreverse")
    g_strreverse :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_strlcpy")
    g_strlcpy :: proc(dest: cstring, src: cstring, dest_size: gsize) -> gsize ---

    @(link_name = "g_strlcat")
    g_strlcat :: proc(dest: cstring, src: cstring, dest_size: gsize) -> gsize ---

    @(link_name = "g_strstr_len")
    g_strstr_len :: proc(haystack: cstring, haystack_len: gssize, needle: cstring) -> cstring ---

    @(link_name = "g_strrstr")
    g_strrstr :: proc(haystack: cstring, needle: cstring) -> cstring ---

    @(link_name = "g_strrstr_len")
    g_strrstr_len :: proc(haystack: cstring, haystack_len: gssize, needle: cstring) -> cstring ---

    @(link_name = "g_str_has_suffix")
    g_str_has_suffix :: proc(str: cstring, suffix: cstring) -> gboolean ---

    @(link_name = "g_str_has_prefix")
    g_str_has_prefix :: proc(str: cstring, prefix: cstring) -> gboolean ---

    @(link_name = "g_strtod")
    g_strtod :: proc(nptr: cstring, endptr: ^cstring) -> gdouble ---

    @(link_name = "g_ascii_strtod")
    g_ascii_strtod :: proc(nptr: cstring, endptr: ^cstring) -> gdouble ---

    @(link_name = "g_ascii_strtoull")
    g_ascii_strtoull :: proc(nptr: cstring, endptr: ^cstring, base: guint) -> guint64 ---

    @(link_name = "g_ascii_strtoll")
    g_ascii_strtoll :: proc(nptr: cstring, endptr: ^cstring, base: guint) -> gint64 ---

    @(link_name = "g_ascii_dtostr")
    g_ascii_dtostr :: proc(buffer: ^byte, buf_len: gint, d: gdouble) -> cstring ---

    @(link_name = "g_ascii_formatd")
    g_ascii_formatd :: proc(buffer: ^byte, buf_len: gint, format: cstring, d: gdouble) -> cstring ---

    @(link_name = "g_strchug")
    g_strchug :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_strchomp")
    g_strchomp :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_ascii_strcasecmp")
    g_ascii_strcasecmp :: proc(s1: cstring, s2: cstring) -> gint ---

    @(link_name = "g_ascii_strncasecmp")
    g_ascii_strncasecmp :: proc(s1: cstring, s2: cstring, n: gsize) -> gint ---

    @(link_name = "g_ascii_strdown")
    g_ascii_strdown :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_ascii_strup")
    g_ascii_strup :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_str_is_ascii")
    g_str_is_ascii :: proc(str: cstring) -> gboolean ---

    @(link_name = "g_strcasecmp")
    g_strcasecmp :: proc(s1: cstring, s2: cstring) -> gint ---

    @(link_name = "g_strncasecmp")
    g_strncasecmp :: proc(s1: cstring, s2: cstring, n: guint) -> gint ---

    @(link_name = "g_strdown")
    g_strdown :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_strup")
    g_strup :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_strdup")
    g_strdup :: proc(str: cstring) -> cstring ---

    @(link_name = "g_strdup_printf")
    g_strdup_printf :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_strdup_vprintf")
    g_strdup_vprintf :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_strndup")
    g_strndup :: proc(str: cstring, n: gsize) -> cstring ---

    @(link_name = "g_strnfill")
    g_strnfill :: proc(length: gsize, fill_char: gchar) -> cstring ---

    @(link_name = "g_strconcat")
    g_strconcat :: proc(string1: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_strjoin")
    g_strjoin :: proc(separator: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_strcompress")
    g_strcompress :: proc(source: cstring) -> cstring ---

    @(link_name = "g_strescape")
    g_strescape :: proc(source: cstring, exceptions: [^]gchar) -> cstring ---

    @(link_name = "g_memdup")
    g_memdup :: proc(mem: gconstpointer, byte_size: guint) -> gpointer ---

    @(link_name = "g_memdup2")
    g_memdup2 :: proc(mem: gconstpointer, byte_size: gsize) -> gpointer ---

    @(link_name = "g_strsplit")
    g_strsplit :: proc(string_p: cstring, delimiter: cstring, max_tokens: gint) -> ^cstring ---

    @(link_name = "g_strsplit_set")
    g_strsplit_set :: proc(string_p: cstring, delimiters: [^]gchar, max_tokens: gint) -> ^cstring ---

    @(link_name = "g_strjoinv")
    g_strjoinv :: proc(separator: cstring, str_array: ^cstring) -> cstring ---

    @(link_name = "g_strfreev")
    g_strfreev :: proc(str_array: ^cstring) ---

    @(link_name = "g_strdupv")
    g_strdupv :: proc(str_array: ^cstring) -> ^cstring ---

    @(link_name = "g_strv_length")
    g_strv_length :: proc(str_array: ^cstring) -> guint ---

    @(link_name = "g_stpcpy")
    g_stpcpy :: proc(dest: cstring, src: cstring) -> cstring ---

    @(link_name = "g_str_to_ascii")
    g_str_to_ascii :: proc(str: cstring, from_locale: cstring) -> cstring ---

    @(link_name = "g_str_tokenize_and_fold")
    g_str_tokenize_and_fold :: proc(string_p: cstring, translit_locale: cstring, ascii_alternates: [^]^cstring) -> ^cstring ---

    @(link_name = "g_str_match_string")
    g_str_match_string :: proc(search_term: cstring, potential_hit: cstring, accept_alternates: gboolean) -> gboolean ---

    @(link_name = "g_strv_contains")
    g_strv_contains :: proc(strv: ^cstring, str: cstring) -> gboolean ---

    @(link_name = "g_strv_equal")
    g_strv_equal :: proc(strv1: ^cstring, strv2: ^cstring) -> gboolean ---

    @(link_name = "g_number_parser_error_quark")
    g_number_parser_error_quark :: proc() -> GQuark ---

    @(link_name = "g_ascii_string_to_signed")
    g_ascii_string_to_signed :: proc(str: cstring, base: guint, min: gint64, max: gint64, out_num: ^gint64, error: ^^GError) -> gboolean ---

    @(link_name = "g_ascii_string_to_unsigned")
    g_ascii_string_to_unsigned :: proc(str: cstring, base: guint, min: guint64, max: guint64, out_num: ^guint64, error: ^^GError) -> gboolean ---

    @(link_name = "g_string_new")
    g_string_new :: proc(init: cstring) -> ^GString ---

    @(link_name = "g_string_new_take")
    g_string_new_take :: proc(init: cstring) -> ^GString ---

    @(link_name = "g_string_new_len")
    g_string_new_len :: proc(init: cstring, len: gssize) -> ^GString ---

    @(link_name = "g_string_sized_new")
    g_string_sized_new :: proc(dfl_size: gsize) -> ^GString ---

    @(link_name = "g_string_free")
    g_string_free :: proc(string_p: ^GString, free_segment: gboolean) -> cstring ---

    @(link_name = "g_string_free_and_steal")
    g_string_free_and_steal :: proc(string_p: ^GString) -> cstring ---

    @(link_name = "g_string_free_to_bytes")
    g_string_free_to_bytes :: proc(string_p: ^GString) -> ^GBytes ---

    @(link_name = "g_string_equal")
    g_string_equal :: proc(v: ^GString, v2: ^GString) -> gboolean ---

    @(link_name = "g_string_hash")
    g_string_hash :: proc(str: ^GString) -> guint ---

    @(link_name = "g_string_assign")
    g_string_assign :: proc(string_p: ^GString, rval: cstring) -> ^GString ---

    @(link_name = "g_string_truncate")
    g_string_truncate :: proc(string_p: ^GString, len: gsize) -> ^GString ---

    @(link_name = "g_string_set_size")
    g_string_set_size :: proc(string_p: ^GString, len: gsize) -> ^GString ---

    @(link_name = "g_string_insert_len")
    g_string_insert_len :: proc(string_p: ^GString, pos: gssize, val: cstring, len: gssize) -> ^GString ---

    @(link_name = "g_string_append")
    g_string_append :: proc(string_p: ^GString, val: cstring) -> ^GString ---

    @(link_name = "g_string_append_len")
    g_string_append_len :: proc(string_p: ^GString, val: cstring, len: gssize) -> ^GString ---

    @(link_name = "g_string_append_c")
    g_string_append_c :: proc(string_p: ^GString, c: gchar) -> ^GString ---

    @(link_name = "g_string_append_unichar")
    g_string_append_unichar :: proc(string_p: ^GString, wc: gunichar) -> ^GString ---

    @(link_name = "g_string_prepend")
    g_string_prepend :: proc(string_p: ^GString, val: cstring) -> ^GString ---

    @(link_name = "g_string_prepend_c")
    g_string_prepend_c :: proc(string_p: ^GString, c: gchar) -> ^GString ---

    @(link_name = "g_string_prepend_unichar")
    g_string_prepend_unichar :: proc(string_p: ^GString, wc: gunichar) -> ^GString ---

    @(link_name = "g_string_prepend_len")
    g_string_prepend_len :: proc(string_p: ^GString, val: cstring, len: gssize) -> ^GString ---

    @(link_name = "g_string_insert")
    g_string_insert :: proc(string_p: ^GString, pos: gssize, val: cstring) -> ^GString ---

    @(link_name = "g_string_insert_c")
    g_string_insert_c :: proc(string_p: ^GString, pos: gssize, c: gchar) -> ^GString ---

    @(link_name = "g_string_insert_unichar")
    g_string_insert_unichar :: proc(string_p: ^GString, pos: gssize, wc: gunichar) -> ^GString ---

    @(link_name = "g_string_overwrite")
    g_string_overwrite :: proc(string_p: ^GString, pos: gsize, val: cstring) -> ^GString ---

    @(link_name = "g_string_overwrite_len")
    g_string_overwrite_len :: proc(string_p: ^GString, pos: gsize, val: cstring, len: gssize) -> ^GString ---

    @(link_name = "g_string_erase")
    g_string_erase :: proc(string_p: ^GString, pos: gssize, len: gssize) -> ^GString ---

    @(link_name = "g_string_replace")
    g_string_replace :: proc(string_p: ^GString, find: cstring, replace: cstring, limit: guint) -> guint ---

    @(link_name = "g_string_ascii_down")
    g_string_ascii_down :: proc(string_p: ^GString) -> ^GString ---

    @(link_name = "g_string_ascii_up")
    g_string_ascii_up :: proc(string_p: ^GString) -> ^GString ---

    @(link_name = "g_string_vprintf")
    g_string_vprintf :: proc(string_p: ^GString, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_string_printf")
    g_string_printf :: proc(string_p: ^GString, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_string_append_vprintf")
    g_string_append_vprintf :: proc(string_p: ^GString, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_string_append_printf")
    g_string_append_printf :: proc(string_p: ^GString, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_string_append_uri_escaped")
    g_string_append_uri_escaped :: proc(string_p: ^GString, unescaped: cstring, reserved_chars_allowed: cstring, allow_utf8: gboolean) -> ^GString ---

    @(link_name = "g_string_down")
    g_string_down :: proc(string_p: ^GString) -> ^GString ---

    @(link_name = "g_string_up")
    g_string_up :: proc(string_p: ^GString) -> ^GString ---

    @(link_name = "g_io_channel_init")
    g_io_channel_init :: proc(channel: rawptr) ---

    @(link_name = "g_io_channel_ref")
    g_io_channel_ref :: proc(channel: rawptr) -> rawptr ---

    @(link_name = "g_io_channel_unref")
    g_io_channel_unref :: proc(channel: rawptr) ---

    @(link_name = "g_io_channel_read")
    g_io_channel_read :: proc(channel: rawptr, buf: ^byte, count: gsize, bytes_read: ^gsize) -> GIOError ---

    @(link_name = "g_io_channel_write")
    g_io_channel_write :: proc(channel: rawptr, buf: ^byte, count: gsize, bytes_written: ^gsize) -> GIOError ---

    @(link_name = "g_io_channel_seek")
    g_io_channel_seek :: proc(channel: rawptr, offset: gint64, type: GSeekType) -> GIOError ---

    @(link_name = "g_io_channel_close")
    g_io_channel_close :: proc(channel: rawptr) ---

    @(link_name = "g_io_channel_shutdown")
    g_io_channel_shutdown :: proc(channel: rawptr, flush: gboolean, err: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_add_watch_full")
    g_io_add_watch_full :: proc(channel: rawptr, priority: gint, condition: GIOCondition, func: GIOFunc, user_data: gpointer, notify: GDestroyNotify) -> guint ---

    @(link_name = "g_io_create_watch")
    g_io_create_watch :: proc(channel: rawptr, condition: GIOCondition) -> ^GSource ---

    @(link_name = "g_io_add_watch")
    g_io_add_watch :: proc(channel: rawptr, condition: GIOCondition, func: GIOFunc, user_data: gpointer) -> guint ---

    @(link_name = "g_io_channel_set_buffer_size")
    g_io_channel_set_buffer_size :: proc(channel: rawptr, size: gsize) ---

    @(link_name = "g_io_channel_get_buffer_size")
    g_io_channel_get_buffer_size :: proc(channel: rawptr) -> gsize ---

    @(link_name = "g_io_channel_get_buffer_condition")
    g_io_channel_get_buffer_condition :: proc(channel: rawptr) -> GIOCondition ---

    @(link_name = "g_io_channel_set_flags")
    g_io_channel_set_flags :: proc(channel: rawptr, flags: GIOFlags, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_get_flags")
    g_io_channel_get_flags :: proc(channel: rawptr) -> GIOFlags ---

    @(link_name = "g_io_channel_set_line_term")
    g_io_channel_set_line_term :: proc(channel: rawptr, line_term: cstring, length: gint) ---

    @(link_name = "g_io_channel_get_line_term")
    g_io_channel_get_line_term :: proc(channel: rawptr, length: ^gint) -> cstring ---

    @(link_name = "g_io_channel_set_buffered")
    g_io_channel_set_buffered :: proc(channel: rawptr, buffered: gboolean) ---

    @(link_name = "g_io_channel_get_buffered")
    g_io_channel_get_buffered :: proc(channel: rawptr) -> gboolean ---

    @(link_name = "g_io_channel_set_encoding")
    g_io_channel_set_encoding :: proc(channel: rawptr, encoding: cstring, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_get_encoding")
    g_io_channel_get_encoding :: proc(channel: rawptr) -> cstring ---

    @(link_name = "g_io_channel_set_close_on_unref")
    g_io_channel_set_close_on_unref :: proc(channel: rawptr, do_close: gboolean) ---

    @(link_name = "g_io_channel_get_close_on_unref")
    g_io_channel_get_close_on_unref :: proc(channel: rawptr) -> gboolean ---

    @(link_name = "g_io_channel_flush")
    g_io_channel_flush :: proc(channel: rawptr, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_read_line")
    g_io_channel_read_line :: proc(channel: rawptr, str_return: ^cstring, length: ^gsize, terminator_pos: [^]gsize, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_read_line_string")
    g_io_channel_read_line_string :: proc(channel: rawptr, buffer: ^GString, terminator_pos: [^]gsize, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_read_to_end")
    g_io_channel_read_to_end :: proc(channel: rawptr, str_return: ^cstring, length: ^gsize, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_read_chars")
    g_io_channel_read_chars :: proc(channel: rawptr, buf: ^byte, count: gsize, bytes_read: ^gsize, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_read_unichar")
    g_io_channel_read_unichar :: proc(channel: rawptr, thechar: ^gunichar, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_write_chars")
    g_io_channel_write_chars :: proc(channel: rawptr, buf: ^byte, count: gssize, bytes_written: ^gsize, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_write_unichar")
    g_io_channel_write_unichar :: proc(channel: rawptr, thechar: gunichar, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_seek_position")
    g_io_channel_seek_position :: proc(channel: rawptr, offset: gint64, type: GSeekType, error: ^^GError) -> GIOStatus ---

    @(link_name = "g_io_channel_new_file")
    g_io_channel_new_file :: proc(filename: cstring, mode: cstring, error: ^^GError) -> rawptr ---

    @(link_name = "g_io_channel_error_quark")
    g_io_channel_error_quark :: proc() -> GQuark ---

    @(link_name = "g_io_channel_error_from_errno")
    g_io_channel_error_from_errno :: proc(en: gint) -> GIOChannelError ---

    @(link_name = "g_io_channel_unix_new")
    g_io_channel_unix_new :: proc(fd: i32) -> rawptr ---

    @(link_name = "g_io_channel_unix_get_fd")
    g_io_channel_unix_get_fd :: proc(channel: rawptr) -> gint ---

    @(link_name = "g_io_watch_funcs")
    g_io_watch_funcs: GSourceFuncs

    @(link_name = "g_key_file_error_quark")
    g_key_file_error_quark :: proc() -> GQuark ---

    @(link_name = "g_key_file_new")
    g_key_file_new :: proc() -> ^GKeyFile ---

    @(link_name = "g_key_file_ref")
    g_key_file_ref :: proc(key_file: ^GKeyFile) -> ^GKeyFile ---

    @(link_name = "g_key_file_unref")
    g_key_file_unref :: proc(key_file: ^GKeyFile) ---

    @(link_name = "g_key_file_free")
    g_key_file_free :: proc(key_file: ^GKeyFile) ---

    @(link_name = "g_key_file_set_list_separator")
    g_key_file_set_list_separator :: proc(key_file: ^GKeyFile, separator: gchar) ---

    @(link_name = "g_key_file_load_from_file")
    g_key_file_load_from_file :: proc(key_file: ^GKeyFile, file: cstring, flags: GKeyFileFlags, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_load_from_data")
    g_key_file_load_from_data :: proc(key_file: ^GKeyFile, data: ^byte, length: gsize, flags: GKeyFileFlags, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_load_from_bytes")
    g_key_file_load_from_bytes :: proc(key_file: ^GKeyFile, bytes: [^]GBytes, flags: GKeyFileFlags, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_load_from_dirs")
    g_key_file_load_from_dirs :: proc(key_file: ^GKeyFile, file: cstring, search_dirs: [^]cstring, full_path: ^cstring, flags: GKeyFileFlags, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_load_from_data_dirs")
    g_key_file_load_from_data_dirs :: proc(key_file: ^GKeyFile, file: cstring, full_path: ^cstring, flags: GKeyFileFlags, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_to_data")
    g_key_file_to_data :: proc(key_file: ^GKeyFile, length: ^gsize, error: ^^GError) -> cstring ---

    @(link_name = "g_key_file_save_to_file")
    g_key_file_save_to_file :: proc(key_file: ^GKeyFile, filename: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_get_start_group")
    g_key_file_get_start_group :: proc(key_file: ^GKeyFile) -> cstring ---

    @(link_name = "g_key_file_get_groups")
    g_key_file_get_groups :: proc(key_file: ^GKeyFile, length: ^gsize) -> ^cstring ---

    @(link_name = "g_key_file_get_keys")
    g_key_file_get_keys :: proc(key_file: ^GKeyFile, group_name: cstring, length: ^gsize, error: ^^GError) -> ^cstring ---

    @(link_name = "g_key_file_has_group")
    g_key_file_has_group :: proc(key_file: ^GKeyFile, group_name: cstring) -> gboolean ---

    @(link_name = "g_key_file_has_key")
    g_key_file_has_key :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_get_value")
    g_key_file_get_value :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_key_file_set_value")
    g_key_file_set_value :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, value: cstring) ---

    @(link_name = "g_key_file_get_string")
    g_key_file_get_string :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_key_file_set_string")
    g_key_file_set_string :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, string_p: cstring) ---

    @(link_name = "g_key_file_get_locale_string")
    g_key_file_get_locale_string :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, locale: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_key_file_get_locale_for_key")
    g_key_file_get_locale_for_key :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, locale: cstring) -> cstring ---

    @(link_name = "g_key_file_set_locale_string")
    g_key_file_set_locale_string :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, locale: cstring, string_p: cstring) ---

    @(link_name = "g_key_file_get_boolean")
    g_key_file_get_boolean :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_set_boolean")
    g_key_file_set_boolean :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, value: gboolean) ---

    @(link_name = "g_key_file_get_integer")
    g_key_file_get_integer :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> gint ---

    @(link_name = "g_key_file_set_integer")
    g_key_file_set_integer :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, value: gint) ---

    @(link_name = "g_key_file_get_int64")
    g_key_file_get_int64 :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> gint64 ---

    @(link_name = "g_key_file_set_int64")
    g_key_file_set_int64 :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, value: gint64) ---

    @(link_name = "g_key_file_get_uint64")
    g_key_file_get_uint64 :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> guint64 ---

    @(link_name = "g_key_file_set_uint64")
    g_key_file_set_uint64 :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, value: guint64) ---

    @(link_name = "g_key_file_get_double")
    g_key_file_get_double :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> gdouble ---

    @(link_name = "g_key_file_set_double")
    g_key_file_set_double :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, value: gdouble) ---

    @(link_name = "g_key_file_get_string_list")
    g_key_file_get_string_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, length: ^gsize, error: ^^GError) -> ^cstring ---

    @(link_name = "g_key_file_set_string_list")
    g_key_file_set_string_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, list: [^]cstring, length: gsize) ---

    @(link_name = "g_key_file_get_locale_string_list")
    g_key_file_get_locale_string_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, locale: cstring, length: ^gsize, error: ^^GError) -> ^cstring ---

    @(link_name = "g_key_file_set_locale_string_list")
    g_key_file_set_locale_string_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, locale: cstring, list: [^]cstring, length: gsize) ---

    @(link_name = "g_key_file_get_boolean_list")
    g_key_file_get_boolean_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, length: ^gsize, error: ^^GError) -> ^gboolean ---

    @(link_name = "g_key_file_set_boolean_list")
    g_key_file_set_boolean_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, list: [^]gboolean, length: gsize) ---

    @(link_name = "g_key_file_get_integer_list")
    g_key_file_get_integer_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, length: ^gsize, error: ^^GError) -> ^gint ---

    @(link_name = "g_key_file_set_double_list")
    g_key_file_set_double_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, list: [^]gdouble, length: gsize) ---

    @(link_name = "g_key_file_get_double_list")
    g_key_file_get_double_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, length: ^gsize, error: ^^GError) -> ^gdouble ---

    @(link_name = "g_key_file_set_integer_list")
    g_key_file_set_integer_list :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, list: [^]gint, length: gsize) ---

    @(link_name = "g_key_file_set_comment")
    g_key_file_set_comment :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, comment: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_get_comment")
    g_key_file_get_comment :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_key_file_remove_comment")
    g_key_file_remove_comment :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_remove_key")
    g_key_file_remove_key :: proc(key_file: ^GKeyFile, group_name: cstring, key: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_key_file_remove_group")
    g_key_file_remove_group :: proc(key_file: ^GKeyFile, group_name: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_mapped_file_new")
    g_mapped_file_new :: proc(filename: cstring, writable: gboolean, error: ^^GError) -> ^GMappedFile ---

    @(link_name = "g_mapped_file_new_from_fd")
    g_mapped_file_new_from_fd :: proc(fd: gint, writable: gboolean, error: ^^GError) -> ^GMappedFile ---

    @(link_name = "g_mapped_file_get_length")
    g_mapped_file_get_length :: proc(file: ^GMappedFile) -> gsize ---

    @(link_name = "g_mapped_file_get_contents")
    g_mapped_file_get_contents :: proc(file: ^GMappedFile) -> cstring ---

    @(link_name = "g_mapped_file_get_bytes")
    g_mapped_file_get_bytes :: proc(file: ^GMappedFile) -> ^GBytes ---

    @(link_name = "g_mapped_file_ref")
    g_mapped_file_ref :: proc(file: ^GMappedFile) -> ^GMappedFile ---

    @(link_name = "g_mapped_file_unref")
    g_mapped_file_unref :: proc(file: ^GMappedFile) ---

    @(link_name = "g_mapped_file_free")
    g_mapped_file_free :: proc(file: ^GMappedFile) ---

    @(link_name = "g_markup_error_quark")
    g_markup_error_quark :: proc() -> GQuark ---

    @(link_name = "g_markup_parse_context_new")
    g_markup_parse_context_new :: proc(parser: ^GMarkupParser, flags: GMarkupParseFlags, user_data: gpointer, user_data_dnotify: GDestroyNotify) -> ^GMarkupParseContext ---

    @(link_name = "g_markup_parse_context_ref")
    g_markup_parse_context_ref :: proc(context_p: ^GMarkupParseContext) -> ^GMarkupParseContext ---

    @(link_name = "g_markup_parse_context_unref")
    g_markup_parse_context_unref :: proc(context_p: ^GMarkupParseContext) ---

    @(link_name = "g_markup_parse_context_free")
    g_markup_parse_context_free :: proc(context_p: ^GMarkupParseContext) ---

    @(link_name = "g_markup_parse_context_parse")
    g_markup_parse_context_parse :: proc(context_p: ^GMarkupParseContext, text: cstring, text_len: gssize, error: ^^GError) -> gboolean ---

    @(link_name = "g_markup_parse_context_push")
    g_markup_parse_context_push :: proc(context_p: ^GMarkupParseContext, parser: ^GMarkupParser, user_data: gpointer) ---

    @(link_name = "g_markup_parse_context_pop")
    g_markup_parse_context_pop :: proc(context_p: ^GMarkupParseContext) -> gpointer ---

    @(link_name = "g_markup_parse_context_end_parse")
    g_markup_parse_context_end_parse :: proc(context_p: ^GMarkupParseContext, error: ^^GError) -> gboolean ---

    @(link_name = "g_markup_parse_context_get_element")
    g_markup_parse_context_get_element :: proc(context_p: ^GMarkupParseContext) -> cstring ---

    @(link_name = "g_markup_parse_context_get_element_stack")
    g_markup_parse_context_get_element_stack :: proc(context_p: ^GMarkupParseContext) -> ^GSList ---

    @(link_name = "g_markup_parse_context_get_position")
    g_markup_parse_context_get_position :: proc(context_p: ^GMarkupParseContext, line_number: ^gint, char_number: ^gint) ---

    @(link_name = "g_markup_parse_context_get_user_data")
    g_markup_parse_context_get_user_data :: proc(context_p: ^GMarkupParseContext) -> gpointer ---

    @(link_name = "g_markup_escape_text")
    g_markup_escape_text :: proc(text: cstring, length: gssize) -> cstring ---

    @(link_name = "g_markup_printf_escaped")
    g_markup_printf_escaped :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_markup_vprintf_escaped")
    g_markup_vprintf_escaped :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_markup_collect_attributes")
    g_markup_collect_attributes :: proc(element_name: cstring, attribute_names: [^]cstring, attribute_values: [^]cstring, error: ^^GError, first_type: GMarkupCollectType, first_attr: cstring, #c_vararg var_args: ..any) -> gboolean ---

    @(link_name = "g_variant_type_string_is_valid")
    g_variant_type_string_is_valid :: proc(type_string: cstring) -> gboolean ---

    @(link_name = "g_variant_type_string_scan")
    g_variant_type_string_scan :: proc(string_p: cstring, limit: cstring, endptr: ^cstring) -> gboolean ---

    @(link_name = "g_variant_type_free")
    g_variant_type_free :: proc(type: ^GVariantType) ---

    @(link_name = "g_variant_type_copy")
    g_variant_type_copy :: proc(type: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_new")
    g_variant_type_new :: proc(type_string: cstring) -> ^GVariantType ---

    @(link_name = "g_variant_type_get_string_length")
    g_variant_type_get_string_length :: proc(type: ^GVariantType) -> gsize ---

    @(link_name = "g_variant_type_peek_string")
    g_variant_type_peek_string :: proc(type: ^GVariantType) -> cstring ---

    @(link_name = "g_variant_type_dup_string")
    g_variant_type_dup_string :: proc(type: ^GVariantType) -> cstring ---

    @(link_name = "g_variant_type_is_definite")
    g_variant_type_is_definite :: proc(type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_is_container")
    g_variant_type_is_container :: proc(type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_is_basic")
    g_variant_type_is_basic :: proc(type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_is_maybe")
    g_variant_type_is_maybe :: proc(type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_is_array")
    g_variant_type_is_array :: proc(type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_is_tuple")
    g_variant_type_is_tuple :: proc(type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_is_dict_entry")
    g_variant_type_is_dict_entry :: proc(type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_is_variant")
    g_variant_type_is_variant :: proc(type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_hash")
    g_variant_type_hash :: proc(type: gconstpointer) -> guint ---

    @(link_name = "g_variant_type_equal")
    g_variant_type_equal :: proc(type1: gconstpointer, type2: gconstpointer) -> gboolean ---

    @(link_name = "g_variant_type_is_subtype_of")
    g_variant_type_is_subtype_of :: proc(type: ^GVariantType, supertype: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_type_element")
    g_variant_type_element :: proc(type: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_first")
    g_variant_type_first :: proc(type: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_next")
    g_variant_type_next :: proc(type: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_n_items")
    g_variant_type_n_items :: proc(type: ^GVariantType) -> gsize ---

    @(link_name = "g_variant_type_key")
    g_variant_type_key :: proc(type: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_value")
    g_variant_type_value :: proc(type: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_new_array")
    g_variant_type_new_array :: proc(element: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_new_maybe")
    g_variant_type_new_maybe :: proc(element: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_new_tuple")
    g_variant_type_new_tuple :: proc(items: [^]^GVariantType, length: gint) -> ^GVariantType ---

    @(link_name = "g_variant_type_new_dict_entry")
    g_variant_type_new_dict_entry :: proc(key: ^GVariantType, value: ^GVariantType) -> ^GVariantType ---

    @(link_name = "g_variant_type_checked_")
    g_variant_type_checked_ :: proc(type_string: cstring) -> ^GVariantType ---

    @(link_name = "g_variant_type_string_get_depth_")
    g_variant_type_string_get_depth_ :: proc(type_string: cstring) -> gsize ---

    @(link_name = "g_variant_unref")
    g_variant_unref :: proc(value: ^GVariant) ---

    @(link_name = "g_variant_ref")
    g_variant_ref :: proc(value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_ref_sink")
    g_variant_ref_sink :: proc(value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_is_floating")
    g_variant_is_floating :: proc(value: ^GVariant) -> gboolean ---

    @(link_name = "g_variant_take_ref")
    g_variant_take_ref :: proc(value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_get_type")
    g_variant_get_type :: proc(value: ^GVariant) -> ^GVariantType ---

    @(link_name = "g_variant_get_type_string")
    g_variant_get_type_string :: proc(value: ^GVariant) -> cstring ---

    @(link_name = "g_variant_is_of_type")
    g_variant_is_of_type :: proc(value: ^GVariant, type: ^GVariantType) -> gboolean ---

    @(link_name = "g_variant_is_container")
    g_variant_is_container :: proc(value: ^GVariant) -> gboolean ---

    @(link_name = "g_variant_classify")
    g_variant_classify :: proc(value: ^GVariant) -> GVariantClass ---

    @(link_name = "g_variant_new_boolean")
    g_variant_new_boolean :: proc(value: gboolean) -> ^GVariant ---

    @(link_name = "g_variant_new_byte")
    g_variant_new_byte :: proc(value: guint8) -> ^GVariant ---

    @(link_name = "g_variant_new_int16")
    g_variant_new_int16 :: proc(value: gint16) -> ^GVariant ---

    @(link_name = "g_variant_new_uint16")
    g_variant_new_uint16 :: proc(value: guint16) -> ^GVariant ---

    @(link_name = "g_variant_new_int32")
    g_variant_new_int32 :: proc(value: gint32) -> ^GVariant ---

    @(link_name = "g_variant_new_uint32")
    g_variant_new_uint32 :: proc(value: guint32) -> ^GVariant ---

    @(link_name = "g_variant_new_int64")
    g_variant_new_int64 :: proc(value: gint64) -> ^GVariant ---

    @(link_name = "g_variant_new_uint64")
    g_variant_new_uint64 :: proc(value: guint64) -> ^GVariant ---

    @(link_name = "g_variant_new_handle")
    g_variant_new_handle :: proc(value: gint32) -> ^GVariant ---

    @(link_name = "g_variant_new_double")
    g_variant_new_double :: proc(value: gdouble) -> ^GVariant ---

    @(link_name = "g_variant_new_string")
    g_variant_new_string :: proc(string_p: cstring) -> ^GVariant ---

    @(link_name = "g_variant_new_take_string")
    g_variant_new_take_string :: proc(string_p: cstring) -> ^GVariant ---

    @(link_name = "g_variant_new_printf")
    g_variant_new_printf :: proc(format_string: cstring, #c_vararg var_args: ..any) -> ^GVariant ---

    @(link_name = "g_variant_new_object_path")
    g_variant_new_object_path :: proc(object_path: cstring) -> ^GVariant ---

    @(link_name = "g_variant_is_object_path")
    g_variant_is_object_path :: proc(string_p: cstring) -> gboolean ---

    @(link_name = "g_variant_new_signature")
    g_variant_new_signature :: proc(signature: cstring) -> ^GVariant ---

    @(link_name = "g_variant_is_signature")
    g_variant_is_signature :: proc(string_p: cstring) -> gboolean ---

    @(link_name = "g_variant_new_variant")
    g_variant_new_variant :: proc(value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_new_strv")
    g_variant_new_strv :: proc(strv: ^cstring, length: gssize) -> ^GVariant ---

    @(link_name = "g_variant_new_objv")
    g_variant_new_objv :: proc(strv: ^cstring, length: gssize) -> ^GVariant ---

    @(link_name = "g_variant_new_bytestring")
    g_variant_new_bytestring :: proc(string_p: cstring) -> ^GVariant ---

    @(link_name = "g_variant_new_bytestring_array")
    g_variant_new_bytestring_array :: proc(strv: ^cstring, length: gssize) -> ^GVariant ---

    @(link_name = "g_variant_new_fixed_array")
    g_variant_new_fixed_array :: proc(element_type: ^GVariantType, elements: gconstpointer, n_elements: gsize, element_size: gsize) -> ^GVariant ---

    @(link_name = "g_variant_get_boolean")
    g_variant_get_boolean :: proc(value: ^GVariant) -> gboolean ---

    @(link_name = "g_variant_get_byte")
    g_variant_get_byte :: proc(value: ^GVariant) -> guint8 ---

    @(link_name = "g_variant_get_int16")
    g_variant_get_int16 :: proc(value: ^GVariant) -> gint16 ---

    @(link_name = "g_variant_get_uint16")
    g_variant_get_uint16 :: proc(value: ^GVariant) -> guint16 ---

    @(link_name = "g_variant_get_int32")
    g_variant_get_int32 :: proc(value: ^GVariant) -> gint32 ---

    @(link_name = "g_variant_get_uint32")
    g_variant_get_uint32 :: proc(value: ^GVariant) -> guint32 ---

    @(link_name = "g_variant_get_int64")
    g_variant_get_int64 :: proc(value: ^GVariant) -> gint64 ---

    @(link_name = "g_variant_get_uint64")
    g_variant_get_uint64 :: proc(value: ^GVariant) -> guint64 ---

    @(link_name = "g_variant_get_handle")
    g_variant_get_handle :: proc(value: ^GVariant) -> gint32 ---

    @(link_name = "g_variant_get_double")
    g_variant_get_double :: proc(value: ^GVariant) -> gdouble ---

    @(link_name = "g_variant_get_variant")
    g_variant_get_variant :: proc(value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_get_string")
    g_variant_get_string :: proc(value: ^GVariant, length: ^gsize) -> cstring ---

    @(link_name = "g_variant_dup_string")
    g_variant_dup_string :: proc(value: ^GVariant, length: ^gsize) -> cstring ---

    @(link_name = "g_variant_get_strv")
    g_variant_get_strv :: proc(value: ^GVariant, length: ^gsize) -> ^cstring ---

    @(link_name = "g_variant_dup_strv")
    g_variant_dup_strv :: proc(value: ^GVariant, length: ^gsize) -> ^cstring ---

    @(link_name = "g_variant_get_objv")
    g_variant_get_objv :: proc(value: ^GVariant, length: ^gsize) -> ^cstring ---

    @(link_name = "g_variant_dup_objv")
    g_variant_dup_objv :: proc(value: ^GVariant, length: ^gsize) -> ^cstring ---

    @(link_name = "g_variant_get_bytestring")
    g_variant_get_bytestring :: proc(value: ^GVariant) -> cstring ---

    @(link_name = "g_variant_dup_bytestring")
    g_variant_dup_bytestring :: proc(value: ^GVariant, length: ^gsize) -> cstring ---

    @(link_name = "g_variant_get_bytestring_array")
    g_variant_get_bytestring_array :: proc(value: ^GVariant, length: ^gsize) -> ^cstring ---

    @(link_name = "g_variant_dup_bytestring_array")
    g_variant_dup_bytestring_array :: proc(value: ^GVariant, length: ^gsize) -> ^cstring ---

    @(link_name = "g_variant_new_maybe")
    g_variant_new_maybe :: proc(child_type: ^GVariantType, child: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_new_array")
    g_variant_new_array :: proc(child_type: ^GVariantType, children: ^^GVariant, n_children: gsize) -> ^GVariant ---

    @(link_name = "g_variant_new_tuple")
    g_variant_new_tuple :: proc(children: ^^GVariant, n_children: gsize) -> ^GVariant ---

    @(link_name = "g_variant_new_dict_entry")
    g_variant_new_dict_entry :: proc(key: ^GVariant, value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_get_maybe")
    g_variant_get_maybe :: proc(value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_n_children")
    g_variant_n_children :: proc(value: ^GVariant) -> gsize ---

    @(link_name = "g_variant_get_child")
    g_variant_get_child :: proc(value: ^GVariant, index_: gsize, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_get_child_value")
    g_variant_get_child_value :: proc(value: ^GVariant, index_: gsize) -> ^GVariant ---

    @(link_name = "g_variant_lookup")
    g_variant_lookup :: proc(dictionary: ^GVariant, key: cstring, format_string: cstring, #c_vararg var_args: ..any) -> gboolean ---

    @(link_name = "g_variant_lookup_value")
    g_variant_lookup_value :: proc(dictionary: ^GVariant, key: cstring, expected_type: ^GVariantType) -> ^GVariant ---

    @(link_name = "g_variant_get_fixed_array")
    g_variant_get_fixed_array :: proc(value: ^GVariant, n_elements: [^]gsize, element_size: gsize) -> gconstpointer ---

    @(link_name = "g_variant_get_size")
    g_variant_get_size :: proc(value: ^GVariant) -> gsize ---

    @(link_name = "g_variant_get_data")
    g_variant_get_data :: proc(value: ^GVariant) -> gconstpointer ---

    @(link_name = "g_variant_get_data_as_bytes")
    g_variant_get_data_as_bytes :: proc(value: ^GVariant) -> ^GBytes ---

    @(link_name = "g_variant_store")
    g_variant_store :: proc(value: ^GVariant, data: gpointer) ---

    @(link_name = "g_variant_print")
    g_variant_print :: proc(value: ^GVariant, type_annotate: gboolean) -> cstring ---

    @(link_name = "g_variant_print_string")
    g_variant_print_string :: proc(value: ^GVariant, string_p: ^GString, type_annotate: gboolean) -> ^GString ---

    @(link_name = "g_variant_hash")
    g_variant_hash :: proc(value: gconstpointer) -> guint ---

    @(link_name = "g_variant_equal")
    g_variant_equal :: proc(one: gconstpointer, two: gconstpointer) -> gboolean ---

    @(link_name = "g_variant_get_normal_form")
    g_variant_get_normal_form :: proc(value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_is_normal_form")
    g_variant_is_normal_form :: proc(value: ^GVariant) -> gboolean ---

    @(link_name = "g_variant_byteswap")
    g_variant_byteswap :: proc(value: ^GVariant) -> ^GVariant ---

    @(link_name = "g_variant_new_from_bytes")
    g_variant_new_from_bytes :: proc(type: ^GVariantType, bytes: [^]GBytes, trusted: gboolean) -> ^GVariant ---

    @(link_name = "g_variant_new_from_data")
    g_variant_new_from_data :: proc(type: ^GVariantType, data: gconstpointer, size: gsize, trusted: gboolean, notify: GDestroyNotify, user_data: gpointer) -> ^GVariant ---

    @(link_name = "g_variant_iter_new")
    g_variant_iter_new :: proc(value: ^GVariant) -> ^GVariantIter ---

    @(link_name = "g_variant_iter_init")
    g_variant_iter_init :: proc(iter: ^GVariantIter, value: ^GVariant) -> gsize ---

    @(link_name = "g_variant_iter_copy")
    g_variant_iter_copy :: proc(iter: ^GVariantIter) -> ^GVariantIter ---

    @(link_name = "g_variant_iter_n_children")
    g_variant_iter_n_children :: proc(iter: ^GVariantIter) -> gsize ---

    @(link_name = "g_variant_iter_free")
    g_variant_iter_free :: proc(iter: ^GVariantIter) ---

    @(link_name = "g_variant_iter_next_value")
    g_variant_iter_next_value :: proc(iter: ^GVariantIter) -> ^GVariant ---

    @(link_name = "g_variant_iter_next")
    g_variant_iter_next :: proc(iter: ^GVariantIter, format_string: cstring, #c_vararg var_args: ..any) -> gboolean ---

    @(link_name = "g_variant_iter_loop")
    g_variant_iter_loop :: proc(iter: ^GVariantIter, format_string: cstring, #c_vararg var_args: ..any) -> gboolean ---

    @(link_name = "g_variant_parser_get_error_quark")
    g_variant_parser_get_error_quark :: proc() -> GQuark ---

    @(link_name = "g_variant_parse_error_quark")
    g_variant_parse_error_quark :: proc() -> GQuark ---

    @(link_name = "g_variant_builder_new")
    g_variant_builder_new :: proc(type: ^GVariantType) -> ^GVariantBuilder ---

    @(link_name = "g_variant_builder_unref")
    g_variant_builder_unref :: proc(builder: ^GVariantBuilder) ---

    @(link_name = "g_variant_builder_ref")
    g_variant_builder_ref :: proc(builder: ^GVariantBuilder) -> ^GVariantBuilder ---

    @(link_name = "g_variant_builder_init")
    g_variant_builder_init :: proc(builder: ^GVariantBuilder, type: ^GVariantType) ---

    @(link_name = "g_variant_builder_init_static")
    g_variant_builder_init_static :: proc(builder: ^GVariantBuilder, type: ^GVariantType) ---

    @(link_name = "g_variant_builder_end")
    g_variant_builder_end :: proc(builder: ^GVariantBuilder) -> ^GVariant ---

    @(link_name = "g_variant_builder_clear")
    g_variant_builder_clear :: proc(builder: ^GVariantBuilder) ---

    @(link_name = "g_variant_builder_open")
    g_variant_builder_open :: proc(builder: ^GVariantBuilder, type: ^GVariantType) ---

    @(link_name = "g_variant_builder_close")
    g_variant_builder_close :: proc(builder: ^GVariantBuilder) ---

    @(link_name = "g_variant_builder_add_value")
    g_variant_builder_add_value :: proc(builder: ^GVariantBuilder, value: ^GVariant) ---

    @(link_name = "g_variant_builder_add")
    g_variant_builder_add :: proc(builder: ^GVariantBuilder, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_builder_add_parsed")
    g_variant_builder_add_parsed :: proc(builder: ^GVariantBuilder, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_new")
    g_variant_new :: proc(format_string: cstring, #c_vararg var_args: ..any) -> ^GVariant ---

    @(link_name = "g_variant_get")
    g_variant_get :: proc(value: ^GVariant, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_new_va")
    g_variant_new_va :: proc(format_string: cstring, endptr: ^cstring, #c_vararg var_args: ..any) -> ^GVariant ---

    @(link_name = "g_variant_get_va")
    g_variant_get_va :: proc(value: ^GVariant, format_string: cstring, endptr: ^cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_check_format_string")
    g_variant_check_format_string :: proc(value: ^GVariant, format_string: cstring, copy_only: gboolean) -> gboolean ---

    @(link_name = "g_variant_parse")
    g_variant_parse :: proc(type: ^GVariantType, text: cstring, limit: cstring, endptr: ^cstring, error: ^^GError) -> ^GVariant ---

    @(link_name = "g_variant_new_parsed")
    g_variant_new_parsed :: proc(format: cstring, #c_vararg var_args: ..any) -> ^GVariant ---

    @(link_name = "g_variant_new_parsed_va")
    g_variant_new_parsed_va :: proc(format: cstring, #c_vararg var_args: ..any) -> ^GVariant ---

    @(link_name = "g_variant_parse_error_print_context")
    g_variant_parse_error_print_context :: proc(error: ^GError, source_str: cstring) -> cstring ---

    @(link_name = "g_variant_compare")
    g_variant_compare :: proc(one: gconstpointer, two: gconstpointer) -> gint ---

    @(link_name = "g_variant_dict_new")
    g_variant_dict_new :: proc(from_asv: ^GVariant) -> ^GVariantDict ---

    @(link_name = "g_variant_dict_init")
    g_variant_dict_init :: proc(dict: ^GVariantDict, from_asv: ^GVariant) ---

    @(link_name = "g_variant_dict_lookup")
    g_variant_dict_lookup :: proc(dict: ^GVariantDict, key: cstring, format_string: cstring, #c_vararg var_args: ..any) -> gboolean ---

    @(link_name = "g_variant_dict_lookup_value")
    g_variant_dict_lookup_value :: proc(dict: ^GVariantDict, key: cstring, expected_type: ^GVariantType) -> ^GVariant ---

    @(link_name = "g_variant_dict_contains")
    g_variant_dict_contains :: proc(dict: ^GVariantDict, key: cstring) -> gboolean ---

    @(link_name = "g_variant_dict_insert")
    g_variant_dict_insert :: proc(dict: ^GVariantDict, key: cstring, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_dict_insert_value")
    g_variant_dict_insert_value :: proc(dict: ^GVariantDict, key: cstring, value: ^GVariant) ---

    @(link_name = "g_variant_dict_remove")
    g_variant_dict_remove :: proc(dict: ^GVariantDict, key: cstring) -> gboolean ---

    @(link_name = "g_variant_dict_clear")
    g_variant_dict_clear :: proc(dict: ^GVariantDict) ---

    @(link_name = "g_variant_dict_end")
    g_variant_dict_end :: proc(dict: ^GVariantDict) -> ^GVariant ---

    @(link_name = "g_variant_dict_ref")
    g_variant_dict_ref :: proc(dict: ^GVariantDict) -> ^GVariantDict ---

    @(link_name = "g_variant_dict_unref")
    g_variant_dict_unref :: proc(dict: ^GVariantDict) ---

    @(link_name = "g_printf_string_upper_bound")
    g_printf_string_upper_bound :: proc(format: cstring, #c_vararg var_args: ..any) -> gsize ---

    @(link_name = "g_log_set_handler")
    g_log_set_handler :: proc(log_domain: cstring, log_levels: GLogLevelFlags, log_func: GLogFunc, user_data: gpointer) -> guint ---

    @(link_name = "g_log_set_handler_full")
    g_log_set_handler_full :: proc(log_domain: cstring, log_levels: GLogLevelFlags, log_func: GLogFunc, user_data: gpointer, destroy: GDestroyNotify) -> guint ---

    @(link_name = "g_log_remove_handler")
    g_log_remove_handler :: proc(log_domain: cstring, handler_id: guint) ---

    @(link_name = "g_log_default_handler")
    g_log_default_handler :: proc(log_domain: cstring, log_level: GLogLevelFlags, message: cstring, unused_data: gpointer) ---

    @(link_name = "g_log_set_default_handler")
    g_log_set_default_handler :: proc(log_func: GLogFunc, user_data: gpointer) -> GLogFunc ---

    @(link_name = "g_log")
    g_log :: proc(log_domain: cstring, log_level: GLogLevelFlags, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_logv")
    g_logv :: proc(log_domain: cstring, log_level: GLogLevelFlags, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_log_set_fatal_mask")
    g_log_set_fatal_mask :: proc(log_domain: cstring, fatal_mask: GLogLevelFlags) -> GLogLevelFlags ---

    @(link_name = "g_log_set_always_fatal")
    g_log_set_always_fatal :: proc(fatal_mask: GLogLevelFlags) -> GLogLevelFlags ---

    @(link_name = "g_log_structured")
    g_log_structured :: proc(log_domain: cstring, log_level: GLogLevelFlags, #c_vararg var_args: ..any) ---

    @(link_name = "g_log_structured_array")
    g_log_structured_array :: proc(log_level: GLogLevelFlags, fields: [^]GLogField, n_fields: gsize) ---

    @(link_name = "g_log_variant")
    g_log_variant :: proc(log_domain: cstring, log_level: GLogLevelFlags, fields: [^]GVariant) ---

    @(link_name = "g_log_set_writer_func")
    g_log_set_writer_func :: proc(func: GLogWriterFunc, user_data: gpointer, user_data_free: GDestroyNotify) ---

    @(link_name = "g_log_writer_supports_color")
    g_log_writer_supports_color :: proc(output_fd: gint) -> gboolean ---

    @(link_name = "g_log_writer_is_journald")
    g_log_writer_is_journald :: proc(output_fd: gint) -> gboolean ---

    @(link_name = "g_log_writer_format_fields")
    g_log_writer_format_fields :: proc(log_level: GLogLevelFlags, fields: [^]GLogField, n_fields: gsize, use_color: gboolean) -> cstring ---

    @(link_name = "g_log_writer_syslog")
    g_log_writer_syslog :: proc(log_level: GLogLevelFlags, fields: [^]GLogField, n_fields: gsize, user_data: gpointer) -> GLogWriterOutput ---

    @(link_name = "g_log_writer_journald")
    g_log_writer_journald :: proc(log_level: GLogLevelFlags, fields: [^]GLogField, n_fields: gsize, user_data: gpointer) -> GLogWriterOutput ---

    @(link_name = "g_log_writer_standard_streams")
    g_log_writer_standard_streams :: proc(log_level: GLogLevelFlags, fields: [^]GLogField, n_fields: gsize, user_data: gpointer) -> GLogWriterOutput ---

    @(link_name = "g_log_writer_default")
    g_log_writer_default :: proc(log_level: GLogLevelFlags, fields: [^]GLogField, n_fields: gsize, user_data: gpointer) -> GLogWriterOutput ---

    @(link_name = "g_log_writer_default_set_use_stderr")
    g_log_writer_default_set_use_stderr :: proc(use_stderr: gboolean) ---

    @(link_name = "g_log_writer_default_would_drop")
    g_log_writer_default_would_drop :: proc(log_level: GLogLevelFlags, log_domain: cstring) -> gboolean ---

    @(link_name = "g_log_writer_default_set_debug_domains")
    g_log_writer_default_set_debug_domains :: proc(domains: [^]cstring) ---

    @(link_name = "g_log_get_debug_enabled")
    g_log_get_debug_enabled :: proc() -> gboolean ---

    @(link_name = "g_log_set_debug_enabled")
    g_log_set_debug_enabled :: proc(enabled: gboolean) ---

    @(link_name = "_g_log_fallback_handler")
    _g_log_fallback_handler :: proc(log_domain: cstring, log_level: GLogLevelFlags, message: cstring, unused_data: gpointer) ---

    @(link_name = "g_return_if_fail_warning")
    g_return_if_fail_warning :: proc(log_domain: cstring, pretty_function: cstring, expression: cstring) ---

    @(link_name = "g_warn_message")
    g_warn_message :: proc(domain: cstring, file: cstring, line: i32, func: cstring, warnexpr: cstring) ---

    @(link_name = "g_assert_warning")
    g_assert_warning :: proc(log_domain: cstring, file: cstring, line: i32, pretty_function: cstring, expression: cstring) ---

    @(link_name = "g_log_structured_standard")
    g_log_structured_standard :: proc(log_domain: cstring, log_level: GLogLevelFlags, file: cstring, line: cstring, func: cstring, message_format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_print")
    g_print :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_set_print_handler")
    g_set_print_handler :: proc(func: GPrintFunc) -> GPrintFunc ---

    @(link_name = "g_printerr")
    g_printerr :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_set_printerr_handler")
    g_set_printerr_handler :: proc(func: GPrintFunc) -> GPrintFunc ---

    @(link_name = "g_option_error_quark")
    g_option_error_quark :: proc() -> GQuark ---

    @(link_name = "g_option_context_new")
    g_option_context_new :: proc(parameter_string: cstring) -> ^GOptionContext ---

    @(link_name = "g_option_context_set_summary")
    g_option_context_set_summary :: proc(context_p: ^GOptionContext, summary: cstring) ---

    @(link_name = "g_option_context_get_summary")
    g_option_context_get_summary :: proc(context_p: ^GOptionContext) -> cstring ---

    @(link_name = "g_option_context_set_description")
    g_option_context_set_description :: proc(context_p: ^GOptionContext, description: cstring) ---

    @(link_name = "g_option_context_get_description")
    g_option_context_get_description :: proc(context_p: ^GOptionContext) -> cstring ---

    @(link_name = "g_option_context_free")
    g_option_context_free :: proc(context_p: ^GOptionContext) ---

    @(link_name = "g_option_context_set_help_enabled")
    g_option_context_set_help_enabled :: proc(context_p: ^GOptionContext, help_enabled: gboolean) ---

    @(link_name = "g_option_context_get_help_enabled")
    g_option_context_get_help_enabled :: proc(context_p: ^GOptionContext) -> gboolean ---

    @(link_name = "g_option_context_set_ignore_unknown_options")
    g_option_context_set_ignore_unknown_options :: proc(context_p: ^GOptionContext, ignore_unknown: gboolean) ---

    @(link_name = "g_option_context_get_ignore_unknown_options")
    g_option_context_get_ignore_unknown_options :: proc(context_p: ^GOptionContext) -> gboolean ---

    @(link_name = "g_option_context_set_strict_posix")
    g_option_context_set_strict_posix :: proc(context_p: ^GOptionContext, strict_posix: gboolean) ---

    @(link_name = "g_option_context_get_strict_posix")
    g_option_context_get_strict_posix :: proc(context_p: ^GOptionContext) -> gboolean ---

    @(link_name = "g_option_context_add_main_entries")
    g_option_context_add_main_entries :: proc(context_p: ^GOptionContext, entries: [^]GOptionEntry, translation_domain: cstring) ---

    @(link_name = "g_option_context_parse")
    g_option_context_parse :: proc(context_p: ^GOptionContext, argc: ^gint, argv: ^^cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_option_context_parse_strv")
    g_option_context_parse_strv :: proc(context_p: ^GOptionContext, arguments: [^]^cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_option_context_set_translate_func")
    g_option_context_set_translate_func :: proc(context_p: ^GOptionContext, func: GTranslateFunc, data: gpointer, destroy_notify: GDestroyNotify) ---

    @(link_name = "g_option_context_set_translation_domain")
    g_option_context_set_translation_domain :: proc(context_p: ^GOptionContext, domain: cstring) ---

    @(link_name = "g_option_context_add_group")
    g_option_context_add_group :: proc(context_p: ^GOptionContext, group: ^GOptionGroup) ---

    @(link_name = "g_option_context_set_main_group")
    g_option_context_set_main_group :: proc(context_p: ^GOptionContext, group: ^GOptionGroup) ---

    @(link_name = "g_option_context_get_main_group")
    g_option_context_get_main_group :: proc(context_p: ^GOptionContext) -> ^GOptionGroup ---

    @(link_name = "g_option_context_get_help")
    g_option_context_get_help :: proc(context_p: ^GOptionContext, main_help: gboolean, group: ^GOptionGroup) -> cstring ---

    @(link_name = "g_option_group_new")
    g_option_group_new :: proc(name: cstring, description: cstring, help_description: cstring, user_data: gpointer, destroy: GDestroyNotify) -> ^GOptionGroup ---

    @(link_name = "g_option_group_set_parse_hooks")
    g_option_group_set_parse_hooks :: proc(group: ^GOptionGroup, pre_parse_func: GOptionParseFunc, post_parse_func: GOptionParseFunc) ---

    @(link_name = "g_option_group_set_error_hook")
    g_option_group_set_error_hook :: proc(group: ^GOptionGroup, error_func: GOptionErrorFunc) ---

    @(link_name = "g_option_group_free")
    g_option_group_free :: proc(group: ^GOptionGroup) ---

    @(link_name = "g_option_group_ref")
    g_option_group_ref :: proc(group: ^GOptionGroup) -> ^GOptionGroup ---

    @(link_name = "g_option_group_unref")
    g_option_group_unref :: proc(group: ^GOptionGroup) ---

    @(link_name = "g_option_group_add_entries")
    g_option_group_add_entries :: proc(group: ^GOptionGroup, entries: [^]GOptionEntry) ---

    @(link_name = "g_option_group_set_translate_func")
    g_option_group_set_translate_func :: proc(group: ^GOptionGroup, func: GTranslateFunc, data: gpointer, destroy_notify: GDestroyNotify) ---

    @(link_name = "g_option_group_set_translation_domain")
    g_option_group_set_translation_domain :: proc(group: ^GOptionGroup, domain: cstring) ---

    @(link_name = "g_path_buf_new")
    g_path_buf_new :: proc() -> ^GPathBuf ---

    @(link_name = "g_path_buf_new_from_path")
    g_path_buf_new_from_path :: proc(path: cstring) -> ^GPathBuf ---

    @(link_name = "g_path_buf_init")
    g_path_buf_init :: proc(buf: ^GPathBuf) -> ^GPathBuf ---

    @(link_name = "g_path_buf_init_from_path")
    g_path_buf_init_from_path :: proc(buf: ^GPathBuf, path: cstring) -> ^GPathBuf ---

    @(link_name = "g_path_buf_clear")
    g_path_buf_clear :: proc(buf: ^GPathBuf) ---

    @(link_name = "g_path_buf_clear_to_path")
    g_path_buf_clear_to_path :: proc(buf: ^GPathBuf) -> cstring ---

    @(link_name = "g_path_buf_free")
    g_path_buf_free :: proc(buf: ^GPathBuf) ---

    @(link_name = "g_path_buf_free_to_path")
    g_path_buf_free_to_path :: proc(buf: ^GPathBuf) -> cstring ---

    @(link_name = "g_path_buf_copy")
    g_path_buf_copy :: proc(buf: ^GPathBuf) -> ^GPathBuf ---

    @(link_name = "g_path_buf_push")
    g_path_buf_push :: proc(buf: ^GPathBuf, path: cstring) -> ^GPathBuf ---

    @(link_name = "g_path_buf_pop")
    g_path_buf_pop :: proc(buf: ^GPathBuf) -> gboolean ---

    @(link_name = "g_path_buf_set_filename")
    g_path_buf_set_filename :: proc(buf: ^GPathBuf, file_name: cstring) -> gboolean ---

    @(link_name = "g_path_buf_set_extension")
    g_path_buf_set_extension :: proc(buf: ^GPathBuf, extension: cstring) -> gboolean ---

    @(link_name = "g_path_buf_to_path")
    g_path_buf_to_path :: proc(buf: ^GPathBuf) -> cstring ---

    @(link_name = "g_path_buf_equal")
    g_path_buf_equal :: proc(v1: gconstpointer, v2: gconstpointer) -> gboolean ---

    @(link_name = "g_pattern_spec_new")
    g_pattern_spec_new :: proc(pattern: cstring) -> ^GPatternSpec ---

    @(link_name = "g_pattern_spec_free")
    g_pattern_spec_free :: proc(pspec: ^GPatternSpec) ---

    @(link_name = "g_pattern_spec_copy")
    g_pattern_spec_copy :: proc(pspec: ^GPatternSpec) -> ^GPatternSpec ---

    @(link_name = "g_pattern_spec_equal")
    g_pattern_spec_equal :: proc(pspec1: ^GPatternSpec, pspec2: ^GPatternSpec) -> gboolean ---

    @(link_name = "g_pattern_spec_match")
    g_pattern_spec_match :: proc(pspec: ^GPatternSpec, string_length: gsize, string_p: cstring, string_reversed: cstring) -> gboolean ---

    @(link_name = "g_pattern_spec_match_string")
    g_pattern_spec_match_string :: proc(pspec: ^GPatternSpec, string_p: cstring) -> gboolean ---

    @(link_name = "g_pattern_match")
    g_pattern_match :: proc(pspec: ^GPatternSpec, string_length: guint, string_p: cstring, string_reversed: cstring) -> gboolean ---

    @(link_name = "g_pattern_match_string")
    g_pattern_match_string :: proc(pspec: ^GPatternSpec, string_p: cstring) -> gboolean ---

    @(link_name = "g_pattern_match_simple")
    g_pattern_match_simple :: proc(pattern: cstring, string_p: cstring) -> gboolean ---

    @(link_name = "g_spaced_primes_closest")
    g_spaced_primes_closest :: proc(num: guint) -> guint ---

    @(link_name = "g_qsort_with_data")
    g_qsort_with_data :: proc(pbase: gconstpointer, total_elems: gint, size: gsize, compare_func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_sort_array")
    g_sort_array :: proc(array: rawptr, n_elements: u64, element_size: u64, compare_func: GCompareDataFunc, user_data: rawptr) ---

    @(link_name = "g_queue_new")
    g_queue_new :: proc() -> ^GQueue ---

    @(link_name = "g_queue_free")
    g_queue_free :: proc(queue: ^GQueue) ---

    @(link_name = "g_queue_free_full")
    g_queue_free_full :: proc(queue: ^GQueue, free_func: GDestroyNotify) ---

    @(link_name = "g_queue_init")
    g_queue_init :: proc(queue: ^GQueue) ---

    @(link_name = "g_queue_clear")
    g_queue_clear :: proc(queue: ^GQueue) ---

    @(link_name = "g_queue_is_empty")
    g_queue_is_empty :: proc(queue: ^GQueue) -> gboolean ---

    @(link_name = "g_queue_clear_full")
    g_queue_clear_full :: proc(queue: ^GQueue, free_func: GDestroyNotify) ---

    @(link_name = "g_queue_get_length")
    g_queue_get_length :: proc(queue: ^GQueue) -> guint ---

    @(link_name = "g_queue_reverse")
    g_queue_reverse :: proc(queue: ^GQueue) ---

    @(link_name = "g_queue_copy")
    g_queue_copy :: proc(queue: ^GQueue) -> ^GQueue ---

    @(link_name = "g_queue_foreach")
    g_queue_foreach :: proc(queue: ^GQueue, func: GFunc, user_data: gpointer) ---

    @(link_name = "g_queue_find")
    g_queue_find :: proc(queue: ^GQueue, data: gconstpointer) -> ^GList ---

    @(link_name = "g_queue_find_custom")
    g_queue_find_custom :: proc(queue: ^GQueue, data: gconstpointer, func: GCompareFunc) -> ^GList ---

    @(link_name = "g_queue_sort")
    g_queue_sort :: proc(queue: ^GQueue, compare_func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_queue_push_head")
    g_queue_push_head :: proc(queue: ^GQueue, data: gpointer) ---

    @(link_name = "g_queue_push_tail")
    g_queue_push_tail :: proc(queue: ^GQueue, data: gpointer) ---

    @(link_name = "g_queue_push_nth")
    g_queue_push_nth :: proc(queue: ^GQueue, data: gpointer, n: gint) ---

    @(link_name = "g_queue_pop_head")
    g_queue_pop_head :: proc(queue: ^GQueue) -> gpointer ---

    @(link_name = "g_queue_pop_tail")
    g_queue_pop_tail :: proc(queue: ^GQueue) -> gpointer ---

    @(link_name = "g_queue_pop_nth")
    g_queue_pop_nth :: proc(queue: ^GQueue, n: guint) -> gpointer ---

    @(link_name = "g_queue_peek_head")
    g_queue_peek_head :: proc(queue: ^GQueue) -> gpointer ---

    @(link_name = "g_queue_peek_tail")
    g_queue_peek_tail :: proc(queue: ^GQueue) -> gpointer ---

    @(link_name = "g_queue_peek_nth")
    g_queue_peek_nth :: proc(queue: ^GQueue, n: guint) -> gpointer ---

    @(link_name = "g_queue_index")
    g_queue_index :: proc(queue: ^GQueue, data: gconstpointer) -> gint ---

    @(link_name = "g_queue_remove")
    g_queue_remove :: proc(queue: ^GQueue, data: gconstpointer) -> gboolean ---

    @(link_name = "g_queue_remove_all")
    g_queue_remove_all :: proc(queue: ^GQueue, data: gconstpointer) -> guint ---

    @(link_name = "g_queue_insert_before")
    g_queue_insert_before :: proc(queue: ^GQueue, sibling: ^GList, data: gpointer) ---

    @(link_name = "g_queue_insert_before_link")
    g_queue_insert_before_link :: proc(queue: ^GQueue, sibling: ^GList, link_: ^GList) ---

    @(link_name = "g_queue_insert_after")
    g_queue_insert_after :: proc(queue: ^GQueue, sibling: ^GList, data: gpointer) ---

    @(link_name = "g_queue_insert_after_link")
    g_queue_insert_after_link :: proc(queue: ^GQueue, sibling: ^GList, link_: ^GList) ---

    @(link_name = "g_queue_insert_sorted")
    g_queue_insert_sorted :: proc(queue: ^GQueue, data: gpointer, func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_queue_push_head_link")
    g_queue_push_head_link :: proc(queue: ^GQueue, link_: ^GList) ---

    @(link_name = "g_queue_push_tail_link")
    g_queue_push_tail_link :: proc(queue: ^GQueue, link_: ^GList) ---

    @(link_name = "g_queue_push_nth_link")
    g_queue_push_nth_link :: proc(queue: ^GQueue, n: gint, link_: ^GList) ---

    @(link_name = "g_queue_pop_head_link")
    g_queue_pop_head_link :: proc(queue: ^GQueue) -> ^GList ---

    @(link_name = "g_queue_pop_tail_link")
    g_queue_pop_tail_link :: proc(queue: ^GQueue) -> ^GList ---

    @(link_name = "g_queue_pop_nth_link")
    g_queue_pop_nth_link :: proc(queue: ^GQueue, n: guint) -> ^GList ---

    @(link_name = "g_queue_peek_head_link")
    g_queue_peek_head_link :: proc(queue: ^GQueue) -> ^GList ---

    @(link_name = "g_queue_peek_tail_link")
    g_queue_peek_tail_link :: proc(queue: ^GQueue) -> ^GList ---

    @(link_name = "g_queue_peek_nth_link")
    g_queue_peek_nth_link :: proc(queue: ^GQueue, n: guint) -> ^GList ---

    @(link_name = "g_queue_link_index")
    g_queue_link_index :: proc(queue: ^GQueue, link_: ^GList) -> gint ---

    @(link_name = "g_queue_unlink")
    g_queue_unlink :: proc(queue: ^GQueue, link_: ^GList) ---

    @(link_name = "g_queue_delete_link")
    g_queue_delete_link :: proc(queue: ^GQueue, link_: ^GList) ---

    @(link_name = "g_rand_new_with_seed")
    g_rand_new_with_seed :: proc(seed: guint32) -> ^GRand ---

    @(link_name = "g_rand_new_with_seed_array")
    g_rand_new_with_seed_array :: proc(seed: ^guint32, seed_length: guint) -> ^GRand ---

    @(link_name = "g_rand_new")
    g_rand_new :: proc() -> ^GRand ---

    @(link_name = "g_rand_free")
    g_rand_free :: proc(rand_: ^GRand) ---

    @(link_name = "g_rand_copy")
    g_rand_copy :: proc(rand_: ^GRand) -> ^GRand ---

    @(link_name = "g_rand_set_seed")
    g_rand_set_seed :: proc(rand_: ^GRand, seed: guint32) ---

    @(link_name = "g_rand_set_seed_array")
    g_rand_set_seed_array :: proc(rand_: ^GRand, seed: ^guint32, seed_length: guint) ---

    @(link_name = "g_rand_int")
    g_rand_int :: proc(rand_: ^GRand) -> guint32 ---

    @(link_name = "g_rand_int_range")
    g_rand_int_range :: proc(rand_: ^GRand, begin: gint32, end: gint32) -> gint32 ---

    @(link_name = "g_rand_double")
    g_rand_double :: proc(rand_: ^GRand) -> gdouble ---

    @(link_name = "g_rand_double_range")
    g_rand_double_range :: proc(rand_: ^GRand, begin: gdouble, end: gdouble) -> gdouble ---

    @(link_name = "g_random_set_seed")
    g_random_set_seed :: proc(seed: guint32) ---

    @(link_name = "g_random_int")
    g_random_int :: proc() -> guint32 ---

    @(link_name = "g_random_int_range")
    g_random_int_range :: proc(begin: gint32, end: gint32) -> gint32 ---

    @(link_name = "g_random_double")
    g_random_double :: proc() -> gdouble ---

    @(link_name = "g_random_double_range")
    g_random_double_range :: proc(begin: gdouble, end: gdouble) -> gdouble ---

    @(link_name = "g_rc_box_alloc")
    g_rc_box_alloc :: proc(block_size: gsize) -> gpointer ---

    @(link_name = "g_rc_box_alloc0")
    g_rc_box_alloc0 :: proc(block_size: gsize) -> gpointer ---

    @(link_name = "g_rc_box_dup")
    g_rc_box_dup :: proc(block_size: gsize, mem_block: gconstpointer) -> gpointer ---

    @(link_name = "g_rc_box_acquire")
    g_rc_box_acquire :: proc(mem_block: gpointer) -> gpointer ---

    @(link_name = "g_rc_box_release")
    g_rc_box_release :: proc(mem_block: gpointer) ---

    @(link_name = "g_rc_box_release_full")
    g_rc_box_release_full :: proc(mem_block: gpointer, clear_func: GDestroyNotify) ---

    @(link_name = "g_rc_box_get_size")
    g_rc_box_get_size :: proc(mem_block: gpointer) -> gsize ---

    @(link_name = "g_atomic_rc_box_alloc")
    g_atomic_rc_box_alloc :: proc(block_size: gsize) -> gpointer ---

    @(link_name = "g_atomic_rc_box_alloc0")
    g_atomic_rc_box_alloc0 :: proc(block_size: gsize) -> gpointer ---

    @(link_name = "g_atomic_rc_box_dup")
    g_atomic_rc_box_dup :: proc(block_size: gsize, mem_block: gconstpointer) -> gpointer ---

    @(link_name = "g_atomic_rc_box_acquire")
    g_atomic_rc_box_acquire :: proc(mem_block: gpointer) -> gpointer ---

    @(link_name = "g_atomic_rc_box_release")
    g_atomic_rc_box_release :: proc(mem_block: gpointer) ---

    @(link_name = "g_atomic_rc_box_release_full")
    g_atomic_rc_box_release_full :: proc(mem_block: gpointer, clear_func: GDestroyNotify) ---

    @(link_name = "g_atomic_rc_box_get_size")
    g_atomic_rc_box_get_size :: proc(mem_block: gpointer) -> gsize ---

    @(link_name = "g_ref_count_init")
    g_ref_count_init :: proc(rc: ^grefcount) ---

    @(link_name = "g_ref_count_inc")
    g_ref_count_inc :: proc(rc: ^grefcount) ---

    @(link_name = "g_ref_count_dec")
    g_ref_count_dec :: proc(rc: ^grefcount) -> gboolean ---

    @(link_name = "g_ref_count_compare")
    g_ref_count_compare :: proc(rc: ^grefcount, val: gint) -> gboolean ---

    @(link_name = "g_atomic_ref_count_init")
    g_atomic_ref_count_init :: proc(arc: ^gatomicrefcount) ---

    @(link_name = "g_atomic_ref_count_inc")
    g_atomic_ref_count_inc :: proc(arc: ^gatomicrefcount) ---

    @(link_name = "g_atomic_ref_count_dec")
    g_atomic_ref_count_dec :: proc(arc: ^gatomicrefcount) -> gboolean ---

    @(link_name = "g_atomic_ref_count_compare")
    g_atomic_ref_count_compare :: proc(arc: ^gatomicrefcount, val: gint) -> gboolean ---

    @(link_name = "g_ref_string_new")
    g_ref_string_new :: proc(str: cstring) -> cstring ---

    @(link_name = "g_ref_string_new_len")
    g_ref_string_new_len :: proc(str: cstring, len: gssize) -> cstring ---

    @(link_name = "g_ref_string_new_intern")
    g_ref_string_new_intern :: proc(str: cstring) -> cstring ---

    @(link_name = "g_ref_string_acquire")
    g_ref_string_acquire :: proc(str: cstring) -> cstring ---

    @(link_name = "g_ref_string_release")
    g_ref_string_release :: proc(str: cstring) ---

    @(link_name = "g_ref_string_length")
    g_ref_string_length :: proc(str: cstring) -> gsize ---

    @(link_name = "g_ref_string_equal")
    g_ref_string_equal :: proc(str1: cstring, str2: cstring) -> gboolean ---

    @(link_name = "g_regex_error_quark")
    g_regex_error_quark :: proc() -> GQuark ---

    @(link_name = "g_regex_new")
    g_regex_new :: proc(pattern: cstring, compile_options: GRegexCompileFlags, match_options: GRegexMatchFlags, error: ^^GError) -> ^GRegex ---

    @(link_name = "g_regex_ref")
    g_regex_ref :: proc(regex: ^GRegex) -> ^GRegex ---

    @(link_name = "g_regex_unref")
    g_regex_unref :: proc(regex: ^GRegex) ---

    @(link_name = "g_regex_get_pattern")
    g_regex_get_pattern :: proc(regex: ^GRegex) -> cstring ---

    @(link_name = "g_regex_get_max_backref")
    g_regex_get_max_backref :: proc(regex: ^GRegex) -> gint ---

    @(link_name = "g_regex_get_capture_count")
    g_regex_get_capture_count :: proc(regex: ^GRegex) -> gint ---

    @(link_name = "g_regex_get_has_cr_or_lf")
    g_regex_get_has_cr_or_lf :: proc(regex: ^GRegex) -> gboolean ---

    @(link_name = "g_regex_get_max_lookbehind")
    g_regex_get_max_lookbehind :: proc(regex: ^GRegex) -> gint ---

    @(link_name = "g_regex_get_string_number")
    g_regex_get_string_number :: proc(regex: ^GRegex, name: cstring) -> gint ---

    @(link_name = "g_regex_escape_string")
    g_regex_escape_string :: proc(string_p: cstring, length: gint) -> cstring ---

    @(link_name = "g_regex_escape_nul")
    g_regex_escape_nul :: proc(string_p: cstring, length: gint) -> cstring ---

    @(link_name = "g_regex_get_compile_flags")
    g_regex_get_compile_flags :: proc(regex: ^GRegex) -> GRegexCompileFlags ---

    @(link_name = "g_regex_get_match_flags")
    g_regex_get_match_flags :: proc(regex: ^GRegex) -> GRegexMatchFlags ---

    @(link_name = "g_regex_match_simple")
    g_regex_match_simple :: proc(pattern: cstring, string_p: cstring, compile_options: GRegexCompileFlags, match_options: GRegexMatchFlags) -> gboolean ---

    @(link_name = "g_regex_match")
    g_regex_match :: proc(regex: ^GRegex, string_p: cstring, match_options: GRegexMatchFlags, match_info: ^^GMatchInfo) -> gboolean ---

    @(link_name = "g_regex_match_full")
    g_regex_match_full :: proc(regex: ^GRegex, string_p: cstring, string_len: gssize, start_position: gint, match_options: GRegexMatchFlags, match_info: ^^GMatchInfo, error: ^^GError) -> gboolean ---

    @(link_name = "g_regex_match_all")
    g_regex_match_all :: proc(regex: ^GRegex, string_p: cstring, match_options: GRegexMatchFlags, match_info: ^^GMatchInfo) -> gboolean ---

    @(link_name = "g_regex_match_all_full")
    g_regex_match_all_full :: proc(regex: ^GRegex, string_p: cstring, string_len: gssize, start_position: gint, match_options: GRegexMatchFlags, match_info: ^^GMatchInfo, error: ^^GError) -> gboolean ---

    @(link_name = "g_regex_split_simple")
    g_regex_split_simple :: proc(pattern: cstring, string_p: cstring, compile_options: GRegexCompileFlags, match_options: GRegexMatchFlags) -> ^cstring ---

    @(link_name = "g_regex_split")
    g_regex_split :: proc(regex: ^GRegex, string_p: cstring, match_options: GRegexMatchFlags) -> ^cstring ---

    @(link_name = "g_regex_split_full")
    g_regex_split_full :: proc(regex: ^GRegex, string_p: cstring, string_len: gssize, start_position: gint, match_options: GRegexMatchFlags, max_tokens: gint, error: ^^GError) -> ^cstring ---

    @(link_name = "g_regex_replace")
    g_regex_replace :: proc(regex: ^GRegex, string_p: cstring, string_len: gssize, start_position: gint, replacement: cstring, match_options: GRegexMatchFlags, error: ^^GError) -> cstring ---

    @(link_name = "g_regex_replace_literal")
    g_regex_replace_literal :: proc(regex: ^GRegex, string_p: cstring, string_len: gssize, start_position: gint, replacement: cstring, match_options: GRegexMatchFlags, error: ^^GError) -> cstring ---

    @(link_name = "g_regex_replace_eval")
    g_regex_replace_eval :: proc(regex: ^GRegex, string_p: cstring, string_len: gssize, start_position: gint, match_options: GRegexMatchFlags, eval: GRegexEvalCallback, user_data: gpointer, error: ^^GError) -> cstring ---

    @(link_name = "g_regex_check_replacement")
    g_regex_check_replacement :: proc(replacement: cstring, has_references: [^]gboolean, error: ^^GError) -> gboolean ---

    @(link_name = "g_match_info_get_regex")
    g_match_info_get_regex :: proc(match_info: ^GMatchInfo) -> ^GRegex ---

    @(link_name = "g_match_info_get_string")
    g_match_info_get_string :: proc(match_info: ^GMatchInfo) -> cstring ---

    @(link_name = "g_match_info_ref")
    g_match_info_ref :: proc(match_info: ^GMatchInfo) -> ^GMatchInfo ---

    @(link_name = "g_match_info_unref")
    g_match_info_unref :: proc(match_info: ^GMatchInfo) ---

    @(link_name = "g_match_info_free")
    g_match_info_free :: proc(match_info: ^GMatchInfo) ---

    @(link_name = "g_match_info_next")
    g_match_info_next :: proc(match_info: ^GMatchInfo, error: ^^GError) -> gboolean ---

    @(link_name = "g_match_info_matches")
    g_match_info_matches :: proc(match_info: ^GMatchInfo) -> gboolean ---

    @(link_name = "g_match_info_get_match_count")
    g_match_info_get_match_count :: proc(match_info: ^GMatchInfo) -> gint ---

    @(link_name = "g_match_info_is_partial_match")
    g_match_info_is_partial_match :: proc(match_info: ^GMatchInfo) -> gboolean ---

    @(link_name = "g_match_info_expand_references")
    g_match_info_expand_references :: proc(match_info: ^GMatchInfo, string_to_expand: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_match_info_fetch")
    g_match_info_fetch :: proc(match_info: ^GMatchInfo, match_num: gint) -> cstring ---

    @(link_name = "g_match_info_fetch_pos")
    g_match_info_fetch_pos :: proc(match_info: ^GMatchInfo, match_num: gint, start_pos: [^]gint, end_pos: [^]gint) -> gboolean ---

    @(link_name = "g_match_info_fetch_named")
    g_match_info_fetch_named :: proc(match_info: ^GMatchInfo, name: cstring) -> cstring ---

    @(link_name = "g_match_info_fetch_named_pos")
    g_match_info_fetch_named_pos :: proc(match_info: ^GMatchInfo, name: cstring, start_pos: [^]gint, end_pos: [^]gint) -> gboolean ---

    @(link_name = "g_match_info_fetch_all")
    g_match_info_fetch_all :: proc(match_info: ^GMatchInfo) -> ^cstring ---

    @(link_name = "g_scanner_new")
    g_scanner_new :: proc(config_templ: rawptr) -> ^GScanner ---

    @(link_name = "g_scanner_destroy")
    g_scanner_destroy :: proc(scanner: ^GScanner) ---

    @(link_name = "g_scanner_input_file")
    g_scanner_input_file :: proc(scanner: ^GScanner, input_fd: gint) ---

    @(link_name = "g_scanner_sync_file_offset")
    g_scanner_sync_file_offset :: proc(scanner: ^GScanner) ---

    @(link_name = "g_scanner_input_text")
    g_scanner_input_text :: proc(scanner: ^GScanner, text: cstring, text_len: guint) ---

    @(link_name = "g_scanner_get_next_token")
    g_scanner_get_next_token :: proc(scanner: ^GScanner) -> GTokenType ---

    @(link_name = "g_scanner_peek_next_token")
    g_scanner_peek_next_token :: proc(scanner: ^GScanner) -> GTokenType ---

    @(link_name = "g_scanner_cur_token")
    g_scanner_cur_token :: proc(scanner: ^GScanner) -> GTokenType ---

    @(link_name = "g_scanner_cur_value")
    g_scanner_cur_value :: proc(scanner: ^GScanner) -> GTokenValue ---

    @(link_name = "g_scanner_cur_line")
    g_scanner_cur_line :: proc(scanner: ^GScanner) -> guint ---

    @(link_name = "g_scanner_cur_position")
    g_scanner_cur_position :: proc(scanner: ^GScanner) -> guint ---

    @(link_name = "g_scanner_eof")
    g_scanner_eof :: proc(scanner: ^GScanner) -> gboolean ---

    @(link_name = "g_scanner_set_scope")
    g_scanner_set_scope :: proc(scanner: ^GScanner, scope_id: guint) -> guint ---

    @(link_name = "g_scanner_scope_add_symbol")
    g_scanner_scope_add_symbol :: proc(scanner: ^GScanner, scope_id: guint, symbol: cstring, value: gpointer) ---

    @(link_name = "g_scanner_scope_remove_symbol")
    g_scanner_scope_remove_symbol :: proc(scanner: ^GScanner, scope_id: guint, symbol: cstring) ---

    @(link_name = "g_scanner_scope_lookup_symbol")
    g_scanner_scope_lookup_symbol :: proc(scanner: ^GScanner, scope_id: guint, symbol: cstring) -> gpointer ---

    @(link_name = "g_scanner_scope_foreach_symbol")
    g_scanner_scope_foreach_symbol :: proc(scanner: ^GScanner, scope_id: guint, func: GHFunc, user_data: gpointer) ---

    @(link_name = "g_scanner_lookup_symbol")
    g_scanner_lookup_symbol :: proc(scanner: ^GScanner, symbol: cstring) -> gpointer ---

    @(link_name = "g_scanner_unexp_token")
    g_scanner_unexp_token :: proc(scanner: ^GScanner, expected_token: GTokenType, identifier_spec: cstring, symbol_spec: cstring, symbol_name: cstring, message: cstring, is_error: gint) ---

    @(link_name = "g_scanner_error")
    g_scanner_error :: proc(scanner: ^GScanner, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_scanner_warn")
    g_scanner_warn :: proc(scanner: ^GScanner, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_sequence_new")
    g_sequence_new :: proc(data_destroy: GDestroyNotify) -> ^GSequence ---

    @(link_name = "g_sequence_free")
    g_sequence_free :: proc(seq: ^GSequence) ---

    @(link_name = "g_sequence_get_length")
    g_sequence_get_length :: proc(seq: ^GSequence) -> gint ---

    @(link_name = "g_sequence_foreach")
    g_sequence_foreach :: proc(seq: ^GSequence, func: GFunc, user_data: gpointer) ---

    @(link_name = "g_sequence_foreach_range")
    g_sequence_foreach_range :: proc(begin: ^GSequenceIter, end: ^GSequenceIter, func: GFunc, user_data: gpointer) ---

    @(link_name = "g_sequence_sort")
    g_sequence_sort :: proc(seq: ^GSequence, cmp_func: GCompareDataFunc, cmp_data: gpointer) ---

    @(link_name = "g_sequence_sort_iter")
    g_sequence_sort_iter :: proc(seq: ^GSequence, cmp_func: GSequenceIterCompareFunc, cmp_data: gpointer) ---

    @(link_name = "g_sequence_is_empty")
    g_sequence_is_empty :: proc(seq: ^GSequence) -> gboolean ---

    @(link_name = "g_sequence_get_begin_iter")
    g_sequence_get_begin_iter :: proc(seq: ^GSequence) -> ^GSequenceIter ---

    @(link_name = "g_sequence_get_end_iter")
    g_sequence_get_end_iter :: proc(seq: ^GSequence) -> ^GSequenceIter ---

    @(link_name = "g_sequence_get_iter_at_pos")
    g_sequence_get_iter_at_pos :: proc(seq: ^GSequence, pos: gint) -> ^GSequenceIter ---

    @(link_name = "g_sequence_append")
    g_sequence_append :: proc(seq: ^GSequence, data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_prepend")
    g_sequence_prepend :: proc(seq: ^GSequence, data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_insert_before")
    g_sequence_insert_before :: proc(iter: ^GSequenceIter, data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_move")
    g_sequence_move :: proc(src: ^GSequenceIter, dest: ^GSequenceIter) ---

    @(link_name = "g_sequence_swap")
    g_sequence_swap :: proc(a: ^GSequenceIter, b: ^GSequenceIter) ---

    @(link_name = "g_sequence_insert_sorted")
    g_sequence_insert_sorted :: proc(seq: ^GSequence, data: gpointer, cmp_func: GCompareDataFunc, cmp_data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_insert_sorted_iter")
    g_sequence_insert_sorted_iter :: proc(seq: ^GSequence, data: gpointer, iter_cmp: GSequenceIterCompareFunc, cmp_data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_sort_changed")
    g_sequence_sort_changed :: proc(iter: ^GSequenceIter, cmp_func: GCompareDataFunc, cmp_data: gpointer) ---

    @(link_name = "g_sequence_sort_changed_iter")
    g_sequence_sort_changed_iter :: proc(iter: ^GSequenceIter, iter_cmp: GSequenceIterCompareFunc, cmp_data: gpointer) ---

    @(link_name = "g_sequence_remove")
    g_sequence_remove :: proc(iter: ^GSequenceIter) ---

    @(link_name = "g_sequence_remove_range")
    g_sequence_remove_range :: proc(begin: ^GSequenceIter, end: ^GSequenceIter) ---

    @(link_name = "g_sequence_move_range")
    g_sequence_move_range :: proc(dest: ^GSequenceIter, begin: ^GSequenceIter, end: ^GSequenceIter) ---

    @(link_name = "g_sequence_search")
    g_sequence_search :: proc(seq: ^GSequence, data: gpointer, cmp_func: GCompareDataFunc, cmp_data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_search_iter")
    g_sequence_search_iter :: proc(seq: ^GSequence, data: gpointer, iter_cmp: GSequenceIterCompareFunc, cmp_data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_lookup")
    g_sequence_lookup :: proc(seq: ^GSequence, data: gpointer, cmp_func: GCompareDataFunc, cmp_data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_lookup_iter")
    g_sequence_lookup_iter :: proc(seq: ^GSequence, data: gpointer, iter_cmp: GSequenceIterCompareFunc, cmp_data: gpointer) -> ^GSequenceIter ---

    @(link_name = "g_sequence_get")
    g_sequence_get :: proc(iter: ^GSequenceIter) -> gpointer ---

    @(link_name = "g_sequence_set")
    g_sequence_set :: proc(iter: ^GSequenceIter, data: gpointer) ---

    @(link_name = "g_sequence_iter_is_begin")
    g_sequence_iter_is_begin :: proc(iter: ^GSequenceIter) -> gboolean ---

    @(link_name = "g_sequence_iter_is_end")
    g_sequence_iter_is_end :: proc(iter: ^GSequenceIter) -> gboolean ---

    @(link_name = "g_sequence_iter_next")
    g_sequence_iter_next :: proc(iter: ^GSequenceIter) -> ^GSequenceIter ---

    @(link_name = "g_sequence_iter_prev")
    g_sequence_iter_prev :: proc(iter: ^GSequenceIter) -> ^GSequenceIter ---

    @(link_name = "g_sequence_iter_get_position")
    g_sequence_iter_get_position :: proc(iter: ^GSequenceIter) -> gint ---

    @(link_name = "g_sequence_iter_move")
    g_sequence_iter_move :: proc(iter: ^GSequenceIter, delta: gint) -> ^GSequenceIter ---

    @(link_name = "g_sequence_iter_get_sequence")
    g_sequence_iter_get_sequence :: proc(iter: ^GSequenceIter) -> ^GSequence ---

    @(link_name = "g_sequence_iter_compare")
    g_sequence_iter_compare :: proc(a: ^GSequenceIter, b: ^GSequenceIter) -> gint ---

    @(link_name = "g_sequence_range_get_midpoint")
    g_sequence_range_get_midpoint :: proc(begin: ^GSequenceIter, end: ^GSequenceIter) -> ^GSequenceIter ---

    @(link_name = "g_shell_error_quark")
    g_shell_error_quark :: proc() -> GQuark ---

    @(link_name = "g_shell_quote")
    g_shell_quote :: proc(unquoted_string: cstring) -> cstring ---

    @(link_name = "g_shell_unquote")
    g_shell_unquote :: proc(quoted_string: cstring, error: ^^GError) -> cstring ---

    @(link_name = "g_shell_parse_argv")
    g_shell_parse_argv :: proc(command_line: cstring, argcp: ^gint, argvp: ^^cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_slice_alloc")
    g_slice_alloc :: proc(block_size: gsize) -> gpointer ---

    @(link_name = "g_slice_alloc0")
    g_slice_alloc0 :: proc(block_size: gsize) -> gpointer ---

    @(link_name = "g_slice_copy")
    g_slice_copy :: proc(block_size: gsize, mem_block: gconstpointer) -> gpointer ---

    @(link_name = "g_slice_free1")
    g_slice_free1 :: proc(block_size: gsize, mem_block: gpointer) ---

    @(link_name = "g_slice_free_chain_with_offset")
    g_slice_free_chain_with_offset :: proc(block_size: gsize, mem_chain: gpointer, next_offset: gsize) ---

    @(link_name = "g_slice_set_config")
    g_slice_set_config :: proc(ckey: GSliceConfig, value: gint64) ---

    @(link_name = "g_slice_get_config")
    g_slice_get_config :: proc(ckey: GSliceConfig) -> gint64 ---

    @(link_name = "g_slice_get_config_state")
    g_slice_get_config_state :: proc(ckey: GSliceConfig, address: gint64, n_values: [^]guint) -> ^gint64 ---

    @(link_name = "g_spawn_error_quark")
    g_spawn_error_quark :: proc() -> GQuark ---

    @(link_name = "g_spawn_exit_error_quark")
    g_spawn_exit_error_quark :: proc() -> GQuark ---

    @(link_name = "g_spawn_async")
    g_spawn_async :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: GSpawnFlags, child_setup: GSpawnChildSetupFunc, user_data: gpointer, child_pid: ^GPid, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_async_with_pipes")
    g_spawn_async_with_pipes :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: GSpawnFlags, child_setup: GSpawnChildSetupFunc, user_data: gpointer, child_pid: ^GPid, standard_input: ^gint, standard_output: ^gint, standard_error: ^gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_async_with_pipes_and_fds")
    g_spawn_async_with_pipes_and_fds :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: GSpawnFlags, child_setup: GSpawnChildSetupFunc, user_data: gpointer, stdin_fd: gint, stdout_fd: gint, stderr_fd: gint, source_fds: [^]gint, target_fds: [^]gint, n_fds: gsize, child_pid_out: ^GPid, stdin_pipe_out: ^gint, stdout_pipe_out: ^gint, stderr_pipe_out: ^gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_async_with_fds")
    g_spawn_async_with_fds :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: GSpawnFlags, child_setup: GSpawnChildSetupFunc, user_data: gpointer, child_pid: ^GPid, stdin_fd: gint, stdout_fd: gint, stderr_fd: gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_sync")
    g_spawn_sync :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: GSpawnFlags, child_setup: GSpawnChildSetupFunc, user_data: gpointer, standard_output: ^cstring, standard_error: ^cstring, wait_status: [^]gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_command_line_sync")
    g_spawn_command_line_sync :: proc(command_line: cstring, standard_output: ^cstring, standard_error: ^cstring, wait_status: [^]gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_command_line_async")
    g_spawn_command_line_async :: proc(command_line: cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_check_wait_status")
    g_spawn_check_wait_status :: proc(wait_status: gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_check_exit_status")
    g_spawn_check_exit_status :: proc(wait_status: gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_spawn_close_pid")
    g_spawn_close_pid :: proc(pid: GPid) ---

    @(link_name = "g_string_chunk_new")
    g_string_chunk_new :: proc(size: gsize) -> ^GStringChunk ---

    @(link_name = "g_string_chunk_free")
    g_string_chunk_free :: proc(chunk: ^GStringChunk) ---

    @(link_name = "g_string_chunk_clear")
    g_string_chunk_clear :: proc(chunk: ^GStringChunk) ---

    @(link_name = "g_string_chunk_insert")
    g_string_chunk_insert :: proc(chunk: ^GStringChunk, string_p: cstring) -> cstring ---

    @(link_name = "g_string_chunk_insert_len")
    g_string_chunk_insert_len :: proc(chunk: ^GStringChunk, string_p: cstring, len: gssize) -> cstring ---

    @(link_name = "g_string_chunk_insert_const")
    g_string_chunk_insert_const :: proc(chunk: ^GStringChunk, string_p: cstring) -> cstring ---

    @(link_name = "g_strv_builder_new")
    g_strv_builder_new :: proc() -> ^GStrvBuilder ---

    @(link_name = "g_strv_builder_unref")
    g_strv_builder_unref :: proc(builder: ^GStrvBuilder) ---

    @(link_name = "g_strv_builder_unref_to_strv")
    g_strv_builder_unref_to_strv :: proc(builder: ^GStrvBuilder) -> GStrv ---

    @(link_name = "g_strv_builder_ref")
    g_strv_builder_ref :: proc(builder: ^GStrvBuilder) -> ^GStrvBuilder ---

    @(link_name = "g_strv_builder_add")
    g_strv_builder_add :: proc(builder: ^GStrvBuilder, value: cstring) ---

    @(link_name = "g_strv_builder_addv")
    g_strv_builder_addv :: proc(builder: ^GStrvBuilder, value: ^cstring) ---

    @(link_name = "g_strv_builder_add_many")
    g_strv_builder_add_many :: proc(builder: ^GStrvBuilder, #c_vararg var_args: ..any) ---

    @(link_name = "g_strv_builder_take")
    g_strv_builder_take :: proc(builder: ^GStrvBuilder, value: cstring) ---

    @(link_name = "g_strv_builder_end")
    g_strv_builder_end :: proc(builder: ^GStrvBuilder) -> GStrv ---

    @(link_name = "g_strcmp0")
    g_strcmp0 :: proc(str1: cstring, str2: cstring) -> i32 ---

    @(link_name = "g_test_minimized_result")
    g_test_minimized_result :: proc(minimized_quantity: f64, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_maximized_result")
    g_test_maximized_result :: proc(maximized_quantity: f64, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_init")
    g_test_init :: proc(argc: ^i32, argv: ^^cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_subprocess")
    g_test_subprocess :: proc() -> gboolean ---

    @(link_name = "g_test_run")
    g_test_run :: proc() -> i32 ---

    @(link_name = "g_test_add_func")
    g_test_add_func :: proc(testpath: cstring, test_func: GTestFunc) ---

    @(link_name = "g_test_add_data_func")
    g_test_add_data_func :: proc(testpath: cstring, test_data: gconstpointer, test_func: GTestDataFunc) ---

    @(link_name = "g_test_add_data_func_full")
    g_test_add_data_func_full :: proc(testpath: cstring, test_data: gpointer, test_func: GTestDataFunc, data_free_func: GDestroyNotify) ---

    @(link_name = "g_test_get_path")
    g_test_get_path :: proc() -> cstring ---

    @(link_name = "g_test_fail")
    g_test_fail :: proc() ---

    @(link_name = "g_test_fail_printf")
    g_test_fail_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_incomplete")
    g_test_incomplete :: proc(msg: cstring) ---

    @(link_name = "g_test_incomplete_printf")
    g_test_incomplete_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_skip")
    g_test_skip :: proc(msg: cstring) ---

    @(link_name = "g_test_skip_printf")
    g_test_skip_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_failed")
    g_test_failed :: proc() -> gboolean ---

    @(link_name = "g_test_set_nonfatal_assertions")
    g_test_set_nonfatal_assertions :: proc() ---

    @(link_name = "g_test_disable_crash_reporting")
    g_test_disable_crash_reporting :: proc() ---

    @(link_name = "g_test_message")
    g_test_message :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_bug_base")
    g_test_bug_base :: proc(uri_pattern: cstring) ---

    @(link_name = "g_test_bug")
    g_test_bug :: proc(bug_uri_snippet: cstring) ---

    @(link_name = "g_test_summary")
    g_test_summary :: proc(summary: cstring) ---

    @(link_name = "g_test_timer_start")
    g_test_timer_start :: proc() ---

    @(link_name = "g_test_timer_elapsed")
    g_test_timer_elapsed :: proc() -> f64 ---

    @(link_name = "g_test_timer_last")
    g_test_timer_last :: proc() -> f64 ---

    @(link_name = "g_test_queue_free")
    g_test_queue_free :: proc(gfree_pointer: gpointer) ---

    @(link_name = "g_test_queue_destroy")
    g_test_queue_destroy :: proc(destroy_func: GDestroyNotify, destroy_data: gpointer) ---

    @(link_name = "g_test_trap_fork")
    g_test_trap_fork :: proc(usec_timeout: guint64, test_trap_flags: GTestTrapFlags) -> gboolean ---

    @(link_name = "g_test_trap_subprocess")
    g_test_trap_subprocess :: proc(test_path: cstring, usec_timeout: guint64, test_flags: GTestSubprocessFlags) ---

    @(link_name = "g_test_trap_subprocess_with_envp")
    g_test_trap_subprocess_with_envp :: proc(test_path: cstring, envp: ^cstring, usec_timeout: guint64, test_flags: GTestSubprocessFlags) ---

    @(link_name = "g_test_trap_has_passed")
    g_test_trap_has_passed :: proc() -> gboolean ---

    @(link_name = "g_test_trap_reached_timeout")
    g_test_trap_reached_timeout :: proc() -> gboolean ---

    @(link_name = "g_test_rand_int")
    g_test_rand_int :: proc() -> gint32 ---

    @(link_name = "g_test_rand_int_range")
    g_test_rand_int_range :: proc(begin: gint32, end: gint32) -> gint32 ---

    @(link_name = "g_test_rand_double")
    g_test_rand_double :: proc() -> f64 ---

    @(link_name = "g_test_rand_double_range")
    g_test_rand_double_range :: proc(range_start: f64, range_end: f64) -> f64 ---

    @(link_name = "g_test_create_case")
    g_test_create_case :: proc(test_name: cstring, data_size: gsize, test_data: gconstpointer, data_setup: GTestFixtureFunc, data_test: GTestFixtureFunc, data_teardown: GTestFixtureFunc) -> ^GTestCase ---

    @(link_name = "g_test_create_suite")
    g_test_create_suite :: proc(suite_name: cstring) -> ^GTestSuite ---

    @(link_name = "g_test_get_root")
    g_test_get_root :: proc() -> ^GTestSuite ---

    @(link_name = "g_test_suite_add")
    g_test_suite_add :: proc(suite: ^GTestSuite, test_case: ^GTestCase) ---

    @(link_name = "g_test_suite_add_suite")
    g_test_suite_add_suite :: proc(suite: ^GTestSuite, nestedsuite: ^GTestSuite) ---

    @(link_name = "g_test_run_suite")
    g_test_run_suite :: proc(suite: ^GTestSuite) -> i32 ---

    @(link_name = "g_test_case_free")
    g_test_case_free :: proc(test_case: ^GTestCase) ---

    @(link_name = "g_test_suite_free")
    g_test_suite_free :: proc(suite: ^GTestSuite) ---

    @(link_name = "g_test_trap_assertions")
    g_test_trap_assertions :: proc(domain: cstring, file: cstring, line: i32, func: cstring, assertion_flags: guint64, pattern: cstring) ---

    @(link_name = "g_assertion_message")
    g_assertion_message :: proc(domain: cstring, file: cstring, line: i32, func: cstring, message: cstring) ---

    @(link_name = "g_assertion_message_expr")
    g_assertion_message_expr :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring) ---

    @(link_name = "g_assertion_message_cmpstr")
    g_assertion_message_cmpstr :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: cstring, cmp: cstring, arg2: cstring) ---

    @(link_name = "g_assertion_message_cmpstrv")
    g_assertion_message_cmpstrv :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: ^cstring, arg2: ^cstring, first_wrong_idx: gsize) ---

    @(link_name = "g_assertion_message_cmpint")
    g_assertion_message_cmpint :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: guint64, cmp: cstring, arg2: guint64, numtype: gchar) ---

    @(link_name = "g_assertion_message_cmpnum")
    g_assertion_message_cmpnum :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: [16]byte, cmp: cstring, arg2: [16]byte, numtype: gchar) ---

    @(link_name = "g_assertion_message_error")
    g_assertion_message_error :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, error: ^GError, error_domain: GQuark, error_code: i32) ---

    @(link_name = "g_test_add_vtable")
    g_test_add_vtable :: proc(testpath: cstring, data_size: gsize, test_data: gconstpointer, data_setup: GTestFixtureFunc, data_test: GTestFixtureFunc, data_teardown: GTestFixtureFunc) ---

    @(link_name = "g_test_config_vars")
    g_test_config_vars: [^]GTestConfig

    @(link_name = "g_test_log_type_name")
    g_test_log_type_name :: proc(log_type: GTestLogType) -> cstring ---

    @(link_name = "g_test_log_buffer_new")
    g_test_log_buffer_new :: proc() -> ^GTestLogBuffer ---

    @(link_name = "g_test_log_buffer_free")
    g_test_log_buffer_free :: proc(tbuffer: ^GTestLogBuffer) ---

    @(link_name = "g_test_log_buffer_push")
    g_test_log_buffer_push :: proc(tbuffer: ^GTestLogBuffer, n_bytes: guint, bytes: [^]guint8) ---

    @(link_name = "g_test_log_buffer_pop")
    g_test_log_buffer_pop :: proc(tbuffer: ^GTestLogBuffer) -> ^GTestLogMsg ---

    @(link_name = "g_test_log_msg_free")
    g_test_log_msg_free :: proc(tmsg: ^GTestLogMsg) ---

    @(link_name = "g_test_log_set_fatal_handler")
    g_test_log_set_fatal_handler :: proc(log_func: GTestLogFatalFunc, user_data: gpointer) ---

    @(link_name = "g_test_expect_message")
    g_test_expect_message :: proc(log_domain: cstring, log_level: GLogLevelFlags, pattern: cstring) ---

    @(link_name = "g_test_assert_expected_messages_internal")
    g_test_assert_expected_messages_internal :: proc(domain: cstring, file: cstring, line: i32, func: cstring) ---

    @(link_name = "g_test_build_filename")
    g_test_build_filename :: proc(file_type: GTestFileType, first_path: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_test_get_dir")
    g_test_get_dir :: proc(file_type: GTestFileType) -> cstring ---

    @(link_name = "g_test_get_filename")
    g_test_get_filename :: proc(file_type: GTestFileType, first_path: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_thread_pool_new")
    g_thread_pool_new :: proc(func: GFunc, user_data: gpointer, max_threads: gint, exclusive: gboolean, error: ^^GError) -> ^GThreadPool ---

    @(link_name = "g_thread_pool_new_full")
    g_thread_pool_new_full :: proc(func: GFunc, user_data: gpointer, item_free_func: GDestroyNotify, max_threads: gint, exclusive: gboolean, error: ^^GError) -> ^GThreadPool ---

    @(link_name = "g_thread_pool_free")
    g_thread_pool_free :: proc(pool: ^GThreadPool, immediate: gboolean, wait_: gboolean) ---

    @(link_name = "g_thread_pool_push")
    g_thread_pool_push :: proc(pool: ^GThreadPool, data: gpointer, error: ^^GError) -> gboolean ---

    @(link_name = "g_thread_pool_unprocessed")
    g_thread_pool_unprocessed :: proc(pool: ^GThreadPool) -> guint ---

    @(link_name = "g_thread_pool_set_sort_function")
    g_thread_pool_set_sort_function :: proc(pool: ^GThreadPool, func: GCompareDataFunc, user_data: gpointer) ---

    @(link_name = "g_thread_pool_move_to_front")
    g_thread_pool_move_to_front :: proc(pool: ^GThreadPool, data: gpointer) -> gboolean ---

    @(link_name = "g_thread_pool_set_max_threads")
    g_thread_pool_set_max_threads :: proc(pool: ^GThreadPool, max_threads: gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_thread_pool_get_max_threads")
    g_thread_pool_get_max_threads :: proc(pool: ^GThreadPool) -> gint ---

    @(link_name = "g_thread_pool_get_num_threads")
    g_thread_pool_get_num_threads :: proc(pool: ^GThreadPool) -> guint ---

    @(link_name = "g_thread_pool_set_max_unused_threads")
    g_thread_pool_set_max_unused_threads :: proc(max_threads: gint) ---

    @(link_name = "g_thread_pool_get_max_unused_threads")
    g_thread_pool_get_max_unused_threads :: proc() -> gint ---

    @(link_name = "g_thread_pool_get_num_unused_threads")
    g_thread_pool_get_num_unused_threads :: proc() -> guint ---

    @(link_name = "g_thread_pool_stop_unused_threads")
    g_thread_pool_stop_unused_threads :: proc() ---

    @(link_name = "g_thread_pool_set_max_idle_time")
    g_thread_pool_set_max_idle_time :: proc(interval: guint) ---

    @(link_name = "g_thread_pool_get_max_idle_time")
    g_thread_pool_get_max_idle_time :: proc() -> guint ---

    @(link_name = "g_timer_new")
    g_timer_new :: proc() -> ^GTimer ---

    @(link_name = "g_timer_destroy")
    g_timer_destroy :: proc(timer: ^GTimer) ---

    @(link_name = "g_timer_start")
    g_timer_start :: proc(timer: ^GTimer) ---

    @(link_name = "g_timer_stop")
    g_timer_stop :: proc(timer: ^GTimer) ---

    @(link_name = "g_timer_reset")
    g_timer_reset :: proc(timer: ^GTimer) ---

    @(link_name = "g_timer_continue")
    g_timer_continue :: proc(timer: ^GTimer) ---

    @(link_name = "g_timer_elapsed")
    g_timer_elapsed :: proc(timer: ^GTimer, microseconds: [^]gulong) -> gdouble ---

    @(link_name = "g_timer_is_active")
    g_timer_is_active :: proc(timer: ^GTimer) -> gboolean ---

    @(link_name = "g_usleep")
    g_usleep :: proc(microseconds: gulong) ---

    @(link_name = "g_time_val_add")
    g_time_val_add :: proc(time_: ^GTimeVal, microseconds: glong) ---

    @(link_name = "g_time_val_from_iso8601")
    g_time_val_from_iso8601 :: proc(iso_date: cstring, time_: ^GTimeVal) -> gboolean ---

    @(link_name = "g_time_val_to_iso8601")
    g_time_val_to_iso8601 :: proc(time_: ^GTimeVal) -> cstring ---

    @(link_name = "g_trash_stack_push")
    g_trash_stack_push :: proc(stack_p: ^^GTrashStack, data_p: gpointer) ---

    @(link_name = "g_trash_stack_pop")
    g_trash_stack_pop :: proc(stack_p: ^^GTrashStack) -> gpointer ---

    @(link_name = "g_trash_stack_peek")
    g_trash_stack_peek :: proc(stack_p: ^^GTrashStack) -> gpointer ---

    @(link_name = "g_trash_stack_height")
    g_trash_stack_height :: proc(stack_p: ^^GTrashStack) -> guint ---

    @(link_name = "g_tree_new")
    g_tree_new :: proc(key_compare_func: GCompareFunc) -> ^GTree ---

    @(link_name = "g_tree_new_with_data")
    g_tree_new_with_data :: proc(key_compare_func: GCompareDataFunc, key_compare_data: gpointer) -> ^GTree ---

    @(link_name = "g_tree_new_full")
    g_tree_new_full :: proc(key_compare_func: GCompareDataFunc, key_compare_data: gpointer, key_destroy_func: GDestroyNotify, value_destroy_func: GDestroyNotify) -> ^GTree ---

    @(link_name = "g_tree_node_first")
    g_tree_node_first :: proc(tree: ^GTree) -> ^GTreeNode ---

    @(link_name = "g_tree_node_last")
    g_tree_node_last :: proc(tree: ^GTree) -> ^GTreeNode ---

    @(link_name = "g_tree_node_previous")
    g_tree_node_previous :: proc(node: ^GTreeNode) -> ^GTreeNode ---

    @(link_name = "g_tree_node_next")
    g_tree_node_next :: proc(node: ^GTreeNode) -> ^GTreeNode ---

    @(link_name = "g_tree_ref")
    g_tree_ref :: proc(tree: ^GTree) -> ^GTree ---

    @(link_name = "g_tree_unref")
    g_tree_unref :: proc(tree: ^GTree) ---

    @(link_name = "g_tree_destroy")
    g_tree_destroy :: proc(tree: ^GTree) ---

    @(link_name = "g_tree_insert_node")
    g_tree_insert_node :: proc(tree: ^GTree, key: gpointer, value: gpointer) -> ^GTreeNode ---

    @(link_name = "g_tree_insert")
    g_tree_insert :: proc(tree: ^GTree, key: gpointer, value: gpointer) ---

    @(link_name = "g_tree_replace_node")
    g_tree_replace_node :: proc(tree: ^GTree, key: gpointer, value: gpointer) -> ^GTreeNode ---

    @(link_name = "g_tree_replace")
    g_tree_replace :: proc(tree: ^GTree, key: gpointer, value: gpointer) ---

    @(link_name = "g_tree_remove")
    g_tree_remove :: proc(tree: ^GTree, key: gconstpointer) -> gboolean ---

    @(link_name = "g_tree_remove_all")
    g_tree_remove_all :: proc(tree: ^GTree) ---

    @(link_name = "g_tree_steal")
    g_tree_steal :: proc(tree: ^GTree, key: gconstpointer) -> gboolean ---

    @(link_name = "g_tree_node_key")
    g_tree_node_key :: proc(node: ^GTreeNode) -> gpointer ---

    @(link_name = "g_tree_node_value")
    g_tree_node_value :: proc(node: ^GTreeNode) -> gpointer ---

    @(link_name = "g_tree_lookup_node")
    g_tree_lookup_node :: proc(tree: ^GTree, key: gconstpointer) -> ^GTreeNode ---

    @(link_name = "g_tree_lookup")
    g_tree_lookup :: proc(tree: ^GTree, key: gconstpointer) -> gpointer ---

    @(link_name = "g_tree_lookup_extended")
    g_tree_lookup_extended :: proc(tree: ^GTree, lookup_key: gconstpointer, orig_key: ^gpointer, value: ^gpointer) -> gboolean ---

    @(link_name = "g_tree_foreach")
    g_tree_foreach :: proc(tree: ^GTree, func: GTraverseFunc, user_data: gpointer) ---

    @(link_name = "g_tree_foreach_node")
    g_tree_foreach_node :: proc(tree: ^GTree, func: GTraverseNodeFunc, user_data: gpointer) ---

    @(link_name = "g_tree_traverse")
    g_tree_traverse :: proc(tree: ^GTree, traverse_func: GTraverseFunc, traverse_type: GTraverseType, user_data: gpointer) ---

    @(link_name = "g_tree_search_node")
    g_tree_search_node :: proc(tree: ^GTree, search_func: GCompareFunc, user_data: gconstpointer) -> ^GTreeNode ---

    @(link_name = "g_tree_search")
    g_tree_search :: proc(tree: ^GTree, search_func: GCompareFunc, user_data: gconstpointer) -> gpointer ---

    @(link_name = "g_tree_lower_bound")
    g_tree_lower_bound :: proc(tree: ^GTree, key: gconstpointer) -> ^GTreeNode ---

    @(link_name = "g_tree_upper_bound")
    g_tree_upper_bound :: proc(tree: ^GTree, key: gconstpointer) -> ^GTreeNode ---

    @(link_name = "g_tree_height")
    g_tree_height :: proc(tree: ^GTree) -> gint ---

    @(link_name = "g_tree_nnodes")
    g_tree_nnodes :: proc(tree: ^GTree) -> gint ---

    @(link_name = "g_uri_ref")
    g_uri_ref :: proc(uri: ^GUri) -> ^GUri ---

    @(link_name = "g_uri_unref")
    g_uri_unref :: proc(uri: ^GUri) ---

    @(link_name = "g_uri_split")
    g_uri_split :: proc(uri_ref: cstring, flags: GUriFlags, scheme: ^cstring, userinfo: ^cstring, host: ^cstring, port: ^gint, path: ^cstring, query: ^cstring, fragment: ^cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_uri_split_with_user")
    g_uri_split_with_user :: proc(uri_ref: cstring, flags: GUriFlags, scheme: ^cstring, user: ^cstring, password: ^cstring, auth_params: [^]cstring, host: ^cstring, port: ^gint, path: ^cstring, query: ^cstring, fragment: ^cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_uri_split_network")
    g_uri_split_network :: proc(uri_string: cstring, flags: GUriFlags, scheme: ^cstring, host: ^cstring, port: ^gint, error: ^^GError) -> gboolean ---

    @(link_name = "g_uri_is_valid")
    g_uri_is_valid :: proc(uri_string: cstring, flags: GUriFlags, error: ^^GError) -> gboolean ---

    @(link_name = "g_uri_join")
    g_uri_join :: proc(flags: GUriFlags, scheme: cstring, userinfo: cstring, host: cstring, port: gint, path: cstring, query: cstring, fragment: cstring) -> cstring ---

    @(link_name = "g_uri_join_with_user")
    g_uri_join_with_user :: proc(flags: GUriFlags, scheme: cstring, user: cstring, password: cstring, auth_params: [^]gchar, host: cstring, port: gint, path: cstring, query: cstring, fragment: cstring) -> cstring ---

    @(link_name = "g_uri_parse")
    g_uri_parse :: proc(uri_string: cstring, flags: GUriFlags, error: ^^GError) -> ^GUri ---

    @(link_name = "g_uri_parse_relative")
    g_uri_parse_relative :: proc(base_uri: ^GUri, uri_ref: cstring, flags: GUriFlags, error: ^^GError) -> ^GUri ---

    @(link_name = "g_uri_resolve_relative")
    g_uri_resolve_relative :: proc(base_uri_string: cstring, uri_ref: cstring, flags: GUriFlags, error: ^^GError) -> cstring ---

    @(link_name = "g_uri_build")
    g_uri_build :: proc(flags: GUriFlags, scheme: cstring, userinfo: cstring, host: cstring, port: gint, path: cstring, query: cstring, fragment: cstring) -> ^GUri ---

    @(link_name = "g_uri_build_with_user")
    g_uri_build_with_user :: proc(flags: GUriFlags, scheme: cstring, user: cstring, password: cstring, auth_params: [^]gchar, host: cstring, port: gint, path: cstring, query: cstring, fragment: cstring) -> ^GUri ---

    @(link_name = "g_uri_to_string")
    g_uri_to_string :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_to_string_partial")
    g_uri_to_string_partial :: proc(uri: ^GUri, flags: GUriHideFlags) -> cstring ---

    @(link_name = "g_uri_get_scheme")
    g_uri_get_scheme :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_userinfo")
    g_uri_get_userinfo :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_user")
    g_uri_get_user :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_password")
    g_uri_get_password :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_auth_params")
    g_uri_get_auth_params :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_host")
    g_uri_get_host :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_port")
    g_uri_get_port :: proc(uri: ^GUri) -> gint ---

    @(link_name = "g_uri_get_path")
    g_uri_get_path :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_query")
    g_uri_get_query :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_fragment")
    g_uri_get_fragment :: proc(uri: ^GUri) -> cstring ---

    @(link_name = "g_uri_get_flags")
    g_uri_get_flags :: proc(uri: ^GUri) -> GUriFlags ---

    @(link_name = "g_uri_parse_params")
    g_uri_parse_params :: proc(params: [^]gchar, length: gssize, separators: [^]gchar, flags: GUriParamsFlags, error: ^^GError) -> ^GHashTable ---

    @(link_name = "g_uri_params_iter_init")
    g_uri_params_iter_init :: proc(iter: ^GUriParamsIter, params: [^]gchar, length: gssize, separators: [^]gchar, flags: GUriParamsFlags) ---

    @(link_name = "g_uri_params_iter_next")
    g_uri_params_iter_next :: proc(iter: ^GUriParamsIter, attribute: ^cstring, value: ^cstring, error: ^^GError) -> gboolean ---

    @(link_name = "g_uri_error_quark")
    g_uri_error_quark :: proc() -> GQuark ---

    @(link_name = "g_uri_unescape_string")
    g_uri_unescape_string :: proc(escaped_string: cstring, illegal_characters: cstring) -> cstring ---

    @(link_name = "g_uri_unescape_segment")
    g_uri_unescape_segment :: proc(escaped_string: cstring, escaped_string_end: cstring, illegal_characters: cstring) -> cstring ---

    @(link_name = "g_uri_parse_scheme")
    g_uri_parse_scheme :: proc(uri: cstring) -> cstring ---

    @(link_name = "g_uri_peek_scheme")
    g_uri_peek_scheme :: proc(uri: cstring) -> cstring ---

    @(link_name = "g_uri_escape_string")
    g_uri_escape_string :: proc(unescaped: cstring, reserved_chars_allowed: cstring, allow_utf8: gboolean) -> cstring ---

    @(link_name = "g_uri_unescape_bytes")
    g_uri_unescape_bytes :: proc(escaped_string: cstring, length: gssize, illegal_characters: cstring, error: ^^GError) -> ^GBytes ---

    @(link_name = "g_uri_escape_bytes")
    g_uri_escape_bytes :: proc(unescaped: ^guint8, length: gsize, reserved_chars_allowed: cstring) -> cstring ---

    @(link_name = "g_uuid_string_is_valid")
    g_uuid_string_is_valid :: proc(str: cstring) -> gboolean ---

    @(link_name = "g_uuid_string_random")
    g_uuid_string_random :: proc() -> cstring ---

    @(link_name = "glib_major_version")
    glib_major_version: guint

    @(link_name = "glib_minor_version")
    glib_minor_version: guint

    @(link_name = "glib_micro_version")
    glib_micro_version: guint

    @(link_name = "glib_interface_age")
    glib_interface_age: guint

    @(link_name = "glib_binary_age")
    glib_binary_age: guint

    @(link_name = "glib_check_version")
    glib_check_version :: proc(required_major: guint, required_minor: guint, required_micro: guint) -> cstring ---

    @(link_name = "g_mem_chunk_new")
    g_mem_chunk_new :: proc(name: cstring, atom_size: gint, area_size: gsize, type: gint) -> ^GMemChunk ---

    @(link_name = "g_mem_chunk_destroy")
    g_mem_chunk_destroy :: proc(mem_chunk: ^GMemChunk) ---

    @(link_name = "g_mem_chunk_alloc")
    g_mem_chunk_alloc :: proc(mem_chunk: ^GMemChunk) -> gpointer ---

    @(link_name = "g_mem_chunk_alloc0")
    g_mem_chunk_alloc0 :: proc(mem_chunk: ^GMemChunk) -> gpointer ---

    @(link_name = "g_mem_chunk_free")
    g_mem_chunk_free :: proc(mem_chunk: ^GMemChunk, mem: gpointer) ---

    @(link_name = "g_mem_chunk_clean")
    g_mem_chunk_clean :: proc(mem_chunk: ^GMemChunk) ---

    @(link_name = "g_mem_chunk_reset")
    g_mem_chunk_reset :: proc(mem_chunk: ^GMemChunk) ---

    @(link_name = "g_mem_chunk_print")
    g_mem_chunk_print :: proc(mem_chunk: ^GMemChunk) ---

    @(link_name = "g_mem_chunk_info")
    g_mem_chunk_info :: proc() ---

    @(link_name = "g_blow_chunks")
    g_blow_chunks :: proc() ---

    @(link_name = "g_allocator_new")
    g_allocator_new :: proc(name: cstring, n_preallocs: guint) -> ^GAllocator ---

    @(link_name = "g_allocator_free")
    g_allocator_free :: proc(allocator: ^GAllocator) ---

    @(link_name = "g_list_push_allocator")
    g_list_push_allocator :: proc(allocator: ^GAllocator) ---

    @(link_name = "g_list_pop_allocator")
    g_list_pop_allocator :: proc() ---

    @(link_name = "g_slist_push_allocator")
    g_slist_push_allocator :: proc(allocator: ^GAllocator) ---

    @(link_name = "g_slist_pop_allocator")
    g_slist_pop_allocator :: proc() ---

    @(link_name = "g_node_push_allocator")
    g_node_push_allocator :: proc(allocator: ^GAllocator) ---

    @(link_name = "g_node_pop_allocator")
    g_node_pop_allocator :: proc() ---

    @(link_name = "g_cache_new")
    g_cache_new :: proc(value_new_func: GCacheNewFunc, value_destroy_func: GCacheDestroyFunc, key_dup_func: GCacheDupFunc, key_destroy_func: GCacheDestroyFunc, hash_key_func: GHashFunc, hash_value_func: GHashFunc, key_equal_func: GEqualFunc) -> ^GCache ---

    @(link_name = "g_cache_destroy")
    g_cache_destroy :: proc(cache: ^GCache) ---

    @(link_name = "g_cache_insert")
    g_cache_insert :: proc(cache: ^GCache, key: gpointer) -> gpointer ---

    @(link_name = "g_cache_remove")
    g_cache_remove :: proc(cache: ^GCache, value: gconstpointer) ---

    @(link_name = "g_cache_key_foreach")
    g_cache_key_foreach :: proc(cache: ^GCache, func: GHFunc, user_data: gpointer) ---

    @(link_name = "g_cache_value_foreach")
    g_cache_value_foreach :: proc(cache: ^GCache, func: GHFunc, user_data: gpointer) ---

    @(link_name = "g_completion_new")
    g_completion_new :: proc(func: GCompletionFunc) -> ^GCompletion ---

    @(link_name = "g_completion_add_items")
    g_completion_add_items :: proc(cmp: ^GCompletion, items: [^]GList) ---

    @(link_name = "g_completion_remove_items")
    g_completion_remove_items :: proc(cmp: ^GCompletion, items: [^]GList) ---

    @(link_name = "g_completion_clear_items")
    g_completion_clear_items :: proc(cmp: ^GCompletion) ---

    @(link_name = "g_completion_complete")
    g_completion_complete :: proc(cmp: ^GCompletion, prefix: cstring, new_prefix: ^cstring) -> ^GList ---

    @(link_name = "g_completion_complete_utf8")
    g_completion_complete_utf8 :: proc(cmp: ^GCompletion, prefix: cstring, new_prefix: ^cstring) -> ^GList ---

    @(link_name = "g_completion_set_compare")
    g_completion_set_compare :: proc(cmp: ^GCompletion, strncmp_func: GCompletionStrncmpFunc) ---

    @(link_name = "g_completion_free")
    g_completion_free :: proc(cmp: ^GCompletion) ---

    @(link_name = "g_relation_new")
    g_relation_new :: proc(fields: gint) -> ^GRelation ---

    @(link_name = "g_relation_destroy")
    g_relation_destroy :: proc(relation: ^GRelation) ---

    @(link_name = "g_relation_index")
    g_relation_index :: proc(relation: ^GRelation, field: gint, hash_func: GHashFunc, key_equal_func: GEqualFunc) ---

    @(link_name = "g_relation_insert")
    g_relation_insert :: proc(relation: ^GRelation, #c_vararg var_args: ..any) ---

    @(link_name = "g_relation_delete")
    g_relation_delete :: proc(relation: ^GRelation, key: gconstpointer, field: gint) -> gint ---

    @(link_name = "g_relation_select")
    g_relation_select :: proc(relation: ^GRelation, key: gconstpointer, field: gint) -> ^GTuples ---

    @(link_name = "g_relation_count")
    g_relation_count :: proc(relation: ^GRelation, key: gconstpointer, field: gint) -> gint ---

    @(link_name = "g_relation_exists")
    g_relation_exists :: proc(relation: ^GRelation, #c_vararg var_args: ..any) -> gboolean ---

    @(link_name = "g_relation_print")
    g_relation_print :: proc(relation: ^GRelation) ---

    @(link_name = "g_tuples_destroy")
    g_tuples_destroy :: proc(tuples: [^]GTuples) ---

    @(link_name = "g_tuples_index")
    g_tuples_index :: proc(tuples: [^]GTuples, index_: gint, field: gint) -> gpointer ---

    @(link_name = "g_thread_functions_for_glib_use")
    g_thread_functions_for_glib_use: GThreadFunctions

    @(link_name = "g_thread_use_default_impl")
    g_thread_use_default_impl: gboolean

    @(link_name = "g_thread_gettime")
    g_thread_gettime: #type proc "c" () -> guint64

    @(link_name = "g_thread_create")
    g_thread_create :: proc(func: GThreadFunc, data: gpointer, joinable: gboolean, error: ^^GError) -> ^GThread ---

    @(link_name = "g_thread_create_full")
    g_thread_create_full :: proc(func: GThreadFunc, data: gpointer, stack_size: gulong, joinable: gboolean, bound: gboolean, priority: GThreadPriority, error: ^^GError) -> ^GThread ---

    @(link_name = "g_thread_set_priority")
    g_thread_set_priority :: proc(thread: ^GThread, priority: GThreadPriority) ---

    @(link_name = "g_thread_foreach")
    g_thread_foreach :: proc(thread_func: GFunc, user_data: gpointer) ---

    @(link_name = "g_static_mutex_init")
    g_static_mutex_init :: proc(mutex: ^GStaticMutex) ---

    @(link_name = "g_static_mutex_free")
    g_static_mutex_free :: proc(mutex: ^GStaticMutex) ---

    @(link_name = "g_static_mutex_get_mutex_impl")
    g_static_mutex_get_mutex_impl :: proc(mutex: ^GStaticMutex) -> ^GMutex ---

    @(link_name = "g_static_rec_mutex_init")
    g_static_rec_mutex_init :: proc(mutex: ^GStaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_lock")
    g_static_rec_mutex_lock :: proc(mutex: ^GStaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_trylock")
    g_static_rec_mutex_trylock :: proc(mutex: ^GStaticRecMutex) -> gboolean ---

    @(link_name = "g_static_rec_mutex_unlock")
    g_static_rec_mutex_unlock :: proc(mutex: ^GStaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_lock_full")
    g_static_rec_mutex_lock_full :: proc(mutex: ^GStaticRecMutex, depth: guint) ---

    @(link_name = "g_static_rec_mutex_unlock_full")
    g_static_rec_mutex_unlock_full :: proc(mutex: ^GStaticRecMutex) -> guint ---

    @(link_name = "g_static_rec_mutex_free")
    g_static_rec_mutex_free :: proc(mutex: ^GStaticRecMutex) ---

    @(link_name = "g_static_rw_lock_init")
    g_static_rw_lock_init :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_reader_lock")
    g_static_rw_lock_reader_lock :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_reader_trylock")
    g_static_rw_lock_reader_trylock :: proc(lock: ^GStaticRWLock) -> gboolean ---

    @(link_name = "g_static_rw_lock_reader_unlock")
    g_static_rw_lock_reader_unlock :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_writer_lock")
    g_static_rw_lock_writer_lock :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_writer_trylock")
    g_static_rw_lock_writer_trylock :: proc(lock: ^GStaticRWLock) -> gboolean ---

    @(link_name = "g_static_rw_lock_writer_unlock")
    g_static_rw_lock_writer_unlock :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_free")
    g_static_rw_lock_free :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_private_new")
    g_private_new :: proc(notify: GDestroyNotify) -> ^GPrivate ---

    @(link_name = "g_static_private_init")
    g_static_private_init :: proc(private_key: ^GStaticPrivate) ---

    @(link_name = "g_static_private_get")
    g_static_private_get :: proc(private_key: ^GStaticPrivate) -> gpointer ---

    @(link_name = "g_static_private_set")
    g_static_private_set :: proc(private_key: ^GStaticPrivate, data: gpointer, notify: GDestroyNotify) ---

    @(link_name = "g_static_private_free")
    g_static_private_free :: proc(private_key: ^GStaticPrivate) ---

    @(link_name = "g_once_init_enter_impl")
    g_once_init_enter_impl :: proc(location: ^gsize) -> gboolean ---

    @(link_name = "g_thread_init")
    g_thread_init :: proc(vtable: gpointer) ---

    @(link_name = "g_thread_init_with_errorcheck_mutexes")
    g_thread_init_with_errorcheck_mutexes :: proc(vtable: gpointer) ---

    @(link_name = "g_thread_get_initialized")
    g_thread_get_initialized :: proc() -> gboolean ---

    @(link_name = "g_threads_got_initialized")
    g_threads_got_initialized: gboolean

    @(link_name = "g_mutex_new")
    g_mutex_new :: proc() -> ^GMutex ---

    @(link_name = "g_mutex_free")
    g_mutex_free :: proc(mutex: ^GMutex) ---

    @(link_name = "g_cond_new")
    g_cond_new :: proc() -> ^GCond ---

    @(link_name = "g_cond_free")
    g_cond_free :: proc(cond: ^GCond) ---

    @(link_name = "g_cond_timed_wait")
    g_cond_timed_wait :: proc(cond: ^GCond, mutex: ^GMutex, abs_time: ^GTimeVal) -> gboolean ---

}

when (ODIN_ARCH == .amd64) {

gchar :: i8

}

when (ODIN_ARCH == .arm64) {

gchar :: u8

}

