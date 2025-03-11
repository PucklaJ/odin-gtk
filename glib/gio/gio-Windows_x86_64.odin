#+build windows amd64
package gio

import glib ".."
import gobj "../gobject"

AppInfoCreateFlags :: enum i32 {NONE = 0, NEEDS_TERMINAL = 1, SUPPORTS_URIS = 2, SUPPORTS_STARTUP_NOTIFICATION = 4 }
ConverterFlags :: enum i32 {NO_FLAGS = 0, INPUT_AT_END = 1, FLUSH = 2 }
ConverterResult :: enum i32 {ERROR = 0, CONVERTED = 1, FINISHED = 2, FLUSHED = 3 }
DataStreamByteOrder :: enum i32 {BIG_ENDIAN = 0, LITTLE_ENDIAN = 1, HOST_ENDIAN = 2 }
DataStreamNewlineType :: enum i32 {LF = 0, CR = 1, CR_LF = 2, ANY = 3 }
FileAttributeType :: enum i32 {INVALID = 0, STRING = 1, BYTE_STRING = 2, BOOLEAN = 3, UINT32 = 4, INT32 = 5, UINT64 = 6, INT64 = 7, OBJECT = 8, STRINGV = 9 }
FileAttributeInfoFlags :: enum i32 {NONE = 0, COPY_WITH_FILE = 1, COPY_WHEN_MOVED = 2 }
FileAttributeStatus :: enum i32 {UNSET = 0, SET = 1, ERROR_SETTING = 2 }
FileQueryInfoFlags :: enum i32 {NONE = 0, NOFOLLOW_SYMLINKS = 1 }
FileCreateFlags :: enum i32 {NONE = 0, PRIVATE = 1, REPLACE_DESTINATION = 2 }
FileMeasureFlags :: enum i32 {NONE = 0, REPORT_ANY_ERROR = 2, APPARENT_SIZE = 4, NO_XDEV = 8 }
MountMountFlags :: enum i32 {NONE = 0 }
MountUnmountFlags :: enum i32 {NONE = 0, FORCE = 1 }
DriveStartFlags :: enum i32 {NONE = 0 }
DriveStartStopType :: enum i32 {STOP_TYPE_UNKNOWN = 0, STOP_TYPE_SHUTDOWN = 1, STOP_TYPE_NETWORK = 2, STOP_TYPE_MULTIDISK = 3, STOP_TYPE_PASSWORD = 4 }
FileCopyFlags :: enum i32 {NONE = 0, OVERWRITE = 1, BACKUP = 2, NOFOLLOW_SYMLINKS = 4, ALL_METADATA = 8, NO_FALLBACK_FOR_MOVE = 16, TARGET_DEFAULT_PERMS = 32, TARGET_DEFAULT_MODIFIED_TIME = 64 }
FileMonitorFlags :: enum i32 {NONE = 0, WATCH_MOUNTS = 1, SEND_MOVED = 2, WATCH_HARD_LINKS = 4, WATCH_MOVES = 8 }
FileType :: enum i32 {UNKNOWN = 0, REGULAR = 1, DIRECTORY = 2, SYMBOLIC_LINK = 3, SPECIAL = 4, SHORTCUT = 5, MOUNTABLE = 6 }
FilesystemPreviewType :: enum i32 {IF_ALWAYS = 0, IF_LOCAL = 1, NEVER = 2 }
FileMonitorEvent :: enum i32 {EVENT_CHANGED = 0, EVENT_CHANGES_DONE_HINT = 1, EVENT_DELETED = 2, EVENT_CREATED = 3, EVENT_ATTRIBUTE_CHANGED = 4, EVENT_PRE_UNMOUNT = 5, EVENT_UNMOUNTED = 6, EVENT_MOVED = 7, EVENT_RENAMED = 8, EVENT_MOVED_IN = 9, EVENT_MOVED_OUT = 10 }
IOErrorEnum :: enum i32 {FAILED = 0, NOT_FOUND = 1, EXISTS = 2, IS_DIRECTORY = 3, NOT_DIRECTORY = 4, NOT_EMPTY = 5, NOT_REGULAR_FILE = 6, NOT_SYMBOLIC_LINK = 7, NOT_MOUNTABLE_FILE = 8, FILENAME_TOO_LONG = 9, INVALID_FILENAME = 10, TOO_MANY_LINKS = 11, NO_SPACE = 12, INVALID_ARGUMENT = 13, PERMISSION_DENIED = 14, NOT_SUPPORTED = 15, NOT_MOUNTED = 16, ALREADY_MOUNTED = 17, CLOSED = 18, CANCELLED = 19, PENDING = 20, READ_ONLY = 21, CANT_CREATE_BACKUP = 22, WRONG_ETAG = 23, TIMED_OUT = 24, WOULD_RECURSE = 25, BUSY = 26, WOULD_BLOCK = 27, HOST_NOT_FOUND = 28, WOULD_MERGE = 29, FAILED_HANDLED = 30, TOO_MANY_OPEN_FILES = 31, NOT_INITIALIZED = 32, ADDRESS_IN_USE = 33, PARTIAL_INPUT = 34, INVALID_DATA = 35, DBUS_ERROR = 36, HOST_UNREACHABLE = 37, NETWORK_UNREACHABLE = 38, CONNECTION_REFUSED = 39, PROXY_FAILED = 40, PROXY_AUTH_FAILED = 41, PROXY_NEED_AUTH = 42, PROXY_NOT_ALLOWED = 43, BROKEN_PIPE = 44, CONNECTION_CLOSED = 44, NOT_CONNECTED = 45, MESSAGE_TOO_LARGE = 46, NO_SUCH_DEVICE = 47, DESTINATION_UNSET = 48 }
AskPasswordFlags :: enum i32 {NEED_PASSWORD = 1, NEED_USERNAME = 2, NEED_DOMAIN = 4, SAVING_SUPPORTED = 8, ANONYMOUS_SUPPORTED = 16, TCRYPT = 32 }
PasswordSave :: enum i32 {NEVER = 0, FOR_SESSION = 1, PERMANENTLY = 2 }
MountOperationResult :: enum i32 {MOUNT_OPERATION_HANDLED = 0, MOUNT_OPERATION_ABORTED = 1, MOUNT_OPERATION_UNHANDLED = 2 }
OutputStreamSpliceFlags :: enum i32 {NONE = 0, CLOSE_SOURCE = 1, CLOSE_TARGET = 2 }
IOStreamSpliceFlags :: enum i32 {NONE = 0, CLOSE_STREAM1 = 1, CLOSE_STREAM2 = 2, WAIT_FOR_BOTH = 4 }
EmblemOrigin :: enum i32 {UNKNOWN = 0, DEVICE = 1, LIVEMETADATA = 2, TAG = 3 }
ResolverError :: enum i32 {NOT_FOUND = 0, TEMPORARY_FAILURE = 1, INTERNAL = 2 }
ResolverRecordType :: enum i32 {RESOLVER_RECORD_SRV = 1, RESOLVER_RECORD_MX = 2, RESOLVER_RECORD_TXT = 3, RESOLVER_RECORD_SOA = 4, RESOLVER_RECORD_NS = 5 }
ResourceError :: enum i32 {NOT_FOUND = 0, INTERNAL = 1 }
ResourceFlags :: enum i32 {NONE = 0, COMPRESSED = 1 }
ResourceLookupFlags :: enum i32 {NONE = 0 }
SocketFamily :: enum i32 {INVALID = 0, UNIX = 1, IPV4 = 2, IPV6 = 23 }
SocketType :: enum i32 {INVALID = 0, STREAM = 1, DATAGRAM = 2, SEQPACKET = 3 }
SocketMsgFlags :: enum i32 {NONE = 0, OOB = 1, PEEK = 2, DONTROUTE = 4 }
ZlibCompressorFormat :: enum i32 {ZLIB = 0, GZIP = 1, RAW = 2 }
UnixSocketAddressType :: enum i32 {UNIX_SOCKET_ADDRESS_INVALID = 0, UNIX_SOCKET_ADDRESS_ANONYMOUS = 1, UNIX_SOCKET_ADDRESS_PATH = 2, UNIX_SOCKET_ADDRESS_ABSTRACT = 3, UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED = 4 }
BusNameOwnerFlags :: enum i32 {NONE = 0, ALLOW_REPLACEMENT = 1, REPLACE = 2, DO_NOT_QUEUE = 4 }
BusNameWatcherFlags :: enum i32 {NONE = 0, AUTO_START = 1 }
DBusProxyFlags :: enum i32 {NONE = 0, DO_NOT_LOAD_PROPERTIES = 1, DO_NOT_CONNECT_SIGNALS = 2, DO_NOT_AUTO_START = 4, GET_INVALIDATED_PROPERTIES = 8, DO_NOT_AUTO_START_AT_CONSTRUCTION = 16, NO_MATCH_RULE = 32 }
DBusError :: enum i32 {DBUS_ERROR_FAILED = 0, DBUS_ERROR_NO_MEMORY = 1, DBUS_ERROR_SERVICE_UNKNOWN = 2, DBUS_ERROR_NAME_HAS_NO_OWNER = 3, DBUS_ERROR_NO_REPLY = 4, DBUS_ERROR_IO_ERROR = 5, DBUS_ERROR_BAD_ADDRESS = 6, DBUS_ERROR_NOT_SUPPORTED = 7, DBUS_ERROR_LIMITS_EXCEEDED = 8, DBUS_ERROR_ACCESS_DENIED = 9, DBUS_ERROR_AUTH_FAILED = 10, DBUS_ERROR_NO_SERVER = 11, DBUS_ERROR_TIMEOUT = 12, DBUS_ERROR_NO_NETWORK = 13, DBUS_ERROR_ADDRESS_IN_USE = 14, DBUS_ERROR_DISCONNECTED = 15, DBUS_ERROR_INVALID_ARGS = 16, DBUS_ERROR_FILE_NOT_FOUND = 17, DBUS_ERROR_FILE_EXISTS = 18, DBUS_ERROR_UNKNOWN_METHOD = 19, DBUS_ERROR_TIMED_OUT = 20, DBUS_ERROR_MATCH_RULE_NOT_FOUND = 21, DBUS_ERROR_MATCH_RULE_INVALID = 22, DBUS_ERROR_SPAWN_EXEC_FAILED = 23, DBUS_ERROR_SPAWN_FORK_FAILED = 24, DBUS_ERROR_SPAWN_CHILD_EXITED = 25, DBUS_ERROR_SPAWN_CHILD_SIGNALED = 26, DBUS_ERROR_SPAWN_FAILED = 27, DBUS_ERROR_SPAWN_SETUP_FAILED = 28, DBUS_ERROR_SPAWN_CONFIG_INVALID = 29, DBUS_ERROR_SPAWN_SERVICE_INVALID = 30, DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND = 31, DBUS_ERROR_SPAWN_PERMISSIONS_INVALID = 32, DBUS_ERROR_SPAWN_FILE_INVALID = 33, DBUS_ERROR_SPAWN_NO_MEMORY = 34, DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN = 35, DBUS_ERROR_INVALID_SIGNATURE = 36, DBUS_ERROR_INVALID_FILE_CONTENT = 37, DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN = 38, DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN = 39, DBUS_ERROR_OBJECT_PATH_IN_USE = 40, DBUS_ERROR_UNKNOWN_OBJECT = 41, DBUS_ERROR_UNKNOWN_INTERFACE = 42, DBUS_ERROR_UNKNOWN_PROPERTY = 43, DBUS_ERROR_PROPERTY_READ_ONLY = 44 }
DBusConnectionFlags :: enum i32 {NONE = 0, AUTHENTICATION_CLIENT = 1, AUTHENTICATION_SERVER = 2, AUTHENTICATION_ALLOW_ANONYMOUS = 4, MESSAGE_BUS_CONNECTION = 8, DELAY_MESSAGE_PROCESSING = 16, AUTHENTICATION_REQUIRE_SAME_USER = 32, CROSS_NAMESPACE = 64 }
DBusCapabilityFlags :: enum i32 {NONE = 0, UNIX_FD_PASSING = 1 }
DBusCallFlags :: enum i32 {NONE = 0, NO_AUTO_START = 1, ALLOW_INTERACTIVE_AUTHORIZATION = 2 }
DBusMessageType :: enum i32 {DBUS_MESSAGE_TYPE_INVALID = 0, DBUS_MESSAGE_TYPE_METHOD_CALL = 1, DBUS_MESSAGE_TYPE_METHOD_RETURN = 2, DBUS_MESSAGE_TYPE_ERROR = 3, DBUS_MESSAGE_TYPE_SIGNAL = 4 }
DBusMessageFlags :: enum i32 {NONE = 0, NO_REPLY_EXPECTED = 1, NO_AUTO_START = 2, ALLOW_INTERACTIVE_AUTHORIZATION = 4 }
DBusMessageHeaderField :: enum i32 {DBUS_MESSAGE_HEADER_FIELD_INVALID = 0, DBUS_MESSAGE_HEADER_FIELD_PATH = 1, DBUS_MESSAGE_HEADER_FIELD_INTERFACE = 2, DBUS_MESSAGE_HEADER_FIELD_MEMBER = 3, DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME = 4, DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL = 5, DBUS_MESSAGE_HEADER_FIELD_DESTINATION = 6, DBUS_MESSAGE_HEADER_FIELD_SENDER = 7, DBUS_MESSAGE_HEADER_FIELD_SIGNATURE = 8, DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS = 9 }
DBusPropertyInfoFlags :: enum i32 {NONE = 0, READABLE = 1, WRITABLE = 2 }
DBusSubtreeFlags :: enum i32 {NONE = 0, DISPATCH_TO_UNENUMERATED_NODES = 1 }
DBusServerFlags :: enum i32 {NONE = 0, RUN_IN_THREAD = 1, AUTHENTICATION_ALLOW_ANONYMOUS = 2, AUTHENTICATION_REQUIRE_SAME_USER = 4 }
DBusSignalFlags :: enum i32 {NONE = 0, NO_MATCH_RULE = 1, MATCH_ARG0_NAMESPACE = 2, MATCH_ARG0_PATH = 4 }
DBusSendMessageFlags :: enum i32 {NONE = 0, PRESERVE_SERIAL = 1 }
CredentialsType :: enum i32 {INVALID = 0, LINUX_UCRED = 1, FREEBSD_CMSGCRED = 2, OPENBSD_SOCKPEERCRED = 3, SOLARIS_UCRED = 4, NETBSD_UNPCBID = 5, APPLE_XUCRED = 6, WIN32_PID = 7 }
DBusMessageByteOrder :: enum i32 {DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN = 66, DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN = 108 }
ApplicationFlags :: enum i32 {NONE = 0, APPLICATION_DEFAULT_FLAGS = 0, APPLICATION_IS_SERVICE = 1, APPLICATION_IS_LAUNCHER = 2, APPLICATION_HANDLES_OPEN = 4, APPLICATION_HANDLES_COMMAND_LINE = 8, APPLICATION_SEND_ENVIRONMENT = 16, APPLICATION_NON_UNIQUE = 32, APPLICATION_CAN_OVERRIDE_APP_ID = 64, APPLICATION_ALLOW_REPLACEMENT = 128, APPLICATION_REPLACE = 256 }
TlsError :: enum i32 {UNAVAILABLE = 0, MISC = 1, BAD_CERTIFICATE = 2, NOT_TLS = 3, HANDSHAKE = 4, CERTIFICATE_REQUIRED = 5, EOF = 6, INAPPROPRIATE_FALLBACK = 7, BAD_CERTIFICATE_PASSWORD = 8 }
TlsCertificateFlags :: enum i32 {NO_FLAGS = 0, UNKNOWN_CA = 1, BAD_IDENTITY = 2, NOT_ACTIVATED = 4, EXPIRED = 8, REVOKED = 16, INSECURE = 32, GENERIC_ERROR = 64, VALIDATE_ALL = 127 }
TlsAuthenticationMode :: enum i32 {TLS_AUTHENTICATION_NONE = 0, TLS_AUTHENTICATION_REQUESTED = 1, TLS_AUTHENTICATION_REQUIRED = 2 }
TlsChannelBindingType :: enum i32 {TLS_CHANNEL_BINDING_TLS_UNIQUE = 0, TLS_CHANNEL_BINDING_TLS_SERVER_END_POINT = 1, TLS_CHANNEL_BINDING_TLS_EXPORTER = 2 }
TlsChannelBindingError :: enum i32 {NOT_IMPLEMENTED = 0, INVALID_STATE = 1, NOT_AVAILABLE = 2, NOT_SUPPORTED = 3, GENERAL_ERROR = 4 }
TlsRehandshakeMode :: enum i32 {TLS_REHANDSHAKE_NEVER = 0, TLS_REHANDSHAKE_SAFELY = 1, TLS_REHANDSHAKE_UNSAFELY = 2 }
_GTlsPasswordFlags :: enum i32 {NONE = 0, RETRY = 2, MANY_TRIES = 4, FINAL_TRY = 8, PKCS11_USER = 16, PKCS11_SECURITY_OFFICER = 32, PKCS11_CONTEXT_SPECIFIC = 64 }
TlsInteractionResult :: enum i32 {TLS_INTERACTION_UNHANDLED = 0, TLS_INTERACTION_HANDLED = 1, TLS_INTERACTION_FAILED = 2 }
DBusInterfaceSkeletonFlags :: enum i32 {NONE = 0, HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1 }
DBusObjectManagerClientFlags :: enum i32 {NONE = 0, DO_NOT_AUTO_START = 1 }
TlsDatabaseVerifyFlags :: enum i32 {NONE = 0 }
TlsDatabaseLookupFlags :: enum i32 {NONE = 0, KEYPAIR = 1 }
TlsCertificateRequestFlags :: enum i32 {REQUEST_NONE = 0 }
TlsProtocolVersion :: enum i32 {UNKNOWN = 0, SSL_3_0 = 1, TLS_1_0 = 2, TLS_1_1 = 3, TLS_1_2 = 4, TLS_1_3 = 5, DTLS_1_0 = 201, DTLS_1_2 = 202 }
IOModuleScopeFlags :: enum i32 {NONE = 0, BLOCK_DUPLICATES = 1 }
SocketClientEvent :: enum i32 {SOCKET_CLIENT_RESOLVING = 0, SOCKET_CLIENT_RESOLVED = 1, SOCKET_CLIENT_CONNECTING = 2, SOCKET_CLIENT_CONNECTED = 3, SOCKET_CLIENT_PROXY_NEGOTIATING = 4, SOCKET_CLIENT_PROXY_NEGOTIATED = 5, SOCKET_CLIENT_TLS_HANDSHAKING = 6, SOCKET_CLIENT_TLS_HANDSHAKED = 7, SOCKET_CLIENT_COMPLETE = 8 }
SocketListenerEvent :: enum i32 {SOCKET_LISTENER_BINDING = 0, SOCKET_LISTENER_BOUND = 1, SOCKET_LISTENER_LISTENING = 2, SOCKET_LISTENER_LISTENED = 3 }
TestDBusFlags :: enum i32 {NONE = 0 }
SubprocessFlags :: enum i32 {NONE = 0, STDIN_PIPE = 1, STDIN_INHERIT = 2, STDOUT_PIPE = 4, STDOUT_SILENCE = 8, STDERR_PIPE = 16, STDERR_SILENCE = 32, STDERR_MERGE = 64, INHERIT_FDS = 128, SEARCH_PATH_FROM_ENVP = 256 }
NotificationPriority :: enum i32 {NORMAL = 0, LOW = 1, HIGH = 2, URGENT = 3 }
NetworkConnectivity :: enum i32 {LOCAL = 1, LIMITED = 2, PORTAL = 3, FULL = 4 }
MemoryMonitorWarningLevel :: enum i32 {LOW = 50, MEDIUM = 100, CRITICAL = 255 }
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
}
next_file_func_ptr_anon_345 :: #type proc "c" (enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
close_fn_func_ptr_anon_346 :: #type proc "c" (enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
next_files_async_func_ptr_anon_347 :: #type proc "c" (enumerator: ^FileEnumerator, num_files: i32, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
next_files_finish_func_ptr_anon_348 :: #type proc "c" (enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
close_async_func_ptr_anon_349 :: #type proc "c" (enumerator: ^FileEnumerator, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
close_finish_func_ptr_anon_350 :: #type proc "c" (enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_g_reserved1_func_ptr_anon_351 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_352 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_353 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_354 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_355 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_356 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_357 :: #type proc "c" ()
_GFileEnumeratorClass :: struct {
    parent_class: gobj.ObjectClass,
    next_file: next_file_func_ptr_anon_345,
    close_fn: close_fn_func_ptr_anon_346,
    next_files_async: next_files_async_func_ptr_anon_347,
    next_files_finish: next_files_finish_func_ptr_anon_348,
    close_async: close_async_func_ptr_anon_349,
    close_finish: close_finish_func_ptr_anon_350,
    _g_reserved1: _g_reserved1_func_ptr_anon_351,
    _g_reserved2: _g_reserved2_func_ptr_anon_352,
    _g_reserved3: _g_reserved3_func_ptr_anon_353,
    _g_reserved4: _g_reserved4_func_ptr_anon_354,
    _g_reserved5: _g_reserved5_func_ptr_anon_355,
    _g_reserved6: _g_reserved6_func_ptr_anon_356,
    _g_reserved7: _g_reserved7_func_ptr_anon_357,
}
tell_func_ptr_anon_358 :: #type proc "c" (stream: ^FileInputStream) -> glib.offset
can_seek_func_ptr_anon_359 :: #type proc "c" (stream: ^FileInputStream) -> glib.boolean
seek_func_ptr_anon_360 :: #type proc "c" (stream: ^FileInputStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
query_info_func_ptr_anon_361 :: #type proc "c" (stream: ^FileInputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
query_info_async_func_ptr_anon_362 :: #type proc "c" (stream: ^FileInputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
query_info_finish_func_ptr_anon_363 :: #type proc "c" (stream: ^FileInputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
_g_reserved1_func_ptr_anon_364 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_365 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_366 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_367 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_368 :: #type proc "c" ()
_GFileInputStreamClass :: struct {
    parent_class: InputStreamClass,
    tell: tell_func_ptr_anon_358,
    can_seek: can_seek_func_ptr_anon_359,
    seek: seek_func_ptr_anon_360,
    query_info: query_info_func_ptr_anon_361,
    query_info_async: query_info_async_func_ptr_anon_362,
    query_info_finish: query_info_finish_func_ptr_anon_363,
    _g_reserved1: _g_reserved1_func_ptr_anon_364,
    _g_reserved2: _g_reserved2_func_ptr_anon_365,
    _g_reserved3: _g_reserved3_func_ptr_anon_366,
    _g_reserved4: _g_reserved4_func_ptr_anon_367,
    _g_reserved5: _g_reserved5_func_ptr_anon_368,
}
et_input_stream_func_ptr_anon_369 :: #type proc "c" (stream: ^IOStream) -> ^InputStream
et_output_stream_func_ptr_anon_370 :: #type proc "c" (stream: ^IOStream) -> ^OutputStream
close_fn_func_ptr_anon_371 :: #type proc "c" (stream: ^IOStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
close_async_func_ptr_anon_372 :: #type proc "c" (stream: ^IOStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
close_finish_func_ptr_anon_373 :: #type proc "c" (stream: ^IOStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_g_reserved1_func_ptr_anon_374 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_375 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_376 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_377 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_378 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_379 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_380 :: #type proc "c" ()
_g_reserved8_func_ptr_anon_381 :: #type proc "c" ()
_g_reserved9_func_ptr_anon_382 :: #type proc "c" ()
_g_reserved10_func_ptr_anon_383 :: #type proc "c" ()
_GIOStreamClass :: struct {
    parent_class: gobj.ObjectClass,
    get_input_stream: et_input_stream_func_ptr_anon_369,
    get_output_stream: et_output_stream_func_ptr_anon_370,
    close_fn: close_fn_func_ptr_anon_371,
    close_async: close_async_func_ptr_anon_372,
    close_finish: close_finish_func_ptr_anon_373,
    _g_reserved1: _g_reserved1_func_ptr_anon_374,
    _g_reserved2: _g_reserved2_func_ptr_anon_375,
    _g_reserved3: _g_reserved3_func_ptr_anon_376,
    _g_reserved4: _g_reserved4_func_ptr_anon_377,
    _g_reserved5: _g_reserved5_func_ptr_anon_378,
    _g_reserved6: _g_reserved6_func_ptr_anon_379,
    _g_reserved7: _g_reserved7_func_ptr_anon_380,
    _g_reserved8: _g_reserved8_func_ptr_anon_381,
    _g_reserved9: _g_reserved9_func_ptr_anon_382,
    _g_reserved10: _g_reserved10_func_ptr_anon_383,
}
tell_func_ptr_anon_384 :: #type proc "c" (stream: ^FileIOStream) -> glib.offset
can_seek_func_ptr_anon_385 :: #type proc "c" (stream: ^FileIOStream) -> glib.boolean
seek_func_ptr_anon_386 :: #type proc "c" (stream: ^FileIOStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
can_truncate_func_ptr_anon_387 :: #type proc "c" (stream: ^FileIOStream) -> glib.boolean
truncate_fn_func_ptr_anon_388 :: #type proc "c" (stream: ^FileIOStream, size_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
query_info_func_ptr_anon_389 :: #type proc "c" (stream: ^FileIOStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
query_info_async_func_ptr_anon_390 :: #type proc "c" (stream: ^FileIOStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
query_info_finish_func_ptr_anon_391 :: #type proc "c" (stream: ^FileIOStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
et_etag_func_ptr_anon_392 :: #type proc "c" (stream: ^FileIOStream) -> cstring
_g_reserved1_func_ptr_anon_393 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_394 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_395 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_396 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_397 :: #type proc "c" ()
_GFileIOStreamClass :: struct {
    parent_class: IOStreamClass,
    tell: tell_func_ptr_anon_384,
    can_seek: can_seek_func_ptr_anon_385,
    seek: seek_func_ptr_anon_386,
    can_truncate: can_truncate_func_ptr_anon_387,
    truncate_fn: truncate_fn_func_ptr_anon_388,
    query_info: query_info_func_ptr_anon_389,
    query_info_async: query_info_async_func_ptr_anon_390,
    query_info_finish: query_info_finish_func_ptr_anon_391,
    get_etag: et_etag_func_ptr_anon_392,
    _g_reserved1: _g_reserved1_func_ptr_anon_393,
    _g_reserved2: _g_reserved2_func_ptr_anon_394,
    _g_reserved3: _g_reserved3_func_ptr_anon_395,
    _g_reserved4: _g_reserved4_func_ptr_anon_396,
    _g_reserved5: _g_reserved5_func_ptr_anon_397,
}
changed_func_ptr_anon_398 :: #type proc "c" (monitor: ^FileMonitor, file: ^File, other_file: ^File, event_type: FileMonitorEvent)
cancel_func_ptr_anon_399 :: #type proc "c" (monitor: ^FileMonitor) -> glib.boolean
_g_reserved1_func_ptr_anon_400 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_401 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_402 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_403 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_404 :: #type proc "c" ()
_GFileMonitorClass :: struct {
    parent_class: gobj.ObjectClass,
    changed: changed_func_ptr_anon_398,
    cancel: cancel_func_ptr_anon_399,
    _g_reserved1: _g_reserved1_func_ptr_anon_400,
    _g_reserved2: _g_reserved2_func_ptr_anon_401,
    _g_reserved3: _g_reserved3_func_ptr_anon_402,
    _g_reserved4: _g_reserved4_func_ptr_anon_403,
    _g_reserved5: _g_reserved5_func_ptr_anon_404,
}
ot_completion_data_func_ptr_anon_405 :: #type proc "c" (filename_completer: ^FilenameCompleter)
_g_reserved1_func_ptr_anon_406 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_407 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_408 :: #type proc "c" ()
_GFilenameCompleterClass :: struct {
    parent_class: gobj.ObjectClass,
    got_completion_data: ot_completion_data_func_ptr_anon_405,
    _g_reserved1: _g_reserved1_func_ptr_anon_406,
    _g_reserved2: _g_reserved2_func_ptr_anon_407,
    _g_reserved3: _g_reserved3_func_ptr_anon_408,
}
tell_func_ptr_anon_409 :: #type proc "c" (stream: ^FileOutputStream) -> glib.offset
can_seek_func_ptr_anon_410 :: #type proc "c" (stream: ^FileOutputStream) -> glib.boolean
seek_func_ptr_anon_411 :: #type proc "c" (stream: ^FileOutputStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
can_truncate_func_ptr_anon_412 :: #type proc "c" (stream: ^FileOutputStream) -> glib.boolean
truncate_fn_func_ptr_anon_413 :: #type proc "c" (stream: ^FileOutputStream, size_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
query_info_func_ptr_anon_414 :: #type proc "c" (stream: ^FileOutputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
query_info_async_func_ptr_anon_415 :: #type proc "c" (stream: ^FileOutputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
query_info_finish_func_ptr_anon_416 :: #type proc "c" (stream: ^FileOutputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
et_etag_func_ptr_anon_417 :: #type proc "c" (stream: ^FileOutputStream) -> cstring
_g_reserved1_func_ptr_anon_418 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_419 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_420 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_421 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_422 :: #type proc "c" ()
_GFileOutputStreamClass :: struct {
    parent_class: OutputStreamClass,
    tell: tell_func_ptr_anon_409,
    can_seek: can_seek_func_ptr_anon_410,
    seek: seek_func_ptr_anon_411,
    can_truncate: can_truncate_func_ptr_anon_412,
    truncate_fn: truncate_fn_func_ptr_anon_413,
    query_info: query_info_func_ptr_anon_414,
    query_info_async: query_info_async_func_ptr_anon_415,
    query_info_finish: query_info_finish_func_ptr_anon_416,
    get_etag: et_etag_func_ptr_anon_417,
    _g_reserved1: _g_reserved1_func_ptr_anon_418,
    _g_reserved2: _g_reserved2_func_ptr_anon_419,
    _g_reserved3: _g_reserved3_func_ptr_anon_420,
    _g_reserved4: _g_reserved4_func_ptr_anon_421,
    _g_reserved5: _g_reserved5_func_ptr_anon_422,
}
to_string_func_ptr_anon_423 :: #type proc "c" (address: [^]InetAddress) -> cstring
to_bytes_func_ptr_anon_424 :: #type proc "c" (address: [^]InetAddress) -> ^glib.uint8
_GInetAddressClass :: struct {
    parent_class: gobj.ObjectClass,
    to_string: to_string_func_ptr_anon_423,
    to_bytes: to_bytes_func_ptr_anon_424,
}
et_family_func_ptr_anon_425 :: #type proc "c" (address: [^]SocketAddress) -> SocketFamily
et_native_size_func_ptr_anon_426 :: #type proc "c" (address: [^]SocketAddress) -> glib.ssize
to_native_func_ptr_anon_427 :: #type proc "c" (address: [^]SocketAddress, dest: glib.pointer, destlen: glib.size, error: ^^glib.Error) -> glib.boolean
_GSocketAddressClass :: struct {
    parent_class: gobj.ObjectClass,
    get_family: et_family_func_ptr_anon_425,
    get_native_size: et_native_size_func_ptr_anon_426,
    to_native: to_native_func_ptr_anon_427,
}
et_item_type_func_ptr_anon_428 :: #type proc "c" (list: ^ListModel) -> gobj.Type
et_n_items_func_ptr_anon_429 :: #type proc "c" (list: ^ListModel) -> glib.uint_
et_item_func_ptr_anon_430 :: #type proc "c" (list: ^ListModel, position: glib.uint_) -> glib.pointer
_GListModelInterface :: struct {
    g_iface: gobj.TypeInterface,
    get_item_type: et_item_type_func_ptr_anon_428,
    get_n_items: et_n_items_func_ptr_anon_429,
    get_item: et_item_func_ptr_anon_430,
}
load_func_ptr_anon_431 :: #type proc "c" (icon: ^LoadableIcon, size_p: i32, type: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^InputStream
load_async_func_ptr_anon_432 :: #type proc "c" (icon: ^LoadableIcon, size_p: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
load_finish_func_ptr_anon_433 :: #type proc "c" (icon: ^LoadableIcon, res: [^]AsyncResult, type: ^cstring, error: ^^glib.Error) -> ^InputStream
_GLoadableIconIface :: struct {
    g_iface: gobj.TypeInterface,
    load: load_func_ptr_anon_431,
    load_async: load_async_func_ptr_anon_432,
    load_finish: load_finish_func_ptr_anon_433,
}
_g_reserved1_func_ptr_anon_434 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_435 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_436 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_437 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_438 :: #type proc "c" ()
_GMemoryInputStreamClass :: struct {
    parent_class: InputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_434,
    _g_reserved2: _g_reserved2_func_ptr_anon_435,
    _g_reserved3: _g_reserved3_func_ptr_anon_436,
    _g_reserved4: _g_reserved4_func_ptr_anon_437,
    _g_reserved5: _g_reserved5_func_ptr_anon_438,
}
low_memory_warning_func_ptr_anon_439 :: #type proc "c" (monitor: ^MemoryMonitor, level: MemoryMonitorWarningLevel)
_GMemoryMonitorInterface :: struct {
    g_iface: gobj.TypeInterface,
    low_memory_warning: low_memory_warning_func_ptr_anon_439,
}
_g_reserved1_func_ptr_anon_440 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_441 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_442 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_443 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_444 :: #type proc "c" ()
_GMemoryOutputStreamClass :: struct {
    parent_class: OutputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_440,
    _g_reserved2: _g_reserved2_func_ptr_anon_441,
    _g_reserved3: _g_reserved3_func_ptr_anon_442,
    _g_reserved4: _g_reserved4_func_ptr_anon_443,
    _g_reserved5: _g_reserved5_func_ptr_anon_444,
}
is_mutable_func_ptr_anon_445 :: #type proc "c" (model: ^MenuModel) -> glib.boolean
et_n_items_func_ptr_anon_446 :: #type proc "c" (model: ^MenuModel) -> glib.int_
et_item_attributes_func_ptr_anon_447 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, attributes: [^]^glib.HashTable)
iterate_item_attributes_func_ptr_anon_448 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_) -> ^MenuAttributeIter
et_item_attribute_value_func_ptr_anon_449 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, attribute: cstring, expected_type: ^glib.VariantType) -> ^glib.Variant
et_item_links_func_ptr_anon_450 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, links: [^]^glib.HashTable)
iterate_item_links_func_ptr_anon_451 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_) -> ^MenuLinkIter
et_item_link_func_ptr_anon_452 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, link: cstring) -> ^MenuModel
_GMenuModelClass :: struct {
    parent_class: gobj.ObjectClass,
    is_mutable: is_mutable_func_ptr_anon_445,
    get_n_items: et_n_items_func_ptr_anon_446,
    get_item_attributes: et_item_attributes_func_ptr_anon_447,
    iterate_item_attributes: iterate_item_attributes_func_ptr_anon_448,
    get_item_attribute_value: et_item_attribute_value_func_ptr_anon_449,
    get_item_links: et_item_links_func_ptr_anon_450,
    iterate_item_links: iterate_item_links_func_ptr_anon_451,
    get_item_link: et_item_link_func_ptr_anon_452,
}
et_next_func_ptr_anon_453 :: #type proc "c" (iter: ^MenuAttributeIter, out_name: ^cstring, value: ^^glib.Variant) -> glib.boolean
_GMenuAttributeIterClass :: struct {
    parent_class: gobj.ObjectClass,
    get_next: et_next_func_ptr_anon_453,
}
et_next_func_ptr_anon_454 :: #type proc "c" (iter: ^MenuLinkIter, out_link: ^cstring, value: ^^MenuModel) -> glib.boolean
_GMenuLinkIterClass :: struct {
    parent_class: gobj.ObjectClass,
    get_next: et_next_func_ptr_anon_454,
}
changed_func_ptr_anon_455 :: #type proc "c" (mount: ^Mount)
unmounted_func_ptr_anon_456 :: #type proc "c" (mount: ^Mount)
et_root_func_ptr_anon_457 :: #type proc "c" (mount: ^Mount) -> ^File
et_name_func_ptr_anon_458 :: #type proc "c" (mount: ^Mount) -> cstring
et_icon_func_ptr_anon_459 :: #type proc "c" (mount: ^Mount) -> ^Icon
et_uuid_func_ptr_anon_460 :: #type proc "c" (mount: ^Mount) -> cstring
et_volume_func_ptr_anon_461 :: #type proc "c" (mount: ^Mount) -> ^Volume
et_drive_func_ptr_anon_462 :: #type proc "c" (mount: ^Mount) -> ^Drive
can_unmount_func_ptr_anon_463 :: #type proc "c" (mount: ^Mount) -> glib.boolean
can_eject_func_ptr_anon_464 :: #type proc "c" (mount: ^Mount) -> glib.boolean
unmount_func_ptr_anon_465 :: #type proc "c" (mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
unmount_finish_func_ptr_anon_466 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
eject_func_ptr_anon_467 :: #type proc "c" (mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_finish_func_ptr_anon_468 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
remount_func_ptr_anon_469 :: #type proc "c" (mount: ^Mount, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
remount_finish_func_ptr_anon_470 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
uess_content_type_func_ptr_anon_471 :: #type proc "c" (mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
uess_content_type_finish_func_ptr_anon_472 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring
uess_content_type_sync_func_ptr_anon_473 :: #type proc "c" (mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring
pre_unmount_func_ptr_anon_474 :: #type proc "c" (mount: ^Mount)
unmount_with_operation_func_ptr_anon_475 :: #type proc "c" (mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
unmount_with_operation_finish_func_ptr_anon_476 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
eject_with_operation_func_ptr_anon_477 :: #type proc "c" (mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_with_operation_finish_func_ptr_anon_478 :: #type proc "c" (mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_default_location_func_ptr_anon_479 :: #type proc "c" (mount: ^Mount) -> ^File
et_sort_key_func_ptr_anon_480 :: #type proc "c" (mount: ^Mount) -> cstring
et_symbolic_icon_func_ptr_anon_481 :: #type proc "c" (mount: ^Mount) -> ^Icon
_GMountIface :: struct {
    g_iface: gobj.TypeInterface,
    changed: changed_func_ptr_anon_455,
    unmounted: unmounted_func_ptr_anon_456,
    get_root: et_root_func_ptr_anon_457,
    get_name: et_name_func_ptr_anon_458,
    get_icon: et_icon_func_ptr_anon_459,
    get_uuid: et_uuid_func_ptr_anon_460,
    get_volume: et_volume_func_ptr_anon_461,
    get_drive: et_drive_func_ptr_anon_462,
    can_unmount: can_unmount_func_ptr_anon_463,
    can_eject: can_eject_func_ptr_anon_464,
    unmount: unmount_func_ptr_anon_465,
    unmount_finish: unmount_finish_func_ptr_anon_466,
    eject: eject_func_ptr_anon_467,
    eject_finish: eject_finish_func_ptr_anon_468,
    remount: remount_func_ptr_anon_469,
    remount_finish: remount_finish_func_ptr_anon_470,
    guess_content_type: uess_content_type_func_ptr_anon_471,
    guess_content_type_finish: uess_content_type_finish_func_ptr_anon_472,
    guess_content_type_sync: uess_content_type_sync_func_ptr_anon_473,
    pre_unmount: pre_unmount_func_ptr_anon_474,
    unmount_with_operation: unmount_with_operation_func_ptr_anon_475,
    unmount_with_operation_finish: unmount_with_operation_finish_func_ptr_anon_476,
    eject_with_operation: eject_with_operation_func_ptr_anon_477,
    eject_with_operation_finish: eject_with_operation_finish_func_ptr_anon_478,
    get_default_location: et_default_location_func_ptr_anon_479,
    get_sort_key: et_sort_key_func_ptr_anon_480,
    get_symbolic_icon: et_symbolic_icon_func_ptr_anon_481,
}
ask_password_func_ptr_anon_482 :: #type proc "c" (op: ^MountOperation, message: cstring, default_user: cstring, default_domain: cstring, flags: AskPasswordFlags)
ask_question_func_ptr_anon_483 :: #type proc "c" (op: ^MountOperation, message: cstring, choices: [^]cstring)
reply_func_ptr_anon_484 :: #type proc "c" (op: ^MountOperation, result: MountOperationResult)
aborted_func_ptr_anon_485 :: #type proc "c" (op: ^MountOperation)
show_processes_func_ptr_anon_486 :: #type proc "c" (op: ^MountOperation, message: cstring, processes: [^]glib.Array, choices: [^]cstring)
show_unmount_progress_func_ptr_anon_487 :: #type proc "c" (op: ^MountOperation, message: cstring, time_left: glib.int64, bytes_left: glib.int64)
_g_reserved1_func_ptr_anon_488 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_489 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_490 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_491 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_492 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_493 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_494 :: #type proc "c" ()
_g_reserved8_func_ptr_anon_495 :: #type proc "c" ()
_g_reserved9_func_ptr_anon_496 :: #type proc "c" ()
_GMountOperationClass :: struct {
    parent_class: gobj.ObjectClass,
    ask_password: ask_password_func_ptr_anon_482,
    ask_question: ask_question_func_ptr_anon_483,
    reply: reply_func_ptr_anon_484,
    aborted: aborted_func_ptr_anon_485,
    show_processes: show_processes_func_ptr_anon_486,
    show_unmount_progress: show_unmount_progress_func_ptr_anon_487,
    _g_reserved1: _g_reserved1_func_ptr_anon_488,
    _g_reserved2: _g_reserved2_func_ptr_anon_489,
    _g_reserved3: _g_reserved3_func_ptr_anon_490,
    _g_reserved4: _g_reserved4_func_ptr_anon_491,
    _g_reserved5: _g_reserved5_func_ptr_anon_492,
    _g_reserved6: _g_reserved6_func_ptr_anon_493,
    _g_reserved7: _g_reserved7_func_ptr_anon_494,
    _g_reserved8: _g_reserved8_func_ptr_anon_495,
    _g_reserved9: _g_reserved9_func_ptr_anon_496,
}
volume_added_func_ptr_anon_497 :: #type proc "c" (volume_monitor: ^VolumeMonitor, volume: ^Volume)
volume_removed_func_ptr_anon_498 :: #type proc "c" (volume_monitor: ^VolumeMonitor, volume: ^Volume)
volume_changed_func_ptr_anon_499 :: #type proc "c" (volume_monitor: ^VolumeMonitor, volume: ^Volume)
mount_added_func_ptr_anon_500 :: #type proc "c" (volume_monitor: ^VolumeMonitor, mount: ^Mount)
mount_removed_func_ptr_anon_501 :: #type proc "c" (volume_monitor: ^VolumeMonitor, mount: ^Mount)
mount_pre_unmount_func_ptr_anon_502 :: #type proc "c" (volume_monitor: ^VolumeMonitor, mount: ^Mount)
mount_changed_func_ptr_anon_503 :: #type proc "c" (volume_monitor: ^VolumeMonitor, mount: ^Mount)
drive_connected_func_ptr_anon_504 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
drive_disconnected_func_ptr_anon_505 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
drive_changed_func_ptr_anon_506 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
is_supported_func_ptr_anon_507 :: #type proc "c" () -> glib.boolean
et_connected_drives_func_ptr_anon_508 :: #type proc "c" (volume_monitor: ^VolumeMonitor) -> ^glib.List
et_volumes_func_ptr_anon_509 :: #type proc "c" (volume_monitor: ^VolumeMonitor) -> ^glib.List
et_mounts_func_ptr_anon_510 :: #type proc "c" (volume_monitor: ^VolumeMonitor) -> ^glib.List
et_volume_for_uuid_func_ptr_anon_511 :: #type proc "c" (volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Volume
et_mount_for_uuid_func_ptr_anon_512 :: #type proc "c" (volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Mount
adopt_orphan_mount_func_ptr_anon_513 :: #type proc "c" (mount: ^Mount, volume_monitor: ^VolumeMonitor) -> ^Volume
drive_eject_button_func_ptr_anon_514 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
drive_stop_button_func_ptr_anon_515 :: #type proc "c" (volume_monitor: ^VolumeMonitor, drive: ^Drive)
_g_reserved1_func_ptr_anon_516 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_517 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_518 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_519 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_520 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_521 :: #type proc "c" ()
_GVolumeMonitorClass :: struct {
    parent_class: gobj.ObjectClass,
    volume_added: volume_added_func_ptr_anon_497,
    volume_removed: volume_removed_func_ptr_anon_498,
    volume_changed: volume_changed_func_ptr_anon_499,
    mount_added: mount_added_func_ptr_anon_500,
    mount_removed: mount_removed_func_ptr_anon_501,
    mount_pre_unmount: mount_pre_unmount_func_ptr_anon_502,
    mount_changed: mount_changed_func_ptr_anon_503,
    drive_connected: drive_connected_func_ptr_anon_504,
    drive_disconnected: drive_disconnected_func_ptr_anon_505,
    drive_changed: drive_changed_func_ptr_anon_506,
    is_supported: is_supported_func_ptr_anon_507,
    get_connected_drives: et_connected_drives_func_ptr_anon_508,
    get_volumes: et_volumes_func_ptr_anon_509,
    get_mounts: et_mounts_func_ptr_anon_510,
    get_volume_for_uuid: et_volume_for_uuid_func_ptr_anon_511,
    get_mount_for_uuid: et_mount_for_uuid_func_ptr_anon_512,
    adopt_orphan_mount: adopt_orphan_mount_func_ptr_anon_513,
    drive_eject_button: drive_eject_button_func_ptr_anon_514,
    drive_stop_button: drive_stop_button_func_ptr_anon_515,
    _g_reserved1: _g_reserved1_func_ptr_anon_516,
    _g_reserved2: _g_reserved2_func_ptr_anon_517,
    _g_reserved3: _g_reserved3_func_ptr_anon_518,
    _g_reserved4: _g_reserved4_func_ptr_anon_519,
    _g_reserved5: _g_reserved5_func_ptr_anon_520,
    _g_reserved6: _g_reserved6_func_ptr_anon_521,
}
et_mount_for_mount_path_func_ptr_anon_522 :: #type proc "c" (mount_path: cstring, cancellable: ^Cancellable) -> ^Mount
_GNativeVolumeMonitorClass :: struct {
    parent_class: VolumeMonitorClass,
    get_mount_for_mount_path: et_mount_for_mount_path_func_ptr_anon_522,
}
network_changed_func_ptr_anon_523 :: #type proc "c" (monitor: ^NetworkMonitor, network_available: glib.boolean)
can_reach_func_ptr_anon_524 :: #type proc "c" (monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
can_reach_async_func_ptr_anon_525 :: #type proc "c" (monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
can_reach_finish_func_ptr_anon_526 :: #type proc "c" (monitor: ^NetworkMonitor, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_GNetworkMonitorInterface :: struct {
    g_iface: gobj.TypeInterface,
    network_changed: network_changed_func_ptr_anon_523,
    can_reach: can_reach_func_ptr_anon_524,
    can_reach_async: can_reach_async_func_ptr_anon_525,
    can_reach_finish: can_reach_finish_func_ptr_anon_526,
}
acquire_func_ptr_anon_527 :: #type proc "c" (permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
acquire_async_func_ptr_anon_528 :: #type proc "c" (permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
acquire_finish_func_ptr_anon_529 :: #type proc "c" (permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
release_func_ptr_anon_530 :: #type proc "c" (permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
release_async_func_ptr_anon_531 :: #type proc "c" (permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
release_finish_func_ptr_anon_532 :: #type proc "c" (permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_GPermissionClass :: struct {
    parent_class: gobj.ObjectClass,
    acquire: acquire_func_ptr_anon_527,
    acquire_async: acquire_async_func_ptr_anon_528,
    acquire_finish: acquire_finish_func_ptr_anon_529,
    release: release_func_ptr_anon_530,
    release_async: release_async_func_ptr_anon_531,
    release_finish: release_finish_func_ptr_anon_532,
    reserved: [16]glib.pointer,
}
can_poll_func_ptr_anon_533 :: #type proc "c" (stream: ^PollableInputStream) -> glib.boolean
is_readable_func_ptr_anon_534 :: #type proc "c" (stream: ^PollableInputStream) -> glib.boolean
create_source_func_ptr_anon_535 :: #type proc "c" (stream: ^PollableInputStream, cancellable: ^Cancellable) -> ^glib.Source
read_nonblocking_func_ptr_anon_536 :: #type proc "c" (stream: ^PollableInputStream, buffer: rawptr, count: glib.size, error: ^^glib.Error) -> glib.ssize
_GPollableInputStreamInterface :: struct {
    g_iface: gobj.TypeInterface,
    can_poll: can_poll_func_ptr_anon_533,
    is_readable: is_readable_func_ptr_anon_534,
    create_source: create_source_func_ptr_anon_535,
    read_nonblocking: read_nonblocking_func_ptr_anon_536,
}
can_poll_func_ptr_anon_537 :: #type proc "c" (stream: ^PollableOutputStream) -> glib.boolean
is_writable_func_ptr_anon_538 :: #type proc "c" (stream: ^PollableOutputStream) -> glib.boolean
create_source_func_ptr_anon_539 :: #type proc "c" (stream: ^PollableOutputStream, cancellable: ^Cancellable) -> ^glib.Source
write_nonblocking_func_ptr_anon_540 :: #type proc "c" (stream: ^PollableOutputStream, buffer: rawptr, count: glib.size, error: ^^glib.Error) -> glib.ssize
writev_nonblocking_func_ptr_anon_541 :: #type proc "c" (stream: ^PollableOutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, error: ^^glib.Error) -> PollableReturn
_GPollableOutputStreamInterface :: struct {
    g_iface: gobj.TypeInterface,
    can_poll: can_poll_func_ptr_anon_537,
    is_writable: is_writable_func_ptr_anon_538,
    create_source: create_source_func_ptr_anon_539,
    write_nonblocking: write_nonblocking_func_ptr_anon_540,
    writev_nonblocking: writev_nonblocking_func_ptr_anon_541,
}
connect_func_ptr_anon_542 :: #type proc "c" (proxy: ^Proxy, connection: ^IOStream, proxy_address: [^]ProxyAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> ^IOStream
connect_async_func_ptr_anon_543 :: #type proc "c" (proxy: ^Proxy, connection: ^IOStream, proxy_address: [^]ProxyAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
connect_finish_func_ptr_anon_544 :: #type proc "c" (proxy: ^Proxy, result: ^AsyncResult, error: ^^glib.Error) -> ^IOStream
supports_hostname_func_ptr_anon_545 :: #type proc "c" (proxy: ^Proxy) -> glib.boolean
_GProxyInterface :: struct {
    g_iface: gobj.TypeInterface,
    connect: connect_func_ptr_anon_542,
    connect_async: connect_async_func_ptr_anon_543,
    connect_finish: connect_finish_func_ptr_anon_544,
    supports_hostname: supports_hostname_func_ptr_anon_545,
}
next_func_ptr_anon_546 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketAddress
next_async_func_ptr_anon_547 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
next_finish_func_ptr_anon_548 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketAddress
_GSocketAddressEnumeratorClass :: struct {
    parent_class: gobj.ObjectClass,
    next: next_func_ptr_anon_546,
    next_async: next_async_func_ptr_anon_547,
    next_finish: next_finish_func_ptr_anon_548,
}
_g_reserved1_func_ptr_anon_549 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_550 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_551 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_552 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_553 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_554 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_555 :: #type proc "c" ()
_GProxyAddressEnumeratorClass :: struct {
    parent_class: SocketAddressEnumeratorClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_549,
    _g_reserved2: _g_reserved2_func_ptr_anon_550,
    _g_reserved3: _g_reserved3_func_ptr_anon_551,
    _g_reserved4: _g_reserved4_func_ptr_anon_552,
    _g_reserved5: _g_reserved5_func_ptr_anon_553,
    _g_reserved6: _g_reserved6_func_ptr_anon_554,
    _g_reserved7: _g_reserved7_func_ptr_anon_555,
}
is_supported_func_ptr_anon_556 :: #type proc "c" (resolver: ^ProxyResolver) -> glib.boolean
lookup_func_ptr_anon_557 :: #type proc "c" (resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring
lookup_async_func_ptr_anon_558 :: #type proc "c" (resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_finish_func_ptr_anon_559 :: #type proc "c" (resolver: ^ProxyResolver, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring
_GProxyResolverInterface :: struct {
    g_iface: gobj.TypeInterface,
    is_supported: is_supported_func_ptr_anon_556,
    lookup: lookup_func_ptr_anon_557,
    lookup_async: lookup_async_func_ptr_anon_558,
    lookup_finish: lookup_finish_func_ptr_anon_559,
}
activate_action_full_func_ptr_anon_560 :: #type proc "c" (remote: ^RemoteActionGroup, action_name: cstring, parameter: ^glib.Variant, platform_data: ^glib.Variant)
change_action_state_full_func_ptr_anon_561 :: #type proc "c" (remote: ^RemoteActionGroup, action_name: cstring, value: ^glib.Variant, platform_data: ^glib.Variant)
_GRemoteActionGroupInterface :: struct {
    g_iface: gobj.TypeInterface,
    activate_action_full: activate_action_full_func_ptr_anon_560,
    change_action_state_full: change_action_state_full_func_ptr_anon_561,
}
reload_func_ptr_anon_562 :: #type proc "c" (resolver: ^Resolver)
lookup_by_name_func_ptr_anon_563 :: #type proc "c" (resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
lookup_by_name_async_func_ptr_anon_564 :: #type proc "c" (resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_by_name_finish_func_ptr_anon_565 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
lookup_by_address_func_ptr_anon_566 :: #type proc "c" (resolver: ^Resolver, address: [^]InetAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring
lookup_by_address_async_func_ptr_anon_567 :: #type proc "c" (resolver: ^Resolver, address: [^]InetAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_by_address_finish_func_ptr_anon_568 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> cstring
lookup_service_func_ptr_anon_569 :: #type proc "c" (resolver: ^Resolver, rrname: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
lookup_service_async_func_ptr_anon_570 :: #type proc "c" (resolver: ^Resolver, rrname: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_service_finish_func_ptr_anon_571 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
lookup_records_func_ptr_anon_572 :: #type proc "c" (resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
lookup_records_async_func_ptr_anon_573 :: #type proc "c" (resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_records_finish_func_ptr_anon_574 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
ResolverNameLookupFlags :: enum i32 {DEFAULT = 0, IPV4_ONLY = 1, IPV6_ONLY = 2 }
lookup_by_name_with_flags_async_func_ptr_anon_575 :: #type proc "c" (resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_by_name_with_flags_finish_func_ptr_anon_576 :: #type proc "c" (resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
lookup_by_name_with_flags_func_ptr_anon_577 :: #type proc "c" (resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
_GResolverClass :: struct {
    parent_class: gobj.ObjectClass,
    reload: reload_func_ptr_anon_562,
    lookup_by_name: lookup_by_name_func_ptr_anon_563,
    lookup_by_name_async: lookup_by_name_async_func_ptr_anon_564,
    lookup_by_name_finish: lookup_by_name_finish_func_ptr_anon_565,
    lookup_by_address: lookup_by_address_func_ptr_anon_566,
    lookup_by_address_async: lookup_by_address_async_func_ptr_anon_567,
    lookup_by_address_finish: lookup_by_address_finish_func_ptr_anon_568,
    lookup_service: lookup_service_func_ptr_anon_569,
    lookup_service_async: lookup_service_async_func_ptr_anon_570,
    lookup_service_finish: lookup_service_finish_func_ptr_anon_571,
    lookup_records: lookup_records_func_ptr_anon_572,
    lookup_records_async: lookup_records_async_func_ptr_anon_573,
    lookup_records_finish: lookup_records_finish_func_ptr_anon_574,
    lookup_by_name_with_flags_async: lookup_by_name_with_flags_async_func_ptr_anon_575,
    lookup_by_name_with_flags_finish: lookup_by_name_with_flags_finish_func_ptr_anon_576,
    lookup_by_name_with_flags: lookup_by_name_with_flags_func_ptr_anon_577,
}
tell_func_ptr_anon_578 :: #type proc "c" (seekable: ^Seekable) -> glib.offset
can_seek_func_ptr_anon_579 :: #type proc "c" (seekable: ^Seekable) -> glib.boolean
seek_func_ptr_anon_580 :: #type proc "c" (seekable: ^Seekable, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
can_truncate_func_ptr_anon_581 :: #type proc "c" (seekable: ^Seekable) -> glib.boolean
truncate_fn_func_ptr_anon_582 :: #type proc "c" (seekable: ^Seekable, offset_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
_GSeekableIface :: struct {
    g_iface: gobj.TypeInterface,
    tell: tell_func_ptr_anon_578,
    can_seek: can_seek_func_ptr_anon_579,
    seek: seek_func_ptr_anon_580,
    can_truncate: can_truncate_func_ptr_anon_581,
    truncate_fn: truncate_fn_func_ptr_anon_582,
}
writable_changed_func_ptr_anon_583 :: #type proc "c" (settings: [^]Settings, key: cstring)
changed_func_ptr_anon_584 :: #type proc "c" (settings: [^]Settings, key: cstring)
writable_change_event_func_ptr_anon_585 :: #type proc "c" (settings: [^]Settings, key: glib.Quark) -> glib.boolean
change_event_func_ptr_anon_586 :: #type proc "c" (settings: [^]Settings, keys: [^]glib.Quark, n_keys: glib.int_) -> glib.boolean
_GSettingsClass :: struct {
    parent_class: gobj.ObjectClass,
    writable_changed: writable_changed_func_ptr_anon_583,
    changed: changed_func_ptr_anon_584,
    writable_change_event: writable_change_event_func_ptr_anon_585,
    change_event: change_event_func_ptr_anon_586,
    padding: [20]glib.pointer,
}
SettingsBindFlags :: enum i32 {DEFAULT = 0, GET = 1, SET = 2, NO_SENSITIVITY = 4, GET_NO_CHANGES = 8, INVERT_BOOLEAN = 16 }
_g_reserved1_func_ptr_anon_587 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_588 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_589 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_590 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_591 :: #type proc "c" ()
_GSimpleProxyResolverClass :: struct {
    parent_class: gobj.ObjectClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_587,
    _g_reserved2: _g_reserved2_func_ptr_anon_588,
    _g_reserved3: _g_reserved3_func_ptr_anon_589,
    _g_reserved4: _g_reserved4_func_ptr_anon_590,
    _g_reserved5: _g_reserved5_func_ptr_anon_591,
}
_g_reserved1_func_ptr_anon_592 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_593 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_594 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_595 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_596 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_597 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_598 :: #type proc "c" ()
_g_reserved8_func_ptr_anon_599 :: #type proc "c" ()
_g_reserved9_func_ptr_anon_600 :: #type proc "c" ()
_g_reserved10_func_ptr_anon_601 :: #type proc "c" ()
_GSocketClass :: struct {
    parent_class: gobj.ObjectClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_592,
    _g_reserved2: _g_reserved2_func_ptr_anon_593,
    _g_reserved3: _g_reserved3_func_ptr_anon_594,
    _g_reserved4: _g_reserved4_func_ptr_anon_595,
    _g_reserved5: _g_reserved5_func_ptr_anon_596,
    _g_reserved6: _g_reserved6_func_ptr_anon_597,
    _g_reserved7: _g_reserved7_func_ptr_anon_598,
    _g_reserved8: _g_reserved8_func_ptr_anon_599,
    _g_reserved9: _g_reserved9_func_ptr_anon_600,
    _g_reserved10: _g_reserved10_func_ptr_anon_601,
}
event_func_ptr_anon_602 :: #type proc "c" (client: ^SocketClient, event: SocketClientEvent, connectable: ^SocketConnectable, connection: ^IOStream)
_g_reserved1_func_ptr_anon_603 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_604 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_605 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_606 :: #type proc "c" ()
_GSocketClientClass :: struct {
    parent_class: gobj.ObjectClass,
    event: event_func_ptr_anon_602,
    _g_reserved1: _g_reserved1_func_ptr_anon_603,
    _g_reserved2: _g_reserved2_func_ptr_anon_604,
    _g_reserved3: _g_reserved3_func_ptr_anon_605,
    _g_reserved4: _g_reserved4_func_ptr_anon_606,
}
enumerate_func_ptr_anon_607 :: #type proc "c" (connectable: ^SocketConnectable) -> ^SocketAddressEnumerator
proxy_enumerate_func_ptr_anon_608 :: #type proc "c" (connectable: ^SocketConnectable) -> ^SocketAddressEnumerator
to_string_func_ptr_anon_609 :: #type proc "c" (connectable: ^SocketConnectable) -> cstring
_GSocketConnectableIface :: struct {
    g_iface: gobj.TypeInterface,
    enumerate: enumerate_func_ptr_anon_607,
    proxy_enumerate: proxy_enumerate_func_ptr_anon_608,
    to_string: to_string_func_ptr_anon_609,
}
_g_reserved1_func_ptr_anon_610 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_611 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_612 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_613 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_614 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_615 :: #type proc "c" ()
_GSocketConnectionClass :: struct {
    parent_class: IOStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_610,
    _g_reserved2: _g_reserved2_func_ptr_anon_611,
    _g_reserved3: _g_reserved3_func_ptr_anon_612,
    _g_reserved4: _g_reserved4_func_ptr_anon_613,
    _g_reserved5: _g_reserved5_func_ptr_anon_614,
    _g_reserved6: _g_reserved6_func_ptr_anon_615,
}
et_size_func_ptr_anon_616 :: #type proc "c" (message: ^SocketControlMessage) -> glib.size
et_level_func_ptr_anon_617 :: #type proc "c" (message: ^SocketControlMessage) -> i32
et_type_func_ptr_anon_618 :: #type proc "c" (message: ^SocketControlMessage) -> i32
serialize_func_ptr_anon_619 :: #type proc "c" (message: ^SocketControlMessage, data: glib.pointer)
deserialize_func_ptr_anon_620 :: #type proc "c" (level: i32, type: i32, size_p: glib.size, data: glib.pointer) -> ^SocketControlMessage
_g_reserved1_func_ptr_anon_621 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_622 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_623 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_624 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_625 :: #type proc "c" ()
_GSocketControlMessageClass :: struct {
    parent_class: gobj.ObjectClass,
    get_size: et_size_func_ptr_anon_616,
    get_level: et_level_func_ptr_anon_617,
    get_type: et_type_func_ptr_anon_618,
    serialize: serialize_func_ptr_anon_619,
    deserialize: deserialize_func_ptr_anon_620,
    _g_reserved1: _g_reserved1_func_ptr_anon_621,
    _g_reserved2: _g_reserved2_func_ptr_anon_622,
    _g_reserved3: _g_reserved3_func_ptr_anon_623,
    _g_reserved4: _g_reserved4_func_ptr_anon_624,
    _g_reserved5: _g_reserved5_func_ptr_anon_625,
}
changed_func_ptr_anon_626 :: #type proc "c" (listener: ^SocketListener)
event_func_ptr_anon_627 :: #type proc "c" (listener: ^SocketListener, event: SocketListenerEvent, socket: ^Socket)
_g_reserved2_func_ptr_anon_628 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_629 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_630 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_631 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_632 :: #type proc "c" ()
_GSocketListenerClass :: struct {
    parent_class: gobj.ObjectClass,
    changed: changed_func_ptr_anon_626,
    event: event_func_ptr_anon_627,
    _g_reserved2: _g_reserved2_func_ptr_anon_628,
    _g_reserved3: _g_reserved3_func_ptr_anon_629,
    _g_reserved4: _g_reserved4_func_ptr_anon_630,
    _g_reserved5: _g_reserved5_func_ptr_anon_631,
    _g_reserved6: _g_reserved6_func_ptr_anon_632,
}
incoming_func_ptr_anon_633 :: #type proc "c" (service: ^SocketService, connection: ^SocketConnection, source_object: ^gobj.Object) -> glib.boolean
_g_reserved1_func_ptr_anon_634 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_635 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_636 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_637 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_638 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_639 :: #type proc "c" ()
_GSocketServiceClass :: struct {
    parent_class: SocketListenerClass,
    incoming: incoming_func_ptr_anon_633,
    _g_reserved1: _g_reserved1_func_ptr_anon_634,
    _g_reserved2: _g_reserved2_func_ptr_anon_635,
    _g_reserved3: _g_reserved3_func_ptr_anon_636,
    _g_reserved4: _g_reserved4_func_ptr_anon_637,
    _g_reserved5: _g_reserved5_func_ptr_anon_638,
    _g_reserved6: _g_reserved6_func_ptr_anon_639,
}
run_func_ptr_anon_640 :: #type proc "c" (service: ^ThreadedSocketService, connection: ^SocketConnection, source_object: ^gobj.Object) -> glib.boolean
_g_reserved1_func_ptr_anon_641 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_642 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_643 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_644 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_645 :: #type proc "c" ()
_GThreadedSocketServiceClass :: struct {
    parent_class: SocketServiceClass,
    run: run_func_ptr_anon_640,
    _g_reserved1: _g_reserved1_func_ptr_anon_641,
    _g_reserved2: _g_reserved2_func_ptr_anon_642,
    _g_reserved3: _g_reserved3_func_ptr_anon_643,
    _g_reserved4: _g_reserved4_func_ptr_anon_644,
    _g_reserved5: _g_reserved5_func_ptr_anon_645,
}
supports_tls_func_ptr_anon_646 :: #type proc "c" (backend: ^TlsBackend) -> glib.boolean
et_certificate_type_func_ptr_anon_647 :: #type proc "c" () -> gobj.Type
et_client_connection_type_func_ptr_anon_648 :: #type proc "c" () -> gobj.Type
et_server_connection_type_func_ptr_anon_649 :: #type proc "c" () -> gobj.Type
et_file_database_type_func_ptr_anon_650 :: #type proc "c" () -> gobj.Type
et_default_database_func_ptr_anon_651 :: #type proc "c" (backend: ^TlsBackend) -> ^TlsDatabase
supports_dtls_func_ptr_anon_652 :: #type proc "c" (backend: ^TlsBackend) -> glib.boolean
et_dtls_client_connection_type_func_ptr_anon_653 :: #type proc "c" () -> gobj.Type
et_dtls_server_connection_type_func_ptr_anon_654 :: #type proc "c" () -> gobj.Type
_GTlsBackendInterface :: struct {
    g_iface: gobj.TypeInterface,
    supports_tls: supports_tls_func_ptr_anon_646,
    get_certificate_type: et_certificate_type_func_ptr_anon_647,
    get_client_connection_type: et_client_connection_type_func_ptr_anon_648,
    get_server_connection_type: et_server_connection_type_func_ptr_anon_649,
    get_file_database_type: et_file_database_type_func_ptr_anon_650,
    get_default_database: et_default_database_func_ptr_anon_651,
    supports_dtls: supports_dtls_func_ptr_anon_652,
    get_dtls_client_connection_type: et_dtls_client_connection_type_func_ptr_anon_653,
    get_dtls_server_connection_type: et_dtls_server_connection_type_func_ptr_anon_654,
}
verify_func_ptr_anon_655 :: #type proc "c" (cert: ^TlsCertificate, identity: ^SocketConnectable, trusted_ca: ^TlsCertificate) -> TlsCertificateFlags
_GTlsCertificateClass :: struct {
    parent_class: gobj.ObjectClass,
    verify: verify_func_ptr_anon_655,
    padding: [8]glib.pointer,
}
accept_certificate_func_ptr_anon_656 :: #type proc "c" (connection: ^TlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean
handshake_func_ptr_anon_657 :: #type proc "c" (conn: ^TlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
handshake_async_func_ptr_anon_658 :: #type proc "c" (conn: ^TlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
handshake_finish_func_ptr_anon_659 :: #type proc "c" (conn: ^TlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_binding_data_func_ptr_anon_660 :: #type proc "c" (conn: ^TlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean
et_negotiated_protocol_func_ptr_anon_661 :: #type proc "c" (conn: ^TlsConnection) -> cstring
_GTlsConnectionClass :: struct {
    parent_class: IOStreamClass,
    accept_certificate: accept_certificate_func_ptr_anon_656,
    handshake: handshake_func_ptr_anon_657,
    handshake_async: handshake_async_func_ptr_anon_658,
    handshake_finish: handshake_finish_func_ptr_anon_659,
    get_binding_data: et_binding_data_func_ptr_anon_660,
    get_negotiated_protocol: et_negotiated_protocol_func_ptr_anon_661,
    padding: [6]glib.pointer,
}
copy_session_state_func_ptr_anon_662 :: #type proc "c" (conn: ^TlsClientConnection, source: ^TlsClientConnection)
_GTlsClientConnectionInterface :: struct {
    g_iface: gobj.TypeInterface,
    copy_session_state: copy_session_state_func_ptr_anon_662,
}
verify_chain_func_ptr_anon_663 :: #type proc "c" (self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsCertificateFlags
verify_chain_async_func_ptr_anon_664 :: #type proc "c" (self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
verify_chain_finish_func_ptr_anon_665 :: #type proc "c" (self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> TlsCertificateFlags
create_certificate_handle_func_ptr_anon_666 :: #type proc "c" (self: ^TlsDatabase, certificate: ^TlsCertificate) -> cstring
lookup_certificate_for_handle_func_ptr_anon_667 :: #type proc "c" (self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate
lookup_certificate_for_handle_async_func_ptr_anon_668 :: #type proc "c" (self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_certificate_for_handle_finish_func_ptr_anon_669 :: #type proc "c" (self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate
lookup_certificate_issuer_func_ptr_anon_670 :: #type proc "c" (self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate
lookup_certificate_issuer_async_func_ptr_anon_671 :: #type proc "c" (self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_certificate_issuer_finish_func_ptr_anon_672 :: #type proc "c" (self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate
lookup_certificates_issued_by_func_ptr_anon_673 :: #type proc "c" (self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
lookup_certificates_issued_by_async_func_ptr_anon_674 :: #type proc "c" (self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
lookup_certificates_issued_by_finish_func_ptr_anon_675 :: #type proc "c" (self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
_GTlsDatabaseClass :: struct {
    parent_class: gobj.ObjectClass,
    verify_chain: verify_chain_func_ptr_anon_663,
    verify_chain_async: verify_chain_async_func_ptr_anon_664,
    verify_chain_finish: verify_chain_finish_func_ptr_anon_665,
    create_certificate_handle: create_certificate_handle_func_ptr_anon_666,
    lookup_certificate_for_handle: lookup_certificate_for_handle_func_ptr_anon_667,
    lookup_certificate_for_handle_async: lookup_certificate_for_handle_async_func_ptr_anon_668,
    lookup_certificate_for_handle_finish: lookup_certificate_for_handle_finish_func_ptr_anon_669,
    lookup_certificate_issuer: lookup_certificate_issuer_func_ptr_anon_670,
    lookup_certificate_issuer_async: lookup_certificate_issuer_async_func_ptr_anon_671,
    lookup_certificate_issuer_finish: lookup_certificate_issuer_finish_func_ptr_anon_672,
    lookup_certificates_issued_by: lookup_certificates_issued_by_func_ptr_anon_673,
    lookup_certificates_issued_by_async: lookup_certificates_issued_by_async_func_ptr_anon_674,
    lookup_certificates_issued_by_finish: lookup_certificates_issued_by_finish_func_ptr_anon_675,
    padding: [16]glib.pointer,
}
ask_password_func_ptr_anon_676 :: #type proc "c" (interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult
ask_password_async_func_ptr_anon_677 :: #type proc "c" (interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
ask_password_finish_func_ptr_anon_678 :: #type proc "c" (interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult
request_certificate_func_ptr_anon_679 :: #type proc "c" (interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult
request_certificate_async_func_ptr_anon_680 :: #type proc "c" (interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
request_certificate_finish_func_ptr_anon_681 :: #type proc "c" (interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult
_GTlsInteractionClass :: struct {
    parent_class: gobj.ObjectClass,
    ask_password: ask_password_func_ptr_anon_676,
    ask_password_async: ask_password_async_func_ptr_anon_677,
    ask_password_finish: ask_password_finish_func_ptr_anon_678,
    request_certificate: request_certificate_func_ptr_anon_679,
    request_certificate_async: request_certificate_async_func_ptr_anon_680,
    request_certificate_finish: request_certificate_finish_func_ptr_anon_681,
    padding: [21]glib.pointer,
}
et_value_func_ptr_anon_682 :: #type proc "c" (password: ^TlsPassword, length: ^glib.size) -> ^glib.uchar
set_value_func_ptr_anon_683 :: #type proc "c" (password: ^TlsPassword, value: ^glib.uchar, length: glib.ssize, destroy: glib.DestroyNotify)
et_default_warning_func_ptr_anon_684 :: #type proc "c" (password: ^TlsPassword) -> cstring
_GTlsPasswordClass :: struct {
    parent_class: gobj.ObjectClass,
    get_value: et_value_func_ptr_anon_682,
    set_value: set_value_func_ptr_anon_683,
    get_default_warning: et_default_warning_func_ptr_anon_684,
    padding: [4]glib.pointer,
}
_g_reserved1_func_ptr_anon_685 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_686 :: #type proc "c" ()
_GUnixCredentialsMessageClass :: struct {
    parent_class: SocketControlMessageClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_685,
    _g_reserved2: _g_reserved2_func_ptr_anon_686,
}
_g_reserved1_func_ptr_anon_687 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_688 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_689 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_690 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_691 :: #type proc "c" ()
_GUnixFDListClass :: struct {
    parent_class: gobj.ObjectClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_687,
    _g_reserved2: _g_reserved2_func_ptr_anon_688,
    _g_reserved3: _g_reserved3_func_ptr_anon_689,
    _g_reserved4: _g_reserved4_func_ptr_anon_690,
    _g_reserved5: _g_reserved5_func_ptr_anon_691,
}
is_active_func_ptr_anon_692 :: #type proc "c" (vfs: [^]Vfs) -> glib.boolean
et_file_for_path_func_ptr_anon_693 :: #type proc "c" (vfs: [^]Vfs, path: cstring) -> ^File
et_file_for_uri_func_ptr_anon_694 :: #type proc "c" (vfs: [^]Vfs, uri: cstring) -> ^File
et_supported_uri_schemes_func_ptr_anon_695 :: #type proc "c" (vfs: [^]Vfs) -> ^cstring
parse_name_func_ptr_anon_696 :: #type proc "c" (vfs: [^]Vfs, parse_name: cstring) -> ^File
local_file_add_info_func_ptr_anon_697 :: #type proc "c" (vfs: [^]Vfs, filename: cstring, device: glib.uint64, attribute_matcher: ^FileAttributeMatcher, info: ^FileInfo, cancellable: ^Cancellable, extra_data: ^glib.pointer, free_extra_data: ^glib.DestroyNotify)
add_writable_namespaces_func_ptr_anon_698 :: #type proc "c" (vfs: [^]Vfs, list: ^FileAttributeInfoList)
local_file_set_attributes_func_ptr_anon_699 :: #type proc "c" (vfs: [^]Vfs, filename: cstring, info: ^FileInfo, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
local_file_removed_func_ptr_anon_700 :: #type proc "c" (vfs: [^]Vfs, filename: cstring)
local_file_moved_func_ptr_anon_701 :: #type proc "c" (vfs: [^]Vfs, source: cstring, dest: cstring)
deserialize_icon_func_ptr_anon_702 :: #type proc "c" (vfs: [^]Vfs, value: ^glib.Variant) -> ^Icon
_g_reserved1_func_ptr_anon_703 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_704 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_705 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_706 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_707 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_708 :: #type proc "c" ()
_GVfsClass :: struct {
    parent_class: gobj.ObjectClass,
    is_active: is_active_func_ptr_anon_692,
    get_file_for_path: et_file_for_path_func_ptr_anon_693,
    get_file_for_uri: et_file_for_uri_func_ptr_anon_694,
    get_supported_uri_schemes: et_supported_uri_schemes_func_ptr_anon_695,
    parse_name: parse_name_func_ptr_anon_696,
    local_file_add_info: local_file_add_info_func_ptr_anon_697,
    add_writable_namespaces: add_writable_namespaces_func_ptr_anon_698,
    local_file_set_attributes: local_file_set_attributes_func_ptr_anon_699,
    local_file_removed: local_file_removed_func_ptr_anon_700,
    local_file_moved: local_file_moved_func_ptr_anon_701,
    deserialize_icon: deserialize_icon_func_ptr_anon_702,
    _g_reserved1: _g_reserved1_func_ptr_anon_703,
    _g_reserved2: _g_reserved2_func_ptr_anon_704,
    _g_reserved3: _g_reserved3_func_ptr_anon_705,
    _g_reserved4: _g_reserved4_func_ptr_anon_706,
    _g_reserved5: _g_reserved5_func_ptr_anon_707,
    _g_reserved6: _g_reserved6_func_ptr_anon_708,
}
changed_func_ptr_anon_709 :: #type proc "c" (volume: ^Volume)
removed_func_ptr_anon_710 :: #type proc "c" (volume: ^Volume)
et_name_func_ptr_anon_711 :: #type proc "c" (volume: ^Volume) -> cstring
et_icon_func_ptr_anon_712 :: #type proc "c" (volume: ^Volume) -> ^Icon
et_uuid_func_ptr_anon_713 :: #type proc "c" (volume: ^Volume) -> cstring
et_drive_func_ptr_anon_714 :: #type proc "c" (volume: ^Volume) -> ^Drive
et_mount_func_ptr_anon_715 :: #type proc "c" (volume: ^Volume) -> ^Mount
can_mount_func_ptr_anon_716 :: #type proc "c" (volume: ^Volume) -> glib.boolean
can_eject_func_ptr_anon_717 :: #type proc "c" (volume: ^Volume) -> glib.boolean
mount_fn_func_ptr_anon_718 :: #type proc "c" (volume: ^Volume, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
mount_finish_func_ptr_anon_719 :: #type proc "c" (volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
eject_func_ptr_anon_720 :: #type proc "c" (volume: ^Volume, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_finish_func_ptr_anon_721 :: #type proc "c" (volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_identifier_func_ptr_anon_722 :: #type proc "c" (volume: ^Volume, kind: cstring) -> cstring
enumerate_identifiers_func_ptr_anon_723 :: #type proc "c" (volume: ^Volume) -> ^cstring
should_automount_func_ptr_anon_724 :: #type proc "c" (volume: ^Volume) -> glib.boolean
et_activation_root_func_ptr_anon_725 :: #type proc "c" (volume: ^Volume) -> ^File
eject_with_operation_func_ptr_anon_726 :: #type proc "c" (volume: ^Volume, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_with_operation_finish_func_ptr_anon_727 :: #type proc "c" (volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_sort_key_func_ptr_anon_728 :: #type proc "c" (volume: ^Volume) -> cstring
et_symbolic_icon_func_ptr_anon_729 :: #type proc "c" (volume: ^Volume) -> ^Icon
_GVolumeIface :: struct {
    g_iface: gobj.TypeInterface,
    changed: changed_func_ptr_anon_709,
    removed: removed_func_ptr_anon_710,
    get_name: et_name_func_ptr_anon_711,
    get_icon: et_icon_func_ptr_anon_712,
    get_uuid: et_uuid_func_ptr_anon_713,
    get_drive: et_drive_func_ptr_anon_714,
    get_mount: et_mount_func_ptr_anon_715,
    can_mount: can_mount_func_ptr_anon_716,
    can_eject: can_eject_func_ptr_anon_717,
    mount_fn: mount_fn_func_ptr_anon_718,
    mount_finish: mount_finish_func_ptr_anon_719,
    eject: eject_func_ptr_anon_720,
    eject_finish: eject_finish_func_ptr_anon_721,
    get_identifier: et_identifier_func_ptr_anon_722,
    enumerate_identifiers: enumerate_identifiers_func_ptr_anon_723,
    should_automount: should_automount_func_ptr_anon_724,
    get_activation_root: et_activation_root_func_ptr_anon_725,
    eject_with_operation: eject_with_operation_func_ptr_anon_726,
    eject_with_operation_finish: eject_with_operation_finish_func_ptr_anon_727,
    get_sort_key: et_sort_key_func_ptr_anon_728,
    get_symbolic_icon: et_symbolic_icon_func_ptr_anon_729,
}

@(default_calling_convention = "c")
foreign gio_runic {
    @(link_name = "g_io_error_from_win32_error")
    io_error_from_win32_error :: proc(error_code: glib.int_) -> IOErrorEnum ---

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {
    foreign import gio_runic { "../../lib/windows/x86_64/gio-2.0.lib", "../../lib/windows/x86_64/gio-wrapper.lib" }
} 

