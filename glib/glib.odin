#+build amd64, arm64
package glib

import "core:c/libc"
import "core:sys/posix"

ANALYZER_ANALYZING :: 0
FALSE :: 0
TRUE :: 1
MINFLOAT :: min(float)
MAXFLOAT :: max(float)
MINDOUBLE :: min(double)
MAXDOUBLE :: max(double)
MINSHORT :: min(short)
MAXSHORT :: max(short)
MAXUSHORT :: max(ushort)
MININT :: min(int_)
MAXINT :: max(int_)
MAXUINT :: max(uint_)
MINLONG :: min(long)
MAXLONG :: max(long)
MAXULONG :: max(ulong)
GINT16_MODIFIER :: "h"
GINT16_FORMAT :: "hi"
GUINT16_FORMAT :: "hu"
GINT32_MODIFIER :: ""
GINT32_FORMAT :: "i"
GUINT32_FORMAT :: "u"
HAVE_GINT64 :: 1
GINT64_MODIFIER :: "l"
GINT64_FORMAT :: "li"
GUINT64_FORMAT :: "lu"
GSIZE_MODIFIER :: "l"
GSSIZE_MODIFIER :: "l"
GSIZE_FORMAT :: "lu"
GSSIZE_FORMAT :: "li"
MAXSIZE :: max(size)
MINSSIZE :: min(ssize)
MAXSSIZE :: max(ssize)
MINOFFSET :: ( (-(0x7fffffffffffffff) - (1)))
MAXOFFSET :: (0x7fffffffffffffff)
GOFFSET_MODIFIER :: "l"
GOFFSET_FORMAT :: "li"
POLLFD_FORMAT :: "%d"
GINTPTR_MODIFIER :: "l"
GINTPTR_FORMAT :: "li"
GUINTPTR_FORMAT :: "lu"
HAVE_ISO_VARARGS :: 1
HAVE_GROWING_STACK :: 0
BYTE_ORDER :: 1234
PID_FORMAT :: "i"
MININT8 :: min(int8)
MAXINT8 :: max(int8)
MAXUINT8 :: max(uint8)
MININT16 :: min(int16)
MAXINT16 :: max(int16)
MAXUINT16 :: max(uint16)
MININT32 :: min(int32)
MAXINT32 :: max(int32)
MAXUINT32 :: max(uint32)
MININT64 :: min(int64)
MAXINT64 :: max(int64)
MAXUINT64 :: max(uint64)
E :: 2.7182818284590451
LN2 :: 0.6931471805599453
LN10 :: 2.3025850929940459
PI :: 3.1415926535897931
PI_2 :: 1.5707963267948966
PI_4 :: 0.7853981633974483
SQRT2 :: 1.4142135623730951
LITTLE_ENDIAN :: 1234
BIG_ENDIAN :: 4321
PDP_ENDIAN :: 3412
IEEE754_FLOAT_BIAS :: (127)
IEEE754_DOUBLE_BIAS :: (1023)
LOG_2_BASE_10 :: (0.30102999566398119521)
OS_INFO_KEY_NAME :: "NAME"
OS_INFO_KEY_PRETTY_NAME :: "PRETTY_NAME"
OS_INFO_KEY_VERSION :: "VERSION"
OS_INFO_KEY_VERSION_CODENAME :: "VERSION_CODENAME"
OS_INFO_KEY_VERSION_ID :: "VERSION_ID"
OS_INFO_KEY_ID :: "ID"
OS_INFO_KEY_HOME_URL :: "HOME_URL"
OS_INFO_KEY_DOCUMENTATION_URL :: "DOCUMENTATION_URL"
OS_INFO_KEY_SUPPORT_URL :: "SUPPORT_URL"
OS_INFO_KEY_BUG_REPORT_URL :: "BUG_REPORT_URL"
OS_INFO_KEY_PRIVACY_POLICY_URL :: "PRIVACY_POLICY_URL"
THREAD_ERROR :: `g_thread_error_quark ()`
TIME_SPAN_DAY :: ((86400000000))
TIME_SPAN_HOR :: ((3600000000))
TIME_SPAN_MINTE :: ((60000000))
TIME_SPAN_SECOND :: ((1000000))
TIME_SPAN_MIISECOND :: ((1000))
BOOKMARK_FILE_ERROR :: `(g_bookmark_file_error_quark ())`
CONVERT_ERROR :: `g_convert_error_quark()`
DATALIST_FLAGS_MASK :: 3
DATE_BAD_JIAN :: 0
DATE_BAD_DAY :: 0
DATE_BAD_YEAR :: 0
FILE_ERROR :: `g_file_error_quark ()`
MEM_ALIGN :: 8
HOOK_FLAG_USER_SHIFT :: `(4)`
PRIORITY_HIGH :: -100
PRIORITY_DEFAULT :: 0
PRIORITY_HIGH_IDLE :: 100
PRIORITY_DEFAULT_IDLE :: 200
PRIORITY_LOW :: 300
SOURCE_REMOVE :: `(0)`
SOURCE_CONTINUE :: `(!(0))`
UNICHAR_MAX_DECOMPOSITION_LENGTH :: 18
STR_DELIMITERS :: "_-|> <."
ASCII_DTOSTR_BUF_SIZE :: (29 + 10)
NUMBER_PARSER_ERROR :: `(g_number_parser_error_quark ())`
IO_CHANNEL_ERROR :: `g_io_channel_error_quark()`
KEY_FILE_ERROR :: `g_key_file_error_quark()`
KEY_FILE_DESKTOP_GROUP :: "Desktop Entry"
KEY_FILE_DESKTOP_KEY_TYPE :: "Type"
KEY_FILE_DESKTOP_KEY_VERSION :: "Version"
KEY_FILE_DESKTOP_KEY_NAME :: "Name"
KEY_FILE_DESKTOP_KEY_GENERIC_NAME :: "GenericName"
KEY_FILE_DESKTOP_KEY_NO_DISPLAY :: "NoDisplay"
KEY_FILE_DESKTOP_KEY_COMMENT :: "Comment"
KEY_FILE_DESKTOP_KEY_ICON :: "Icon"
KEY_FILE_DESKTOP_KEY_HIDDEN :: "Hidden"
KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN :: "OnlyShowIn"
KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN :: "NotShowIn"
KEY_FILE_DESKTOP_KEY_TRY_EXEC :: "TryExec"
KEY_FILE_DESKTOP_KEY_EXEC :: "Exec"
KEY_FILE_DESKTOP_KEY_PATH :: "Path"
KEY_FILE_DESKTOP_KEY_TERMINAL :: "Terminal"
KEY_FILE_DESKTOP_KEY_MIME_TYPE :: "MimeType"
KEY_FILE_DESKTOP_KEY_CATEGORIES :: "Categories"
KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY :: "StartupNotify"
KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS :: "StartupWMClass"
KEY_FILE_DESKTOP_KEY_URL :: "URL"
KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE :: "DBusActivatable"
KEY_FILE_DESKTOP_KEY_ACTIONS :: "Actions"
KEY_FILE_DESKTOP_TYPE_APPLICATION :: "Application"
KEY_FILE_DESKTOP_TYPE_LINK :: "Link"
KEY_FILE_DESKTOP_TYPE_DIRECTORY :: "Directory"
MARKUP_ERROR :: `g_markup_error_quark ()`
VARIANT_TYPE_BOOLEAN :: ( "b")
VARIANT_TYPE_BYTE :: ( "y")
VARIANT_TYPE_INT16 :: ( "n")
VARIANT_TYPE_UINT16 :: ( "q")
VARIANT_TYPE_INT32 :: ( "i")
VARIANT_TYPE_UINT32 :: ( "u")
VARIANT_TYPE_INT64 :: ( "x")
VARIANT_TYPE_UINT64 :: ( "t")
VARIANT_TYPE_DOUBLE :: ( "d")
VARIANT_TYPE_STRING :: ( "s")
VARIANT_TYPE_OBJECT_PATH :: ( "o")
VARIANT_TYPE_SIGNATURE :: ( "g")
VARIANT_TYPE_VARIANT :: ( "v")
VARIANT_TYPE_HANDLE :: ( "h")
VARIANT_TYPE_UNIT :: ( "()")
VARIANT_TYPE_ANY :: ( "*")
VARIANT_TYPE_BASIC :: ( "?")
VARIANT_TYPE_MAYBE :: ( "m*")
VARIANT_TYPE_ARRAY :: ( "a*")
VARIANT_TYPE_TUPLE :: ( "r")
VARIANT_TYPE_DICT_ENTRY :: ( "{?*}")
VARIANT_TYPE_DICTIONARY :: ( "a{?*}")
VARIANT_TYPE_STRING_ARRAY :: ( "as")
VARIANT_TYPE_OBJECT_PATH_ARRAY :: ( "ao")
VARIANT_TYPE_BYTESTRING :: ( "ay")
VARIANT_TYPE_BYTESTRING_ARRAY :: ( "aay")
VARIANT_TYPE_VARDICT :: ( "a{sv}")
VARIANT_PARSE_ERROR :: `(g_variant_parse_error_quark ())`
LOG_LEVEL_USER_SHIFT :: (8)
LOG_FATAL_MASK :: (LogLevelFlags.LOG_FLAG_RECURSION | LogLevelFlags.LOG_LEVEL_ERROR)
LOG_DOMAIN :: ( 0)
OPTION_ERROR :: `(g_option_error_quark ())`
REGEX_ERROR :: `g_regex_error_quark ()`
CSET_A_2_Z :: "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
CSET_a_2_z :: "abcdefghijklmnopqrstuvwxyz"
CSET_DIGITS :: "0123456789"
SHELL_ERROR :: `g_shell_error_quark ()`
SPAWN_ERROR :: `g_spawn_error_quark ()`
SPAWN_EXIT_ERROR :: `g_spawn_exit_error_quark ()`
TEST_OPTION_ISOLATE_DIRS :: "isolate_dirs"
USEC_PER_SEC :: 1000000
URI_RESERVED_CHARS_GENERIC_DELIMITERS :: ":/?#[]@"
URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS :: "!$&'()*+,;="
URI_RESERVED_CHARS_ALLOWED_IN_PATH_ELEMENT :: "!$&'()*+,;=:@"
URI_RESERVED_CHARS_ALLOWED_IN_PATH :: "!$&'()*+,;=:@/"
URI_RESERVED_CHARS_ALLOWED_IN_USERINFO :: "!$&'()*+,;=:"
ALLOC_ONLY :: 1
ALLOC_AND_FREE :: 2
ALLOCATOR_LIST :: 1
ALLOCATOR_SLIST :: 2
ALLOCATOR_NODE :: 3

int8 :: i8
uint8 :: u8
int16 :: i16
uint16 :: u16
int32 :: i32
uint32 :: u32
int64 :: i64
uint64 :: u64
ssize :: i64
size :: u64
offset :: int64
intptr :: i64
uintptr_ :: u64
Pid :: i32
short :: i16
long :: i64
int_ :: i32
boolean :: int_
uchar :: u8
ushort :: u16
ulong :: u64
uint_ :: u32
float :: f32
double :: f64
pointer :: rawptr
constpointer :: rawptr
CompareFunc :: #type proc "c" (a: constpointer, b: constpointer) -> int_
CompareDataFunc :: #type proc "c" (a: constpointer, b: constpointer, user_data: pointer) -> int_
EqualFunc :: #type proc "c" (a: constpointer, b: constpointer) -> boolean
EqualFuncFull :: #type proc "c" (a: constpointer, b: constpointer, user_data: pointer) -> boolean
DestroyNotify :: #type proc "c" (data: pointer)
Func :: #type proc "c" (data: pointer, user_data: pointer)
HashFunc :: #type proc "c" (key: constpointer) -> uint_
HFunc :: #type proc "c" (key: pointer, value: pointer, user_data: pointer)
CopyFunc :: #type proc "c" (src: constpointer, data: pointer) -> pointer
FreeFunc :: #type proc "c" (data: pointer)
TranslateFunc :: #type proc "c" (str: cstring, data: pointer) -> cstring
_GDoubleIEEE754 :: double
DoubleIEEE754 :: _GDoubleIEEE754
_GFloatIEEE754 :: float
FloatIEEE754 :: _GFloatIEEE754
_GTimeVal :: struct {
    tv_sec: long,
    tv_usec: long,
}
TimeVal :: _GTimeVal
refcount :: int_
atomicrefcount :: int_
_GBytes :: rawptr
Bytes :: _GBytes
_GArray :: struct {
    data: ^byte,
    len: uint_,
}
Array :: _GArray
_GByteArray :: struct {
    data: ^uint8,
    len: uint_,
}
ByteArray :: _GByteArray
_GPtrArray :: struct {
    pdata: ^pointer,
    len: uint_,
}
PtrArray :: _GPtrArray
Quark :: uint32
_GError :: struct {
    domain: Quark,
    code: int_,
    message: cstring,
}
Error :: _GError
ErrorInitFunc :: #type proc "c" (error: ^Error)
ErrorCopyFunc :: #type proc "c" (src_error: ^Error, dest_error: ^Error)
ErrorClearFunc :: #type proc "c" (error: ^Error)
UserDirectory :: enum u32 {USER_DIRECTORY_DESKTOP = 0, USER_DIRECTORY_DOCUMENTS = 1, USER_DIRECTORY_DOWNLOAD = 2, USER_DIRECTORY_MUSIC = 3, USER_DIRECTORY_PICTURES = 4, USER_DIRECTORY_PUBLIC_SHARE = 5, USER_DIRECTORY_TEMPLATES = 6, USER_DIRECTORY_VIDEOS = 7, USER_N_DIRECTORIES = 8, }
_GDebugKey :: struct {
    key: cstring,
    value: uint_,
}
DebugKey :: _GDebugKey
FormatSizeFlags :: enum u32 {FORMAT_SIZE_DEFAULT = 0, FORMAT_SIZE_LONG_FORMAT = 1, FORMAT_SIZE_IEC_UNITS = 2, FORMAT_SIZE_BITS = 4, FORMAT_SIZE_ONLY_VALUE = 8, FORMAT_SIZE_ONLY_UNIT = 16, }
VoidFunc :: #type proc "c" ()
ThreadError :: enum u32 {THREAD_ERROR_AGAIN = 0, }
ThreadFunc :: #type proc "c" (data: pointer) -> pointer
ThreadPriority :: enum u32 {THREAD_PRIORITY_LOW = 0, THREAD_PRIORITY_NORMAL = 1, THREAD_PRIORITY_HIGH = 2, THREAD_PRIORITY_URGENT = 3, }
_GThread :: struct {
    func: ThreadFunc,
    data: pointer,
    joinable: boolean,
    priority: ThreadPriority,
}
Thread :: _GThread
_GMutex :: struct #raw_union {p: pointer, i: [2]uint_, }
Mutex :: _GMutex
_GRecMutex :: struct {
    p: pointer,
    i: [2]uint_,
}
RecMutex :: _GRecMutex
_GRWLock :: struct {
    p: pointer,
    i: [2]uint_,
}
RWLock :: _GRWLock
_GCond :: struct {
    p: pointer,
    i: [2]uint_,
}
Cond :: _GCond
_GPrivate :: struct {
    p: pointer,
    notify: DestroyNotify,
    future: [2]pointer,
}
Private :: _GPrivate
OnceStatus :: enum u32 {ONCE_STATUS_NOTCALLED = 0, ONCE_STATUS_PROGRESS = 1, ONCE_STATUS_READY = 2, }
_GOnce :: struct {
    status: OnceStatus,
    retval: pointer,
}
Once :: _GOnce
MutexLocker :: rawptr
RecMutexLocker :: rawptr
RWLockWriterLocker :: rawptr
RWLockReaderLocker :: rawptr
_GAsyncQueue :: rawptr
AsyncQueue :: _GAsyncQueue
_GTimeZone :: rawptr
TimeZone :: _GTimeZone
TimeType :: enum u32 {TIME_TYPE_STANDARD = 0, TIME_TYPE_DAYLIGHT = 1, TIME_TYPE_UNIVERSAL = 2, }
TimeSpan :: int64
_GDateTime :: rawptr
DateTime :: _GDateTime
BookmarkFileError :: enum u32 {BOOKMARK_FILE_ERROR_INVALID_URI = 0, BOOKMARK_FILE_ERROR_INVALID_VALUE = 1, BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED = 2, BOOKMARK_FILE_ERROR_URI_NOT_FOUND = 3, BOOKMARK_FILE_ERROR_READ = 4, BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING = 5, BOOKMARK_FILE_ERROR_WRITE = 6, BOOKMARK_FILE_ERROR_FILE_NOT_FOUND = 7, }
_GBookmarkFile :: rawptr
BookmarkFile :: _GBookmarkFile
ChecksumType :: enum u32 {CHECKSUM_MD5 = 0, CHECKSUM_SHA1 = 1, CHECKSUM_SHA256 = 2, CHECKSUM_SHA512 = 3, CHECKSUM_SHA384 = 4, }
_GChecksum :: rawptr
Checksum :: _GChecksum
ConvertError :: enum u32 {CONVERT_ERROR_NO_CONVERSION = 0, CONVERT_ERROR_ILLEGAL_SEQUENCE = 1, CONVERT_ERROR_FAILED = 2, CONVERT_ERROR_PARTIAL_INPUT = 3, CONVERT_ERROR_BAD_URI = 4, CONVERT_ERROR_NOT_ABSOLUTE_PATH = 5, CONVERT_ERROR_NO_MEMORY = 6, CONVERT_ERROR_EMBEDDED_NUL = 7, }
_GIConv :: rawptr
IConv :: ^_GIConv
_GData :: rawptr
Data :: _GData
DataForeachFunc :: #type proc "c" (key_id: Quark, data: pointer, user_data: pointer)
DuplicateFunc :: #type proc "c" (data: pointer, user_data: pointer) -> pointer
Time :: int32
DateYear :: uint16
DateDay :: uint8
_GDate :: [8]u8
Date :: _GDate
DateDMY :: enum u32 {DATE_DAY = 0, DATE_MONTH = 1, DATE_YEAR = 2, }
DateWeekday :: enum u32 {DATE_BAD_WEEKDAY = 0, DATE_MONDAY = 1, DATE_TUESDAY = 2, DATE_WEDNESDAY = 3, DATE_THURSDAY = 4, DATE_FRIDAY = 5, DATE_SATURDAY = 6, DATE_SUNDAY = 7, }
DateMonth :: enum u32 {DATE_BAD_MONTH = 0, DATE_JANUARY = 1, DATE_FEBRUARY = 2, DATE_MARCH = 3, DATE_APRIL = 4, DATE_MAY = 5, DATE_JUNE = 6, DATE_JULY = 7, DATE_AUGUST = 8, DATE_SEPTEMBER = 9, DATE_OCTOBER = 10, DATE_NOVEMBER = 11, DATE_DECEMBER = 12, }
_GDir :: rawptr
Dir :: _GDir
FileError :: enum u32 {FILE_ERROR_EXIST = 0, FILE_ERROR_ISDIR = 1, FILE_ERROR_ACCES = 2, FILE_ERROR_NAMETOOLONG = 3, FILE_ERROR_NOENT = 4, FILE_ERROR_NOTDIR = 5, FILE_ERROR_NXIO = 6, FILE_ERROR_NODEV = 7, FILE_ERROR_ROFS = 8, FILE_ERROR_TXTBSY = 9, FILE_ERROR_FAULT = 10, FILE_ERROR_LOOP = 11, FILE_ERROR_NOSPC = 12, FILE_ERROR_NOMEM = 13, FILE_ERROR_MFILE = 14, FILE_ERROR_NFILE = 15, FILE_ERROR_BADF = 16, FILE_ERROR_INVAL = 17, FILE_ERROR_PIPE = 18, FILE_ERROR_AGAIN = 19, FILE_ERROR_INTR = 20, FILE_ERROR_IO = 21, FILE_ERROR_PERM = 22, FILE_ERROR_NOSYS = 23, FILE_ERROR_FAILED = 24, }
FileTest :: enum u32 {FILE_TEST_IS_REGULAR = 1, FILE_TEST_IS_SYMLINK = 2, FILE_TEST_IS_DIR = 4, FILE_TEST_IS_EXECUTABLE = 8, FILE_TEST_EXISTS = 16, }
FileSetContentsFlags :: enum u32 {FILE_SET_CONTENTS_NONE = 0, FILE_SET_CONTENTS_CONSISTENT = 1, FILE_SET_CONTENTS_DURABLE = 2, FILE_SET_CONTENTS_ONLY_EXISTING = 4, }
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
MemVTable :: _GMemVTable
Node :: _GNode
TraverseFlags :: enum u32 {TRAVERSE_LEAVES = 1, TRAVERSE_NON_LEAVES = 2, TRAVERSE_ALL = 3, TRAVERSE_MASK = 3, TRAVERSE_LEAFS = 1, TRAVERSE_NON_LEAFS = 2, }
TraverseType :: enum u32 {IN_ORDER = 0, PRE_ORDER = 1, POST_ORDER = 2, LEVEL_ORDER = 3, }
NodeTraverseFunc :: #type proc "c" (node: ^Node, data: pointer) -> boolean
NodeForeachFunc :: #type proc "c" (node: ^Node, data: pointer)
_GNode :: struct {
    data: pointer,
    next: ^Node,
    prev: ^Node,
    parent: ^Node,
    children: ^Node,
}
List :: _GList
_GList :: struct {
    data: pointer,
    next: ^List,
    prev: ^List,
}
_GHashTable :: rawptr
HashTable :: _GHashTable
HRFunc :: #type proc "c" (key: pointer, value: pointer, user_data: pointer) -> boolean
_GHashTableIter :: struct {
    dummy1: pointer,
    dummy2: pointer,
    dummy3: pointer,
    dummy4: i32,
    dummy5: boolean,
    dummy6: pointer,
}
HashTableIter :: _GHashTableIter
_GHmac :: rawptr
Hmac :: _GHmac
Hook :: _GHook
HookCompareFunc :: #type proc "c" (new_hook: ^Hook, sibling: ^Hook) -> int_
HookFindFunc :: #type proc "c" (hook: ^Hook, data: pointer) -> boolean
HookMarshaller :: #type proc "c" (hook: ^Hook, marshal_data: pointer)
HookCheckMarshaller :: #type proc "c" (hook: ^Hook, marshal_data: pointer) -> boolean
HookFunc :: #type proc "c" (data: pointer)
HookCheckFunc :: #type proc "c" (data: pointer) -> boolean
HookFinalizeFunc :: #type proc "c" (hook_list: rawptr, hook: ^Hook)
HookFlagMask :: enum u32 {HOOK_FLAG_ACTIVE = 1, HOOK_FLAG_IN_CALL = 2, HOOK_FLAG_MASK = 15, }
_GHook :: struct {
    data: pointer,
    next: ^Hook,
    prev: ^Hook,
    ref_count: uint_,
    hook_id: ulong,
    flags: uint_,
    func: pointer,
    destroy: DestroyNotify,
}
_GPollFD :: struct {
    fd: int_,
    events: ushort,
    revents: ushort,
}
PollFD :: _GPollFD
PollFunc :: #type proc "c" (ufds: [^]PollFD, nfsd: uint_, timeout_: int_) -> int_
SList :: _GSList
_GSList :: struct {
    data: pointer,
    next: ^SList,
}
IOCondition :: enum u32 {IO_IN = 1, IO_OUT = 4, IO_PRI = 2, IO_ERR = 8, IO_HUP = 16, IO_NVAL = 32, }
MainContextFlags :: enum u32 {MAIN_CONTEXT_FLAGS_NONE = 0, MAIN_CONTEXT_FLAGS_OWNERLESS_POLLING = 1, }
_GMainContext :: rawptr
MainContext :: _GMainContext
_GMainLoop :: rawptr
MainLoop :: _GMainLoop
Source :: _GSource
_GSourcePrivate :: rawptr
SourcePrivate :: _GSourcePrivate
SourceCallbackFuncs :: _GSourceCallbackFuncs
SourceFuncs :: _GSourceFuncs
SourceFunc :: #type proc "c" (user_data: pointer) -> boolean
SourceOnceFunc :: #type proc "c" (user_data: pointer)
ChildWatchFunc :: #type proc "c" (pid: Pid, wait_status: int_, user_data: pointer)
SourceDisposeFunc :: #type proc "c" (source: ^Source)
_GSource :: struct {
    callback_data: pointer,
    callback_funcs: [^]SourceCallbackFuncs,
    source_funcs: [^]SourceFuncs,
    ref_count: uint_,
    context_m: ^MainContext,
    priority: int_,
    flags: uint_,
    source_id: uint_,
    poll_fds: [^]SList,
    prev: ^Source,
    next: ^Source,
    name: cstring,
    priv: ^SourcePrivate,
}
ref_func_ptr_anon_6 :: #type proc "c" (cb_data: pointer)
unref_func_ptr_anon_7 :: #type proc "c" (cb_data: pointer)
et_func_ptr_anon_8 :: #type proc "c" (cb_data: pointer, source: ^Source, func: ^SourceFunc, data: ^pointer)
_GSourceCallbackFuncs :: struct {
    ref: ref_func_ptr_anon_6,
    unref: unref_func_ptr_anon_7,
    get: et_func_ptr_anon_8,
}
SourceDummyMarshal :: #type proc "c" ()
SourceFuncsPrepareFunc :: #type proc "c" (source: ^Source, timeout_: ^int_) -> boolean
SourceFuncsCheckFunc :: #type proc "c" (source: ^Source) -> boolean
SourceFuncsDispatchFunc :: #type proc "c" (source: ^Source, callback: SourceFunc, user_data: pointer) -> boolean
SourceFuncsFinalizeFunc :: #type proc "c" (source: ^Source)
_GSourceFuncs :: struct {
    prepare: SourceFuncsPrepareFunc,
    check: SourceFuncsCheckFunc,
    dispatch: SourceFuncsDispatchFunc,
    finalize: SourceFuncsFinalizeFunc,
    closure_callback: SourceFunc,
    closure_marshal: SourceDummyMarshal,
}
MainContextPusher :: rawptr
ClearHandleFunc :: #type proc "c" (handle_id: uint_)
unichar :: uint32
unichar2 :: uint16
UnicodeType :: enum u32 {UNICODE_CONTROL = 0, UNICODE_FORMAT = 1, UNICODE_UNASSIGNED = 2, UNICODE_PRIVATE_USE = 3, UNICODE_SURROGATE = 4, UNICODE_LOWERCASE_LETTER = 5, UNICODE_MODIFIER_LETTER = 6, UNICODE_OTHER_LETTER = 7, UNICODE_TITLECASE_LETTER = 8, UNICODE_UPPERCASE_LETTER = 9, UNICODE_SPACING_MARK = 10, UNICODE_ENCLOSING_MARK = 11, UNICODE_NON_SPACING_MARK = 12, UNICODE_DECIMAL_NUMBER = 13, UNICODE_LETTER_NUMBER = 14, UNICODE_OTHER_NUMBER = 15, UNICODE_CONNECT_PUNCTUATION = 16, UNICODE_DASH_PUNCTUATION = 17, UNICODE_CLOSE_PUNCTUATION = 18, UNICODE_FINAL_PUNCTUATION = 19, UNICODE_INITIAL_PUNCTUATION = 20, UNICODE_OTHER_PUNCTUATION = 21, UNICODE_OPEN_PUNCTUATION = 22, UNICODE_CURRENCY_SYMBOL = 23, UNICODE_MODIFIER_SYMBOL = 24, UNICODE_MATH_SYMBOL = 25, UNICODE_OTHER_SYMBOL = 26, UNICODE_LINE_SEPARATOR = 27, UNICODE_PARAGRAPH_SEPARATOR = 28, UNICODE_SPACE_SEPARATOR = 29, }
UnicodeBreakType :: enum u32 {UNICODE_BREAK_MANDATORY = 0, UNICODE_BREAK_CARRIAGE_RETURN = 1, UNICODE_BREAK_LINE_FEED = 2, UNICODE_BREAK_COMBINING_MARK = 3, UNICODE_BREAK_SURROGATE = 4, UNICODE_BREAK_ZERO_WIDTH_SPACE = 5, UNICODE_BREAK_INSEPARABLE = 6, UNICODE_BREAK_NON_BREAKING_GLUE = 7, UNICODE_BREAK_CONTINGENT = 8, UNICODE_BREAK_SPACE = 9, UNICODE_BREAK_AFTER = 10, UNICODE_BREAK_BEFORE = 11, UNICODE_BREAK_BEFORE_AND_AFTER = 12, UNICODE_BREAK_HYPHEN = 13, UNICODE_BREAK_NON_STARTER = 14, UNICODE_BREAK_OPEN_PUNCTUATION = 15, UNICODE_BREAK_CLOSE_PUNCTUATION = 16, UNICODE_BREAK_QUOTATION = 17, UNICODE_BREAK_EXCLAMATION = 18, UNICODE_BREAK_IDEOGRAPHIC = 19, UNICODE_BREAK_NUMERIC = 20, UNICODE_BREAK_INFIX_SEPARATOR = 21, UNICODE_BREAK_SYMBOL = 22, UNICODE_BREAK_ALPHABETIC = 23, UNICODE_BREAK_PREFIX = 24, UNICODE_BREAK_POSTFIX = 25, UNICODE_BREAK_COMPLEX_CONTEXT = 26, UNICODE_BREAK_AMBIGUOUS = 27, UNICODE_BREAK_UNKNOWN = 28, UNICODE_BREAK_NEXT_LINE = 29, UNICODE_BREAK_WORD_JOINER = 30, UNICODE_BREAK_HANGUL_L_JAMO = 31, UNICODE_BREAK_HANGUL_V_JAMO = 32, UNICODE_BREAK_HANGUL_T_JAMO = 33, UNICODE_BREAK_HANGUL_LV_SYLLABLE = 34, UNICODE_BREAK_HANGUL_LVT_SYLLABLE = 35, UNICODE_BREAK_CLOSE_PARANTHESIS = 36, UNICODE_BREAK_CLOSE_PARENTHESIS = 36, UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER = 37, UNICODE_BREAK_HEBREW_LETTER = 38, UNICODE_BREAK_REGIONAL_INDICATOR = 39, UNICODE_BREAK_EMOJI_BASE = 40, UNICODE_BREAK_EMOJI_MODIFIER = 41, UNICODE_BREAK_ZERO_WIDTH_JOINER = 42, UNICODE_BREAK_AKSARA = 43, UNICODE_BREAK_AKSARA_PRE_BASE = 44, UNICODE_BREAK_AKSARA_START = 45, UNICODE_BREAK_VIRAMA_FINAL = 46, UNICODE_BREAK_VIRAMA = 47, }
UnicodeScript :: enum i32 {UNICODE_SCRIPT_INVALID_CODE = -1, UNICODE_SCRIPT_COMMON = 0, UNICODE_SCRIPT_INHERITED = 1, UNICODE_SCRIPT_ARABIC = 2, UNICODE_SCRIPT_ARMENIAN = 3, UNICODE_SCRIPT_BENGALI = 4, UNICODE_SCRIPT_BOPOMOFO = 5, UNICODE_SCRIPT_CHEROKEE = 6, UNICODE_SCRIPT_COPTIC = 7, UNICODE_SCRIPT_CYRILLIC = 8, UNICODE_SCRIPT_DESERET = 9, UNICODE_SCRIPT_DEVANAGARI = 10, UNICODE_SCRIPT_ETHIOPIC = 11, UNICODE_SCRIPT_GEORGIAN = 12, UNICODE_SCRIPT_GOTHIC = 13, UNICODE_SCRIPT_GREEK = 14, UNICODE_SCRIPT_GUJARATI = 15, UNICODE_SCRIPT_GURMUKHI = 16, UNICODE_SCRIPT_HAN = 17, UNICODE_SCRIPT_HANGUL = 18, UNICODE_SCRIPT_HEBREW = 19, UNICODE_SCRIPT_HIRAGANA = 20, UNICODE_SCRIPT_KANNADA = 21, UNICODE_SCRIPT_KATAKANA = 22, UNICODE_SCRIPT_KHMER = 23, UNICODE_SCRIPT_LAO = 24, UNICODE_SCRIPT_LATIN = 25, UNICODE_SCRIPT_MALAYALAM = 26, UNICODE_SCRIPT_MONGOLIAN = 27, UNICODE_SCRIPT_MYANMAR = 28, UNICODE_SCRIPT_OGHAM = 29, UNICODE_SCRIPT_OLD_ITALIC = 30, UNICODE_SCRIPT_ORIYA = 31, UNICODE_SCRIPT_RUNIC = 32, UNICODE_SCRIPT_SINHALA = 33, UNICODE_SCRIPT_SYRIAC = 34, UNICODE_SCRIPT_TAMIL = 35, UNICODE_SCRIPT_TELUGU = 36, UNICODE_SCRIPT_THAANA = 37, UNICODE_SCRIPT_THAI = 38, UNICODE_SCRIPT_TIBETAN = 39, UNICODE_SCRIPT_CANADIAN_ABORIGINAL = 40, UNICODE_SCRIPT_YI = 41, UNICODE_SCRIPT_TAGALOG = 42, UNICODE_SCRIPT_HANUNOO = 43, UNICODE_SCRIPT_BUHID = 44, UNICODE_SCRIPT_TAGBANWA = 45, UNICODE_SCRIPT_BRAILLE = 46, UNICODE_SCRIPT_CYPRIOT = 47, UNICODE_SCRIPT_LIMBU = 48, UNICODE_SCRIPT_OSMANYA = 49, UNICODE_SCRIPT_SHAVIAN = 50, UNICODE_SCRIPT_LINEAR_B = 51, UNICODE_SCRIPT_TAI_LE = 52, UNICODE_SCRIPT_UGARITIC = 53, UNICODE_SCRIPT_NEW_TAI_LUE = 54, UNICODE_SCRIPT_BUGINESE = 55, UNICODE_SCRIPT_GLAGOLITIC = 56, UNICODE_SCRIPT_TIFINAGH = 57, UNICODE_SCRIPT_SYLOTI_NAGRI = 58, UNICODE_SCRIPT_OLD_PERSIAN = 59, UNICODE_SCRIPT_KHAROSHTHI = 60, UNICODE_SCRIPT_UNKNOWN = 61, UNICODE_SCRIPT_BALINESE = 62, UNICODE_SCRIPT_CUNEIFORM = 63, UNICODE_SCRIPT_PHOENICIAN = 64, UNICODE_SCRIPT_PHAGS_PA = 65, UNICODE_SCRIPT_NKO = 66, UNICODE_SCRIPT_KAYAH_LI = 67, UNICODE_SCRIPT_LEPCHA = 68, UNICODE_SCRIPT_REJANG = 69, UNICODE_SCRIPT_SUNDANESE = 70, UNICODE_SCRIPT_SAURASHTRA = 71, UNICODE_SCRIPT_CHAM = 72, UNICODE_SCRIPT_OL_CHIKI = 73, UNICODE_SCRIPT_VAI = 74, UNICODE_SCRIPT_CARIAN = 75, UNICODE_SCRIPT_LYCIAN = 76, UNICODE_SCRIPT_LYDIAN = 77, UNICODE_SCRIPT_AVESTAN = 78, UNICODE_SCRIPT_BAMUM = 79, UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS = 80, UNICODE_SCRIPT_IMPERIAL_ARAMAIC = 81, UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI = 82, UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN = 83, UNICODE_SCRIPT_JAVANESE = 84, UNICODE_SCRIPT_KAITHI = 85, UNICODE_SCRIPT_LISU = 86, UNICODE_SCRIPT_MEETEI_MAYEK = 87, UNICODE_SCRIPT_OLD_SOUTH_ARABIAN = 88, UNICODE_SCRIPT_OLD_TURKIC = 89, UNICODE_SCRIPT_SAMARITAN = 90, UNICODE_SCRIPT_TAI_THAM = 91, UNICODE_SCRIPT_TAI_VIET = 92, UNICODE_SCRIPT_BATAK = 93, UNICODE_SCRIPT_BRAHMI = 94, UNICODE_SCRIPT_MANDAIC = 95, UNICODE_SCRIPT_CHAKMA = 96, UNICODE_SCRIPT_MEROITIC_CURSIVE = 97, UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS = 98, UNICODE_SCRIPT_MIAO = 99, UNICODE_SCRIPT_SHARADA = 100, UNICODE_SCRIPT_SORA_SOMPENG = 101, UNICODE_SCRIPT_TAKRI = 102, UNICODE_SCRIPT_BASSA_VAH = 103, UNICODE_SCRIPT_CAUCASIAN_ALBANIAN = 104, UNICODE_SCRIPT_DUPLOYAN = 105, UNICODE_SCRIPT_ELBASAN = 106, UNICODE_SCRIPT_GRANTHA = 107, UNICODE_SCRIPT_KHOJKI = 108, UNICODE_SCRIPT_KHUDAWADI = 109, UNICODE_SCRIPT_LINEAR_A = 110, UNICODE_SCRIPT_MAHAJANI = 111, UNICODE_SCRIPT_MANICHAEAN = 112, UNICODE_SCRIPT_MENDE_KIKAKUI = 113, UNICODE_SCRIPT_MODI = 114, UNICODE_SCRIPT_MRO = 115, UNICODE_SCRIPT_NABATAEAN = 116, UNICODE_SCRIPT_OLD_NORTH_ARABIAN = 117, UNICODE_SCRIPT_OLD_PERMIC = 118, UNICODE_SCRIPT_PAHAWH_HMONG = 119, UNICODE_SCRIPT_PALMYRENE = 120, UNICODE_SCRIPT_PAU_CIN_HAU = 121, UNICODE_SCRIPT_PSALTER_PAHLAVI = 122, UNICODE_SCRIPT_SIDDHAM = 123, UNICODE_SCRIPT_TIRHUTA = 124, UNICODE_SCRIPT_WARANG_CITI = 125, UNICODE_SCRIPT_AHOM = 126, UNICODE_SCRIPT_ANATOLIAN_HIEROGLYPHS = 127, UNICODE_SCRIPT_HATRAN = 128, UNICODE_SCRIPT_MULTANI = 129, UNICODE_SCRIPT_OLD_HUNGARIAN = 130, UNICODE_SCRIPT_SIGNWRITING = 131, UNICODE_SCRIPT_ADLAM = 132, UNICODE_SCRIPT_BHAIKSUKI = 133, UNICODE_SCRIPT_MARCHEN = 134, UNICODE_SCRIPT_NEWA = 135, UNICODE_SCRIPT_OSAGE = 136, UNICODE_SCRIPT_TANGUT = 137, UNICODE_SCRIPT_MASARAM_GONDI = 138, UNICODE_SCRIPT_NUSHU = 139, UNICODE_SCRIPT_SOYOMBO = 140, UNICODE_SCRIPT_ZANABAZAR_SQUARE = 141, UNICODE_SCRIPT_DOGRA = 142, UNICODE_SCRIPT_GUNJALA_GONDI = 143, UNICODE_SCRIPT_HANIFI_ROHINGYA = 144, UNICODE_SCRIPT_MAKASAR = 145, UNICODE_SCRIPT_MEDEFAIDRIN = 146, UNICODE_SCRIPT_OLD_SOGDIAN = 147, UNICODE_SCRIPT_SOGDIAN = 148, UNICODE_SCRIPT_ELYMAIC = 149, UNICODE_SCRIPT_NANDINAGARI = 150, UNICODE_SCRIPT_NYIAKENG_PUACHUE_HMONG = 151, UNICODE_SCRIPT_WANCHO = 152, UNICODE_SCRIPT_CHORASMIAN = 153, UNICODE_SCRIPT_DIVES_AKURU = 154, UNICODE_SCRIPT_KHITAN_SMALL_SCRIPT = 155, UNICODE_SCRIPT_YEZIDI = 156, UNICODE_SCRIPT_CYPRO_MINOAN = 157, UNICODE_SCRIPT_OLD_UYGHUR = 158, UNICODE_SCRIPT_TANGSA = 159, UNICODE_SCRIPT_TOTO = 160, UNICODE_SCRIPT_VITHKUQI = 161, UNICODE_SCRIPT_MATH = 162, UNICODE_SCRIPT_KAWI = 163, UNICODE_SCRIPT_NAG_MUNDARI = 164, UNICODE_SCRIPT_TODHRI = 165, UNICODE_SCRIPT_GARAY = 166, UNICODE_SCRIPT_TULU_TIGALARI = 167, UNICODE_SCRIPT_SUNUWAR = 168, UNICODE_SCRIPT_GURUNG_KHEMA = 169, UNICODE_SCRIPT_KIRAT_RAI = 170, UNICODE_SCRIPT_OL_ONAL = 171, }
NormalizeMode :: enum u32 {NORMALIZE_DEFAULT = 0, NORMALIZE_NFD = 0, NORMALIZE_DEFAULT_COMPOSE = 1, NORMALIZE_NFC = 1, NORMALIZE_ALL = 2, NORMALIZE_NFKD = 2, NORMALIZE_ALL_COMPOSE = 3, NORMALIZE_NFKC = 3, }
AsciiType :: enum u32 {ASCII_ALNUM = 1, ASCII_ALPHA = 2, ASCII_CNTRL = 4, ASCII_DIGIT = 8, ASCII_GRAPH = 16, ASCII_LOWER = 32, ASCII_PRINT = 64, ASCII_PUNCT = 128, ASCII_SPACE = 256, ASCII_UPPER = 512, ASCII_XDIGIT = 1024, }
Strv :: ^cstring
NumberParserError :: enum u32 {NUMBER_PARSER_ERROR_INVALID = 0, NUMBER_PARSER_ERROR_OUT_OF_BOUNDS = 1, }
_GString :: struct {
    str: cstring,
    len: size,
    allocated_len: size,
}
String :: _GString
IOStatus :: enum u32 {IO_STATUS_ERROR = 0, IO_STATUS_NORMAL = 1, IO_STATUS_EOF = 2, IO_STATUS_AGAIN = 3, }
io_read_func_ptr_anon_9 :: #type proc "c" (channel: rawptr, buf: ^byte, count: size, bytes_read: ^size, err: ^^Error) -> IOStatus
io_write_func_ptr_anon_10 :: #type proc "c" (channel: rawptr, buf: ^byte, count: size, bytes_written: ^size, err: ^^Error) -> IOStatus
SeekType :: enum u32 {SEEK_CUR = 0, SEEK_SET = 1, SEEK_END = 2, }
io_seek_func_ptr_anon_11 :: #type proc "c" (channel: rawptr, offset_p: int64, type: SeekType, err: ^^Error) -> IOStatus
io_close_func_ptr_anon_12 :: #type proc "c" (channel: rawptr, err: ^^Error) -> IOStatus
io_create_watch_func_ptr_anon_13 :: #type proc "c" (channel: rawptr, condition: IOCondition) -> ^Source
io_free_func_ptr_anon_14 :: #type proc "c" (channel: rawptr)
IOFlags :: enum u32 {IO_FLAG_NONE = 0, IO_FLAG_APPEND = 1, IO_FLAG_NONBLOCK = 2, IO_FLAG_IS_READABLE = 4, IO_FLAG_IS_WRITABLE = 8, IO_FLAG_IS_WRITEABLE = 8, IO_FLAG_IS_SEEKABLE = 16, IO_FLAG_MASK = 31, IO_FLAG_GET_MASK = 31, IO_FLAG_SET_MASK = 3, }
io_set_flags_func_ptr_anon_15 :: #type proc "c" (channel: rawptr, flags: IOFlags, err: ^^Error) -> IOStatus
io_get_flags_func_ptr_anon_16 :: #type proc "c" (channel: rawptr) -> IOFlags
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
IOFuncs :: _GIOFuncs
IOError :: enum u32 {IO_ERROR_NONE = 0, IO_ERROR_AGAIN = 1, IO_ERROR_INVAL = 2, IO_ERROR_UNKNOWN = 3, }
IOChannelError :: enum u32 {IO_CHANNEL_ERROR_FBIG = 0, IO_CHANNEL_ERROR_INVAL = 1, IO_CHANNEL_ERROR_IO = 2, IO_CHANNEL_ERROR_ISDIR = 3, IO_CHANNEL_ERROR_NOSPC = 4, IO_CHANNEL_ERROR_NXIO = 5, IO_CHANNEL_ERROR_OVERFLOW = 6, IO_CHANNEL_ERROR_PIPE = 7, IO_CHANNEL_ERROR_FAILED = 8, }
IOFunc :: #type proc "c" (source: rawptr, condition: IOCondition, data: pointer) -> boolean
KeyFileError :: enum u32 {KEY_FILE_ERROR_UNKNOWN_ENCODING = 0, KEY_FILE_ERROR_PARSE = 1, KEY_FILE_ERROR_NOT_FOUND = 2, KEY_FILE_ERROR_KEY_NOT_FOUND = 3, KEY_FILE_ERROR_GROUP_NOT_FOUND = 4, KEY_FILE_ERROR_INVALID_VALUE = 5, }
_GKeyFile :: rawptr
KeyFile :: _GKeyFile
KeyFileFlags :: enum u32 {KEY_FILE_NONE = 0, KEY_FILE_KEEP_COMMENTS = 1, KEY_FILE_KEEP_TRANSLATIONS = 2, }
_GMappedFile :: rawptr
MappedFile :: _GMappedFile
MarkupError :: enum u32 {MARKUP_ERROR_BAD_UTF8 = 0, MARKUP_ERROR_EMPTY = 1, MARKUP_ERROR_PARSE = 2, MARKUP_ERROR_UNKNOWN_ELEMENT = 3, MARKUP_ERROR_UNKNOWN_ATTRIBUTE = 4, MARKUP_ERROR_INVALID_CONTENT = 5, MARKUP_ERROR_MISSING_ATTRIBUTE = 6, }
MarkupParseFlags :: enum u32 {MARKUP_DEFAULT_FLAGS = 0, MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1, MARKUP_TREAT_CDATA_AS_TEXT = 2, MARKUP_PREFIX_ERROR_POSITION = 4, MARKUP_IGNORE_QUALIFIED = 8, }
_GMarkupParseContext :: rawptr
MarkupParseContext :: _GMarkupParseContext
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
MarkupParser :: _GMarkupParser
MarkupCollectType :: enum u32 {MARKUP_COLLECT_INVALID = 0, MARKUP_COLLECT_STRING = 1, MARKUP_COLLECT_STRDUP = 2, MARKUP_COLLECT_BOOLEAN = 3, MARKUP_COLLECT_TRISTATE = 4, MARKUP_COLLECT_OPTIONAL = 65536, }
_GVariantType :: rawptr
VariantType :: _GVariantType
_GVariant :: rawptr
Variant :: _GVariant
VariantClass :: enum u32 {VARIANT_CLASS_BOOLEAN = 98, VARIANT_CLASS_BYTE = 121, VARIANT_CLASS_INT16 = 110, VARIANT_CLASS_UINT16 = 113, VARIANT_CLASS_INT32 = 105, VARIANT_CLASS_UINT32 = 117, VARIANT_CLASS_INT64 = 120, VARIANT_CLASS_UINT64 = 116, VARIANT_CLASS_HANDLE = 104, VARIANT_CLASS_DOUBLE = 100, VARIANT_CLASS_STRING = 115, VARIANT_CLASS_OBJECT_PATH = 111, VARIANT_CLASS_SIGNATURE = 103, VARIANT_CLASS_VARIANT = 118, VARIANT_CLASS_MAYBE = 109, VARIANT_CLASS_ARRAY = 97, VARIANT_CLASS_TUPLE = 40, VARIANT_CLASS_DICT_ENTRY = 123, }
_GVariantIter :: struct {
    x: [16]uintptr_,
}
VariantIter :: _GVariantIter
s_struct_anon_22 :: struct {
    partial_magic: size,
    type: ^VariantType,
    y: [14]uintptr_,
}
u_union_anon_23 :: struct #raw_union {s: s_struct_anon_22, x: [16]uintptr_, }
_GVariantBuilder :: struct {
    u: u_union_anon_23,
}
VariantBuilder :: _GVariantBuilder
VariantParseError :: enum u32 {VARIANT_PARSE_ERROR_FAILED = 0, VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED = 1, VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE = 2, VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED = 3, VARIANT_PARSE_ERROR_INPUT_NOT_AT_END = 4, VARIANT_PARSE_ERROR_INVALID_CHARACTER = 5, VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING = 6, VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH = 7, VARIANT_PARSE_ERROR_INVALID_SIGNATURE = 8, VARIANT_PARSE_ERROR_INVALID_TYPE_STRING = 9, VARIANT_PARSE_ERROR_NO_COMMON_TYPE = 10, VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE = 11, VARIANT_PARSE_ERROR_NUMBER_TOO_BIG = 12, VARIANT_PARSE_ERROR_TYPE_ERROR = 13, VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN = 14, VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD = 15, VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT = 16, VARIANT_PARSE_ERROR_VALUE_EXPECTED = 17, VARIANT_PARSE_ERROR_RECURSION = 18, }
s_struct_anon_24 :: struct {
    asv: ^Variant,
    partial_magic: size,
    y: [14]uintptr_,
}
u_union_anon_25 :: struct #raw_union {s: s_struct_anon_24, x: [16]uintptr_, }
_GVariantDict :: struct {
    u: u_union_anon_25,
}
VariantDict :: _GVariantDict
LogLevelFlags :: enum i32 {LOG_FLAG_RECURSION = 1, LOG_FLAG_FATAL = 2, LOG_LEVEL_ERROR = 4, LOG_LEVEL_CRITICAL = 8, LOG_LEVEL_WARNING = 16, LOG_LEVEL_MESSAGE = 32, LOG_LEVEL_INFO = 64, LOG_LEVEL_DEBUG = 128, LOG_LEVEL_MASK = -4, }
LogFunc :: #type proc "c" (log_domain: cstring, log_level: LogLevelFlags, message: cstring, user_data: pointer)
LogWriterOutput :: enum u32 {LOG_WRITER_HANDLED = 1, LOG_WRITER_UNHANDLED = 0, }
_GLogField :: struct {
    key: cstring,
    value: constpointer,
    length: ssize,
}
LogField :: _GLogField
LogWriterFunc :: #type proc "c" (log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput
PrintFunc :: #type proc "c" (string_p: cstring)
_GOptionContext :: rawptr
OptionContext :: _GOptionContext
_GOptionGroup :: rawptr
OptionGroup :: _GOptionGroup
OptionArg :: enum u32 {OPTION_ARG_NONE = 0, OPTION_ARG_STRING = 1, OPTION_ARG_INT = 2, OPTION_ARG_CALLBACK = 3, OPTION_ARG_FILENAME = 4, OPTION_ARG_STRING_ARRAY = 5, OPTION_ARG_FILENAME_ARRAY = 6, OPTION_ARG_DOUBLE = 7, OPTION_ARG_INT64 = 8, }
_GOptionEntry :: struct {
    long_name: cstring,
    short_name: char,
    flags: int_,
    arg: OptionArg,
    arg_data: pointer,
    description: cstring,
    arg_description: cstring,
}
OptionEntry :: _GOptionEntry
OptionFlags :: enum u32 {OPTION_FLAG_NONE = 0, OPTION_FLAG_HIDDEN = 1, OPTION_FLAG_IN_MAIN = 2, OPTION_FLAG_REVERSE = 4, OPTION_FLAG_NO_ARG = 8, OPTION_FLAG_FILENAME = 16, OPTION_FLAG_OPTIONAL_ARG = 32, OPTION_FLAG_NOALIAS = 64, }
OptionArgFunc :: #type proc "c" (option_name: cstring, value: cstring, data: pointer, error: ^^Error) -> boolean
OptionParseFunc :: #type proc "c" (context_p: ^OptionContext, group: ^OptionGroup, data: pointer, error: ^^Error) -> boolean
OptionErrorFunc :: #type proc "c" (context_p: ^OptionContext, group: ^OptionGroup, data: pointer, error: ^^Error)
OptionError :: enum u32 {OPTION_ERROR_UNKNOWN_OPTION = 0, OPTION_ERROR_BAD_VALUE = 1, OPTION_ERROR_FAILED = 2, }
_GPathBuf :: struct {
    dummy: [8]pointer,
}
PathBuf :: _GPathBuf
_GPatternSpec :: rawptr
PatternSpec :: _GPatternSpec
_GQueue :: struct {
    head: ^List,
    tail: ^List,
    length: uint_,
}
Queue :: _GQueue
_GRand :: rawptr
Rand :: _GRand
RefString :: char
RegexError :: enum u32 {REGEX_ERROR_COMPILE = 0, REGEX_ERROR_OPTIMIZE = 1, REGEX_ERROR_REPLACE = 2, REGEX_ERROR_MATCH = 3, REGEX_ERROR_INTERNAL = 4, REGEX_ERROR_STRAY_BACKSLASH = 101, REGEX_ERROR_MISSING_CONTROL_CHAR = 102, REGEX_ERROR_UNRECOGNIZED_ESCAPE = 103, REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER = 104, REGEX_ERROR_QUANTIFIER_TOO_BIG = 105, REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS = 106, REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS = 107, REGEX_ERROR_RANGE_OUT_OF_ORDER = 108, REGEX_ERROR_NOTHING_TO_REPEAT = 109, REGEX_ERROR_UNRECOGNIZED_CHARACTER = 112, REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113, REGEX_ERROR_UNMATCHED_PARENTHESIS = 114, REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE = 115, REGEX_ERROR_UNTERMINATED_COMMENT = 118, REGEX_ERROR_EXPRESSION_TOO_LARGE = 120, REGEX_ERROR_MEMORY_ERROR = 121, REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND = 125, REGEX_ERROR_MALFORMED_CONDITION = 126, REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES = 127, REGEX_ERROR_ASSERTION_EXPECTED = 128, REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME = 130, REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131, REGEX_ERROR_HEX_CODE_TOO_LARGE = 134, REGEX_ERROR_INVALID_CONDITION = 135, REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136, REGEX_ERROR_INFINITE_LOOP = 140, REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR = 142, REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME = 143, REGEX_ERROR_MALFORMED_PROPERTY = 146, REGEX_ERROR_UNKNOWN_PROPERTY = 147, REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG = 148, REGEX_ERROR_TOO_MANY_SUBPATTERNS = 149, REGEX_ERROR_INVALID_OCTAL_VALUE = 151, REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE = 154, REGEX_ERROR_DEFINE_REPETION = 155, REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS = 156, REGEX_ERROR_MISSING_BACK_REFERENCE = 157, REGEX_ERROR_INVALID_RELATIVE_REFERENCE = 158, REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159, REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB = 160, REGEX_ERROR_NUMBER_TOO_BIG = 161, REGEX_ERROR_MISSING_SUBPATTERN_NAME = 162, REGEX_ERROR_MISSING_DIGIT = 163, REGEX_ERROR_INVALID_DATA_CHARACTER = 164, REGEX_ERROR_EXTRA_SUBPATTERN_NAME = 165, REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166, REGEX_ERROR_INVALID_CONTROL_CHAR = 168, REGEX_ERROR_MISSING_NAME = 169, REGEX_ERROR_NOT_SUPPORTED_IN_CLASS = 171, REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES = 172, REGEX_ERROR_NAME_TOO_LONG = 175, REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE = 176, }
RegexCompileFlags :: enum u32 {REGEX_DEFAULT = 0, REGEX_CASELESS = 1, REGEX_MULTILINE = 2, REGEX_DOTALL = 4, REGEX_EXTENDED = 8, REGEX_ANCHORED = 16, REGEX_DOLLAR_ENDONLY = 32, REGEX_UNGREEDY = 512, REGEX_RAW = 2048, REGEX_NO_AUTO_CAPTURE = 4096, REGEX_OPTIMIZE = 8192, REGEX_FIRSTLINE = 262144, REGEX_DUPNAMES = 524288, REGEX_NEWLINE_CR = 1048576, REGEX_NEWLINE_LF = 2097152, REGEX_NEWLINE_CRLF = 3145728, REGEX_NEWLINE_ANYCRLF = 5242880, REGEX_BSR_ANYCRLF = 8388608, REGEX_JAVASCRIPT_COMPAT = 33554432, }
RegexMatchFlags :: enum u32 {REGEX_MATCH_DEFAULT = 0, REGEX_MATCH_ANCHORED = 16, REGEX_MATCH_NOTBOL = 128, REGEX_MATCH_NOTEOL = 256, REGEX_MATCH_NOTEMPTY = 1024, REGEX_MATCH_PARTIAL = 32768, REGEX_MATCH_NEWLINE_CR = 1048576, REGEX_MATCH_NEWLINE_LF = 2097152, REGEX_MATCH_NEWLINE_CRLF = 3145728, REGEX_MATCH_NEWLINE_ANY = 4194304, REGEX_MATCH_NEWLINE_ANYCRLF = 5242880, REGEX_MATCH_BSR_ANYCRLF = 8388608, REGEX_MATCH_BSR_ANY = 16777216, REGEX_MATCH_PARTIAL_SOFT = 32768, REGEX_MATCH_PARTIAL_HARD = 134217728, REGEX_MATCH_NOTEMPTY_ATSTART = 268435456, }
_GRegex :: rawptr
Regex :: _GRegex
_GMatchInfo :: rawptr
MatchInfo :: _GMatchInfo
RegexEvalCallback :: #type proc "c" (match_info: ^MatchInfo, result: ^String, user_data: pointer) -> boolean
Scanner :: _GScanner
_GTokenValue :: struct #raw_union {v_symbol: pointer, v_identifier: cstring, v_binary: ulong, v_octal: ulong, v_int: ulong, v_int64: uint64, v_float: double, v_hex: ulong, v_string: cstring, v_comment: cstring, v_char: uchar, v_error: uint_, }
TokenValue :: _GTokenValue
ScannerMsgFunc :: #type proc "c" (scanner: ^Scanner, message: cstring, error: boolean)
ErrorType :: enum u32 {ERR_UNKNOWN = 0, ERR_UNEXP_EOF = 1, ERR_UNEXP_EOF_IN_STRING = 2, ERR_UNEXP_EOF_IN_COMMENT = 3, ERR_NON_DIGIT_IN_CONST = 4, ERR_DIGIT_RADIX = 5, ERR_FLOAT_RADIX = 6, ERR_FLOAT_MALFORMED = 7, }
TokenType :: enum u32 {TOKEN_EOF = 0, TOKEN_LEFT_PAREN = 40, TOKEN_RIGHT_PAREN = 41, TOKEN_LEFT_CURLY = 123, TOKEN_RIGHT_CURLY = 125, TOKEN_LEFT_BRACE = 91, TOKEN_RIGHT_BRACE = 93, TOKEN_EQUAL_SIGN = 61, TOKEN_COMMA = 44, TOKEN_NONE = 256, TOKEN_ERROR = 257, TOKEN_CHAR = 258, TOKEN_BINARY = 259, TOKEN_OCTAL = 260, TOKEN_INT = 261, TOKEN_HEX = 262, TOKEN_FLOAT = 263, TOKEN_STRING = 264, TOKEN_SYMBOL = 265, TOKEN_IDENTIFIER = 266, TOKEN_IDENTIFIER_NULL = 267, TOKEN_COMMENT_SINGLE = 268, TOKEN_COMMENT_MULTI = 269, TOKEN_LAST = 270, }
_GScanner :: struct {
    user_data: pointer,
    max_parse_errors: uint_,
    parse_errors: uint_,
    input_name: cstring,
    qdata: ^Data,
    config: rawptr,
    token: TokenType,
    value: TokenValue,
    line: uint_,
    position: uint_,
    next_token: TokenType,
    next_value: TokenValue,
    next_line: uint_,
    next_position: uint_,
    symbol_table: ^HashTable,
    input_fd: int_,
    text: cstring,
    text_end: cstring,
    buffer: ^byte,
    scope_id: uint_,
    msg_handler: ScannerMsgFunc,
}
_GSequence :: rawptr
Sequence :: _GSequence
_GSequenceNode :: rawptr
SequenceIter :: _GSequenceNode
SequenceIterCompareFunc :: #type proc "c" (a: ^SequenceIter, b: ^SequenceIter, data: pointer) -> int_
ShellError :: enum u32 {SHELL_ERROR_BAD_QUOTING = 0, SHELL_ERROR_EMPTY_STRING = 1, SHELL_ERROR_FAILED = 2, }
SliceConfig :: enum u32 {SLICE_CONFIG_ALWAYS_MALLOC = 1, SLICE_CONFIG_BYPASS_MAGAZINES = 2, SLICE_CONFIG_WORKING_SET_MSECS = 3, SLICE_CONFIG_COLOR_INCREMENT = 4, SLICE_CONFIG_CHUNK_SIZES = 5, SLICE_CONFIG_CONTENTION_COUNTER = 6, }
SpawnError :: enum u32 {SPAWN_ERROR_FORK = 0, SPAWN_ERROR_READ = 1, SPAWN_ERROR_CHDIR = 2, SPAWN_ERROR_ACCES = 3, SPAWN_ERROR_PERM = 4, SPAWN_ERROR_TOO_BIG = 5, SPAWN_ERROR_2BIG = 5, SPAWN_ERROR_NOEXEC = 6, SPAWN_ERROR_NAMETOOLONG = 7, SPAWN_ERROR_NOENT = 8, SPAWN_ERROR_NOMEM = 9, SPAWN_ERROR_NOTDIR = 10, SPAWN_ERROR_LOOP = 11, SPAWN_ERROR_TXTBUSY = 12, SPAWN_ERROR_IO = 13, SPAWN_ERROR_NFILE = 14, SPAWN_ERROR_MFILE = 15, SPAWN_ERROR_INVAL = 16, SPAWN_ERROR_ISDIR = 17, SPAWN_ERROR_LIBBAD = 18, SPAWN_ERROR_FAILED = 19, }
SpawnChildSetupFunc :: #type proc "c" (data: pointer)
SpawnFlags :: enum u32 {SPAWN_DEFAULT = 0, SPAWN_LEAVE_DESCRIPTORS_OPEN = 1, SPAWN_DO_NOT_REAP_CHILD = 2, SPAWN_SEARCH_PATH = 4, SPAWN_STDOUT_TO_DEV_NULL = 8, SPAWN_STDERR_TO_DEV_NULL = 16, SPAWN_CHILD_INHERITS_STDIN = 32, SPAWN_FILE_AND_ARGV_ZERO = 64, SPAWN_SEARCH_PATH_FROM_ENVP = 128, SPAWN_CLOEXEC_PIPES = 256, SPAWN_CHILD_INHERITS_STDOUT = 512, SPAWN_CHILD_INHERITS_STDERR = 1024, SPAWN_STDIN_FROM_DEV_NULL = 2048, }
_GStringChunk :: rawptr
StringChunk :: _GStringChunk
_GStrvBuilder :: rawptr
StrvBuilder :: _GStrvBuilder
TestFunc :: #type proc "c" ()
TestDataFunc :: #type proc "c" (user_data: constpointer)
TestFixtureFunc :: #type proc "c" (fixture: pointer, user_data: constpointer)
TestTrapFlags :: enum u32 {TEST_TRAP_DEFAULT = 0, TEST_TRAP_SILENCE_STDOUT = 128, TEST_TRAP_SILENCE_STDERR = 256, TEST_TRAP_INHERIT_STDIN = 512, }
TestSubprocessFlags :: enum u32 {TEST_SUBPROCESS_DEFAULT = 0, TEST_SUBPROCESS_INHERIT_STDIN = 1, TEST_SUBPROCESS_INHERIT_STDOUT = 2, TEST_SUBPROCESS_INHERIT_STDERR = 4, }
TestConfig :: struct {
    test_initialized: boolean,
    test_quick: boolean,
    test_perf: boolean,
    test_verbose: boolean,
    test_quiet: boolean,
    test_undefined: boolean,
}
TestResult :: enum u32 {TEST_RUN_SUCCESS = 0, TEST_RUN_SKIPPED = 1, TEST_RUN_FAILURE = 2, TEST_RUN_INCOMPLETE = 3, }
TestLogType :: enum u32 {TEST_LOG_NONE = 0, TEST_LOG_ERROR = 1, TEST_LOG_START_BINARY = 2, TEST_LOG_LIST_CASE = 3, TEST_LOG_SKIP_CASE = 4, TEST_LOG_START_CASE = 5, TEST_LOG_STOP_CASE = 6, TEST_LOG_MIN_RESULT = 7, TEST_LOG_MAX_RESULT = 8, TEST_LOG_MESSAGE = 9, TEST_LOG_START_SUITE = 10, TEST_LOG_STOP_SUITE = 11, }
TestLogMsg :: struct {
    log_type: TestLogType,
    n_strings: uint_,
    strings: [^]cstring,
    n_nums: uint_,
    nums: [^][16]byte,
}
TestLogBuffer :: struct {
    data: ^String,
    msgs: [^]SList,
}
TestLogFatalFunc :: #type proc "c" (log_domain: cstring, log_level: LogLevelFlags, message: cstring, user_data: pointer) -> boolean
TestFileType :: enum u32 {TEST_DIST = 0, TEST_BUILT = 1, }
_GThreadPool :: struct {
    func: Func,
    user_data: pointer,
    exclusive: boolean,
}
ThreadPool :: _GThreadPool
_GTimer :: rawptr
Timer :: _GTimer
TrashStack :: _GTrashStack
_GTrashStack :: struct {
    next: ^TrashStack,
}
_GTree :: rawptr
Tree :: _GTree
_GTreeNode :: rawptr
TreeNode :: _GTreeNode
TraverseFunc :: #type proc "c" (key: pointer, value: pointer, data: pointer) -> boolean
TraverseNodeFunc :: #type proc "c" (node: ^TreeNode, data: pointer) -> boolean
_GUri :: rawptr
Uri :: _GUri
UriFlags :: enum u32 {URI_FLAGS_NONE = 0, URI_FLAGS_PARSE_RELAXED = 1, URI_FLAGS_HAS_PASSWORD = 2, URI_FLAGS_HAS_AUTH_PARAMS = 4, URI_FLAGS_ENCODED = 8, URI_FLAGS_NON_DNS = 16, URI_FLAGS_ENCODED_QUERY = 32, URI_FLAGS_ENCODED_PATH = 64, URI_FLAGS_ENCODED_FRAGMENT = 128, URI_FLAGS_SCHEME_NORMALIZE = 256, }
UriHideFlags :: enum u32 {URI_HIDE_NONE = 0, URI_HIDE_USERINFO = 1, URI_HIDE_PASSWORD = 2, URI_HIDE_AUTH_PARAMS = 4, URI_HIDE_QUERY = 8, URI_HIDE_FRAGMENT = 16, }
UriParamsFlags :: enum u32 {URI_PARAMS_NONE = 0, URI_PARAMS_CASE_INSENSITIVE = 1, URI_PARAMS_WWW_FORM = 2, URI_PARAMS_PARSE_RELAXED = 4, }
_GUriParamsIter :: struct {
    dummy0: int_,
    dummy1: pointer,
    dummy2: pointer,
    dummy3: [256]uint8,
}
UriParamsIter :: _GUriParamsIter
UriError :: enum u32 {URI_ERROR_FAILED = 0, URI_ERROR_BAD_SCHEME = 1, URI_ERROR_BAD_USER = 2, URI_ERROR_BAD_PASSWORD = 3, URI_ERROR_BAD_AUTH_PARAMS = 4, URI_ERROR_BAD_HOST = 5, URI_ERROR_BAD_PORT = 6, URI_ERROR_BAD_PATH = 7, URI_ERROR_BAD_QUERY = 8, URI_ERROR_BAD_FRAGMENT = 9, }
_GAllocator :: rawptr
Allocator :: _GAllocator
_GMemChunk :: rawptr
MemChunk :: _GMemChunk
_GCache :: rawptr
Cache :: _GCache
CacheNewFunc :: #type proc "c" (key: pointer) -> pointer
CacheDupFunc :: #type proc "c" (value: pointer) -> pointer
CacheDestroyFunc :: #type proc "c" (value: pointer)
CompletionFunc :: #type proc "c" (item: pointer) -> cstring
CompletionStrncmpFunc :: #type proc "c" (s1: cstring, s2: cstring, n: size) -> int_
_GCompletion :: struct {
    items: [^]List,
    func: CompletionFunc,
    prefix: cstring,
    cache: ^List,
    strncmp_func: CompletionStrncmpFunc,
}
Completion :: _GCompletion
_GRelation :: rawptr
Relation :: _GRelation
_GTuples :: struct {
    len: uint_,
}
Tuples :: _GTuples
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
ThreadFunctions :: _GThreadFunctions
StaticMutex :: struct {
    mutex: ^Mutex,
    unused: posix.pthread_mutex_t,
}
unused_union_anon_47 :: struct #raw_union {owner: posix.pthread_t, dummy: double, }
_GStaticRecMutex :: struct {
    mutex: StaticMutex,
    depth: uint_,
    unused: unused_union_anon_47,
}
StaticRecMutex :: _GStaticRecMutex
_GStaticRWLock :: struct {
    mutex: StaticMutex,
    read_cond: ^Cond,
    write_cond: ^Cond,
    read_counter: uint_,
    have_writer: boolean,
    want_to_read: uint_,
    want_to_write: uint_,
}
StaticRWLock :: _GStaticRWLock
_GStaticPrivate :: struct {
    index: uint_,
}
StaticPrivate :: _GStaticPrivate
AsyncQueue_autoptr :: ^AsyncQueue
AsyncQueue_listautoptr :: ^List
AsyncQueue_slistautoptr :: ^SList
AsyncQueue_queueautoptr :: ^Queue
BookmarkFile_autoptr :: ^BookmarkFile
BookmarkFile_listautoptr :: ^List
BookmarkFile_slistautoptr :: ^SList
BookmarkFile_queueautoptr :: ^Queue
Bytes_autoptr :: ^Bytes
Bytes_listautoptr :: ^List
Bytes_slistautoptr :: ^SList
Bytes_queueautoptr :: ^Queue
Checksum_autoptr :: ^Checksum
Checksum_listautoptr :: ^List
Checksum_slistautoptr :: ^SList
Checksum_queueautoptr :: ^Queue
DateTime_autoptr :: ^DateTime
DateTime_listautoptr :: ^List
DateTime_slistautoptr :: ^SList
DateTime_queueautoptr :: ^Queue
Date_autoptr :: ^Date
Date_listautoptr :: ^List
Date_slistautoptr :: ^SList
Date_queueautoptr :: ^Queue
Dir_autoptr :: ^Dir
Dir_listautoptr :: ^List
Dir_slistautoptr :: ^SList
Dir_queueautoptr :: ^Queue
Error_autoptr :: ^Error
Error_listautoptr :: ^List
Error_slistautoptr :: ^SList
Error_queueautoptr :: ^Queue
HashTable_autoptr :: ^HashTable
HashTable_listautoptr :: ^List
HashTable_slistautoptr :: ^SList
HashTable_queueautoptr :: ^Queue
Hmac_autoptr :: ^Hmac
Hmac_listautoptr :: ^List
Hmac_slistautoptr :: ^SList
Hmac_queueautoptr :: ^Queue
IOChannel_autoptr :: rawptr
IOChannel_listautoptr :: ^List
IOChannel_slistautoptr :: ^SList
IOChannel_queueautoptr :: ^Queue
KeyFile_autoptr :: ^KeyFile
KeyFile_listautoptr :: ^List
KeyFile_slistautoptr :: ^SList
KeyFile_queueautoptr :: ^Queue
List_autoptr :: ^List
List_listautoptr :: ^List
List_slistautoptr :: ^SList
List_queueautoptr :: ^Queue
Array_autoptr :: ^Array
Array_listautoptr :: ^List
Array_slistautoptr :: ^SList
Array_queueautoptr :: ^Queue
PtrArray_autoptr :: ^PtrArray
PtrArray_listautoptr :: ^List
PtrArray_slistautoptr :: ^SList
PtrArray_queueautoptr :: ^Queue
ByteArray_autoptr :: ^ByteArray
ByteArray_listautoptr :: ^List
ByteArray_slistautoptr :: ^SList
ByteArray_queueautoptr :: ^Queue
MainContext_autoptr :: ^MainContext
MainContext_listautoptr :: ^List
MainContext_slistautoptr :: ^SList
MainContext_queueautoptr :: ^Queue
MainContextPusher_autoptr :: ^MainContextPusher
MainContextPusher_listautoptr :: ^List
MainContextPusher_slistautoptr :: ^SList
MainContextPusher_queueautoptr :: ^Queue
MainLoop_autoptr :: ^MainLoop
MainLoop_listautoptr :: ^List
MainLoop_slistautoptr :: ^SList
MainLoop_queueautoptr :: ^Queue
Source_autoptr :: ^Source
Source_listautoptr :: ^List
Source_slistautoptr :: ^SList
Source_queueautoptr :: ^Queue
MappedFile_autoptr :: ^MappedFile
MappedFile_listautoptr :: ^List
MappedFile_slistautoptr :: ^SList
MappedFile_queueautoptr :: ^Queue
MarkupParseContext_autoptr :: ^MarkupParseContext
MarkupParseContext_listautoptr :: ^List
MarkupParseContext_slistautoptr :: ^SList
MarkupParseContext_queueautoptr :: ^Queue
Node_autoptr :: ^Node
Node_listautoptr :: ^List
Node_slistautoptr :: ^SList
Node_queueautoptr :: ^Queue
OptionContext_autoptr :: ^OptionContext
OptionContext_listautoptr :: ^List
OptionContext_slistautoptr :: ^SList
OptionContext_queueautoptr :: ^Queue
OptionGroup_autoptr :: ^OptionGroup
OptionGroup_listautoptr :: ^List
OptionGroup_slistautoptr :: ^SList
OptionGroup_queueautoptr :: ^Queue
PatternSpec_autoptr :: ^PatternSpec
PatternSpec_listautoptr :: ^List
PatternSpec_slistautoptr :: ^SList
PatternSpec_queueautoptr :: ^Queue
Queue_autoptr :: ^Queue
Queue_listautoptr :: ^List
Queue_slistautoptr :: ^SList
Queue_queueautoptr :: ^Queue
Rand_autoptr :: ^Rand
Rand_listautoptr :: ^List
Rand_slistautoptr :: ^SList
Rand_queueautoptr :: ^Queue
Regex_autoptr :: ^Regex
Regex_listautoptr :: ^List
Regex_slistautoptr :: ^SList
Regex_queueautoptr :: ^Queue
MatchInfo_autoptr :: ^MatchInfo
MatchInfo_listautoptr :: ^List
MatchInfo_slistautoptr :: ^SList
MatchInfo_queueautoptr :: ^Queue
Scanner_autoptr :: ^Scanner
Scanner_listautoptr :: ^List
Scanner_slistautoptr :: ^SList
Scanner_queueautoptr :: ^Queue
Sequence_autoptr :: ^Sequence
Sequence_listautoptr :: ^List
Sequence_slistautoptr :: ^SList
Sequence_queueautoptr :: ^Queue
SList_autoptr :: ^SList
SList_listautoptr :: ^List
SList_slistautoptr :: ^SList
SList_queueautoptr :: ^Queue
String_autoptr :: ^String
String_listautoptr :: ^List
String_slistautoptr :: ^SList
String_queueautoptr :: ^Queue
StringChunk_autoptr :: ^StringChunk
StringChunk_listautoptr :: ^List
StringChunk_slistautoptr :: ^SList
StringChunk_queueautoptr :: ^Queue
StrvBuilder_autoptr :: ^StrvBuilder
StrvBuilder_listautoptr :: ^List
StrvBuilder_slistautoptr :: ^SList
StrvBuilder_queueautoptr :: ^Queue
Thread_autoptr :: ^Thread
Thread_listautoptr :: ^List
Thread_slistautoptr :: ^SList
Thread_queueautoptr :: ^Queue
MutexLocker_autoptr :: ^MutexLocker
MutexLocker_listautoptr :: ^List
MutexLocker_slistautoptr :: ^SList
MutexLocker_queueautoptr :: ^Queue
RecMutexLocker_autoptr :: ^RecMutexLocker
RecMutexLocker_listautoptr :: ^List
RecMutexLocker_slistautoptr :: ^SList
RecMutexLocker_queueautoptr :: ^Queue
RWLockWriterLocker_autoptr :: ^RWLockWriterLocker
RWLockWriterLocker_listautoptr :: ^List
RWLockWriterLocker_slistautoptr :: ^SList
RWLockWriterLocker_queueautoptr :: ^Queue
RWLockReaderLocker_autoptr :: ^RWLockReaderLocker
RWLockReaderLocker_listautoptr :: ^List
RWLockReaderLocker_slistautoptr :: ^SList
RWLockReaderLocker_queueautoptr :: ^Queue
Timer_autoptr :: ^Timer
Timer_listautoptr :: ^List
Timer_slistautoptr :: ^SList
Timer_queueautoptr :: ^Queue
TimeZone_autoptr :: ^TimeZone
TimeZone_listautoptr :: ^List
TimeZone_slistautoptr :: ^SList
TimeZone_queueautoptr :: ^Queue
Tree_autoptr :: ^Tree
Tree_listautoptr :: ^List
Tree_slistautoptr :: ^SList
Tree_queueautoptr :: ^Queue
Variant_autoptr :: ^Variant
Variant_listautoptr :: ^List
Variant_slistautoptr :: ^SList
Variant_queueautoptr :: ^Queue
VariantBuilder_autoptr :: ^VariantBuilder
VariantBuilder_listautoptr :: ^List
VariantBuilder_slistautoptr :: ^SList
VariantBuilder_queueautoptr :: ^Queue
VariantIter_autoptr :: ^VariantIter
VariantIter_listautoptr :: ^List
VariantIter_slistautoptr :: ^SList
VariantIter_queueautoptr :: ^Queue
VariantDict_autoptr :: ^VariantDict
VariantDict_listautoptr :: ^List
VariantDict_slistautoptr :: ^SList
VariantDict_queueautoptr :: ^Queue
VariantType_autoptr :: ^VariantType
VariantType_listautoptr :: ^List
VariantType_slistautoptr :: ^SList
VariantType_queueautoptr :: ^Queue
RefString_autoptr :: ^RefString
RefString_listautoptr :: ^List
RefString_slistautoptr :: ^SList
RefString_queueautoptr :: ^Queue
Uri_autoptr :: ^Uri
Uri_listautoptr :: ^List
Uri_slistautoptr :: ^SList
Uri_queueautoptr :: ^Queue
PathBuf_autoptr :: ^PathBuf
PathBuf_listautoptr :: ^List
PathBuf_slistautoptr :: ^SList
PathBuf_queueautoptr :: ^Queue
TestCase :: rawptr
TestSuite :: rawptr

foreign import glib_runic { "system:glib-2.0", "../lib/linux/libglib-wrapper.a" }

@(default_calling_convention = "c")
foreign glib_runic {
    @(link_name = "g_array_new")
    array_new :: proc(zero_terminated: boolean, clear_: boolean, element_size: uint_) -> ^Array ---

    @(link_name = "g_array_new_take")
    array_new_take :: proc(data: pointer, len: size, clear: boolean, element_size: size) -> ^Array ---

    @(link_name = "g_array_new_take_zero_terminated")
    array_new_take_zero_terminated :: proc(data: pointer, clear: boolean, element_size: size) -> ^Array ---

    @(link_name = "g_array_steal")
    array_steal :: proc(array: ^Array, len: ^size) -> pointer ---

    @(link_name = "g_array_sized_new")
    array_sized_new :: proc(zero_terminated: boolean, clear_: boolean, element_size: uint_, reserved_size: uint_) -> ^Array ---

    @(link_name = "g_array_copy")
    array_copy :: proc(array: ^Array) -> ^Array ---

    @(link_name = "g_array_free")
    array_free :: proc(array: ^Array, free_segment: boolean) -> cstring ---

    @(link_name = "g_array_ref")
    array_ref :: proc(array: ^Array) -> ^Array ---

    @(link_name = "g_array_unref")
    array_unref :: proc(array: ^Array) ---

    @(link_name = "g_array_get_element_size")
    array_get_element_size :: proc(array: ^Array) -> uint_ ---

    @(link_name = "g_array_append_vals")
    array_append_vals :: proc(array: ^Array, data: constpointer, len: uint_) -> ^Array ---

    @(link_name = "g_array_prepend_vals")
    array_prepend_vals :: proc(array: ^Array, data: constpointer, len: uint_) -> ^Array ---

    @(link_name = "g_array_insert_vals")
    array_insert_vals :: proc(array: ^Array, index_: uint_, data: constpointer, len: uint_) -> ^Array ---

    @(link_name = "g_array_set_size")
    array_set_size :: proc(array: ^Array, length: uint_) -> ^Array ---

    @(link_name = "g_array_remove_index")
    array_remove_index :: proc(array: ^Array, index_: uint_) -> ^Array ---

    @(link_name = "g_array_remove_index_fast")
    array_remove_index_fast :: proc(array: ^Array, index_: uint_) -> ^Array ---

    @(link_name = "g_array_remove_range")
    array_remove_range :: proc(array: ^Array, index_: uint_, length: uint_) -> ^Array ---

    @(link_name = "g_array_sort")
    array_sort :: proc(array: ^Array, compare_func: CompareFunc) ---

    @(link_name = "g_array_sort_with_data")
    array_sort_with_data :: proc(array: ^Array, compare_func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_array_binary_search")
    array_binary_search :: proc(array: ^Array, target: constpointer, compare_func: CompareFunc, out_match_index: ^uint_) -> boolean ---

    @(link_name = "g_array_set_clear_func")
    array_set_clear_func :: proc(array: ^Array, clear_func: DestroyNotify) ---

    @(link_name = "g_ptr_array_new")
    ptr_array_new :: proc() -> ^PtrArray ---

    @(link_name = "g_ptr_array_new_with_free_func")
    ptr_array_new_with_free_func :: proc(element_free_func: DestroyNotify) -> ^PtrArray ---

    @(link_name = "g_ptr_array_new_take")
    ptr_array_new_take :: proc(data: ^pointer, len: size, element_free_func: DestroyNotify) -> ^PtrArray ---

    @(link_name = "g_ptr_array_new_from_array")
    ptr_array_new_from_array :: proc(data: ^pointer, len: size, copy_func: CopyFunc, copy_func_user_data: pointer, element_free_func: DestroyNotify) -> ^PtrArray ---

    @(link_name = "g_ptr_array_steal")
    ptr_array_steal :: proc(array: ^PtrArray, len: ^size) -> ^pointer ---

    @(link_name = "g_ptr_array_copy")
    ptr_array_copy :: proc(array: ^PtrArray, func: CopyFunc, user_data: pointer) -> ^PtrArray ---

    @(link_name = "g_ptr_array_sized_new")
    ptr_array_sized_new :: proc(reserved_size: uint_) -> ^PtrArray ---

    @(link_name = "g_ptr_array_new_full")
    ptr_array_new_full :: proc(reserved_size: uint_, element_free_func: DestroyNotify) -> ^PtrArray ---

    @(link_name = "g_ptr_array_new_null_terminated")
    ptr_array_new_null_terminated :: proc(reserved_size: uint_, element_free_func: DestroyNotify, null_terminated: boolean) -> ^PtrArray ---

    @(link_name = "g_ptr_array_new_take_null_terminated")
    ptr_array_new_take_null_terminated :: proc(data: ^pointer, element_free_func: DestroyNotify) -> ^PtrArray ---

    @(link_name = "g_ptr_array_new_from_null_terminated_array")
    ptr_array_new_from_null_terminated_array :: proc(data: ^pointer, copy_func: CopyFunc, copy_func_user_data: pointer, element_free_func: DestroyNotify) -> ^PtrArray ---

    @(link_name = "g_ptr_array_free")
    ptr_array_free :: proc(array: ^PtrArray, free_segment: boolean) -> ^pointer ---

    @(link_name = "g_ptr_array_ref")
    ptr_array_ref :: proc(array: ^PtrArray) -> ^PtrArray ---

    @(link_name = "g_ptr_array_unref")
    ptr_array_unref :: proc(array: ^PtrArray) ---

    @(link_name = "g_ptr_array_set_free_func")
    ptr_array_set_free_func :: proc(array: ^PtrArray, element_free_func: DestroyNotify) ---

    @(link_name = "g_ptr_array_set_size")
    ptr_array_set_size :: proc(array: ^PtrArray, length: int_) ---

    @(link_name = "g_ptr_array_remove_index")
    ptr_array_remove_index :: proc(array: ^PtrArray, index_: uint_) -> pointer ---

    @(link_name = "g_ptr_array_remove_index_fast")
    ptr_array_remove_index_fast :: proc(array: ^PtrArray, index_: uint_) -> pointer ---

    @(link_name = "g_ptr_array_steal_index")
    ptr_array_steal_index :: proc(array: ^PtrArray, index_: uint_) -> pointer ---

    @(link_name = "g_ptr_array_steal_index_fast")
    ptr_array_steal_index_fast :: proc(array: ^PtrArray, index_: uint_) -> pointer ---

    @(link_name = "g_ptr_array_remove")
    ptr_array_remove :: proc(array: ^PtrArray, data: pointer) -> boolean ---

    @(link_name = "g_ptr_array_remove_fast")
    ptr_array_remove_fast :: proc(array: ^PtrArray, data: pointer) -> boolean ---

    @(link_name = "g_ptr_array_remove_range")
    ptr_array_remove_range :: proc(array: ^PtrArray, index_: uint_, length: uint_) -> ^PtrArray ---

    @(link_name = "g_ptr_array_add")
    ptr_array_add :: proc(array: ^PtrArray, data: pointer) ---

    @(link_name = "g_ptr_array_extend")
    ptr_array_extend :: proc(array_to_extend: ^PtrArray, array: ^PtrArray, func: CopyFunc, user_data: pointer) ---

    @(link_name = "g_ptr_array_extend_and_steal")
    ptr_array_extend_and_steal :: proc(array_to_extend: ^PtrArray, array: ^PtrArray) ---

    @(link_name = "g_ptr_array_insert")
    ptr_array_insert :: proc(array: ^PtrArray, index_: int_, data: pointer) ---

    @(link_name = "g_ptr_array_sort")
    ptr_array_sort :: proc(array: ^PtrArray, compare_func: CompareFunc) ---

    @(link_name = "g_ptr_array_sort_with_data")
    ptr_array_sort_with_data :: proc(array: ^PtrArray, compare_func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_ptr_array_sort_values")
    ptr_array_sort_values :: proc(array: ^PtrArray, compare_func: CompareFunc) ---

    @(link_name = "g_ptr_array_sort_values_with_data")
    ptr_array_sort_values_with_data :: proc(array: ^PtrArray, compare_func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_ptr_array_foreach")
    ptr_array_foreach :: proc(array: ^PtrArray, func: Func, user_data: pointer) ---

    @(link_name = "g_ptr_array_find")
    ptr_array_find :: proc(haystack: ^PtrArray, needle: constpointer, index_: ^uint_) -> boolean ---

    @(link_name = "g_ptr_array_find_with_equal_func")
    ptr_array_find_with_equal_func :: proc(haystack: ^PtrArray, needle: constpointer, equal_func: EqualFunc, index_: ^uint_) -> boolean ---

    @(link_name = "g_ptr_array_is_null_terminated")
    ptr_array_is_null_terminated :: proc(array: ^PtrArray) -> boolean ---

    @(link_name = "g_byte_array_new")
    byte_array_new :: proc() -> ^ByteArray ---

    @(link_name = "g_byte_array_new_take")
    byte_array_new_take :: proc(data: ^uint8, len: size) -> ^ByteArray ---

    @(link_name = "g_byte_array_steal")
    byte_array_steal :: proc(array: ^ByteArray, len: ^size) -> ^uint8 ---

    @(link_name = "g_byte_array_sized_new")
    byte_array_sized_new :: proc(reserved_size: uint_) -> ^ByteArray ---

    @(link_name = "g_byte_array_free")
    byte_array_free :: proc(array: ^ByteArray, free_segment: boolean) -> ^uint8 ---

    @(link_name = "g_byte_array_free_to_bytes")
    byte_array_free_to_bytes :: proc(array: ^ByteArray) -> ^Bytes ---

    @(link_name = "g_byte_array_ref")
    byte_array_ref :: proc(array: ^ByteArray) -> ^ByteArray ---

    @(link_name = "g_byte_array_unref")
    byte_array_unref :: proc(array: ^ByteArray) ---

    @(link_name = "g_byte_array_append")
    byte_array_append :: proc(array: ^ByteArray, data: ^uint8, len: uint_) -> ^ByteArray ---

    @(link_name = "g_byte_array_prepend")
    byte_array_prepend :: proc(array: ^ByteArray, data: ^uint8, len: uint_) -> ^ByteArray ---

    @(link_name = "g_byte_array_set_size")
    byte_array_set_size :: proc(array: ^ByteArray, length: uint_) -> ^ByteArray ---

    @(link_name = "g_byte_array_remove_index")
    byte_array_remove_index :: proc(array: ^ByteArray, index_: uint_) -> ^ByteArray ---

    @(link_name = "g_byte_array_remove_index_fast")
    byte_array_remove_index_fast :: proc(array: ^ByteArray, index_: uint_) -> ^ByteArray ---

    @(link_name = "g_byte_array_remove_range")
    byte_array_remove_range :: proc(array: ^ByteArray, index_: uint_, length: uint_) -> ^ByteArray ---

    @(link_name = "g_byte_array_sort")
    byte_array_sort :: proc(array: ^ByteArray, compare_func: CompareFunc) ---

    @(link_name = "g_byte_array_sort_with_data")
    byte_array_sort_with_data :: proc(array: ^ByteArray, compare_func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_atomic_int_get")
    atomic_int_get :: proc(atomic: ^int_) -> int_ ---

    @(link_name = "g_atomic_int_set")
    atomic_int_set :: proc(atomic: ^int_, newval: int_) ---

    @(link_name = "g_atomic_int_inc")
    atomic_int_inc :: proc(atomic: ^int_) ---

    @(link_name = "g_atomic_int_dec_and_test")
    atomic_int_dec_and_test :: proc(atomic: ^int_) -> boolean ---

    @(link_name = "g_atomic_int_compare_and_exchange")
    atomic_int_compare_and_exchange :: proc(atomic: ^int_, oldval: int_, newval: int_) -> boolean ---

    @(link_name = "g_atomic_int_compare_and_exchange_full")
    atomic_int_compare_and_exchange_full :: proc(atomic: ^int_, oldval: int_, newval: int_, preval: ^int_) -> boolean ---

    @(link_name = "g_atomic_int_exchange")
    atomic_int_exchange :: proc(atomic: ^int_, newval: int_) -> int_ ---

    @(link_name = "g_atomic_int_add")
    atomic_int_add :: proc(atomic: ^int_, val: int_) -> int_ ---

    @(link_name = "g_atomic_int_and")
    atomic_int_and :: proc(atomic: ^uint_, val: uint_) -> uint_ ---

    @(link_name = "g_atomic_int_or")
    atomic_int_or :: proc(atomic: ^uint_, val: uint_) -> uint_ ---

    @(link_name = "g_atomic_int_xor")
    atomic_int_xor :: proc(atomic: ^uint_, val: uint_) -> uint_ ---

    @(link_name = "g_atomic_pointer_get")
    atomic_pointer_get :: proc(atomic: rawptr) -> pointer ---

    @(link_name = "g_atomic_pointer_set")
    atomic_pointer_set :: proc(atomic: rawptr, newval: pointer) ---

    @(link_name = "g_atomic_pointer_compare_and_exchange")
    atomic_pointer_compare_and_exchange :: proc(atomic: rawptr, oldval: pointer, newval: pointer) -> boolean ---

    @(link_name = "g_atomic_pointer_compare_and_exchange_full")
    atomic_pointer_compare_and_exchange_full :: proc(atomic: rawptr, oldval: pointer, newval: pointer, preval: rawptr) -> boolean ---

    @(link_name = "g_atomic_pointer_exchange")
    atomic_pointer_exchange :: proc(atomic: rawptr, newval: pointer) -> pointer ---

    @(link_name = "g_atomic_pointer_add")
    atomic_pointer_add :: proc(atomic: rawptr, val: ssize) -> intptr ---

    @(link_name = "g_atomic_pointer_and")
    atomic_pointer_and :: proc(atomic: rawptr, val: size) -> uintptr_ ---

    @(link_name = "g_atomic_pointer_or")
    atomic_pointer_or :: proc(atomic: rawptr, val: size) -> uintptr_ ---

    @(link_name = "g_atomic_pointer_xor")
    atomic_pointer_xor :: proc(atomic: rawptr, val: size) -> uintptr_ ---

    @(link_name = "g_atomic_int_exchange_and_add")
    atomic_int_exchange_and_add :: proc(atomic: ^int_, val: int_) -> int_ ---

    @(link_name = "g_quark_try_string")
    quark_try_string :: proc(string_p: cstring) -> Quark ---

    @(link_name = "g_quark_from_static_string")
    quark_from_static_string :: proc(string_p: cstring) -> Quark ---

    @(link_name = "g_quark_from_string")
    quark_from_string :: proc(string_p: cstring) -> Quark ---

    @(link_name = "g_quark_to_string")
    quark_to_string :: proc(quark: Quark) -> cstring ---

    @(link_name = "g_intern_string")
    intern_string :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_intern_static_string")
    intern_static_string :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_error_domain_register_static")
    error_domain_register_static :: proc(error_type_name: cstring, error_type_private_size: size, error_type_init: ErrorInitFunc, error_type_copy: ErrorCopyFunc, error_type_clear: ErrorClearFunc) -> Quark ---

    @(link_name = "g_error_domain_register")
    error_domain_register :: proc(error_type_name: cstring, error_type_private_size: size, error_type_init: ErrorInitFunc, error_type_copy: ErrorCopyFunc, error_type_clear: ErrorClearFunc) -> Quark ---

    @(link_name = "g_error_new")
    error_new :: proc(domain: Quark, code: int_, format: cstring, #c_vararg var_args: ..any) -> ^Error ---

    @(link_name = "g_error_new_literal")
    error_new_literal :: proc(domain: Quark, code: int_, message: cstring) -> ^Error ---

    @(link_name = "g_error_new_valist")
    error_new_valist :: proc(domain: Quark, code: int_, format: cstring, #c_vararg var_args: ..any) -> ^Error ---

    @(link_name = "g_error_free")
    error_free :: proc(error: ^Error) ---

    @(link_name = "g_error_copy")
    error_copy :: proc(error: ^Error) -> ^Error ---

    @(link_name = "g_error_matches")
    error_matches :: proc(error: ^Error, domain: Quark, code: int_) -> boolean ---

    @(link_name = "g_set_error")
    set_error :: proc(err: ^^Error, domain: Quark, code: int_, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_set_error_literal")
    set_error_literal :: proc(err: ^^Error, domain: Quark, code: int_, message: cstring) ---

    @(link_name = "g_propagate_error")
    propagate_error :: proc(dest: ^^Error, src: ^Error) ---

    @(link_name = "g_clear_error")
    clear_error :: proc(err: ^^Error) ---

    @(link_name = "g_prefix_error")
    prefix_error :: proc(err: ^^Error, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_prefix_error_literal")
    prefix_error_literal :: proc(err: ^^Error, prefix: cstring) ---

    @(link_name = "g_propagate_prefixed_error")
    propagate_prefixed_error :: proc(dest: ^^Error, src: ^Error, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_get_user_name")
    get_user_name :: proc() -> cstring ---

    @(link_name = "g_get_real_name")
    get_real_name :: proc() -> cstring ---

    @(link_name = "g_get_home_dir")
    get_home_dir :: proc() -> cstring ---

    @(link_name = "g_get_tmp_dir")
    get_tmp_dir :: proc() -> cstring ---

    @(link_name = "g_get_host_name")
    get_host_name :: proc() -> cstring ---

    @(link_name = "g_get_prgname")
    get_prgname :: proc() -> cstring ---

    @(link_name = "g_set_prgname")
    set_prgname :: proc(prgname: cstring) ---

    @(link_name = "g_get_application_name")
    get_application_name :: proc() -> cstring ---

    @(link_name = "g_set_application_name")
    set_application_name :: proc(application_name: cstring) ---

    @(link_name = "g_get_os_info")
    get_os_info :: proc(key_name: cstring) -> cstring ---

    @(link_name = "g_reload_user_special_dirs_cache")
    reload_user_special_dirs_cache :: proc() ---

    @(link_name = "g_get_user_data_dir")
    get_user_data_dir :: proc() -> cstring ---

    @(link_name = "g_get_user_config_dir")
    get_user_config_dir :: proc() -> cstring ---

    @(link_name = "g_get_user_cache_dir")
    get_user_cache_dir :: proc() -> cstring ---

    @(link_name = "g_get_user_state_dir")
    get_user_state_dir :: proc() -> cstring ---

    @(link_name = "g_get_system_data_dirs")
    get_system_data_dirs :: proc() -> ^cstring ---

    @(link_name = "g_get_system_config_dirs")
    get_system_config_dirs :: proc() -> ^cstring ---

    @(link_name = "g_get_user_runtime_dir")
    get_user_runtime_dir :: proc() -> cstring ---

    @(link_name = "g_get_user_special_dir")
    get_user_special_dir :: proc(directory: UserDirectory) -> cstring ---

    @(link_name = "g_parse_debug_string")
    parse_debug_string :: proc(string_p: cstring, keys: [^]DebugKey, nkeys: uint_) -> uint_ ---

    @(link_name = "g_snprintf")
    snprintf :: proc(string_p: cstring, n: ulong, format: cstring, #c_vararg var_args: ..any) -> int_ ---

    @(link_name = "g_vsnprintf")
    vsnprintf :: proc(string_p: cstring, n: ulong, format: cstring, #c_vararg var_args: ..any) -> int_ ---

    @(link_name = "g_nullify_pointer")
    nullify_pointer :: proc(nullify_location: ^pointer) ---

    @(link_name = "g_format_size_full")
    format_size_full :: proc(size_p: uint64, flags: FormatSizeFlags) -> cstring ---

    @(link_name = "g_format_size")
    format_size :: proc(size_p: uint64) -> cstring ---

    @(link_name = "g_format_size_for_display")
    format_size_for_display :: proc(size_p: offset) -> cstring ---

    @(link_name = "g_atexit")
    atexit :: proc(func: VoidFunc) ---

    @(link_name = "g_find_program_in_path")
    find_program_in_path :: proc(program: cstring) -> cstring ---

    @(link_name = "g_bit_nth_lsf")
    bit_nth_lsf :: proc(mask: ulong, nth_bit: int_) -> int_ ---

    @(link_name = "g_bit_nth_msf")
    bit_nth_msf :: proc(mask: ulong, nth_bit: int_) -> int_ ---

    @(link_name = "g_bit_storage")
    bit_storage :: proc(number: ulong) -> uint_ ---

    @(link_name = "g_thread_error_quark")
    thread_error_quark :: proc() -> Quark ---

    @(link_name = "g_thread_ref")
    thread_ref :: proc(thread: ^Thread) -> ^Thread ---

    @(link_name = "g_thread_unref")
    thread_unref :: proc(thread: ^Thread) ---

    @(link_name = "g_thread_new")
    thread_new :: proc(name: cstring, func: ThreadFunc, data: pointer) -> ^Thread ---

    @(link_name = "g_thread_try_new")
    thread_try_new :: proc(name: cstring, func: ThreadFunc, data: pointer, error: ^^Error) -> ^Thread ---

    @(link_name = "g_thread_self")
    thread_self :: proc() -> ^Thread ---

    @(link_name = "g_thread_exit")
    thread_exit :: proc(retval: pointer) ---

    @(link_name = "g_thread_join")
    thread_join :: proc(thread: ^Thread) -> pointer ---

    @(link_name = "g_thread_yield")
    thread_yield :: proc() ---

    @(link_name = "g_mutex_init")
    mutex_init :: proc(mutex: ^Mutex) ---

    @(link_name = "g_mutex_clear")
    mutex_clear :: proc(mutex: ^Mutex) ---

    @(link_name = "g_mutex_lock")
    mutex_lock :: proc(mutex: ^Mutex) ---

    @(link_name = "g_mutex_trylock")
    mutex_trylock :: proc(mutex: ^Mutex) -> boolean ---

    @(link_name = "g_mutex_unlock")
    mutex_unlock :: proc(mutex: ^Mutex) ---

    @(link_name = "g_rw_lock_init")
    rw_lock_init :: proc(rw_lock: ^RWLock) ---

    @(link_name = "g_rw_lock_clear")
    rw_lock_clear :: proc(rw_lock: ^RWLock) ---

    @(link_name = "g_rw_lock_writer_lock")
    rw_lock_writer_lock :: proc(rw_lock: ^RWLock) ---

    @(link_name = "g_rw_lock_writer_trylock")
    rw_lock_writer_trylock :: proc(rw_lock: ^RWLock) -> boolean ---

    @(link_name = "g_rw_lock_writer_unlock")
    rw_lock_writer_unlock :: proc(rw_lock: ^RWLock) ---

    @(link_name = "g_rw_lock_reader_lock")
    rw_lock_reader_lock :: proc(rw_lock: ^RWLock) ---

    @(link_name = "g_rw_lock_reader_trylock")
    rw_lock_reader_trylock :: proc(rw_lock: ^RWLock) -> boolean ---

    @(link_name = "g_rw_lock_reader_unlock")
    rw_lock_reader_unlock :: proc(rw_lock: ^RWLock) ---

    @(link_name = "g_rec_mutex_init")
    rec_mutex_init :: proc(rec_mutex: ^RecMutex) ---

    @(link_name = "g_rec_mutex_clear")
    rec_mutex_clear :: proc(rec_mutex: ^RecMutex) ---

    @(link_name = "g_rec_mutex_lock")
    rec_mutex_lock :: proc(rec_mutex: ^RecMutex) ---

    @(link_name = "g_rec_mutex_trylock")
    rec_mutex_trylock :: proc(rec_mutex: ^RecMutex) -> boolean ---

    @(link_name = "g_rec_mutex_unlock")
    rec_mutex_unlock :: proc(rec_mutex: ^RecMutex) ---

    @(link_name = "g_cond_init")
    cond_init :: proc(cond: ^Cond) ---

    @(link_name = "g_cond_clear")
    cond_clear :: proc(cond: ^Cond) ---

    @(link_name = "g_cond_wait")
    cond_wait :: proc(cond: ^Cond, mutex: ^Mutex) ---

    @(link_name = "g_cond_signal")
    cond_signal :: proc(cond: ^Cond) ---

    @(link_name = "g_cond_broadcast")
    cond_broadcast :: proc(cond: ^Cond) ---

    @(link_name = "g_cond_wait_until")
    cond_wait_until :: proc(cond: ^Cond, mutex: ^Mutex, end_time: int64) -> boolean ---

    @(link_name = "g_private_get")
    private_get :: proc(key: ^Private) -> pointer ---

    @(link_name = "g_private_set")
    private_set :: proc(key: ^Private, value: pointer) ---

    @(link_name = "g_private_replace")
    private_replace :: proc(key: ^Private, value: pointer) ---

    @(link_name = "g_once_impl")
    once_impl :: proc(once: ^Once, func: ThreadFunc, arg: pointer) -> pointer ---

    @(link_name = "g_once_init_enter")
    once_init_enter :: proc(location: rawptr) -> boolean ---

    @(link_name = "g_once_init_leave")
    once_init_leave :: proc(location: rawptr, result: size) ---

    @(link_name = "g_once_init_enter_pointer")
    once_init_enter_pointer :: proc(location: rawptr) -> boolean ---

    @(link_name = "g_once_init_leave_pointer")
    once_init_leave_pointer :: proc(location: rawptr, result: pointer) ---

    @(link_name = "g_get_num_processors")
    get_num_processors :: proc() -> uint_ ---

    @(link_name = "g_async_queue_new")
    async_queue_new :: proc() -> ^AsyncQueue ---

    @(link_name = "g_async_queue_new_full")
    async_queue_new_full :: proc(item_free_func: DestroyNotify) -> ^AsyncQueue ---

    @(link_name = "g_async_queue_lock")
    async_queue_lock :: proc(queue: ^AsyncQueue) ---

    @(link_name = "g_async_queue_unlock")
    async_queue_unlock :: proc(queue: ^AsyncQueue) ---

    @(link_name = "g_async_queue_ref")
    async_queue_ref :: proc(queue: ^AsyncQueue) -> ^AsyncQueue ---

    @(link_name = "g_async_queue_unref")
    async_queue_unref :: proc(queue: ^AsyncQueue) ---

    @(link_name = "g_async_queue_ref_unlocked")
    async_queue_ref_unlocked :: proc(queue: ^AsyncQueue) ---

    @(link_name = "g_async_queue_unref_and_unlock")
    async_queue_unref_and_unlock :: proc(queue: ^AsyncQueue) ---

    @(link_name = "g_async_queue_push")
    async_queue_push :: proc(queue: ^AsyncQueue, data: pointer) ---

    @(link_name = "g_async_queue_push_unlocked")
    async_queue_push_unlocked :: proc(queue: ^AsyncQueue, data: pointer) ---

    @(link_name = "g_async_queue_push_sorted")
    async_queue_push_sorted :: proc(queue: ^AsyncQueue, data: pointer, func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_async_queue_push_sorted_unlocked")
    async_queue_push_sorted_unlocked :: proc(queue: ^AsyncQueue, data: pointer, func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_async_queue_pop")
    async_queue_pop :: proc(queue: ^AsyncQueue) -> pointer ---

    @(link_name = "g_async_queue_pop_unlocked")
    async_queue_pop_unlocked :: proc(queue: ^AsyncQueue) -> pointer ---

    @(link_name = "g_async_queue_try_pop")
    async_queue_try_pop :: proc(queue: ^AsyncQueue) -> pointer ---

    @(link_name = "g_async_queue_try_pop_unlocked")
    async_queue_try_pop_unlocked :: proc(queue: ^AsyncQueue) -> pointer ---

    @(link_name = "g_async_queue_timeout_pop")
    async_queue_timeout_pop :: proc(queue: ^AsyncQueue, timeout: uint64) -> pointer ---

    @(link_name = "g_async_queue_timeout_pop_unlocked")
    async_queue_timeout_pop_unlocked :: proc(queue: ^AsyncQueue, timeout: uint64) -> pointer ---

    @(link_name = "g_async_queue_length")
    async_queue_length :: proc(queue: ^AsyncQueue) -> int_ ---

    @(link_name = "g_async_queue_length_unlocked")
    async_queue_length_unlocked :: proc(queue: ^AsyncQueue) -> int_ ---

    @(link_name = "g_async_queue_sort")
    async_queue_sort :: proc(queue: ^AsyncQueue, func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_async_queue_sort_unlocked")
    async_queue_sort_unlocked :: proc(queue: ^AsyncQueue, func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_async_queue_remove")
    async_queue_remove :: proc(queue: ^AsyncQueue, item: pointer) -> boolean ---

    @(link_name = "g_async_queue_remove_unlocked")
    async_queue_remove_unlocked :: proc(queue: ^AsyncQueue, item: pointer) -> boolean ---

    @(link_name = "g_async_queue_push_front")
    async_queue_push_front :: proc(queue: ^AsyncQueue, item: pointer) ---

    @(link_name = "g_async_queue_push_front_unlocked")
    async_queue_push_front_unlocked :: proc(queue: ^AsyncQueue, item: pointer) ---

    @(link_name = "g_async_queue_timed_pop")
    async_queue_timed_pop :: proc(queue: ^AsyncQueue, end_time: ^TimeVal) -> pointer ---

    @(link_name = "g_async_queue_timed_pop_unlocked")
    async_queue_timed_pop_unlocked :: proc(queue: ^AsyncQueue, end_time: ^TimeVal) -> pointer ---

    @(link_name = "g_on_error_query")
    on_error_query :: proc(prg_name: cstring) ---

    @(link_name = "g_on_error_stack_trace")
    on_error_stack_trace :: proc(prg_name: cstring) ---

    @(link_name = "g_base64_encode_step")
    base64_encode_step :: proc(in_p: ^uchar, len: size, break_lines: boolean, out: cstring, state: ^int_, save: ^int_) -> size ---

    @(link_name = "g_base64_encode_close")
    base64_encode_close :: proc(break_lines: boolean, out: cstring, state: ^int_, save: ^int_) -> size ---

    @(link_name = "g_base64_encode")
    base64_encode :: proc(data: ^uchar, len: size) -> cstring ---

    @(link_name = "g_base64_decode_step")
    base64_decode_step :: proc(in_p: cstring, len: size, out: ^uchar, state: ^int_, save: ^uint_) -> size ---

    @(link_name = "g_base64_decode")
    base64_decode :: proc(text: cstring, out_len: ^size) -> ^uchar ---

    @(link_name = "g_base64_decode_inplace")
    base64_decode_inplace :: proc(text: cstring, out_len: ^size) -> ^uchar ---

    @(link_name = "g_bit_lock")
    bit_lock :: proc(address: [^]int_, lock_bit: int_) ---

    @(link_name = "g_bit_trylock")
    bit_trylock :: proc(address: [^]int_, lock_bit: int_) -> boolean ---

    @(link_name = "g_bit_unlock")
    bit_unlock :: proc(address: [^]int_, lock_bit: int_) ---

    @(link_name = "g_pointer_bit_lock")
    pointer_bit_lock :: proc(address: rawptr, lock_bit: int_) ---

    @(link_name = "g_pointer_bit_lock_and_get")
    pointer_bit_lock_and_get :: proc(address: pointer, lock_bit: uint_, out_ptr: ^uintptr_) ---

    @(link_name = "g_pointer_bit_trylock")
    pointer_bit_trylock :: proc(address: rawptr, lock_bit: int_) -> boolean ---

    @(link_name = "g_pointer_bit_unlock")
    pointer_bit_unlock :: proc(address: rawptr, lock_bit: int_) ---

    @(link_name = "g_pointer_bit_lock_mask_ptr")
    pointer_bit_lock_mask_ptr :: proc(ptr: pointer, lock_bit: uint_, set: boolean, preserve_mask: uintptr_, preserve_ptr: pointer) -> pointer ---

    @(link_name = "g_pointer_bit_unlock_and_set")
    pointer_bit_unlock_and_set :: proc(address: rawptr, lock_bit: uint_, ptr: pointer, preserve_mask: uintptr_) ---

    @(link_name = "g_time_zone_new")
    time_zone_new :: proc(identifier: cstring) -> ^TimeZone ---

    @(link_name = "g_time_zone_new_identifier")
    time_zone_new_identifier :: proc(identifier: cstring) -> ^TimeZone ---

    @(link_name = "g_time_zone_new_utc")
    time_zone_new_utc :: proc() -> ^TimeZone ---

    @(link_name = "g_time_zone_new_local")
    time_zone_new_local :: proc() -> ^TimeZone ---

    @(link_name = "g_time_zone_new_offset")
    time_zone_new_offset :: proc(seconds: int32) -> ^TimeZone ---

    @(link_name = "g_time_zone_ref")
    time_zone_ref :: proc(tz: ^TimeZone) -> ^TimeZone ---

    @(link_name = "g_time_zone_unref")
    time_zone_unref :: proc(tz: ^TimeZone) ---

    @(link_name = "g_time_zone_find_interval")
    time_zone_find_interval :: proc(tz: ^TimeZone, type: TimeType, time_: int64) -> int_ ---

    @(link_name = "g_time_zone_adjust_time")
    time_zone_adjust_time :: proc(tz: ^TimeZone, type: TimeType, time_: ^int64) -> int_ ---

    @(link_name = "g_time_zone_get_abbreviation")
    time_zone_get_abbreviation :: proc(tz: ^TimeZone, interval: int_) -> cstring ---

    @(link_name = "g_time_zone_get_offset")
    time_zone_get_offset :: proc(tz: ^TimeZone, interval: int_) -> int32 ---

    @(link_name = "g_time_zone_is_dst")
    time_zone_is_dst :: proc(tz: ^TimeZone, interval: int_) -> boolean ---

    @(link_name = "g_time_zone_get_identifier")
    time_zone_get_identifier :: proc(tz: ^TimeZone) -> cstring ---

    @(link_name = "g_date_time_unref")
    date_time_unref :: proc(datetime: ^DateTime) ---

    @(link_name = "g_date_time_ref")
    date_time_ref :: proc(datetime: ^DateTime) -> ^DateTime ---

    @(link_name = "g_date_time_new_now")
    date_time_new_now :: proc(tz: ^TimeZone) -> ^DateTime ---

    @(link_name = "g_date_time_new_now_local")
    date_time_new_now_local :: proc() -> ^DateTime ---

    @(link_name = "g_date_time_new_now_utc")
    date_time_new_now_utc :: proc() -> ^DateTime ---

    @(link_name = "g_date_time_new_from_unix_local")
    date_time_new_from_unix_local :: proc(t: int64) -> ^DateTime ---

    @(link_name = "g_date_time_new_from_unix_utc")
    date_time_new_from_unix_utc :: proc(t: int64) -> ^DateTime ---

    @(link_name = "g_date_time_new_from_unix_local_usec")
    date_time_new_from_unix_local_usec :: proc(usecs: int64) -> ^DateTime ---

    @(link_name = "g_date_time_new_from_unix_utc_usec")
    date_time_new_from_unix_utc_usec :: proc(usecs: int64) -> ^DateTime ---

    @(link_name = "g_date_time_new_from_timeval_local")
    date_time_new_from_timeval_local :: proc(tv: ^TimeVal) -> ^DateTime ---

    @(link_name = "g_date_time_new_from_timeval_utc")
    date_time_new_from_timeval_utc :: proc(tv: ^TimeVal) -> ^DateTime ---

    @(link_name = "g_date_time_new_from_iso8601")
    date_time_new_from_iso8601 :: proc(text: cstring, default_tz: ^TimeZone) -> ^DateTime ---

    @(link_name = "g_date_time_new")
    date_time_new :: proc(tz: ^TimeZone, year: int_, month: int_, day: int_, hour: int_, minute: int_, seconds: double) -> ^DateTime ---

    @(link_name = "g_date_time_new_local")
    date_time_new_local :: proc(year: int_, month: int_, day: int_, hour: int_, minute: int_, seconds: double) -> ^DateTime ---

    @(link_name = "g_date_time_new_utc")
    date_time_new_utc :: proc(year: int_, month: int_, day: int_, hour: int_, minute: int_, seconds: double) -> ^DateTime ---

    @(link_name = "g_date_time_add")
    date_time_add :: proc(datetime: ^DateTime, timespan: TimeSpan) -> ^DateTime ---

    @(link_name = "g_date_time_add_years")
    date_time_add_years :: proc(datetime: ^DateTime, years: int_) -> ^DateTime ---

    @(link_name = "g_date_time_add_months")
    date_time_add_months :: proc(datetime: ^DateTime, months: int_) -> ^DateTime ---

    @(link_name = "g_date_time_add_weeks")
    date_time_add_weeks :: proc(datetime: ^DateTime, weeks: int_) -> ^DateTime ---

    @(link_name = "g_date_time_add_days")
    date_time_add_days :: proc(datetime: ^DateTime, days: int_) -> ^DateTime ---

    @(link_name = "g_date_time_add_hours")
    date_time_add_hours :: proc(datetime: ^DateTime, hours: int_) -> ^DateTime ---

    @(link_name = "g_date_time_add_minutes")
    date_time_add_minutes :: proc(datetime: ^DateTime, minutes: int_) -> ^DateTime ---

    @(link_name = "g_date_time_add_seconds")
    date_time_add_seconds :: proc(datetime: ^DateTime, seconds: double) -> ^DateTime ---

    @(link_name = "g_date_time_add_full")
    date_time_add_full :: proc(datetime: ^DateTime, years: int_, months: int_, days: int_, hours: int_, minutes: int_, seconds: double) -> ^DateTime ---

    @(link_name = "g_date_time_compare")
    date_time_compare :: proc(dt1: constpointer, dt2: constpointer) -> int_ ---

    @(link_name = "g_date_time_difference")
    date_time_difference :: proc(end: ^DateTime, begin: ^DateTime) -> TimeSpan ---

    @(link_name = "g_date_time_hash")
    date_time_hash :: proc(datetime: constpointer) -> uint_ ---

    @(link_name = "g_date_time_equal")
    date_time_equal :: proc(dt1: constpointer, dt2: constpointer) -> boolean ---

    @(link_name = "g_date_time_get_ymd")
    date_time_get_ymd :: proc(datetime: ^DateTime, year: ^int_, month: ^int_, day: ^int_) ---

    @(link_name = "g_date_time_get_year")
    date_time_get_year :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_month")
    date_time_get_month :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_day_of_month")
    date_time_get_day_of_month :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_week_numbering_year")
    date_time_get_week_numbering_year :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_week_of_year")
    date_time_get_week_of_year :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_day_of_week")
    date_time_get_day_of_week :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_day_of_year")
    date_time_get_day_of_year :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_hour")
    date_time_get_hour :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_minute")
    date_time_get_minute :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_second")
    date_time_get_second :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_microsecond")
    date_time_get_microsecond :: proc(datetime: ^DateTime) -> int_ ---

    @(link_name = "g_date_time_get_seconds")
    date_time_get_seconds :: proc(datetime: ^DateTime) -> double ---

    @(link_name = "g_date_time_to_unix")
    date_time_to_unix :: proc(datetime: ^DateTime) -> int64 ---

    @(link_name = "g_date_time_to_unix_usec")
    date_time_to_unix_usec :: proc(datetime: ^DateTime) -> int64 ---

    @(link_name = "g_date_time_to_timeval")
    date_time_to_timeval :: proc(datetime: ^DateTime, tv: ^TimeVal) -> boolean ---

    @(link_name = "g_date_time_get_utc_offset")
    date_time_get_utc_offset :: proc(datetime: ^DateTime) -> TimeSpan ---

    @(link_name = "g_date_time_get_timezone")
    date_time_get_timezone :: proc(datetime: ^DateTime) -> ^TimeZone ---

    @(link_name = "g_date_time_get_timezone_abbreviation")
    date_time_get_timezone_abbreviation :: proc(datetime: ^DateTime) -> cstring ---

    @(link_name = "g_date_time_is_daylight_savings")
    date_time_is_daylight_savings :: proc(datetime: ^DateTime) -> boolean ---

    @(link_name = "g_date_time_to_timezone")
    date_time_to_timezone :: proc(datetime: ^DateTime, tz: ^TimeZone) -> ^DateTime ---

    @(link_name = "g_date_time_to_local")
    date_time_to_local :: proc(datetime: ^DateTime) -> ^DateTime ---

    @(link_name = "g_date_time_to_utc")
    date_time_to_utc :: proc(datetime: ^DateTime) -> ^DateTime ---

    @(link_name = "g_date_time_format")
    date_time_format :: proc(datetime: ^DateTime, format: cstring) -> cstring ---

    @(link_name = "g_date_time_format_iso8601")
    date_time_format_iso8601 :: proc(datetime: ^DateTime) -> cstring ---

    @(link_name = "g_bookmark_file_error_quark")
    bookmark_file_error_quark :: proc() -> Quark ---

    @(link_name = "g_bookmark_file_new")
    bookmark_file_new :: proc() -> ^BookmarkFile ---

    @(link_name = "g_bookmark_file_free")
    bookmark_file_free :: proc(bookmark: ^BookmarkFile) ---

    @(link_name = "g_bookmark_file_copy")
    bookmark_file_copy :: proc(bookmark: ^BookmarkFile) -> ^BookmarkFile ---

    @(link_name = "g_bookmark_file_load_from_file")
    bookmark_file_load_from_file :: proc(bookmark: ^BookmarkFile, filename: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_load_from_data")
    bookmark_file_load_from_data :: proc(bookmark: ^BookmarkFile, data: ^byte, length: size, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_load_from_data_dirs")
    bookmark_file_load_from_data_dirs :: proc(bookmark: ^BookmarkFile, file: cstring, full_path: ^cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_to_data")
    bookmark_file_to_data :: proc(bookmark: ^BookmarkFile, length: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_bookmark_file_to_file")
    bookmark_file_to_file :: proc(bookmark: ^BookmarkFile, filename: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_set_title")
    bookmark_file_set_title :: proc(bookmark: ^BookmarkFile, uri: cstring, title: cstring) ---

    @(link_name = "g_bookmark_file_get_title")
    bookmark_file_get_title :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_bookmark_file_set_description")
    bookmark_file_set_description :: proc(bookmark: ^BookmarkFile, uri: cstring, description: cstring) ---

    @(link_name = "g_bookmark_file_get_description")
    bookmark_file_get_description :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_bookmark_file_set_mime_type")
    bookmark_file_set_mime_type :: proc(bookmark: ^BookmarkFile, uri: cstring, mime_type: cstring) ---

    @(link_name = "g_bookmark_file_get_mime_type")
    bookmark_file_get_mime_type :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_bookmark_file_set_groups")
    bookmark_file_set_groups :: proc(bookmark: ^BookmarkFile, uri: cstring, groups: [^]cstring, length: size) ---

    @(link_name = "g_bookmark_file_add_group")
    bookmark_file_add_group :: proc(bookmark: ^BookmarkFile, uri: cstring, group: cstring) ---

    @(link_name = "g_bookmark_file_has_group")
    bookmark_file_has_group :: proc(bookmark: ^BookmarkFile, uri: cstring, group: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_get_groups")
    bookmark_file_get_groups :: proc(bookmark: ^BookmarkFile, uri: cstring, length: ^size, error: ^^Error) -> ^cstring ---

    @(link_name = "g_bookmark_file_add_application")
    bookmark_file_add_application :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: cstring) ---

    @(link_name = "g_bookmark_file_has_application")
    bookmark_file_has_application :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_get_applications")
    bookmark_file_get_applications :: proc(bookmark: ^BookmarkFile, uri: cstring, length: ^size, error: ^^Error) -> ^cstring ---

    @(link_name = "g_bookmark_file_set_app_info")
    bookmark_file_set_app_info :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: cstring, count: int_, stamp: libc.time_t, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_set_application_info")
    bookmark_file_set_application_info :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: cstring, count: i32, stamp: ^DateTime, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_get_app_info")
    bookmark_file_get_app_info :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: ^cstring, count: ^uint_, stamp: ^libc.time_t, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_get_application_info")
    bookmark_file_get_application_info :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: ^cstring, count: ^u32, stamp: ^^DateTime, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_set_is_private")
    bookmark_file_set_is_private :: proc(bookmark: ^BookmarkFile, uri: cstring, is_private: boolean) ---

    @(link_name = "g_bookmark_file_get_is_private")
    bookmark_file_get_is_private :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_set_icon")
    bookmark_file_set_icon :: proc(bookmark: ^BookmarkFile, uri: cstring, href: cstring, mime_type: cstring) ---

    @(link_name = "g_bookmark_file_get_icon")
    bookmark_file_get_icon :: proc(bookmark: ^BookmarkFile, uri: cstring, href: ^cstring, mime_type: ^cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_set_added")
    bookmark_file_set_added :: proc(bookmark: ^BookmarkFile, uri: cstring, added: libc.time_t) ---

    @(link_name = "g_bookmark_file_set_added_date_time")
    bookmark_file_set_added_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, added: ^DateTime) ---

    @(link_name = "g_bookmark_file_get_added")
    bookmark_file_get_added :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> libc.time_t ---

    @(link_name = "g_bookmark_file_get_added_date_time")
    bookmark_file_get_added_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> ^DateTime ---

    @(link_name = "g_bookmark_file_set_modified")
    bookmark_file_set_modified :: proc(bookmark: ^BookmarkFile, uri: cstring, modified: libc.time_t) ---

    @(link_name = "g_bookmark_file_set_modified_date_time")
    bookmark_file_set_modified_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, modified: ^DateTime) ---

    @(link_name = "g_bookmark_file_get_modified")
    bookmark_file_get_modified :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> libc.time_t ---

    @(link_name = "g_bookmark_file_get_modified_date_time")
    bookmark_file_get_modified_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> ^DateTime ---

    @(link_name = "g_bookmark_file_set_visited")
    bookmark_file_set_visited :: proc(bookmark: ^BookmarkFile, uri: cstring, visited: libc.time_t) ---

    @(link_name = "g_bookmark_file_set_visited_date_time")
    bookmark_file_set_visited_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, visited: ^DateTime) ---

    @(link_name = "g_bookmark_file_get_visited")
    bookmark_file_get_visited :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> libc.time_t ---

    @(link_name = "g_bookmark_file_get_visited_date_time")
    bookmark_file_get_visited_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> ^DateTime ---

    @(link_name = "g_bookmark_file_has_item")
    bookmark_file_has_item :: proc(bookmark: ^BookmarkFile, uri: cstring) -> boolean ---

    @(link_name = "g_bookmark_file_get_size")
    bookmark_file_get_size :: proc(bookmark: ^BookmarkFile) -> int_ ---

    @(link_name = "g_bookmark_file_get_uris")
    bookmark_file_get_uris :: proc(bookmark: ^BookmarkFile, length: ^size) -> ^cstring ---

    @(link_name = "g_bookmark_file_remove_group")
    bookmark_file_remove_group :: proc(bookmark: ^BookmarkFile, uri: cstring, group: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_remove_application")
    bookmark_file_remove_application :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_remove_item")
    bookmark_file_remove_item :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bookmark_file_move_item")
    bookmark_file_move_item :: proc(bookmark: ^BookmarkFile, old_uri: cstring, new_uri: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_bytes_new")
    bytes_new :: proc(data: constpointer, size_p: size) -> ^Bytes ---

    @(link_name = "g_bytes_new_take")
    bytes_new_take :: proc(data: pointer, size_p: size) -> ^Bytes ---

    @(link_name = "g_bytes_new_static")
    bytes_new_static :: proc(data: constpointer, size_p: size) -> ^Bytes ---

    @(link_name = "g_bytes_new_with_free_func")
    bytes_new_with_free_func :: proc(data: constpointer, size_p: size, free_func: DestroyNotify, user_data: pointer) -> ^Bytes ---

    @(link_name = "g_bytes_new_from_bytes")
    bytes_new_from_bytes :: proc(bytes: [^]Bytes, offset_p: size, length: size) -> ^Bytes ---

    @(link_name = "g_bytes_get_data")
    bytes_get_data :: proc(bytes: [^]Bytes, size_p: ^size) -> constpointer ---

    @(link_name = "g_bytes_get_size")
    bytes_get_size :: proc(bytes: [^]Bytes) -> size ---

    @(link_name = "g_bytes_ref")
    bytes_ref :: proc(bytes: [^]Bytes) -> ^Bytes ---

    @(link_name = "g_bytes_unref")
    bytes_unref :: proc(bytes: [^]Bytes) ---

    @(link_name = "g_bytes_unref_to_data")
    bytes_unref_to_data :: proc(bytes: [^]Bytes, size_p: ^size) -> pointer ---

    @(link_name = "g_bytes_unref_to_array")
    bytes_unref_to_array :: proc(bytes: [^]Bytes) -> ^ByteArray ---

    @(link_name = "g_bytes_hash")
    bytes_hash :: proc(bytes: constpointer) -> uint_ ---

    @(link_name = "g_bytes_equal")
    bytes_equal :: proc(bytes1: constpointer, bytes2: constpointer) -> boolean ---

    @(link_name = "g_bytes_compare")
    bytes_compare :: proc(bytes1: constpointer, bytes2: constpointer) -> int_ ---

    @(link_name = "g_bytes_get_region")
    bytes_get_region :: proc(bytes: [^]Bytes, element_size: size, offset_p: size, n_elements: size) -> constpointer ---

    @(link_name = "g_get_charset")
    get_charset :: proc(charset: ^cstring) -> boolean ---

    @(link_name = "g_get_codeset")
    get_codeset :: proc() -> cstring ---

    @(link_name = "g_get_console_charset")
    get_console_charset :: proc(charset: ^cstring) -> boolean ---

    @(link_name = "g_get_language_names")
    get_language_names :: proc() -> ^cstring ---

    @(link_name = "g_get_language_names_with_category")
    get_language_names_with_category :: proc(category_name: cstring) -> ^cstring ---

    @(link_name = "g_get_locale_variants")
    get_locale_variants :: proc(locale: cstring) -> ^cstring ---

    @(link_name = "g_checksum_type_get_length")
    checksum_type_get_length :: proc(checksum_type: ChecksumType) -> ssize ---

    @(link_name = "g_checksum_new")
    checksum_new :: proc(checksum_type: ChecksumType) -> ^Checksum ---

    @(link_name = "g_checksum_reset")
    checksum_reset :: proc(checksum: ^Checksum) ---

    @(link_name = "g_checksum_copy")
    checksum_copy :: proc(checksum: ^Checksum) -> ^Checksum ---

    @(link_name = "g_checksum_free")
    checksum_free :: proc(checksum: ^Checksum) ---

    @(link_name = "g_checksum_update")
    checksum_update :: proc(checksum: ^Checksum, data: ^uchar, length: ssize) ---

    @(link_name = "g_checksum_get_string")
    checksum_get_string :: proc(checksum: ^Checksum) -> cstring ---

    @(link_name = "g_checksum_get_digest")
    checksum_get_digest :: proc(checksum: ^Checksum, buffer: ^uint8, digest_len: ^size) ---

    @(link_name = "g_compute_checksum_for_data")
    compute_checksum_for_data :: proc(checksum_type: ChecksumType, data: ^uchar, length: size) -> cstring ---

    @(link_name = "g_compute_checksum_for_string")
    compute_checksum_for_string :: proc(checksum_type: ChecksumType, str: cstring, length: ssize) -> cstring ---

    @(link_name = "g_compute_checksum_for_bytes")
    compute_checksum_for_bytes :: proc(checksum_type: ChecksumType, data: ^Bytes) -> cstring ---

    @(link_name = "g_convert_error_quark")
    convert_error_quark :: proc() -> Quark ---

    @(link_name = "g_iconv_open")
    iconv_open :: proc(to_codeset: cstring, from_codeset: cstring) -> IConv ---

    @(link_name = "g_iconv")
    iconv :: proc(converter: IConv, inbuf: ^^byte, inbytes_left: ^size, outbuf: ^^byte, outbytes_left: ^size) -> size ---

    @(link_name = "g_iconv_close")
    iconv_close :: proc(converter: IConv) -> int_ ---

    @(link_name = "g_convert")
    convert :: proc(str: cstring, len: ssize, to_codeset: cstring, from_codeset: cstring, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_convert_with_iconv")
    convert_with_iconv :: proc(str: cstring, len: ssize, converter: IConv, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_convert_with_fallback")
    convert_with_fallback :: proc(str: cstring, len: ssize, to_codeset: cstring, from_codeset: cstring, fallback: cstring, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_locale_to_utf8")
    locale_to_utf8 :: proc(opsysstring: cstring, len: ssize, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_locale_from_utf8")
    locale_from_utf8 :: proc(utf8string: cstring, len: ssize, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_filename_to_utf8")
    filename_to_utf8 :: proc(opsysstring: cstring, len: ssize, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_filename_from_utf8")
    filename_from_utf8 :: proc(utf8string: cstring, len: ssize, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_filename_from_uri")
    filename_from_uri :: proc(uri: cstring, hostname: ^cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_filename_to_uri")
    filename_to_uri :: proc(filename: cstring, hostname: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_filename_display_name")
    filename_display_name :: proc(filename: cstring) -> cstring ---

    @(link_name = "g_get_filename_charsets")
    get_filename_charsets :: proc(filename_charsets: [^]^cstring) -> boolean ---

    @(link_name = "g_filename_display_basename")
    filename_display_basename :: proc(filename: cstring) -> cstring ---

    @(link_name = "g_uri_list_extract_uris")
    uri_list_extract_uris :: proc(uri_list: cstring) -> ^cstring ---

    @(link_name = "g_datalist_init")
    datalist_init :: proc(datalist: ^^Data) ---

    @(link_name = "g_datalist_clear")
    datalist_clear :: proc(datalist: ^^Data) ---

    @(link_name = "g_datalist_id_get_data")
    datalist_id_get_data :: proc(datalist: ^^Data, key_id: Quark) -> pointer ---

    @(link_name = "g_datalist_id_set_data_full")
    datalist_id_set_data_full :: proc(datalist: ^^Data, key_id: Quark, data: pointer, destroy_func: DestroyNotify) ---

    @(link_name = "g_datalist_id_remove_multiple")
    datalist_id_remove_multiple :: proc(datalist: ^^Data, keys: [^]Quark, n_keys: size) ---

    @(link_name = "g_datalist_id_dup_data")
    datalist_id_dup_data :: proc(datalist: ^^Data, key_id: Quark, dup_func: DuplicateFunc, user_data: pointer) -> pointer ---

    @(link_name = "g_datalist_id_replace_data")
    datalist_id_replace_data :: proc(datalist: ^^Data, key_id: Quark, oldval: pointer, newval: pointer, destroy: DestroyNotify, old_destroy: ^DestroyNotify) -> boolean ---

    @(link_name = "g_datalist_id_remove_no_notify")
    datalist_id_remove_no_notify :: proc(datalist: ^^Data, key_id: Quark) -> pointer ---

    @(link_name = "g_datalist_foreach")
    datalist_foreach :: proc(datalist: ^^Data, func: DataForeachFunc, user_data: pointer) ---

    @(link_name = "g_datalist_set_flags")
    datalist_set_flags :: proc(datalist: ^^Data, flags: uint_) ---

    @(link_name = "g_datalist_unset_flags")
    datalist_unset_flags :: proc(datalist: ^^Data, flags: uint_) ---

    @(link_name = "g_datalist_get_flags")
    datalist_get_flags :: proc(datalist: ^^Data) -> uint_ ---

    @(link_name = "g_dataset_destroy")
    dataset_destroy :: proc(dataset_location: constpointer) ---

    @(link_name = "g_dataset_id_get_data")
    dataset_id_get_data :: proc(dataset_location: constpointer, key_id: Quark) -> pointer ---

    @(link_name = "g_datalist_get_data")
    datalist_get_data :: proc(datalist: ^^Data, key: cstring) -> pointer ---

    @(link_name = "g_dataset_id_set_data_full")
    dataset_id_set_data_full :: proc(dataset_location: constpointer, key_id: Quark, data: pointer, destroy_func: DestroyNotify) ---

    @(link_name = "g_dataset_id_remove_no_notify")
    dataset_id_remove_no_notify :: proc(dataset_location: constpointer, key_id: Quark) -> pointer ---

    @(link_name = "g_dataset_foreach")
    dataset_foreach :: proc(dataset_location: constpointer, func: DataForeachFunc, user_data: pointer) ---

    @(link_name = "g_date_new")
    date_new :: proc() -> ^Date ---

    @(link_name = "g_date_new_dmy")
    date_new_dmy :: proc(day: DateDay, month: DateMonth, year: DateYear) -> ^Date ---

    @(link_name = "g_date_new_julian")
    date_new_julian :: proc(julian_day: uint32) -> ^Date ---

    @(link_name = "g_date_free")
    date_free :: proc(date: ^Date) ---

    @(link_name = "g_date_copy")
    date_copy :: proc(date: ^Date) -> ^Date ---

    @(link_name = "g_date_valid")
    date_valid :: proc(date: ^Date) -> boolean ---

    @(link_name = "g_date_valid_day")
    date_valid_day :: proc(day: DateDay) -> boolean ---

    @(link_name = "g_date_valid_month")
    date_valid_month :: proc(month: DateMonth) -> boolean ---

    @(link_name = "g_date_valid_year")
    date_valid_year :: proc(year: DateYear) -> boolean ---

    @(link_name = "g_date_valid_weekday")
    date_valid_weekday :: proc(weekday: DateWeekday) -> boolean ---

    @(link_name = "g_date_valid_julian")
    date_valid_julian :: proc(julian_date: uint32) -> boolean ---

    @(link_name = "g_date_valid_dmy")
    date_valid_dmy :: proc(day: DateDay, month: DateMonth, year: DateYear) -> boolean ---

    @(link_name = "g_date_get_weekday")
    date_get_weekday :: proc(date: ^Date) -> DateWeekday ---

    @(link_name = "g_date_get_month")
    date_get_month :: proc(date: ^Date) -> DateMonth ---

    @(link_name = "g_date_get_year")
    date_get_year :: proc(date: ^Date) -> DateYear ---

    @(link_name = "g_date_get_day")
    date_get_day :: proc(date: ^Date) -> DateDay ---

    @(link_name = "g_date_get_julian")
    date_get_julian :: proc(date: ^Date) -> uint32 ---

    @(link_name = "g_date_get_day_of_year")
    date_get_day_of_year :: proc(date: ^Date) -> uint_ ---

    @(link_name = "g_date_get_monday_week_of_year")
    date_get_monday_week_of_year :: proc(date: ^Date) -> uint_ ---

    @(link_name = "g_date_get_sunday_week_of_year")
    date_get_sunday_week_of_year :: proc(date: ^Date) -> uint_ ---

    @(link_name = "g_date_get_iso8601_week_of_year")
    date_get_iso8601_week_of_year :: proc(date: ^Date) -> uint_ ---

    @(link_name = "g_date_clear")
    date_clear :: proc(date: ^Date, n_dates: uint_) ---

    @(link_name = "g_date_set_parse")
    date_set_parse :: proc(date: ^Date, str: cstring) ---

    @(link_name = "g_date_set_time_t")
    date_set_time_t :: proc(date: ^Date, timet: libc.time_t) ---

    @(link_name = "g_date_set_time_val")
    date_set_time_val :: proc(date: ^Date, timeval: ^TimeVal) ---

    @(link_name = "g_date_set_time")
    date_set_time :: proc(date: ^Date, time_: Time) ---

    @(link_name = "g_date_set_month")
    date_set_month :: proc(date: ^Date, month: DateMonth) ---

    @(link_name = "g_date_set_day")
    date_set_day :: proc(date: ^Date, day: DateDay) ---

    @(link_name = "g_date_set_year")
    date_set_year :: proc(date: ^Date, year: DateYear) ---

    @(link_name = "g_date_set_dmy")
    date_set_dmy :: proc(date: ^Date, day: DateDay, month: DateMonth, y: DateYear) ---

    @(link_name = "g_date_set_julian")
    date_set_julian :: proc(date: ^Date, julian_date: uint32) ---

    @(link_name = "g_date_is_first_of_month")
    date_is_first_of_month :: proc(date: ^Date) -> boolean ---

    @(link_name = "g_date_is_last_of_month")
    date_is_last_of_month :: proc(date: ^Date) -> boolean ---

    @(link_name = "g_date_add_days")
    date_add_days :: proc(date: ^Date, n_days: uint_) ---

    @(link_name = "g_date_subtract_days")
    date_subtract_days :: proc(date: ^Date, n_days: uint_) ---

    @(link_name = "g_date_add_months")
    date_add_months :: proc(date: ^Date, n_months: uint_) ---

    @(link_name = "g_date_subtract_months")
    date_subtract_months :: proc(date: ^Date, n_months: uint_) ---

    @(link_name = "g_date_add_years")
    date_add_years :: proc(date: ^Date, n_years: uint_) ---

    @(link_name = "g_date_subtract_years")
    date_subtract_years :: proc(date: ^Date, n_years: uint_) ---

    @(link_name = "g_date_is_leap_year")
    date_is_leap_year :: proc(year: DateYear) -> boolean ---

    @(link_name = "g_date_get_days_in_month")
    date_get_days_in_month :: proc(month: DateMonth, year: DateYear) -> uint8 ---

    @(link_name = "g_date_get_monday_weeks_in_year")
    date_get_monday_weeks_in_year :: proc(year: DateYear) -> uint8 ---

    @(link_name = "g_date_get_sunday_weeks_in_year")
    date_get_sunday_weeks_in_year :: proc(year: DateYear) -> uint8 ---

    @(link_name = "g_date_days_between")
    date_days_between :: proc(date1: ^Date, date2: ^Date) -> int_ ---

    @(link_name = "g_date_compare")
    date_compare :: proc(lhs: [^]Date, rhs: [^]Date) -> int_ ---

    @(link_name = "g_date_to_struct_tm")
    date_to_struct_tm :: proc(date: ^Date, tm: ^libc.tm) ---

    @(link_name = "g_date_clamp")
    date_clamp :: proc(date: ^Date, min_date: ^Date, max_date: ^Date) ---

    @(link_name = "g_date_order")
    date_order :: proc(date1: ^Date, date2: ^Date) ---

    @(link_name = "g_date_strftime")
    date_strftime :: proc(s: cstring, slen: size, format: cstring, date: ^Date) -> size ---

    @(link_name = "g_dir_open")
    dir_open :: proc(path: cstring, flags: uint_, error: ^^Error) -> ^Dir ---

    @(link_name = "g_dir_read_name")
    dir_read_name :: proc(dir: ^Dir) -> cstring ---

    @(link_name = "g_dir_rewind")
    dir_rewind :: proc(dir: ^Dir) ---

    @(link_name = "g_dir_close")
    dir_close :: proc(dir: ^Dir) ---

    @(link_name = "g_dir_ref")
    dir_ref :: proc(dir: ^Dir) -> ^Dir ---

    @(link_name = "g_dir_unref")
    dir_unref :: proc(dir: ^Dir) ---

    @(link_name = "g_getenv")
    getenv :: proc(variable: cstring) -> cstring ---

    @(link_name = "g_setenv")
    setenv :: proc(variable: cstring, value: cstring, overwrite: boolean) -> boolean ---

    @(link_name = "g_unsetenv")
    unsetenv :: proc(variable: cstring) ---

    @(link_name = "g_listenv")
    listenv :: proc() -> ^cstring ---

    @(link_name = "g_get_environ")
    get_environ :: proc() -> ^cstring ---

    @(link_name = "g_environ_getenv")
    environ_getenv :: proc(envp: ^cstring, variable: cstring) -> cstring ---

    @(link_name = "g_environ_setenv")
    environ_setenv :: proc(envp: ^cstring, variable: cstring, value: cstring, overwrite: boolean) -> ^cstring ---

    @(link_name = "g_environ_unsetenv")
    environ_unsetenv :: proc(envp: ^cstring, variable: cstring) -> ^cstring ---

    @(link_name = "g_file_error_quark")
    file_error_quark :: proc() -> Quark ---

    @(link_name = "g_file_error_from_errno")
    file_error_from_errno :: proc(err_no: int_) -> FileError ---

    @(link_name = "g_file_test")
    file_test :: proc(filename: cstring, test: FileTest) -> boolean ---

    @(link_name = "g_file_get_contents")
    file_get_contents :: proc(filename: cstring, contents: [^]cstring, length: ^size, error: ^^Error) -> boolean ---

    @(link_name = "g_file_set_contents")
    file_set_contents :: proc(filename: cstring, contents: [^]char, length: ssize, error: ^^Error) -> boolean ---

    @(link_name = "g_file_set_contents_full")
    file_set_contents_full :: proc(filename: cstring, contents: [^]char, length: ssize, flags: FileSetContentsFlags, mode: i32, error: ^^Error) -> boolean ---

    @(link_name = "g_file_read_link")
    file_read_link :: proc(filename: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_mkdtemp")
    mkdtemp :: proc(tmpl: cstring) -> cstring ---

    @(link_name = "g_mkdtemp_full")
    mkdtemp_full :: proc(tmpl: cstring, mode: int_) -> cstring ---

    @(link_name = "g_mkstemp")
    mkstemp :: proc(tmpl: cstring) -> int_ ---

    @(link_name = "g_mkstemp_full")
    mkstemp_full :: proc(tmpl: cstring, flags: int_, mode: int_) -> int_ ---

    @(link_name = "g_file_open_tmp")
    file_open_tmp :: proc(tmpl: cstring, name_used: ^cstring, error: ^^Error) -> int_ ---

    @(link_name = "g_dir_make_tmp")
    dir_make_tmp :: proc(tmpl: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_build_path")
    build_path :: proc(separator: cstring, first_element: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_build_pathv")
    build_pathv :: proc(separator: cstring, args: [^]cstring) -> cstring ---

    @(link_name = "g_build_filename")
    build_filename :: proc(first_element: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_build_filenamev")
    build_filenamev :: proc(args: [^]cstring) -> cstring ---

    @(link_name = "g_build_filename_valist")
    build_filename_valist :: proc(first_element: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_mkdir_with_parents")
    mkdir_with_parents :: proc(pathname: cstring, mode: int_) -> int_ ---

    @(link_name = "g_path_is_absolute")
    path_is_absolute :: proc(file_name: cstring) -> boolean ---

    @(link_name = "g_path_skip_root")
    path_skip_root :: proc(file_name: cstring) -> cstring ---

    @(link_name = "g_basename")
    basename :: proc(file_name: cstring) -> cstring ---

    @(link_name = "g_get_current_dir")
    get_current_dir :: proc() -> cstring ---

    @(link_name = "g_path_get_basename")
    path_get_basename :: proc(file_name: cstring) -> cstring ---

    @(link_name = "g_path_get_dirname")
    path_get_dirname :: proc(file_name: cstring) -> cstring ---

    @(link_name = "g_canonicalize_filename")
    canonicalize_filename :: proc(filename: cstring, relative_to: cstring) -> cstring ---

    @(link_name = "g_strip_context")
    strip_context :: proc(msgid: cstring, msgval: cstring) -> cstring ---

    @(link_name = "g_dgettext")
    dgettext :: proc(domain: cstring, msgid: cstring) -> cstring ---

    @(link_name = "g_dcgettext")
    dcgettext :: proc(domain: cstring, msgid: cstring, category: int_) -> cstring ---

    @(link_name = "g_dngettext")
    dngettext :: proc(domain: cstring, msgid: cstring, msgid_plural: cstring, n: ulong) -> cstring ---

    @(link_name = "g_dpgettext")
    dpgettext :: proc(domain: cstring, msgctxtid: cstring, msgidoffset: size) -> cstring ---

    @(link_name = "g_dpgettext2")
    dpgettext2 :: proc(domain: cstring, context_p: cstring, msgid: cstring) -> cstring ---

    @(link_name = "g_free")
    free :: proc(mem: pointer) ---

    @(link_name = "g_free_sized")
    free_sized :: proc(mem: pointer, size_p: u64) ---

    @(link_name = "g_clear_pointer")
    clear_pointer :: proc(pp: ^pointer, destroy: DestroyNotify) ---

    @(link_name = "g_malloc")
    malloc :: proc(n_bytes: size) -> pointer ---

    @(link_name = "g_malloc0")
    malloc0 :: proc(n_bytes: size) -> pointer ---

    @(link_name = "g_realloc")
    realloc :: proc(mem: pointer, n_bytes: size) -> pointer ---

    @(link_name = "g_try_malloc")
    try_malloc :: proc(n_bytes: size) -> pointer ---

    @(link_name = "g_try_malloc0")
    try_malloc0 :: proc(n_bytes: size) -> pointer ---

    @(link_name = "g_try_realloc")
    try_realloc :: proc(mem: pointer, n_bytes: size) -> pointer ---

    @(link_name = "g_malloc_n")
    malloc_n :: proc(n_blocks: size, n_block_bytes: size) -> pointer ---

    @(link_name = "g_malloc0_n")
    malloc0_n :: proc(n_blocks: size, n_block_bytes: size) -> pointer ---

    @(link_name = "g_realloc_n")
    realloc_n :: proc(mem: pointer, n_blocks: size, n_block_bytes: size) -> pointer ---

    @(link_name = "g_try_malloc_n")
    try_malloc_n :: proc(n_blocks: size, n_block_bytes: size) -> pointer ---

    @(link_name = "g_try_malloc0_n")
    try_malloc0_n :: proc(n_blocks: size, n_block_bytes: size) -> pointer ---

    @(link_name = "g_try_realloc_n")
    try_realloc_n :: proc(mem: pointer, n_blocks: size, n_block_bytes: size) -> pointer ---

    @(link_name = "g_aligned_alloc")
    aligned_alloc :: proc(n_blocks: size, n_block_bytes: size, alignment: size) -> pointer ---

    @(link_name = "g_aligned_alloc0")
    aligned_alloc0 :: proc(n_blocks: size, n_block_bytes: size, alignment: size) -> pointer ---

    @(link_name = "g_aligned_free")
    aligned_free :: proc(mem: pointer) ---

    @(link_name = "g_aligned_free_sized")
    aligned_free_sized :: proc(mem: pointer, alignment: u64, size_p: u64) ---

    @(link_name = "g_mem_set_vtable")
    mem_set_vtable :: proc(vtable: ^MemVTable) ---

    @(link_name = "g_mem_is_system_malloc")
    mem_is_system_malloc :: proc() -> boolean ---

    @(link_name = "g_mem_gc_friendly")
    g_mem_gc_friendly: boolean

    @(link_name = "glib_mem_profiler_table")
    glib_mem_profiler_table: ^MemVTable

    @(link_name = "g_mem_profile")
    mem_profile :: proc() ---

    @(link_name = "g_node_new")
    node_new :: proc(data: pointer) -> ^Node ---

    @(link_name = "g_node_destroy")
    node_destroy :: proc(root: ^Node) ---

    @(link_name = "g_node_unlink")
    node_unlink :: proc(node: ^Node) ---

    @(link_name = "g_node_copy_deep")
    node_copy_deep :: proc(node: ^Node, copy_func: CopyFunc, data: pointer) -> ^Node ---

    @(link_name = "g_node_copy")
    node_copy :: proc(node: ^Node) -> ^Node ---

    @(link_name = "g_node_insert")
    node_insert :: proc(parent: ^Node, position: int_, node: ^Node) -> ^Node ---

    @(link_name = "g_node_insert_before")
    node_insert_before :: proc(parent: ^Node, sibling: ^Node, node: ^Node) -> ^Node ---

    @(link_name = "g_node_insert_after")
    node_insert_after :: proc(parent: ^Node, sibling: ^Node, node: ^Node) -> ^Node ---

    @(link_name = "g_node_prepend")
    node_prepend :: proc(parent: ^Node, node: ^Node) -> ^Node ---

    @(link_name = "g_node_n_nodes")
    node_n_nodes :: proc(root: ^Node, flags: TraverseFlags) -> uint_ ---

    @(link_name = "g_node_get_root")
    node_get_root :: proc(node: ^Node) -> ^Node ---

    @(link_name = "g_node_is_ancestor")
    node_is_ancestor :: proc(node: ^Node, descendant: ^Node) -> boolean ---

    @(link_name = "g_node_depth")
    node_depth :: proc(node: ^Node) -> uint_ ---

    @(link_name = "g_node_find")
    node_find :: proc(root: ^Node, order: TraverseType, flags: TraverseFlags, data: pointer) -> ^Node ---

    @(link_name = "g_node_traverse")
    node_traverse :: proc(root: ^Node, order: TraverseType, flags: TraverseFlags, max_depth: int_, func: NodeTraverseFunc, data: pointer) ---

    @(link_name = "g_node_max_height")
    node_max_height :: proc(root: ^Node) -> uint_ ---

    @(link_name = "g_node_children_foreach")
    node_children_foreach :: proc(node: ^Node, flags: TraverseFlags, func: NodeForeachFunc, data: pointer) ---

    @(link_name = "g_node_reverse_children")
    node_reverse_children :: proc(node: ^Node) ---

    @(link_name = "g_node_n_children")
    node_n_children :: proc(node: ^Node) -> uint_ ---

    @(link_name = "g_node_nth_child")
    node_nth_child :: proc(node: ^Node, n: uint_) -> ^Node ---

    @(link_name = "g_node_last_child")
    node_last_child :: proc(node: ^Node) -> ^Node ---

    @(link_name = "g_node_find_child")
    node_find_child :: proc(node: ^Node, flags: TraverseFlags, data: pointer) -> ^Node ---

    @(link_name = "g_node_child_position")
    node_child_position :: proc(node: ^Node, child: ^Node) -> int_ ---

    @(link_name = "g_node_child_index")
    node_child_index :: proc(node: ^Node, data: pointer) -> int_ ---

    @(link_name = "g_node_first_sibling")
    node_first_sibling :: proc(node: ^Node) -> ^Node ---

    @(link_name = "g_node_last_sibling")
    node_last_sibling :: proc(node: ^Node) -> ^Node ---

    @(link_name = "g_list_alloc")
    list_alloc :: proc() -> ^List ---

    @(link_name = "g_list_free")
    list_free :: proc(list: ^List) ---

    @(link_name = "g_list_free_1")
    list_free_1 :: proc(list: ^List) ---

    @(link_name = "g_list_free_full")
    list_free_full :: proc(list: ^List, free_func: DestroyNotify) ---

    @(link_name = "g_list_append")
    list_append :: proc(list: ^List, data: pointer) -> ^List ---

    @(link_name = "g_list_prepend")
    list_prepend :: proc(list: ^List, data: pointer) -> ^List ---

    @(link_name = "g_list_insert")
    list_insert :: proc(list: ^List, data: pointer, position: int_) -> ^List ---

    @(link_name = "g_list_insert_sorted")
    list_insert_sorted :: proc(list: ^List, data: pointer, func: CompareFunc) -> ^List ---

    @(link_name = "g_list_insert_sorted_with_data")
    list_insert_sorted_with_data :: proc(list: ^List, data: pointer, func: CompareDataFunc, user_data: pointer) -> ^List ---

    @(link_name = "g_list_insert_before")
    list_insert_before :: proc(list: ^List, sibling: ^List, data: pointer) -> ^List ---

    @(link_name = "g_list_insert_before_link")
    list_insert_before_link :: proc(list: ^List, sibling: ^List, link_: ^List) -> ^List ---

    @(link_name = "g_list_concat")
    list_concat :: proc(list1: ^List, list2: ^List) -> ^List ---

    @(link_name = "g_list_remove")
    list_remove :: proc(list: ^List, data: constpointer) -> ^List ---

    @(link_name = "g_list_remove_all")
    list_remove_all :: proc(list: ^List, data: constpointer) -> ^List ---

    @(link_name = "g_list_remove_link")
    list_remove_link :: proc(list: ^List, llink: ^List) -> ^List ---

    @(link_name = "g_list_delete_link")
    list_delete_link :: proc(list: ^List, link_: ^List) -> ^List ---

    @(link_name = "g_list_reverse")
    list_reverse :: proc(list: ^List) -> ^List ---

    @(link_name = "g_list_copy")
    list_copy :: proc(list: ^List) -> ^List ---

    @(link_name = "g_list_copy_deep")
    list_copy_deep :: proc(list: ^List, func: CopyFunc, user_data: pointer) -> ^List ---

    @(link_name = "g_list_nth")
    list_nth :: proc(list: ^List, n: uint_) -> ^List ---

    @(link_name = "g_list_nth_prev")
    list_nth_prev :: proc(list: ^List, n: uint_) -> ^List ---

    @(link_name = "g_list_find")
    list_find :: proc(list: ^List, data: constpointer) -> ^List ---

    @(link_name = "g_list_find_custom")
    list_find_custom :: proc(list: ^List, data: constpointer, func: CompareFunc) -> ^List ---

    @(link_name = "g_list_position")
    list_position :: proc(list: ^List, llink: ^List) -> int_ ---

    @(link_name = "g_list_index")
    list_index :: proc(list: ^List, data: constpointer) -> int_ ---

    @(link_name = "g_list_last")
    list_last :: proc(list: ^List) -> ^List ---

    @(link_name = "g_list_first")
    list_first :: proc(list: ^List) -> ^List ---

    @(link_name = "g_list_length")
    list_length :: proc(list: ^List) -> uint_ ---

    @(link_name = "g_list_foreach")
    list_foreach :: proc(list: ^List, func: Func, user_data: pointer) ---

    @(link_name = "g_list_sort")
    list_sort :: proc(list: ^List, compare_func: CompareFunc) -> ^List ---

    @(link_name = "g_list_sort_with_data")
    list_sort_with_data :: proc(list: ^List, compare_func: CompareDataFunc, user_data: pointer) -> ^List ---

    @(link_name = "g_list_nth_data")
    list_nth_data :: proc(list: ^List, n: uint_) -> pointer ---

    @(link_name = "g_clear_list")
    clear_list :: proc(list_ptr: ^^List, destroy: DestroyNotify) ---

    @(link_name = "g_hash_table_new")
    hash_table_new :: proc(hash_func: HashFunc, key_equal_func: EqualFunc) -> ^HashTable ---

    @(link_name = "g_hash_table_new_full")
    hash_table_new_full :: proc(hash_func: HashFunc, key_equal_func: EqualFunc, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) -> ^HashTable ---

    @(link_name = "g_hash_table_new_similar")
    hash_table_new_similar :: proc(other_hash_table: ^HashTable) -> ^HashTable ---

    @(link_name = "g_hash_table_destroy")
    hash_table_destroy :: proc(hash_table: ^HashTable) ---

    @(link_name = "g_hash_table_insert")
    hash_table_insert :: proc(hash_table: ^HashTable, key: pointer, value: pointer) -> boolean ---

    @(link_name = "g_hash_table_replace")
    hash_table_replace :: proc(hash_table: ^HashTable, key: pointer, value: pointer) -> boolean ---

    @(link_name = "g_hash_table_add")
    hash_table_add :: proc(hash_table: ^HashTable, key: pointer) -> boolean ---

    @(link_name = "g_hash_table_remove")
    hash_table_remove :: proc(hash_table: ^HashTable, key: constpointer) -> boolean ---

    @(link_name = "g_hash_table_remove_all")
    hash_table_remove_all :: proc(hash_table: ^HashTable) ---

    @(link_name = "g_hash_table_steal")
    hash_table_steal :: proc(hash_table: ^HashTable, key: constpointer) -> boolean ---

    @(link_name = "g_hash_table_steal_extended")
    hash_table_steal_extended :: proc(hash_table: ^HashTable, lookup_key: constpointer, stolen_key: ^pointer, stolen_value: ^pointer) -> boolean ---

    @(link_name = "g_hash_table_steal_all")
    hash_table_steal_all :: proc(hash_table: ^HashTable) ---

    @(link_name = "g_hash_table_steal_all_keys")
    hash_table_steal_all_keys :: proc(hash_table: ^HashTable) -> ^PtrArray ---

    @(link_name = "g_hash_table_steal_all_values")
    hash_table_steal_all_values :: proc(hash_table: ^HashTable) -> ^PtrArray ---

    @(link_name = "g_hash_table_lookup")
    hash_table_lookup :: proc(hash_table: ^HashTable, key: constpointer) -> pointer ---

    @(link_name = "g_hash_table_contains")
    hash_table_contains :: proc(hash_table: ^HashTable, key: constpointer) -> boolean ---

    @(link_name = "g_hash_table_lookup_extended")
    hash_table_lookup_extended :: proc(hash_table: ^HashTable, lookup_key: constpointer, orig_key: ^pointer, value: ^pointer) -> boolean ---

    @(link_name = "g_hash_table_foreach")
    hash_table_foreach :: proc(hash_table: ^HashTable, func: HFunc, user_data: pointer) ---

    @(link_name = "g_hash_table_find")
    hash_table_find :: proc(hash_table: ^HashTable, predicate: HRFunc, user_data: pointer) -> pointer ---

    @(link_name = "g_hash_table_foreach_remove")
    hash_table_foreach_remove :: proc(hash_table: ^HashTable, func: HRFunc, user_data: pointer) -> uint_ ---

    @(link_name = "g_hash_table_foreach_steal")
    hash_table_foreach_steal :: proc(hash_table: ^HashTable, func: HRFunc, user_data: pointer) -> uint_ ---

    @(link_name = "g_hash_table_size")
    hash_table_size :: proc(hash_table: ^HashTable) -> uint_ ---

    @(link_name = "g_hash_table_get_keys")
    hash_table_get_keys :: proc(hash_table: ^HashTable) -> ^List ---

    @(link_name = "g_hash_table_get_values")
    hash_table_get_values :: proc(hash_table: ^HashTable) -> ^List ---

    @(link_name = "g_hash_table_get_keys_as_array")
    hash_table_get_keys_as_array :: proc(hash_table: ^HashTable, length: ^uint_) -> ^pointer ---

    @(link_name = "g_hash_table_get_keys_as_ptr_array")
    hash_table_get_keys_as_ptr_array :: proc(hash_table: ^HashTable) -> ^PtrArray ---

    @(link_name = "g_hash_table_get_values_as_ptr_array")
    hash_table_get_values_as_ptr_array :: proc(hash_table: ^HashTable) -> ^PtrArray ---

    @(link_name = "g_hash_table_iter_init")
    hash_table_iter_init :: proc(iter: ^HashTableIter, hash_table: ^HashTable) ---

    @(link_name = "g_hash_table_iter_next")
    hash_table_iter_next :: proc(iter: ^HashTableIter, key: ^pointer, value: ^pointer) -> boolean ---

    @(link_name = "g_hash_table_iter_get_hash_table")
    hash_table_iter_get_hash_table :: proc(iter: ^HashTableIter) -> ^HashTable ---

    @(link_name = "g_hash_table_iter_remove")
    hash_table_iter_remove :: proc(iter: ^HashTableIter) ---

    @(link_name = "g_hash_table_iter_replace")
    hash_table_iter_replace :: proc(iter: ^HashTableIter, value: pointer) ---

    @(link_name = "g_hash_table_iter_steal")
    hash_table_iter_steal :: proc(iter: ^HashTableIter) ---

    @(link_name = "g_hash_table_ref")
    hash_table_ref :: proc(hash_table: ^HashTable) -> ^HashTable ---

    @(link_name = "g_hash_table_unref")
    hash_table_unref :: proc(hash_table: ^HashTable) ---

    @(link_name = "g_str_equal")
    str_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---

    @(link_name = "g_str_hash")
    str_hash :: proc(v: constpointer) -> uint_ ---

    @(link_name = "g_int_equal")
    int_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---

    @(link_name = "g_int_hash")
    int_hash :: proc(v: constpointer) -> uint_ ---

    @(link_name = "g_int64_equal")
    int64_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---

    @(link_name = "g_int64_hash")
    int64_hash :: proc(v: constpointer) -> uint_ ---

    @(link_name = "g_double_equal")
    double_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---

    @(link_name = "g_double_hash")
    double_hash :: proc(v: constpointer) -> uint_ ---

    @(link_name = "g_direct_hash")
    direct_hash :: proc(v: constpointer) -> uint_ ---

    @(link_name = "g_direct_equal")
    direct_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---

    @(link_name = "g_hmac_new")
    hmac_new :: proc(digest_type: ChecksumType, key: ^uchar, key_len: size) -> ^Hmac ---

    @(link_name = "g_hmac_copy")
    hmac_copy :: proc(hmac: ^Hmac) -> ^Hmac ---

    @(link_name = "g_hmac_ref")
    hmac_ref :: proc(hmac: ^Hmac) -> ^Hmac ---

    @(link_name = "g_hmac_unref")
    hmac_unref :: proc(hmac: ^Hmac) ---

    @(link_name = "g_hmac_update")
    hmac_update :: proc(hmac: ^Hmac, data: ^uchar, length: ssize) ---

    @(link_name = "g_hmac_get_string")
    hmac_get_string :: proc(hmac: ^Hmac) -> cstring ---

    @(link_name = "g_hmac_get_digest")
    hmac_get_digest :: proc(hmac: ^Hmac, buffer: ^uint8, digest_len: ^size) ---

    @(link_name = "g_compute_hmac_for_data")
    compute_hmac_for_data :: proc(digest_type: ChecksumType, key: ^uchar, key_len: size, data: ^uchar, length: size) -> cstring ---

    @(link_name = "g_compute_hmac_for_string")
    compute_hmac_for_string :: proc(digest_type: ChecksumType, key: ^uchar, key_len: size, str: cstring, length: ssize) -> cstring ---

    @(link_name = "g_compute_hmac_for_bytes")
    compute_hmac_for_bytes :: proc(digest_type: ChecksumType, key: ^Bytes, data: ^Bytes) -> cstring ---

    @(link_name = "g_hook_list_init")
    hook_list_init :: proc(hook_list: rawptr, hook_size: uint_) ---

    @(link_name = "g_hook_list_clear")
    hook_list_clear :: proc(hook_list: rawptr) ---

    @(link_name = "g_hook_alloc")
    hook_alloc :: proc(hook_list: rawptr) -> ^Hook ---

    @(link_name = "g_hook_free")
    hook_free :: proc(hook_list: rawptr, hook: ^Hook) ---

    @(link_name = "g_hook_ref")
    hook_ref :: proc(hook_list: rawptr, hook: ^Hook) -> ^Hook ---

    @(link_name = "g_hook_unref")
    hook_unref :: proc(hook_list: rawptr, hook: ^Hook) ---

    @(link_name = "g_hook_destroy")
    hook_destroy :: proc(hook_list: rawptr, hook_id: ulong) -> boolean ---

    @(link_name = "g_hook_destroy_link")
    hook_destroy_link :: proc(hook_list: rawptr, hook: ^Hook) ---

    @(link_name = "g_hook_prepend")
    hook_prepend :: proc(hook_list: rawptr, hook: ^Hook) ---

    @(link_name = "g_hook_insert_before")
    hook_insert_before :: proc(hook_list: rawptr, sibling: ^Hook, hook: ^Hook) ---

    @(link_name = "g_hook_insert_sorted")
    hook_insert_sorted :: proc(hook_list: rawptr, hook: ^Hook, func: HookCompareFunc) ---

    @(link_name = "g_hook_get")
    hook_get :: proc(hook_list: rawptr, hook_id: ulong) -> ^Hook ---

    @(link_name = "g_hook_find")
    hook_find :: proc(hook_list: rawptr, need_valids: boolean, func: HookFindFunc, data: pointer) -> ^Hook ---

    @(link_name = "g_hook_find_data")
    hook_find_data :: proc(hook_list: rawptr, need_valids: boolean, data: pointer) -> ^Hook ---

    @(link_name = "g_hook_find_func")
    hook_find_func :: proc(hook_list: rawptr, need_valids: boolean, func: pointer) -> ^Hook ---

    @(link_name = "g_hook_find_func_data")
    hook_find_func_data :: proc(hook_list: rawptr, need_valids: boolean, func: pointer, data: pointer) -> ^Hook ---

    @(link_name = "g_hook_first_valid")
    hook_first_valid :: proc(hook_list: rawptr, may_be_in_call: boolean) -> ^Hook ---

    @(link_name = "g_hook_next_valid")
    hook_next_valid :: proc(hook_list: rawptr, hook: ^Hook, may_be_in_call: boolean) -> ^Hook ---

    @(link_name = "g_hook_compare_ids")
    hook_compare_ids :: proc(new_hook: ^Hook, sibling: ^Hook) -> int_ ---

    @(link_name = "g_hook_list_invoke")
    hook_list_invoke :: proc(hook_list: rawptr, may_recurse: boolean) ---

    @(link_name = "g_hook_list_invoke_check")
    hook_list_invoke_check :: proc(hook_list: rawptr, may_recurse: boolean) ---

    @(link_name = "g_hook_list_marshal")
    hook_list_marshal :: proc(hook_list: rawptr, may_recurse: boolean, marshaller: HookMarshaller, marshal_data: pointer) ---

    @(link_name = "g_hook_list_marshal_check")
    hook_list_marshal_check :: proc(hook_list: rawptr, may_recurse: boolean, marshaller: HookCheckMarshaller, marshal_data: pointer) ---

    @(link_name = "g_hostname_is_non_ascii")
    hostname_is_non_ascii :: proc(hostname: cstring) -> boolean ---

    @(link_name = "g_hostname_is_ascii_encoded")
    hostname_is_ascii_encoded :: proc(hostname: cstring) -> boolean ---

    @(link_name = "g_hostname_is_ip_address")
    hostname_is_ip_address :: proc(hostname: cstring) -> boolean ---

    @(link_name = "g_hostname_to_ascii")
    hostname_to_ascii :: proc(hostname: cstring) -> cstring ---

    @(link_name = "g_hostname_to_unicode")
    hostname_to_unicode :: proc(hostname: cstring) -> cstring ---

    @(link_name = "g_poll")
    poll :: proc(fds: [^]PollFD, nfds: uint_, timeout: int_) -> int_ ---

    @(link_name = "g_slist_alloc")
    slist_alloc :: proc() -> ^SList ---

    @(link_name = "g_slist_free")
    slist_free :: proc(list: ^SList) ---

    @(link_name = "g_slist_free_1")
    slist_free_1 :: proc(list: ^SList) ---

    @(link_name = "g_slist_free_full")
    slist_free_full :: proc(list: ^SList, free_func: DestroyNotify) ---

    @(link_name = "g_slist_append")
    slist_append :: proc(list: ^SList, data: pointer) -> ^SList ---

    @(link_name = "g_slist_prepend")
    slist_prepend :: proc(list: ^SList, data: pointer) -> ^SList ---

    @(link_name = "g_slist_insert")
    slist_insert :: proc(list: ^SList, data: pointer, position: int_) -> ^SList ---

    @(link_name = "g_slist_insert_sorted")
    slist_insert_sorted :: proc(list: ^SList, data: pointer, func: CompareFunc) -> ^SList ---

    @(link_name = "g_slist_insert_sorted_with_data")
    slist_insert_sorted_with_data :: proc(list: ^SList, data: pointer, func: CompareDataFunc, user_data: pointer) -> ^SList ---

    @(link_name = "g_slist_insert_before")
    slist_insert_before :: proc(slist: ^SList, sibling: ^SList, data: pointer) -> ^SList ---

    @(link_name = "g_slist_concat")
    slist_concat :: proc(list1: ^SList, list2: ^SList) -> ^SList ---

    @(link_name = "g_slist_remove")
    slist_remove :: proc(list: ^SList, data: constpointer) -> ^SList ---

    @(link_name = "g_slist_remove_all")
    slist_remove_all :: proc(list: ^SList, data: constpointer) -> ^SList ---

    @(link_name = "g_slist_remove_link")
    slist_remove_link :: proc(list: ^SList, link_: ^SList) -> ^SList ---

    @(link_name = "g_slist_delete_link")
    slist_delete_link :: proc(list: ^SList, link_: ^SList) -> ^SList ---

    @(link_name = "g_slist_reverse")
    slist_reverse :: proc(list: ^SList) -> ^SList ---

    @(link_name = "g_slist_copy")
    slist_copy :: proc(list: ^SList) -> ^SList ---

    @(link_name = "g_slist_copy_deep")
    slist_copy_deep :: proc(list: ^SList, func: CopyFunc, user_data: pointer) -> ^SList ---

    @(link_name = "g_slist_nth")
    slist_nth :: proc(list: ^SList, n: uint_) -> ^SList ---

    @(link_name = "g_slist_find")
    slist_find :: proc(list: ^SList, data: constpointer) -> ^SList ---

    @(link_name = "g_slist_find_custom")
    slist_find_custom :: proc(list: ^SList, data: constpointer, func: CompareFunc) -> ^SList ---

    @(link_name = "g_slist_position")
    slist_position :: proc(list: ^SList, llink: ^SList) -> int_ ---

    @(link_name = "g_slist_index")
    slist_index :: proc(list: ^SList, data: constpointer) -> int_ ---

    @(link_name = "g_slist_last")
    slist_last :: proc(list: ^SList) -> ^SList ---

    @(link_name = "g_slist_length")
    slist_length :: proc(list: ^SList) -> uint_ ---

    @(link_name = "g_slist_foreach")
    slist_foreach :: proc(list: ^SList, func: Func, user_data: pointer) ---

    @(link_name = "g_slist_sort")
    slist_sort :: proc(list: ^SList, compare_func: CompareFunc) -> ^SList ---

    @(link_name = "g_slist_sort_with_data")
    slist_sort_with_data :: proc(list: ^SList, compare_func: CompareDataFunc, user_data: pointer) -> ^SList ---

    @(link_name = "g_slist_nth_data")
    slist_nth_data :: proc(list: ^SList, n: uint_) -> pointer ---

    @(link_name = "g_clear_slist")
    clear_slist :: proc(slist_ptr: ^^SList, destroy: DestroyNotify) ---

    @(link_name = "g_main_context_new")
    main_context_new :: proc() -> ^MainContext ---

    @(link_name = "g_main_context_new_with_flags")
    main_context_new_with_flags :: proc(flags: MainContextFlags) -> ^MainContext ---

    @(link_name = "g_main_context_ref")
    main_context_ref :: proc(context_p: ^MainContext) -> ^MainContext ---

    @(link_name = "g_main_context_unref")
    main_context_unref :: proc(context_p: ^MainContext) ---

    @(link_name = "g_main_context_default")
    main_context_default :: proc() -> ^MainContext ---

    @(link_name = "g_main_context_iteration")
    main_context_iteration :: proc(context_p: ^MainContext, may_block: boolean) -> boolean ---

    @(link_name = "g_main_context_pending")
    main_context_pending :: proc(context_p: ^MainContext) -> boolean ---

    @(link_name = "g_main_context_find_source_by_id")
    main_context_find_source_by_id :: proc(context_p: ^MainContext, source_id: uint_) -> ^Source ---

    @(link_name = "g_main_context_find_source_by_user_data")
    main_context_find_source_by_user_data :: proc(context_p: ^MainContext, user_data: pointer) -> ^Source ---

    @(link_name = "g_main_context_find_source_by_funcs_user_data")
    main_context_find_source_by_funcs_user_data :: proc(context_p: ^MainContext, funcs: [^]SourceFuncs, user_data: pointer) -> ^Source ---

    @(link_name = "g_main_context_wakeup")
    main_context_wakeup :: proc(context_p: ^MainContext) ---

    @(link_name = "g_main_context_acquire")
    main_context_acquire :: proc(context_p: ^MainContext) -> boolean ---

    @(link_name = "g_main_context_release")
    main_context_release :: proc(context_p: ^MainContext) ---

    @(link_name = "g_main_context_is_owner")
    main_context_is_owner :: proc(context_p: ^MainContext) -> boolean ---

    @(link_name = "g_main_context_wait")
    main_context_wait :: proc(context_p: ^MainContext, cond: ^Cond, mutex: ^Mutex) -> boolean ---

    @(link_name = "g_main_context_prepare")
    main_context_prepare :: proc(context_p: ^MainContext, priority: ^int_) -> boolean ---

    @(link_name = "g_main_context_query")
    main_context_query :: proc(context_p: ^MainContext, max_priority: int_, timeout_: ^int_, fds: [^]PollFD, n_fds: int_) -> int_ ---

    @(link_name = "g_main_context_check")
    main_context_check :: proc(context_p: ^MainContext, max_priority: int_, fds: [^]PollFD, n_fds: int_) -> boolean ---

    @(link_name = "g_main_context_dispatch")
    main_context_dispatch :: proc(context_p: ^MainContext) ---

    @(link_name = "g_main_context_set_poll_func")
    main_context_set_poll_func :: proc(context_p: ^MainContext, func: PollFunc) ---

    @(link_name = "g_main_context_get_poll_func")
    main_context_get_poll_func :: proc(context_p: ^MainContext) -> PollFunc ---

    @(link_name = "g_main_context_add_poll")
    main_context_add_poll :: proc(context_p: ^MainContext, fd: ^PollFD, priority: int_) ---

    @(link_name = "g_main_context_remove_poll")
    main_context_remove_poll :: proc(context_p: ^MainContext, fd: ^PollFD) ---

    @(link_name = "g_main_depth")
    main_depth :: proc() -> int_ ---

    @(link_name = "g_main_current_source")
    main_current_source :: proc() -> ^Source ---

    @(link_name = "g_main_context_push_thread_default")
    main_context_push_thread_default :: proc(context_p: ^MainContext) ---

    @(link_name = "g_main_context_pop_thread_default")
    main_context_pop_thread_default :: proc(context_p: ^MainContext) ---

    @(link_name = "g_main_context_get_thread_default")
    main_context_get_thread_default :: proc() -> ^MainContext ---

    @(link_name = "g_main_context_ref_thread_default")
    main_context_ref_thread_default :: proc() -> ^MainContext ---

    @(link_name = "g_main_loop_new")
    main_loop_new :: proc(context_p: ^MainContext, is_running: boolean) -> ^MainLoop ---

    @(link_name = "g_main_loop_run")
    main_loop_run :: proc(loop: ^MainLoop) ---

    @(link_name = "g_main_loop_quit")
    main_loop_quit :: proc(loop: ^MainLoop) ---

    @(link_name = "g_main_loop_ref")
    main_loop_ref :: proc(loop: ^MainLoop) -> ^MainLoop ---

    @(link_name = "g_main_loop_unref")
    main_loop_unref :: proc(loop: ^MainLoop) ---

    @(link_name = "g_main_loop_is_running")
    main_loop_is_running :: proc(loop: ^MainLoop) -> boolean ---

    @(link_name = "g_main_loop_get_context")
    main_loop_get_context :: proc(loop: ^MainLoop) -> ^MainContext ---

    @(link_name = "g_source_new")
    source_new :: proc(source_funcs: [^]SourceFuncs, struct_size: uint_) -> ^Source ---

    @(link_name = "g_source_set_dispose_function")
    source_set_dispose_function :: proc(source: ^Source, dispose: SourceDisposeFunc) ---

    @(link_name = "g_source_ref")
    source_ref :: proc(source: ^Source) -> ^Source ---

    @(link_name = "g_source_unref")
    source_unref :: proc(source: ^Source) ---

    @(link_name = "g_source_attach")
    source_attach :: proc(source: ^Source, context_p: ^MainContext) -> uint_ ---

    @(link_name = "g_source_destroy")
    source_destroy :: proc(source: ^Source) ---

    @(link_name = "g_source_set_priority")
    source_set_priority :: proc(source: ^Source, priority: int_) ---

    @(link_name = "g_source_get_priority")
    source_get_priority :: proc(source: ^Source) -> int_ ---

    @(link_name = "g_source_set_can_recurse")
    source_set_can_recurse :: proc(source: ^Source, can_recurse: boolean) ---

    @(link_name = "g_source_get_can_recurse")
    source_get_can_recurse :: proc(source: ^Source) -> boolean ---

    @(link_name = "g_source_get_id")
    source_get_id :: proc(source: ^Source) -> uint_ ---

    @(link_name = "g_source_get_context")
    source_get_context :: proc(source: ^Source) -> ^MainContext ---

    @(link_name = "g_source_set_callback")
    source_set_callback :: proc(source: ^Source, func: SourceFunc, data: pointer, notify: DestroyNotify) ---

    @(link_name = "g_source_set_funcs")
    source_set_funcs :: proc(source: ^Source, funcs: [^]SourceFuncs) ---

    @(link_name = "g_source_is_destroyed")
    source_is_destroyed :: proc(source: ^Source) -> boolean ---

    @(link_name = "g_source_set_name")
    source_set_name :: proc(source: ^Source, name: cstring) ---

    @(link_name = "g_source_set_static_name")
    source_set_static_name :: proc(source: ^Source, name: cstring) ---

    @(link_name = "g_source_get_name")
    source_get_name :: proc(source: ^Source) -> cstring ---

    @(link_name = "g_source_set_name_by_id")
    source_set_name_by_id :: proc(tag: uint_, name: cstring) ---

    @(link_name = "g_source_set_ready_time")
    source_set_ready_time :: proc(source: ^Source, ready_time: int64) ---

    @(link_name = "g_source_get_ready_time")
    source_get_ready_time :: proc(source: ^Source) -> int64 ---

    @(link_name = "g_source_add_unix_fd")
    source_add_unix_fd :: proc(source: ^Source, fd: int_, events: IOCondition) -> pointer ---

    @(link_name = "g_source_modify_unix_fd")
    source_modify_unix_fd :: proc(source: ^Source, tag: pointer, new_events: IOCondition) ---

    @(link_name = "g_source_remove_unix_fd")
    source_remove_unix_fd :: proc(source: ^Source, tag: pointer) ---

    @(link_name = "g_source_query_unix_fd")
    source_query_unix_fd :: proc(source: ^Source, tag: pointer) -> IOCondition ---

    @(link_name = "g_source_set_callback_indirect")
    source_set_callback_indirect :: proc(source: ^Source, callback_data: pointer, callback_funcs: [^]SourceCallbackFuncs) ---

    @(link_name = "g_source_add_poll")
    source_add_poll :: proc(source: ^Source, fd: ^PollFD) ---

    @(link_name = "g_source_remove_poll")
    source_remove_poll :: proc(source: ^Source, fd: ^PollFD) ---

    @(link_name = "g_source_add_child_source")
    source_add_child_source :: proc(source: ^Source, child_source: ^Source) ---

    @(link_name = "g_source_remove_child_source")
    source_remove_child_source :: proc(source: ^Source, child_source: ^Source) ---

    @(link_name = "g_source_get_current_time")
    source_get_current_time :: proc(source: ^Source, timeval: ^TimeVal) ---

    @(link_name = "g_source_get_time")
    source_get_time :: proc(source: ^Source) -> int64 ---

    @(link_name = "g_idle_source_new")
    idle_source_new :: proc() -> ^Source ---

    @(link_name = "g_child_watch_source_new")
    child_watch_source_new :: proc(pid: Pid) -> ^Source ---

    @(link_name = "g_timeout_source_new")
    timeout_source_new :: proc(interval: uint_) -> ^Source ---

    @(link_name = "g_timeout_source_new_seconds")
    timeout_source_new_seconds :: proc(interval: uint_) -> ^Source ---

    @(link_name = "g_get_current_time")
    get_current_time :: proc(result: ^TimeVal) ---

    @(link_name = "g_get_monotonic_time")
    get_monotonic_time :: proc() -> int64 ---

    @(link_name = "g_get_real_time")
    get_real_time :: proc() -> int64 ---

    @(link_name = "g_source_remove")
    source_remove :: proc(tag: uint_) -> boolean ---

    @(link_name = "g_source_remove_by_user_data")
    source_remove_by_user_data :: proc(user_data: pointer) -> boolean ---

    @(link_name = "g_source_remove_by_funcs_user_data")
    source_remove_by_funcs_user_data :: proc(funcs: [^]SourceFuncs, user_data: pointer) -> boolean ---

    @(link_name = "g_clear_handle_id")
    clear_handle_id :: proc(tag_ptr: ^uint_, clear_func: ClearHandleFunc) ---

    @(link_name = "g_timeout_add_full")
    timeout_add_full :: proc(priority: int_, interval: uint_, function: SourceFunc, data: pointer, notify: DestroyNotify) -> uint_ ---

    @(link_name = "g_timeout_add")
    timeout_add :: proc(interval: uint_, function: SourceFunc, data: pointer) -> uint_ ---

    @(link_name = "g_timeout_add_once")
    timeout_add_once :: proc(interval: uint_, function: SourceOnceFunc, data: pointer) -> uint_ ---

    @(link_name = "g_timeout_add_seconds_full")
    timeout_add_seconds_full :: proc(priority: int_, interval: uint_, function: SourceFunc, data: pointer, notify: DestroyNotify) -> uint_ ---

    @(link_name = "g_timeout_add_seconds")
    timeout_add_seconds :: proc(interval: uint_, function: SourceFunc, data: pointer) -> uint_ ---

    @(link_name = "g_timeout_add_seconds_once")
    timeout_add_seconds_once :: proc(interval: uint_, function: SourceOnceFunc, data: pointer) -> uint_ ---

    @(link_name = "g_child_watch_add_full")
    child_watch_add_full :: proc(priority: int_, pid: Pid, function: ChildWatchFunc, data: pointer, notify: DestroyNotify) -> uint_ ---

    @(link_name = "g_child_watch_add")
    child_watch_add :: proc(pid: Pid, function: ChildWatchFunc, data: pointer) -> uint_ ---

    @(link_name = "g_idle_add")
    idle_add :: proc(function: SourceFunc, data: pointer) -> uint_ ---

    @(link_name = "g_idle_add_full")
    idle_add_full :: proc(priority: int_, function: SourceFunc, data: pointer, notify: DestroyNotify) -> uint_ ---

    @(link_name = "g_idle_add_once")
    idle_add_once :: proc(function: SourceOnceFunc, data: pointer) -> uint_ ---

    @(link_name = "g_idle_remove_by_data")
    idle_remove_by_data :: proc(data: pointer) -> boolean ---

    @(link_name = "g_main_context_invoke_full")
    main_context_invoke_full :: proc(context_p: ^MainContext, priority: int_, function: SourceFunc, data: pointer, notify: DestroyNotify) ---

    @(link_name = "g_main_context_invoke")
    main_context_invoke :: proc(context_p: ^MainContext, function: SourceFunc, data: pointer) ---

    @(link_name = "g_timeout_funcs")
    g_timeout_funcs: SourceFuncs

    @(link_name = "g_child_watch_funcs")
    g_child_watch_funcs: SourceFuncs

    @(link_name = "g_idle_funcs")
    g_idle_funcs: SourceFuncs

    @(link_name = "g_unix_signal_funcs")
    g_unix_signal_funcs: SourceFuncs

    @(link_name = "g_unix_fd_source_funcs")
    g_unix_fd_source_funcs: SourceFuncs

    @(link_name = "g_unicode_script_to_iso15924")
    unicode_script_to_iso15924 :: proc(script: UnicodeScript) -> uint32 ---

    @(link_name = "g_unicode_script_from_iso15924")
    unicode_script_from_iso15924 :: proc(iso15924: uint32) -> UnicodeScript ---

    @(link_name = "g_unichar_isalnum")
    unichar_isalnum :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_isalpha")
    unichar_isalpha :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_iscntrl")
    unichar_iscntrl :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_isdigit")
    unichar_isdigit :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_isgraph")
    unichar_isgraph :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_islower")
    unichar_islower :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_isprint")
    unichar_isprint :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_ispunct")
    unichar_ispunct :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_isspace")
    unichar_isspace :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_isupper")
    unichar_isupper :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_isxdigit")
    unichar_isxdigit :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_istitle")
    unichar_istitle :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_isdefined")
    unichar_isdefined :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_iswide")
    unichar_iswide :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_iswide_cjk")
    unichar_iswide_cjk :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_iszerowidth")
    unichar_iszerowidth :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_ismark")
    unichar_ismark :: proc(c: unichar) -> boolean ---

    @(link_name = "g_unichar_toupper")
    unichar_toupper :: proc(c: unichar) -> unichar ---

    @(link_name = "g_unichar_tolower")
    unichar_tolower :: proc(c: unichar) -> unichar ---

    @(link_name = "g_unichar_totitle")
    unichar_totitle :: proc(c: unichar) -> unichar ---

    @(link_name = "g_unichar_digit_value")
    unichar_digit_value :: proc(c: unichar) -> int_ ---

    @(link_name = "g_unichar_xdigit_value")
    unichar_xdigit_value :: proc(c: unichar) -> int_ ---

    @(link_name = "g_unichar_type")
    unichar_type :: proc(c: unichar) -> UnicodeType ---

    @(link_name = "g_unichar_break_type")
    unichar_break_type :: proc(c: unichar) -> UnicodeBreakType ---

    @(link_name = "g_unichar_combining_class")
    unichar_combining_class :: proc(uc: unichar) -> int_ ---

    @(link_name = "g_unichar_get_mirror_char")
    unichar_get_mirror_char :: proc(ch: unichar, mirrored_ch: ^unichar) -> boolean ---

    @(link_name = "g_unichar_get_script")
    unichar_get_script :: proc(ch: unichar) -> UnicodeScript ---

    @(link_name = "g_unichar_validate")
    unichar_validate :: proc(ch: unichar) -> boolean ---

    @(link_name = "g_unichar_compose")
    unichar_compose :: proc(a: unichar, b: unichar, ch: ^unichar) -> boolean ---

    @(link_name = "g_unichar_decompose")
    unichar_decompose :: proc(ch: unichar, a: ^unichar, b: ^unichar) -> boolean ---

    @(link_name = "g_unichar_fully_decompose")
    unichar_fully_decompose :: proc(ch: unichar, compat: boolean, result: ^unichar, result_len: size) -> size ---

    @(link_name = "g_unicode_canonical_ordering")
    unicode_canonical_ordering :: proc(string_p: ^unichar, len: size) ---

    @(link_name = "g_unicode_canonical_decomposition")
    unicode_canonical_decomposition :: proc(ch: unichar, result_len: ^size) -> ^unichar ---

    @(link_name = "g_utf8_skip")
    g_utf8_skip: cstring

    @(link_name = "g_utf8_get_char")
    utf8_get_char :: proc(p: cstring) -> unichar ---

    @(link_name = "g_utf8_get_char_validated")
    utf8_get_char_validated :: proc(p: cstring, max_len: ssize) -> unichar ---

    @(link_name = "g_utf8_offset_to_pointer")
    utf8_offset_to_pointer :: proc(str: cstring, offset_p: long) -> cstring ---

    @(link_name = "g_utf8_pointer_to_offset")
    utf8_pointer_to_offset :: proc(str: cstring, pos: [^]char) -> long ---

    @(link_name = "g_utf8_prev_char")
    utf8_prev_char :: proc(p: cstring) -> cstring ---

    @(link_name = "g_utf8_find_next_char")
    utf8_find_next_char :: proc(p: cstring, end: cstring) -> cstring ---

    @(link_name = "g_utf8_find_prev_char")
    utf8_find_prev_char :: proc(str: cstring, p: cstring) -> cstring ---

    @(link_name = "g_utf8_strlen")
    utf8_strlen :: proc(p: cstring, max: ssize) -> long ---

    @(link_name = "g_utf8_substring")
    utf8_substring :: proc(str: cstring, start_pos: long, end_pos: long) -> cstring ---

    @(link_name = "g_utf8_strncpy")
    utf8_strncpy :: proc(dest: cstring, src: cstring, n: size) -> cstring ---

    @(link_name = "g_utf8_truncate_middle")
    utf8_truncate_middle :: proc(string_p: cstring, truncate_length: size) -> cstring ---

    @(link_name = "g_utf8_strchr")
    utf8_strchr :: proc(p: cstring, len: ssize, c: unichar) -> cstring ---

    @(link_name = "g_utf8_strrchr")
    utf8_strrchr :: proc(p: cstring, len: ssize, c: unichar) -> cstring ---

    @(link_name = "g_utf8_strreverse")
    utf8_strreverse :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_utf8_to_utf16")
    utf8_to_utf16 :: proc(str: cstring, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> ^unichar2 ---

    @(link_name = "g_utf8_to_ucs4")
    utf8_to_ucs4 :: proc(str: cstring, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> ^unichar ---

    @(link_name = "g_utf8_to_ucs4_fast")
    utf8_to_ucs4_fast :: proc(str: cstring, len: long, items_written: ^long) -> ^unichar ---

    @(link_name = "g_utf16_to_ucs4")
    utf16_to_ucs4 :: proc(str: ^unichar2, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> ^unichar ---

    @(link_name = "g_utf16_to_utf8")
    utf16_to_utf8 :: proc(str: ^unichar2, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> cstring ---

    @(link_name = "g_ucs4_to_utf16")
    ucs4_to_utf16 :: proc(str: ^unichar, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> ^unichar2 ---

    @(link_name = "g_ucs4_to_utf8")
    ucs4_to_utf8 :: proc(str: ^unichar, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> cstring ---

    @(link_name = "g_unichar_to_utf8")
    unichar_to_utf8 :: proc(c: unichar, outbuf: ^byte) -> int_ ---

    @(link_name = "g_utf8_validate")
    utf8_validate :: proc(str: cstring, max_len: ssize, end: ^cstring) -> boolean ---

    @(link_name = "g_utf8_validate_len")
    utf8_validate_len :: proc(str: cstring, max_len: size, end: ^cstring) -> boolean ---

    @(link_name = "g_utf8_strup")
    utf8_strup :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_utf8_strdown")
    utf8_strdown :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_utf8_casefold")
    utf8_casefold :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_utf8_normalize")
    utf8_normalize :: proc(str: cstring, len: ssize, mode: NormalizeMode) -> cstring ---

    @(link_name = "g_utf8_collate")
    utf8_collate :: proc(str1: cstring, str2: cstring) -> int_ ---

    @(link_name = "g_utf8_collate_key")
    utf8_collate_key :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_utf8_collate_key_for_filename")
    utf8_collate_key_for_filename :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_utf8_make_valid")
    utf8_make_valid :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_ascii_table")
    g_ascii_table: ^uint16

    @(link_name = "g_ascii_tolower")
    ascii_tolower :: proc(c: char) -> char ---

    @(link_name = "g_ascii_toupper")
    ascii_toupper :: proc(c: char) -> char ---

    @(link_name = "g_ascii_digit_value")
    ascii_digit_value :: proc(c: char) -> int_ ---

    @(link_name = "g_ascii_xdigit_value")
    ascii_xdigit_value :: proc(c: char) -> int_ ---

    @(link_name = "g_strdelimit")
    strdelimit :: proc(string_p: cstring, delimiters: [^]char, new_delimiter: char) -> cstring ---

    @(link_name = "g_strcanon")
    strcanon :: proc(string_p: cstring, valid_chars: [^]char, substitutor: char) -> cstring ---

    @(link_name = "g_strerror")
    strerror :: proc(errnum: int_) -> cstring ---

    @(link_name = "g_strsignal")
    strsignal :: proc(signum: int_) -> cstring ---

    @(link_name = "g_strreverse")
    strreverse :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_strlcpy")
    strlcpy :: proc(dest: cstring, src: cstring, dest_size: size) -> size ---

    @(link_name = "g_strlcat")
    strlcat :: proc(dest: cstring, src: cstring, dest_size: size) -> size ---

    @(link_name = "g_strstr_len")
    strstr_len :: proc(haystack: cstring, haystack_len: ssize, needle: cstring) -> cstring ---

    @(link_name = "g_strrstr")
    strrstr :: proc(haystack: cstring, needle: cstring) -> cstring ---

    @(link_name = "g_strrstr_len")
    strrstr_len :: proc(haystack: cstring, haystack_len: ssize, needle: cstring) -> cstring ---

    @(link_name = "g_str_has_suffix")
    str_has_suffix :: proc(str: cstring, suffix: cstring) -> boolean ---

    @(link_name = "g_str_has_prefix")
    str_has_prefix :: proc(str: cstring, prefix: cstring) -> boolean ---

    @(link_name = "g_strtod")
    strtod :: proc(nptr: cstring, endptr: ^cstring) -> double ---

    @(link_name = "g_ascii_strtod")
    ascii_strtod :: proc(nptr: cstring, endptr: ^cstring) -> double ---

    @(link_name = "g_ascii_strtoull")
    ascii_strtoull :: proc(nptr: cstring, endptr: ^cstring, base: uint_) -> uint64 ---

    @(link_name = "g_ascii_strtoll")
    ascii_strtoll :: proc(nptr: cstring, endptr: ^cstring, base: uint_) -> int64 ---

    @(link_name = "g_ascii_dtostr")
    ascii_dtostr :: proc(buffer: ^byte, buf_len: int_, d: double) -> cstring ---

    @(link_name = "g_ascii_formatd")
    ascii_formatd :: proc(buffer: ^byte, buf_len: int_, format: cstring, d: double) -> cstring ---

    @(link_name = "g_strchug")
    strchug :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_strchomp")
    strchomp :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_ascii_strcasecmp")
    ascii_strcasecmp :: proc(s1: cstring, s2: cstring) -> int_ ---

    @(link_name = "g_ascii_strncasecmp")
    ascii_strncasecmp :: proc(s1: cstring, s2: cstring, n: size) -> int_ ---

    @(link_name = "g_ascii_strdown")
    ascii_strdown :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_ascii_strup")
    ascii_strup :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_str_is_ascii")
    str_is_ascii :: proc(str: cstring) -> boolean ---

    @(link_name = "g_strcasecmp")
    strcasecmp :: proc(s1: cstring, s2: cstring) -> int_ ---

    @(link_name = "g_strncasecmp")
    strncasecmp :: proc(s1: cstring, s2: cstring, n: uint_) -> int_ ---

    @(link_name = "g_strdown")
    strdown :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_strup")
    strup :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_strdup")
    strdup :: proc(str: cstring) -> cstring ---

    @(link_name = "g_strdup_printf")
    strdup_printf :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_strdup_vprintf")
    strdup_vprintf :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_strndup")
    strndup :: proc(str: cstring, n: size) -> cstring ---

    @(link_name = "g_strnfill")
    strnfill :: proc(length: size, fill_char: char) -> cstring ---

    @(link_name = "g_strconcat")
    strconcat :: proc(string1: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_strjoin")
    strjoin :: proc(separator: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_strcompress")
    strcompress :: proc(source: cstring) -> cstring ---

    @(link_name = "g_strescape")
    strescape :: proc(source: cstring, exceptions: [^]char) -> cstring ---

    @(link_name = "g_memdup")
    memdup :: proc(mem: constpointer, byte_size: uint_) -> pointer ---

    @(link_name = "g_memdup2")
    memdup2 :: proc(mem: constpointer, byte_size: size) -> pointer ---

    @(link_name = "g_strsplit")
    strsplit :: proc(string_p: cstring, delimiter: cstring, max_tokens: int_) -> ^cstring ---

    @(link_name = "g_strsplit_set")
    strsplit_set :: proc(string_p: cstring, delimiters: [^]char, max_tokens: int_) -> ^cstring ---

    @(link_name = "g_strjoinv")
    strjoinv :: proc(separator: cstring, str_array: ^cstring) -> cstring ---

    @(link_name = "g_strfreev")
    strfreev :: proc(str_array: ^cstring) ---

    @(link_name = "g_strdupv")
    strdupv :: proc(str_array: ^cstring) -> ^cstring ---

    @(link_name = "g_strv_length")
    strv_length :: proc(str_array: ^cstring) -> uint_ ---

    @(link_name = "g_stpcpy")
    stpcpy :: proc(dest: cstring, src: cstring) -> cstring ---

    @(link_name = "g_str_to_ascii")
    str_to_ascii :: proc(str: cstring, from_locale: cstring) -> cstring ---

    @(link_name = "g_str_tokenize_and_fold")
    str_tokenize_and_fold :: proc(string_p: cstring, translit_locale: cstring, ascii_alternates: [^]^cstring) -> ^cstring ---

    @(link_name = "g_str_match_string")
    str_match_string :: proc(search_term: cstring, potential_hit: cstring, accept_alternates: boolean) -> boolean ---

    @(link_name = "g_strv_contains")
    strv_contains :: proc(strv: ^cstring, str: cstring) -> boolean ---

    @(link_name = "g_strv_equal")
    strv_equal :: proc(strv1: ^cstring, strv2: ^cstring) -> boolean ---

    @(link_name = "g_number_parser_error_quark")
    number_parser_error_quark :: proc() -> Quark ---

    @(link_name = "g_ascii_string_to_signed")
    ascii_string_to_signed :: proc(str: cstring, base: uint_, min: int64, max: int64, out_num: ^int64, error: ^^Error) -> boolean ---

    @(link_name = "g_ascii_string_to_unsigned")
    ascii_string_to_unsigned :: proc(str: cstring, base: uint_, min: uint64, max: uint64, out_num: ^uint64, error: ^^Error) -> boolean ---

    @(link_name = "g_string_new")
    string_new :: proc(init: cstring) -> ^String ---

    @(link_name = "g_string_new_take")
    string_new_take :: proc(init: cstring) -> ^String ---

    @(link_name = "g_string_new_len")
    string_new_len :: proc(init: cstring, len: ssize) -> ^String ---

    @(link_name = "g_string_sized_new")
    string_sized_new :: proc(dfl_size: size) -> ^String ---

    @(link_name = "g_string_free")
    string_free :: proc(string_p: ^String, free_segment: boolean) -> cstring ---

    @(link_name = "g_string_free_and_steal")
    string_free_and_steal :: proc(string_p: ^String) -> cstring ---

    @(link_name = "g_string_free_to_bytes")
    string_free_to_bytes :: proc(string_p: ^String) -> ^Bytes ---

    @(link_name = "g_string_equal")
    string_equal :: proc(v: ^String, v2: ^String) -> boolean ---

    @(link_name = "g_string_hash")
    string_hash :: proc(str: ^String) -> uint_ ---

    @(link_name = "g_string_assign")
    string_assign :: proc(string_p: ^String, rval: cstring) -> ^String ---

    @(link_name = "g_string_truncate")
    string_truncate :: proc(string_p: ^String, len: size) -> ^String ---

    @(link_name = "g_string_set_size")
    string_set_size :: proc(string_p: ^String, len: size) -> ^String ---

    @(link_name = "g_string_insert_len")
    string_insert_len :: proc(string_p: ^String, pos: ssize, val: cstring, len: ssize) -> ^String ---

    @(link_name = "g_string_append")
    string_append :: proc(string_p: ^String, val: cstring) -> ^String ---

    @(link_name = "g_string_append_len")
    string_append_len :: proc(string_p: ^String, val: cstring, len: ssize) -> ^String ---

    @(link_name = "g_string_append_c")
    string_append_c :: proc(string_p: ^String, c: char) -> ^String ---

    @(link_name = "g_string_append_unichar")
    string_append_unichar :: proc(string_p: ^String, wc: unichar) -> ^String ---

    @(link_name = "g_string_prepend")
    string_prepend :: proc(string_p: ^String, val: cstring) -> ^String ---

    @(link_name = "g_string_prepend_c")
    string_prepend_c :: proc(string_p: ^String, c: char) -> ^String ---

    @(link_name = "g_string_prepend_unichar")
    string_prepend_unichar :: proc(string_p: ^String, wc: unichar) -> ^String ---

    @(link_name = "g_string_prepend_len")
    string_prepend_len :: proc(string_p: ^String, val: cstring, len: ssize) -> ^String ---

    @(link_name = "g_string_insert")
    string_insert :: proc(string_p: ^String, pos: ssize, val: cstring) -> ^String ---

    @(link_name = "g_string_insert_c")
    string_insert_c :: proc(string_p: ^String, pos: ssize, c: char) -> ^String ---

    @(link_name = "g_string_insert_unichar")
    string_insert_unichar :: proc(string_p: ^String, pos: ssize, wc: unichar) -> ^String ---

    @(link_name = "g_string_overwrite")
    string_overwrite :: proc(string_p: ^String, pos: size, val: cstring) -> ^String ---

    @(link_name = "g_string_overwrite_len")
    string_overwrite_len :: proc(string_p: ^String, pos: size, val: cstring, len: ssize) -> ^String ---

    @(link_name = "g_string_erase")
    string_erase :: proc(string_p: ^String, pos: ssize, len: ssize) -> ^String ---

    @(link_name = "g_string_replace")
    string_replace :: proc(string_p: ^String, find: cstring, replace: cstring, limit: uint_) -> uint_ ---

    @(link_name = "g_string_ascii_down")
    string_ascii_down :: proc(string_p: ^String) -> ^String ---

    @(link_name = "g_string_ascii_up")
    string_ascii_up :: proc(string_p: ^String) -> ^String ---

    @(link_name = "g_string_vprintf")
    string_vprintf :: proc(string_p: ^String, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_string_printf")
    string_printf :: proc(string_p: ^String, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_string_append_vprintf")
    string_append_vprintf :: proc(string_p: ^String, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_string_append_printf")
    string_append_printf :: proc(string_p: ^String, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_string_append_uri_escaped")
    string_append_uri_escaped :: proc(string_p: ^String, unescaped: cstring, reserved_chars_allowed: cstring, allow_utf8: boolean) -> ^String ---

    @(link_name = "g_string_down")
    string_down :: proc(string_p: ^String) -> ^String ---

    @(link_name = "g_string_up")
    string_up :: proc(string_p: ^String) -> ^String ---

    @(link_name = "g_io_channel_init")
    io_channel_init :: proc(channel: rawptr) ---

    @(link_name = "g_io_channel_ref")
    io_channel_ref :: proc(channel: rawptr) -> rawptr ---

    @(link_name = "g_io_channel_unref")
    io_channel_unref :: proc(channel: rawptr) ---

    @(link_name = "g_io_channel_read")
    io_channel_read :: proc(channel: rawptr, buf: ^byte, count: size, bytes_read: ^size) -> IOError ---

    @(link_name = "g_io_channel_write")
    io_channel_write :: proc(channel: rawptr, buf: ^byte, count: size, bytes_written: ^size) -> IOError ---

    @(link_name = "g_io_channel_seek")
    io_channel_seek :: proc(channel: rawptr, offset_p: int64, type: SeekType) -> IOError ---

    @(link_name = "g_io_channel_close")
    io_channel_close :: proc(channel: rawptr) ---

    @(link_name = "g_io_channel_shutdown")
    io_channel_shutdown :: proc(channel: rawptr, flush: boolean, err: ^^Error) -> IOStatus ---

    @(link_name = "g_io_add_watch_full")
    io_add_watch_full :: proc(channel: rawptr, priority: int_, condition: IOCondition, func: IOFunc, user_data: pointer, notify: DestroyNotify) -> uint_ ---

    @(link_name = "g_io_create_watch")
    io_create_watch :: proc(channel: rawptr, condition: IOCondition) -> ^Source ---

    @(link_name = "g_io_add_watch")
    io_add_watch :: proc(channel: rawptr, condition: IOCondition, func: IOFunc, user_data: pointer) -> uint_ ---

    @(link_name = "g_io_channel_set_buffer_size")
    io_channel_set_buffer_size :: proc(channel: rawptr, size_p: size) ---

    @(link_name = "g_io_channel_get_buffer_size")
    io_channel_get_buffer_size :: proc(channel: rawptr) -> size ---

    @(link_name = "g_io_channel_get_buffer_condition")
    io_channel_get_buffer_condition :: proc(channel: rawptr) -> IOCondition ---

    @(link_name = "g_io_channel_set_flags")
    io_channel_set_flags :: proc(channel: rawptr, flags: IOFlags, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_get_flags")
    io_channel_get_flags :: proc(channel: rawptr) -> IOFlags ---

    @(link_name = "g_io_channel_set_line_term")
    io_channel_set_line_term :: proc(channel: rawptr, line_term: cstring, length: int_) ---

    @(link_name = "g_io_channel_get_line_term")
    io_channel_get_line_term :: proc(channel: rawptr, length: ^int_) -> cstring ---

    @(link_name = "g_io_channel_set_buffered")
    io_channel_set_buffered :: proc(channel: rawptr, buffered: boolean) ---

    @(link_name = "g_io_channel_get_buffered")
    io_channel_get_buffered :: proc(channel: rawptr) -> boolean ---

    @(link_name = "g_io_channel_set_encoding")
    io_channel_set_encoding :: proc(channel: rawptr, encoding: cstring, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_get_encoding")
    io_channel_get_encoding :: proc(channel: rawptr) -> cstring ---

    @(link_name = "g_io_channel_set_close_on_unref")
    io_channel_set_close_on_unref :: proc(channel: rawptr, do_close: boolean) ---

    @(link_name = "g_io_channel_get_close_on_unref")
    io_channel_get_close_on_unref :: proc(channel: rawptr) -> boolean ---

    @(link_name = "g_io_channel_flush")
    io_channel_flush :: proc(channel: rawptr, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_read_line")
    io_channel_read_line :: proc(channel: rawptr, str_return: ^cstring, length: ^size, terminator_pos: [^]size, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_read_line_string")
    io_channel_read_line_string :: proc(channel: rawptr, buffer: ^String, terminator_pos: [^]size, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_read_to_end")
    io_channel_read_to_end :: proc(channel: rawptr, str_return: ^cstring, length: ^size, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_read_chars")
    io_channel_read_chars :: proc(channel: rawptr, buf: ^byte, count: size, bytes_read: ^size, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_read_unichar")
    io_channel_read_unichar :: proc(channel: rawptr, thechar: ^unichar, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_write_chars")
    io_channel_write_chars :: proc(channel: rawptr, buf: ^byte, count: ssize, bytes_written: ^size, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_write_unichar")
    io_channel_write_unichar :: proc(channel: rawptr, thechar: unichar, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_seek_position")
    io_channel_seek_position :: proc(channel: rawptr, offset_p: int64, type: SeekType, error: ^^Error) -> IOStatus ---

    @(link_name = "g_io_channel_new_file")
    io_channel_new_file :: proc(filename: cstring, mode: cstring, error: ^^Error) -> rawptr ---

    @(link_name = "g_io_channel_error_quark")
    io_channel_error_quark :: proc() -> Quark ---

    @(link_name = "g_io_channel_error_from_errno")
    io_channel_error_from_errno :: proc(en: int_) -> IOChannelError ---

    @(link_name = "g_io_channel_unix_new")
    io_channel_unix_new :: proc(fd: i32) -> rawptr ---

    @(link_name = "g_io_channel_unix_get_fd")
    io_channel_unix_get_fd :: proc(channel: rawptr) -> int_ ---

    @(link_name = "g_io_watch_funcs")
    g_io_watch_funcs: SourceFuncs

    @(link_name = "g_key_file_error_quark")
    key_file_error_quark :: proc() -> Quark ---

    @(link_name = "g_key_file_new")
    key_file_new :: proc() -> ^KeyFile ---

    @(link_name = "g_key_file_ref")
    key_file_ref :: proc(key_file: ^KeyFile) -> ^KeyFile ---

    @(link_name = "g_key_file_unref")
    key_file_unref :: proc(key_file: ^KeyFile) ---

    @(link_name = "g_key_file_free")
    key_file_free :: proc(key_file: ^KeyFile) ---

    @(link_name = "g_key_file_set_list_separator")
    key_file_set_list_separator :: proc(key_file: ^KeyFile, separator: char) ---

    @(link_name = "g_key_file_load_from_file")
    key_file_load_from_file :: proc(key_file: ^KeyFile, file: cstring, flags: KeyFileFlags, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_load_from_data")
    key_file_load_from_data :: proc(key_file: ^KeyFile, data: ^byte, length: size, flags: KeyFileFlags, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_load_from_bytes")
    key_file_load_from_bytes :: proc(key_file: ^KeyFile, bytes: [^]Bytes, flags: KeyFileFlags, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_load_from_dirs")
    key_file_load_from_dirs :: proc(key_file: ^KeyFile, file: cstring, search_dirs: [^]cstring, full_path: ^cstring, flags: KeyFileFlags, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_load_from_data_dirs")
    key_file_load_from_data_dirs :: proc(key_file: ^KeyFile, file: cstring, full_path: ^cstring, flags: KeyFileFlags, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_to_data")
    key_file_to_data :: proc(key_file: ^KeyFile, length: ^size, error: ^^Error) -> cstring ---

    @(link_name = "g_key_file_save_to_file")
    key_file_save_to_file :: proc(key_file: ^KeyFile, filename: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_get_start_group")
    key_file_get_start_group :: proc(key_file: ^KeyFile) -> cstring ---

    @(link_name = "g_key_file_get_groups")
    key_file_get_groups :: proc(key_file: ^KeyFile, length: ^size) -> ^cstring ---

    @(link_name = "g_key_file_get_keys")
    key_file_get_keys :: proc(key_file: ^KeyFile, group_name: cstring, length: ^size, error: ^^Error) -> ^cstring ---

    @(link_name = "g_key_file_has_group")
    key_file_has_group :: proc(key_file: ^KeyFile, group_name: cstring) -> boolean ---

    @(link_name = "g_key_file_has_key")
    key_file_has_key :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_get_value")
    key_file_get_value :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_key_file_set_value")
    key_file_set_value :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: cstring) ---

    @(link_name = "g_key_file_get_string")
    key_file_get_string :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_key_file_set_string")
    key_file_set_string :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, string_p: cstring) ---

    @(link_name = "g_key_file_get_locale_string")
    key_file_get_locale_string :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_key_file_get_locale_for_key")
    key_file_get_locale_for_key :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring) -> cstring ---

    @(link_name = "g_key_file_set_locale_string")
    key_file_set_locale_string :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring, string_p: cstring) ---

    @(link_name = "g_key_file_get_boolean")
    key_file_get_boolean :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_set_boolean")
    key_file_set_boolean :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: boolean) ---

    @(link_name = "g_key_file_get_integer")
    key_file_get_integer :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> int_ ---

    @(link_name = "g_key_file_set_integer")
    key_file_set_integer :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: int_) ---

    @(link_name = "g_key_file_get_int64")
    key_file_get_int64 :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> int64 ---

    @(link_name = "g_key_file_set_int64")
    key_file_set_int64 :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: int64) ---

    @(link_name = "g_key_file_get_uint64")
    key_file_get_uint64 :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> uint64 ---

    @(link_name = "g_key_file_set_uint64")
    key_file_set_uint64 :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: uint64) ---

    @(link_name = "g_key_file_get_double")
    key_file_get_double :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> double ---

    @(link_name = "g_key_file_set_double")
    key_file_set_double :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: double) ---

    @(link_name = "g_key_file_get_string_list")
    key_file_get_string_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, length: ^size, error: ^^Error) -> ^cstring ---

    @(link_name = "g_key_file_set_string_list")
    key_file_set_string_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, list: [^]cstring, length: size) ---

    @(link_name = "g_key_file_get_locale_string_list")
    key_file_get_locale_string_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring, length: ^size, error: ^^Error) -> ^cstring ---

    @(link_name = "g_key_file_set_locale_string_list")
    key_file_set_locale_string_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring, list: [^]cstring, length: size) ---

    @(link_name = "g_key_file_get_boolean_list")
    key_file_get_boolean_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, length: ^size, error: ^^Error) -> ^boolean ---

    @(link_name = "g_key_file_set_boolean_list")
    key_file_set_boolean_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, list: [^]boolean, length: size) ---

    @(link_name = "g_key_file_get_integer_list")
    key_file_get_integer_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, length: ^size, error: ^^Error) -> ^int_ ---

    @(link_name = "g_key_file_set_double_list")
    key_file_set_double_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, list: [^]double, length: size) ---

    @(link_name = "g_key_file_get_double_list")
    key_file_get_double_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, length: ^size, error: ^^Error) -> ^double ---

    @(link_name = "g_key_file_set_integer_list")
    key_file_set_integer_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, list: [^]int_, length: size) ---

    @(link_name = "g_key_file_set_comment")
    key_file_set_comment :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, comment: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_get_comment")
    key_file_get_comment :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_key_file_remove_comment")
    key_file_remove_comment :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_remove_key")
    key_file_remove_key :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_key_file_remove_group")
    key_file_remove_group :: proc(key_file: ^KeyFile, group_name: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_mapped_file_new")
    mapped_file_new :: proc(filename: cstring, writable: boolean, error: ^^Error) -> ^MappedFile ---

    @(link_name = "g_mapped_file_new_from_fd")
    mapped_file_new_from_fd :: proc(fd: int_, writable: boolean, error: ^^Error) -> ^MappedFile ---

    @(link_name = "g_mapped_file_get_length")
    mapped_file_get_length :: proc(file: ^MappedFile) -> size ---

    @(link_name = "g_mapped_file_get_contents")
    mapped_file_get_contents :: proc(file: ^MappedFile) -> cstring ---

    @(link_name = "g_mapped_file_get_bytes")
    mapped_file_get_bytes :: proc(file: ^MappedFile) -> ^Bytes ---

    @(link_name = "g_mapped_file_ref")
    mapped_file_ref :: proc(file: ^MappedFile) -> ^MappedFile ---

    @(link_name = "g_mapped_file_unref")
    mapped_file_unref :: proc(file: ^MappedFile) ---

    @(link_name = "g_mapped_file_free")
    mapped_file_free :: proc(file: ^MappedFile) ---

    @(link_name = "g_markup_error_quark")
    markup_error_quark :: proc() -> Quark ---

    @(link_name = "g_markup_parse_context_new")
    markup_parse_context_new :: proc(parser: ^MarkupParser, flags: MarkupParseFlags, user_data: pointer, user_data_dnotify: DestroyNotify) -> ^MarkupParseContext ---

    @(link_name = "g_markup_parse_context_ref")
    markup_parse_context_ref :: proc(context_p: ^MarkupParseContext) -> ^MarkupParseContext ---

    @(link_name = "g_markup_parse_context_unref")
    markup_parse_context_unref :: proc(context_p: ^MarkupParseContext) ---

    @(link_name = "g_markup_parse_context_free")
    markup_parse_context_free :: proc(context_p: ^MarkupParseContext) ---

    @(link_name = "g_markup_parse_context_parse")
    markup_parse_context_parse :: proc(context_p: ^MarkupParseContext, text: cstring, text_len: ssize, error: ^^Error) -> boolean ---

    @(link_name = "g_markup_parse_context_push")
    markup_parse_context_push :: proc(context_p: ^MarkupParseContext, parser: ^MarkupParser, user_data: pointer) ---

    @(link_name = "g_markup_parse_context_pop")
    markup_parse_context_pop :: proc(context_p: ^MarkupParseContext) -> pointer ---

    @(link_name = "g_markup_parse_context_end_parse")
    markup_parse_context_end_parse :: proc(context_p: ^MarkupParseContext, error: ^^Error) -> boolean ---

    @(link_name = "g_markup_parse_context_get_element")
    markup_parse_context_get_element :: proc(context_p: ^MarkupParseContext) -> cstring ---

    @(link_name = "g_markup_parse_context_get_element_stack")
    markup_parse_context_get_element_stack :: proc(context_p: ^MarkupParseContext) -> ^SList ---

    @(link_name = "g_markup_parse_context_get_position")
    markup_parse_context_get_position :: proc(context_p: ^MarkupParseContext, line_number: ^int_, char_number: ^int_) ---

    @(link_name = "g_markup_parse_context_get_user_data")
    markup_parse_context_get_user_data :: proc(context_p: ^MarkupParseContext) -> pointer ---

    @(link_name = "g_markup_escape_text")
    markup_escape_text :: proc(text: cstring, length: ssize) -> cstring ---

    @(link_name = "g_markup_printf_escaped")
    markup_printf_escaped :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_markup_vprintf_escaped")
    markup_vprintf_escaped :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_markup_collect_attributes")
    markup_collect_attributes :: proc(element_name: cstring, attribute_names: [^]cstring, attribute_values: [^]cstring, error: ^^Error, first_type: MarkupCollectType, first_attr: cstring, #c_vararg var_args: ..any) -> boolean ---

    @(link_name = "g_variant_type_string_is_valid")
    variant_type_string_is_valid :: proc(type_string: cstring) -> boolean ---

    @(link_name = "g_variant_type_string_scan")
    variant_type_string_scan :: proc(string_p: cstring, limit: cstring, endptr: ^cstring) -> boolean ---

    @(link_name = "g_variant_type_free")
    variant_type_free :: proc(type: ^VariantType) ---

    @(link_name = "g_variant_type_copy")
    variant_type_copy :: proc(type: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_new")
    variant_type_new :: proc(type_string: cstring) -> ^VariantType ---

    @(link_name = "g_variant_type_get_string_length")
    variant_type_get_string_length :: proc(type: ^VariantType) -> size ---

    @(link_name = "g_variant_type_peek_string")
    variant_type_peek_string :: proc(type: ^VariantType) -> cstring ---

    @(link_name = "g_variant_type_dup_string")
    variant_type_dup_string :: proc(type: ^VariantType) -> cstring ---

    @(link_name = "g_variant_type_is_definite")
    variant_type_is_definite :: proc(type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_is_container")
    variant_type_is_container :: proc(type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_is_basic")
    variant_type_is_basic :: proc(type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_is_maybe")
    variant_type_is_maybe :: proc(type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_is_array")
    variant_type_is_array :: proc(type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_is_tuple")
    variant_type_is_tuple :: proc(type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_is_dict_entry")
    variant_type_is_dict_entry :: proc(type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_is_variant")
    variant_type_is_variant :: proc(type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_hash")
    variant_type_hash :: proc(type: constpointer) -> uint_ ---

    @(link_name = "g_variant_type_equal")
    variant_type_equal :: proc(type1: constpointer, type2: constpointer) -> boolean ---

    @(link_name = "g_variant_type_is_subtype_of")
    variant_type_is_subtype_of :: proc(type: ^VariantType, supertype: ^VariantType) -> boolean ---

    @(link_name = "g_variant_type_element")
    variant_type_element :: proc(type: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_first")
    variant_type_first :: proc(type: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_next")
    variant_type_next :: proc(type: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_n_items")
    variant_type_n_items :: proc(type: ^VariantType) -> size ---

    @(link_name = "g_variant_type_key")
    variant_type_key :: proc(type: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_value")
    variant_type_value :: proc(type: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_new_array")
    variant_type_new_array :: proc(element: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_new_maybe")
    variant_type_new_maybe :: proc(element: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_new_tuple")
    variant_type_new_tuple :: proc(items: [^]^VariantType, length: int_) -> ^VariantType ---

    @(link_name = "g_variant_type_new_dict_entry")
    variant_type_new_dict_entry :: proc(key: ^VariantType, value: ^VariantType) -> ^VariantType ---

    @(link_name = "g_variant_type_checked_")
    variant_type_checked_ :: proc(type_string: cstring) -> ^VariantType ---

    @(link_name = "g_variant_type_string_get_depth_")
    variant_type_string_get_depth_ :: proc(type_string: cstring) -> size ---

    @(link_name = "g_variant_unref")
    variant_unref :: proc(value: ^Variant) ---

    @(link_name = "g_variant_ref")
    variant_ref :: proc(value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_ref_sink")
    variant_ref_sink :: proc(value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_is_floating")
    variant_is_floating :: proc(value: ^Variant) -> boolean ---

    @(link_name = "g_variant_take_ref")
    variant_take_ref :: proc(value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_get_type")
    variant_get_type :: proc(value: ^Variant) -> ^VariantType ---

    @(link_name = "g_variant_get_type_string")
    variant_get_type_string :: proc(value: ^Variant) -> cstring ---

    @(link_name = "g_variant_is_of_type")
    variant_is_of_type :: proc(value: ^Variant, type: ^VariantType) -> boolean ---

    @(link_name = "g_variant_is_container")
    variant_is_container :: proc(value: ^Variant) -> boolean ---

    @(link_name = "g_variant_classify")
    variant_classify :: proc(value: ^Variant) -> VariantClass ---

    @(link_name = "g_variant_new_boolean")
    variant_new_boolean :: proc(value: boolean) -> ^Variant ---

    @(link_name = "g_variant_new_byte")
    variant_new_byte :: proc(value: uint8) -> ^Variant ---

    @(link_name = "g_variant_new_int16")
    variant_new_int16 :: proc(value: int16) -> ^Variant ---

    @(link_name = "g_variant_new_uint16")
    variant_new_uint16 :: proc(value: uint16) -> ^Variant ---

    @(link_name = "g_variant_new_int32")
    variant_new_int32 :: proc(value: int32) -> ^Variant ---

    @(link_name = "g_variant_new_uint32")
    variant_new_uint32 :: proc(value: uint32) -> ^Variant ---

    @(link_name = "g_variant_new_int64")
    variant_new_int64 :: proc(value: int64) -> ^Variant ---

    @(link_name = "g_variant_new_uint64")
    variant_new_uint64 :: proc(value: uint64) -> ^Variant ---

    @(link_name = "g_variant_new_handle")
    variant_new_handle :: proc(value: int32) -> ^Variant ---

    @(link_name = "g_variant_new_double")
    variant_new_double :: proc(value: double) -> ^Variant ---

    @(link_name = "g_variant_new_string")
    variant_new_string :: proc(string_p: cstring) -> ^Variant ---

    @(link_name = "g_variant_new_take_string")
    variant_new_take_string :: proc(string_p: cstring) -> ^Variant ---

    @(link_name = "g_variant_new_printf")
    variant_new_printf :: proc(format_string: cstring, #c_vararg var_args: ..any) -> ^Variant ---

    @(link_name = "g_variant_new_object_path")
    variant_new_object_path :: proc(object_path: cstring) -> ^Variant ---

    @(link_name = "g_variant_is_object_path")
    variant_is_object_path :: proc(string_p: cstring) -> boolean ---

    @(link_name = "g_variant_new_signature")
    variant_new_signature :: proc(signature: cstring) -> ^Variant ---

    @(link_name = "g_variant_is_signature")
    variant_is_signature :: proc(string_p: cstring) -> boolean ---

    @(link_name = "g_variant_new_variant")
    variant_new_variant :: proc(value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_new_strv")
    variant_new_strv :: proc(strv: ^cstring, length: ssize) -> ^Variant ---

    @(link_name = "g_variant_new_objv")
    variant_new_objv :: proc(strv: ^cstring, length: ssize) -> ^Variant ---

    @(link_name = "g_variant_new_bytestring")
    variant_new_bytestring :: proc(string_p: cstring) -> ^Variant ---

    @(link_name = "g_variant_new_bytestring_array")
    variant_new_bytestring_array :: proc(strv: ^cstring, length: ssize) -> ^Variant ---

    @(link_name = "g_variant_new_fixed_array")
    variant_new_fixed_array :: proc(element_type: ^VariantType, elements: constpointer, n_elements: size, element_size: size) -> ^Variant ---

    @(link_name = "g_variant_get_boolean")
    variant_get_boolean :: proc(value: ^Variant) -> boolean ---

    @(link_name = "g_variant_get_byte")
    variant_get_byte :: proc(value: ^Variant) -> uint8 ---

    @(link_name = "g_variant_get_int16")
    variant_get_int16 :: proc(value: ^Variant) -> int16 ---

    @(link_name = "g_variant_get_uint16")
    variant_get_uint16 :: proc(value: ^Variant) -> uint16 ---

    @(link_name = "g_variant_get_int32")
    variant_get_int32 :: proc(value: ^Variant) -> int32 ---

    @(link_name = "g_variant_get_uint32")
    variant_get_uint32 :: proc(value: ^Variant) -> uint32 ---

    @(link_name = "g_variant_get_int64")
    variant_get_int64 :: proc(value: ^Variant) -> int64 ---

    @(link_name = "g_variant_get_uint64")
    variant_get_uint64 :: proc(value: ^Variant) -> uint64 ---

    @(link_name = "g_variant_get_handle")
    variant_get_handle :: proc(value: ^Variant) -> int32 ---

    @(link_name = "g_variant_get_double")
    variant_get_double :: proc(value: ^Variant) -> double ---

    @(link_name = "g_variant_get_variant")
    variant_get_variant :: proc(value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_get_string")
    variant_get_string :: proc(value: ^Variant, length: ^size) -> cstring ---

    @(link_name = "g_variant_dup_string")
    variant_dup_string :: proc(value: ^Variant, length: ^size) -> cstring ---

    @(link_name = "g_variant_get_strv")
    variant_get_strv :: proc(value: ^Variant, length: ^size) -> ^cstring ---

    @(link_name = "g_variant_dup_strv")
    variant_dup_strv :: proc(value: ^Variant, length: ^size) -> ^cstring ---

    @(link_name = "g_variant_get_objv")
    variant_get_objv :: proc(value: ^Variant, length: ^size) -> ^cstring ---

    @(link_name = "g_variant_dup_objv")
    variant_dup_objv :: proc(value: ^Variant, length: ^size) -> ^cstring ---

    @(link_name = "g_variant_get_bytestring")
    variant_get_bytestring :: proc(value: ^Variant) -> cstring ---

    @(link_name = "g_variant_dup_bytestring")
    variant_dup_bytestring :: proc(value: ^Variant, length: ^size) -> cstring ---

    @(link_name = "g_variant_get_bytestring_array")
    variant_get_bytestring_array :: proc(value: ^Variant, length: ^size) -> ^cstring ---

    @(link_name = "g_variant_dup_bytestring_array")
    variant_dup_bytestring_array :: proc(value: ^Variant, length: ^size) -> ^cstring ---

    @(link_name = "g_variant_new_maybe")
    variant_new_maybe :: proc(child_type: ^VariantType, child: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_new_array")
    variant_new_array :: proc(child_type: ^VariantType, children: ^^Variant, n_children: size) -> ^Variant ---

    @(link_name = "g_variant_new_tuple")
    variant_new_tuple :: proc(children: ^^Variant, n_children: size) -> ^Variant ---

    @(link_name = "g_variant_new_dict_entry")
    variant_new_dict_entry :: proc(key: ^Variant, value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_get_maybe")
    variant_get_maybe :: proc(value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_n_children")
    variant_n_children :: proc(value: ^Variant) -> size ---

    @(link_name = "g_variant_get_child")
    variant_get_child :: proc(value: ^Variant, index_: size, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_get_child_value")
    variant_get_child_value :: proc(value: ^Variant, index_: size) -> ^Variant ---

    @(link_name = "g_variant_lookup")
    variant_lookup :: proc(dictionary: ^Variant, key: cstring, format_string: cstring, #c_vararg var_args: ..any) -> boolean ---

    @(link_name = "g_variant_lookup_value")
    variant_lookup_value :: proc(dictionary: ^Variant, key: cstring, expected_type: ^VariantType) -> ^Variant ---

    @(link_name = "g_variant_get_fixed_array")
    variant_get_fixed_array :: proc(value: ^Variant, n_elements: [^]size, element_size: size) -> constpointer ---

    @(link_name = "g_variant_get_size")
    variant_get_size :: proc(value: ^Variant) -> size ---

    @(link_name = "g_variant_get_data")
    variant_get_data :: proc(value: ^Variant) -> constpointer ---

    @(link_name = "g_variant_get_data_as_bytes")
    variant_get_data_as_bytes :: proc(value: ^Variant) -> ^Bytes ---

    @(link_name = "g_variant_store")
    variant_store :: proc(value: ^Variant, data: pointer) ---

    @(link_name = "g_variant_print")
    variant_print :: proc(value: ^Variant, type_annotate: boolean) -> cstring ---

    @(link_name = "g_variant_print_string")
    variant_print_string :: proc(value: ^Variant, string_p: ^String, type_annotate: boolean) -> ^String ---

    @(link_name = "g_variant_hash")
    variant_hash :: proc(value: constpointer) -> uint_ ---

    @(link_name = "g_variant_equal")
    variant_equal :: proc(one: constpointer, two: constpointer) -> boolean ---

    @(link_name = "g_variant_get_normal_form")
    variant_get_normal_form :: proc(value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_is_normal_form")
    variant_is_normal_form :: proc(value: ^Variant) -> boolean ---

    @(link_name = "g_variant_byteswap")
    variant_byteswap :: proc(value: ^Variant) -> ^Variant ---

    @(link_name = "g_variant_new_from_bytes")
    variant_new_from_bytes :: proc(type: ^VariantType, bytes: [^]Bytes, trusted: boolean) -> ^Variant ---

    @(link_name = "g_variant_new_from_data")
    variant_new_from_data :: proc(type: ^VariantType, data: constpointer, size_p: size, trusted: boolean, notify: DestroyNotify, user_data: pointer) -> ^Variant ---

    @(link_name = "g_variant_iter_new")
    variant_iter_new :: proc(value: ^Variant) -> ^VariantIter ---

    @(link_name = "g_variant_iter_init")
    variant_iter_init :: proc(iter: ^VariantIter, value: ^Variant) -> size ---

    @(link_name = "g_variant_iter_copy")
    variant_iter_copy :: proc(iter: ^VariantIter) -> ^VariantIter ---

    @(link_name = "g_variant_iter_n_children")
    variant_iter_n_children :: proc(iter: ^VariantIter) -> size ---

    @(link_name = "g_variant_iter_free")
    variant_iter_free :: proc(iter: ^VariantIter) ---

    @(link_name = "g_variant_iter_next_value")
    variant_iter_next_value :: proc(iter: ^VariantIter) -> ^Variant ---

    @(link_name = "g_variant_iter_next")
    variant_iter_next :: proc(iter: ^VariantIter, format_string: cstring, #c_vararg var_args: ..any) -> boolean ---

    @(link_name = "g_variant_iter_loop")
    variant_iter_loop :: proc(iter: ^VariantIter, format_string: cstring, #c_vararg var_args: ..any) -> boolean ---

    @(link_name = "g_variant_parser_get_error_quark")
    variant_parser_get_error_quark :: proc() -> Quark ---

    @(link_name = "g_variant_parse_error_quark")
    variant_parse_error_quark :: proc() -> Quark ---

    @(link_name = "g_variant_builder_new")
    variant_builder_new :: proc(type: ^VariantType) -> ^VariantBuilder ---

    @(link_name = "g_variant_builder_unref")
    variant_builder_unref :: proc(builder: ^VariantBuilder) ---

    @(link_name = "g_variant_builder_ref")
    variant_builder_ref :: proc(builder: ^VariantBuilder) -> ^VariantBuilder ---

    @(link_name = "g_variant_builder_init")
    variant_builder_init :: proc(builder: ^VariantBuilder, type: ^VariantType) ---

    @(link_name = "g_variant_builder_init_static")
    variant_builder_init_static :: proc(builder: ^VariantBuilder, type: ^VariantType) ---

    @(link_name = "g_variant_builder_end")
    variant_builder_end :: proc(builder: ^VariantBuilder) -> ^Variant ---

    @(link_name = "g_variant_builder_clear")
    variant_builder_clear :: proc(builder: ^VariantBuilder) ---

    @(link_name = "g_variant_builder_open")
    variant_builder_open :: proc(builder: ^VariantBuilder, type: ^VariantType) ---

    @(link_name = "g_variant_builder_close")
    variant_builder_close :: proc(builder: ^VariantBuilder) ---

    @(link_name = "g_variant_builder_add_value")
    variant_builder_add_value :: proc(builder: ^VariantBuilder, value: ^Variant) ---

    @(link_name = "g_variant_builder_add")
    variant_builder_add :: proc(builder: ^VariantBuilder, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_builder_add_parsed")
    variant_builder_add_parsed :: proc(builder: ^VariantBuilder, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_new")
    variant_new :: proc(format_string: cstring, #c_vararg var_args: ..any) -> ^Variant ---

    @(link_name = "g_variant_get")
    variant_get :: proc(value: ^Variant, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_new_va")
    variant_new_va :: proc(format_string: cstring, endptr: ^cstring, #c_vararg var_args: ..any) -> ^Variant ---

    @(link_name = "g_variant_get_va")
    variant_get_va :: proc(value: ^Variant, format_string: cstring, endptr: ^cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_check_format_string")
    variant_check_format_string :: proc(value: ^Variant, format_string: cstring, copy_only: boolean) -> boolean ---

    @(link_name = "g_variant_parse")
    variant_parse :: proc(type: ^VariantType, text: cstring, limit: cstring, endptr: ^cstring, error: ^^Error) -> ^Variant ---

    @(link_name = "g_variant_new_parsed")
    variant_new_parsed :: proc(format: cstring, #c_vararg var_args: ..any) -> ^Variant ---

    @(link_name = "g_variant_new_parsed_va")
    variant_new_parsed_va :: proc(format: cstring, #c_vararg var_args: ..any) -> ^Variant ---

    @(link_name = "g_variant_parse_error_print_context")
    variant_parse_error_print_context :: proc(error: ^Error, source_str: cstring) -> cstring ---

    @(link_name = "g_variant_compare")
    variant_compare :: proc(one: constpointer, two: constpointer) -> int_ ---

    @(link_name = "g_variant_dict_new")
    variant_dict_new :: proc(from_asv: ^Variant) -> ^VariantDict ---

    @(link_name = "g_variant_dict_init")
    variant_dict_init :: proc(dict: ^VariantDict, from_asv: ^Variant) ---

    @(link_name = "g_variant_dict_lookup")
    variant_dict_lookup :: proc(dict: ^VariantDict, key: cstring, format_string: cstring, #c_vararg var_args: ..any) -> boolean ---

    @(link_name = "g_variant_dict_lookup_value")
    variant_dict_lookup_value :: proc(dict: ^VariantDict, key: cstring, expected_type: ^VariantType) -> ^Variant ---

    @(link_name = "g_variant_dict_contains")
    variant_dict_contains :: proc(dict: ^VariantDict, key: cstring) -> boolean ---

    @(link_name = "g_variant_dict_insert")
    variant_dict_insert :: proc(dict: ^VariantDict, key: cstring, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_variant_dict_insert_value")
    variant_dict_insert_value :: proc(dict: ^VariantDict, key: cstring, value: ^Variant) ---

    @(link_name = "g_variant_dict_remove")
    variant_dict_remove :: proc(dict: ^VariantDict, key: cstring) -> boolean ---

    @(link_name = "g_variant_dict_clear")
    variant_dict_clear :: proc(dict: ^VariantDict) ---

    @(link_name = "g_variant_dict_end")
    variant_dict_end :: proc(dict: ^VariantDict) -> ^Variant ---

    @(link_name = "g_variant_dict_ref")
    variant_dict_ref :: proc(dict: ^VariantDict) -> ^VariantDict ---

    @(link_name = "g_variant_dict_unref")
    variant_dict_unref :: proc(dict: ^VariantDict) ---

    @(link_name = "g_printf_string_upper_bound")
    printf_string_upper_bound :: proc(format: cstring, #c_vararg var_args: ..any) -> size ---

    @(link_name = "g_log_set_handler")
    log_set_handler :: proc(log_domain: cstring, log_levels: LogLevelFlags, log_func: LogFunc, user_data: pointer) -> uint_ ---

    @(link_name = "g_log_set_handler_full")
    log_set_handler_full :: proc(log_domain: cstring, log_levels: LogLevelFlags, log_func: LogFunc, user_data: pointer, destroy: DestroyNotify) -> uint_ ---

    @(link_name = "g_log_remove_handler")
    log_remove_handler :: proc(log_domain: cstring, handler_id: uint_) ---

    @(link_name = "g_log_default_handler")
    log_default_handler :: proc(log_domain: cstring, log_level: LogLevelFlags, message: cstring, unused_data: pointer) ---

    @(link_name = "g_log_set_default_handler")
    log_set_default_handler :: proc(log_func: LogFunc, user_data: pointer) -> LogFunc ---

    @(link_name = "g_log")
    log :: proc(log_domain: cstring, log_level: LogLevelFlags, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_logv")
    logv :: proc(log_domain: cstring, log_level: LogLevelFlags, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_log_set_fatal_mask")
    log_set_fatal_mask :: proc(log_domain: cstring, fatal_mask: LogLevelFlags) -> LogLevelFlags ---

    @(link_name = "g_log_set_always_fatal")
    log_set_always_fatal :: proc(fatal_mask: LogLevelFlags) -> LogLevelFlags ---

    @(link_name = "g_log_structured")
    log_structured :: proc(log_domain: cstring, log_level: LogLevelFlags, #c_vararg var_args: ..any) ---

    @(link_name = "g_log_structured_array")
    log_structured_array :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size) ---

    @(link_name = "g_log_variant")
    log_variant :: proc(log_domain: cstring, log_level: LogLevelFlags, fields: [^]Variant) ---

    @(link_name = "g_log_set_writer_func")
    log_set_writer_func :: proc(func: LogWriterFunc, user_data: pointer, user_data_free: DestroyNotify) ---

    @(link_name = "g_log_writer_supports_color")
    log_writer_supports_color :: proc(output_fd: int_) -> boolean ---

    @(link_name = "g_log_writer_is_journald")
    log_writer_is_journald :: proc(output_fd: int_) -> boolean ---

    @(link_name = "g_log_writer_format_fields")
    log_writer_format_fields :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, use_color: boolean) -> cstring ---

    @(link_name = "g_log_writer_syslog")
    log_writer_syslog :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput ---

    @(link_name = "g_log_writer_journald")
    log_writer_journald :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput ---

    @(link_name = "g_log_writer_standard_streams")
    log_writer_standard_streams :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput ---

    @(link_name = "g_log_writer_default")
    log_writer_default :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput ---

    @(link_name = "g_log_writer_default_set_use_stderr")
    log_writer_default_set_use_stderr :: proc(use_stderr: boolean) ---

    @(link_name = "g_log_writer_default_would_drop")
    log_writer_default_would_drop :: proc(log_level: LogLevelFlags, log_domain: cstring) -> boolean ---

    @(link_name = "g_log_writer_default_set_debug_domains")
    log_writer_default_set_debug_domains :: proc(domains: [^]cstring) ---

    @(link_name = "g_log_get_debug_enabled")
    log_get_debug_enabled :: proc() -> boolean ---

    @(link_name = "g_log_set_debug_enabled")
    log_set_debug_enabled :: proc(enabled: boolean) ---

    @(link_name = "_g_log_fallback_handler")
    _g_log_fallback_handler :: proc(log_domain: cstring, log_level: LogLevelFlags, message: cstring, unused_data: pointer) ---

    @(link_name = "g_return_if_fail_warning")
    return_if_fail_warning :: proc(log_domain: cstring, pretty_function: cstring, expression: cstring) ---

    @(link_name = "g_warn_message")
    warn_message :: proc(domain: cstring, file: cstring, line: i32, func: cstring, warnexpr: cstring) ---

    @(link_name = "g_assert_warning")
    assert_warning :: proc(log_domain: cstring, file: cstring, line: i32, pretty_function: cstring, expression: cstring) ---

    @(link_name = "g_log_structured_standard")
    log_structured_standard :: proc(log_domain: cstring, log_level: LogLevelFlags, file: cstring, line: cstring, func: cstring, message_format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_print")
    print :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_set_print_handler")
    set_print_handler :: proc(func: PrintFunc) -> PrintFunc ---

    @(link_name = "g_printerr")
    printerr :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_set_printerr_handler")
    set_printerr_handler :: proc(func: PrintFunc) -> PrintFunc ---

    @(link_name = "g_option_error_quark")
    option_error_quark :: proc() -> Quark ---

    @(link_name = "g_option_context_new")
    option_context_new :: proc(parameter_string: cstring) -> ^OptionContext ---

    @(link_name = "g_option_context_set_summary")
    option_context_set_summary :: proc(context_p: ^OptionContext, summary: cstring) ---

    @(link_name = "g_option_context_get_summary")
    option_context_get_summary :: proc(context_p: ^OptionContext) -> cstring ---

    @(link_name = "g_option_context_set_description")
    option_context_set_description :: proc(context_p: ^OptionContext, description: cstring) ---

    @(link_name = "g_option_context_get_description")
    option_context_get_description :: proc(context_p: ^OptionContext) -> cstring ---

    @(link_name = "g_option_context_free")
    option_context_free :: proc(context_p: ^OptionContext) ---

    @(link_name = "g_option_context_set_help_enabled")
    option_context_set_help_enabled :: proc(context_p: ^OptionContext, help_enabled: boolean) ---

    @(link_name = "g_option_context_get_help_enabled")
    option_context_get_help_enabled :: proc(context_p: ^OptionContext) -> boolean ---

    @(link_name = "g_option_context_set_ignore_unknown_options")
    option_context_set_ignore_unknown_options :: proc(context_p: ^OptionContext, ignore_unknown: boolean) ---

    @(link_name = "g_option_context_get_ignore_unknown_options")
    option_context_get_ignore_unknown_options :: proc(context_p: ^OptionContext) -> boolean ---

    @(link_name = "g_option_context_set_strict_posix")
    option_context_set_strict_posix :: proc(context_p: ^OptionContext, strict_posix: boolean) ---

    @(link_name = "g_option_context_get_strict_posix")
    option_context_get_strict_posix :: proc(context_p: ^OptionContext) -> boolean ---

    @(link_name = "g_option_context_add_main_entries")
    option_context_add_main_entries :: proc(context_p: ^OptionContext, entries: [^]OptionEntry, translation_domain: cstring) ---

    @(link_name = "g_option_context_parse")
    option_context_parse :: proc(context_p: ^OptionContext, argc: ^int_, argv: ^^cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_option_context_parse_strv")
    option_context_parse_strv :: proc(context_p: ^OptionContext, arguments: [^]^cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_option_context_set_translate_func")
    option_context_set_translate_func :: proc(context_p: ^OptionContext, func: TranslateFunc, data: pointer, destroy_notify: DestroyNotify) ---

    @(link_name = "g_option_context_set_translation_domain")
    option_context_set_translation_domain :: proc(context_p: ^OptionContext, domain: cstring) ---

    @(link_name = "g_option_context_add_group")
    option_context_add_group :: proc(context_p: ^OptionContext, group: ^OptionGroup) ---

    @(link_name = "g_option_context_set_main_group")
    option_context_set_main_group :: proc(context_p: ^OptionContext, group: ^OptionGroup) ---

    @(link_name = "g_option_context_get_main_group")
    option_context_get_main_group :: proc(context_p: ^OptionContext) -> ^OptionGroup ---

    @(link_name = "g_option_context_get_help")
    option_context_get_help :: proc(context_p: ^OptionContext, main_help: boolean, group: ^OptionGroup) -> cstring ---

    @(link_name = "g_option_group_new")
    option_group_new :: proc(name: cstring, description: cstring, help_description: cstring, user_data: pointer, destroy: DestroyNotify) -> ^OptionGroup ---

    @(link_name = "g_option_group_set_parse_hooks")
    option_group_set_parse_hooks :: proc(group: ^OptionGroup, pre_parse_func: OptionParseFunc, post_parse_func: OptionParseFunc) ---

    @(link_name = "g_option_group_set_error_hook")
    option_group_set_error_hook :: proc(group: ^OptionGroup, error_func: OptionErrorFunc) ---

    @(link_name = "g_option_group_free")
    option_group_free :: proc(group: ^OptionGroup) ---

    @(link_name = "g_option_group_ref")
    option_group_ref :: proc(group: ^OptionGroup) -> ^OptionGroup ---

    @(link_name = "g_option_group_unref")
    option_group_unref :: proc(group: ^OptionGroup) ---

    @(link_name = "g_option_group_add_entries")
    option_group_add_entries :: proc(group: ^OptionGroup, entries: [^]OptionEntry) ---

    @(link_name = "g_option_group_set_translate_func")
    option_group_set_translate_func :: proc(group: ^OptionGroup, func: TranslateFunc, data: pointer, destroy_notify: DestroyNotify) ---

    @(link_name = "g_option_group_set_translation_domain")
    option_group_set_translation_domain :: proc(group: ^OptionGroup, domain: cstring) ---

    @(link_name = "g_path_buf_new")
    path_buf_new :: proc() -> ^PathBuf ---

    @(link_name = "g_path_buf_new_from_path")
    path_buf_new_from_path :: proc(path: cstring) -> ^PathBuf ---

    @(link_name = "g_path_buf_init")
    path_buf_init :: proc(buf: ^PathBuf) -> ^PathBuf ---

    @(link_name = "g_path_buf_init_from_path")
    path_buf_init_from_path :: proc(buf: ^PathBuf, path: cstring) -> ^PathBuf ---

    @(link_name = "g_path_buf_clear")
    path_buf_clear :: proc(buf: ^PathBuf) ---

    @(link_name = "g_path_buf_clear_to_path")
    path_buf_clear_to_path :: proc(buf: ^PathBuf) -> cstring ---

    @(link_name = "g_path_buf_free")
    path_buf_free :: proc(buf: ^PathBuf) ---

    @(link_name = "g_path_buf_free_to_path")
    path_buf_free_to_path :: proc(buf: ^PathBuf) -> cstring ---

    @(link_name = "g_path_buf_copy")
    path_buf_copy :: proc(buf: ^PathBuf) -> ^PathBuf ---

    @(link_name = "g_path_buf_push")
    path_buf_push :: proc(buf: ^PathBuf, path: cstring) -> ^PathBuf ---

    @(link_name = "g_path_buf_pop")
    path_buf_pop :: proc(buf: ^PathBuf) -> boolean ---

    @(link_name = "g_path_buf_set_filename")
    path_buf_set_filename :: proc(buf: ^PathBuf, file_name: cstring) -> boolean ---

    @(link_name = "g_path_buf_set_extension")
    path_buf_set_extension :: proc(buf: ^PathBuf, extension: cstring) -> boolean ---

    @(link_name = "g_path_buf_to_path")
    path_buf_to_path :: proc(buf: ^PathBuf) -> cstring ---

    @(link_name = "g_path_buf_equal")
    path_buf_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---

    @(link_name = "g_pattern_spec_new")
    pattern_spec_new :: proc(pattern: cstring) -> ^PatternSpec ---

    @(link_name = "g_pattern_spec_free")
    pattern_spec_free :: proc(pspec: ^PatternSpec) ---

    @(link_name = "g_pattern_spec_copy")
    pattern_spec_copy :: proc(pspec: ^PatternSpec) -> ^PatternSpec ---

    @(link_name = "g_pattern_spec_equal")
    pattern_spec_equal :: proc(pspec1: ^PatternSpec, pspec2: ^PatternSpec) -> boolean ---

    @(link_name = "g_pattern_spec_match")
    pattern_spec_match :: proc(pspec: ^PatternSpec, string_length: size, string_p: cstring, string_reversed: cstring) -> boolean ---

    @(link_name = "g_pattern_spec_match_string")
    pattern_spec_match_string :: proc(pspec: ^PatternSpec, string_p: cstring) -> boolean ---

    @(link_name = "g_pattern_match")
    pattern_match :: proc(pspec: ^PatternSpec, string_length: uint_, string_p: cstring, string_reversed: cstring) -> boolean ---

    @(link_name = "g_pattern_match_string")
    pattern_match_string :: proc(pspec: ^PatternSpec, string_p: cstring) -> boolean ---

    @(link_name = "g_pattern_match_simple")
    pattern_match_simple :: proc(pattern: cstring, string_p: cstring) -> boolean ---

    @(link_name = "g_spaced_primes_closest")
    spaced_primes_closest :: proc(num: uint_) -> uint_ ---

    @(link_name = "g_qsort_with_data")
    qsort_with_data :: proc(pbase: constpointer, total_elems: int_, size_p: size, compare_func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_sort_array")
    sort_array :: proc(array: rawptr, n_elements: u64, element_size: u64, compare_func: CompareDataFunc, user_data: rawptr) ---

    @(link_name = "g_queue_new")
    queue_new :: proc() -> ^Queue ---

    @(link_name = "g_queue_free")
    queue_free :: proc(queue: ^Queue) ---

    @(link_name = "g_queue_free_full")
    queue_free_full :: proc(queue: ^Queue, free_func: DestroyNotify) ---

    @(link_name = "g_queue_init")
    queue_init :: proc(queue: ^Queue) ---

    @(link_name = "g_queue_clear")
    queue_clear :: proc(queue: ^Queue) ---

    @(link_name = "g_queue_is_empty")
    queue_is_empty :: proc(queue: ^Queue) -> boolean ---

    @(link_name = "g_queue_clear_full")
    queue_clear_full :: proc(queue: ^Queue, free_func: DestroyNotify) ---

    @(link_name = "g_queue_get_length")
    queue_get_length :: proc(queue: ^Queue) -> uint_ ---

    @(link_name = "g_queue_reverse")
    queue_reverse :: proc(queue: ^Queue) ---

    @(link_name = "g_queue_copy")
    queue_copy :: proc(queue: ^Queue) -> ^Queue ---

    @(link_name = "g_queue_foreach")
    queue_foreach :: proc(queue: ^Queue, func: Func, user_data: pointer) ---

    @(link_name = "g_queue_find")
    queue_find :: proc(queue: ^Queue, data: constpointer) -> ^List ---

    @(link_name = "g_queue_find_custom")
    queue_find_custom :: proc(queue: ^Queue, data: constpointer, func: CompareFunc) -> ^List ---

    @(link_name = "g_queue_sort")
    queue_sort :: proc(queue: ^Queue, compare_func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_queue_push_head")
    queue_push_head :: proc(queue: ^Queue, data: pointer) ---

    @(link_name = "g_queue_push_tail")
    queue_push_tail :: proc(queue: ^Queue, data: pointer) ---

    @(link_name = "g_queue_push_nth")
    queue_push_nth :: proc(queue: ^Queue, data: pointer, n: int_) ---

    @(link_name = "g_queue_pop_head")
    queue_pop_head :: proc(queue: ^Queue) -> pointer ---

    @(link_name = "g_queue_pop_tail")
    queue_pop_tail :: proc(queue: ^Queue) -> pointer ---

    @(link_name = "g_queue_pop_nth")
    queue_pop_nth :: proc(queue: ^Queue, n: uint_) -> pointer ---

    @(link_name = "g_queue_peek_head")
    queue_peek_head :: proc(queue: ^Queue) -> pointer ---

    @(link_name = "g_queue_peek_tail")
    queue_peek_tail :: proc(queue: ^Queue) -> pointer ---

    @(link_name = "g_queue_peek_nth")
    queue_peek_nth :: proc(queue: ^Queue, n: uint_) -> pointer ---

    @(link_name = "g_queue_index")
    queue_index :: proc(queue: ^Queue, data: constpointer) -> int_ ---

    @(link_name = "g_queue_remove")
    queue_remove :: proc(queue: ^Queue, data: constpointer) -> boolean ---

    @(link_name = "g_queue_remove_all")
    queue_remove_all :: proc(queue: ^Queue, data: constpointer) -> uint_ ---

    @(link_name = "g_queue_insert_before")
    queue_insert_before :: proc(queue: ^Queue, sibling: ^List, data: pointer) ---

    @(link_name = "g_queue_insert_before_link")
    queue_insert_before_link :: proc(queue: ^Queue, sibling: ^List, link_: ^List) ---

    @(link_name = "g_queue_insert_after")
    queue_insert_after :: proc(queue: ^Queue, sibling: ^List, data: pointer) ---

    @(link_name = "g_queue_insert_after_link")
    queue_insert_after_link :: proc(queue: ^Queue, sibling: ^List, link_: ^List) ---

    @(link_name = "g_queue_insert_sorted")
    queue_insert_sorted :: proc(queue: ^Queue, data: pointer, func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_queue_push_head_link")
    queue_push_head_link :: proc(queue: ^Queue, link_: ^List) ---

    @(link_name = "g_queue_push_tail_link")
    queue_push_tail_link :: proc(queue: ^Queue, link_: ^List) ---

    @(link_name = "g_queue_push_nth_link")
    queue_push_nth_link :: proc(queue: ^Queue, n: int_, link_: ^List) ---

    @(link_name = "g_queue_pop_head_link")
    queue_pop_head_link :: proc(queue: ^Queue) -> ^List ---

    @(link_name = "g_queue_pop_tail_link")
    queue_pop_tail_link :: proc(queue: ^Queue) -> ^List ---

    @(link_name = "g_queue_pop_nth_link")
    queue_pop_nth_link :: proc(queue: ^Queue, n: uint_) -> ^List ---

    @(link_name = "g_queue_peek_head_link")
    queue_peek_head_link :: proc(queue: ^Queue) -> ^List ---

    @(link_name = "g_queue_peek_tail_link")
    queue_peek_tail_link :: proc(queue: ^Queue) -> ^List ---

    @(link_name = "g_queue_peek_nth_link")
    queue_peek_nth_link :: proc(queue: ^Queue, n: uint_) -> ^List ---

    @(link_name = "g_queue_link_index")
    queue_link_index :: proc(queue: ^Queue, link_: ^List) -> int_ ---

    @(link_name = "g_queue_unlink")
    queue_unlink :: proc(queue: ^Queue, link_: ^List) ---

    @(link_name = "g_queue_delete_link")
    queue_delete_link :: proc(queue: ^Queue, link_: ^List) ---

    @(link_name = "g_rand_new_with_seed")
    rand_new_with_seed :: proc(seed: uint32) -> ^Rand ---

    @(link_name = "g_rand_new_with_seed_array")
    rand_new_with_seed_array :: proc(seed: ^uint32, seed_length: uint_) -> ^Rand ---

    @(link_name = "g_rand_new")
    rand_new :: proc() -> ^Rand ---

    @(link_name = "g_rand_free")
    rand_free :: proc(rand_: ^Rand) ---

    @(link_name = "g_rand_copy")
    rand_copy :: proc(rand_: ^Rand) -> ^Rand ---

    @(link_name = "g_rand_set_seed")
    rand_set_seed :: proc(rand_: ^Rand, seed: uint32) ---

    @(link_name = "g_rand_set_seed_array")
    rand_set_seed_array :: proc(rand_: ^Rand, seed: ^uint32, seed_length: uint_) ---

    @(link_name = "g_rand_int")
    rand_int :: proc(rand_: ^Rand) -> uint32 ---

    @(link_name = "g_rand_int_range")
    rand_int_range :: proc(rand_: ^Rand, begin: int32, end: int32) -> int32 ---

    @(link_name = "g_rand_double")
    rand_double :: proc(rand_: ^Rand) -> double ---

    @(link_name = "g_rand_double_range")
    rand_double_range :: proc(rand_: ^Rand, begin: double, end: double) -> double ---

    @(link_name = "g_random_set_seed")
    random_set_seed :: proc(seed: uint32) ---

    @(link_name = "g_random_int")
    random_int :: proc() -> uint32 ---

    @(link_name = "g_random_int_range")
    random_int_range :: proc(begin: int32, end: int32) -> int32 ---

    @(link_name = "g_random_double")
    random_double :: proc() -> double ---

    @(link_name = "g_random_double_range")
    random_double_range :: proc(begin: double, end: double) -> double ---

    @(link_name = "g_rc_box_alloc")
    rc_box_alloc :: proc(block_size: size) -> pointer ---

    @(link_name = "g_rc_box_alloc0")
    rc_box_alloc0 :: proc(block_size: size) -> pointer ---

    @(link_name = "g_rc_box_dup")
    rc_box_dup :: proc(block_size: size, mem_block: constpointer) -> pointer ---

    @(link_name = "g_rc_box_acquire")
    rc_box_acquire :: proc(mem_block: pointer) -> pointer ---

    @(link_name = "g_rc_box_release")
    rc_box_release :: proc(mem_block: pointer) ---

    @(link_name = "g_rc_box_release_full")
    rc_box_release_full :: proc(mem_block: pointer, clear_func: DestroyNotify) ---

    @(link_name = "g_rc_box_get_size")
    rc_box_get_size :: proc(mem_block: pointer) -> size ---

    @(link_name = "g_atomic_rc_box_alloc")
    atomic_rc_box_alloc :: proc(block_size: size) -> pointer ---

    @(link_name = "g_atomic_rc_box_alloc0")
    atomic_rc_box_alloc0 :: proc(block_size: size) -> pointer ---

    @(link_name = "g_atomic_rc_box_dup")
    atomic_rc_box_dup :: proc(block_size: size, mem_block: constpointer) -> pointer ---

    @(link_name = "g_atomic_rc_box_acquire")
    atomic_rc_box_acquire :: proc(mem_block: pointer) -> pointer ---

    @(link_name = "g_atomic_rc_box_release")
    atomic_rc_box_release :: proc(mem_block: pointer) ---

    @(link_name = "g_atomic_rc_box_release_full")
    atomic_rc_box_release_full :: proc(mem_block: pointer, clear_func: DestroyNotify) ---

    @(link_name = "g_atomic_rc_box_get_size")
    atomic_rc_box_get_size :: proc(mem_block: pointer) -> size ---

    @(link_name = "g_ref_count_init")
    ref_count_init :: proc(rc: ^refcount) ---

    @(link_name = "g_ref_count_inc")
    ref_count_inc :: proc(rc: ^refcount) ---

    @(link_name = "g_ref_count_dec")
    ref_count_dec :: proc(rc: ^refcount) -> boolean ---

    @(link_name = "g_ref_count_compare")
    ref_count_compare :: proc(rc: ^refcount, val: int_) -> boolean ---

    @(link_name = "g_atomic_ref_count_init")
    atomic_ref_count_init :: proc(arc: ^atomicrefcount) ---

    @(link_name = "g_atomic_ref_count_inc")
    atomic_ref_count_inc :: proc(arc: ^atomicrefcount) ---

    @(link_name = "g_atomic_ref_count_dec")
    atomic_ref_count_dec :: proc(arc: ^atomicrefcount) -> boolean ---

    @(link_name = "g_atomic_ref_count_compare")
    atomic_ref_count_compare :: proc(arc: ^atomicrefcount, val: int_) -> boolean ---

    @(link_name = "g_ref_string_new")
    ref_string_new :: proc(str: cstring) -> cstring ---

    @(link_name = "g_ref_string_new_len")
    ref_string_new_len :: proc(str: cstring, len: ssize) -> cstring ---

    @(link_name = "g_ref_string_new_intern")
    ref_string_new_intern :: proc(str: cstring) -> cstring ---

    @(link_name = "g_ref_string_acquire")
    ref_string_acquire :: proc(str: cstring) -> cstring ---

    @(link_name = "g_ref_string_release")
    ref_string_release :: proc(str: cstring) ---

    @(link_name = "g_ref_string_length")
    ref_string_length :: proc(str: cstring) -> size ---

    @(link_name = "g_ref_string_equal")
    ref_string_equal :: proc(str1: cstring, str2: cstring) -> boolean ---

    @(link_name = "g_regex_error_quark")
    regex_error_quark :: proc() -> Quark ---

    @(link_name = "g_regex_new")
    regex_new :: proc(pattern: cstring, compile_options: RegexCompileFlags, match_options: RegexMatchFlags, error: ^^Error) -> ^Regex ---

    @(link_name = "g_regex_ref")
    regex_ref :: proc(regex: ^Regex) -> ^Regex ---

    @(link_name = "g_regex_unref")
    regex_unref :: proc(regex: ^Regex) ---

    @(link_name = "g_regex_get_pattern")
    regex_get_pattern :: proc(regex: ^Regex) -> cstring ---

    @(link_name = "g_regex_get_max_backref")
    regex_get_max_backref :: proc(regex: ^Regex) -> int_ ---

    @(link_name = "g_regex_get_capture_count")
    regex_get_capture_count :: proc(regex: ^Regex) -> int_ ---

    @(link_name = "g_regex_get_has_cr_or_lf")
    regex_get_has_cr_or_lf :: proc(regex: ^Regex) -> boolean ---

    @(link_name = "g_regex_get_max_lookbehind")
    regex_get_max_lookbehind :: proc(regex: ^Regex) -> int_ ---

    @(link_name = "g_regex_get_string_number")
    regex_get_string_number :: proc(regex: ^Regex, name: cstring) -> int_ ---

    @(link_name = "g_regex_escape_string")
    regex_escape_string :: proc(string_p: cstring, length: int_) -> cstring ---

    @(link_name = "g_regex_escape_nul")
    regex_escape_nul :: proc(string_p: cstring, length: int_) -> cstring ---

    @(link_name = "g_regex_get_compile_flags")
    regex_get_compile_flags :: proc(regex: ^Regex) -> RegexCompileFlags ---

    @(link_name = "g_regex_get_match_flags")
    regex_get_match_flags :: proc(regex: ^Regex) -> RegexMatchFlags ---

    @(link_name = "g_regex_match_simple")
    regex_match_simple :: proc(pattern: cstring, string_p: cstring, compile_options: RegexCompileFlags, match_options: RegexMatchFlags) -> boolean ---

    @(link_name = "g_regex_match")
    regex_match :: proc(regex: ^Regex, string_p: cstring, match_options: RegexMatchFlags, match_info: ^^MatchInfo) -> boolean ---

    @(link_name = "g_regex_match_full")
    regex_match_full :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, match_options: RegexMatchFlags, match_info: ^^MatchInfo, error: ^^Error) -> boolean ---

    @(link_name = "g_regex_match_all")
    regex_match_all :: proc(regex: ^Regex, string_p: cstring, match_options: RegexMatchFlags, match_info: ^^MatchInfo) -> boolean ---

    @(link_name = "g_regex_match_all_full")
    regex_match_all_full :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, match_options: RegexMatchFlags, match_info: ^^MatchInfo, error: ^^Error) -> boolean ---

    @(link_name = "g_regex_split_simple")
    regex_split_simple :: proc(pattern: cstring, string_p: cstring, compile_options: RegexCompileFlags, match_options: RegexMatchFlags) -> ^cstring ---

    @(link_name = "g_regex_split")
    regex_split :: proc(regex: ^Regex, string_p: cstring, match_options: RegexMatchFlags) -> ^cstring ---

    @(link_name = "g_regex_split_full")
    regex_split_full :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, match_options: RegexMatchFlags, max_tokens: int_, error: ^^Error) -> ^cstring ---

    @(link_name = "g_regex_replace")
    regex_replace :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, replacement: cstring, match_options: RegexMatchFlags, error: ^^Error) -> cstring ---

    @(link_name = "g_regex_replace_literal")
    regex_replace_literal :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, replacement: cstring, match_options: RegexMatchFlags, error: ^^Error) -> cstring ---

    @(link_name = "g_regex_replace_eval")
    regex_replace_eval :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, match_options: RegexMatchFlags, eval: RegexEvalCallback, user_data: pointer, error: ^^Error) -> cstring ---

    @(link_name = "g_regex_check_replacement")
    regex_check_replacement :: proc(replacement: cstring, has_references: [^]boolean, error: ^^Error) -> boolean ---

    @(link_name = "g_match_info_get_regex")
    match_info_get_regex :: proc(match_info: ^MatchInfo) -> ^Regex ---

    @(link_name = "g_match_info_get_string")
    match_info_get_string :: proc(match_info: ^MatchInfo) -> cstring ---

    @(link_name = "g_match_info_ref")
    match_info_ref :: proc(match_info: ^MatchInfo) -> ^MatchInfo ---

    @(link_name = "g_match_info_unref")
    match_info_unref :: proc(match_info: ^MatchInfo) ---

    @(link_name = "g_match_info_free")
    match_info_free :: proc(match_info: ^MatchInfo) ---

    @(link_name = "g_match_info_next")
    match_info_next :: proc(match_info: ^MatchInfo, error: ^^Error) -> boolean ---

    @(link_name = "g_match_info_matches")
    match_info_matches :: proc(match_info: ^MatchInfo) -> boolean ---

    @(link_name = "g_match_info_get_match_count")
    match_info_get_match_count :: proc(match_info: ^MatchInfo) -> int_ ---

    @(link_name = "g_match_info_is_partial_match")
    match_info_is_partial_match :: proc(match_info: ^MatchInfo) -> boolean ---

    @(link_name = "g_match_info_expand_references")
    match_info_expand_references :: proc(match_info: ^MatchInfo, string_to_expand: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_match_info_fetch")
    match_info_fetch :: proc(match_info: ^MatchInfo, match_num: int_) -> cstring ---

    @(link_name = "g_match_info_fetch_pos")
    match_info_fetch_pos :: proc(match_info: ^MatchInfo, match_num: int_, start_pos: [^]int_, end_pos: [^]int_) -> boolean ---

    @(link_name = "g_match_info_fetch_named")
    match_info_fetch_named :: proc(match_info: ^MatchInfo, name: cstring) -> cstring ---

    @(link_name = "g_match_info_fetch_named_pos")
    match_info_fetch_named_pos :: proc(match_info: ^MatchInfo, name: cstring, start_pos: [^]int_, end_pos: [^]int_) -> boolean ---

    @(link_name = "g_match_info_fetch_all")
    match_info_fetch_all :: proc(match_info: ^MatchInfo) -> ^cstring ---

    @(link_name = "g_scanner_new")
    scanner_new :: proc(config_templ: rawptr) -> ^Scanner ---

    @(link_name = "g_scanner_destroy")
    scanner_destroy :: proc(scanner: ^Scanner) ---

    @(link_name = "g_scanner_input_file")
    scanner_input_file :: proc(scanner: ^Scanner, input_fd: int_) ---

    @(link_name = "g_scanner_sync_file_offset")
    scanner_sync_file_offset :: proc(scanner: ^Scanner) ---

    @(link_name = "g_scanner_input_text")
    scanner_input_text :: proc(scanner: ^Scanner, text: cstring, text_len: uint_) ---

    @(link_name = "g_scanner_get_next_token")
    scanner_get_next_token :: proc(scanner: ^Scanner) -> TokenType ---

    @(link_name = "g_scanner_peek_next_token")
    scanner_peek_next_token :: proc(scanner: ^Scanner) -> TokenType ---

    @(link_name = "g_scanner_cur_token")
    scanner_cur_token :: proc(scanner: ^Scanner) -> TokenType ---

    @(link_name = "g_scanner_cur_value")
    scanner_cur_value :: proc(scanner: ^Scanner) -> TokenValue ---

    @(link_name = "g_scanner_cur_line")
    scanner_cur_line :: proc(scanner: ^Scanner) -> uint_ ---

    @(link_name = "g_scanner_cur_position")
    scanner_cur_position :: proc(scanner: ^Scanner) -> uint_ ---

    @(link_name = "g_scanner_eof")
    scanner_eof :: proc(scanner: ^Scanner) -> boolean ---

    @(link_name = "g_scanner_set_scope")
    scanner_set_scope :: proc(scanner: ^Scanner, scope_id: uint_) -> uint_ ---

    @(link_name = "g_scanner_scope_add_symbol")
    scanner_scope_add_symbol :: proc(scanner: ^Scanner, scope_id: uint_, symbol: cstring, value: pointer) ---

    @(link_name = "g_scanner_scope_remove_symbol")
    scanner_scope_remove_symbol :: proc(scanner: ^Scanner, scope_id: uint_, symbol: cstring) ---

    @(link_name = "g_scanner_scope_lookup_symbol")
    scanner_scope_lookup_symbol :: proc(scanner: ^Scanner, scope_id: uint_, symbol: cstring) -> pointer ---

    @(link_name = "g_scanner_scope_foreach_symbol")
    scanner_scope_foreach_symbol :: proc(scanner: ^Scanner, scope_id: uint_, func: HFunc, user_data: pointer) ---

    @(link_name = "g_scanner_lookup_symbol")
    scanner_lookup_symbol :: proc(scanner: ^Scanner, symbol: cstring) -> pointer ---

    @(link_name = "g_scanner_unexp_token")
    scanner_unexp_token :: proc(scanner: ^Scanner, expected_token: TokenType, identifier_spec: cstring, symbol_spec: cstring, symbol_name: cstring, message: cstring, is_error: int_) ---

    @(link_name = "g_scanner_error")
    scanner_error :: proc(scanner: ^Scanner, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_scanner_warn")
    scanner_warn :: proc(scanner: ^Scanner, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_sequence_new")
    sequence_new :: proc(data_destroy: DestroyNotify) -> ^Sequence ---

    @(link_name = "g_sequence_free")
    sequence_free :: proc(seq: ^Sequence) ---

    @(link_name = "g_sequence_get_length")
    sequence_get_length :: proc(seq: ^Sequence) -> int_ ---

    @(link_name = "g_sequence_foreach")
    sequence_foreach :: proc(seq: ^Sequence, func: Func, user_data: pointer) ---

    @(link_name = "g_sequence_foreach_range")
    sequence_foreach_range :: proc(begin: ^SequenceIter, end: ^SequenceIter, func: Func, user_data: pointer) ---

    @(link_name = "g_sequence_sort")
    sequence_sort :: proc(seq: ^Sequence, cmp_func: CompareDataFunc, cmp_data: pointer) ---

    @(link_name = "g_sequence_sort_iter")
    sequence_sort_iter :: proc(seq: ^Sequence, cmp_func: SequenceIterCompareFunc, cmp_data: pointer) ---

    @(link_name = "g_sequence_is_empty")
    sequence_is_empty :: proc(seq: ^Sequence) -> boolean ---

    @(link_name = "g_sequence_get_begin_iter")
    sequence_get_begin_iter :: proc(seq: ^Sequence) -> ^SequenceIter ---

    @(link_name = "g_sequence_get_end_iter")
    sequence_get_end_iter :: proc(seq: ^Sequence) -> ^SequenceIter ---

    @(link_name = "g_sequence_get_iter_at_pos")
    sequence_get_iter_at_pos :: proc(seq: ^Sequence, pos: int_) -> ^SequenceIter ---

    @(link_name = "g_sequence_append")
    sequence_append :: proc(seq: ^Sequence, data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_prepend")
    sequence_prepend :: proc(seq: ^Sequence, data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_insert_before")
    sequence_insert_before :: proc(iter: ^SequenceIter, data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_move")
    sequence_move :: proc(src: ^SequenceIter, dest: ^SequenceIter) ---

    @(link_name = "g_sequence_swap")
    sequence_swap :: proc(a: ^SequenceIter, b: ^SequenceIter) ---

    @(link_name = "g_sequence_insert_sorted")
    sequence_insert_sorted :: proc(seq: ^Sequence, data: pointer, cmp_func: CompareDataFunc, cmp_data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_insert_sorted_iter")
    sequence_insert_sorted_iter :: proc(seq: ^Sequence, data: pointer, iter_cmp: SequenceIterCompareFunc, cmp_data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_sort_changed")
    sequence_sort_changed :: proc(iter: ^SequenceIter, cmp_func: CompareDataFunc, cmp_data: pointer) ---

    @(link_name = "g_sequence_sort_changed_iter")
    sequence_sort_changed_iter :: proc(iter: ^SequenceIter, iter_cmp: SequenceIterCompareFunc, cmp_data: pointer) ---

    @(link_name = "g_sequence_remove")
    sequence_remove :: proc(iter: ^SequenceIter) ---

    @(link_name = "g_sequence_remove_range")
    sequence_remove_range :: proc(begin: ^SequenceIter, end: ^SequenceIter) ---

    @(link_name = "g_sequence_move_range")
    sequence_move_range :: proc(dest: ^SequenceIter, begin: ^SequenceIter, end: ^SequenceIter) ---

    @(link_name = "g_sequence_search")
    sequence_search :: proc(seq: ^Sequence, data: pointer, cmp_func: CompareDataFunc, cmp_data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_search_iter")
    sequence_search_iter :: proc(seq: ^Sequence, data: pointer, iter_cmp: SequenceIterCompareFunc, cmp_data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_lookup")
    sequence_lookup :: proc(seq: ^Sequence, data: pointer, cmp_func: CompareDataFunc, cmp_data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_lookup_iter")
    sequence_lookup_iter :: proc(seq: ^Sequence, data: pointer, iter_cmp: SequenceIterCompareFunc, cmp_data: pointer) -> ^SequenceIter ---

    @(link_name = "g_sequence_get")
    sequence_get :: proc(iter: ^SequenceIter) -> pointer ---

    @(link_name = "g_sequence_set")
    sequence_set :: proc(iter: ^SequenceIter, data: pointer) ---

    @(link_name = "g_sequence_iter_is_begin")
    sequence_iter_is_begin :: proc(iter: ^SequenceIter) -> boolean ---

    @(link_name = "g_sequence_iter_is_end")
    sequence_iter_is_end :: proc(iter: ^SequenceIter) -> boolean ---

    @(link_name = "g_sequence_iter_next")
    sequence_iter_next :: proc(iter: ^SequenceIter) -> ^SequenceIter ---

    @(link_name = "g_sequence_iter_prev")
    sequence_iter_prev :: proc(iter: ^SequenceIter) -> ^SequenceIter ---

    @(link_name = "g_sequence_iter_get_position")
    sequence_iter_get_position :: proc(iter: ^SequenceIter) -> int_ ---

    @(link_name = "g_sequence_iter_move")
    sequence_iter_move :: proc(iter: ^SequenceIter, delta: int_) -> ^SequenceIter ---

    @(link_name = "g_sequence_iter_get_sequence")
    sequence_iter_get_sequence :: proc(iter: ^SequenceIter) -> ^Sequence ---

    @(link_name = "g_sequence_iter_compare")
    sequence_iter_compare :: proc(a: ^SequenceIter, b: ^SequenceIter) -> int_ ---

    @(link_name = "g_sequence_range_get_midpoint")
    sequence_range_get_midpoint :: proc(begin: ^SequenceIter, end: ^SequenceIter) -> ^SequenceIter ---

    @(link_name = "g_shell_error_quark")
    shell_error_quark :: proc() -> Quark ---

    @(link_name = "g_shell_quote")
    shell_quote :: proc(unquoted_string: cstring) -> cstring ---

    @(link_name = "g_shell_unquote")
    shell_unquote :: proc(quoted_string: cstring, error: ^^Error) -> cstring ---

    @(link_name = "g_shell_parse_argv")
    shell_parse_argv :: proc(command_line: cstring, argcp: ^int_, argvp: ^^cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_slice_alloc")
    slice_alloc :: proc(block_size: size) -> pointer ---

    @(link_name = "g_slice_alloc0")
    slice_alloc0 :: proc(block_size: size) -> pointer ---

    @(link_name = "g_slice_copy")
    slice_copy :: proc(block_size: size, mem_block: constpointer) -> pointer ---

    @(link_name = "g_slice_free1")
    slice_free1 :: proc(block_size: size, mem_block: pointer) ---

    @(link_name = "g_slice_free_chain_with_offset")
    slice_free_chain_with_offset :: proc(block_size: size, mem_chain: pointer, next_offset: size) ---

    @(link_name = "g_slice_set_config")
    slice_set_config :: proc(ckey: SliceConfig, value: int64) ---

    @(link_name = "g_slice_get_config")
    slice_get_config :: proc(ckey: SliceConfig) -> int64 ---

    @(link_name = "g_slice_get_config_state")
    slice_get_config_state :: proc(ckey: SliceConfig, address: int64, n_values: [^]uint_) -> ^int64 ---

    @(link_name = "g_spawn_error_quark")
    spawn_error_quark :: proc() -> Quark ---

    @(link_name = "g_spawn_exit_error_quark")
    spawn_exit_error_quark :: proc() -> Quark ---

    @(link_name = "g_spawn_async")
    spawn_async :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, child_pid: ^Pid, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_async_with_pipes")
    spawn_async_with_pipes :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, child_pid: ^Pid, standard_input: ^int_, standard_output: ^int_, standard_error: ^int_, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_async_with_pipes_and_fds")
    spawn_async_with_pipes_and_fds :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, stdin_fd: int_, stdout_fd: int_, stderr_fd: int_, source_fds: [^]int_, target_fds: [^]int_, n_fds: size, child_pid_out: ^Pid, stdin_pipe_out: ^int_, stdout_pipe_out: ^int_, stderr_pipe_out: ^int_, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_async_with_fds")
    spawn_async_with_fds :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, child_pid: ^Pid, stdin_fd: int_, stdout_fd: int_, stderr_fd: int_, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_sync")
    spawn_sync :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, standard_output: ^cstring, standard_error: ^cstring, wait_status: [^]int_, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_command_line_sync")
    spawn_command_line_sync :: proc(command_line: cstring, standard_output: ^cstring, standard_error: ^cstring, wait_status: [^]int_, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_command_line_async")
    spawn_command_line_async :: proc(command_line: cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_check_wait_status")
    spawn_check_wait_status :: proc(wait_status: int_, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_check_exit_status")
    spawn_check_exit_status :: proc(wait_status: int_, error: ^^Error) -> boolean ---

    @(link_name = "g_spawn_close_pid")
    spawn_close_pid :: proc(pid: Pid) ---

    @(link_name = "g_string_chunk_new")
    string_chunk_new :: proc(size_p: size) -> ^StringChunk ---

    @(link_name = "g_string_chunk_free")
    string_chunk_free :: proc(chunk: ^StringChunk) ---

    @(link_name = "g_string_chunk_clear")
    string_chunk_clear :: proc(chunk: ^StringChunk) ---

    @(link_name = "g_string_chunk_insert")
    string_chunk_insert :: proc(chunk: ^StringChunk, string_p: cstring) -> cstring ---

    @(link_name = "g_string_chunk_insert_len")
    string_chunk_insert_len :: proc(chunk: ^StringChunk, string_p: cstring, len: ssize) -> cstring ---

    @(link_name = "g_string_chunk_insert_const")
    string_chunk_insert_const :: proc(chunk: ^StringChunk, string_p: cstring) -> cstring ---

    @(link_name = "g_strv_builder_new")
    strv_builder_new :: proc() -> ^StrvBuilder ---

    @(link_name = "g_strv_builder_unref")
    strv_builder_unref :: proc(builder: ^StrvBuilder) ---

    @(link_name = "g_strv_builder_unref_to_strv")
    strv_builder_unref_to_strv :: proc(builder: ^StrvBuilder) -> Strv ---

    @(link_name = "g_strv_builder_ref")
    strv_builder_ref :: proc(builder: ^StrvBuilder) -> ^StrvBuilder ---

    @(link_name = "g_strv_builder_add")
    strv_builder_add :: proc(builder: ^StrvBuilder, value: cstring) ---

    @(link_name = "g_strv_builder_addv")
    strv_builder_addv :: proc(builder: ^StrvBuilder, value: ^cstring) ---

    @(link_name = "g_strv_builder_add_many")
    strv_builder_add_many :: proc(builder: ^StrvBuilder, #c_vararg var_args: ..any) ---

    @(link_name = "g_strv_builder_take")
    strv_builder_take :: proc(builder: ^StrvBuilder, value: cstring) ---

    @(link_name = "g_strv_builder_end")
    strv_builder_end :: proc(builder: ^StrvBuilder) -> Strv ---

    @(link_name = "g_strcmp0")
    strcmp0 :: proc(str1: cstring, str2: cstring) -> i32 ---

    @(link_name = "g_test_minimized_result")
    test_minimized_result :: proc(minimized_quantity: f64, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_maximized_result")
    test_maximized_result :: proc(maximized_quantity: f64, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_init")
    test_init :: proc(argc: ^i32, argv: ^^cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_subprocess")
    test_subprocess :: proc() -> boolean ---

    @(link_name = "g_test_run")
    test_run :: proc() -> i32 ---

    @(link_name = "g_test_add_func")
    test_add_func :: proc(testpath: cstring, test_func: TestFunc) ---

    @(link_name = "g_test_add_data_func")
    test_add_data_func :: proc(testpath: cstring, test_data: constpointer, test_func: TestDataFunc) ---

    @(link_name = "g_test_add_data_func_full")
    test_add_data_func_full :: proc(testpath: cstring, test_data: pointer, test_func: TestDataFunc, data_free_func: DestroyNotify) ---

    @(link_name = "g_test_get_path")
    test_get_path :: proc() -> cstring ---

    @(link_name = "g_test_fail")
    test_fail :: proc() ---

    @(link_name = "g_test_fail_printf")
    test_fail_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_incomplete")
    test_incomplete :: proc(msg: cstring) ---

    @(link_name = "g_test_incomplete_printf")
    test_incomplete_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_skip")
    test_skip :: proc(msg: cstring) ---

    @(link_name = "g_test_skip_printf")
    test_skip_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_failed")
    test_failed :: proc() -> boolean ---

    @(link_name = "g_test_set_nonfatal_assertions")
    test_set_nonfatal_assertions :: proc() ---

    @(link_name = "g_test_disable_crash_reporting")
    test_disable_crash_reporting :: proc() ---

    @(link_name = "g_test_message")
    test_message :: proc(format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_test_bug_base")
    test_bug_base :: proc(uri_pattern: cstring) ---

    @(link_name = "g_test_bug")
    test_bug :: proc(bug_uri_snippet: cstring) ---

    @(link_name = "g_test_summary")
    test_summary :: proc(summary: cstring) ---

    @(link_name = "g_test_timer_start")
    test_timer_start :: proc() ---

    @(link_name = "g_test_timer_elapsed")
    test_timer_elapsed :: proc() -> f64 ---

    @(link_name = "g_test_timer_last")
    test_timer_last :: proc() -> f64 ---

    @(link_name = "g_test_queue_free")
    test_queue_free :: proc(gfree_pointer: pointer) ---

    @(link_name = "g_test_queue_destroy")
    test_queue_destroy :: proc(destroy_func: DestroyNotify, destroy_data: pointer) ---

    @(link_name = "g_test_trap_fork")
    test_trap_fork :: proc(usec_timeout: uint64, test_trap_flags: TestTrapFlags) -> boolean ---

    @(link_name = "g_test_trap_subprocess")
    test_trap_subprocess :: proc(test_path: cstring, usec_timeout: uint64, test_flags: TestSubprocessFlags) ---

    @(link_name = "g_test_trap_subprocess_with_envp")
    test_trap_subprocess_with_envp :: proc(test_path: cstring, envp: ^cstring, usec_timeout: uint64, test_flags: TestSubprocessFlags) ---

    @(link_name = "g_test_trap_has_passed")
    test_trap_has_passed :: proc() -> boolean ---

    @(link_name = "g_test_trap_reached_timeout")
    test_trap_reached_timeout :: proc() -> boolean ---

    @(link_name = "g_test_rand_int")
    test_rand_int :: proc() -> int32 ---

    @(link_name = "g_test_rand_int_range")
    test_rand_int_range :: proc(begin: int32, end: int32) -> int32 ---

    @(link_name = "g_test_rand_double")
    test_rand_double :: proc() -> f64 ---

    @(link_name = "g_test_rand_double_range")
    test_rand_double_range :: proc(range_start: f64, range_end: f64) -> f64 ---

    @(link_name = "g_test_create_case")
    test_create_case :: proc(test_name: cstring, data_size: size, test_data: constpointer, data_setup: TestFixtureFunc, data_test: TestFixtureFunc, data_teardown: TestFixtureFunc) -> ^TestCase ---

    @(link_name = "g_test_create_suite")
    test_create_suite :: proc(suite_name: cstring) -> ^TestSuite ---

    @(link_name = "g_test_get_root")
    test_get_root :: proc() -> ^TestSuite ---

    @(link_name = "g_test_suite_add")
    test_suite_add :: proc(suite: ^TestSuite, test_case: ^TestCase) ---

    @(link_name = "g_test_suite_add_suite")
    test_suite_add_suite :: proc(suite: ^TestSuite, nestedsuite: ^TestSuite) ---

    @(link_name = "g_test_run_suite")
    test_run_suite :: proc(suite: ^TestSuite) -> i32 ---

    @(link_name = "g_test_case_free")
    test_case_free :: proc(test_case: ^TestCase) ---

    @(link_name = "g_test_suite_free")
    test_suite_free :: proc(suite: ^TestSuite) ---

    @(link_name = "g_test_trap_assertions")
    test_trap_assertions :: proc(domain: cstring, file: cstring, line: i32, func: cstring, assertion_flags: uint64, pattern: cstring) ---

    @(link_name = "g_assertion_message")
    assertion_message :: proc(domain: cstring, file: cstring, line: i32, func: cstring, message: cstring) ---

    @(link_name = "g_assertion_message_expr")
    assertion_message_expr :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring) ---

    @(link_name = "g_assertion_message_cmpstr")
    assertion_message_cmpstr :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: cstring, cmp: cstring, arg2: cstring) ---

    @(link_name = "g_assertion_message_cmpstrv")
    assertion_message_cmpstrv :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: ^cstring, arg2: ^cstring, first_wrong_idx: size) ---

    @(link_name = "g_assertion_message_cmpint")
    assertion_message_cmpint :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: uint64, cmp: cstring, arg2: uint64, numtype: char) ---

    @(link_name = "g_assertion_message_cmpnum")
    assertion_message_cmpnum :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: [16]byte, cmp: cstring, arg2: [16]byte, numtype: char) ---

    @(link_name = "g_assertion_message_error")
    assertion_message_error :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, error: ^Error, error_domain: Quark, error_code: i32) ---

    @(link_name = "g_test_add_vtable")
    test_add_vtable :: proc(testpath: cstring, data_size: size, test_data: constpointer, data_setup: TestFixtureFunc, data_test: TestFixtureFunc, data_teardown: TestFixtureFunc) ---

    @(link_name = "g_test_config_vars")
    g_test_config_vars: [^]TestConfig

    @(link_name = "g_test_log_type_name")
    test_log_type_name :: proc(log_type: TestLogType) -> cstring ---

    @(link_name = "g_test_log_buffer_new")
    test_log_buffer_new :: proc() -> ^TestLogBuffer ---

    @(link_name = "g_test_log_buffer_free")
    test_log_buffer_free :: proc(tbuffer: ^TestLogBuffer) ---

    @(link_name = "g_test_log_buffer_push")
    test_log_buffer_push :: proc(tbuffer: ^TestLogBuffer, n_bytes: uint_, bytes: [^]uint8) ---

    @(link_name = "g_test_log_buffer_pop")
    test_log_buffer_pop :: proc(tbuffer: ^TestLogBuffer) -> ^TestLogMsg ---

    @(link_name = "g_test_log_msg_free")
    test_log_msg_free :: proc(tmsg: ^TestLogMsg) ---

    @(link_name = "g_test_log_set_fatal_handler")
    test_log_set_fatal_handler :: proc(log_func: TestLogFatalFunc, user_data: pointer) ---

    @(link_name = "g_test_expect_message")
    test_expect_message :: proc(log_domain: cstring, log_level: LogLevelFlags, pattern: cstring) ---

    @(link_name = "g_test_assert_expected_messages_internal")
    test_assert_expected_messages_internal :: proc(domain: cstring, file: cstring, line: i32, func: cstring) ---

    @(link_name = "g_test_build_filename")
    test_build_filename :: proc(file_type: TestFileType, first_path: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_test_get_dir")
    test_get_dir :: proc(file_type: TestFileType) -> cstring ---

    @(link_name = "g_test_get_filename")
    test_get_filename :: proc(file_type: TestFileType, first_path: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "g_thread_pool_new")
    thread_pool_new :: proc(func: Func, user_data: pointer, max_threads: int_, exclusive: boolean, error: ^^Error) -> ^ThreadPool ---

    @(link_name = "g_thread_pool_new_full")
    thread_pool_new_full :: proc(func: Func, user_data: pointer, item_free_func: DestroyNotify, max_threads: int_, exclusive: boolean, error: ^^Error) -> ^ThreadPool ---

    @(link_name = "g_thread_pool_free")
    thread_pool_free :: proc(pool: ^ThreadPool, immediate: boolean, wait_: boolean) ---

    @(link_name = "g_thread_pool_push")
    thread_pool_push :: proc(pool: ^ThreadPool, data: pointer, error: ^^Error) -> boolean ---

    @(link_name = "g_thread_pool_unprocessed")
    thread_pool_unprocessed :: proc(pool: ^ThreadPool) -> uint_ ---

    @(link_name = "g_thread_pool_set_sort_function")
    thread_pool_set_sort_function :: proc(pool: ^ThreadPool, func: CompareDataFunc, user_data: pointer) ---

    @(link_name = "g_thread_pool_move_to_front")
    thread_pool_move_to_front :: proc(pool: ^ThreadPool, data: pointer) -> boolean ---

    @(link_name = "g_thread_pool_set_max_threads")
    thread_pool_set_max_threads :: proc(pool: ^ThreadPool, max_threads: int_, error: ^^Error) -> boolean ---

    @(link_name = "g_thread_pool_get_max_threads")
    thread_pool_get_max_threads :: proc(pool: ^ThreadPool) -> int_ ---

    @(link_name = "g_thread_pool_get_num_threads")
    thread_pool_get_num_threads :: proc(pool: ^ThreadPool) -> uint_ ---

    @(link_name = "g_thread_pool_set_max_unused_threads")
    thread_pool_set_max_unused_threads :: proc(max_threads: int_) ---

    @(link_name = "g_thread_pool_get_max_unused_threads")
    thread_pool_get_max_unused_threads :: proc() -> int_ ---

    @(link_name = "g_thread_pool_get_num_unused_threads")
    thread_pool_get_num_unused_threads :: proc() -> uint_ ---

    @(link_name = "g_thread_pool_stop_unused_threads")
    thread_pool_stop_unused_threads :: proc() ---

    @(link_name = "g_thread_pool_set_max_idle_time")
    thread_pool_set_max_idle_time :: proc(interval: uint_) ---

    @(link_name = "g_thread_pool_get_max_idle_time")
    thread_pool_get_max_idle_time :: proc() -> uint_ ---

    @(link_name = "g_timer_new")
    timer_new :: proc() -> ^Timer ---

    @(link_name = "g_timer_destroy")
    timer_destroy :: proc(timer: ^Timer) ---

    @(link_name = "g_timer_start")
    timer_start :: proc(timer: ^Timer) ---

    @(link_name = "g_timer_stop")
    timer_stop :: proc(timer: ^Timer) ---

    @(link_name = "g_timer_reset")
    timer_reset :: proc(timer: ^Timer) ---

    @(link_name = "g_timer_continue")
    timer_continue :: proc(timer: ^Timer) ---

    @(link_name = "g_timer_elapsed")
    timer_elapsed :: proc(timer: ^Timer, microseconds: [^]ulong) -> double ---

    @(link_name = "g_timer_is_active")
    timer_is_active :: proc(timer: ^Timer) -> boolean ---

    @(link_name = "g_usleep")
    usleep :: proc(microseconds: ulong) ---

    @(link_name = "g_time_val_add")
    time_val_add :: proc(time_: ^TimeVal, microseconds: long) ---

    @(link_name = "g_time_val_from_iso8601")
    time_val_from_iso8601 :: proc(iso_date: cstring, time_: ^TimeVal) -> boolean ---

    @(link_name = "g_time_val_to_iso8601")
    time_val_to_iso8601 :: proc(time_: ^TimeVal) -> cstring ---

    @(link_name = "g_trash_stack_push")
    trash_stack_push :: proc(stack_p: ^^TrashStack, data_p: pointer) ---

    @(link_name = "g_trash_stack_pop")
    trash_stack_pop :: proc(stack_p: ^^TrashStack) -> pointer ---

    @(link_name = "g_trash_stack_peek")
    trash_stack_peek :: proc(stack_p: ^^TrashStack) -> pointer ---

    @(link_name = "g_trash_stack_height")
    trash_stack_height :: proc(stack_p: ^^TrashStack) -> uint_ ---

    @(link_name = "g_tree_new")
    tree_new :: proc(key_compare_func: CompareFunc) -> ^Tree ---

    @(link_name = "g_tree_new_with_data")
    tree_new_with_data :: proc(key_compare_func: CompareDataFunc, key_compare_data: pointer) -> ^Tree ---

    @(link_name = "g_tree_new_full")
    tree_new_full :: proc(key_compare_func: CompareDataFunc, key_compare_data: pointer, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) -> ^Tree ---

    @(link_name = "g_tree_node_first")
    tree_node_first :: proc(tree: ^Tree) -> ^TreeNode ---

    @(link_name = "g_tree_node_last")
    tree_node_last :: proc(tree: ^Tree) -> ^TreeNode ---

    @(link_name = "g_tree_node_previous")
    tree_node_previous :: proc(node: ^TreeNode) -> ^TreeNode ---

    @(link_name = "g_tree_node_next")
    tree_node_next :: proc(node: ^TreeNode) -> ^TreeNode ---

    @(link_name = "g_tree_ref")
    tree_ref :: proc(tree: ^Tree) -> ^Tree ---

    @(link_name = "g_tree_unref")
    tree_unref :: proc(tree: ^Tree) ---

    @(link_name = "g_tree_destroy")
    tree_destroy :: proc(tree: ^Tree) ---

    @(link_name = "g_tree_insert_node")
    tree_insert_node :: proc(tree: ^Tree, key: pointer, value: pointer) -> ^TreeNode ---

    @(link_name = "g_tree_insert")
    tree_insert :: proc(tree: ^Tree, key: pointer, value: pointer) ---

    @(link_name = "g_tree_replace_node")
    tree_replace_node :: proc(tree: ^Tree, key: pointer, value: pointer) -> ^TreeNode ---

    @(link_name = "g_tree_replace")
    tree_replace :: proc(tree: ^Tree, key: pointer, value: pointer) ---

    @(link_name = "g_tree_remove")
    tree_remove :: proc(tree: ^Tree, key: constpointer) -> boolean ---

    @(link_name = "g_tree_remove_all")
    tree_remove_all :: proc(tree: ^Tree) ---

    @(link_name = "g_tree_steal")
    tree_steal :: proc(tree: ^Tree, key: constpointer) -> boolean ---

    @(link_name = "g_tree_node_key")
    tree_node_key :: proc(node: ^TreeNode) -> pointer ---

    @(link_name = "g_tree_node_value")
    tree_node_value :: proc(node: ^TreeNode) -> pointer ---

    @(link_name = "g_tree_lookup_node")
    tree_lookup_node :: proc(tree: ^Tree, key: constpointer) -> ^TreeNode ---

    @(link_name = "g_tree_lookup")
    tree_lookup :: proc(tree: ^Tree, key: constpointer) -> pointer ---

    @(link_name = "g_tree_lookup_extended")
    tree_lookup_extended :: proc(tree: ^Tree, lookup_key: constpointer, orig_key: ^pointer, value: ^pointer) -> boolean ---

    @(link_name = "g_tree_foreach")
    tree_foreach :: proc(tree: ^Tree, func: TraverseFunc, user_data: pointer) ---

    @(link_name = "g_tree_foreach_node")
    tree_foreach_node :: proc(tree: ^Tree, func: TraverseNodeFunc, user_data: pointer) ---

    @(link_name = "g_tree_traverse")
    tree_traverse :: proc(tree: ^Tree, traverse_func: TraverseFunc, traverse_type: TraverseType, user_data: pointer) ---

    @(link_name = "g_tree_search_node")
    tree_search_node :: proc(tree: ^Tree, search_func: CompareFunc, user_data: constpointer) -> ^TreeNode ---

    @(link_name = "g_tree_search")
    tree_search :: proc(tree: ^Tree, search_func: CompareFunc, user_data: constpointer) -> pointer ---

    @(link_name = "g_tree_lower_bound")
    tree_lower_bound :: proc(tree: ^Tree, key: constpointer) -> ^TreeNode ---

    @(link_name = "g_tree_upper_bound")
    tree_upper_bound :: proc(tree: ^Tree, key: constpointer) -> ^TreeNode ---

    @(link_name = "g_tree_height")
    tree_height :: proc(tree: ^Tree) -> int_ ---

    @(link_name = "g_tree_nnodes")
    tree_nnodes :: proc(tree: ^Tree) -> int_ ---

    @(link_name = "g_uri_ref")
    uri_ref :: proc(uri: ^Uri) -> ^Uri ---

    @(link_name = "g_uri_unref")
    uri_unref :: proc(uri: ^Uri) ---

    @(link_name = "g_uri_split")
    uri_split :: proc(uri_ref: cstring, flags: UriFlags, scheme: ^cstring, userinfo: ^cstring, host: ^cstring, port: ^int_, path: ^cstring, query: ^cstring, fragment: ^cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_uri_split_with_user")
    uri_split_with_user :: proc(uri_ref: cstring, flags: UriFlags, scheme: ^cstring, user: ^cstring, password: ^cstring, auth_params: [^]cstring, host: ^cstring, port: ^int_, path: ^cstring, query: ^cstring, fragment: ^cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_uri_split_network")
    uri_split_network :: proc(uri_string: cstring, flags: UriFlags, scheme: ^cstring, host: ^cstring, port: ^int_, error: ^^Error) -> boolean ---

    @(link_name = "g_uri_is_valid")
    uri_is_valid :: proc(uri_string: cstring, flags: UriFlags, error: ^^Error) -> boolean ---

    @(link_name = "g_uri_join")
    uri_join :: proc(flags: UriFlags, scheme: cstring, userinfo: cstring, host: cstring, port: int_, path: cstring, query: cstring, fragment: cstring) -> cstring ---

    @(link_name = "g_uri_join_with_user")
    uri_join_with_user :: proc(flags: UriFlags, scheme: cstring, user: cstring, password: cstring, auth_params: [^]char, host: cstring, port: int_, path: cstring, query: cstring, fragment: cstring) -> cstring ---

    @(link_name = "g_uri_parse")
    uri_parse :: proc(uri_string: cstring, flags: UriFlags, error: ^^Error) -> ^Uri ---

    @(link_name = "g_uri_parse_relative")
    uri_parse_relative :: proc(base_uri: ^Uri, uri_ref: cstring, flags: UriFlags, error: ^^Error) -> ^Uri ---

    @(link_name = "g_uri_resolve_relative")
    uri_resolve_relative :: proc(base_uri_string: cstring, uri_ref: cstring, flags: UriFlags, error: ^^Error) -> cstring ---

    @(link_name = "g_uri_build")
    uri_build :: proc(flags: UriFlags, scheme: cstring, userinfo: cstring, host: cstring, port: int_, path: cstring, query: cstring, fragment: cstring) -> ^Uri ---

    @(link_name = "g_uri_build_with_user")
    uri_build_with_user :: proc(flags: UriFlags, scheme: cstring, user: cstring, password: cstring, auth_params: [^]char, host: cstring, port: int_, path: cstring, query: cstring, fragment: cstring) -> ^Uri ---

    @(link_name = "g_uri_to_string")
    uri_to_string :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_to_string_partial")
    uri_to_string_partial :: proc(uri: ^Uri, flags: UriHideFlags) -> cstring ---

    @(link_name = "g_uri_get_scheme")
    uri_get_scheme :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_userinfo")
    uri_get_userinfo :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_user")
    uri_get_user :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_password")
    uri_get_password :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_auth_params")
    uri_get_auth_params :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_host")
    uri_get_host :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_port")
    uri_get_port :: proc(uri: ^Uri) -> int_ ---

    @(link_name = "g_uri_get_path")
    uri_get_path :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_query")
    uri_get_query :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_fragment")
    uri_get_fragment :: proc(uri: ^Uri) -> cstring ---

    @(link_name = "g_uri_get_flags")
    uri_get_flags :: proc(uri: ^Uri) -> UriFlags ---

    @(link_name = "g_uri_parse_params")
    uri_parse_params :: proc(params: [^]char, length: ssize, separators: [^]char, flags: UriParamsFlags, error: ^^Error) -> ^HashTable ---

    @(link_name = "g_uri_params_iter_init")
    uri_params_iter_init :: proc(iter: ^UriParamsIter, params: [^]char, length: ssize, separators: [^]char, flags: UriParamsFlags) ---

    @(link_name = "g_uri_params_iter_next")
    uri_params_iter_next :: proc(iter: ^UriParamsIter, attribute: ^cstring, value: ^cstring, error: ^^Error) -> boolean ---

    @(link_name = "g_uri_error_quark")
    uri_error_quark :: proc() -> Quark ---

    @(link_name = "g_uri_unescape_string")
    uri_unescape_string :: proc(escaped_string: cstring, illegal_characters: cstring) -> cstring ---

    @(link_name = "g_uri_unescape_segment")
    uri_unescape_segment :: proc(escaped_string: cstring, escaped_string_end: cstring, illegal_characters: cstring) -> cstring ---

    @(link_name = "g_uri_parse_scheme")
    uri_parse_scheme :: proc(uri: cstring) -> cstring ---

    @(link_name = "g_uri_peek_scheme")
    uri_peek_scheme :: proc(uri: cstring) -> cstring ---

    @(link_name = "g_uri_escape_string")
    uri_escape_string :: proc(unescaped: cstring, reserved_chars_allowed: cstring, allow_utf8: boolean) -> cstring ---

    @(link_name = "g_uri_unescape_bytes")
    uri_unescape_bytes :: proc(escaped_string: cstring, length: ssize, illegal_characters: cstring, error: ^^Error) -> ^Bytes ---

    @(link_name = "g_uri_escape_bytes")
    uri_escape_bytes :: proc(unescaped: ^uint8, length: size, reserved_chars_allowed: cstring) -> cstring ---

    @(link_name = "g_uuid_string_is_valid")
    uuid_string_is_valid :: proc(str: cstring) -> boolean ---

    @(link_name = "g_uuid_string_random")
    uuid_string_random :: proc() -> cstring ---

    @(link_name = "glib_major_version")
    glib_major_version: uint_

    @(link_name = "glib_minor_version")
    glib_minor_version: uint_

    @(link_name = "glib_micro_version")
    glib_micro_version: uint_

    @(link_name = "glib_interface_age")
    glib_interface_age: uint_

    @(link_name = "glib_binary_age")
    glib_binary_age: uint_

    @(link_name = "glib_check_version")
    check_version :: proc(required_major: uint_, required_minor: uint_, required_micro: uint_) -> cstring ---

    @(link_name = "g_mem_chunk_new")
    mem_chunk_new :: proc(name: cstring, atom_size: int_, area_size: size, type: int_) -> ^MemChunk ---

    @(link_name = "g_mem_chunk_destroy")
    mem_chunk_destroy :: proc(mem_chunk: ^MemChunk) ---

    @(link_name = "g_mem_chunk_alloc")
    mem_chunk_alloc :: proc(mem_chunk: ^MemChunk) -> pointer ---

    @(link_name = "g_mem_chunk_alloc0")
    mem_chunk_alloc0 :: proc(mem_chunk: ^MemChunk) -> pointer ---

    @(link_name = "g_mem_chunk_free")
    mem_chunk_free :: proc(mem_chunk: ^MemChunk, mem: pointer) ---

    @(link_name = "g_mem_chunk_clean")
    mem_chunk_clean :: proc(mem_chunk: ^MemChunk) ---

    @(link_name = "g_mem_chunk_reset")
    mem_chunk_reset :: proc(mem_chunk: ^MemChunk) ---

    @(link_name = "g_mem_chunk_print")
    mem_chunk_print :: proc(mem_chunk: ^MemChunk) ---

    @(link_name = "g_mem_chunk_info")
    mem_chunk_info :: proc() ---

    @(link_name = "g_blow_chunks")
    blow_chunks :: proc() ---

    @(link_name = "g_allocator_new")
    allocator_new :: proc(name: cstring, n_preallocs: uint_) -> ^Allocator ---

    @(link_name = "g_allocator_free")
    allocator_free :: proc(allocator: ^Allocator) ---

    @(link_name = "g_list_push_allocator")
    list_push_allocator :: proc(allocator: ^Allocator) ---

    @(link_name = "g_list_pop_allocator")
    list_pop_allocator :: proc() ---

    @(link_name = "g_slist_push_allocator")
    slist_push_allocator :: proc(allocator: ^Allocator) ---

    @(link_name = "g_slist_pop_allocator")
    slist_pop_allocator :: proc() ---

    @(link_name = "g_node_push_allocator")
    node_push_allocator :: proc(allocator: ^Allocator) ---

    @(link_name = "g_node_pop_allocator")
    node_pop_allocator :: proc() ---

    @(link_name = "g_cache_new")
    cache_new :: proc(value_new_func: CacheNewFunc, value_destroy_func: CacheDestroyFunc, key_dup_func: CacheDupFunc, key_destroy_func: CacheDestroyFunc, hash_key_func: HashFunc, hash_value_func: HashFunc, key_equal_func: EqualFunc) -> ^Cache ---

    @(link_name = "g_cache_destroy")
    cache_destroy :: proc(cache: ^Cache) ---

    @(link_name = "g_cache_insert")
    cache_insert :: proc(cache: ^Cache, key: pointer) -> pointer ---

    @(link_name = "g_cache_remove")
    cache_remove :: proc(cache: ^Cache, value: constpointer) ---

    @(link_name = "g_cache_key_foreach")
    cache_key_foreach :: proc(cache: ^Cache, func: HFunc, user_data: pointer) ---

    @(link_name = "g_cache_value_foreach")
    cache_value_foreach :: proc(cache: ^Cache, func: HFunc, user_data: pointer) ---

    @(link_name = "g_completion_new")
    completion_new :: proc(func: CompletionFunc) -> ^Completion ---

    @(link_name = "g_completion_add_items")
    completion_add_items :: proc(cmp: ^Completion, items: [^]List) ---

    @(link_name = "g_completion_remove_items")
    completion_remove_items :: proc(cmp: ^Completion, items: [^]List) ---

    @(link_name = "g_completion_clear_items")
    completion_clear_items :: proc(cmp: ^Completion) ---

    @(link_name = "g_completion_complete")
    completion_complete :: proc(cmp: ^Completion, prefix: cstring, new_prefix: ^cstring) -> ^List ---

    @(link_name = "g_completion_complete_utf8")
    completion_complete_utf8 :: proc(cmp: ^Completion, prefix: cstring, new_prefix: ^cstring) -> ^List ---

    @(link_name = "g_completion_set_compare")
    completion_set_compare :: proc(cmp: ^Completion, strncmp_func: CompletionStrncmpFunc) ---

    @(link_name = "g_completion_free")
    completion_free :: proc(cmp: ^Completion) ---

    @(link_name = "g_relation_new")
    relation_new :: proc(fields: int_) -> ^Relation ---

    @(link_name = "g_relation_destroy")
    relation_destroy :: proc(relation: ^Relation) ---

    @(link_name = "g_relation_index")
    relation_index :: proc(relation: ^Relation, field: int_, hash_func: HashFunc, key_equal_func: EqualFunc) ---

    @(link_name = "g_relation_insert")
    relation_insert :: proc(relation: ^Relation, #c_vararg var_args: ..any) ---

    @(link_name = "g_relation_delete")
    relation_delete :: proc(relation: ^Relation, key: constpointer, field: int_) -> int_ ---

    @(link_name = "g_relation_select")
    relation_select :: proc(relation: ^Relation, key: constpointer, field: int_) -> ^Tuples ---

    @(link_name = "g_relation_count")
    relation_count :: proc(relation: ^Relation, key: constpointer, field: int_) -> int_ ---

    @(link_name = "g_relation_exists")
    relation_exists :: proc(relation: ^Relation, #c_vararg var_args: ..any) -> boolean ---

    @(link_name = "g_relation_print")
    relation_print :: proc(relation: ^Relation) ---

    @(link_name = "g_tuples_destroy")
    tuples_destroy :: proc(tuples: [^]Tuples) ---

    @(link_name = "g_tuples_index")
    tuples_index :: proc(tuples: [^]Tuples, index_: int_, field: int_) -> pointer ---

    @(link_name = "g_thread_functions_for_glib_use")
    g_thread_functions_for_glib_use: ThreadFunctions

    @(link_name = "g_thread_use_default_impl")
    g_thread_use_default_impl: boolean

    @(link_name = "g_thread_gettime")
    g_thread_gettime: #type proc "c" () -> uint64

    @(link_name = "g_thread_create")
    thread_create :: proc(func: ThreadFunc, data: pointer, joinable: boolean, error: ^^Error) -> ^Thread ---

    @(link_name = "g_thread_create_full")
    thread_create_full :: proc(func: ThreadFunc, data: pointer, stack_size: ulong, joinable: boolean, bound: boolean, priority: ThreadPriority, error: ^^Error) -> ^Thread ---

    @(link_name = "g_thread_set_priority")
    thread_set_priority :: proc(thread: ^Thread, priority: ThreadPriority) ---

    @(link_name = "g_thread_foreach")
    thread_foreach :: proc(thread_func: Func, user_data: pointer) ---

    @(link_name = "g_static_mutex_init")
    static_mutex_init :: proc(mutex: ^StaticMutex) ---

    @(link_name = "g_static_mutex_free")
    static_mutex_free :: proc(mutex: ^StaticMutex) ---

    @(link_name = "g_static_mutex_get_mutex_impl")
    static_mutex_get_mutex_impl :: proc(mutex: ^StaticMutex) -> ^Mutex ---

    @(link_name = "g_static_rec_mutex_init")
    static_rec_mutex_init :: proc(mutex: ^StaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_lock")
    static_rec_mutex_lock :: proc(mutex: ^StaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_trylock")
    static_rec_mutex_trylock :: proc(mutex: ^StaticRecMutex) -> boolean ---

    @(link_name = "g_static_rec_mutex_unlock")
    static_rec_mutex_unlock :: proc(mutex: ^StaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_lock_full")
    static_rec_mutex_lock_full :: proc(mutex: ^StaticRecMutex, depth: uint_) ---

    @(link_name = "g_static_rec_mutex_unlock_full")
    static_rec_mutex_unlock_full :: proc(mutex: ^StaticRecMutex) -> uint_ ---

    @(link_name = "g_static_rec_mutex_free")
    static_rec_mutex_free :: proc(mutex: ^StaticRecMutex) ---

    @(link_name = "g_static_rw_lock_init")
    static_rw_lock_init :: proc(lock: ^StaticRWLock) ---

    @(link_name = "g_static_rw_lock_reader_lock")
    static_rw_lock_reader_lock :: proc(lock: ^StaticRWLock) ---

    @(link_name = "g_static_rw_lock_reader_trylock")
    static_rw_lock_reader_trylock :: proc(lock: ^StaticRWLock) -> boolean ---

    @(link_name = "g_static_rw_lock_reader_unlock")
    static_rw_lock_reader_unlock :: proc(lock: ^StaticRWLock) ---

    @(link_name = "g_static_rw_lock_writer_lock")
    static_rw_lock_writer_lock :: proc(lock: ^StaticRWLock) ---

    @(link_name = "g_static_rw_lock_writer_trylock")
    static_rw_lock_writer_trylock :: proc(lock: ^StaticRWLock) -> boolean ---

    @(link_name = "g_static_rw_lock_writer_unlock")
    static_rw_lock_writer_unlock :: proc(lock: ^StaticRWLock) ---

    @(link_name = "g_static_rw_lock_free")
    static_rw_lock_free :: proc(lock: ^StaticRWLock) ---

    @(link_name = "g_private_new")
    private_new :: proc(notify: DestroyNotify) -> ^Private ---

    @(link_name = "g_static_private_init")
    static_private_init :: proc(private_key: ^StaticPrivate) ---

    @(link_name = "g_static_private_get")
    static_private_get :: proc(private_key: ^StaticPrivate) -> pointer ---

    @(link_name = "g_static_private_set")
    static_private_set :: proc(private_key: ^StaticPrivate, data: pointer, notify: DestroyNotify) ---

    @(link_name = "g_static_private_free")
    static_private_free :: proc(private_key: ^StaticPrivate) ---

    @(link_name = "g_once_init_enter_impl")
    once_init_enter_impl :: proc(location: ^size) -> boolean ---

    @(link_name = "g_thread_init")
    thread_init :: proc(vtable: pointer) ---

    @(link_name = "g_thread_init_with_errorcheck_mutexes")
    thread_init_with_errorcheck_mutexes :: proc(vtable: pointer) ---

    @(link_name = "g_thread_get_initialized")
    thread_get_initialized :: proc() -> boolean ---

    @(link_name = "g_threads_got_initialized")
    g_threads_got_initialized: boolean

    @(link_name = "g_mutex_new")
    mutex_new :: proc() -> ^Mutex ---

    @(link_name = "g_mutex_free")
    mutex_free :: proc(mutex: ^Mutex) ---

    @(link_name = "g_cond_new")
    cond_new :: proc() -> ^Cond ---

    @(link_name = "g_cond_free")
    cond_free :: proc(cond: ^Cond) ---

    @(link_name = "g_cond_timed_wait")
    cond_timed_wait :: proc(cond: ^Cond, mutex: ^Mutex, abs_time: ^TimeVal) -> boolean ---

    @(link_name = "g_bit_nth_lsf_impl_wrapper")
    bit_nth_lsf_impl :: proc(mask: ulong, nth_bit: int_) -> int_ ---

    @(link_name = "g_bit_nth_msf_impl_wrapper")
    bit_nth_msf_impl :: proc(mask: ulong, nth_bit: int_) -> int_ ---

    @(link_name = "g_bit_storage_impl_wrapper")
    bit_storage_impl :: proc(number: ulong) -> uint_ ---

    @(link_name = "g_mutex_locker_new_wrapper")
    mutex_locker_new :: proc(mutex: ^Mutex) -> ^MutexLocker ---

    @(link_name = "g_mutex_locker_free_wrapper")
    mutex_locker_free :: proc(locker: ^MutexLocker) ---

    @(link_name = "g_rec_mutex_locker_new_wrapper")
    rec_mutex_locker_new :: proc(rec_mutex: ^RecMutex) -> ^RecMutexLocker ---

    @(link_name = "g_rec_mutex_locker_free_wrapper")
    rec_mutex_locker_free :: proc(locker: ^RecMutexLocker) ---

    @(link_name = "g_rw_lock_writer_locker_new_wrapper")
    rw_lock_writer_locker_new :: proc(rw_lock: ^RWLock) -> ^RWLockWriterLocker ---

    @(link_name = "g_rw_lock_writer_locker_free_wrapper")
    rw_lock_writer_locker_free :: proc(locker: ^RWLockWriterLocker) ---

    @(link_name = "g_rw_lock_reader_locker_new_wrapper")
    rw_lock_reader_locker_new :: proc(rw_lock: ^RWLock) -> ^RWLockReaderLocker ---

    @(link_name = "g_rw_lock_reader_locker_free_wrapper")
    rw_lock_reader_locker_free :: proc(locker: ^RWLockReaderLocker) ---

    @(link_name = "g_steal_pointer_wrapper")
    steal_pointer :: proc(pp: pointer) -> pointer ---

    @(link_name = "g_main_context_pusher_new_wrapper")
    main_context_pusher_new :: proc(main_context: ^MainContext) -> ^MainContextPusher ---

    @(link_name = "g_main_context_pusher_free_wrapper")
    main_context_pusher_free :: proc(pusher: ^MainContextPusher) ---

    @(link_name = "g_steal_handle_id_wrapper")
    steal_handle_id :: proc(handle_pointer: ^u32) -> u32 ---

    @(link_name = "g_steal_fd_wrapper")
    steal_fd :: proc(fd_ptr: ^i32) -> i32 ---

    @(link_name = "g_strdup_inline_wrapper")
    strdup_inline :: proc(str: cstring) -> cstring ---

    @(link_name = "g_set_str_wrapper")
    set_str :: proc(str_pointer: ^cstring, new_str: cstring) -> boolean ---

    @(link_name = "g_string_append_c_inline_wrapper")
    string_append_c_inline :: proc(gstring: ^String, c: char) -> ^String ---

    @(link_name = "g_string_append_len_inline_wrapper")
    string_append_len_inline :: proc(gstring: ^String, val: cstring, len: ssize) -> ^String ---

    @(link_name = "g_string_truncate_inline_wrapper")
    string_truncate_inline :: proc(gstring: ^String, len: size) -> ^String ---

    @(link_name = "g_autoptr_cleanup_generic_gfree_wrapper")
    autoptr_cleanup_generic_gfree :: proc(p: rawptr) ---

    @(link_name = "g_autoptr_cleanup_gstring_free_wrapper")
    autoptr_cleanup_gstring_free :: proc(string_p: ^String) ---

    @(link_name = "glib_autoptr_clear_GAsyncQueue_wrapper")
    autoptr_clear_GAsyncQueue :: proc(_ptr: ^AsyncQueue) ---

    @(link_name = "glib_autoptr_cleanup_GAsyncQueue_wrapper")
    autoptr_cleanup_GAsyncQueue :: proc(_ptr: ^^AsyncQueue) ---

    @(link_name = "glib_autoptr_destroy_GAsyncQueue_wrapper")
    autoptr_destroy_GAsyncQueue :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAsyncQueue_wrapper")
    listautoptr_cleanup_GAsyncQueue :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAsyncQueue_wrapper")
    slistautoptr_cleanup_GAsyncQueue :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAsyncQueue_wrapper")
    queueautoptr_cleanup_GAsyncQueue :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GBookmarkFile_wrapper")
    autoptr_clear_GBookmarkFile :: proc(_ptr: ^BookmarkFile) ---

    @(link_name = "glib_autoptr_cleanup_GBookmarkFile_wrapper")
    autoptr_cleanup_GBookmarkFile :: proc(_ptr: ^^BookmarkFile) ---

    @(link_name = "glib_autoptr_destroy_GBookmarkFile_wrapper")
    autoptr_destroy_GBookmarkFile :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GBookmarkFile_wrapper")
    listautoptr_cleanup_GBookmarkFile :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GBookmarkFile_wrapper")
    slistautoptr_cleanup_GBookmarkFile :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GBookmarkFile_wrapper")
    queueautoptr_cleanup_GBookmarkFile :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GBytes_wrapper")
    autoptr_clear_GBytes :: proc(_ptr: ^Bytes) ---

    @(link_name = "glib_autoptr_cleanup_GBytes_wrapper")
    autoptr_cleanup_GBytes :: proc(_ptr: ^^Bytes) ---

    @(link_name = "glib_autoptr_destroy_GBytes_wrapper")
    autoptr_destroy_GBytes :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GBytes_wrapper")
    listautoptr_cleanup_GBytes :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GBytes_wrapper")
    slistautoptr_cleanup_GBytes :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GBytes_wrapper")
    queueautoptr_cleanup_GBytes :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GChecksum_wrapper")
    autoptr_clear_GChecksum :: proc(_ptr: ^Checksum) ---

    @(link_name = "glib_autoptr_cleanup_GChecksum_wrapper")
    autoptr_cleanup_GChecksum :: proc(_ptr: ^^Checksum) ---

    @(link_name = "glib_autoptr_destroy_GChecksum_wrapper")
    autoptr_destroy_GChecksum :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GChecksum_wrapper")
    listautoptr_cleanup_GChecksum :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GChecksum_wrapper")
    slistautoptr_cleanup_GChecksum :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GChecksum_wrapper")
    queueautoptr_cleanup_GChecksum :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GDateTime_wrapper")
    autoptr_clear_GDateTime :: proc(_ptr: ^DateTime) ---

    @(link_name = "glib_autoptr_cleanup_GDateTime_wrapper")
    autoptr_cleanup_GDateTime :: proc(_ptr: ^^DateTime) ---

    @(link_name = "glib_autoptr_destroy_GDateTime_wrapper")
    autoptr_destroy_GDateTime :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDateTime_wrapper")
    listautoptr_cleanup_GDateTime :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDateTime_wrapper")
    slistautoptr_cleanup_GDateTime :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDateTime_wrapper")
    queueautoptr_cleanup_GDateTime :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GDate_wrapper")
    autoptr_clear_GDate :: proc(_ptr: ^Date) ---

    @(link_name = "glib_autoptr_cleanup_GDate_wrapper")
    autoptr_cleanup_GDate :: proc(_ptr: ^^Date) ---

    @(link_name = "glib_autoptr_destroy_GDate_wrapper")
    autoptr_destroy_GDate :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDate_wrapper")
    listautoptr_cleanup_GDate :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDate_wrapper")
    slistautoptr_cleanup_GDate :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDate_wrapper")
    queueautoptr_cleanup_GDate :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GDir_wrapper")
    autoptr_clear_GDir :: proc(_ptr: ^Dir) ---

    @(link_name = "glib_autoptr_cleanup_GDir_wrapper")
    autoptr_cleanup_GDir :: proc(_ptr: ^^Dir) ---

    @(link_name = "glib_autoptr_destroy_GDir_wrapper")
    autoptr_destroy_GDir :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDir_wrapper")
    listautoptr_cleanup_GDir :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDir_wrapper")
    slistautoptr_cleanup_GDir :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDir_wrapper")
    queueautoptr_cleanup_GDir :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GError_wrapper")
    autoptr_clear_GError :: proc(_ptr: ^Error) ---

    @(link_name = "glib_autoptr_cleanup_GError_wrapper")
    autoptr_cleanup_GError :: proc(_ptr: ^^Error) ---

    @(link_name = "glib_autoptr_destroy_GError_wrapper")
    autoptr_destroy_GError :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GError_wrapper")
    listautoptr_cleanup_GError :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GError_wrapper")
    slistautoptr_cleanup_GError :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GError_wrapper")
    queueautoptr_cleanup_GError :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GHashTable_wrapper")
    autoptr_clear_GHashTable :: proc(_ptr: ^HashTable) ---

    @(link_name = "glib_autoptr_cleanup_GHashTable_wrapper")
    autoptr_cleanup_GHashTable :: proc(_ptr: ^^HashTable) ---

    @(link_name = "glib_autoptr_destroy_GHashTable_wrapper")
    autoptr_destroy_GHashTable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GHashTable_wrapper")
    listautoptr_cleanup_GHashTable :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GHashTable_wrapper")
    slistautoptr_cleanup_GHashTable :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GHashTable_wrapper")
    queueautoptr_cleanup_GHashTable :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GHmac_wrapper")
    autoptr_clear_GHmac :: proc(_ptr: ^Hmac) ---

    @(link_name = "glib_autoptr_cleanup_GHmac_wrapper")
    autoptr_cleanup_GHmac :: proc(_ptr: ^^Hmac) ---

    @(link_name = "glib_autoptr_destroy_GHmac_wrapper")
    autoptr_destroy_GHmac :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GHmac_wrapper")
    listautoptr_cleanup_GHmac :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GHmac_wrapper")
    slistautoptr_cleanup_GHmac :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GHmac_wrapper")
    queueautoptr_cleanup_GHmac :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GIOChannel_wrapper")
    autoptr_clear_GIOChannel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_autoptr_cleanup_GIOChannel_wrapper")
    autoptr_cleanup_GIOChannel :: proc(_ptr: ^rawptr) ---

    @(link_name = "glib_autoptr_destroy_GIOChannel_wrapper")
    autoptr_destroy_GIOChannel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIOChannel_wrapper")
    listautoptr_cleanup_GIOChannel :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIOChannel_wrapper")
    slistautoptr_cleanup_GIOChannel :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIOChannel_wrapper")
    queueautoptr_cleanup_GIOChannel :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GKeyFile_wrapper")
    autoptr_clear_GKeyFile :: proc(_ptr: ^KeyFile) ---

    @(link_name = "glib_autoptr_cleanup_GKeyFile_wrapper")
    autoptr_cleanup_GKeyFile :: proc(_ptr: ^^KeyFile) ---

    @(link_name = "glib_autoptr_destroy_GKeyFile_wrapper")
    autoptr_destroy_GKeyFile :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GKeyFile_wrapper")
    listautoptr_cleanup_GKeyFile :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GKeyFile_wrapper")
    slistautoptr_cleanup_GKeyFile :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GKeyFile_wrapper")
    queueautoptr_cleanup_GKeyFile :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GList_wrapper")
    autoptr_clear_GList :: proc(_ptr: ^List) ---

    @(link_name = "glib_autoptr_cleanup_GList_wrapper")
    autoptr_cleanup_GList :: proc(_ptr: ^^List) ---

    @(link_name = "glib_autoptr_destroy_GList_wrapper")
    autoptr_destroy_GList :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GList_wrapper")
    listautoptr_cleanup_GList :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GList_wrapper")
    slistautoptr_cleanup_GList :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GList_wrapper")
    queueautoptr_cleanup_GList :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GArray_wrapper")
    autoptr_clear_GArray :: proc(_ptr: ^Array) ---

    @(link_name = "glib_autoptr_cleanup_GArray_wrapper")
    autoptr_cleanup_GArray :: proc(_ptr: ^^Array) ---

    @(link_name = "glib_autoptr_destroy_GArray_wrapper")
    autoptr_destroy_GArray :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GArray_wrapper")
    listautoptr_cleanup_GArray :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GArray_wrapper")
    slistautoptr_cleanup_GArray :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GArray_wrapper")
    queueautoptr_cleanup_GArray :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GPtrArray_wrapper")
    autoptr_clear_GPtrArray :: proc(_ptr: ^PtrArray) ---

    @(link_name = "glib_autoptr_cleanup_GPtrArray_wrapper")
    autoptr_cleanup_GPtrArray :: proc(_ptr: ^^PtrArray) ---

    @(link_name = "glib_autoptr_destroy_GPtrArray_wrapper")
    autoptr_destroy_GPtrArray :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPtrArray_wrapper")
    listautoptr_cleanup_GPtrArray :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPtrArray_wrapper")
    slistautoptr_cleanup_GPtrArray :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPtrArray_wrapper")
    queueautoptr_cleanup_GPtrArray :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GByteArray_wrapper")
    autoptr_clear_GByteArray :: proc(_ptr: ^ByteArray) ---

    @(link_name = "glib_autoptr_cleanup_GByteArray_wrapper")
    autoptr_cleanup_GByteArray :: proc(_ptr: ^^ByteArray) ---

    @(link_name = "glib_autoptr_destroy_GByteArray_wrapper")
    autoptr_destroy_GByteArray :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GByteArray_wrapper")
    listautoptr_cleanup_GByteArray :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GByteArray_wrapper")
    slistautoptr_cleanup_GByteArray :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GByteArray_wrapper")
    queueautoptr_cleanup_GByteArray :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GMainContext_wrapper")
    autoptr_clear_GMainContext :: proc(_ptr: ^MainContext) ---

    @(link_name = "glib_autoptr_cleanup_GMainContext_wrapper")
    autoptr_cleanup_GMainContext :: proc(_ptr: ^^MainContext) ---

    @(link_name = "glib_autoptr_destroy_GMainContext_wrapper")
    autoptr_destroy_GMainContext :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMainContext_wrapper")
    listautoptr_cleanup_GMainContext :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMainContext_wrapper")
    slistautoptr_cleanup_GMainContext :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMainContext_wrapper")
    queueautoptr_cleanup_GMainContext :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GMainContextPusher_wrapper")
    autoptr_clear_GMainContextPusher :: proc(_ptr: ^MainContextPusher) ---

    @(link_name = "glib_autoptr_cleanup_GMainContextPusher_wrapper")
    autoptr_cleanup_GMainContextPusher :: proc(_ptr: ^^MainContextPusher) ---

    @(link_name = "glib_autoptr_destroy_GMainContextPusher_wrapper")
    autoptr_destroy_GMainContextPusher :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMainContextPusher_wrapper")
    listautoptr_cleanup_GMainContextPusher :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMainContextPusher_wrapper")
    slistautoptr_cleanup_GMainContextPusher :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMainContextPusher_wrapper")
    queueautoptr_cleanup_GMainContextPusher :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GMainLoop_wrapper")
    autoptr_clear_GMainLoop :: proc(_ptr: ^MainLoop) ---

    @(link_name = "glib_autoptr_cleanup_GMainLoop_wrapper")
    autoptr_cleanup_GMainLoop :: proc(_ptr: ^^MainLoop) ---

    @(link_name = "glib_autoptr_destroy_GMainLoop_wrapper")
    autoptr_destroy_GMainLoop :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMainLoop_wrapper")
    listautoptr_cleanup_GMainLoop :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMainLoop_wrapper")
    slistautoptr_cleanup_GMainLoop :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMainLoop_wrapper")
    queueautoptr_cleanup_GMainLoop :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GSource_wrapper")
    autoptr_clear_GSource :: proc(_ptr: ^Source) ---

    @(link_name = "glib_autoptr_cleanup_GSource_wrapper")
    autoptr_cleanup_GSource :: proc(_ptr: ^^Source) ---

    @(link_name = "glib_autoptr_destroy_GSource_wrapper")
    autoptr_destroy_GSource :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSource_wrapper")
    listautoptr_cleanup_GSource :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSource_wrapper")
    slistautoptr_cleanup_GSource :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSource_wrapper")
    queueautoptr_cleanup_GSource :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GMappedFile_wrapper")
    autoptr_clear_GMappedFile :: proc(_ptr: ^MappedFile) ---

    @(link_name = "glib_autoptr_cleanup_GMappedFile_wrapper")
    autoptr_cleanup_GMappedFile :: proc(_ptr: ^^MappedFile) ---

    @(link_name = "glib_autoptr_destroy_GMappedFile_wrapper")
    autoptr_destroy_GMappedFile :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMappedFile_wrapper")
    listautoptr_cleanup_GMappedFile :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMappedFile_wrapper")
    slistautoptr_cleanup_GMappedFile :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMappedFile_wrapper")
    queueautoptr_cleanup_GMappedFile :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GMarkupParseContext_wrapper")
    autoptr_clear_GMarkupParseContext :: proc(_ptr: ^MarkupParseContext) ---

    @(link_name = "glib_autoptr_cleanup_GMarkupParseContext_wrapper")
    autoptr_cleanup_GMarkupParseContext :: proc(_ptr: ^^MarkupParseContext) ---

    @(link_name = "glib_autoptr_destroy_GMarkupParseContext_wrapper")
    autoptr_destroy_GMarkupParseContext :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMarkupParseContext_wrapper")
    listautoptr_cleanup_GMarkupParseContext :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMarkupParseContext_wrapper")
    slistautoptr_cleanup_GMarkupParseContext :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMarkupParseContext_wrapper")
    queueautoptr_cleanup_GMarkupParseContext :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GNode_wrapper")
    autoptr_clear_GNode :: proc(_ptr: ^Node) ---

    @(link_name = "glib_autoptr_cleanup_GNode_wrapper")
    autoptr_cleanup_GNode :: proc(_ptr: ^^Node) ---

    @(link_name = "glib_autoptr_destroy_GNode_wrapper")
    autoptr_destroy_GNode :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNode_wrapper")
    listautoptr_cleanup_GNode :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNode_wrapper")
    slistautoptr_cleanup_GNode :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNode_wrapper")
    queueautoptr_cleanup_GNode :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GOptionContext_wrapper")
    autoptr_clear_GOptionContext :: proc(_ptr: ^OptionContext) ---

    @(link_name = "glib_autoptr_cleanup_GOptionContext_wrapper")
    autoptr_cleanup_GOptionContext :: proc(_ptr: ^^OptionContext) ---

    @(link_name = "glib_autoptr_destroy_GOptionContext_wrapper")
    autoptr_destroy_GOptionContext :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GOptionContext_wrapper")
    listautoptr_cleanup_GOptionContext :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GOptionContext_wrapper")
    slistautoptr_cleanup_GOptionContext :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GOptionContext_wrapper")
    queueautoptr_cleanup_GOptionContext :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GOptionGroup_wrapper")
    autoptr_clear_GOptionGroup :: proc(_ptr: ^OptionGroup) ---

    @(link_name = "glib_autoptr_cleanup_GOptionGroup_wrapper")
    autoptr_cleanup_GOptionGroup :: proc(_ptr: ^^OptionGroup) ---

    @(link_name = "glib_autoptr_destroy_GOptionGroup_wrapper")
    autoptr_destroy_GOptionGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GOptionGroup_wrapper")
    listautoptr_cleanup_GOptionGroup :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GOptionGroup_wrapper")
    slistautoptr_cleanup_GOptionGroup :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GOptionGroup_wrapper")
    queueautoptr_cleanup_GOptionGroup :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GPatternSpec_wrapper")
    autoptr_clear_GPatternSpec :: proc(_ptr: ^PatternSpec) ---

    @(link_name = "glib_autoptr_cleanup_GPatternSpec_wrapper")
    autoptr_cleanup_GPatternSpec :: proc(_ptr: ^^PatternSpec) ---

    @(link_name = "glib_autoptr_destroy_GPatternSpec_wrapper")
    autoptr_destroy_GPatternSpec :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPatternSpec_wrapper")
    listautoptr_cleanup_GPatternSpec :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPatternSpec_wrapper")
    slistautoptr_cleanup_GPatternSpec :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPatternSpec_wrapper")
    queueautoptr_cleanup_GPatternSpec :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GQueue_wrapper")
    autoptr_clear_GQueue :: proc(_ptr: ^Queue) ---

    @(link_name = "glib_autoptr_cleanup_GQueue_wrapper")
    autoptr_cleanup_GQueue :: proc(_ptr: ^^Queue) ---

    @(link_name = "glib_autoptr_destroy_GQueue_wrapper")
    autoptr_destroy_GQueue :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GQueue_wrapper")
    listautoptr_cleanup_GQueue :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GQueue_wrapper")
    slistautoptr_cleanup_GQueue :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GQueue_wrapper")
    queueautoptr_cleanup_GQueue :: proc(_q: ^^Queue) ---

    @(link_name = "glib_auto_cleanup_GQueue_wrapper")
    auto_cleanup_GQueue :: proc(_ptr: ^Queue) ---

    @(link_name = "glib_autoptr_clear_GRand_wrapper")
    autoptr_clear_GRand :: proc(_ptr: ^Rand) ---

    @(link_name = "glib_autoptr_cleanup_GRand_wrapper")
    autoptr_cleanup_GRand :: proc(_ptr: ^^Rand) ---

    @(link_name = "glib_autoptr_destroy_GRand_wrapper")
    autoptr_destroy_GRand :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GRand_wrapper")
    listautoptr_cleanup_GRand :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GRand_wrapper")
    slistautoptr_cleanup_GRand :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GRand_wrapper")
    queueautoptr_cleanup_GRand :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GRegex_wrapper")
    autoptr_clear_GRegex :: proc(_ptr: ^Regex) ---

    @(link_name = "glib_autoptr_cleanup_GRegex_wrapper")
    autoptr_cleanup_GRegex :: proc(_ptr: ^^Regex) ---

    @(link_name = "glib_autoptr_destroy_GRegex_wrapper")
    autoptr_destroy_GRegex :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GRegex_wrapper")
    listautoptr_cleanup_GRegex :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GRegex_wrapper")
    slistautoptr_cleanup_GRegex :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GRegex_wrapper")
    queueautoptr_cleanup_GRegex :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GMatchInfo_wrapper")
    autoptr_clear_GMatchInfo :: proc(_ptr: ^MatchInfo) ---

    @(link_name = "glib_autoptr_cleanup_GMatchInfo_wrapper")
    autoptr_cleanup_GMatchInfo :: proc(_ptr: ^^MatchInfo) ---

    @(link_name = "glib_autoptr_destroy_GMatchInfo_wrapper")
    autoptr_destroy_GMatchInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMatchInfo_wrapper")
    listautoptr_cleanup_GMatchInfo :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMatchInfo_wrapper")
    slistautoptr_cleanup_GMatchInfo :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMatchInfo_wrapper")
    queueautoptr_cleanup_GMatchInfo :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GScanner_wrapper")
    autoptr_clear_GScanner :: proc(_ptr: ^Scanner) ---

    @(link_name = "glib_autoptr_cleanup_GScanner_wrapper")
    autoptr_cleanup_GScanner :: proc(_ptr: ^^Scanner) ---

    @(link_name = "glib_autoptr_destroy_GScanner_wrapper")
    autoptr_destroy_GScanner :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GScanner_wrapper")
    listautoptr_cleanup_GScanner :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GScanner_wrapper")
    slistautoptr_cleanup_GScanner :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GScanner_wrapper")
    queueautoptr_cleanup_GScanner :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GSequence_wrapper")
    autoptr_clear_GSequence :: proc(_ptr: ^Sequence) ---

    @(link_name = "glib_autoptr_cleanup_GSequence_wrapper")
    autoptr_cleanup_GSequence :: proc(_ptr: ^^Sequence) ---

    @(link_name = "glib_autoptr_destroy_GSequence_wrapper")
    autoptr_destroy_GSequence :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSequence_wrapper")
    listautoptr_cleanup_GSequence :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSequence_wrapper")
    slistautoptr_cleanup_GSequence :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSequence_wrapper")
    queueautoptr_cleanup_GSequence :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GSList_wrapper")
    autoptr_clear_GSList :: proc(_ptr: ^SList) ---

    @(link_name = "glib_autoptr_cleanup_GSList_wrapper")
    autoptr_cleanup_GSList :: proc(_ptr: ^^SList) ---

    @(link_name = "glib_autoptr_destroy_GSList_wrapper")
    autoptr_destroy_GSList :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSList_wrapper")
    listautoptr_cleanup_GSList :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSList_wrapper")
    slistautoptr_cleanup_GSList :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSList_wrapper")
    queueautoptr_cleanup_GSList :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GString_wrapper")
    autoptr_clear_GString :: proc(_ptr: ^String) ---

    @(link_name = "glib_autoptr_cleanup_GString_wrapper")
    autoptr_cleanup_GString :: proc(_ptr: ^^String) ---

    @(link_name = "glib_autoptr_destroy_GString_wrapper")
    autoptr_destroy_GString :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GString_wrapper")
    listautoptr_cleanup_GString :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GString_wrapper")
    slistautoptr_cleanup_GString :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GString_wrapper")
    queueautoptr_cleanup_GString :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GStringChunk_wrapper")
    autoptr_clear_GStringChunk :: proc(_ptr: ^StringChunk) ---

    @(link_name = "glib_autoptr_cleanup_GStringChunk_wrapper")
    autoptr_cleanup_GStringChunk :: proc(_ptr: ^^StringChunk) ---

    @(link_name = "glib_autoptr_destroy_GStringChunk_wrapper")
    autoptr_destroy_GStringChunk :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GStringChunk_wrapper")
    listautoptr_cleanup_GStringChunk :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GStringChunk_wrapper")
    slistautoptr_cleanup_GStringChunk :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GStringChunk_wrapper")
    queueautoptr_cleanup_GStringChunk :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GStrvBuilder_wrapper")
    autoptr_clear_GStrvBuilder :: proc(_ptr: ^StrvBuilder) ---

    @(link_name = "glib_autoptr_cleanup_GStrvBuilder_wrapper")
    autoptr_cleanup_GStrvBuilder :: proc(_ptr: ^^StrvBuilder) ---

    @(link_name = "glib_autoptr_destroy_GStrvBuilder_wrapper")
    autoptr_destroy_GStrvBuilder :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GStrvBuilder_wrapper")
    listautoptr_cleanup_GStrvBuilder :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GStrvBuilder_wrapper")
    slistautoptr_cleanup_GStrvBuilder :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GStrvBuilder_wrapper")
    queueautoptr_cleanup_GStrvBuilder :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GThread_wrapper")
    autoptr_clear_GThread :: proc(_ptr: ^Thread) ---

    @(link_name = "glib_autoptr_cleanup_GThread_wrapper")
    autoptr_cleanup_GThread :: proc(_ptr: ^^Thread) ---

    @(link_name = "glib_autoptr_destroy_GThread_wrapper")
    autoptr_destroy_GThread :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GThread_wrapper")
    listautoptr_cleanup_GThread :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GThread_wrapper")
    slistautoptr_cleanup_GThread :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GThread_wrapper")
    queueautoptr_cleanup_GThread :: proc(_q: ^^Queue) ---

    @(link_name = "glib_auto_cleanup_GMutex_wrapper")
    auto_cleanup_GMutex :: proc(_ptr: ^Mutex) ---

    @(link_name = "glib_autoptr_clear_GMutexLocker_wrapper")
    autoptr_clear_GMutexLocker :: proc(_ptr: ^MutexLocker) ---

    @(link_name = "glib_autoptr_cleanup_GMutexLocker_wrapper")
    autoptr_cleanup_GMutexLocker :: proc(_ptr: ^^MutexLocker) ---

    @(link_name = "glib_autoptr_destroy_GMutexLocker_wrapper")
    autoptr_destroy_GMutexLocker :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMutexLocker_wrapper")
    listautoptr_cleanup_GMutexLocker :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMutexLocker_wrapper")
    slistautoptr_cleanup_GMutexLocker :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMutexLocker_wrapper")
    queueautoptr_cleanup_GMutexLocker :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GRecMutexLocker_wrapper")
    autoptr_clear_GRecMutexLocker :: proc(_ptr: ^RecMutexLocker) ---

    @(link_name = "glib_autoptr_cleanup_GRecMutexLocker_wrapper")
    autoptr_cleanup_GRecMutexLocker :: proc(_ptr: ^^RecMutexLocker) ---

    @(link_name = "glib_autoptr_destroy_GRecMutexLocker_wrapper")
    autoptr_destroy_GRecMutexLocker :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GRecMutexLocker_wrapper")
    listautoptr_cleanup_GRecMutexLocker :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GRecMutexLocker_wrapper")
    slistautoptr_cleanup_GRecMutexLocker :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GRecMutexLocker_wrapper")
    queueautoptr_cleanup_GRecMutexLocker :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GRWLockWriterLocker_wrapper")
    autoptr_clear_GRWLockWriterLocker :: proc(_ptr: ^RWLockWriterLocker) ---

    @(link_name = "glib_autoptr_cleanup_GRWLockWriterLocker_wrapper")
    autoptr_cleanup_GRWLockWriterLocker :: proc(_ptr: ^^RWLockWriterLocker) ---

    @(link_name = "glib_autoptr_destroy_GRWLockWriterLocker_wrapper")
    autoptr_destroy_GRWLockWriterLocker :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GRWLockWriterLocker_wrapper")
    listautoptr_cleanup_GRWLockWriterLocker :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GRWLockWriterLocker_wrapper")
    slistautoptr_cleanup_GRWLockWriterLocker :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GRWLockWriterLocker_wrapper")
    queueautoptr_cleanup_GRWLockWriterLocker :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GRWLockReaderLocker_wrapper")
    autoptr_clear_GRWLockReaderLocker :: proc(_ptr: ^RWLockReaderLocker) ---

    @(link_name = "glib_autoptr_cleanup_GRWLockReaderLocker_wrapper")
    autoptr_cleanup_GRWLockReaderLocker :: proc(_ptr: ^^RWLockReaderLocker) ---

    @(link_name = "glib_autoptr_destroy_GRWLockReaderLocker_wrapper")
    autoptr_destroy_GRWLockReaderLocker :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GRWLockReaderLocker_wrapper")
    listautoptr_cleanup_GRWLockReaderLocker :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GRWLockReaderLocker_wrapper")
    slistautoptr_cleanup_GRWLockReaderLocker :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GRWLockReaderLocker_wrapper")
    queueautoptr_cleanup_GRWLockReaderLocker :: proc(_q: ^^Queue) ---

    @(link_name = "glib_auto_cleanup_GCond_wrapper")
    auto_cleanup_GCond :: proc(_ptr: ^Cond) ---

    @(link_name = "glib_autoptr_clear_GTimer_wrapper")
    autoptr_clear_GTimer :: proc(_ptr: ^Timer) ---

    @(link_name = "glib_autoptr_cleanup_GTimer_wrapper")
    autoptr_cleanup_GTimer :: proc(_ptr: ^^Timer) ---

    @(link_name = "glib_autoptr_destroy_GTimer_wrapper")
    autoptr_destroy_GTimer :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTimer_wrapper")
    listautoptr_cleanup_GTimer :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTimer_wrapper")
    slistautoptr_cleanup_GTimer :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTimer_wrapper")
    queueautoptr_cleanup_GTimer :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GTimeZone_wrapper")
    autoptr_clear_GTimeZone :: proc(_ptr: ^TimeZone) ---

    @(link_name = "glib_autoptr_cleanup_GTimeZone_wrapper")
    autoptr_cleanup_GTimeZone :: proc(_ptr: ^^TimeZone) ---

    @(link_name = "glib_autoptr_destroy_GTimeZone_wrapper")
    autoptr_destroy_GTimeZone :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTimeZone_wrapper")
    listautoptr_cleanup_GTimeZone :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTimeZone_wrapper")
    slistautoptr_cleanup_GTimeZone :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTimeZone_wrapper")
    queueautoptr_cleanup_GTimeZone :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GTree_wrapper")
    autoptr_clear_GTree :: proc(_ptr: ^Tree) ---

    @(link_name = "glib_autoptr_cleanup_GTree_wrapper")
    autoptr_cleanup_GTree :: proc(_ptr: ^^Tree) ---

    @(link_name = "glib_autoptr_destroy_GTree_wrapper")
    autoptr_destroy_GTree :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTree_wrapper")
    listautoptr_cleanup_GTree :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTree_wrapper")
    slistautoptr_cleanup_GTree :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTree_wrapper")
    queueautoptr_cleanup_GTree :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GVariant_wrapper")
    autoptr_clear_GVariant :: proc(_ptr: ^Variant) ---

    @(link_name = "glib_autoptr_cleanup_GVariant_wrapper")
    autoptr_cleanup_GVariant :: proc(_ptr: ^^Variant) ---

    @(link_name = "glib_autoptr_destroy_GVariant_wrapper")
    autoptr_destroy_GVariant :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVariant_wrapper")
    listautoptr_cleanup_GVariant :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVariant_wrapper")
    slistautoptr_cleanup_GVariant :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVariant_wrapper")
    queueautoptr_cleanup_GVariant :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GVariantBuilder_wrapper")
    autoptr_clear_GVariantBuilder :: proc(_ptr: ^VariantBuilder) ---

    @(link_name = "glib_autoptr_cleanup_GVariantBuilder_wrapper")
    autoptr_cleanup_GVariantBuilder :: proc(_ptr: ^^VariantBuilder) ---

    @(link_name = "glib_autoptr_destroy_GVariantBuilder_wrapper")
    autoptr_destroy_GVariantBuilder :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVariantBuilder_wrapper")
    listautoptr_cleanup_GVariantBuilder :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVariantBuilder_wrapper")
    slistautoptr_cleanup_GVariantBuilder :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVariantBuilder_wrapper")
    queueautoptr_cleanup_GVariantBuilder :: proc(_q: ^^Queue) ---

    @(link_name = "glib_auto_cleanup_GVariantBuilder_wrapper")
    auto_cleanup_GVariantBuilder :: proc(_ptr: ^VariantBuilder) ---

    @(link_name = "glib_autoptr_clear_GVariantIter_wrapper")
    autoptr_clear_GVariantIter :: proc(_ptr: ^VariantIter) ---

    @(link_name = "glib_autoptr_cleanup_GVariantIter_wrapper")
    autoptr_cleanup_GVariantIter :: proc(_ptr: ^^VariantIter) ---

    @(link_name = "glib_autoptr_destroy_GVariantIter_wrapper")
    autoptr_destroy_GVariantIter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVariantIter_wrapper")
    listautoptr_cleanup_GVariantIter :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVariantIter_wrapper")
    slistautoptr_cleanup_GVariantIter :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVariantIter_wrapper")
    queueautoptr_cleanup_GVariantIter :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GVariantDict_wrapper")
    autoptr_clear_GVariantDict :: proc(_ptr: ^VariantDict) ---

    @(link_name = "glib_autoptr_cleanup_GVariantDict_wrapper")
    autoptr_cleanup_GVariantDict :: proc(_ptr: ^^VariantDict) ---

    @(link_name = "glib_autoptr_destroy_GVariantDict_wrapper")
    autoptr_destroy_GVariantDict :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVariantDict_wrapper")
    listautoptr_cleanup_GVariantDict :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVariantDict_wrapper")
    slistautoptr_cleanup_GVariantDict :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVariantDict_wrapper")
    queueautoptr_cleanup_GVariantDict :: proc(_q: ^^Queue) ---

    @(link_name = "glib_auto_cleanup_GVariantDict_wrapper")
    auto_cleanup_GVariantDict :: proc(_ptr: ^VariantDict) ---

    @(link_name = "glib_autoptr_clear_GVariantType_wrapper")
    autoptr_clear_GVariantType :: proc(_ptr: ^VariantType) ---

    @(link_name = "glib_autoptr_cleanup_GVariantType_wrapper")
    autoptr_cleanup_GVariantType :: proc(_ptr: ^^VariantType) ---

    @(link_name = "glib_autoptr_destroy_GVariantType_wrapper")
    autoptr_destroy_GVariantType :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVariantType_wrapper")
    listautoptr_cleanup_GVariantType :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVariantType_wrapper")
    slistautoptr_cleanup_GVariantType :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVariantType_wrapper")
    queueautoptr_cleanup_GVariantType :: proc(_q: ^^Queue) ---

    @(link_name = "glib_auto_cleanup_GStrv_wrapper")
    auto_cleanup_GStrv :: proc(_ptr: ^Strv) ---

    @(link_name = "glib_autoptr_clear_GRefString_wrapper")
    autoptr_clear_GRefString :: proc(_ptr: ^RefString) ---

    @(link_name = "glib_autoptr_cleanup_GRefString_wrapper")
    autoptr_cleanup_GRefString :: proc(_ptr: ^^RefString) ---

    @(link_name = "glib_autoptr_destroy_GRefString_wrapper")
    autoptr_destroy_GRefString :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GRefString_wrapper")
    listautoptr_cleanup_GRefString :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GRefString_wrapper")
    slistautoptr_cleanup_GRefString :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GRefString_wrapper")
    queueautoptr_cleanup_GRefString :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GUri_wrapper")
    autoptr_clear_GUri :: proc(_ptr: ^Uri) ---

    @(link_name = "glib_autoptr_cleanup_GUri_wrapper")
    autoptr_cleanup_GUri :: proc(_ptr: ^^Uri) ---

    @(link_name = "glib_autoptr_destroy_GUri_wrapper")
    autoptr_destroy_GUri :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUri_wrapper")
    listautoptr_cleanup_GUri :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUri_wrapper")
    slistautoptr_cleanup_GUri :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUri_wrapper")
    queueautoptr_cleanup_GUri :: proc(_q: ^^Queue) ---

    @(link_name = "glib_autoptr_clear_GPathBuf_wrapper")
    autoptr_clear_GPathBuf :: proc(_ptr: ^PathBuf) ---

    @(link_name = "glib_autoptr_cleanup_GPathBuf_wrapper")
    autoptr_cleanup_GPathBuf :: proc(_ptr: ^^PathBuf) ---

    @(link_name = "glib_autoptr_destroy_GPathBuf_wrapper")
    autoptr_destroy_GPathBuf :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPathBuf_wrapper")
    listautoptr_cleanup_GPathBuf :: proc(_l: ^^List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPathBuf_wrapper")
    slistautoptr_cleanup_GPathBuf :: proc(_l: ^^SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPathBuf_wrapper")
    queueautoptr_cleanup_GPathBuf :: proc(_q: ^^Queue) ---

    @(link_name = "glib_auto_cleanup_GPathBuf_wrapper")
    auto_cleanup_GPathBuf :: proc(_ptr: ^PathBuf) ---

}

date_weekday :: date_get_weekday

date_month :: date_get_month

date_year :: date_get_year

date_day :: date_get_day

date_julian :: date_get_julian

date_day_of_year :: date_get_day_of_year

date_monday_week_of_year :: date_get_monday_week_of_year

date_sunday_week_of_year :: date_get_sunday_week_of_year

date_days_in_month :: date_get_days_in_month

date_monday_weeks_in_year :: date_get_monday_weeks_in_year

date_sunday_weeks_in_year :: date_get_sunday_weeks_in_year

dirname :: path_get_dirname

list_free1 :: list_free_1

slist_free1 :: slist_free_1

string_sprintf :: string_printf

string_sprintfa :: string_append_printf

static_mutex_get_mutex :: static_mutex_get_mutex_impl

when (ODIN_ARCH == .amd64) {

char :: i8

}

when (ODIN_ARCH == .arm64) {

char :: u8

}

