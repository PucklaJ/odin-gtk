#+build linux amd64, linux arm64
package gio

import "core:sys/linux"
import glib ".."
import gobj "../gobject"

AppInfoCreateFlags :: enum u32 {NONE = 0, NEEDS_TERMINAL = 1, SUPPORTS_URIS = 2, SUPPORTS_STARTUP_NOTIFICATION = 4 }
ConverterFlags :: enum u32 {NO_FLAGS = 0, INPUT_AT_END = 1, FLUSH = 2 }
ConverterResult :: enum u32 {ERROR = 0, CONVERTED = 1, FINISHED = 2, FLUSHED = 3 }
DataStreamByteOrder :: enum u32 {BIG_ENDIAN = 0, LITTLE_ENDIAN = 1, HOST_ENDIAN = 2 }
DataStreamNewlineType :: enum u32 {LF = 0, CR = 1, CR_LF = 2, ANY = 3 }
FileAttributeType :: enum u32 {INVALID = 0, STRING = 1, BYTE_STRING = 2, BOOLEAN = 3, UINT32 = 4, INT32 = 5, UINT64 = 6, INT64 = 7, OBJECT = 8, STRINGV = 9 }
FileAttributeInfoFlags :: enum u32 {NONE = 0, COPY_WITH_FILE = 1, COPY_WHEN_MOVED = 2 }
FileAttributeStatus :: enum u32 {UNSET = 0, SET = 1, ERROR_SETTING = 2 }
FileQueryInfoFlags :: enum u32 {NONE = 0, NOFOLLOW_SYMLINKS = 1 }
FileCreateFlags :: enum u32 {NONE = 0, PRIVATE = 1, REPLACE_DESTINATION = 2 }
FileMeasureFlags :: enum u32 {NONE = 0, REPORT_ANY_ERROR = 2, APPARENT_SIZE = 4, NO_XDEV = 8 }
MountMountFlags :: enum u32 {NONE = 0 }
MountUnmountFlags :: enum u32 {NONE = 0, FORCE = 1 }
DriveStartFlags :: enum u32 {NONE = 0 }
DriveStartStopType :: enum u32 {STOP_TYPE_UNKNOWN = 0, STOP_TYPE_SHUTDOWN = 1, STOP_TYPE_NETWORK = 2, STOP_TYPE_MULTIDISK = 3, STOP_TYPE_PASSWORD = 4 }
FileCopyFlags :: enum u32 {NONE = 0, OVERWRITE = 1, BACKUP = 2, NOFOLLOW_SYMLINKS = 4, ALL_METADATA = 8, NO_FALLBACK_FOR_MOVE = 16, TARGET_DEFAULT_PERMS = 32, TARGET_DEFAULT_MODIFIED_TIME = 64 }
FileMonitorFlags :: enum u32 {NONE = 0, WATCH_MOUNTS = 1, SEND_MOVED = 2, WATCH_HARD_LINKS = 4, WATCH_MOVES = 8 }
FileType :: enum u32 {UNKNOWN = 0, REGULAR = 1, DIRECTORY = 2, SYMBOLIC_LINK = 3, SPECIAL = 4, SHORTCUT = 5, MOUNTABLE = 6 }
FilesystemPreviewType :: enum u32 {IF_ALWAYS = 0, IF_LOCAL = 1, NEVER = 2 }
FileMonitorEvent :: enum u32 {EVENT_CHANGED = 0, EVENT_CHANGES_DONE_HINT = 1, EVENT_DELETED = 2, EVENT_CREATED = 3, EVENT_ATTRIBUTE_CHANGED = 4, EVENT_PRE_UNMOUNT = 5, EVENT_UNMOUNTED = 6, EVENT_MOVED = 7, EVENT_RENAMED = 8, EVENT_MOVED_IN = 9, EVENT_MOVED_OUT = 10 }
IOErrorEnum :: enum u32 {FAILED = 0, NOT_FOUND = 1, EXISTS = 2, IS_DIRECTORY = 3, NOT_DIRECTORY = 4, NOT_EMPTY = 5, NOT_REGULAR_FILE = 6, NOT_SYMBOLIC_LINK = 7, NOT_MOUNTABLE_FILE = 8, FILENAME_TOO_LONG = 9, INVALID_FILENAME = 10, TOO_MANY_LINKS = 11, NO_SPACE = 12, INVALID_ARGUMENT = 13, PERMISSION_DENIED = 14, NOT_SUPPORTED = 15, NOT_MOUNTED = 16, ALREADY_MOUNTED = 17, CLOSED = 18, CANCELLED = 19, PENDING = 20, READ_ONLY = 21, CANT_CREATE_BACKUP = 22, WRONG_ETAG = 23, TIMED_OUT = 24, WOULD_RECURSE = 25, BUSY = 26, WOULD_BLOCK = 27, HOST_NOT_FOUND = 28, WOULD_MERGE = 29, FAILED_HANDLED = 30, TOO_MANY_OPEN_FILES = 31, NOT_INITIALIZED = 32, ADDRESS_IN_USE = 33, PARTIAL_INPUT = 34, INVALID_DATA = 35, DBUS_ERROR = 36, HOST_UNREACHABLE = 37, NETWORK_UNREACHABLE = 38, CONNECTION_REFUSED = 39, PROXY_FAILED = 40, PROXY_AUTH_FAILED = 41, PROXY_NEED_AUTH = 42, PROXY_NOT_ALLOWED = 43, BROKEN_PIPE = 44, CONNECTION_CLOSED = 44, NOT_CONNECTED = 45, MESSAGE_TOO_LARGE = 46, NO_SUCH_DEVICE = 47, DESTINATION_UNSET = 48 }
AskPasswordFlags :: enum u32 {NEED_PASSWORD = 1, NEED_USERNAME = 2, NEED_DOMAIN = 4, SAVING_SUPPORTED = 8, ANONYMOUS_SUPPORTED = 16, TCRYPT = 32 }
PasswordSave :: enum u32 {NEVER = 0, FOR_SESSION = 1, PERMANENTLY = 2 }
MountOperationResult :: enum u32 {MOUNT_OPERATION_HANDLED = 0, MOUNT_OPERATION_ABORTED = 1, MOUNT_OPERATION_UNHANDLED = 2 }
OutputStreamSpliceFlags :: enum u32 {NONE = 0, CLOSE_SOURCE = 1, CLOSE_TARGET = 2 }
IOStreamSpliceFlags :: enum u32 {NONE = 0, CLOSE_STREAM1 = 1, CLOSE_STREAM2 = 2, WAIT_FOR_BOTH = 4 }
EmblemOrigin :: enum u32 {UNKNOWN = 0, DEVICE = 1, LIVEMETADATA = 2, TAG = 3 }
ResolverError :: enum u32 {NOT_FOUND = 0, TEMPORARY_FAILURE = 1, INTERNAL = 2 }
ResolverRecordType :: enum u32 {RESOLVER_RECORD_SRV = 1, RESOLVER_RECORD_MX = 2, RESOLVER_RECORD_TXT = 3, RESOLVER_RECORD_SOA = 4, RESOLVER_RECORD_NS = 5 }
ResourceError :: enum u32 {NOT_FOUND = 0, INTERNAL = 1 }
ResourceFlags :: enum u32 {NONE = 0, COMPRESSED = 1 }
ResourceLookupFlags :: enum u32 {NONE = 0 }
SocketFamily :: enum u32 {INVALID = 0, UNIX = 1, IPV4 = 2, IPV6 = 10 }
SocketType :: enum u32 {INVALID = 0, STREAM = 1, DATAGRAM = 2, SEQPACKET = 3 }
SocketMsgFlags :: enum u32 {NONE = 0, OOB = 1, PEEK = 2, DONTROUTE = 4 }
ZlibCompressorFormat :: enum u32 {ZLIB = 0, GZIP = 1, RAW = 2 }
UnixSocketAddressType :: enum u32 {UNIX_SOCKET_ADDRESS_INVALID = 0, UNIX_SOCKET_ADDRESS_ANONYMOUS = 1, UNIX_SOCKET_ADDRESS_PATH = 2, UNIX_SOCKET_ADDRESS_ABSTRACT = 3, UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED = 4 }
BusNameOwnerFlags :: enum u32 {NONE = 0, ALLOW_REPLACEMENT = 1, REPLACE = 2, DO_NOT_QUEUE = 4 }
BusNameWatcherFlags :: enum u32 {NONE = 0, AUTO_START = 1 }
DBusProxyFlags :: enum u32 {NONE = 0, DO_NOT_LOAD_PROPERTIES = 1, DO_NOT_CONNECT_SIGNALS = 2, DO_NOT_AUTO_START = 4, GET_INVALIDATED_PROPERTIES = 8, DO_NOT_AUTO_START_AT_CONSTRUCTION = 16, NO_MATCH_RULE = 32 }
DBusError :: enum u32 {DBUS_ERROR_FAILED = 0, DBUS_ERROR_NO_MEMORY = 1, DBUS_ERROR_SERVICE_UNKNOWN = 2, DBUS_ERROR_NAME_HAS_NO_OWNER = 3, DBUS_ERROR_NO_REPLY = 4, DBUS_ERROR_IO_ERROR = 5, DBUS_ERROR_BAD_ADDRESS = 6, DBUS_ERROR_NOT_SUPPORTED = 7, DBUS_ERROR_LIMITS_EXCEEDED = 8, DBUS_ERROR_ACCESS_DENIED = 9, DBUS_ERROR_AUTH_FAILED = 10, DBUS_ERROR_NO_SERVER = 11, DBUS_ERROR_TIMEOUT = 12, DBUS_ERROR_NO_NETWORK = 13, DBUS_ERROR_ADDRESS_IN_USE = 14, DBUS_ERROR_DISCONNECTED = 15, DBUS_ERROR_INVALID_ARGS = 16, DBUS_ERROR_FILE_NOT_FOUND = 17, DBUS_ERROR_FILE_EXISTS = 18, DBUS_ERROR_UNKNOWN_METHOD = 19, DBUS_ERROR_TIMED_OUT = 20, DBUS_ERROR_MATCH_RULE_NOT_FOUND = 21, DBUS_ERROR_MATCH_RULE_INVALID = 22, DBUS_ERROR_SPAWN_EXEC_FAILED = 23, DBUS_ERROR_SPAWN_FORK_FAILED = 24, DBUS_ERROR_SPAWN_CHILD_EXITED = 25, DBUS_ERROR_SPAWN_CHILD_SIGNALED = 26, DBUS_ERROR_SPAWN_FAILED = 27, DBUS_ERROR_SPAWN_SETUP_FAILED = 28, DBUS_ERROR_SPAWN_CONFIG_INVALID = 29, DBUS_ERROR_SPAWN_SERVICE_INVALID = 30, DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND = 31, DBUS_ERROR_SPAWN_PERMISSIONS_INVALID = 32, DBUS_ERROR_SPAWN_FILE_INVALID = 33, DBUS_ERROR_SPAWN_NO_MEMORY = 34, DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN = 35, DBUS_ERROR_INVALID_SIGNATURE = 36, DBUS_ERROR_INVALID_FILE_CONTENT = 37, DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN = 38, DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN = 39, DBUS_ERROR_OBJECT_PATH_IN_USE = 40, DBUS_ERROR_UNKNOWN_OBJECT = 41, DBUS_ERROR_UNKNOWN_INTERFACE = 42, DBUS_ERROR_UNKNOWN_PROPERTY = 43, DBUS_ERROR_PROPERTY_READ_ONLY = 44 }
DBusConnectionFlags :: enum u32 {NONE = 0, AUTHENTICATION_CLIENT = 1, AUTHENTICATION_SERVER = 2, AUTHENTICATION_ALLOW_ANONYMOUS = 4, MESSAGE_BUS_CONNECTION = 8, DELAY_MESSAGE_PROCESSING = 16, AUTHENTICATION_REQUIRE_SAME_USER = 32, CROSS_NAMESPACE = 64 }
DBusCapabilityFlags :: enum u32 {NONE = 0, UNIX_FD_PASSING = 1 }
DBusCallFlags :: enum u32 {NONE = 0, NO_AUTO_START = 1, ALLOW_INTERACTIVE_AUTHORIZATION = 2 }
DBusMessageType :: enum u32 {DBUS_MESSAGE_TYPE_INVALID = 0, DBUS_MESSAGE_TYPE_METHOD_CALL = 1, DBUS_MESSAGE_TYPE_METHOD_RETURN = 2, DBUS_MESSAGE_TYPE_ERROR = 3, DBUS_MESSAGE_TYPE_SIGNAL = 4 }
DBusMessageFlags :: enum u32 {NONE = 0, NO_REPLY_EXPECTED = 1, NO_AUTO_START = 2, ALLOW_INTERACTIVE_AUTHORIZATION = 4 }
DBusMessageHeaderField :: enum u32 {DBUS_MESSAGE_HEADER_FIELD_INVALID = 0, DBUS_MESSAGE_HEADER_FIELD_PATH = 1, DBUS_MESSAGE_HEADER_FIELD_INTERFACE = 2, DBUS_MESSAGE_HEADER_FIELD_MEMBER = 3, DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME = 4, DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL = 5, DBUS_MESSAGE_HEADER_FIELD_DESTINATION = 6, DBUS_MESSAGE_HEADER_FIELD_SENDER = 7, DBUS_MESSAGE_HEADER_FIELD_SIGNATURE = 8, DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS = 9 }
DBusPropertyInfoFlags :: enum u32 {NONE = 0, READABLE = 1, WRITABLE = 2 }
DBusSubtreeFlags :: enum u32 {NONE = 0, DISPATCH_TO_UNENUMERATED_NODES = 1 }
DBusServerFlags :: enum u32 {NONE = 0, RUN_IN_THREAD = 1, AUTHENTICATION_ALLOW_ANONYMOUS = 2, AUTHENTICATION_REQUIRE_SAME_USER = 4 }
DBusSignalFlags :: enum u32 {NONE = 0, NO_MATCH_RULE = 1, MATCH_ARG0_NAMESPACE = 2, MATCH_ARG0_PATH = 4 }
DBusSendMessageFlags :: enum u32 {NONE = 0, PRESERVE_SERIAL = 1 }
CredentialsType :: enum u32 {INVALID = 0, LINUX_UCRED = 1, FREEBSD_CMSGCRED = 2, OPENBSD_SOCKPEERCRED = 3, SOLARIS_UCRED = 4, NETBSD_UNPCBID = 5, APPLE_XUCRED = 6, WIN32_PID = 7 }
DBusMessageByteOrder :: enum u32 {DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN = 66, DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN = 108 }
ApplicationFlags :: enum u32 {NONE = 0, APPLICATION_DEFAULT_FLAGS = 0, APPLICATION_IS_SERVICE = 1, APPLICATION_IS_LAUNCHER = 2, APPLICATION_HANDLES_OPEN = 4, APPLICATION_HANDLES_COMMAND_LINE = 8, APPLICATION_SEND_ENVIRONMENT = 16, APPLICATION_NON_UNIQUE = 32, APPLICATION_CAN_OVERRIDE_APP_ID = 64, APPLICATION_ALLOW_REPLACEMENT = 128, APPLICATION_REPLACE = 256 }
TlsError :: enum u32 {UNAVAILABLE = 0, MISC = 1, BAD_CERTIFICATE = 2, NOT_TLS = 3, HANDSHAKE = 4, CERTIFICATE_REQUIRED = 5, EOF = 6, INAPPROPRIATE_FALLBACK = 7, BAD_CERTIFICATE_PASSWORD = 8 }
TlsCertificateFlags :: enum u32 {NO_FLAGS = 0, UNKNOWN_CA = 1, BAD_IDENTITY = 2, NOT_ACTIVATED = 4, EXPIRED = 8, REVOKED = 16, INSECURE = 32, GENERIC_ERROR = 64, VALIDATE_ALL = 127 }
TlsAuthenticationMode :: enum u32 {TLS_AUTHENTICATION_NONE = 0, TLS_AUTHENTICATION_REQUESTED = 1, TLS_AUTHENTICATION_REQUIRED = 2 }
TlsChannelBindingType :: enum u32 {TLS_CHANNEL_BINDING_TLS_UNIQUE = 0, TLS_CHANNEL_BINDING_TLS_SERVER_END_POINT = 1, TLS_CHANNEL_BINDING_TLS_EXPORTER = 2 }
TlsChannelBindingError :: enum u32 {NOT_IMPLEMENTED = 0, INVALID_STATE = 1, NOT_AVAILABLE = 2, NOT_SUPPORTED = 3, GENERAL_ERROR = 4 }
TlsRehandshakeMode :: enum u32 {TLS_REHANDSHAKE_NEVER = 0, TLS_REHANDSHAKE_SAFELY = 1, TLS_REHANDSHAKE_UNSAFELY = 2 }
_GTlsPasswordFlags :: enum u32 {NONE = 0, RETRY = 2, MANY_TRIES = 4, FINAL_TRY = 8, PKCS11_USER = 16, PKCS11_SECURITY_OFFICER = 32, PKCS11_CONTEXT_SPECIFIC = 64 }
TlsInteractionResult :: enum u32 {TLS_INTERACTION_UNHANDLED = 0, TLS_INTERACTION_HANDLED = 1, TLS_INTERACTION_FAILED = 2 }
DBusInterfaceSkeletonFlags :: enum u32 {NONE = 0, HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1 }
DBusObjectManagerClientFlags :: enum u32 {NONE = 0, DO_NOT_AUTO_START = 1 }
TlsDatabaseVerifyFlags :: enum u32 {NONE = 0 }
TlsDatabaseLookupFlags :: enum u32 {NONE = 0, KEYPAIR = 1 }
TlsCertificateRequestFlags :: enum u32 {REQUEST_NONE = 0 }
TlsProtocolVersion :: enum u32 {UNKNOWN = 0, SSL_3_0 = 1, TLS_1_0 = 2, TLS_1_1 = 3, TLS_1_2 = 4, TLS_1_3 = 5, DTLS_1_0 = 201, DTLS_1_2 = 202 }
IOModuleScopeFlags :: enum u32 {NONE = 0, BLOCK_DUPLICATES = 1 }
SocketClientEvent :: enum u32 {SOCKET_CLIENT_RESOLVING = 0, SOCKET_CLIENT_RESOLVED = 1, SOCKET_CLIENT_CONNECTING = 2, SOCKET_CLIENT_CONNECTED = 3, SOCKET_CLIENT_PROXY_NEGOTIATING = 4, SOCKET_CLIENT_PROXY_NEGOTIATED = 5, SOCKET_CLIENT_TLS_HANDSHAKING = 6, SOCKET_CLIENT_TLS_HANDSHAKED = 7, SOCKET_CLIENT_COMPLETE = 8 }
SocketListenerEvent :: enum u32 {SOCKET_LISTENER_BINDING = 0, SOCKET_LISTENER_BOUND = 1, SOCKET_LISTENER_LISTENING = 2, SOCKET_LISTENER_LISTENED = 3 }
TestDBusFlags :: enum u32 {NONE = 0 }
SubprocessFlags :: enum u32 {NONE = 0, STDIN_PIPE = 1, STDIN_INHERIT = 2, STDOUT_PIPE = 4, STDOUT_SILENCE = 8, STDERR_PIPE = 16, STDERR_SILENCE = 32, STDERR_MERGE = 64, INHERIT_FDS = 128, SEARCH_PATH_FROM_ENVP = 256 }
NotificationPriority :: enum u32 {NORMAL = 0, LOW = 1, HIGH = 2, URGENT = 3 }
NetworkConnectivity :: enum u32 {LOCAL = 1, LIMITED = 2, PORTAL = 3, FULL = 4 }
MemoryMonitorWarningLevel :: enum u32 {LOW = 50, MEDIUM = 100, CRITICAL = 255 }
query_exists_func_ptr_anon_345 :: #type proc "c" (file: ^File, cancellable: ^Cancellable) -> glib.boolean
_GFileIface :: struct {
    g_iface: gobj.TypeInterface,
    dup: dup_func_ptr_anon_243,
    hash: hash_func_ptr_anon_244,
    equal: equal_func_ptr_anon_245,
    is_native: is_native_func_ptr_anon_246,
    has_uri_scheme: has_uri_scheme_func_ptr_anon_247,
    get_uri_scheme: et_uri_scheme_func_ptr_anon_248,
    get_basename: et_basename_func_ptr_anon_249,
    get_path: et_path_func_ptr_anon_250,
    get_uri: et_uri_func_ptr_anon_251,
    get_parse_name: et_parse_name_func_ptr_anon_252,
    get_parent: et_parent_func_ptr_anon_253,
    prefix_matches: prefix_matches_func_ptr_anon_254,
    get_relative_path: et_relative_path_func_ptr_anon_255,
    resolve_relative_path: resolve_relative_path_func_ptr_anon_256,
    get_child_for_display_name: et_child_for_display_name_func_ptr_anon_257,
    enumerate_children: enumerate_children_func_ptr_anon_258,
    enumerate_children_async: enumerate_children_async_func_ptr_anon_259,
    enumerate_children_finish: enumerate_children_finish_func_ptr_anon_260,
    query_info: query_info_func_ptr_anon_261,
    query_info_async: query_info_async_func_ptr_anon_262,
    query_info_finish: query_info_finish_func_ptr_anon_263,
    query_filesystem_info: query_filesystem_info_func_ptr_anon_264,
    query_filesystem_info_async: query_filesystem_info_async_func_ptr_anon_265,
    query_filesystem_info_finish: query_filesystem_info_finish_func_ptr_anon_266,
    find_enclosing_mount: find_enclosing_mount_func_ptr_anon_267,
    find_enclosing_mount_async: find_enclosing_mount_async_func_ptr_anon_268,
    find_enclosing_mount_finish: find_enclosing_mount_finish_func_ptr_anon_269,
    set_display_name: set_display_name_func_ptr_anon_270,
    set_display_name_async: set_display_name_async_func_ptr_anon_271,
    set_display_name_finish: set_display_name_finish_func_ptr_anon_272,
    query_settable_attributes: query_settable_attributes_func_ptr_anon_273,
    _query_settable_attributes_async: _query_settable_attributes_async_func_ptr_anon_274,
    _query_settable_attributes_finish: _query_settable_attributes_finish_func_ptr_anon_275,
    query_writable_namespaces: query_writable_namespaces_func_ptr_anon_276,
    _query_writable_namespaces_async: _query_writable_namespaces_async_func_ptr_anon_277,
    _query_writable_namespaces_finish: _query_writable_namespaces_finish_func_ptr_anon_278,
    set_attribute: set_attribute_func_ptr_anon_279,
    set_attributes_from_info: set_attributes_from_info_func_ptr_anon_280,
    set_attributes_async: set_attributes_async_func_ptr_anon_281,
    set_attributes_finish: set_attributes_finish_func_ptr_anon_282,
    read_fn: read_fn_func_ptr_anon_283,
    read_async: read_async_func_ptr_anon_284,
    read_finish: read_finish_func_ptr_anon_285,
    append_to: append_to_func_ptr_anon_286,
    append_to_async: append_to_async_func_ptr_anon_287,
    append_to_finish: append_to_finish_func_ptr_anon_288,
    create: create_func_ptr_anon_289,
    create_async: create_async_func_ptr_anon_290,
    create_finish: create_finish_func_ptr_anon_291,
    replace: replace_func_ptr_anon_292,
    replace_async: replace_async_func_ptr_anon_293,
    replace_finish: replace_finish_func_ptr_anon_294,
    delete_file: delete_file_func_ptr_anon_295,
    delete_file_async: delete_file_async_func_ptr_anon_296,
    delete_file_finish: delete_file_finish_func_ptr_anon_297,
    trash: trash_func_ptr_anon_298,
    trash_async: trash_async_func_ptr_anon_299,
    trash_finish: trash_finish_func_ptr_anon_300,
    make_directory: make_directory_func_ptr_anon_301,
    make_directory_async: make_directory_async_func_ptr_anon_302,
    make_directory_finish: make_directory_finish_func_ptr_anon_303,
    make_symbolic_link: make_symbolic_link_func_ptr_anon_304,
    make_symbolic_link_async: make_symbolic_link_async_func_ptr_anon_305,
    make_symbolic_link_finish: make_symbolic_link_finish_func_ptr_anon_306,
    copy: copy_func_ptr_anon_307,
    copy_async: copy_async_func_ptr_anon_308,
    copy_finish: copy_finish_func_ptr_anon_309,
    move: move_func_ptr_anon_310,
    move_async: move_async_func_ptr_anon_311,
    move_finish: move_finish_func_ptr_anon_312,
    mount_mountable: mount_mountable_func_ptr_anon_313,
    mount_mountable_finish: mount_mountable_finish_func_ptr_anon_314,
    unmount_mountable: unmount_mountable_func_ptr_anon_315,
    unmount_mountable_finish: unmount_mountable_finish_func_ptr_anon_316,
    eject_mountable: eject_mountable_func_ptr_anon_317,
    eject_mountable_finish: eject_mountable_finish_func_ptr_anon_318,
    mount_enclosing_volume: mount_enclosing_volume_func_ptr_anon_319,
    mount_enclosing_volume_finish: mount_enclosing_volume_finish_func_ptr_anon_320,
    monitor_dir: monitor_dir_func_ptr_anon_321,
    monitor_file: monitor_file_func_ptr_anon_322,
    open_readwrite: open_readwrite_func_ptr_anon_323,
    open_readwrite_async: open_readwrite_async_func_ptr_anon_324,
    open_readwrite_finish: open_readwrite_finish_func_ptr_anon_325,
    create_readwrite: create_readwrite_func_ptr_anon_326,
    create_readwrite_async: create_readwrite_async_func_ptr_anon_327,
    create_readwrite_finish: create_readwrite_finish_func_ptr_anon_328,
    replace_readwrite: replace_readwrite_func_ptr_anon_329,
    replace_readwrite_async: replace_readwrite_async_func_ptr_anon_330,
    replace_readwrite_finish: replace_readwrite_finish_func_ptr_anon_331,
    start_mountable: start_mountable_func_ptr_anon_332,
    start_mountable_finish: start_mountable_finish_func_ptr_anon_333,
    stop_mountable: stop_mountable_func_ptr_anon_334,
    stop_mountable_finish: stop_mountable_finish_func_ptr_anon_335,
    supports_thread_contexts: glib.boolean,
    unmount_mountable_with_operation: unmount_mountable_with_operation_func_ptr_anon_336,
    unmount_mountable_with_operation_finish: unmount_mountable_with_operation_finish_func_ptr_anon_337,
    eject_mountable_with_operation: eject_mountable_with_operation_func_ptr_anon_338,
    eject_mountable_with_operation_finish: eject_mountable_with_operation_finish_func_ptr_anon_339,
    poll_mountable: poll_mountable_func_ptr_anon_340,
    poll_mountable_finish: poll_mountable_finish_func_ptr_anon_341,
    measure_disk_usage: measure_disk_usage_func_ptr_anon_342,
    measure_disk_usage_async: measure_disk_usage_async_func_ptr_anon_343,
    measure_disk_usage_finish: measure_disk_usage_finish_func_ptr_anon_344,
    query_exists: query_exists_func_ptr_anon_345,
}
next_file_func_ptr_anon_346 :: #type proc "c" (enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
close_fn_func_ptr_anon_347 :: #type proc "c" (enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
next_files_async_func_ptr_anon_348 :: #type proc "c" (enumerator: ^FileEnumerator, num_files: i32, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
next_files_finish_func_ptr_anon_349 :: #type proc "c" (enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
close_async_func_ptr_anon_350 :: #type proc "c" (enumerator: ^FileEnumerator, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
close_finish_func_ptr_anon_351 :: #type proc "c" (enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_g_reserved1_func_ptr_anon_352 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_353 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_354 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_355 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_356 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_357 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_358 :: #type proc "c" ()
_GFileEnumeratorClass :: struct {
    parent_class: gobj.ObjectClass,
    next_file: next_file_func_ptr_anon_346,
    close_fn: close_fn_func_ptr_anon_347,
    next_files_async: next_files_async_func_ptr_anon_348,
    next_files_finish: next_files_finish_func_ptr_anon_349,
    close_async: close_async_func_ptr_anon_350,
    close_finish: close_finish_func_ptr_anon_351,
    _g_reserved1: _g_reserved1_func_ptr_anon_352,
    _g_reserved2: _g_reserved2_func_ptr_anon_353,
    _g_reserved3: _g_reserved3_func_ptr_anon_354,
    _g_reserved4: _g_reserved4_func_ptr_anon_355,
    _g_reserved5: _g_reserved5_func_ptr_anon_356,
    _g_reserved6: _g_reserved6_func_ptr_anon_357,
    _g_reserved7: _g_reserved7_func_ptr_anon_358,
}
tell_func_ptr_anon_359 :: #type proc "c" (stream: ^FileInputStream) -> glib.offset
can_seek_func_ptr_anon_360 :: #type proc "c" (stream: ^FileInputStream) -> glib.boolean
seek_func_ptr_anon_361 :: #type proc "c" (stream: ^FileInputStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
query_info_func_ptr_anon_362 :: #type proc "c" (stream: ^FileInputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
query_info_async_func_ptr_anon_363 :: #type proc "c" (stream: ^FileInputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
query_info_finish_func_ptr_anon_364 :: #type proc "c" (stream: ^FileInputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
_g_reserved1_func_ptr_anon_365 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_366 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_367 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_368 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_369 :: #type proc "c" ()
_GFileInputStreamClass :: struct {
    parent_class: InputStreamClass,
    tell: tell_func_ptr_anon_359,
    can_seek: can_seek_func_ptr_anon_360,
    seek: seek_func_ptr_anon_361,
    query_info: query_info_func_ptr_anon_362,
    query_info_async: query_info_async_func_ptr_anon_363,
    query_info_finish: query_info_finish_func_ptr_anon_364,
    _g_reserved1: _g_reserved1_func_ptr_anon_365,
    _g_reserved2: _g_reserved2_func_ptr_anon_366,
    _g_reserved3: _g_reserved3_func_ptr_anon_367,
    _g_reserved4: _g_reserved4_func_ptr_anon_368,
    _g_reserved5: _g_reserved5_func_ptr_anon_369,
}
et_input_stream_func_ptr_anon_370 :: #type proc "c" (stream: ^IOStream) -> ^InputStream
et_output_stream_func_ptr_anon_371 :: #type proc "c" (stream: ^IOStream) -> ^OutputStream
close_fn_func_ptr_anon_372 :: #type proc "c" (stream: ^IOStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
close_async_func_ptr_anon_373 :: #type proc "c" (stream: ^IOStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
close_finish_func_ptr_anon_374 :: #type proc "c" (stream: ^IOStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_g_reserved1_func_ptr_anon_375 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_376 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_377 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_378 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_379 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_380 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_381 :: #type proc "c" ()
_g_reserved8_func_ptr_anon_382 :: #type proc "c" ()
_g_reserved9_func_ptr_anon_383 :: #type proc "c" ()
_g_reserved10_func_ptr_anon_384 :: #type proc "c" ()
_GIOStreamClass :: struct {
    parent_class: gobj.ObjectClass,
    get_input_stream: et_input_stream_func_ptr_anon_370,
    get_output_stream: et_output_stream_func_ptr_anon_371,
    close_fn: close_fn_func_ptr_anon_372,
    close_async: close_async_func_ptr_anon_373,
    close_finish: close_finish_func_ptr_anon_374,
    _g_reserved1: _g_reserved1_func_ptr_anon_375,
    _g_reserved2: _g_reserved2_func_ptr_anon_376,
    _g_reserved3: _g_reserved3_func_ptr_anon_377,
    _g_reserved4: _g_reserved4_func_ptr_anon_378,
    _g_reserved5: _g_reserved5_func_ptr_anon_379,
    _g_reserved6: _g_reserved6_func_ptr_anon_380,
    _g_reserved7: _g_reserved7_func_ptr_anon_381,
    _g_reserved8: _g_reserved8_func_ptr_anon_382,
    _g_reserved9: _g_reserved9_func_ptr_anon_383,
    _g_reserved10: _g_reserved10_func_ptr_anon_384,
}
tell_func_ptr_anon_385 :: #type proc "c" (stream: ^FileIOStream) -> glib.offset
can_seek_func_ptr_anon_386 :: #type proc "c" (stream: ^FileIOStream) -> glib.boolean
seek_func_ptr_anon_387 :: #type proc "c" (stream: ^FileIOStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
can_truncate_func_ptr_anon_388 :: #type proc "c" (stream: ^FileIOStream) -> glib.boolean
truncate_fn_func_ptr_anon_389 :: #type proc "c" (stream: ^FileIOStream, size_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
query_info_func_ptr_anon_390 :: #type proc "c" (stream: ^FileIOStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
query_info_async_func_ptr_anon_391 :: #type proc "c" (stream: ^FileIOStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
query_info_finish_func_ptr_anon_392 :: #type proc "c" (stream: ^FileIOStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
et_etag_func_ptr_anon_393 :: #type proc "c" (stream: ^FileIOStream) -> cstring
_g_reserved1_func_ptr_anon_394 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_395 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_396 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_397 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_398 :: #type proc "c" ()
_GFileIOStreamClass :: struct {
    parent_class: IOStreamClass,
    tell: tell_func_ptr_anon_385,
    can_seek: can_seek_func_ptr_anon_386,
    seek: seek_func_ptr_anon_387,
    can_truncate: can_truncate_func_ptr_anon_388,
    truncate_fn: truncate_fn_func_ptr_anon_389,
    query_info: query_info_func_ptr_anon_390,
    query_info_async: query_info_async_func_ptr_anon_391,
    query_info_finish: query_info_finish_func_ptr_anon_392,
    get_etag: et_etag_func_ptr_anon_393,
    _g_reserved1: _g_reserved1_func_ptr_anon_394,
    _g_reserved2: _g_reserved2_func_ptr_anon_395,
    _g_reserved3: _g_reserved3_func_ptr_anon_396,
    _g_reserved4: _g_reserved4_func_ptr_anon_397,
    _g_reserved5: _g_reserved5_func_ptr_anon_398,
}
changed_func_ptr_anon_399 :: #type proc "c" (monitor: ^FileMonitor, file: ^File, other_file: ^File, event_type: FileMonitorEvent)
cancel_func_ptr_anon_400 :: #type proc "c" (monitor: ^FileMonitor) -> glib.boolean
_g_reserved1_func_ptr_anon_401 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_402 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_403 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_404 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_405 :: #type proc "c" ()
_GFileMonitorClass :: struct {
    parent_class: gobj.ObjectClass,
    changed: changed_func_ptr_anon_399,
    cancel: cancel_func_ptr_anon_400,
    _g_reserved1: _g_reserved1_func_ptr_anon_401,
    _g_reserved2: _g_reserved2_func_ptr_anon_402,
    _g_reserved3: _g_reserved3_func_ptr_anon_403,
    _g_reserved4: _g_reserved4_func_ptr_anon_404,
    _g_reserved5: _g_reserved5_func_ptr_anon_405,
}
ot_completion_data_func_ptr_anon_406 :: #type proc "c" (filename_completer: ^FilenameCompleter)
_g_reserved1_func_ptr_anon_407 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_408 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_409 :: #type proc "c" ()
_GFilenameCompleterClass :: struct {
    parent_class: gobj.ObjectClass,
    got_completion_data: ot_completion_data_func_ptr_anon_406,
    _g_reserved1: _g_reserved1_func_ptr_anon_407,
    _g_reserved2: _g_reserved2_func_ptr_anon_408,
    _g_reserved3: _g_reserved3_func_ptr_anon_409,
}
tell_func_ptr_anon_410 :: #type proc "c" (stream: ^FileOutputStream) -> glib.offset
can_seek_func_ptr_anon_411 :: #type proc "c" (stream: ^FileOutputStream) -> glib.boolean
seek_func_ptr_anon_412 :: #type proc "c" (stream: ^FileOutputStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
can_truncate_func_ptr_anon_413 :: #type proc "c" (stream: ^FileOutputStream) -> glib.boolean
truncate_fn_func_ptr_anon_414 :: #type proc "c" (stream: ^FileOutputStream, size_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
query_info_func_ptr_anon_415 :: #type proc "c" (stream: ^FileOutputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
query_info_async_func_ptr_anon_416 :: #type proc "c" (stream: ^FileOutputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
query_info_finish_func_ptr_anon_417 :: #type proc "c" (stream: ^FileOutputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
et_etag_func_ptr_anon_418 :: #type proc "c" (stream: ^FileOutputStream) -> cstring
_g_reserved1_func_ptr_anon_419 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_420 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_421 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_422 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_423 :: #type proc "c" ()
_GFileOutputStreamClass :: struct {
    parent_class: OutputStreamClass,
    tell: tell_func_ptr_anon_410,
    can_seek: can_seek_func_ptr_anon_411,
    seek: seek_func_ptr_anon_412,
    can_truncate: can_truncate_func_ptr_anon_413,
    truncate_fn: truncate_fn_func_ptr_anon_414,
    query_info: query_info_func_ptr_anon_415,
    query_info_async: query_info_async_func_ptr_anon_416,
    query_info_finish: query_info_finish_func_ptr_anon_417,
    get_etag: et_etag_func_ptr_anon_418,
    _g_reserved1: _g_reserved1_func_ptr_anon_419,
    _g_reserved2: _g_reserved2_func_ptr_anon_420,
    _g_reserved3: _g_reserved3_func_ptr_anon_421,
    _g_reserved4: _g_reserved4_func_ptr_anon_422,
    _g_reserved5: _g_reserved5_func_ptr_anon_423,
}
to_string_func_ptr_anon_424 :: #type proc "c" (address: [^]InetAddress) -> cstring
to_bytes_func_ptr_anon_425 :: #type proc "c" (address: [^]InetAddress) -> ^glib.uint8
_GInetAddressClass :: struct {
    parent_class: gobj.ObjectClass,
    to_string: to_string_func_ptr_anon_424,
    to_bytes: to_bytes_func_ptr_anon_425,
}
et_family_func_ptr_anon_426 :: #type proc "c" (address: [^]SocketAddress) -> SocketFamily
et_native_size_func_ptr_anon_427 :: #type proc "c" (address: [^]SocketAddress) -> glib.ssize
to_native_func_ptr_anon_428 :: #type proc "c" (address: [^]SocketAddress, dest: glib.pointer, destlen: glib.size, error: ^^glib.Error) -> glib.boolean
_GSocketAddressClass :: struct {
    parent_class: gobj.ObjectClass,
    get_family: et_family_func_ptr_anon_426,
    get_native_size: et_native_size_func_ptr_anon_427,
    to_native: to_native_func_ptr_anon_428,
}
et_item_type_func_ptr_anon_429 :: #type proc "c" (list: ^ListModel) -> gobj.Type
et_n_items_func_ptr_anon_430 :: #type proc "c" (list: ^ListModel) -> glib.uint_
et_item_func_ptr_anon_431 :: #type proc "c" (list: ^ListModel, position: glib.uint_) -> glib.pointer
_GListModelInterface :: struct {
    g_iface: gobj.TypeInterface,
    get_item_type: et_item_type_func_ptr_anon_429,
    get_n_items: et_n_items_func_ptr_anon_430,
    get_item: et_item_func_ptr_anon_431,
}
load_func_ptr_anon_432 :: #type proc "c" (icon: ^LoadableIcon, size_p: i32, type: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^InputStream
load_async_func_ptr_anon_433 :: #type proc "c" (icon: ^LoadableIcon, size_p: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
load_finish_func_ptr_anon_434 :: #type proc "c" (icon: ^LoadableIcon, res: [^]AsyncResult, type: ^cstring, error: ^^glib.Error) -> ^InputStream
_GLoadableIconIface :: struct {
    g_iface: gobj.TypeInterface,
    load: load_func_ptr_anon_432,
    load_async: load_async_func_ptr_anon_433,
    load_finish: load_finish_func_ptr_anon_434,
}
_g_reserved1_func_ptr_anon_435 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_436 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_437 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_438 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_439 :: #type proc "c" ()
_GMemoryInputStreamClass :: struct {
    parent_class: InputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_435,
    _g_reserved2: _g_reserved2_func_ptr_anon_436,
    _g_reserved3: _g_reserved3_func_ptr_anon_437,
    _g_reserved4: _g_reserved4_func_ptr_anon_438,
    _g_reserved5: _g_reserved5_func_ptr_anon_439,
}
low_memory_warning_func_ptr_anon_440 :: #type proc "c" (monitor: ^MemoryMonitor, level: MemoryMonitorWarningLevel)
_GMemoryMonitorInterface :: struct {
    g_iface: gobj.TypeInterface,
    low_memory_warning: low_memory_warning_func_ptr_anon_440,
}
_g_reserved1_func_ptr_anon_441 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_442 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_443 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_444 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_445 :: #type proc "c" ()
_GMemoryOutputStreamClass :: struct {
    parent_class: OutputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_441,
    _g_reserved2: _g_reserved2_func_ptr_anon_442,
    _g_reserved3: _g_reserved3_func_ptr_anon_443,
    _g_reserved4: _g_reserved4_func_ptr_anon_444,
    _g_reserved5: _g_reserved5_func_ptr_anon_445,
}
is_mutable_func_ptr_anon_446 :: #type proc "c" (model: ^MenuModel) -> glib.boolean
et_n_items_func_ptr_anon_447 :: #type proc "c" (model: ^MenuModel) -> glib.int_
et_item_attributes_func_ptr_anon_448 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, attributes: [^]^glib.HashTable)
iterate_item_attributes_func_ptr_anon_449 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_) -> ^MenuAttributeIter
et_item_attribute_value_func_ptr_anon_450 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, attribute: cstring, expected_type: ^glib.VariantType) -> ^glib.Variant
et_item_links_func_ptr_anon_451 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, links: [^]^glib.HashTable)
iterate_item_links_func_ptr_anon_452 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_) -> ^MenuLinkIter
et_item_link_func_ptr_anon_453 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, link: cstring) -> ^MenuModel
_GMenuModelClass :: struct {
    parent_class: gobj.ObjectClass,
    is_mutable: is_mutable_func_ptr_anon_446,
    get_n_items: et_n_items_func_ptr_anon_447,
    get_item_attributes: et_item_attributes_func_ptr_anon_448,
    iterate_item_attributes: iterate_item_attributes_func_ptr_anon_449,
    get_item_attribute_value: et_item_attribute_value_func_ptr_anon_450,
    get_item_links: et_item_links_func_ptr_anon_451,
    iterate_item_links: iterate_item_links_func_ptr_anon_452,
    get_item_link: et_item_link_func_ptr_anon_453,
}
et_next_func_ptr_anon_454 :: #type proc "c" (iter: ^MenuAttributeIter, out_name: ^cstring, value: ^^glib.Variant) -> glib.boolean
_GMenuAttributeIterClass :: struct {
    parent_class: gobj.ObjectClass,
    get_next: et_next_func_ptr_anon_454,
}
et_next_func_ptr_anon_455 :: #type proc "c" (iter: ^MenuLinkIter, out_link: ^cstring, value: ^^MenuModel) -> glib.boolean
_GMenuLinkIterClass :: struct {
    parent_class: gobj.ObjectClass,
    get_next: et_next_func_ptr_anon_455,
}
changed_func_ptr_anon_456 :: #type proc "c" (mount: ^Mount)
unmounted_func_ptr_anon_457 :: #type proc "c" (mount: ^Mount)
et_root_func_ptr_anon_458 :: #type proc "c" (mount: ^Mount) -> ^File
et_name_func_ptr_anon_459 :: #type proc "c" (mount: ^Mount) -> cstring
et_icon_func_ptr_anon_460 :: #type proc "c" (mount: ^Mount) -> ^Icon
et_uuid_func_ptr_anon_461 :: #type proc "c" (mount: ^Mount) -> cstring
et_volume_func_ptr_anon_462 :: #type proc "c" (mount: ^Mount) -> ^Volume
et_drive_func_ptr_anon_463 :: #type proc "c" (mount: ^Mount) -> ^Drive
can_unmount_func_ptr_anon_464 :: #type proc "c" (mount: ^Mount) -> glib.boolean
can_eject_func_ptr_anon_465 :: #type proc "c" (mount: ^Mount) -> glib.boolean
unmount_func_ptr_anon_466 :: #type proc "c" (mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
unmount_finish_func_ptr_anon_467 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
eject_func_ptr_anon_468 :: #type proc "c" (mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_finish_func_ptr_anon_469 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
remount_func_ptr_anon_470 :: #type proc "c" (mount: ^Mount, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
remount_finish_func_ptr_anon_471 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
uess_content_type_func_ptr_anon_472 :: #type proc "c" (mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
uess_content_type_finish_func_ptr_anon_473 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring
uess_content_type_sync_func_ptr_anon_474 :: #type proc "c" (mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring
pre_unmount_func_ptr_anon_475 :: #type proc "c" (mount: ^Mount)
unmount_with_operation_func_ptr_anon_476 :: #type proc "c" (mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
unmount_with_operation_finish_func_ptr_anon_477 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
eject_with_operation_func_ptr_anon_478 :: #type proc "c" (mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_with_operation_finish_func_ptr_anon_479 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_default_location_func_ptr_anon_480 :: #type proc "c" (mount: ^Mount) -> ^File
et_sort_key_func_ptr_anon_481 :: #type proc "c" (mount: ^Mount) -> cstring
et_symbolic_icon_func_ptr_anon_482 :: #type proc "c" (mount: ^Mount) -> ^Icon
_GMountIface :: struct {
    g_iface: gobj.TypeInterface,
    changed: changed_func_ptr_anon_456,
    unmounted: unmounted_func_ptr_anon_457,
    get_root: et_root_func_ptr_anon_458,
    get_name: et_name_func_ptr_anon_459,
    get_icon: et_icon_func_ptr_anon_460,
    get_uuid: et_uuid_func_ptr_anon_461,
    get_volume: et_volume_func_ptr_anon_462,
    get_drive: et_drive_func_ptr_anon_463,
    can_unmount: can_unmount_func_ptr_anon_464,
    can_eject: can_eject_func_ptr_anon_465,
    unmount: unmount_func_ptr_anon_466,
    unmount_finish: unmount_finish_func_ptr_anon_467,
    eject: eject_func_ptr_anon_468,
    eject_finish: eject_finish_func_ptr_anon_469,
    remount: remount_func_ptr_anon_470,
    remount_finish: remount_finish_func_ptr_anon_471,
    guess_content_type: uess_content_type_func_ptr_anon_472,
    guess_content_type_finish: uess_content_type_finish_func_ptr_anon_473,
    guess_content_type_sync: uess_content_type_sync_func_ptr_anon_474,
    pre_unmount: pre_unmount_func_ptr_anon_475,
    unmount_with_operation: unmount_with_operation_func_ptr_anon_476,
    unmount_with_operation_finish: unmount_with_operation_finish_func_ptr_anon_477,
    eject_with_operation: eject_with_operation_func_ptr_anon_478,
    eject_with_operation_finish: eject_with_operation_finish_func_ptr_anon_479,
    get_default_location: et_default_location_func_ptr_anon_480,
    get_sort_key: et_sort_key_func_ptr_anon_481,
    get_symbolic_icon: et_symbolic_icon_func_ptr_anon_482,
}
ask_password_func_ptr_anon_483 :: #type proc "c" (op: ^MountOperation, message: cstring, default_user: cstring, default_domain: cstring, flags: AskPasswordFlags)
ask_question_func_ptr_anon_484 :: #type proc "c" (op: ^MountOperation, message: cstring, choices: [^]cstring)
reply_func_ptr_anon_485 :: #type proc "c" (op: ^MountOperation, result: MountOperationResult)
aborted_func_ptr_anon_486 :: #type proc "c" (op: ^MountOperation)
show_processes_func_ptr_anon_487 :: #type proc "c" (op: ^MountOperation, message: cstring, processes: [^]glib.Array, choices: [^]cstring)
show_unmount_progress_func_ptr_anon_488 :: #type proc "c" (op: ^MountOperation, message: cstring, time_left: glib.int64, bytes_left: glib.int64)
_g_reserved1_func_ptr_anon_489 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_490 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_491 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_492 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_493 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_494 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_495 :: #type proc "c" ()
_g_reserved8_func_ptr_anon_496 :: #type proc "c" ()
_g_reserved9_func_ptr_anon_497 :: #type proc "c" ()
_GMountOperationClass :: struct {
    parent_class: gobj.ObjectClass,
    ask_password: ask_password_func_ptr_anon_483,
    ask_question: ask_question_func_ptr_anon_484,
    reply: reply_func_ptr_anon_485,
    aborted: aborted_func_ptr_anon_486,
    show_processes: show_processes_func_ptr_anon_487,
    show_unmount_progress: show_unmount_progress_func_ptr_anon_488,
    _g_reserved1: _g_reserved1_func_ptr_anon_489,
    _g_reserved2: _g_reserved2_func_ptr_anon_490,
    _g_reserved3: _g_reserved3_func_ptr_anon_491,
    _g_reserved4: _g_reserved4_func_ptr_anon_492,
    _g_reserved5: _g_reserved5_func_ptr_anon_493,
    _g_reserved6: _g_reserved6_func_ptr_anon_494,
    _g_reserved7: _g_reserved7_func_ptr_anon_495,
    _g_reserved8: _g_reserved8_func_ptr_anon_496,
    _g_reserved9: _g_reserved9_func_ptr_anon_497,
}
volume_added_func_ptr_anon_498 :: #type proc "c" (volume_monitor: ^VolumeMonitor, volume: ^Volume)
volume_removed_func_ptr_anon_499 :: #type proc "c" (volume_monitor: ^VolumeMonitor, volume: ^Volume)
volume_changed_func_ptr_anon_500 :: #type proc "c" (volume_monitor: ^VolumeMonitor, volume: ^Volume)
mount_added_func_ptr_anon_501 :: #type proc "c" (volume_monitor: ^VolumeMonitor, mount: ^Mount)
mount_removed_func_ptr_anon_502 :: #type proc "c" (volume_monitor: ^VolumeMonitor, mount: ^Mount)
mount_pre_unmount_func_ptr_anon_503 :: #type proc "c" (volume_monitor: ^VolumeMonitor, mount: ^Mount)
mount_changed_func_ptr_anon_504 :: #type proc "c" (volume_monitor: ^VolumeMonitor, mount: ^Mount)
drive_connected_func_ptr_anon_505 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
drive_disconnected_func_ptr_anon_506 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
drive_changed_func_ptr_anon_507 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
is_supported_func_ptr_anon_508 :: #type proc "c" () -> glib.boolean
et_connected_drives_func_ptr_anon_509 :: #type proc "c" (volume_monitor: ^VolumeMonitor) -> ^glib.List
et_volumes_func_ptr_anon_510 :: #type proc "c" (volume_monitor: ^VolumeMonitor) -> ^glib.List
et_mounts_func_ptr_anon_511 :: #type proc "c" (volume_monitor: ^VolumeMonitor) -> ^glib.List
et_volume_for_uuid_func_ptr_anon_512 :: #type proc "c" (volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Volume
et_mount_for_uuid_func_ptr_anon_513 :: #type proc "c" (volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Mount
adopt_orphan_mount_func_ptr_anon_514 :: #type proc "c" (mount: ^Mount, volume_monitor: ^VolumeMonitor) -> ^Volume
drive_eject_button_func_ptr_anon_515 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
drive_stop_button_func_ptr_anon_516 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
_g_reserved1_func_ptr_anon_517 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_518 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_519 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_520 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_521 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_522 :: #type proc "c" ()
_GVolumeMonitorClass :: struct {
    parent_class: gobj.ObjectClass,
    volume_added: volume_added_func_ptr_anon_498,
    volume_removed: volume_removed_func_ptr_anon_499,
    volume_changed: volume_changed_func_ptr_anon_500,
    mount_added: mount_added_func_ptr_anon_501,
    mount_removed: mount_removed_func_ptr_anon_502,
    mount_pre_unmount: mount_pre_unmount_func_ptr_anon_503,
    mount_changed: mount_changed_func_ptr_anon_504,
    drive_connected: drive_connected_func_ptr_anon_505,
    drive_disconnected: drive_disconnected_func_ptr_anon_506,
    drive_changed: drive_changed_func_ptr_anon_507,
    is_supported: is_supported_func_ptr_anon_508,
    get_connected_drives: et_connected_drives_func_ptr_anon_509,
    get_volumes: et_volumes_func_ptr_anon_510,
    get_mounts: et_mounts_func_ptr_anon_511,
    get_volume_for_uuid: et_volume_for_uuid_func_ptr_anon_512,
    get_mount_for_uuid: et_mount_for_uuid_func_ptr_anon_513,
    adopt_orphan_mount: adopt_orphan_mount_func_ptr_anon_514,
    drive_eject_button: drive_eject_button_func_ptr_anon_515,
    drive_stop_button: drive_stop_button_func_ptr_anon_516,
    _g_reserved1: _g_reserved1_func_ptr_anon_517,
    _g_reserved2: _g_reserved2_func_ptr_anon_518,
    _g_reserved3: _g_reserved3_func_ptr_anon_519,
    _g_reserved4: _g_reserved4_func_ptr_anon_520,
    _g_reserved5: _g_reserved5_func_ptr_anon_521,
    _g_reserved6: _g_reserved6_func_ptr_anon_522,
}
et_mount_for_mount_path_func_ptr_anon_523 :: #type proc "c" (mount_path: cstring, cancellable: ^Cancellable) -> ^Mount
_GNativeVolumeMonitorClass :: struct {
    parent_class: VolumeMonitorClass,
    get_mount_for_mount_path: et_mount_for_mount_path_func_ptr_anon_523,
}
network_changed_func_ptr_anon_524 :: #type proc "c" (monitor: ^NetworkMonitor, network_available: glib.boolean)
can_reach_func_ptr_anon_525 :: #type proc "c" (monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
can_reach_async_func_ptr_anon_526 :: #type proc "c" (monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
can_reach_finish_func_ptr_anon_527 :: #type proc "c" (monitor: ^NetworkMonitor, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_GNetworkMonitorInterface :: struct {
    g_iface: gobj.TypeInterface,
    network_changed: network_changed_func_ptr_anon_524,
    can_reach: can_reach_func_ptr_anon_525,
    can_reach_async: can_reach_async_func_ptr_anon_526,
    can_reach_finish: can_reach_finish_func_ptr_anon_527,
}
acquire_func_ptr_anon_528 :: #type proc "c" (permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
acquire_async_func_ptr_anon_529 :: #type proc "c" (permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
acquire_finish_func_ptr_anon_530 :: #type proc "c" (permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
release_func_ptr_anon_531 :: #type proc "c" (permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
release_async_func_ptr_anon_532 :: #type proc "c" (permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
release_finish_func_ptr_anon_533 :: #type proc "c" (permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_GPermissionClass :: struct {
    parent_class: gobj.ObjectClass,
    acquire: acquire_func_ptr_anon_528,
    acquire_async: acquire_async_func_ptr_anon_529,
    acquire_finish: acquire_finish_func_ptr_anon_530,
    release: release_func_ptr_anon_531,
    release_async: release_async_func_ptr_anon_532,
    release_finish: release_finish_func_ptr_anon_533,
    reserved: [16]glib.pointer,
}
can_poll_func_ptr_anon_534 :: #type proc "c" (stream: ^PollableInputStream) -> glib.boolean
is_readable_func_ptr_anon_535 :: #type proc "c" (stream: ^PollableInputStream) -> glib.boolean
create_source_func_ptr_anon_536 :: #type proc "c" (stream: ^PollableInputStream, cancellable: ^Cancellable) -> ^glib.Source
read_nonblocking_func_ptr_anon_537 :: #type proc "c" (stream: ^PollableInputStream, buffer: rawptr, count: glib.size, error: ^^glib.Error) -> glib.ssize
_GPollableInputStreamInterface :: struct {
    g_iface: gobj.TypeInterface,
    can_poll: can_poll_func_ptr_anon_534,
    is_readable: is_readable_func_ptr_anon_535,
    create_source: create_source_func_ptr_anon_536,
    read_nonblocking: read_nonblocking_func_ptr_anon_537,
}
can_poll_func_ptr_anon_538 :: #type proc "c" (stream: ^PollableOutputStream) -> glib.boolean
is_writable_func_ptr_anon_539 :: #type proc "c" (stream: ^PollableOutputStream) -> glib.boolean
create_source_func_ptr_anon_540 :: #type proc "c" (stream: ^PollableOutputStream, cancellable: ^Cancellable) -> ^glib.Source
write_nonblocking_func_ptr_anon_541 :: #type proc "c" (stream: ^PollableOutputStream, buffer: rawptr, count: glib.size, error: ^^glib.Error) -> glib.ssize
writev_nonblocking_func_ptr_anon_542 :: #type proc "c" (stream: ^PollableOutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, error: ^^glib.Error) -> PollableReturn
_GPollableOutputStreamInterface :: struct {
    g_iface: gobj.TypeInterface,
    can_poll: can_poll_func_ptr_anon_538,
    is_writable: is_writable_func_ptr_anon_539,
    create_source: create_source_func_ptr_anon_540,
    write_nonblocking: write_nonblocking_func_ptr_anon_541,
    writev_nonblocking: writev_nonblocking_func_ptr_anon_542,
}
connect_func_ptr_anon_543 :: #type proc "c" (proxy: ^Proxy, connection: ^IOStream, proxy_address: [^]ProxyAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> ^IOStream
connect_async_func_ptr_anon_544 :: #type proc "c" (proxy: ^Proxy, connection: ^IOStream, proxy_address: [^]ProxyAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
connect_finish_func_ptr_anon_545 :: #type proc "c" (proxy: ^Proxy, result: ^AsyncResult, error: ^^glib.Error) -> ^IOStream
supports_hostname_func_ptr_anon_546 :: #type proc "c" (proxy: ^Proxy) -> glib.boolean
_GProxyInterface :: struct {
    g_iface: gobj.TypeInterface,
    connect: connect_func_ptr_anon_543,
    connect_async: connect_async_func_ptr_anon_544,
    connect_finish: connect_finish_func_ptr_anon_545,
    supports_hostname: supports_hostname_func_ptr_anon_546,
}
next_func_ptr_anon_547 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketAddress
next_async_func_ptr_anon_548 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
next_finish_func_ptr_anon_549 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketAddress
_GSocketAddressEnumeratorClass :: struct {
    parent_class: gobj.ObjectClass,
    next: next_func_ptr_anon_547,
    next_async: next_async_func_ptr_anon_548,
    next_finish: next_finish_func_ptr_anon_549,
}
_g_reserved1_func_ptr_anon_550 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_551 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_552 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_553 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_554 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_555 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_556 :: #type proc "c" ()
_GProxyAddressEnumeratorClass :: struct {
    parent_class: SocketAddressEnumeratorClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_550,
    _g_reserved2: _g_reserved2_func_ptr_anon_551,
    _g_reserved3: _g_reserved3_func_ptr_anon_552,
    _g_reserved4: _g_reserved4_func_ptr_anon_553,
    _g_reserved5: _g_reserved5_func_ptr_anon_554,
    _g_reserved6: _g_reserved6_func_ptr_anon_555,
    _g_reserved7: _g_reserved7_func_ptr_anon_556,
}
is_supported_func_ptr_anon_557 :: #type proc "c" (resolver: ^ProxyResolver) -> glib.boolean
lookup_func_ptr_anon_558 :: #type proc "c" (resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring
lookup_async_func_ptr_anon_559 :: #type proc "c" (resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_finish_func_ptr_anon_560 :: #type proc "c" (resolver: ^ProxyResolver, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring
_GProxyResolverInterface :: struct {
    g_iface: gobj.TypeInterface,
    is_supported: is_supported_func_ptr_anon_557,
    lookup: lookup_func_ptr_anon_558,
    lookup_async: lookup_async_func_ptr_anon_559,
    lookup_finish: lookup_finish_func_ptr_anon_560,
}
activate_action_full_func_ptr_anon_561 :: #type proc "c" (remote: ^RemoteActionGroup, action_name: cstring, parameter: ^glib.Variant, platform_data: ^glib.Variant)
change_action_state_full_func_ptr_anon_562 :: #type proc "c" (remote: ^RemoteActionGroup, action_name: cstring, value: ^glib.Variant, platform_data: ^glib.Variant)
_GRemoteActionGroupInterface :: struct {
    g_iface: gobj.TypeInterface,
    activate_action_full: activate_action_full_func_ptr_anon_561,
    change_action_state_full: change_action_state_full_func_ptr_anon_562,
}
reload_func_ptr_anon_563 :: #type proc "c" (resolver: ^Resolver)
lookup_by_name_func_ptr_anon_564 :: #type proc "c" (resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
lookup_by_name_async_func_ptr_anon_565 :: #type proc "c" (resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_by_name_finish_func_ptr_anon_566 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
lookup_by_address_func_ptr_anon_567 :: #type proc "c" (resolver: ^Resolver, address: [^]InetAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring
lookup_by_address_async_func_ptr_anon_568 :: #type proc "c" (resolver: ^Resolver, address: [^]InetAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_by_address_finish_func_ptr_anon_569 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> cstring
lookup_service_func_ptr_anon_570 :: #type proc "c" (resolver: ^Resolver, rrname: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
lookup_service_async_func_ptr_anon_571 :: #type proc "c" (resolver: ^Resolver, rrname: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_service_finish_func_ptr_anon_572 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
lookup_records_func_ptr_anon_573 :: #type proc "c" (resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
lookup_records_async_func_ptr_anon_574 :: #type proc "c" (resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_records_finish_func_ptr_anon_575 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
ResolverNameLookupFlags :: enum u32 {DEFAULT = 0, IPV4_ONLY = 1, IPV6_ONLY = 2 }
lookup_by_name_with_flags_async_func_ptr_anon_576 :: #type proc "c" (resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_by_name_with_flags_finish_func_ptr_anon_577 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
lookup_by_name_with_flags_func_ptr_anon_578 :: #type proc "c" (resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
_GResolverClass :: struct {
    parent_class: gobj.ObjectClass,
    reload: reload_func_ptr_anon_563,
    lookup_by_name: lookup_by_name_func_ptr_anon_564,
    lookup_by_name_async: lookup_by_name_async_func_ptr_anon_565,
    lookup_by_name_finish: lookup_by_name_finish_func_ptr_anon_566,
    lookup_by_address: lookup_by_address_func_ptr_anon_567,
    lookup_by_address_async: lookup_by_address_async_func_ptr_anon_568,
    lookup_by_address_finish: lookup_by_address_finish_func_ptr_anon_569,
    lookup_service: lookup_service_func_ptr_anon_570,
    lookup_service_async: lookup_service_async_func_ptr_anon_571,
    lookup_service_finish: lookup_service_finish_func_ptr_anon_572,
    lookup_records: lookup_records_func_ptr_anon_573,
    lookup_records_async: lookup_records_async_func_ptr_anon_574,
    lookup_records_finish: lookup_records_finish_func_ptr_anon_575,
    lookup_by_name_with_flags_async: lookup_by_name_with_flags_async_func_ptr_anon_576,
    lookup_by_name_with_flags_finish: lookup_by_name_with_flags_finish_func_ptr_anon_577,
    lookup_by_name_with_flags: lookup_by_name_with_flags_func_ptr_anon_578,
}
tell_func_ptr_anon_579 :: #type proc "c" (seekable: ^Seekable) -> glib.offset
can_seek_func_ptr_anon_580 :: #type proc "c" (seekable: ^Seekable) -> glib.boolean
seek_func_ptr_anon_581 :: #type proc "c" (seekable: ^Seekable, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
can_truncate_func_ptr_anon_582 :: #type proc "c" (seekable: ^Seekable) -> glib.boolean
truncate_fn_func_ptr_anon_583 :: #type proc "c" (seekable: ^Seekable, offset_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
_GSeekableIface :: struct {
    g_iface: gobj.TypeInterface,
    tell: tell_func_ptr_anon_579,
    can_seek: can_seek_func_ptr_anon_580,
    seek: seek_func_ptr_anon_581,
    can_truncate: can_truncate_func_ptr_anon_582,
    truncate_fn: truncate_fn_func_ptr_anon_583,
}
writable_changed_func_ptr_anon_584 :: #type proc "c" (settings: [^]Settings, key: cstring)
changed_func_ptr_anon_585 :: #type proc "c" (settings: [^]Settings, key: cstring)
writable_change_event_func_ptr_anon_586 :: #type proc "c" (settings: [^]Settings, key: glib.Quark) -> glib.boolean
change_event_func_ptr_anon_587 :: #type proc "c" (settings: [^]Settings, keys: [^]glib.Quark, n_keys: glib.int_) -> glib.boolean
_GSettingsClass :: struct {
    parent_class: gobj.ObjectClass,
    writable_changed: writable_changed_func_ptr_anon_584,
    changed: changed_func_ptr_anon_585,
    writable_change_event: writable_change_event_func_ptr_anon_586,
    change_event: change_event_func_ptr_anon_587,
    padding: [20]glib.pointer,
}
SettingsBindFlags :: enum u32 {DEFAULT = 0, GET = 1, SET = 2, NO_SENSITIVITY = 4, GET_NO_CHANGES = 8, INVERT_BOOLEAN = 16 }
_g_reserved1_func_ptr_anon_588 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_589 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_590 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_591 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_592 :: #type proc "c" ()
_GSimpleProxyResolverClass :: struct {
    parent_class: gobj.ObjectClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_588,
    _g_reserved2: _g_reserved2_func_ptr_anon_589,
    _g_reserved3: _g_reserved3_func_ptr_anon_590,
    _g_reserved4: _g_reserved4_func_ptr_anon_591,
    _g_reserved5: _g_reserved5_func_ptr_anon_592,
}
_g_reserved1_func_ptr_anon_593 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_594 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_595 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_596 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_597 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_598 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_599 :: #type proc "c" ()
_g_reserved8_func_ptr_anon_600 :: #type proc "c" ()
_g_reserved9_func_ptr_anon_601 :: #type proc "c" ()
_g_reserved10_func_ptr_anon_602 :: #type proc "c" ()
_GSocketClass :: struct {
    parent_class: gobj.ObjectClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_593,
    _g_reserved2: _g_reserved2_func_ptr_anon_594,
    _g_reserved3: _g_reserved3_func_ptr_anon_595,
    _g_reserved4: _g_reserved4_func_ptr_anon_596,
    _g_reserved5: _g_reserved5_func_ptr_anon_597,
    _g_reserved6: _g_reserved6_func_ptr_anon_598,
    _g_reserved7: _g_reserved7_func_ptr_anon_599,
    _g_reserved8: _g_reserved8_func_ptr_anon_600,
    _g_reserved9: _g_reserved9_func_ptr_anon_601,
    _g_reserved10: _g_reserved10_func_ptr_anon_602,
}
event_func_ptr_anon_603 :: #type proc "c" (client: ^SocketClient, event: SocketClientEvent, connectable: ^SocketConnectable, connection: ^IOStream)
_g_reserved1_func_ptr_anon_604 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_605 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_606 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_607 :: #type proc "c" ()
_GSocketClientClass :: struct {
    parent_class: gobj.ObjectClass,
    event: event_func_ptr_anon_603,
    _g_reserved1: _g_reserved1_func_ptr_anon_604,
    _g_reserved2: _g_reserved2_func_ptr_anon_605,
    _g_reserved3: _g_reserved3_func_ptr_anon_606,
    _g_reserved4: _g_reserved4_func_ptr_anon_607,
}
enumerate_func_ptr_anon_608 :: #type proc "c" (connectable: ^SocketConnectable) -> ^SocketAddressEnumerator
proxy_enumerate_func_ptr_anon_609 :: #type proc "c" (connectable: ^SocketConnectable) -> ^SocketAddressEnumerator
to_string_func_ptr_anon_610 :: #type proc "c" (connectable: ^SocketConnectable) -> cstring
_GSocketConnectableIface :: struct {
    g_iface: gobj.TypeInterface,
    enumerate: enumerate_func_ptr_anon_608,
    proxy_enumerate: proxy_enumerate_func_ptr_anon_609,
    to_string: to_string_func_ptr_anon_610,
}
_g_reserved1_func_ptr_anon_611 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_612 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_613 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_614 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_615 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_616 :: #type proc "c" ()
_GSocketConnectionClass :: struct {
    parent_class: IOStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_611,
    _g_reserved2: _g_reserved2_func_ptr_anon_612,
    _g_reserved3: _g_reserved3_func_ptr_anon_613,
    _g_reserved4: _g_reserved4_func_ptr_anon_614,
    _g_reserved5: _g_reserved5_func_ptr_anon_615,
    _g_reserved6: _g_reserved6_func_ptr_anon_616,
}
et_size_func_ptr_anon_617 :: #type proc "c" (message: ^SocketControlMessage) -> glib.size
et_level_func_ptr_anon_618 :: #type proc "c" (message: ^SocketControlMessage) -> i32
et_type_func_ptr_anon_619 :: #type proc "c" (message: ^SocketControlMessage) -> i32
serialize_func_ptr_anon_620 :: #type proc "c" (message: ^SocketControlMessage, data: glib.pointer)
deserialize_func_ptr_anon_621 :: #type proc "c" (level: i32, type: i32, size_p: glib.size, data: glib.pointer) -> ^SocketControlMessage
_g_reserved1_func_ptr_anon_622 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_623 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_624 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_625 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_626 :: #type proc "c" ()
_GSocketControlMessageClass :: struct {
    parent_class: gobj.ObjectClass,
    get_size: et_size_func_ptr_anon_617,
    get_level: et_level_func_ptr_anon_618,
    get_type: et_type_func_ptr_anon_619,
    serialize: serialize_func_ptr_anon_620,
    deserialize: deserialize_func_ptr_anon_621,
    _g_reserved1: _g_reserved1_func_ptr_anon_622,
    _g_reserved2: _g_reserved2_func_ptr_anon_623,
    _g_reserved3: _g_reserved3_func_ptr_anon_624,
    _g_reserved4: _g_reserved4_func_ptr_anon_625,
    _g_reserved5: _g_reserved5_func_ptr_anon_626,
}
changed_func_ptr_anon_627 :: #type proc "c" (listener: ^SocketListener)
event_func_ptr_anon_628 :: #type proc "c" (listener: ^SocketListener, event: SocketListenerEvent, socket: ^Socket)
_g_reserved2_func_ptr_anon_629 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_630 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_631 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_632 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_633 :: #type proc "c" ()
_GSocketListenerClass :: struct {
    parent_class: gobj.ObjectClass,
    changed: changed_func_ptr_anon_627,
    event: event_func_ptr_anon_628,
    _g_reserved2: _g_reserved2_func_ptr_anon_629,
    _g_reserved3: _g_reserved3_func_ptr_anon_630,
    _g_reserved4: _g_reserved4_func_ptr_anon_631,
    _g_reserved5: _g_reserved5_func_ptr_anon_632,
    _g_reserved6: _g_reserved6_func_ptr_anon_633,
}
incoming_func_ptr_anon_634 :: #type proc "c" (service: ^SocketService, connection: ^SocketConnection, source_object: ^gobj.Object) -> glib.boolean
_g_reserved1_func_ptr_anon_635 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_636 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_637 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_638 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_639 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_640 :: #type proc "c" ()
_GSocketServiceClass :: struct {
    parent_class: SocketListenerClass,
    incoming: incoming_func_ptr_anon_634,
    _g_reserved1: _g_reserved1_func_ptr_anon_635,
    _g_reserved2: _g_reserved2_func_ptr_anon_636,
    _g_reserved3: _g_reserved3_func_ptr_anon_637,
    _g_reserved4: _g_reserved4_func_ptr_anon_638,
    _g_reserved5: _g_reserved5_func_ptr_anon_639,
    _g_reserved6: _g_reserved6_func_ptr_anon_640,
}
run_func_ptr_anon_641 :: #type proc "c" (service: ^ThreadedSocketService, connection: ^SocketConnection, source_object: ^gobj.Object) -> glib.boolean
_g_reserved1_func_ptr_anon_642 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_643 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_644 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_645 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_646 :: #type proc "c" ()
_GThreadedSocketServiceClass :: struct {
    parent_class: SocketServiceClass,
    run: run_func_ptr_anon_641,
    _g_reserved1: _g_reserved1_func_ptr_anon_642,
    _g_reserved2: _g_reserved2_func_ptr_anon_643,
    _g_reserved3: _g_reserved3_func_ptr_anon_644,
    _g_reserved4: _g_reserved4_func_ptr_anon_645,
    _g_reserved5: _g_reserved5_func_ptr_anon_646,
}
supports_tls_func_ptr_anon_647 :: #type proc "c" (backend: ^TlsBackend) -> glib.boolean
et_certificate_type_func_ptr_anon_648 :: #type proc "c" () -> gobj.Type
et_client_connection_type_func_ptr_anon_649 :: #type proc "c" () -> gobj.Type
et_server_connection_type_func_ptr_anon_650 :: #type proc "c" () -> gobj.Type
et_file_database_type_func_ptr_anon_651 :: #type proc "c" () -> gobj.Type
et_default_database_func_ptr_anon_652 :: #type proc "c" (backend: ^TlsBackend) -> ^TlsDatabase
supports_dtls_func_ptr_anon_653 :: #type proc "c" (backend: ^TlsBackend) -> glib.boolean
et_dtls_client_connection_type_func_ptr_anon_654 :: #type proc "c" () -> gobj.Type
et_dtls_server_connection_type_func_ptr_anon_655 :: #type proc "c" () -> gobj.Type
_GTlsBackendInterface :: struct {
    g_iface: gobj.TypeInterface,
    supports_tls: supports_tls_func_ptr_anon_647,
    get_certificate_type: et_certificate_type_func_ptr_anon_648,
    get_client_connection_type: et_client_connection_type_func_ptr_anon_649,
    get_server_connection_type: et_server_connection_type_func_ptr_anon_650,
    get_file_database_type: et_file_database_type_func_ptr_anon_651,
    get_default_database: et_default_database_func_ptr_anon_652,
    supports_dtls: supports_dtls_func_ptr_anon_653,
    get_dtls_client_connection_type: et_dtls_client_connection_type_func_ptr_anon_654,
    get_dtls_server_connection_type: et_dtls_server_connection_type_func_ptr_anon_655,
}
verify_func_ptr_anon_656 :: #type proc "c" (cert: ^TlsCertificate, identity: ^SocketConnectable, trusted_ca: ^TlsCertificate) -> TlsCertificateFlags
_GTlsCertificateClass :: struct {
    parent_class: gobj.ObjectClass,
    verify: verify_func_ptr_anon_656,
    padding: [8]glib.pointer,
}
accept_certificate_func_ptr_anon_657 :: #type proc "c" (connection: ^TlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean
handshake_func_ptr_anon_658 :: #type proc "c" (conn: ^TlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
handshake_async_func_ptr_anon_659 :: #type proc "c" (conn: ^TlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
handshake_finish_func_ptr_anon_660 :: #type proc "c" (conn: ^TlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_binding_data_func_ptr_anon_661 :: #type proc "c" (conn: ^TlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean
et_negotiated_protocol_func_ptr_anon_662 :: #type proc "c" (conn: ^TlsConnection) -> cstring
_GTlsConnectionClass :: struct {
    parent_class: IOStreamClass,
    accept_certificate: accept_certificate_func_ptr_anon_657,
    handshake: handshake_func_ptr_anon_658,
    handshake_async: handshake_async_func_ptr_anon_659,
    handshake_finish: handshake_finish_func_ptr_anon_660,
    get_binding_data: et_binding_data_func_ptr_anon_661,
    get_negotiated_protocol: et_negotiated_protocol_func_ptr_anon_662,
    padding: [6]glib.pointer,
}
copy_session_state_func_ptr_anon_663 :: #type proc "c" (conn: ^TlsClientConnection, source: ^TlsClientConnection)
_GTlsClientConnectionInterface :: struct {
    g_iface: gobj.TypeInterface,
    copy_session_state: copy_session_state_func_ptr_anon_663,
}
verify_chain_func_ptr_anon_664 :: #type proc "c" (self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsCertificateFlags
verify_chain_async_func_ptr_anon_665 :: #type proc "c" (self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
verify_chain_finish_func_ptr_anon_666 :: #type proc "c" (self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> TlsCertificateFlags
create_certificate_handle_func_ptr_anon_667 :: #type proc "c" (self: ^TlsDatabase, certificate: ^TlsCertificate) -> cstring
lookup_certificate_for_handle_func_ptr_anon_668 :: #type proc "c" (self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate
lookup_certificate_for_handle_async_func_ptr_anon_669 :: #type proc "c" (self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_certificate_for_handle_finish_func_ptr_anon_670 :: #type proc "c" (self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate
lookup_certificate_issuer_func_ptr_anon_671 :: #type proc "c" (self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate
lookup_certificate_issuer_async_func_ptr_anon_672 :: #type proc "c" (self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_certificate_issuer_finish_func_ptr_anon_673 :: #type proc "c" (self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate
lookup_certificates_issued_by_func_ptr_anon_674 :: #type proc "c" (self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
lookup_certificates_issued_by_async_func_ptr_anon_675 :: #type proc "c" (self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_certificates_issued_by_finish_func_ptr_anon_676 :: #type proc "c" (self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
_GTlsDatabaseClass :: struct {
    parent_class: gobj.ObjectClass,
    verify_chain: verify_chain_func_ptr_anon_664,
    verify_chain_async: verify_chain_async_func_ptr_anon_665,
    verify_chain_finish: verify_chain_finish_func_ptr_anon_666,
    create_certificate_handle: create_certificate_handle_func_ptr_anon_667,
    lookup_certificate_for_handle: lookup_certificate_for_handle_func_ptr_anon_668,
    lookup_certificate_for_handle_async: lookup_certificate_for_handle_async_func_ptr_anon_669,
    lookup_certificate_for_handle_finish: lookup_certificate_for_handle_finish_func_ptr_anon_670,
    lookup_certificate_issuer: lookup_certificate_issuer_func_ptr_anon_671,
    lookup_certificate_issuer_async: lookup_certificate_issuer_async_func_ptr_anon_672,
    lookup_certificate_issuer_finish: lookup_certificate_issuer_finish_func_ptr_anon_673,
    lookup_certificates_issued_by: lookup_certificates_issued_by_func_ptr_anon_674,
    lookup_certificates_issued_by_async: lookup_certificates_issued_by_async_func_ptr_anon_675,
    lookup_certificates_issued_by_finish: lookup_certificates_issued_by_finish_func_ptr_anon_676,
    padding: [16]glib.pointer,
}
ask_password_func_ptr_anon_677 :: #type proc "c" (interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult
ask_password_async_func_ptr_anon_678 :: #type proc "c" (interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
ask_password_finish_func_ptr_anon_679 :: #type proc "c" (interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult
request_certificate_func_ptr_anon_680 :: #type proc "c" (interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult
request_certificate_async_func_ptr_anon_681 :: #type proc "c" (interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
request_certificate_finish_func_ptr_anon_682 :: #type proc "c" (interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult
_GTlsInteractionClass :: struct {
    parent_class: gobj.ObjectClass,
    ask_password: ask_password_func_ptr_anon_677,
    ask_password_async: ask_password_async_func_ptr_anon_678,
    ask_password_finish: ask_password_finish_func_ptr_anon_679,
    request_certificate: request_certificate_func_ptr_anon_680,
    request_certificate_async: request_certificate_async_func_ptr_anon_681,
    request_certificate_finish: request_certificate_finish_func_ptr_anon_682,
    padding: [21]glib.pointer,
}
et_value_func_ptr_anon_683 :: #type proc "c" (password: ^TlsPassword, length: ^glib.size) -> ^glib.uchar
set_value_func_ptr_anon_684 :: #type proc "c" (password: ^TlsPassword, value: ^glib.uchar, length: glib.ssize, destroy: glib.DestroyNotify)
et_default_warning_func_ptr_anon_685 :: #type proc "c" (password: ^TlsPassword) -> cstring
_GTlsPasswordClass :: struct {
    parent_class: gobj.ObjectClass,
    get_value: et_value_func_ptr_anon_683,
    set_value: set_value_func_ptr_anon_684,
    get_default_warning: et_default_warning_func_ptr_anon_685,
    padding: [4]glib.pointer,
}
_g_reserved1_func_ptr_anon_686 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_687 :: #type proc "c" ()
_GUnixCredentialsMessageClass :: struct {
    parent_class: SocketControlMessageClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_686,
    _g_reserved2: _g_reserved2_func_ptr_anon_687,
}
_g_reserved1_func_ptr_anon_688 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_689 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_690 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_691 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_692 :: #type proc "c" ()
_GUnixFDListClass :: struct {
    parent_class: gobj.ObjectClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_688,
    _g_reserved2: _g_reserved2_func_ptr_anon_689,
    _g_reserved3: _g_reserved3_func_ptr_anon_690,
    _g_reserved4: _g_reserved4_func_ptr_anon_691,
    _g_reserved5: _g_reserved5_func_ptr_anon_692,
}
is_active_func_ptr_anon_693 :: #type proc "c" (vfs: [^]Vfs) -> glib.boolean
et_file_for_path_func_ptr_anon_694 :: #type proc "c" (vfs: [^]Vfs, path: cstring) -> ^File
et_file_for_uri_func_ptr_anon_695 :: #type proc "c" (vfs: [^]Vfs, uri: cstring) -> ^File
et_supported_uri_schemes_func_ptr_anon_696 :: #type proc "c" (vfs: [^]Vfs) -> ^cstring
parse_name_func_ptr_anon_697 :: #type proc "c" (vfs: [^]Vfs, parse_name: cstring) -> ^File
local_file_add_info_func_ptr_anon_698 :: #type proc "c" (vfs: [^]Vfs, filename: cstring, device: glib.uint64, attribute_matcher: ^FileAttributeMatcher, info: ^FileInfo, cancellable: ^Cancellable, extra_data: ^glib.pointer, free_extra_data: ^glib.DestroyNotify)
add_writable_namespaces_func_ptr_anon_699 :: #type proc "c" (vfs: [^]Vfs, list: ^FileAttributeInfoList)
local_file_set_attributes_func_ptr_anon_700 :: #type proc "c" (vfs: [^]Vfs, filename: cstring, info: ^FileInfo, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
local_file_removed_func_ptr_anon_701 :: #type proc "c" (vfs: [^]Vfs, filename: cstring)
local_file_moved_func_ptr_anon_702 :: #type proc "c" (vfs: [^]Vfs, source: cstring, dest: cstring)
deserialize_icon_func_ptr_anon_703 :: #type proc "c" (vfs: [^]Vfs, value: ^glib.Variant) -> ^Icon
_g_reserved1_func_ptr_anon_704 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_705 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_706 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_707 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_708 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_709 :: #type proc "c" ()
_GVfsClass :: struct {
    parent_class: gobj.ObjectClass,
    is_active: is_active_func_ptr_anon_693,
    get_file_for_path: et_file_for_path_func_ptr_anon_694,
    get_file_for_uri: et_file_for_uri_func_ptr_anon_695,
    get_supported_uri_schemes: et_supported_uri_schemes_func_ptr_anon_696,
    parse_name: parse_name_func_ptr_anon_697,
    local_file_add_info: local_file_add_info_func_ptr_anon_698,
    add_writable_namespaces: add_writable_namespaces_func_ptr_anon_699,
    local_file_set_attributes: local_file_set_attributes_func_ptr_anon_700,
    local_file_removed: local_file_removed_func_ptr_anon_701,
    local_file_moved: local_file_moved_func_ptr_anon_702,
    deserialize_icon: deserialize_icon_func_ptr_anon_703,
    _g_reserved1: _g_reserved1_func_ptr_anon_704,
    _g_reserved2: _g_reserved2_func_ptr_anon_705,
    _g_reserved3: _g_reserved3_func_ptr_anon_706,
    _g_reserved4: _g_reserved4_func_ptr_anon_707,
    _g_reserved5: _g_reserved5_func_ptr_anon_708,
    _g_reserved6: _g_reserved6_func_ptr_anon_709,
}
changed_func_ptr_anon_710 :: #type proc "c" (volume: ^Volume)
removed_func_ptr_anon_711 :: #type proc "c" (volume: ^Volume)
et_name_func_ptr_anon_712 :: #type proc "c" (volume: ^Volume) -> cstring
et_icon_func_ptr_anon_713 :: #type proc "c" (volume: ^Volume) -> ^Icon
et_uuid_func_ptr_anon_714 :: #type proc "c" (volume: ^Volume) -> cstring
et_drive_func_ptr_anon_715 :: #type proc "c" (volume: ^Volume) -> ^Drive
et_mount_func_ptr_anon_716 :: #type proc "c" (volume: ^Volume) -> ^Mount
can_mount_func_ptr_anon_717 :: #type proc "c" (volume: ^Volume) -> glib.boolean
can_eject_func_ptr_anon_718 :: #type proc "c" (volume: ^Volume) -> glib.boolean
mount_fn_func_ptr_anon_719 :: #type proc "c" (volume: ^Volume, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
mount_finish_func_ptr_anon_720 :: #type proc "c" (volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
eject_func_ptr_anon_721 :: #type proc "c" (volume: ^Volume, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_finish_func_ptr_anon_722 :: #type proc "c" (volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_identifier_func_ptr_anon_723 :: #type proc "c" (volume: ^Volume, kind: cstring) -> cstring
enumerate_identifiers_func_ptr_anon_724 :: #type proc "c" (volume: ^Volume) -> ^cstring
should_automount_func_ptr_anon_725 :: #type proc "c" (volume: ^Volume) -> glib.boolean
et_activation_root_func_ptr_anon_726 :: #type proc "c" (volume: ^Volume) -> ^File
eject_with_operation_func_ptr_anon_727 :: #type proc "c" (volume: ^Volume, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_with_operation_finish_func_ptr_anon_728 :: #type proc "c" (volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_sort_key_func_ptr_anon_729 :: #type proc "c" (volume: ^Volume) -> cstring
et_symbolic_icon_func_ptr_anon_730 :: #type proc "c" (volume: ^Volume) -> ^Icon
_GVolumeIface :: struct {
    g_iface: gobj.TypeInterface,
    changed: changed_func_ptr_anon_710,
    removed: removed_func_ptr_anon_711,
    get_name: et_name_func_ptr_anon_712,
    get_icon: et_icon_func_ptr_anon_713,
    get_uuid: et_uuid_func_ptr_anon_714,
    get_drive: et_drive_func_ptr_anon_715,
    get_mount: et_mount_func_ptr_anon_716,
    can_mount: can_mount_func_ptr_anon_717,
    can_eject: can_eject_func_ptr_anon_718,
    mount_fn: mount_fn_func_ptr_anon_719,
    mount_finish: mount_finish_func_ptr_anon_720,
    eject: eject_func_ptr_anon_721,
    eject_finish: eject_finish_func_ptr_anon_722,
    get_identifier: et_identifier_func_ptr_anon_723,
    enumerate_identifiers: enumerate_identifiers_func_ptr_anon_724,
    should_automount: should_automount_func_ptr_anon_725,
    get_activation_root: et_activation_root_func_ptr_anon_726,
    eject_with_operation: eject_with_operation_func_ptr_anon_727,
    eject_with_operation_finish: eject_with_operation_finish_func_ptr_anon_728,
    get_sort_key: et_sort_key_func_ptr_anon_729,
    get_symbolic_icon: et_symbolic_icon_func_ptr_anon_730,
}

@(default_calling_convention = "c")
foreign gio_runic {
    @(link_name = "g_credentials_get_unix_pid")
    credentials_get_unix_pid :: proc(credentials: [^]Credentials, error: ^^glib.Error) -> linux.Pid ---

    @(link_name = "g_credentials_get_unix_user")
    credentials_get_unix_user :: proc(credentials: [^]Credentials, error: ^^glib.Error) -> linux.Uid ---

    @(link_name = "g_credentials_set_unix_user")
    credentials_set_unix_user :: proc(credentials: [^]Credentials, uid: linux.Uid, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list")
    dbus_connection_call_with_unix_fd_list :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list_finish")
    dbus_connection_call_with_unix_fd_list_finish :: proc(connection: ^DBusConnection, out_fd_list: ^^UnixFDList, res: [^]AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list_sync")
    dbus_connection_call_with_unix_fd_list_sync :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, out_fd_list: ^^UnixFDList, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_message_get_unix_fd_list")
    dbus_message_get_unix_fd_list :: proc(message: ^DBusMessage) -> ^UnixFDList ---

    @(link_name = "g_dbus_message_set_unix_fd_list")
    dbus_message_set_unix_fd_list :: proc(message: ^DBusMessage, fd_list: ^UnixFDList) ---

    @(link_name = "g_dbus_method_invocation_return_value_with_unix_fd_list")
    dbus_method_invocation_return_value_with_unix_fd_list :: proc(invocation: ^DBusMethodInvocation, parameters: [^]glib.Variant, fd_list: ^UnixFDList) ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list")
    dbus_proxy_call_with_unix_fd_list :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: [^]glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list_finish")
    dbus_proxy_call_with_unix_fd_list_finish :: proc(proxy: ^DBusProxy, out_fd_list: ^^UnixFDList, res: [^]AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list_sync")
    dbus_proxy_call_with_unix_fd_list_sync :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: [^]glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, out_fd_list: ^^UnixFDList, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_resource_has_children")
    resource_has_children :: proc(resource: ^Resource, path: cstring) -> glib.boolean ---

    @(link_name = "g_resources_has_children")
    resources_has_children :: proc(path: cstring) -> glib.boolean ---

    @(link_name = "g_subprocess_send_signal")
    subprocess_send_signal :: proc(subprocess: [^]Subprocess, signal_num: glib.int_) ---

    @(link_name = "g_subprocess_launcher_set_stdin_file_path")
    subprocess_launcher_set_stdin_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---

    @(link_name = "g_subprocess_launcher_take_stdin_fd")
    subprocess_launcher_take_stdin_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---

    @(link_name = "g_subprocess_launcher_set_stdout_file_path")
    subprocess_launcher_set_stdout_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---

    @(link_name = "g_subprocess_launcher_take_stdout_fd")
    subprocess_launcher_take_stdout_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---

    @(link_name = "g_subprocess_launcher_set_stderr_file_path")
    subprocess_launcher_set_stderr_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---

    @(link_name = "g_subprocess_launcher_take_stderr_fd")
    subprocess_launcher_take_stderr_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---

    @(link_name = "g_subprocess_launcher_take_fd")
    subprocess_launcher_take_fd :: proc(self: ^SubprocessLauncher, source_fd: glib.int_, target_fd: glib.int_) ---

    @(link_name = "g_subprocess_launcher_close")
    subprocess_launcher_close :: proc(self: ^SubprocessLauncher) ---

    @(link_name = "g_subprocess_launcher_set_child_setup")
    subprocess_launcher_set_child_setup :: proc(self: ^SubprocessLauncher, child_setup: glib.SpawnChildSetupFunc, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---

    @(link_name = "glib_autoptr_clear_GDebugController_wrapper")
    autoptr_clear_GDebugController :: proc(_ptr: ^DebugController) ---

    @(link_name = "glib_autoptr_cleanup_GDebugController_wrapper")
    autoptr_cleanup_GDebugController :: proc(_ptr: ^^DebugController) ---

    @(link_name = "glib_autoptr_destroy_GDebugController_wrapper")
    autoptr_destroy_GDebugController :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDebugController_wrapper")
    listautoptr_cleanup_GDebugController :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDebugController_wrapper")
    slistautoptr_cleanup_GDebugController :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDebugController_wrapper")
    queueautoptr_cleanup_GDebugController :: proc(_q: ^^glib.Queue) ---

    @(link_name = "g_debug_controller_wrapper")
    debug_controller :: proc(ptr: glib.pointer) -> ^DebugController ---

    @(link_name = "g_IS_debug_controller_wrapper")
    IS_debug_controller :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_debug_controller_GET_IFACE_wrapper")
    debug_controller_GET_IFACE :: proc(ptr: glib.pointer) -> ^DebugControllerInterface ---

    @(link_name = "glib_autoptr_clear_GDebugControllerDBus_wrapper")
    autoptr_clear_GDebugControllerDBus :: proc(_ptr: ^DebugControllerDBus) ---

    @(link_name = "glib_autoptr_cleanup_GDebugControllerDBus_wrapper")
    autoptr_cleanup_GDebugControllerDBus :: proc(_ptr: ^^DebugControllerDBus) ---

    @(link_name = "glib_autoptr_destroy_GDebugControllerDBus_wrapper")
    autoptr_destroy_GDebugControllerDBus :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDebugControllerDBus_wrapper")
    listautoptr_cleanup_GDebugControllerDBus :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDebugControllerDBus_wrapper")
    slistautoptr_cleanup_GDebugControllerDBus :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDebugControllerDBus_wrapper")
    queueautoptr_cleanup_GDebugControllerDBus :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDebugControllerDBusClass_wrapper")
    autoptr_clear_GDebugControllerDBusClass :: proc(_ptr: ^DebugControllerDBusClass) ---

    @(link_name = "glib_autoptr_cleanup_GDebugControllerDBusClass_wrapper")
    autoptr_cleanup_GDebugControllerDBusClass :: proc(_ptr: ^^DebugControllerDBusClass) ---

    @(link_name = "glib_autoptr_destroy_GDebugControllerDBusClass_wrapper")
    autoptr_destroy_GDebugControllerDBusClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDebugControllerDBusClass_wrapper")
    listautoptr_cleanup_GDebugControllerDBusClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDebugControllerDBusClass_wrapper")
    slistautoptr_cleanup_GDebugControllerDBusClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDebugControllerDBusClass_wrapper")
    queueautoptr_cleanup_GDebugControllerDBusClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "G_DEBUG_CONTROLLER_DBUS_wrapper")
    G_DEBUG_CONTROLLER_DBUS :: proc(ptr: glib.pointer) -> ^DebugControllerDBus ---

    @(link_name = "G_DEBUG_CONTROLLER_DBUS_CLASS_wrapper")
    G_DEBUG_CONTROLLER_DBUS_CLASS :: proc(ptr: glib.pointer) -> ^DebugControllerDBusClass ---

    @(link_name = "G_IS_DEBUG_CONTROLLER_DBUS_wrapper")
    G_IS_DEBUG_CONTROLLER_DBUS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_IS_DEBUG_CONTROLLER_DBUS_CLASS_wrapper")
    G_IS_DEBUG_CONTROLLER_DBUS_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_DEBUG_CONTROLLER_DBUS_GET_CLASS_wrapper")
    G_DEBUG_CONTROLLER_DBUS_GET_CLASS :: proc(ptr: glib.pointer) -> ^DebugControllerDBusClass ---

    @(link_name = "glib_autoptr_clear_GListModel_wrapper")
    autoptr_clear_GListModel :: proc(_ptr: ^ListModel) ---

    @(link_name = "glib_autoptr_cleanup_GListModel_wrapper")
    autoptr_cleanup_GListModel :: proc(_ptr: ^^ListModel) ---

    @(link_name = "glib_autoptr_destroy_GListModel_wrapper")
    autoptr_destroy_GListModel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GListModel_wrapper")
    listautoptr_cleanup_GListModel :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GListModel_wrapper")
    slistautoptr_cleanup_GListModel :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GListModel_wrapper")
    queueautoptr_cleanup_GListModel :: proc(_q: ^^glib.Queue) ---

    @(link_name = "G_LIST_MODEL_wrapper")
    G_LIST_MODEL :: proc(ptr: glib.pointer) -> ^ListModel ---

    @(link_name = "G_IS_LIST_MODEL_wrapper")
    G_IS_LIST_MODEL :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "G_LIST_MODEL_GET_IFACE_wrapper")
    G_LIST_MODEL_GET_IFACE :: proc(ptr: glib.pointer) -> ^ListModelInterface ---

    @(link_name = "glib_autoptr_clear_GListStore_wrapper")
    autoptr_clear_GListStore :: proc(_ptr: ^ListStore) ---

    @(link_name = "glib_autoptr_cleanup_GListStore_wrapper")
    autoptr_cleanup_GListStore :: proc(_ptr: ^^ListStore) ---

    @(link_name = "glib_autoptr_destroy_GListStore_wrapper")
    autoptr_destroy_GListStore :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GListStore_wrapper")
    listautoptr_cleanup_GListStore :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GListStore_wrapper")
    slistautoptr_cleanup_GListStore :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GListStore_wrapper")
    queueautoptr_cleanup_GListStore :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GListStoreClass_wrapper")
    autoptr_clear_GListStoreClass :: proc(_ptr: ^ListStoreClass) ---

    @(link_name = "glib_autoptr_cleanup_GListStoreClass_wrapper")
    autoptr_cleanup_GListStoreClass :: proc(_ptr: ^^ListStoreClass) ---

    @(link_name = "glib_autoptr_destroy_GListStoreClass_wrapper")
    autoptr_destroy_GListStoreClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GListStoreClass_wrapper")
    listautoptr_cleanup_GListStoreClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GListStoreClass_wrapper")
    slistautoptr_cleanup_GListStoreClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GListStoreClass_wrapper")
    queueautoptr_cleanup_GListStoreClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "G_LIST_STORE_wrapper")
    G_LIST_STORE :: proc(ptr: glib.pointer) -> ^ListStore ---

    @(link_name = "G_IS_LIST_STORE_wrapper")
    G_IS_LIST_STORE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_GMemoryMonitor_wrapper")
    autoptr_clear_GMemoryMonitor :: proc(_ptr: ^MemoryMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GMemoryMonitor_wrapper")
    autoptr_cleanup_GMemoryMonitor :: proc(_ptr: ^^MemoryMonitor) ---

    @(link_name = "glib_autoptr_destroy_GMemoryMonitor_wrapper")
    autoptr_destroy_GMemoryMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMemoryMonitor_wrapper")
    listautoptr_cleanup_GMemoryMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMemoryMonitor_wrapper")
    slistautoptr_cleanup_GMemoryMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMemoryMonitor_wrapper")
    queueautoptr_cleanup_GMemoryMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "g_memory_monitor_wrapper")
    memory_monitor :: proc(ptr: glib.pointer) -> ^MemoryMonitor ---

    @(link_name = "g_IS_memory_monitor_wrapper")
    IS_memory_monitor :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_memory_monitor_GET_IFACE_wrapper")
    memory_monitor_GET_IFACE :: proc(ptr: glib.pointer) -> ^MemoryMonitorInterface ---

    @(link_name = "glib_autoptr_clear_GPowerProfileMonitor_wrapper")
    autoptr_clear_GPowerProfileMonitor :: proc(_ptr: ^PowerProfileMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GPowerProfileMonitor_wrapper")
    autoptr_cleanup_GPowerProfileMonitor :: proc(_ptr: ^^PowerProfileMonitor) ---

    @(link_name = "glib_autoptr_destroy_GPowerProfileMonitor_wrapper")
    autoptr_destroy_GPowerProfileMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPowerProfileMonitor_wrapper")
    listautoptr_cleanup_GPowerProfileMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPowerProfileMonitor_wrapper")
    slistautoptr_cleanup_GPowerProfileMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPowerProfileMonitor_wrapper")
    queueautoptr_cleanup_GPowerProfileMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "g_power_profile_monitor_wrapper")
    power_profile_monitor :: proc(ptr: glib.pointer) -> ^PowerProfileMonitor ---

    @(link_name = "g_IS_power_profile_monitor_wrapper")
    IS_power_profile_monitor :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "g_power_profile_monitor_GET_IFACE_wrapper")
    power_profile_monitor_GET_IFACE :: proc(ptr: glib.pointer) -> ^PowerProfileMonitorInterface ---

    @(link_name = "glib_autoptr_clear_GUnixConnection_wrapper")
    autoptr_clear_GUnixConnection :: proc(_ptr: ^UnixConnection) ---

    @(link_name = "glib_autoptr_cleanup_GUnixConnection_wrapper")
    autoptr_cleanup_GUnixConnection :: proc(_ptr: ^^UnixConnection) ---

    @(link_name = "glib_autoptr_destroy_GUnixConnection_wrapper")
    autoptr_destroy_GUnixConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUnixConnection_wrapper")
    listautoptr_cleanup_GUnixConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUnixConnection_wrapper")
    slistautoptr_cleanup_GUnixConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUnixConnection_wrapper")
    queueautoptr_cleanup_GUnixConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GUnixCredentialsMessage_wrapper")
    autoptr_clear_GUnixCredentialsMessage :: proc(_ptr: ^UnixCredentialsMessage) ---

    @(link_name = "glib_autoptr_cleanup_GUnixCredentialsMessage_wrapper")
    autoptr_cleanup_GUnixCredentialsMessage :: proc(_ptr: ^^UnixCredentialsMessage) ---

    @(link_name = "glib_autoptr_destroy_GUnixCredentialsMessage_wrapper")
    autoptr_destroy_GUnixCredentialsMessage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUnixCredentialsMessage_wrapper")
    listautoptr_cleanup_GUnixCredentialsMessage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUnixCredentialsMessage_wrapper")
    slistautoptr_cleanup_GUnixCredentialsMessage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUnixCredentialsMessage_wrapper")
    queueautoptr_cleanup_GUnixCredentialsMessage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GUnixFDList_wrapper")
    autoptr_clear_GUnixFDList :: proc(_ptr: ^UnixFDList) ---

    @(link_name = "glib_autoptr_cleanup_GUnixFDList_wrapper")
    autoptr_cleanup_GUnixFDList :: proc(_ptr: ^^UnixFDList) ---

    @(link_name = "glib_autoptr_destroy_GUnixFDList_wrapper")
    autoptr_destroy_GUnixFDList :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUnixFDList_wrapper")
    listautoptr_cleanup_GUnixFDList :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUnixFDList_wrapper")
    slistautoptr_cleanup_GUnixFDList :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUnixFDList_wrapper")
    queueautoptr_cleanup_GUnixFDList :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GUnixSocketAddress_wrapper")
    autoptr_clear_GUnixSocketAddress :: proc(_ptr: ^UnixSocketAddress) ---

    @(link_name = "glib_autoptr_cleanup_GUnixSocketAddress_wrapper")
    autoptr_cleanup_GUnixSocketAddress :: proc(_ptr: ^^UnixSocketAddress) ---

    @(link_name = "glib_autoptr_destroy_GUnixSocketAddress_wrapper")
    autoptr_destroy_GUnixSocketAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GUnixSocketAddress_wrapper")
    listautoptr_cleanup_GUnixSocketAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GUnixSocketAddress_wrapper")
    slistautoptr_cleanup_GUnixSocketAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GUnixSocketAddress_wrapper")
    queueautoptr_cleanup_GUnixSocketAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAction_wrapper")
    autoptr_clear_GAction :: proc(_ptr: ^Action) ---

    @(link_name = "glib_autoptr_cleanup_GAction_wrapper")
    autoptr_cleanup_GAction :: proc(_ptr: ^^Action) ---

    @(link_name = "glib_autoptr_destroy_GAction_wrapper")
    autoptr_destroy_GAction :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAction_wrapper")
    listautoptr_cleanup_GAction :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAction_wrapper")
    slistautoptr_cleanup_GAction :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAction_wrapper")
    queueautoptr_cleanup_GAction :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GActionMap_wrapper")
    autoptr_clear_GActionMap :: proc(_ptr: ^ActionMap) ---

    @(link_name = "glib_autoptr_cleanup_GActionMap_wrapper")
    autoptr_cleanup_GActionMap :: proc(_ptr: ^^ActionMap) ---

    @(link_name = "glib_autoptr_destroy_GActionMap_wrapper")
    autoptr_destroy_GActionMap :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GActionMap_wrapper")
    listautoptr_cleanup_GActionMap :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GActionMap_wrapper")
    slistautoptr_cleanup_GActionMap :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GActionMap_wrapper")
    queueautoptr_cleanup_GActionMap :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAppInfo_wrapper")
    autoptr_clear_GAppInfo :: proc(_ptr: ^AppInfo) ---

    @(link_name = "glib_autoptr_cleanup_GAppInfo_wrapper")
    autoptr_cleanup_GAppInfo :: proc(_ptr: ^^AppInfo) ---

    @(link_name = "glib_autoptr_destroy_GAppInfo_wrapper")
    autoptr_destroy_GAppInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAppInfo_wrapper")
    listautoptr_cleanup_GAppInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAppInfo_wrapper")
    slistautoptr_cleanup_GAppInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAppInfo_wrapper")
    queueautoptr_cleanup_GAppInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAppLaunchContext_wrapper")
    autoptr_clear_GAppLaunchContext :: proc(_ptr: ^AppLaunchContext) ---

    @(link_name = "glib_autoptr_cleanup_GAppLaunchContext_wrapper")
    autoptr_cleanup_GAppLaunchContext :: proc(_ptr: ^^AppLaunchContext) ---

    @(link_name = "glib_autoptr_destroy_GAppLaunchContext_wrapper")
    autoptr_destroy_GAppLaunchContext :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAppLaunchContext_wrapper")
    listautoptr_cleanup_GAppLaunchContext :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAppLaunchContext_wrapper")
    slistautoptr_cleanup_GAppLaunchContext :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAppLaunchContext_wrapper")
    queueautoptr_cleanup_GAppLaunchContext :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAppInfoMonitor_wrapper")
    autoptr_clear_GAppInfoMonitor :: proc(_ptr: ^AppInfoMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GAppInfoMonitor_wrapper")
    autoptr_cleanup_GAppInfoMonitor :: proc(_ptr: ^^AppInfoMonitor) ---

    @(link_name = "glib_autoptr_destroy_GAppInfoMonitor_wrapper")
    autoptr_destroy_GAppInfoMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAppInfoMonitor_wrapper")
    listautoptr_cleanup_GAppInfoMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAppInfoMonitor_wrapper")
    slistautoptr_cleanup_GAppInfoMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAppInfoMonitor_wrapper")
    queueautoptr_cleanup_GAppInfoMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GApplicationCommandLine_wrapper")
    autoptr_clear_GApplicationCommandLine :: proc(_ptr: ^ApplicationCommandLine) ---

    @(link_name = "glib_autoptr_cleanup_GApplicationCommandLine_wrapper")
    autoptr_cleanup_GApplicationCommandLine :: proc(_ptr: ^^ApplicationCommandLine) ---

    @(link_name = "glib_autoptr_destroy_GApplicationCommandLine_wrapper")
    autoptr_destroy_GApplicationCommandLine :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GApplicationCommandLine_wrapper")
    listautoptr_cleanup_GApplicationCommandLine :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GApplicationCommandLine_wrapper")
    slistautoptr_cleanup_GApplicationCommandLine :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GApplicationCommandLine_wrapper")
    queueautoptr_cleanup_GApplicationCommandLine :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GApplication_wrapper")
    autoptr_clear_GApplication :: proc(_ptr: ^Application) ---

    @(link_name = "glib_autoptr_cleanup_GApplication_wrapper")
    autoptr_cleanup_GApplication :: proc(_ptr: ^^Application) ---

    @(link_name = "glib_autoptr_destroy_GApplication_wrapper")
    autoptr_destroy_GApplication :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GApplication_wrapper")
    listautoptr_cleanup_GApplication :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GApplication_wrapper")
    slistautoptr_cleanup_GApplication :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GApplication_wrapper")
    queueautoptr_cleanup_GApplication :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAsyncInitable_wrapper")
    autoptr_clear_GAsyncInitable :: proc(_ptr: ^AsyncInitable) ---

    @(link_name = "glib_autoptr_cleanup_GAsyncInitable_wrapper")
    autoptr_cleanup_GAsyncInitable :: proc(_ptr: ^^AsyncInitable) ---

    @(link_name = "glib_autoptr_destroy_GAsyncInitable_wrapper")
    autoptr_destroy_GAsyncInitable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAsyncInitable_wrapper")
    listautoptr_cleanup_GAsyncInitable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAsyncInitable_wrapper")
    slistautoptr_cleanup_GAsyncInitable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAsyncInitable_wrapper")
    queueautoptr_cleanup_GAsyncInitable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GAsyncResult_wrapper")
    autoptr_clear_GAsyncResult :: proc(_ptr: ^AsyncResult) ---

    @(link_name = "glib_autoptr_cleanup_GAsyncResult_wrapper")
    autoptr_cleanup_GAsyncResult :: proc(_ptr: ^^AsyncResult) ---

    @(link_name = "glib_autoptr_destroy_GAsyncResult_wrapper")
    autoptr_destroy_GAsyncResult :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GAsyncResult_wrapper")
    listautoptr_cleanup_GAsyncResult :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GAsyncResult_wrapper")
    slistautoptr_cleanup_GAsyncResult :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GAsyncResult_wrapper")
    queueautoptr_cleanup_GAsyncResult :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GBufferedInputStream_wrapper")
    autoptr_clear_GBufferedInputStream :: proc(_ptr: ^BufferedInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GBufferedInputStream_wrapper")
    autoptr_cleanup_GBufferedInputStream :: proc(_ptr: ^^BufferedInputStream) ---

    @(link_name = "glib_autoptr_destroy_GBufferedInputStream_wrapper")
    autoptr_destroy_GBufferedInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GBufferedInputStream_wrapper")
    listautoptr_cleanup_GBufferedInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GBufferedInputStream_wrapper")
    slistautoptr_cleanup_GBufferedInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GBufferedInputStream_wrapper")
    queueautoptr_cleanup_GBufferedInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GBufferedOutputStream_wrapper")
    autoptr_clear_GBufferedOutputStream :: proc(_ptr: ^BufferedOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GBufferedOutputStream_wrapper")
    autoptr_cleanup_GBufferedOutputStream :: proc(_ptr: ^^BufferedOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GBufferedOutputStream_wrapper")
    autoptr_destroy_GBufferedOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GBufferedOutputStream_wrapper")
    listautoptr_cleanup_GBufferedOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GBufferedOutputStream_wrapper")
    slistautoptr_cleanup_GBufferedOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GBufferedOutputStream_wrapper")
    queueautoptr_cleanup_GBufferedOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GBytesIcon_wrapper")
    autoptr_clear_GBytesIcon :: proc(_ptr: ^BytesIcon) ---

    @(link_name = "glib_autoptr_cleanup_GBytesIcon_wrapper")
    autoptr_cleanup_GBytesIcon :: proc(_ptr: ^^BytesIcon) ---

    @(link_name = "glib_autoptr_destroy_GBytesIcon_wrapper")
    autoptr_destroy_GBytesIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GBytesIcon_wrapper")
    listautoptr_cleanup_GBytesIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GBytesIcon_wrapper")
    slistautoptr_cleanup_GBytesIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GBytesIcon_wrapper")
    queueautoptr_cleanup_GBytesIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GCancellable_wrapper")
    autoptr_clear_GCancellable :: proc(_ptr: ^Cancellable) ---

    @(link_name = "glib_autoptr_cleanup_GCancellable_wrapper")
    autoptr_cleanup_GCancellable :: proc(_ptr: ^^Cancellable) ---

    @(link_name = "glib_autoptr_destroy_GCancellable_wrapper")
    autoptr_destroy_GCancellable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GCancellable_wrapper")
    listautoptr_cleanup_GCancellable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GCancellable_wrapper")
    slistautoptr_cleanup_GCancellable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GCancellable_wrapper")
    queueautoptr_cleanup_GCancellable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GCharsetConverter_wrapper")
    autoptr_clear_GCharsetConverter :: proc(_ptr: ^CharsetConverter) ---

    @(link_name = "glib_autoptr_cleanup_GCharsetConverter_wrapper")
    autoptr_cleanup_GCharsetConverter :: proc(_ptr: ^^CharsetConverter) ---

    @(link_name = "glib_autoptr_destroy_GCharsetConverter_wrapper")
    autoptr_destroy_GCharsetConverter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GCharsetConverter_wrapper")
    listautoptr_cleanup_GCharsetConverter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GCharsetConverter_wrapper")
    slistautoptr_cleanup_GCharsetConverter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GCharsetConverter_wrapper")
    queueautoptr_cleanup_GCharsetConverter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GConverter_wrapper")
    autoptr_clear_GConverter :: proc(_ptr: ^Converter) ---

    @(link_name = "glib_autoptr_cleanup_GConverter_wrapper")
    autoptr_cleanup_GConverter :: proc(_ptr: ^^Converter) ---

    @(link_name = "glib_autoptr_destroy_GConverter_wrapper")
    autoptr_destroy_GConverter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GConverter_wrapper")
    listautoptr_cleanup_GConverter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GConverter_wrapper")
    slistautoptr_cleanup_GConverter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GConverter_wrapper")
    queueautoptr_cleanup_GConverter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GConverterInputStream_wrapper")
    autoptr_clear_GConverterInputStream :: proc(_ptr: ^ConverterInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GConverterInputStream_wrapper")
    autoptr_cleanup_GConverterInputStream :: proc(_ptr: ^^ConverterInputStream) ---

    @(link_name = "glib_autoptr_destroy_GConverterInputStream_wrapper")
    autoptr_destroy_GConverterInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GConverterInputStream_wrapper")
    listautoptr_cleanup_GConverterInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GConverterInputStream_wrapper")
    slistautoptr_cleanup_GConverterInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GConverterInputStream_wrapper")
    queueautoptr_cleanup_GConverterInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GConverterOutputStream_wrapper")
    autoptr_clear_GConverterOutputStream :: proc(_ptr: ^ConverterOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GConverterOutputStream_wrapper")
    autoptr_cleanup_GConverterOutputStream :: proc(_ptr: ^^ConverterOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GConverterOutputStream_wrapper")
    autoptr_destroy_GConverterOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GConverterOutputStream_wrapper")
    listautoptr_cleanup_GConverterOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GConverterOutputStream_wrapper")
    slistautoptr_cleanup_GConverterOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GConverterOutputStream_wrapper")
    queueautoptr_cleanup_GConverterOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GCredentials_wrapper")
    autoptr_clear_GCredentials :: proc(_ptr: ^Credentials) ---

    @(link_name = "glib_autoptr_cleanup_GCredentials_wrapper")
    autoptr_cleanup_GCredentials :: proc(_ptr: ^^Credentials) ---

    @(link_name = "glib_autoptr_destroy_GCredentials_wrapper")
    autoptr_destroy_GCredentials :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GCredentials_wrapper")
    listautoptr_cleanup_GCredentials :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GCredentials_wrapper")
    slistautoptr_cleanup_GCredentials :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GCredentials_wrapper")
    queueautoptr_cleanup_GCredentials :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDatagramBased_wrapper")
    autoptr_clear_GDatagramBased :: proc(_ptr: ^DatagramBased) ---

    @(link_name = "glib_autoptr_cleanup_GDatagramBased_wrapper")
    autoptr_cleanup_GDatagramBased :: proc(_ptr: ^^DatagramBased) ---

    @(link_name = "glib_autoptr_destroy_GDatagramBased_wrapper")
    autoptr_destroy_GDatagramBased :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDatagramBased_wrapper")
    listautoptr_cleanup_GDatagramBased :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDatagramBased_wrapper")
    slistautoptr_cleanup_GDatagramBased :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDatagramBased_wrapper")
    queueautoptr_cleanup_GDatagramBased :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDataInputStream_wrapper")
    autoptr_clear_GDataInputStream :: proc(_ptr: ^DataInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GDataInputStream_wrapper")
    autoptr_cleanup_GDataInputStream :: proc(_ptr: ^^DataInputStream) ---

    @(link_name = "glib_autoptr_destroy_GDataInputStream_wrapper")
    autoptr_destroy_GDataInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDataInputStream_wrapper")
    listautoptr_cleanup_GDataInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDataInputStream_wrapper")
    slistautoptr_cleanup_GDataInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDataInputStream_wrapper")
    queueautoptr_cleanup_GDataInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDataOutputStream_wrapper")
    autoptr_clear_GDataOutputStream :: proc(_ptr: ^DataOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GDataOutputStream_wrapper")
    autoptr_cleanup_GDataOutputStream :: proc(_ptr: ^^DataOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GDataOutputStream_wrapper")
    autoptr_destroy_GDataOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDataOutputStream_wrapper")
    listautoptr_cleanup_GDataOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDataOutputStream_wrapper")
    slistautoptr_cleanup_GDataOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDataOutputStream_wrapper")
    queueautoptr_cleanup_GDataOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusActionGroup_wrapper")
    autoptr_clear_GDBusActionGroup :: proc(_ptr: ^DBusActionGroup) ---

    @(link_name = "glib_autoptr_cleanup_GDBusActionGroup_wrapper")
    autoptr_cleanup_GDBusActionGroup :: proc(_ptr: ^^DBusActionGroup) ---

    @(link_name = "glib_autoptr_destroy_GDBusActionGroup_wrapper")
    autoptr_destroy_GDBusActionGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusActionGroup_wrapper")
    listautoptr_cleanup_GDBusActionGroup :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusActionGroup_wrapper")
    slistautoptr_cleanup_GDBusActionGroup :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusActionGroup_wrapper")
    queueautoptr_cleanup_GDBusActionGroup :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusAuthObserver_wrapper")
    autoptr_clear_GDBusAuthObserver :: proc(_ptr: ^DBusAuthObserver) ---

    @(link_name = "glib_autoptr_cleanup_GDBusAuthObserver_wrapper")
    autoptr_cleanup_GDBusAuthObserver :: proc(_ptr: ^^DBusAuthObserver) ---

    @(link_name = "glib_autoptr_destroy_GDBusAuthObserver_wrapper")
    autoptr_destroy_GDBusAuthObserver :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusAuthObserver_wrapper")
    listautoptr_cleanup_GDBusAuthObserver :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusAuthObserver_wrapper")
    slistautoptr_cleanup_GDBusAuthObserver :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusAuthObserver_wrapper")
    queueautoptr_cleanup_GDBusAuthObserver :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusConnection_wrapper")
    autoptr_clear_GDBusConnection :: proc(_ptr: ^DBusConnection) ---

    @(link_name = "glib_autoptr_cleanup_GDBusConnection_wrapper")
    autoptr_cleanup_GDBusConnection :: proc(_ptr: ^^DBusConnection) ---

    @(link_name = "glib_autoptr_destroy_GDBusConnection_wrapper")
    autoptr_destroy_GDBusConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusConnection_wrapper")
    listautoptr_cleanup_GDBusConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusConnection_wrapper")
    slistautoptr_cleanup_GDBusConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusConnection_wrapper")
    queueautoptr_cleanup_GDBusConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusInterface_wrapper")
    autoptr_clear_GDBusInterface :: proc(_ptr: ^DBusInterface) ---

    @(link_name = "glib_autoptr_cleanup_GDBusInterface_wrapper")
    autoptr_cleanup_GDBusInterface :: proc(_ptr: ^^DBusInterface) ---

    @(link_name = "glib_autoptr_destroy_GDBusInterface_wrapper")
    autoptr_destroy_GDBusInterface :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusInterface_wrapper")
    listautoptr_cleanup_GDBusInterface :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusInterface_wrapper")
    slistautoptr_cleanup_GDBusInterface :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusInterface_wrapper")
    queueautoptr_cleanup_GDBusInterface :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusInterfaceSkeleton_wrapper")
    autoptr_clear_GDBusInterfaceSkeleton :: proc(_ptr: ^DBusInterfaceSkeleton) ---

    @(link_name = "glib_autoptr_cleanup_GDBusInterfaceSkeleton_wrapper")
    autoptr_cleanup_GDBusInterfaceSkeleton :: proc(_ptr: ^^DBusInterfaceSkeleton) ---

    @(link_name = "glib_autoptr_destroy_GDBusInterfaceSkeleton_wrapper")
    autoptr_destroy_GDBusInterfaceSkeleton :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusInterfaceSkeleton_wrapper")
    listautoptr_cleanup_GDBusInterfaceSkeleton :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusInterfaceSkeleton_wrapper")
    slistautoptr_cleanup_GDBusInterfaceSkeleton :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusInterfaceSkeleton_wrapper")
    queueautoptr_cleanup_GDBusInterfaceSkeleton :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusMenuModel_wrapper")
    autoptr_clear_GDBusMenuModel :: proc(_ptr: ^DBusMenuModel) ---

    @(link_name = "glib_autoptr_cleanup_GDBusMenuModel_wrapper")
    autoptr_cleanup_GDBusMenuModel :: proc(_ptr: ^^DBusMenuModel) ---

    @(link_name = "glib_autoptr_destroy_GDBusMenuModel_wrapper")
    autoptr_destroy_GDBusMenuModel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusMenuModel_wrapper")
    listautoptr_cleanup_GDBusMenuModel :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusMenuModel_wrapper")
    slistautoptr_cleanup_GDBusMenuModel :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusMenuModel_wrapper")
    queueautoptr_cleanup_GDBusMenuModel :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusMessage_wrapper")
    autoptr_clear_GDBusMessage :: proc(_ptr: ^DBusMessage) ---

    @(link_name = "glib_autoptr_cleanup_GDBusMessage_wrapper")
    autoptr_cleanup_GDBusMessage :: proc(_ptr: ^^DBusMessage) ---

    @(link_name = "glib_autoptr_destroy_GDBusMessage_wrapper")
    autoptr_destroy_GDBusMessage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusMessage_wrapper")
    listautoptr_cleanup_GDBusMessage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusMessage_wrapper")
    slistautoptr_cleanup_GDBusMessage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusMessage_wrapper")
    queueautoptr_cleanup_GDBusMessage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusMethodInvocation_wrapper")
    autoptr_clear_GDBusMethodInvocation :: proc(_ptr: ^DBusMethodInvocation) ---

    @(link_name = "glib_autoptr_cleanup_GDBusMethodInvocation_wrapper")
    autoptr_cleanup_GDBusMethodInvocation :: proc(_ptr: ^^DBusMethodInvocation) ---

    @(link_name = "glib_autoptr_destroy_GDBusMethodInvocation_wrapper")
    autoptr_destroy_GDBusMethodInvocation :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusMethodInvocation_wrapper")
    listautoptr_cleanup_GDBusMethodInvocation :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusMethodInvocation_wrapper")
    slistautoptr_cleanup_GDBusMethodInvocation :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusMethodInvocation_wrapper")
    queueautoptr_cleanup_GDBusMethodInvocation :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusNodeInfo_wrapper")
    autoptr_clear_GDBusNodeInfo :: proc(_ptr: ^DBusNodeInfo) ---

    @(link_name = "glib_autoptr_cleanup_GDBusNodeInfo_wrapper")
    autoptr_cleanup_GDBusNodeInfo :: proc(_ptr: ^^DBusNodeInfo) ---

    @(link_name = "glib_autoptr_destroy_GDBusNodeInfo_wrapper")
    autoptr_destroy_GDBusNodeInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusNodeInfo_wrapper")
    listautoptr_cleanup_GDBusNodeInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusNodeInfo_wrapper")
    slistautoptr_cleanup_GDBusNodeInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusNodeInfo_wrapper")
    queueautoptr_cleanup_GDBusNodeInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObject_wrapper")
    autoptr_clear_GDBusObject :: proc(_ptr: ^DBusObject) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObject_wrapper")
    autoptr_cleanup_GDBusObject :: proc(_ptr: ^^DBusObject) ---

    @(link_name = "glib_autoptr_destroy_GDBusObject_wrapper")
    autoptr_destroy_GDBusObject :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObject_wrapper")
    listautoptr_cleanup_GDBusObject :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObject_wrapper")
    slistautoptr_cleanup_GDBusObject :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObject_wrapper")
    queueautoptr_cleanup_GDBusObject :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectManagerClient_wrapper")
    autoptr_clear_GDBusObjectManagerClient :: proc(_ptr: ^DBusObjectManagerClient) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectManagerClient_wrapper")
    autoptr_cleanup_GDBusObjectManagerClient :: proc(_ptr: ^^DBusObjectManagerClient) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectManagerClient_wrapper")
    autoptr_destroy_GDBusObjectManagerClient :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectManagerClient_wrapper")
    listautoptr_cleanup_GDBusObjectManagerClient :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectManagerClient_wrapper")
    slistautoptr_cleanup_GDBusObjectManagerClient :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectManagerClient_wrapper")
    queueautoptr_cleanup_GDBusObjectManagerClient :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectManager_wrapper")
    autoptr_clear_GDBusObjectManager :: proc(_ptr: ^DBusObjectManager) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectManager_wrapper")
    autoptr_cleanup_GDBusObjectManager :: proc(_ptr: ^^DBusObjectManager) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectManager_wrapper")
    autoptr_destroy_GDBusObjectManager :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectManager_wrapper")
    listautoptr_cleanup_GDBusObjectManager :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectManager_wrapper")
    slistautoptr_cleanup_GDBusObjectManager :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectManager_wrapper")
    queueautoptr_cleanup_GDBusObjectManager :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectManagerServer_wrapper")
    autoptr_clear_GDBusObjectManagerServer :: proc(_ptr: ^DBusObjectManagerServer) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectManagerServer_wrapper")
    autoptr_cleanup_GDBusObjectManagerServer :: proc(_ptr: ^^DBusObjectManagerServer) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectManagerServer_wrapper")
    autoptr_destroy_GDBusObjectManagerServer :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectManagerServer_wrapper")
    listautoptr_cleanup_GDBusObjectManagerServer :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectManagerServer_wrapper")
    slistautoptr_cleanup_GDBusObjectManagerServer :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectManagerServer_wrapper")
    queueautoptr_cleanup_GDBusObjectManagerServer :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectProxy_wrapper")
    autoptr_clear_GDBusObjectProxy :: proc(_ptr: ^DBusObjectProxy) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectProxy_wrapper")
    autoptr_cleanup_GDBusObjectProxy :: proc(_ptr: ^^DBusObjectProxy) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectProxy_wrapper")
    autoptr_destroy_GDBusObjectProxy :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectProxy_wrapper")
    listautoptr_cleanup_GDBusObjectProxy :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectProxy_wrapper")
    slistautoptr_cleanup_GDBusObjectProxy :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectProxy_wrapper")
    queueautoptr_cleanup_GDBusObjectProxy :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusObjectSkeleton_wrapper")
    autoptr_clear_GDBusObjectSkeleton :: proc(_ptr: ^DBusObjectSkeleton) ---

    @(link_name = "glib_autoptr_cleanup_GDBusObjectSkeleton_wrapper")
    autoptr_cleanup_GDBusObjectSkeleton :: proc(_ptr: ^^DBusObjectSkeleton) ---

    @(link_name = "glib_autoptr_destroy_GDBusObjectSkeleton_wrapper")
    autoptr_destroy_GDBusObjectSkeleton :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusObjectSkeleton_wrapper")
    listautoptr_cleanup_GDBusObjectSkeleton :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusObjectSkeleton_wrapper")
    slistautoptr_cleanup_GDBusObjectSkeleton :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusObjectSkeleton_wrapper")
    queueautoptr_cleanup_GDBusObjectSkeleton :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusProxy_wrapper")
    autoptr_clear_GDBusProxy :: proc(_ptr: ^DBusProxy) ---

    @(link_name = "glib_autoptr_cleanup_GDBusProxy_wrapper")
    autoptr_cleanup_GDBusProxy :: proc(_ptr: ^^DBusProxy) ---

    @(link_name = "glib_autoptr_destroy_GDBusProxy_wrapper")
    autoptr_destroy_GDBusProxy :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusProxy_wrapper")
    listautoptr_cleanup_GDBusProxy :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusProxy_wrapper")
    slistautoptr_cleanup_GDBusProxy :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusProxy_wrapper")
    queueautoptr_cleanup_GDBusProxy :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDBusServer_wrapper")
    autoptr_clear_GDBusServer :: proc(_ptr: ^DBusServer) ---

    @(link_name = "glib_autoptr_cleanup_GDBusServer_wrapper")
    autoptr_cleanup_GDBusServer :: proc(_ptr: ^^DBusServer) ---

    @(link_name = "glib_autoptr_destroy_GDBusServer_wrapper")
    autoptr_destroy_GDBusServer :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDBusServer_wrapper")
    listautoptr_cleanup_GDBusServer :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDBusServer_wrapper")
    slistautoptr_cleanup_GDBusServer :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDBusServer_wrapper")
    queueautoptr_cleanup_GDBusServer :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GDrive_wrapper")
    autoptr_clear_GDrive :: proc(_ptr: ^Drive) ---

    @(link_name = "glib_autoptr_cleanup_GDrive_wrapper")
    autoptr_cleanup_GDrive :: proc(_ptr: ^^Drive) ---

    @(link_name = "glib_autoptr_destroy_GDrive_wrapper")
    autoptr_destroy_GDrive :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GDrive_wrapper")
    listautoptr_cleanup_GDrive :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GDrive_wrapper")
    slistautoptr_cleanup_GDrive :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GDrive_wrapper")
    queueautoptr_cleanup_GDrive :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GEmblemedIcon_wrapper")
    autoptr_clear_GEmblemedIcon :: proc(_ptr: ^EmblemedIcon) ---

    @(link_name = "glib_autoptr_cleanup_GEmblemedIcon_wrapper")
    autoptr_cleanup_GEmblemedIcon :: proc(_ptr: ^^EmblemedIcon) ---

    @(link_name = "glib_autoptr_destroy_GEmblemedIcon_wrapper")
    autoptr_destroy_GEmblemedIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GEmblemedIcon_wrapper")
    listautoptr_cleanup_GEmblemedIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GEmblemedIcon_wrapper")
    slistautoptr_cleanup_GEmblemedIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GEmblemedIcon_wrapper")
    queueautoptr_cleanup_GEmblemedIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GEmblem_wrapper")
    autoptr_clear_GEmblem :: proc(_ptr: ^Emblem) ---

    @(link_name = "glib_autoptr_cleanup_GEmblem_wrapper")
    autoptr_cleanup_GEmblem :: proc(_ptr: ^^Emblem) ---

    @(link_name = "glib_autoptr_destroy_GEmblem_wrapper")
    autoptr_destroy_GEmblem :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GEmblem_wrapper")
    listautoptr_cleanup_GEmblem :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GEmblem_wrapper")
    slistautoptr_cleanup_GEmblem :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GEmblem_wrapper")
    queueautoptr_cleanup_GEmblem :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileEnumerator_wrapper")
    autoptr_clear_GFileEnumerator :: proc(_ptr: ^FileEnumerator) ---

    @(link_name = "glib_autoptr_cleanup_GFileEnumerator_wrapper")
    autoptr_cleanup_GFileEnumerator :: proc(_ptr: ^^FileEnumerator) ---

    @(link_name = "glib_autoptr_destroy_GFileEnumerator_wrapper")
    autoptr_destroy_GFileEnumerator :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileEnumerator_wrapper")
    listautoptr_cleanup_GFileEnumerator :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileEnumerator_wrapper")
    slistautoptr_cleanup_GFileEnumerator :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileEnumerator_wrapper")
    queueautoptr_cleanup_GFileEnumerator :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFile_wrapper")
    autoptr_clear_GFile :: proc(_ptr: ^File) ---

    @(link_name = "glib_autoptr_cleanup_GFile_wrapper")
    autoptr_cleanup_GFile :: proc(_ptr: ^^File) ---

    @(link_name = "glib_autoptr_destroy_GFile_wrapper")
    autoptr_destroy_GFile :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFile_wrapper")
    listautoptr_cleanup_GFile :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFile_wrapper")
    slistautoptr_cleanup_GFile :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFile_wrapper")
    queueautoptr_cleanup_GFile :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileAttributeInfoList_wrapper")
    autoptr_clear_GFileAttributeInfoList :: proc(_ptr: ^FileAttributeInfoList) ---

    @(link_name = "glib_autoptr_cleanup_GFileAttributeInfoList_wrapper")
    autoptr_cleanup_GFileAttributeInfoList :: proc(_ptr: ^^FileAttributeInfoList) ---

    @(link_name = "glib_autoptr_destroy_GFileAttributeInfoList_wrapper")
    autoptr_destroy_GFileAttributeInfoList :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileAttributeInfoList_wrapper")
    listautoptr_cleanup_GFileAttributeInfoList :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileAttributeInfoList_wrapper")
    slistautoptr_cleanup_GFileAttributeInfoList :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileAttributeInfoList_wrapper")
    queueautoptr_cleanup_GFileAttributeInfoList :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileIcon_wrapper")
    autoptr_clear_GFileIcon :: proc(_ptr: ^FileIcon) ---

    @(link_name = "glib_autoptr_cleanup_GFileIcon_wrapper")
    autoptr_cleanup_GFileIcon :: proc(_ptr: ^^FileIcon) ---

    @(link_name = "glib_autoptr_destroy_GFileIcon_wrapper")
    autoptr_destroy_GFileIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileIcon_wrapper")
    listautoptr_cleanup_GFileIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileIcon_wrapper")
    slistautoptr_cleanup_GFileIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileIcon_wrapper")
    queueautoptr_cleanup_GFileIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileInfo_wrapper")
    autoptr_clear_GFileInfo :: proc(_ptr: ^FileInfo) ---

    @(link_name = "glib_autoptr_cleanup_GFileInfo_wrapper")
    autoptr_cleanup_GFileInfo :: proc(_ptr: ^^FileInfo) ---

    @(link_name = "glib_autoptr_destroy_GFileInfo_wrapper")
    autoptr_destroy_GFileInfo :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileInfo_wrapper")
    listautoptr_cleanup_GFileInfo :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileInfo_wrapper")
    slistautoptr_cleanup_GFileInfo :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileInfo_wrapper")
    queueautoptr_cleanup_GFileInfo :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileInputStream_wrapper")
    autoptr_clear_GFileInputStream :: proc(_ptr: ^FileInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GFileInputStream_wrapper")
    autoptr_cleanup_GFileInputStream :: proc(_ptr: ^^FileInputStream) ---

    @(link_name = "glib_autoptr_destroy_GFileInputStream_wrapper")
    autoptr_destroy_GFileInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileInputStream_wrapper")
    listautoptr_cleanup_GFileInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileInputStream_wrapper")
    slistautoptr_cleanup_GFileInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileInputStream_wrapper")
    queueautoptr_cleanup_GFileInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileIOStream_wrapper")
    autoptr_clear_GFileIOStream :: proc(_ptr: ^FileIOStream) ---

    @(link_name = "glib_autoptr_cleanup_GFileIOStream_wrapper")
    autoptr_cleanup_GFileIOStream :: proc(_ptr: ^^FileIOStream) ---

    @(link_name = "glib_autoptr_destroy_GFileIOStream_wrapper")
    autoptr_destroy_GFileIOStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileIOStream_wrapper")
    listautoptr_cleanup_GFileIOStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileIOStream_wrapper")
    slistautoptr_cleanup_GFileIOStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileIOStream_wrapper")
    queueautoptr_cleanup_GFileIOStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileMonitor_wrapper")
    autoptr_clear_GFileMonitor :: proc(_ptr: ^FileMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GFileMonitor_wrapper")
    autoptr_cleanup_GFileMonitor :: proc(_ptr: ^^FileMonitor) ---

    @(link_name = "glib_autoptr_destroy_GFileMonitor_wrapper")
    autoptr_destroy_GFileMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileMonitor_wrapper")
    listautoptr_cleanup_GFileMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileMonitor_wrapper")
    slistautoptr_cleanup_GFileMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileMonitor_wrapper")
    queueautoptr_cleanup_GFileMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFilenameCompleter_wrapper")
    autoptr_clear_GFilenameCompleter :: proc(_ptr: ^FilenameCompleter) ---

    @(link_name = "glib_autoptr_cleanup_GFilenameCompleter_wrapper")
    autoptr_cleanup_GFilenameCompleter :: proc(_ptr: ^^FilenameCompleter) ---

    @(link_name = "glib_autoptr_destroy_GFilenameCompleter_wrapper")
    autoptr_destroy_GFilenameCompleter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFilenameCompleter_wrapper")
    listautoptr_cleanup_GFilenameCompleter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFilenameCompleter_wrapper")
    slistautoptr_cleanup_GFilenameCompleter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFilenameCompleter_wrapper")
    queueautoptr_cleanup_GFilenameCompleter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFileOutputStream_wrapper")
    autoptr_clear_GFileOutputStream :: proc(_ptr: ^FileOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GFileOutputStream_wrapper")
    autoptr_cleanup_GFileOutputStream :: proc(_ptr: ^^FileOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GFileOutputStream_wrapper")
    autoptr_destroy_GFileOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFileOutputStream_wrapper")
    listautoptr_cleanup_GFileOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFileOutputStream_wrapper")
    slistautoptr_cleanup_GFileOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFileOutputStream_wrapper")
    queueautoptr_cleanup_GFileOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFilterInputStream_wrapper")
    autoptr_clear_GFilterInputStream :: proc(_ptr: ^FilterInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GFilterInputStream_wrapper")
    autoptr_cleanup_GFilterInputStream :: proc(_ptr: ^^FilterInputStream) ---

    @(link_name = "glib_autoptr_destroy_GFilterInputStream_wrapper")
    autoptr_destroy_GFilterInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFilterInputStream_wrapper")
    listautoptr_cleanup_GFilterInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFilterInputStream_wrapper")
    slistautoptr_cleanup_GFilterInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFilterInputStream_wrapper")
    queueautoptr_cleanup_GFilterInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GFilterOutputStream_wrapper")
    autoptr_clear_GFilterOutputStream :: proc(_ptr: ^FilterOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GFilterOutputStream_wrapper")
    autoptr_cleanup_GFilterOutputStream :: proc(_ptr: ^^FilterOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GFilterOutputStream_wrapper")
    autoptr_destroy_GFilterOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GFilterOutputStream_wrapper")
    listautoptr_cleanup_GFilterOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GFilterOutputStream_wrapper")
    slistautoptr_cleanup_GFilterOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GFilterOutputStream_wrapper")
    queueautoptr_cleanup_GFilterOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIcon_wrapper")
    autoptr_clear_GIcon :: proc(_ptr: ^Icon) ---

    @(link_name = "glib_autoptr_cleanup_GIcon_wrapper")
    autoptr_cleanup_GIcon :: proc(_ptr: ^^Icon) ---

    @(link_name = "glib_autoptr_destroy_GIcon_wrapper")
    autoptr_destroy_GIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIcon_wrapper")
    listautoptr_cleanup_GIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIcon_wrapper")
    slistautoptr_cleanup_GIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIcon_wrapper")
    queueautoptr_cleanup_GIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInetAddress_wrapper")
    autoptr_clear_GInetAddress :: proc(_ptr: ^InetAddress) ---

    @(link_name = "glib_autoptr_cleanup_GInetAddress_wrapper")
    autoptr_cleanup_GInetAddress :: proc(_ptr: ^^InetAddress) ---

    @(link_name = "glib_autoptr_destroy_GInetAddress_wrapper")
    autoptr_destroy_GInetAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInetAddress_wrapper")
    listautoptr_cleanup_GInetAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInetAddress_wrapper")
    slistautoptr_cleanup_GInetAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInetAddress_wrapper")
    queueautoptr_cleanup_GInetAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInetAddressMask_wrapper")
    autoptr_clear_GInetAddressMask :: proc(_ptr: ^InetAddressMask) ---

    @(link_name = "glib_autoptr_cleanup_GInetAddressMask_wrapper")
    autoptr_cleanup_GInetAddressMask :: proc(_ptr: ^^InetAddressMask) ---

    @(link_name = "glib_autoptr_destroy_GInetAddressMask_wrapper")
    autoptr_destroy_GInetAddressMask :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInetAddressMask_wrapper")
    listautoptr_cleanup_GInetAddressMask :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInetAddressMask_wrapper")
    slistautoptr_cleanup_GInetAddressMask :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInetAddressMask_wrapper")
    queueautoptr_cleanup_GInetAddressMask :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInetSocketAddress_wrapper")
    autoptr_clear_GInetSocketAddress :: proc(_ptr: ^InetSocketAddress) ---

    @(link_name = "glib_autoptr_cleanup_GInetSocketAddress_wrapper")
    autoptr_cleanup_GInetSocketAddress :: proc(_ptr: ^^InetSocketAddress) ---

    @(link_name = "glib_autoptr_destroy_GInetSocketAddress_wrapper")
    autoptr_destroy_GInetSocketAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInetSocketAddress_wrapper")
    listautoptr_cleanup_GInetSocketAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInetSocketAddress_wrapper")
    slistautoptr_cleanup_GInetSocketAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInetSocketAddress_wrapper")
    queueautoptr_cleanup_GInetSocketAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInitable_wrapper")
    autoptr_clear_GInitable :: proc(_ptr: ^Initable) ---

    @(link_name = "glib_autoptr_cleanup_GInitable_wrapper")
    autoptr_cleanup_GInitable :: proc(_ptr: ^^Initable) ---

    @(link_name = "glib_autoptr_destroy_GInitable_wrapper")
    autoptr_destroy_GInitable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInitable_wrapper")
    listautoptr_cleanup_GInitable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInitable_wrapper")
    slistautoptr_cleanup_GInitable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInitable_wrapper")
    queueautoptr_cleanup_GInitable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GInputStream_wrapper")
    autoptr_clear_GInputStream :: proc(_ptr: ^InputStream) ---

    @(link_name = "glib_autoptr_cleanup_GInputStream_wrapper")
    autoptr_cleanup_GInputStream :: proc(_ptr: ^^InputStream) ---

    @(link_name = "glib_autoptr_destroy_GInputStream_wrapper")
    autoptr_destroy_GInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GInputStream_wrapper")
    listautoptr_cleanup_GInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GInputStream_wrapper")
    slistautoptr_cleanup_GInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GInputStream_wrapper")
    queueautoptr_cleanup_GInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIOModule_wrapper")
    autoptr_clear_GIOModule :: proc(_ptr: ^IOModule) ---

    @(link_name = "glib_autoptr_cleanup_GIOModule_wrapper")
    autoptr_cleanup_GIOModule :: proc(_ptr: ^^IOModule) ---

    @(link_name = "glib_autoptr_destroy_GIOModule_wrapper")
    autoptr_destroy_GIOModule :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIOModule_wrapper")
    listautoptr_cleanup_GIOModule :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIOModule_wrapper")
    slistautoptr_cleanup_GIOModule :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIOModule_wrapper")
    queueautoptr_cleanup_GIOModule :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GIOStream_wrapper")
    autoptr_clear_GIOStream :: proc(_ptr: ^IOStream) ---

    @(link_name = "glib_autoptr_cleanup_GIOStream_wrapper")
    autoptr_cleanup_GIOStream :: proc(_ptr: ^^IOStream) ---

    @(link_name = "glib_autoptr_destroy_GIOStream_wrapper")
    autoptr_destroy_GIOStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GIOStream_wrapper")
    listautoptr_cleanup_GIOStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GIOStream_wrapper")
    slistautoptr_cleanup_GIOStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GIOStream_wrapper")
    queueautoptr_cleanup_GIOStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GLoadableIcon_wrapper")
    autoptr_clear_GLoadableIcon :: proc(_ptr: ^LoadableIcon) ---

    @(link_name = "glib_autoptr_cleanup_GLoadableIcon_wrapper")
    autoptr_cleanup_GLoadableIcon :: proc(_ptr: ^^LoadableIcon) ---

    @(link_name = "glib_autoptr_destroy_GLoadableIcon_wrapper")
    autoptr_destroy_GLoadableIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GLoadableIcon_wrapper")
    listautoptr_cleanup_GLoadableIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GLoadableIcon_wrapper")
    slistautoptr_cleanup_GLoadableIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GLoadableIcon_wrapper")
    queueautoptr_cleanup_GLoadableIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMemoryInputStream_wrapper")
    autoptr_clear_GMemoryInputStream :: proc(_ptr: ^MemoryInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GMemoryInputStream_wrapper")
    autoptr_cleanup_GMemoryInputStream :: proc(_ptr: ^^MemoryInputStream) ---

    @(link_name = "glib_autoptr_destroy_GMemoryInputStream_wrapper")
    autoptr_destroy_GMemoryInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMemoryInputStream_wrapper")
    listautoptr_cleanup_GMemoryInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMemoryInputStream_wrapper")
    slistautoptr_cleanup_GMemoryInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMemoryInputStream_wrapper")
    queueautoptr_cleanup_GMemoryInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMemoryOutputStream_wrapper")
    autoptr_clear_GMemoryOutputStream :: proc(_ptr: ^MemoryOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GMemoryOutputStream_wrapper")
    autoptr_cleanup_GMemoryOutputStream :: proc(_ptr: ^^MemoryOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GMemoryOutputStream_wrapper")
    autoptr_destroy_GMemoryOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMemoryOutputStream_wrapper")
    listautoptr_cleanup_GMemoryOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMemoryOutputStream_wrapper")
    slistautoptr_cleanup_GMemoryOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMemoryOutputStream_wrapper")
    queueautoptr_cleanup_GMemoryOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenu_wrapper")
    autoptr_clear_GMenu :: proc(_ptr: ^Menu) ---

    @(link_name = "glib_autoptr_cleanup_GMenu_wrapper")
    autoptr_cleanup_GMenu :: proc(_ptr: ^^Menu) ---

    @(link_name = "glib_autoptr_destroy_GMenu_wrapper")
    autoptr_destroy_GMenu :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenu_wrapper")
    listautoptr_cleanup_GMenu :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenu_wrapper")
    slistautoptr_cleanup_GMenu :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenu_wrapper")
    queueautoptr_cleanup_GMenu :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenuItem_wrapper")
    autoptr_clear_GMenuItem :: proc(_ptr: ^MenuItem) ---

    @(link_name = "glib_autoptr_cleanup_GMenuItem_wrapper")
    autoptr_cleanup_GMenuItem :: proc(_ptr: ^^MenuItem) ---

    @(link_name = "glib_autoptr_destroy_GMenuItem_wrapper")
    autoptr_destroy_GMenuItem :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenuItem_wrapper")
    listautoptr_cleanup_GMenuItem :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenuItem_wrapper")
    slistautoptr_cleanup_GMenuItem :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenuItem_wrapper")
    queueautoptr_cleanup_GMenuItem :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenuModel_wrapper")
    autoptr_clear_GMenuModel :: proc(_ptr: ^MenuModel) ---

    @(link_name = "glib_autoptr_cleanup_GMenuModel_wrapper")
    autoptr_cleanup_GMenuModel :: proc(_ptr: ^^MenuModel) ---

    @(link_name = "glib_autoptr_destroy_GMenuModel_wrapper")
    autoptr_destroy_GMenuModel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenuModel_wrapper")
    listautoptr_cleanup_GMenuModel :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenuModel_wrapper")
    slistautoptr_cleanup_GMenuModel :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenuModel_wrapper")
    queueautoptr_cleanup_GMenuModel :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenuAttributeIter_wrapper")
    autoptr_clear_GMenuAttributeIter :: proc(_ptr: ^MenuAttributeIter) ---

    @(link_name = "glib_autoptr_cleanup_GMenuAttributeIter_wrapper")
    autoptr_cleanup_GMenuAttributeIter :: proc(_ptr: ^^MenuAttributeIter) ---

    @(link_name = "glib_autoptr_destroy_GMenuAttributeIter_wrapper")
    autoptr_destroy_GMenuAttributeIter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenuAttributeIter_wrapper")
    listautoptr_cleanup_GMenuAttributeIter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenuAttributeIter_wrapper")
    slistautoptr_cleanup_GMenuAttributeIter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenuAttributeIter_wrapper")
    queueautoptr_cleanup_GMenuAttributeIter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMenuLinkIter_wrapper")
    autoptr_clear_GMenuLinkIter :: proc(_ptr: ^MenuLinkIter) ---

    @(link_name = "glib_autoptr_cleanup_GMenuLinkIter_wrapper")
    autoptr_cleanup_GMenuLinkIter :: proc(_ptr: ^^MenuLinkIter) ---

    @(link_name = "glib_autoptr_destroy_GMenuLinkIter_wrapper")
    autoptr_destroy_GMenuLinkIter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMenuLinkIter_wrapper")
    listautoptr_cleanup_GMenuLinkIter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMenuLinkIter_wrapper")
    slistautoptr_cleanup_GMenuLinkIter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMenuLinkIter_wrapper")
    queueautoptr_cleanup_GMenuLinkIter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMount_wrapper")
    autoptr_clear_GMount :: proc(_ptr: ^Mount) ---

    @(link_name = "glib_autoptr_cleanup_GMount_wrapper")
    autoptr_cleanup_GMount :: proc(_ptr: ^^Mount) ---

    @(link_name = "glib_autoptr_destroy_GMount_wrapper")
    autoptr_destroy_GMount :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMount_wrapper")
    listautoptr_cleanup_GMount :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMount_wrapper")
    slistautoptr_cleanup_GMount :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMount_wrapper")
    queueautoptr_cleanup_GMount :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GMountOperation_wrapper")
    autoptr_clear_GMountOperation :: proc(_ptr: ^MountOperation) ---

    @(link_name = "glib_autoptr_cleanup_GMountOperation_wrapper")
    autoptr_cleanup_GMountOperation :: proc(_ptr: ^^MountOperation) ---

    @(link_name = "glib_autoptr_destroy_GMountOperation_wrapper")
    autoptr_destroy_GMountOperation :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GMountOperation_wrapper")
    listautoptr_cleanup_GMountOperation :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GMountOperation_wrapper")
    slistautoptr_cleanup_GMountOperation :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GMountOperation_wrapper")
    queueautoptr_cleanup_GMountOperation :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNativeVolumeMonitor_wrapper")
    autoptr_clear_GNativeVolumeMonitor :: proc(_ptr: ^NativeVolumeMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GNativeVolumeMonitor_wrapper")
    autoptr_cleanup_GNativeVolumeMonitor :: proc(_ptr: ^^NativeVolumeMonitor) ---

    @(link_name = "glib_autoptr_destroy_GNativeVolumeMonitor_wrapper")
    autoptr_destroy_GNativeVolumeMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNativeVolumeMonitor_wrapper")
    listautoptr_cleanup_GNativeVolumeMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNativeVolumeMonitor_wrapper")
    slistautoptr_cleanup_GNativeVolumeMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNativeVolumeMonitor_wrapper")
    queueautoptr_cleanup_GNativeVolumeMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNetworkAddress_wrapper")
    autoptr_clear_GNetworkAddress :: proc(_ptr: ^NetworkAddress) ---

    @(link_name = "glib_autoptr_cleanup_GNetworkAddress_wrapper")
    autoptr_cleanup_GNetworkAddress :: proc(_ptr: ^^NetworkAddress) ---

    @(link_name = "glib_autoptr_destroy_GNetworkAddress_wrapper")
    autoptr_destroy_GNetworkAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNetworkAddress_wrapper")
    listautoptr_cleanup_GNetworkAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNetworkAddress_wrapper")
    slistautoptr_cleanup_GNetworkAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNetworkAddress_wrapper")
    queueautoptr_cleanup_GNetworkAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNetworkMonitor_wrapper")
    autoptr_clear_GNetworkMonitor :: proc(_ptr: ^NetworkMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GNetworkMonitor_wrapper")
    autoptr_cleanup_GNetworkMonitor :: proc(_ptr: ^^NetworkMonitor) ---

    @(link_name = "glib_autoptr_destroy_GNetworkMonitor_wrapper")
    autoptr_destroy_GNetworkMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNetworkMonitor_wrapper")
    listautoptr_cleanup_GNetworkMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNetworkMonitor_wrapper")
    slistautoptr_cleanup_GNetworkMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNetworkMonitor_wrapper")
    queueautoptr_cleanup_GNetworkMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNetworkService_wrapper")
    autoptr_clear_GNetworkService :: proc(_ptr: ^NetworkService) ---

    @(link_name = "glib_autoptr_cleanup_GNetworkService_wrapper")
    autoptr_cleanup_GNetworkService :: proc(_ptr: ^^NetworkService) ---

    @(link_name = "glib_autoptr_destroy_GNetworkService_wrapper")
    autoptr_destroy_GNetworkService :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNetworkService_wrapper")
    listautoptr_cleanup_GNetworkService :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNetworkService_wrapper")
    slistautoptr_cleanup_GNetworkService :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNetworkService_wrapper")
    queueautoptr_cleanup_GNetworkService :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GNotification_wrapper")
    autoptr_clear_GNotification :: proc(_ptr: ^Notification) ---

    @(link_name = "glib_autoptr_cleanup_GNotification_wrapper")
    autoptr_cleanup_GNotification :: proc(_ptr: ^^Notification) ---

    @(link_name = "glib_autoptr_destroy_GNotification_wrapper")
    autoptr_destroy_GNotification :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GNotification_wrapper")
    listautoptr_cleanup_GNotification :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GNotification_wrapper")
    slistautoptr_cleanup_GNotification :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GNotification_wrapper")
    queueautoptr_cleanup_GNotification :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GOutputStream_wrapper")
    autoptr_clear_GOutputStream :: proc(_ptr: ^OutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GOutputStream_wrapper")
    autoptr_cleanup_GOutputStream :: proc(_ptr: ^^OutputStream) ---

    @(link_name = "glib_autoptr_destroy_GOutputStream_wrapper")
    autoptr_destroy_GOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GOutputStream_wrapper")
    listautoptr_cleanup_GOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GOutputStream_wrapper")
    slistautoptr_cleanup_GOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GOutputStream_wrapper")
    queueautoptr_cleanup_GOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GPermission_wrapper")
    autoptr_clear_GPermission :: proc(_ptr: ^Permission) ---

    @(link_name = "glib_autoptr_cleanup_GPermission_wrapper")
    autoptr_cleanup_GPermission :: proc(_ptr: ^^Permission) ---

    @(link_name = "glib_autoptr_destroy_GPermission_wrapper")
    autoptr_destroy_GPermission :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPermission_wrapper")
    listautoptr_cleanup_GPermission :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPermission_wrapper")
    slistautoptr_cleanup_GPermission :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPermission_wrapper")
    queueautoptr_cleanup_GPermission :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GPollableInputStream_wrapper")
    autoptr_clear_GPollableInputStream :: proc(_ptr: ^PollableInputStream) ---

    @(link_name = "glib_autoptr_cleanup_GPollableInputStream_wrapper")
    autoptr_cleanup_GPollableInputStream :: proc(_ptr: ^^PollableInputStream) ---

    @(link_name = "glib_autoptr_destroy_GPollableInputStream_wrapper")
    autoptr_destroy_GPollableInputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPollableInputStream_wrapper")
    listautoptr_cleanup_GPollableInputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPollableInputStream_wrapper")
    slistautoptr_cleanup_GPollableInputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPollableInputStream_wrapper")
    queueautoptr_cleanup_GPollableInputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GPollableOutputStream_wrapper")
    autoptr_clear_GPollableOutputStream :: proc(_ptr: ^PollableOutputStream) ---

    @(link_name = "glib_autoptr_cleanup_GPollableOutputStream_wrapper")
    autoptr_cleanup_GPollableOutputStream :: proc(_ptr: ^^PollableOutputStream) ---

    @(link_name = "glib_autoptr_destroy_GPollableOutputStream_wrapper")
    autoptr_destroy_GPollableOutputStream :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPollableOutputStream_wrapper")
    listautoptr_cleanup_GPollableOutputStream :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPollableOutputStream_wrapper")
    slistautoptr_cleanup_GPollableOutputStream :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPollableOutputStream_wrapper")
    queueautoptr_cleanup_GPollableOutputStream :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GPropertyAction_wrapper")
    autoptr_clear_GPropertyAction :: proc(_ptr: ^PropertyAction) ---

    @(link_name = "glib_autoptr_cleanup_GPropertyAction_wrapper")
    autoptr_cleanup_GPropertyAction :: proc(_ptr: ^^PropertyAction) ---

    @(link_name = "glib_autoptr_destroy_GPropertyAction_wrapper")
    autoptr_destroy_GPropertyAction :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GPropertyAction_wrapper")
    listautoptr_cleanup_GPropertyAction :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GPropertyAction_wrapper")
    slistautoptr_cleanup_GPropertyAction :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GPropertyAction_wrapper")
    queueautoptr_cleanup_GPropertyAction :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GProxyAddressEnumerator_wrapper")
    autoptr_clear_GProxyAddressEnumerator :: proc(_ptr: ^ProxyAddressEnumerator) ---

    @(link_name = "glib_autoptr_cleanup_GProxyAddressEnumerator_wrapper")
    autoptr_cleanup_GProxyAddressEnumerator :: proc(_ptr: ^^ProxyAddressEnumerator) ---

    @(link_name = "glib_autoptr_destroy_GProxyAddressEnumerator_wrapper")
    autoptr_destroy_GProxyAddressEnumerator :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GProxyAddressEnumerator_wrapper")
    listautoptr_cleanup_GProxyAddressEnumerator :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GProxyAddressEnumerator_wrapper")
    slistautoptr_cleanup_GProxyAddressEnumerator :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GProxyAddressEnumerator_wrapper")
    queueautoptr_cleanup_GProxyAddressEnumerator :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GProxyAddress_wrapper")
    autoptr_clear_GProxyAddress :: proc(_ptr: ^ProxyAddress) ---

    @(link_name = "glib_autoptr_cleanup_GProxyAddress_wrapper")
    autoptr_cleanup_GProxyAddress :: proc(_ptr: ^^ProxyAddress) ---

    @(link_name = "glib_autoptr_destroy_GProxyAddress_wrapper")
    autoptr_destroy_GProxyAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GProxyAddress_wrapper")
    listautoptr_cleanup_GProxyAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GProxyAddress_wrapper")
    slistautoptr_cleanup_GProxyAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GProxyAddress_wrapper")
    queueautoptr_cleanup_GProxyAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GProxy_wrapper")
    autoptr_clear_GProxy :: proc(_ptr: ^Proxy) ---

    @(link_name = "glib_autoptr_cleanup_GProxy_wrapper")
    autoptr_cleanup_GProxy :: proc(_ptr: ^^Proxy) ---

    @(link_name = "glib_autoptr_destroy_GProxy_wrapper")
    autoptr_destroy_GProxy :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GProxy_wrapper")
    listautoptr_cleanup_GProxy :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GProxy_wrapper")
    slistautoptr_cleanup_GProxy :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GProxy_wrapper")
    queueautoptr_cleanup_GProxy :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GProxyResolver_wrapper")
    autoptr_clear_GProxyResolver :: proc(_ptr: ^ProxyResolver) ---

    @(link_name = "glib_autoptr_cleanup_GProxyResolver_wrapper")
    autoptr_cleanup_GProxyResolver :: proc(_ptr: ^^ProxyResolver) ---

    @(link_name = "glib_autoptr_destroy_GProxyResolver_wrapper")
    autoptr_destroy_GProxyResolver :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GProxyResolver_wrapper")
    listautoptr_cleanup_GProxyResolver :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GProxyResolver_wrapper")
    slistautoptr_cleanup_GProxyResolver :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GProxyResolver_wrapper")
    queueautoptr_cleanup_GProxyResolver :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GRemoteActionGroup_wrapper")
    autoptr_clear_GRemoteActionGroup :: proc(_ptr: ^RemoteActionGroup) ---

    @(link_name = "glib_autoptr_cleanup_GRemoteActionGroup_wrapper")
    autoptr_cleanup_GRemoteActionGroup :: proc(_ptr: ^^RemoteActionGroup) ---

    @(link_name = "glib_autoptr_destroy_GRemoteActionGroup_wrapper")
    autoptr_destroy_GRemoteActionGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GRemoteActionGroup_wrapper")
    listautoptr_cleanup_GRemoteActionGroup :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GRemoteActionGroup_wrapper")
    slistautoptr_cleanup_GRemoteActionGroup :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GRemoteActionGroup_wrapper")
    queueautoptr_cleanup_GRemoteActionGroup :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GResolver_wrapper")
    autoptr_clear_GResolver :: proc(_ptr: ^Resolver) ---

    @(link_name = "glib_autoptr_cleanup_GResolver_wrapper")
    autoptr_cleanup_GResolver :: proc(_ptr: ^^Resolver) ---

    @(link_name = "glib_autoptr_destroy_GResolver_wrapper")
    autoptr_destroy_GResolver :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GResolver_wrapper")
    listautoptr_cleanup_GResolver :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GResolver_wrapper")
    slistautoptr_cleanup_GResolver :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GResolver_wrapper")
    queueautoptr_cleanup_GResolver :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GResource_wrapper")
    autoptr_clear_GResource :: proc(_ptr: ^Resource) ---

    @(link_name = "glib_autoptr_cleanup_GResource_wrapper")
    autoptr_cleanup_GResource :: proc(_ptr: ^^Resource) ---

    @(link_name = "glib_autoptr_destroy_GResource_wrapper")
    autoptr_destroy_GResource :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GResource_wrapper")
    listautoptr_cleanup_GResource :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GResource_wrapper")
    slistautoptr_cleanup_GResource :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GResource_wrapper")
    queueautoptr_cleanup_GResource :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSeekable_wrapper")
    autoptr_clear_GSeekable :: proc(_ptr: ^Seekable) ---

    @(link_name = "glib_autoptr_cleanup_GSeekable_wrapper")
    autoptr_cleanup_GSeekable :: proc(_ptr: ^^Seekable) ---

    @(link_name = "glib_autoptr_destroy_GSeekable_wrapper")
    autoptr_destroy_GSeekable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSeekable_wrapper")
    listautoptr_cleanup_GSeekable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSeekable_wrapper")
    slistautoptr_cleanup_GSeekable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSeekable_wrapper")
    queueautoptr_cleanup_GSeekable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettingsBackend_wrapper")
    autoptr_clear_GSettingsBackend :: proc(_ptr: ^SettingsBackend) ---

    @(link_name = "glib_autoptr_cleanup_GSettingsBackend_wrapper")
    autoptr_cleanup_GSettingsBackend :: proc(_ptr: ^^SettingsBackend) ---

    @(link_name = "glib_autoptr_destroy_GSettingsBackend_wrapper")
    autoptr_destroy_GSettingsBackend :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettingsBackend_wrapper")
    listautoptr_cleanup_GSettingsBackend :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettingsBackend_wrapper")
    slistautoptr_cleanup_GSettingsBackend :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettingsBackend_wrapper")
    queueautoptr_cleanup_GSettingsBackend :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettingsSchema_wrapper")
    autoptr_clear_GSettingsSchema :: proc(_ptr: ^SettingsSchema) ---

    @(link_name = "glib_autoptr_cleanup_GSettingsSchema_wrapper")
    autoptr_cleanup_GSettingsSchema :: proc(_ptr: ^^SettingsSchema) ---

    @(link_name = "glib_autoptr_destroy_GSettingsSchema_wrapper")
    autoptr_destroy_GSettingsSchema :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettingsSchema_wrapper")
    listautoptr_cleanup_GSettingsSchema :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettingsSchema_wrapper")
    slistautoptr_cleanup_GSettingsSchema :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettingsSchema_wrapper")
    queueautoptr_cleanup_GSettingsSchema :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettingsSchemaKey_wrapper")
    autoptr_clear_GSettingsSchemaKey :: proc(_ptr: ^SettingsSchemaKey) ---

    @(link_name = "glib_autoptr_cleanup_GSettingsSchemaKey_wrapper")
    autoptr_cleanup_GSettingsSchemaKey :: proc(_ptr: ^^SettingsSchemaKey) ---

    @(link_name = "glib_autoptr_destroy_GSettingsSchemaKey_wrapper")
    autoptr_destroy_GSettingsSchemaKey :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettingsSchemaKey_wrapper")
    listautoptr_cleanup_GSettingsSchemaKey :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettingsSchemaKey_wrapper")
    slistautoptr_cleanup_GSettingsSchemaKey :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettingsSchemaKey_wrapper")
    queueautoptr_cleanup_GSettingsSchemaKey :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettingsSchemaSource_wrapper")
    autoptr_clear_GSettingsSchemaSource :: proc(_ptr: ^SettingsSchemaSource) ---

    @(link_name = "glib_autoptr_cleanup_GSettingsSchemaSource_wrapper")
    autoptr_cleanup_GSettingsSchemaSource :: proc(_ptr: ^^SettingsSchemaSource) ---

    @(link_name = "glib_autoptr_destroy_GSettingsSchemaSource_wrapper")
    autoptr_destroy_GSettingsSchemaSource :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettingsSchemaSource_wrapper")
    listautoptr_cleanup_GSettingsSchemaSource :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettingsSchemaSource_wrapper")
    slistautoptr_cleanup_GSettingsSchemaSource :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettingsSchemaSource_wrapper")
    queueautoptr_cleanup_GSettingsSchemaSource :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSettings_wrapper")
    autoptr_clear_GSettings :: proc(_ptr: ^Settings) ---

    @(link_name = "glib_autoptr_cleanup_GSettings_wrapper")
    autoptr_cleanup_GSettings :: proc(_ptr: ^^Settings) ---

    @(link_name = "glib_autoptr_destroy_GSettings_wrapper")
    autoptr_destroy_GSettings :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSettings_wrapper")
    listautoptr_cleanup_GSettings :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSettings_wrapper")
    slistautoptr_cleanup_GSettings :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSettings_wrapper")
    queueautoptr_cleanup_GSettings :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimpleActionGroup_wrapper")
    autoptr_clear_GSimpleActionGroup :: proc(_ptr: ^SimpleActionGroup) ---

    @(link_name = "glib_autoptr_cleanup_GSimpleActionGroup_wrapper")
    autoptr_cleanup_GSimpleActionGroup :: proc(_ptr: ^^SimpleActionGroup) ---

    @(link_name = "glib_autoptr_destroy_GSimpleActionGroup_wrapper")
    autoptr_destroy_GSimpleActionGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimpleActionGroup_wrapper")
    listautoptr_cleanup_GSimpleActionGroup :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimpleActionGroup_wrapper")
    slistautoptr_cleanup_GSimpleActionGroup :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimpleActionGroup_wrapper")
    queueautoptr_cleanup_GSimpleActionGroup :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimpleAction_wrapper")
    autoptr_clear_GSimpleAction :: proc(_ptr: ^SimpleAction) ---

    @(link_name = "glib_autoptr_cleanup_GSimpleAction_wrapper")
    autoptr_cleanup_GSimpleAction :: proc(_ptr: ^^SimpleAction) ---

    @(link_name = "glib_autoptr_destroy_GSimpleAction_wrapper")
    autoptr_destroy_GSimpleAction :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimpleAction_wrapper")
    listautoptr_cleanup_GSimpleAction :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimpleAction_wrapper")
    slistautoptr_cleanup_GSimpleAction :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimpleAction_wrapper")
    queueautoptr_cleanup_GSimpleAction :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimpleAsyncResult_wrapper")
    autoptr_clear_GSimpleAsyncResult :: proc(_ptr: ^SimpleAsyncResult) ---

    @(link_name = "glib_autoptr_cleanup_GSimpleAsyncResult_wrapper")
    autoptr_cleanup_GSimpleAsyncResult :: proc(_ptr: ^^SimpleAsyncResult) ---

    @(link_name = "glib_autoptr_destroy_GSimpleAsyncResult_wrapper")
    autoptr_destroy_GSimpleAsyncResult :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimpleAsyncResult_wrapper")
    listautoptr_cleanup_GSimpleAsyncResult :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimpleAsyncResult_wrapper")
    slistautoptr_cleanup_GSimpleAsyncResult :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimpleAsyncResult_wrapper")
    queueautoptr_cleanup_GSimpleAsyncResult :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimplePermission_wrapper")
    autoptr_clear_GSimplePermission :: proc(_ptr: ^SimplePermission) ---

    @(link_name = "glib_autoptr_cleanup_GSimplePermission_wrapper")
    autoptr_cleanup_GSimplePermission :: proc(_ptr: ^^SimplePermission) ---

    @(link_name = "glib_autoptr_destroy_GSimplePermission_wrapper")
    autoptr_destroy_GSimplePermission :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimplePermission_wrapper")
    listautoptr_cleanup_GSimplePermission :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimplePermission_wrapper")
    slistautoptr_cleanup_GSimplePermission :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimplePermission_wrapper")
    queueautoptr_cleanup_GSimplePermission :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSimpleProxyResolver_wrapper")
    autoptr_clear_GSimpleProxyResolver :: proc(_ptr: ^SimpleProxyResolver) ---

    @(link_name = "glib_autoptr_cleanup_GSimpleProxyResolver_wrapper")
    autoptr_cleanup_GSimpleProxyResolver :: proc(_ptr: ^^SimpleProxyResolver) ---

    @(link_name = "glib_autoptr_destroy_GSimpleProxyResolver_wrapper")
    autoptr_destroy_GSimpleProxyResolver :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSimpleProxyResolver_wrapper")
    listautoptr_cleanup_GSimpleProxyResolver :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSimpleProxyResolver_wrapper")
    slistautoptr_cleanup_GSimpleProxyResolver :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSimpleProxyResolver_wrapper")
    queueautoptr_cleanup_GSimpleProxyResolver :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketAddressEnumerator_wrapper")
    autoptr_clear_GSocketAddressEnumerator :: proc(_ptr: ^SocketAddressEnumerator) ---

    @(link_name = "glib_autoptr_cleanup_GSocketAddressEnumerator_wrapper")
    autoptr_cleanup_GSocketAddressEnumerator :: proc(_ptr: ^^SocketAddressEnumerator) ---

    @(link_name = "glib_autoptr_destroy_GSocketAddressEnumerator_wrapper")
    autoptr_destroy_GSocketAddressEnumerator :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketAddressEnumerator_wrapper")
    listautoptr_cleanup_GSocketAddressEnumerator :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketAddressEnumerator_wrapper")
    slistautoptr_cleanup_GSocketAddressEnumerator :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketAddressEnumerator_wrapper")
    queueautoptr_cleanup_GSocketAddressEnumerator :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketAddress_wrapper")
    autoptr_clear_GSocketAddress :: proc(_ptr: ^SocketAddress) ---

    @(link_name = "glib_autoptr_cleanup_GSocketAddress_wrapper")
    autoptr_cleanup_GSocketAddress :: proc(_ptr: ^^SocketAddress) ---

    @(link_name = "glib_autoptr_destroy_GSocketAddress_wrapper")
    autoptr_destroy_GSocketAddress :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketAddress_wrapper")
    listautoptr_cleanup_GSocketAddress :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketAddress_wrapper")
    slistautoptr_cleanup_GSocketAddress :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketAddress_wrapper")
    queueautoptr_cleanup_GSocketAddress :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketClient_wrapper")
    autoptr_clear_GSocketClient :: proc(_ptr: ^SocketClient) ---

    @(link_name = "glib_autoptr_cleanup_GSocketClient_wrapper")
    autoptr_cleanup_GSocketClient :: proc(_ptr: ^^SocketClient) ---

    @(link_name = "glib_autoptr_destroy_GSocketClient_wrapper")
    autoptr_destroy_GSocketClient :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketClient_wrapper")
    listautoptr_cleanup_GSocketClient :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketClient_wrapper")
    slistautoptr_cleanup_GSocketClient :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketClient_wrapper")
    queueautoptr_cleanup_GSocketClient :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketConnectable_wrapper")
    autoptr_clear_GSocketConnectable :: proc(_ptr: ^SocketConnectable) ---

    @(link_name = "glib_autoptr_cleanup_GSocketConnectable_wrapper")
    autoptr_cleanup_GSocketConnectable :: proc(_ptr: ^^SocketConnectable) ---

    @(link_name = "glib_autoptr_destroy_GSocketConnectable_wrapper")
    autoptr_destroy_GSocketConnectable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketConnectable_wrapper")
    listautoptr_cleanup_GSocketConnectable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketConnectable_wrapper")
    slistautoptr_cleanup_GSocketConnectable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketConnectable_wrapper")
    queueautoptr_cleanup_GSocketConnectable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketConnection_wrapper")
    autoptr_clear_GSocketConnection :: proc(_ptr: ^SocketConnection) ---

    @(link_name = "glib_autoptr_cleanup_GSocketConnection_wrapper")
    autoptr_cleanup_GSocketConnection :: proc(_ptr: ^^SocketConnection) ---

    @(link_name = "glib_autoptr_destroy_GSocketConnection_wrapper")
    autoptr_destroy_GSocketConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketConnection_wrapper")
    listautoptr_cleanup_GSocketConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketConnection_wrapper")
    slistautoptr_cleanup_GSocketConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketConnection_wrapper")
    queueautoptr_cleanup_GSocketConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketControlMessage_wrapper")
    autoptr_clear_GSocketControlMessage :: proc(_ptr: ^SocketControlMessage) ---

    @(link_name = "glib_autoptr_cleanup_GSocketControlMessage_wrapper")
    autoptr_cleanup_GSocketControlMessage :: proc(_ptr: ^^SocketControlMessage) ---

    @(link_name = "glib_autoptr_destroy_GSocketControlMessage_wrapper")
    autoptr_destroy_GSocketControlMessage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketControlMessage_wrapper")
    listautoptr_cleanup_GSocketControlMessage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketControlMessage_wrapper")
    slistautoptr_cleanup_GSocketControlMessage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketControlMessage_wrapper")
    queueautoptr_cleanup_GSocketControlMessage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocket_wrapper")
    autoptr_clear_GSocket :: proc(_ptr: ^Socket) ---

    @(link_name = "glib_autoptr_cleanup_GSocket_wrapper")
    autoptr_cleanup_GSocket :: proc(_ptr: ^^Socket) ---

    @(link_name = "glib_autoptr_destroy_GSocket_wrapper")
    autoptr_destroy_GSocket :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocket_wrapper")
    listautoptr_cleanup_GSocket :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocket_wrapper")
    slistautoptr_cleanup_GSocket :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocket_wrapper")
    queueautoptr_cleanup_GSocket :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketListener_wrapper")
    autoptr_clear_GSocketListener :: proc(_ptr: ^SocketListener) ---

    @(link_name = "glib_autoptr_cleanup_GSocketListener_wrapper")
    autoptr_cleanup_GSocketListener :: proc(_ptr: ^^SocketListener) ---

    @(link_name = "glib_autoptr_destroy_GSocketListener_wrapper")
    autoptr_destroy_GSocketListener :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketListener_wrapper")
    listautoptr_cleanup_GSocketListener :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketListener_wrapper")
    slistautoptr_cleanup_GSocketListener :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketListener_wrapper")
    queueautoptr_cleanup_GSocketListener :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSocketService_wrapper")
    autoptr_clear_GSocketService :: proc(_ptr: ^SocketService) ---

    @(link_name = "glib_autoptr_cleanup_GSocketService_wrapper")
    autoptr_cleanup_GSocketService :: proc(_ptr: ^^SocketService) ---

    @(link_name = "glib_autoptr_destroy_GSocketService_wrapper")
    autoptr_destroy_GSocketService :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSocketService_wrapper")
    listautoptr_cleanup_GSocketService :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSocketService_wrapper")
    slistautoptr_cleanup_GSocketService :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSocketService_wrapper")
    queueautoptr_cleanup_GSocketService :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSubprocess_wrapper")
    autoptr_clear_GSubprocess :: proc(_ptr: ^Subprocess) ---

    @(link_name = "glib_autoptr_cleanup_GSubprocess_wrapper")
    autoptr_cleanup_GSubprocess :: proc(_ptr: ^^Subprocess) ---

    @(link_name = "glib_autoptr_destroy_GSubprocess_wrapper")
    autoptr_destroy_GSubprocess :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSubprocess_wrapper")
    listautoptr_cleanup_GSubprocess :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSubprocess_wrapper")
    slistautoptr_cleanup_GSubprocess :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSubprocess_wrapper")
    queueautoptr_cleanup_GSubprocess :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GSubprocessLauncher_wrapper")
    autoptr_clear_GSubprocessLauncher :: proc(_ptr: ^SubprocessLauncher) ---

    @(link_name = "glib_autoptr_cleanup_GSubprocessLauncher_wrapper")
    autoptr_cleanup_GSubprocessLauncher :: proc(_ptr: ^^SubprocessLauncher) ---

    @(link_name = "glib_autoptr_destroy_GSubprocessLauncher_wrapper")
    autoptr_destroy_GSubprocessLauncher :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GSubprocessLauncher_wrapper")
    listautoptr_cleanup_GSubprocessLauncher :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GSubprocessLauncher_wrapper")
    slistautoptr_cleanup_GSubprocessLauncher :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GSubprocessLauncher_wrapper")
    queueautoptr_cleanup_GSubprocessLauncher :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTask_wrapper")
    autoptr_clear_GTask :: proc(_ptr: ^Task) ---

    @(link_name = "glib_autoptr_cleanup_GTask_wrapper")
    autoptr_cleanup_GTask :: proc(_ptr: ^^Task) ---

    @(link_name = "glib_autoptr_destroy_GTask_wrapper")
    autoptr_destroy_GTask :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTask_wrapper")
    listautoptr_cleanup_GTask :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTask_wrapper")
    slistautoptr_cleanup_GTask :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTask_wrapper")
    queueautoptr_cleanup_GTask :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTcpConnection_wrapper")
    autoptr_clear_GTcpConnection :: proc(_ptr: ^TcpConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTcpConnection_wrapper")
    autoptr_cleanup_GTcpConnection :: proc(_ptr: ^^TcpConnection) ---

    @(link_name = "glib_autoptr_destroy_GTcpConnection_wrapper")
    autoptr_destroy_GTcpConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTcpConnection_wrapper")
    listautoptr_cleanup_GTcpConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTcpConnection_wrapper")
    slistautoptr_cleanup_GTcpConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTcpConnection_wrapper")
    queueautoptr_cleanup_GTcpConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTcpWrapperConnection_wrapper")
    autoptr_clear_GTcpWrapperConnection :: proc(_ptr: ^TcpWrapperConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTcpWrapperConnection_wrapper")
    autoptr_cleanup_GTcpWrapperConnection :: proc(_ptr: ^^TcpWrapperConnection) ---

    @(link_name = "glib_autoptr_destroy_GTcpWrapperConnection_wrapper")
    autoptr_destroy_GTcpWrapperConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTcpWrapperConnection_wrapper")
    listautoptr_cleanup_GTcpWrapperConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTcpWrapperConnection_wrapper")
    slistautoptr_cleanup_GTcpWrapperConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTcpWrapperConnection_wrapper")
    queueautoptr_cleanup_GTcpWrapperConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTestDBus_wrapper")
    autoptr_clear_GTestDBus :: proc(_ptr: ^TestDBus) ---

    @(link_name = "glib_autoptr_cleanup_GTestDBus_wrapper")
    autoptr_cleanup_GTestDBus :: proc(_ptr: ^^TestDBus) ---

    @(link_name = "glib_autoptr_destroy_GTestDBus_wrapper")
    autoptr_destroy_GTestDBus :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTestDBus_wrapper")
    listautoptr_cleanup_GTestDBus :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTestDBus_wrapper")
    slistautoptr_cleanup_GTestDBus :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTestDBus_wrapper")
    queueautoptr_cleanup_GTestDBus :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GThemedIcon_wrapper")
    autoptr_clear_GThemedIcon :: proc(_ptr: ^ThemedIcon) ---

    @(link_name = "glib_autoptr_cleanup_GThemedIcon_wrapper")
    autoptr_cleanup_GThemedIcon :: proc(_ptr: ^^ThemedIcon) ---

    @(link_name = "glib_autoptr_destroy_GThemedIcon_wrapper")
    autoptr_destroy_GThemedIcon :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GThemedIcon_wrapper")
    listautoptr_cleanup_GThemedIcon :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GThemedIcon_wrapper")
    slistautoptr_cleanup_GThemedIcon :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GThemedIcon_wrapper")
    queueautoptr_cleanup_GThemedIcon :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GThreadedSocketService_wrapper")
    autoptr_clear_GThreadedSocketService :: proc(_ptr: ^ThreadedSocketService) ---

    @(link_name = "glib_autoptr_cleanup_GThreadedSocketService_wrapper")
    autoptr_cleanup_GThreadedSocketService :: proc(_ptr: ^^ThreadedSocketService) ---

    @(link_name = "glib_autoptr_destroy_GThreadedSocketService_wrapper")
    autoptr_destroy_GThreadedSocketService :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GThreadedSocketService_wrapper")
    listautoptr_cleanup_GThreadedSocketService :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GThreadedSocketService_wrapper")
    slistautoptr_cleanup_GThreadedSocketService :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GThreadedSocketService_wrapper")
    queueautoptr_cleanup_GThreadedSocketService :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsBackend_wrapper")
    autoptr_clear_GTlsBackend :: proc(_ptr: ^TlsBackend) ---

    @(link_name = "glib_autoptr_cleanup_GTlsBackend_wrapper")
    autoptr_cleanup_GTlsBackend :: proc(_ptr: ^^TlsBackend) ---

    @(link_name = "glib_autoptr_destroy_GTlsBackend_wrapper")
    autoptr_destroy_GTlsBackend :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsBackend_wrapper")
    listautoptr_cleanup_GTlsBackend :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsBackend_wrapper")
    slistautoptr_cleanup_GTlsBackend :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsBackend_wrapper")
    queueautoptr_cleanup_GTlsBackend :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsCertificate_wrapper")
    autoptr_clear_GTlsCertificate :: proc(_ptr: ^TlsCertificate) ---

    @(link_name = "glib_autoptr_cleanup_GTlsCertificate_wrapper")
    autoptr_cleanup_GTlsCertificate :: proc(_ptr: ^^TlsCertificate) ---

    @(link_name = "glib_autoptr_destroy_GTlsCertificate_wrapper")
    autoptr_destroy_GTlsCertificate :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsCertificate_wrapper")
    listautoptr_cleanup_GTlsCertificate :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsCertificate_wrapper")
    slistautoptr_cleanup_GTlsCertificate :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsCertificate_wrapper")
    queueautoptr_cleanup_GTlsCertificate :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsClientConnection_wrapper")
    autoptr_clear_GTlsClientConnection :: proc(_ptr: ^TlsClientConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTlsClientConnection_wrapper")
    autoptr_cleanup_GTlsClientConnection :: proc(_ptr: ^^TlsClientConnection) ---

    @(link_name = "glib_autoptr_destroy_GTlsClientConnection_wrapper")
    autoptr_destroy_GTlsClientConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsClientConnection_wrapper")
    listautoptr_cleanup_GTlsClientConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsClientConnection_wrapper")
    slistautoptr_cleanup_GTlsClientConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsClientConnection_wrapper")
    queueautoptr_cleanup_GTlsClientConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsConnection_wrapper")
    autoptr_clear_GTlsConnection :: proc(_ptr: ^TlsConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTlsConnection_wrapper")
    autoptr_cleanup_GTlsConnection :: proc(_ptr: ^^TlsConnection) ---

    @(link_name = "glib_autoptr_destroy_GTlsConnection_wrapper")
    autoptr_destroy_GTlsConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsConnection_wrapper")
    listautoptr_cleanup_GTlsConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsConnection_wrapper")
    slistautoptr_cleanup_GTlsConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsConnection_wrapper")
    queueautoptr_cleanup_GTlsConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsDatabase_wrapper")
    autoptr_clear_GTlsDatabase :: proc(_ptr: ^TlsDatabase) ---

    @(link_name = "glib_autoptr_cleanup_GTlsDatabase_wrapper")
    autoptr_cleanup_GTlsDatabase :: proc(_ptr: ^^TlsDatabase) ---

    @(link_name = "glib_autoptr_destroy_GTlsDatabase_wrapper")
    autoptr_destroy_GTlsDatabase :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsDatabase_wrapper")
    listautoptr_cleanup_GTlsDatabase :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsDatabase_wrapper")
    slistautoptr_cleanup_GTlsDatabase :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsDatabase_wrapper")
    queueautoptr_cleanup_GTlsDatabase :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsFileDatabase_wrapper")
    autoptr_clear_GTlsFileDatabase :: proc(_ptr: ^TlsFileDatabase) ---

    @(link_name = "glib_autoptr_cleanup_GTlsFileDatabase_wrapper")
    autoptr_cleanup_GTlsFileDatabase :: proc(_ptr: ^^TlsFileDatabase) ---

    @(link_name = "glib_autoptr_destroy_GTlsFileDatabase_wrapper")
    autoptr_destroy_GTlsFileDatabase :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsFileDatabase_wrapper")
    listautoptr_cleanup_GTlsFileDatabase :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsFileDatabase_wrapper")
    slistautoptr_cleanup_GTlsFileDatabase :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsFileDatabase_wrapper")
    queueautoptr_cleanup_GTlsFileDatabase :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsInteraction_wrapper")
    autoptr_clear_GTlsInteraction :: proc(_ptr: ^TlsInteraction) ---

    @(link_name = "glib_autoptr_cleanup_GTlsInteraction_wrapper")
    autoptr_cleanup_GTlsInteraction :: proc(_ptr: ^^TlsInteraction) ---

    @(link_name = "glib_autoptr_destroy_GTlsInteraction_wrapper")
    autoptr_destroy_GTlsInteraction :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsInteraction_wrapper")
    listautoptr_cleanup_GTlsInteraction :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsInteraction_wrapper")
    slistautoptr_cleanup_GTlsInteraction :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsInteraction_wrapper")
    queueautoptr_cleanup_GTlsInteraction :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsPassword_wrapper")
    autoptr_clear_GTlsPassword :: proc(_ptr: ^TlsPassword) ---

    @(link_name = "glib_autoptr_cleanup_GTlsPassword_wrapper")
    autoptr_cleanup_GTlsPassword :: proc(_ptr: ^^TlsPassword) ---

    @(link_name = "glib_autoptr_destroy_GTlsPassword_wrapper")
    autoptr_destroy_GTlsPassword :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsPassword_wrapper")
    listautoptr_cleanup_GTlsPassword :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsPassword_wrapper")
    slistautoptr_cleanup_GTlsPassword :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsPassword_wrapper")
    queueautoptr_cleanup_GTlsPassword :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GTlsServerConnection_wrapper")
    autoptr_clear_GTlsServerConnection :: proc(_ptr: ^TlsServerConnection) ---

    @(link_name = "glib_autoptr_cleanup_GTlsServerConnection_wrapper")
    autoptr_cleanup_GTlsServerConnection :: proc(_ptr: ^^TlsServerConnection) ---

    @(link_name = "glib_autoptr_destroy_GTlsServerConnection_wrapper")
    autoptr_destroy_GTlsServerConnection :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GTlsServerConnection_wrapper")
    listautoptr_cleanup_GTlsServerConnection :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GTlsServerConnection_wrapper")
    slistautoptr_cleanup_GTlsServerConnection :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GTlsServerConnection_wrapper")
    queueautoptr_cleanup_GTlsServerConnection :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GVfs_wrapper")
    autoptr_clear_GVfs :: proc(_ptr: ^Vfs) ---

    @(link_name = "glib_autoptr_cleanup_GVfs_wrapper")
    autoptr_cleanup_GVfs :: proc(_ptr: ^^Vfs) ---

    @(link_name = "glib_autoptr_destroy_GVfs_wrapper")
    autoptr_destroy_GVfs :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVfs_wrapper")
    listautoptr_cleanup_GVfs :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVfs_wrapper")
    slistautoptr_cleanup_GVfs :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVfs_wrapper")
    queueautoptr_cleanup_GVfs :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GVolume_wrapper")
    autoptr_clear_GVolume :: proc(_ptr: ^Volume) ---

    @(link_name = "glib_autoptr_cleanup_GVolume_wrapper")
    autoptr_cleanup_GVolume :: proc(_ptr: ^^Volume) ---

    @(link_name = "glib_autoptr_destroy_GVolume_wrapper")
    autoptr_destroy_GVolume :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVolume_wrapper")
    listautoptr_cleanup_GVolume :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVolume_wrapper")
    slistautoptr_cleanup_GVolume :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVolume_wrapper")
    queueautoptr_cleanup_GVolume :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GVolumeMonitor_wrapper")
    autoptr_clear_GVolumeMonitor :: proc(_ptr: ^VolumeMonitor) ---

    @(link_name = "glib_autoptr_cleanup_GVolumeMonitor_wrapper")
    autoptr_cleanup_GVolumeMonitor :: proc(_ptr: ^^VolumeMonitor) ---

    @(link_name = "glib_autoptr_destroy_GVolumeMonitor_wrapper")
    autoptr_destroy_GVolumeMonitor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GVolumeMonitor_wrapper")
    listautoptr_cleanup_GVolumeMonitor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GVolumeMonitor_wrapper")
    slistautoptr_cleanup_GVolumeMonitor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GVolumeMonitor_wrapper")
    queueautoptr_cleanup_GVolumeMonitor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GZlibCompressor_wrapper")
    autoptr_clear_GZlibCompressor :: proc(_ptr: ^ZlibCompressor) ---

    @(link_name = "glib_autoptr_cleanup_GZlibCompressor_wrapper")
    autoptr_cleanup_GZlibCompressor :: proc(_ptr: ^^ZlibCompressor) ---

    @(link_name = "glib_autoptr_destroy_GZlibCompressor_wrapper")
    autoptr_destroy_GZlibCompressor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GZlibCompressor_wrapper")
    listautoptr_cleanup_GZlibCompressor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GZlibCompressor_wrapper")
    slistautoptr_cleanup_GZlibCompressor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GZlibCompressor_wrapper")
    queueautoptr_cleanup_GZlibCompressor :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GZlibDecompressor_wrapper")
    autoptr_clear_GZlibDecompressor :: proc(_ptr: ^ZlibDecompressor) ---

    @(link_name = "glib_autoptr_cleanup_GZlibDecompressor_wrapper")
    autoptr_cleanup_GZlibDecompressor :: proc(_ptr: ^^ZlibDecompressor) ---

    @(link_name = "glib_autoptr_destroy_GZlibDecompressor_wrapper")
    autoptr_destroy_GZlibDecompressor :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GZlibDecompressor_wrapper")
    listautoptr_cleanup_GZlibDecompressor :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GZlibDecompressor_wrapper")
    slistautoptr_cleanup_GZlibDecompressor :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GZlibDecompressor_wrapper")
    queueautoptr_cleanup_GZlibDecompressor :: proc(_q: ^^glib.Queue) ---

}

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import gio_runic { "../../lib/linux/x86_64/libgio-2.0.a", "../../lib/linux/x86_64/libgio-wrapper.a", "system:ffi", "system:pcre2-8", "system:mount", "system:z" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import gio_runic { "system:gio-2.0", "../../lib/linux/x86_64/libgio-wrapper.a" }
} 
}

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import gio_runic { "../../lib/linux/aarch64/libgio-2.0.a", "../../lib/linux/aarch64/libgio-wrapper.a", "system:ffi", "system:pcre2-8", "system:mount", "system:z" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import gio_runic { "system:gio-2.0", "../../lib/linux/aarch64/libgio-wrapper.a" }
} 
}

