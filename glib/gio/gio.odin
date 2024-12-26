#+build linux amd64, linux arm64
package gio

import "core:c/libc"
import "core:sys/linux"
import glib ".."
import gobj "../gobject"

TYPE_ACTION :: action_get_type 
TYPE_ACTION_GROUP :: action_group_get_type 
TYPE_ACTION_MAP :: action_map_get_type 
TYPE_APP_INFO :: app_info_get_type 
TYPE_APP_LAUNCH_CONTEXT :: app_launch_context_get_type 
TYPE_APP_INFO_MONITOR :: app_info_monitor_get_type 
TYPE_APPLICATION :: application_get_type 
TYPE_APPLICATION_COMMAND_LINE :: application_command_line_get_type 
TYPE_INITABLE :: initable_get_type 
TYPE_ASYNC_INITABLE :: async_initable_get_type 
TYPE_ASYNC_RESULT :: async_result_get_type 
TYPE_INPUT_STREAM :: input_stream_get_type 
TYPE_FILTER_INPUT_STREAM :: filter_input_stream_get_type 
TYPE_BUFFERED_INPUT_STREAM :: buffered_input_stream_get_type 
TYPE_OUTPUT_STREAM :: output_stream_get_type 
TYPE_FILTER_OUTPUT_STREAM :: filter_output_stream_get_type 
TYPE_BUFFERED_OUTPUT_STREAM :: buffered_output_stream_get_type 
TYPE_BYTES_ICON :: bytes_icon_get_type 
TYPE_CANCELLABLE :: cancellable_get_type 
TYPE_CONVERTER :: converter_get_type 
TYPE_CHARSET_CONVERTER :: charset_converter_get_type 
TYPE_CONVERTER_INPUT_STREAM :: converter_input_stream_get_type 
TYPE_CONVERTER_OUTPUT_STREAM :: converter_output_stream_get_type 
TYPE_CREDENTIALS :: credentials_get_type 
TYPE_DATAGRAM_BASED :: datagram_based_get_type 
TYPE_DATA_INPUT_STREAM :: data_input_stream_get_type 
TYPE_DATA_OUTPUT_STREAM :: data_output_stream_get_type 
TYPE_DBUS_ACTION_GROUP :: dbus_action_group_get_type 
TYPE_DBUS_AUTH_OBSERVER :: dbus_auth_observer_get_type 
TYPE_DBUS_CONNECTION :: dbus_connection_get_type 
DBUS_ERROR :: dbus_error_quark
TYPE_DBUS_INTERFACE :: dbus_interface_get_type
TYPE_DBUS_INTERFACE_SKELETON :: dbus_interface_skeleton_get_type 
TYPE_DBUS_NODE_INFO :: dbus_node_info_get_type 
TYPE_DBUS_INTERFACE_INFO :: dbus_interface_info_get_type 
TYPE_DBUS_METHOD_INFO :: dbus_method_info_get_type 
TYPE_DBUS_SIGNAL_INFO :: dbus_signal_info_get_type 
TYPE_DBUS_PROPERTY_INFO :: dbus_property_info_get_type 
TYPE_DBUS_ARG_INFO :: dbus_arg_info_get_type 
TYPE_DBUS_ANNOTATION_INFO :: dbus_annotation_info_get_type 
TYPE_DBUS_MENU_MODEL :: dbus_menu_model_get_type 
TYPE_DBUS_MESSAGE :: dbus_message_get_type 
TYPE_DBUS_METHOD_INVOCATION :: dbus_method_invocation_get_type 
DBUS_METHOD_INVOCATION_HANDLED :: glib.TRUE
DBUS_METHOD_INVOCATION_UNHANDLED :: glib.FALSE
TYPE_DBUS_OBJECT :: dbus_object_get_type
TYPE_DBUS_OBJECT_MANAGER :: dbus_object_manager_get_type
TYPE_DBUS_OBJECT_MANAGER_CLIENT :: dbus_object_manager_client_get_type 
TYPE_DBUS_OBJECT_MANAGER_SERVER :: dbus_object_manager_server_get_type 
TYPE_DBUS_OBJECT_PROXY :: dbus_object_proxy_get_type 
TYPE_DBUS_OBJECT_SKELETON :: dbus_object_skeleton_get_type 
TYPE_DBUS_PROXY :: dbus_proxy_get_type 
TYPE_DBUS_SERVER :: dbus_server_get_type 
DEBUG_CONTROLLER_EXTENSION_POINT_NAME :: "gio-debug-controller"
TYPE_DEBUG_CONTROLLER :: debug_controller_get_type 
TYPE_DEBUG_CONTROLLER_DBUS :: debug_controller_dbus_get_type 
DRIVE_IDENTIFIER_KIND_UNIX_DEVICE :: "unix-device"
TYPE_DRIVE :: drive_get_type 
TYPE_DTLS_CONNECTION :: dtls_connection_get_type 
TYPE_DTLS_CLIENT_CONNECTION :: dtls_client_connection_get_type 
TYPE_DTLS_SERVER_CONNECTION :: dtls_server_connection_get_type 
TYPE_ICON :: icon_get_type 
TYPE_EMBLEM :: emblem_get_type 
TYPE_EMBLEMED_ICON :: emblemed_icon_get_type 
TYPE_FILE :: file_get_type 
TYPE_FILE_ATTRIBUTE_INFO_LIST :: file_attribute_info_list_get_type 
TYPE_FILE_ENUMERATOR :: file_enumerator_get_type 
TYPE_FILE_ICON :: file_icon_get_type 
TYPE_FILE_INFO :: file_info_get_type 
FILE_ATTRIBUTE_STANDARD_TYPE :: "standard::type"
FILE_ATTRIBUTE_STANDARD_IS_HIDDEN :: "standard::is-hidden"
FILE_ATTRIBUTE_STANDARD_IS_BACKUP :: "standard::is-backup"
FILE_ATTRIBUTE_STANDARD_IS_SYMLINK :: "standard::is-symlink"
FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL :: "standard::is-virtual"
FILE_ATTRIBUTE_STANDARD_IS_VOLATILE :: "standard::is-volatile"
FILE_ATTRIBUTE_STANDARD_NAME :: "standard::name"
FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME :: "standard::display-name"
FILE_ATTRIBUTE_STANDARD_EDIT_NAME :: "standard::edit-name"
FILE_ATTRIBUTE_STANDARD_COPY_NAME :: "standard::copy-name"
FILE_ATTRIBUTE_STANDARD_DESCRIPTION :: "standard::description"
FILE_ATTRIBUTE_STANDARD_ICON :: "standard::icon"
FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON :: "standard::symbolic-icon"
FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE :: "standard::content-type"
FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE :: "standard::fast-content-type"
FILE_ATTRIBUTE_STANDARD_SIZE :: "standard::size"
FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE :: "standard::allocated-size"
FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET :: "standard::symlink-target"
FILE_ATTRIBUTE_STANDARD_TARGET_URI :: "standard::target-uri"
FILE_ATTRIBUTE_STANDARD_SORT_ORDER :: "standard::sort-order"
FILE_ATTRIBUTE_ETAG_VALUE :: "etag::value"
FILE_ATTRIBUTE_ID_FILE :: "id::file"
FILE_ATTRIBUTE_ID_FILESYSTEM :: "id::filesystem"
FILE_ATTRIBUTE_ACCESS_CAN_READ :: "access::can-read"
FILE_ATTRIBUTE_ACCESS_CAN_WRITE :: "access::can-write"
FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE :: "access::can-execute"
FILE_ATTRIBUTE_ACCESS_CAN_DELETE :: "access::can-delete"
FILE_ATTRIBUTE_ACCESS_CAN_TRASH :: "access::can-trash"
FILE_ATTRIBUTE_ACCESS_CAN_RENAME :: "access::can-rename"
FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT :: "mountable::can-mount"
FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT :: "mountable::can-unmount"
FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT :: "mountable::can-eject"
FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE :: "mountable::unix-device"
FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE :: "mountable::unix-device-file"
FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI :: "mountable::hal-udi"
FILE_ATTRIBUTE_MOUNTABLE_CAN_START :: "mountable::can-start"
FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED :: "mountable::can-start-degraded"
FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP :: "mountable::can-stop"
FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE :: "mountable::start-stop-type"
FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL :: "mountable::can-poll"
FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC :: "mountable::is-media-check-automatic"
FILE_ATTRIBUTE_TIME_MODIFIED :: "time::modified"
FILE_ATTRIBUTE_TIME_MODIFIED_USEC :: "time::modified-usec"
FILE_ATTRIBUTE_TIME_MODIFIED_NSEC :: "time::modified-nsec"
FILE_ATTRIBUTE_TIME_ACCESS :: "time::access"
FILE_ATTRIBUTE_TIME_ACCESS_USEC :: "time::access-usec"
FILE_ATTRIBUTE_TIME_ACCESS_NSEC :: "time::access-nsec"
FILE_ATTRIBUTE_TIME_CHANGED :: "time::changed"
FILE_ATTRIBUTE_TIME_CHANGED_USEC :: "time::changed-usec"
FILE_ATTRIBUTE_TIME_CHANGED_NSEC :: "time::changed-nsec"
FILE_ATTRIBUTE_TIME_CREATED :: "time::created"
FILE_ATTRIBUTE_TIME_CREATED_USEC :: "time::created-usec"
FILE_ATTRIBUTE_TIME_CREATED_NSEC :: "time::created-nsec"
FILE_ATTRIBUTE_UNIX_DEVICE :: "unix::device"
FILE_ATTRIBUTE_UNIX_INODE :: "unix::inode"
FILE_ATTRIBUTE_UNIX_MODE :: "unix::mode"
FILE_ATTRIBUTE_UNIX_NLINK :: "unix::nlink"
FILE_ATTRIBUTE_UNIX_UID :: "unix::uid"
FILE_ATTRIBUTE_UNIX_GID :: "unix::gid"
FILE_ATTRIBUTE_UNIX_RDEV :: "unix::rdev"
FILE_ATTRIBUTE_UNIX_BLOCK_SIZE :: "unix::block-size"
FILE_ATTRIBUTE_UNIX_BLOCKS :: "unix::blocks"
FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT :: "unix::is-mountpoint"
FILE_ATTRIBUTE_DOS_IS_ARCHIVE :: "dos::is-archive"
FILE_ATTRIBUTE_DOS_IS_SYSTEM :: "dos::is-system"
FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT :: "dos::is-mountpoint"
FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG :: "dos::reparse-point-tag"
FILE_ATTRIBUTE_OWNER_USER :: "owner::user"
FILE_ATTRIBUTE_OWNER_USER_REAL :: "owner::user-real"
FILE_ATTRIBUTE_OWNER_GROUP :: "owner::group"
FILE_ATTRIBUTE_THUMBNAIL_PATH :: "thumbnail::path"
FILE_ATTRIBUTE_THUMBNAILING_FAILED :: "thumbnail::failed"
FILE_ATTRIBUTE_THUMBNAIL_IS_VALID :: "thumbnail::is-valid"
FILE_ATTRIBUTE_THUMBNAIL_PATH_NORMAL :: "thumbnail::path-normal"
FILE_ATTRIBUTE_THUMBNAILING_FAILED_NORMAL :: "thumbnail::failed-normal"
FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_NORMAL :: "thumbnail::is-valid-normal"
FILE_ATTRIBUTE_THUMBNAIL_PATH_LARGE :: "thumbnail::path-large"
FILE_ATTRIBUTE_THUMBNAILING_FAILED_LARGE :: "thumbnail::failed-large"
FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_LARGE :: "thumbnail::is-valid-large"
FILE_ATTRIBUTE_THUMBNAIL_PATH_XLARGE :: "thumbnail::path-xlarge"
FILE_ATTRIBUTE_THUMBNAILING_FAILED_XLARGE :: "thumbnail::failed-xlarge"
FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_XLARGE :: "thumbnail::is-valid-xlarge"
FILE_ATTRIBUTE_THUMBNAIL_PATH_XXLARGE :: "thumbnail::path-xxlarge"
FILE_ATTRIBUTE_THUMBNAILING_FAILED_XXLARGE :: "thumbnail::failed-xxlarge"
FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_XXLARGE :: "thumbnail::is-valid-xxlarge"
FILE_ATTRIBUTE_PREVIEW_ICON :: "preview::icon"
FILE_ATTRIBUTE_FILESYSTEM_SIZE :: "filesystem::size"
FILE_ATTRIBUTE_FILESYSTEM_FREE :: "filesystem::free"
FILE_ATTRIBUTE_FILESYSTEM_USED :: "filesystem::used"
FILE_ATTRIBUTE_FILESYSTEM_TYPE :: "filesystem::type"
FILE_ATTRIBUTE_FILESYSTEM_READONLY :: "filesystem::readonly"
FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW :: "filesystem::use-preview"
FILE_ATTRIBUTE_FILESYSTEM_REMOTE :: "filesystem::remote"
FILE_ATTRIBUTE_GVFS_BACKEND :: "gvfs::backend"
FILE_ATTRIBUTE_SELINUX_CONTEXT :: "selinux::context"
FILE_ATTRIBUTE_TRASH_ITEM_COUNT :: "trash::item-count"
FILE_ATTRIBUTE_TRASH_ORIG_PATH :: "trash::orig-path"
FILE_ATTRIBUTE_TRASH_DELETION_DATE :: "trash::deletion-date"
FILE_ATTRIBUTE_RECENT_MODIFIED :: "recent::modified"
TYPE_FILE_ATTRIBUTE_MATCHER :: file_attribute_matcher_get_type 
TYPE_FILE_INPUT_STREAM :: file_input_stream_get_type 
IO_ERROR :: io_error_quark
TYPE_IO_STREAM :: io_stream_get_type 
TYPE_FILE_IO_STREAM :: file_io_stream_get_type 
TYPE_FILE_MONITOR :: file_monitor_get_type 
TYPE_FILENAME_COMPLETER :: filename_completer_get_type 
TYPE_FILE_OUTPUT_STREAM :: file_output_stream_get_type 
TYPE_INET_ADDRESS :: inet_address_get_type 
TYPE_INET_ADDRESS_MASK :: inet_address_mask_get_type 
TYPE_SOCKET_ADDRESS :: socket_address_get_type 
TYPE_INET_SOCKET_ADDRESS :: inet_socket_address_get_type 
TYPE_APP_INFO_CREATE_FLAGS :: app_info_create_flags_get_type 
TYPE_CONVERTER_FLAGS :: converter_flags_get_type 
TYPE_CONVERTER_RESULT :: converter_result_get_type 
TYPE_DATA_STREAM_BYTE_ORDER :: data_stream_byte_order_get_type 
TYPE_DATA_STREAM_NEWLINE_TYPE :: data_stream_newline_type_get_type 
TYPE_FILE_ATTRIBUTE_TYPE :: file_attribute_type_get_type 
TYPE_FILE_ATTRIBUTE_INFO_FLAGS :: file_attribute_info_flags_get_type 
TYPE_FILE_ATTRIBUTE_STATUS :: file_attribute_status_get_type 
TYPE_FILE_QUERY_INFO_FLAGS :: file_query_info_flags_get_type 
TYPE_FILE_CREATE_FLAGS :: file_create_flags_get_type 
TYPE_FILE_MEASURE_FLAGS :: file_measure_flags_get_type 
TYPE_MOUNT_MOUNT_FLAGS :: mount_mount_flags_get_type 
TYPE_MOUNT_UNMOUNT_FLAGS :: mount_unmount_flags_get_type 
TYPE_DRIVE_START_FLAGS :: drive_start_flags_get_type 
TYPE_DRIVE_START_STOP_TYPE :: drive_start_stop_type_get_type 
TYPE_FILE_COPY_FLAGS :: file_copy_flags_get_type 
TYPE_FILE_MONITOR_FLAGS :: file_monitor_flags_get_type 
TYPE_FILE_TYPE :: file_type_get_type 
TYPE_FILESYSTEM_PREVIEW_TYPE :: filesystem_preview_type_get_type 
TYPE_FILE_MONITOR_EVENT :: file_monitor_event_get_type 
TYPE_IO_ERROR_ENUM :: io_error_enum_get_type 
TYPE_ASK_PASSWORD_FLAGS :: ask_password_flags_get_type 
TYPE_PASSWORD_SAVE :: password_save_get_type 
TYPE_MOUNT_OPERATION_RESULT :: mount_operation_result_get_type 
TYPE_OUTPUT_STREAM_SPLICE_FLAGS :: output_stream_splice_flags_get_type 
TYPE_IO_STREAM_SPLICE_FLAGS :: io_stream_splice_flags_get_type 
TYPE_EMBLEM_ORIGIN :: emblem_origin_get_type 
TYPE_RESOLVER_ERROR :: resolver_error_get_type 
TYPE_RESOLVER_RECORD_TYPE :: resolver_record_type_get_type 
TYPE_RESOURCE_ERROR :: resource_error_get_type 
TYPE_RESOURCE_FLAGS :: resource_flags_get_type 
TYPE_RESOURCE_LOOKUP_FLAGS :: resource_lookup_flags_get_type 
TYPE_SOCKET_FAMILY :: socket_family_get_type 
TYPE_SOCKET_TYPE :: socket_type_get_type 
TYPE_SOCKET_MSG_FLAGS :: socket_msg_flags_get_type 
TYPE_SOCKET_PROTOCOL :: socket_protocol_get_type 
TYPE_ZLIB_COMPRESSOR_FORMAT :: zlib_compressor_format_get_type 
TYPE_UNIX_SOCKET_ADDRESS_TYPE :: unix_socket_address_type_get_type 
TYPE_BUS_TYPE :: bus_type_get_type 
TYPE_BUS_NAME_OWNER_FLAGS :: bus_name_owner_flags_get_type 
TYPE_BUS_NAME_WATCHER_FLAGS :: bus_name_watcher_flags_get_type 
TYPE_DBUS_PROXY_FLAGS :: dbus_proxy_flags_get_type 
TYPE_DBUS_ERROR :: dbus_error_get_type 
TYPE_DBUS_CONNECTION_FLAGS :: dbus_connection_flags_get_type 
TYPE_DBUS_CAPABILITY_FLAGS :: dbus_capability_flags_get_type 
TYPE_DBUS_CALL_FLAGS :: dbus_call_flags_get_type 
TYPE_DBUS_MESSAGE_TYPE :: dbus_message_type_get_type 
TYPE_DBUS_MESSAGE_FLAGS :: dbus_message_flags_get_type 
TYPE_DBUS_MESSAGE_HEADER_FIELD :: dbus_message_header_field_get_type 
TYPE_DBUS_PROPERTY_INFO_FLAGS :: dbus_property_info_flags_get_type 
TYPE_DBUS_SUBTREE_FLAGS :: dbus_subtree_flags_get_type 
TYPE_DBUS_SERVER_FLAGS :: dbus_server_flags_get_type 
TYPE_DBUS_SIGNAL_FLAGS :: dbus_signal_flags_get_type 
TYPE_DBUS_SEND_MESSAGE_FLAGS :: dbus_send_message_flags_get_type 
TYPE_CREDENTIALS_TYPE :: credentials_type_get_type 
TYPE_DBUS_MESSAGE_BYTE_ORDER :: dbus_message_byte_order_get_type 
TYPE_APPLICATION_FLAGS :: application_flags_get_type 
TYPE_TLS_ERROR :: tls_error_get_type 
TYPE_TLS_CERTIFICATE_FLAGS :: tls_certificate_flags_get_type 
TYPE_TLS_AUTHENTICATION_MODE :: tls_authentication_mode_get_type 
TYPE_TLS_CHANNEL_BINDING_TYPE :: tls_channel_binding_type_get_type 
TYPE_TLS_CHANNEL_BINDING_ERROR :: tls_channel_binding_error_get_type 
TYPE_TLS_REHANDSHAKE_MODE :: tls_rehandshake_mode_get_type 
TYPE_TLS_PASSWORD_FLAGS :: tls_password_flags_get_type 
TYPE_TLS_INTERACTION_RESULT :: tls_interaction_result_get_type 
TYPE_DBUS_INTERFACE_SKELETON_FLAGS :: dbus_interface_skeleton_flags_get_type 
TYPE_DBUS_OBJECT_MANAGER_CLIENT_FLAGS :: dbus_object_manager_client_flags_get_type 
TYPE_TLS_DATABASE_VERIFY_FLAGS :: tls_database_verify_flags_get_type 
TYPE_TLS_DATABASE_LOOKUP_FLAGS :: tls_database_lookup_flags_get_type 
TYPE_TLS_CERTIFICATE_REQUEST_FLAGS :: tls_certificate_request_flags_get_type 
TYPE_TLS_PROTOCOL_VERSION :: tls_protocol_version_get_type 
TYPE_IO_MODULE_SCOPE_FLAGS :: io_module_scope_flags_get_type 
TYPE_SOCKET_CLIENT_EVENT :: socket_client_event_get_type 
TYPE_SOCKET_LISTENER_EVENT :: socket_listener_event_get_type 
TYPE_TEST_DBUS_FLAGS :: test_dbus_flags_get_type 
TYPE_SUBPROCESS_FLAGS :: subprocess_flags_get_type 
TYPE_NOTIFICATION_PRIORITY :: notification_priority_get_type 
TYPE_NETWORK_CONNECTIVITY :: network_connectivity_get_type 
TYPE_POLLABLE_RETURN :: pollable_return_get_type 
TYPE_MEMORY_MONITOR_WARNING_LEVEL :: memory_monitor_warning_level_get_type 
TYPE_RESOLVER_NAME_LOOKUP_FLAGS :: resolver_name_lookup_flags_get_type 
TYPE_SETTINGS_BIND_FLAGS :: settings_bind_flags_get_type 
IO_TYPE_MODULE :: io_module_get_type 
TYPE_LIST_MODEL :: list_model_get_type 
TYPE_LIST_STORE :: list_store_get_type 
TYPE_LOADABLE_ICON :: loadable_icon_get_type 
TYPE_MEMORY_INPUT_STREAM :: memory_input_stream_get_type 
MEMORY_MONITOR_EXTENSION_POINT_NAME :: "gio-memory-monitor"
TYPE_MEMORY_MONITOR :: memory_monitor_get_type 
TYPE_MEMORY_OUTPUT_STREAM :: memory_output_stream_get_type 
MENU_ATTRIBUTE_ACTION :: "action"
MENU_ATTRIBUTE_ACTION_NAMESPACE :: "action-namespace"
MENU_ATTRIBUTE_TARGET :: "target"
MENU_ATTRIBUTE_LABEL :: "label"
MENU_ATTRIBUTE_ICON :: "icon"
MENU_LINK_SUBMENU :: "submenu"
MENU_LINK_SECTION :: "section"
TYPE_MENU_MODEL :: menu_model_get_type 
TYPE_MENU_ATTRIBUTE_ITER :: menu_attribute_iter_get_type 
TYPE_MENU_LINK_ITER :: menu_link_iter_get_type 
TYPE_MENU :: menu_get_type 
TYPE_MENU_ITEM :: menu_item_get_type 
MENU_EXPORTER_MAX_SECTION_SIZE :: 1000
TYPE_MOUNT :: mount_get_type 
TYPE_MOUNT_OPERATION :: mount_operation_get_type 
TYPE_NATIVE_SOCKET_ADDRESS :: native_socket_address_get_type 
TYPE_VOLUME_MONITOR :: volume_monitor_get_type 
VOLUME_MONITOR_EXTENSION_POINT_NAME :: "gio-volume-monitor"
TYPE_NATIVE_VOLUME_MONITOR :: native_volume_monitor_get_type 
NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME :: "gio-native-volume-monitor"
TYPE_NETWORK_ADDRESS :: network_address_get_type 
NETWORK_MONITOR_EXTENSION_POINT_NAME :: "gio-network-monitor"
TYPE_NETWORK_MONITOR :: network_monitor_get_type 
TYPE_NETWORK_SERVICE :: network_service_get_type 
TYPE_NOTIFICATION :: notification_get_type 
TYPE_PERMISSION :: permission_get_type 
TYPE_POLLABLE_INPUT_STREAM :: pollable_input_stream_get_type 
TYPE_POLLABLE_OUTPUT_STREAM :: pollable_output_stream_get_type 
POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME :: "gio-power-profile-monitor"
TYPE_POWER_PROFILE_MONITOR :: power_profile_monitor_get_type 
TYPE_PROPERTY_ACTION :: property_action_get_type 
TYPE_PROXY :: proxy_get_type 
PROXY_EXTENSION_POINT_NAME :: "gio-proxy"
TYPE_PROXY_ADDRESS :: proxy_address_get_type 
TYPE_SOCKET_ADDRESS_ENUMERATOR :: socket_address_enumerator_get_type 
TYPE_PROXY_ADDRESS_ENUMERATOR :: proxy_address_enumerator_get_type 
TYPE_PROXY_RESOLVER :: proxy_resolver_get_type 
PROXY_RESOLVER_EXTENSION_POINT_NAME :: "gio-proxy-resolver"
TYPE_REMOTE_ACTION_GROUP :: remote_action_group_get_type 
TYPE_RESOLVER :: resolver_get_type 
RESOLVER_ERROR :: (resolver_error_quark )
TYPE_RESOURCE :: resource_get_type 
RESOURCE_ERROR :: (resource_error_quark )
TYPE_SEEKABLE :: seekable_get_type 
TYPE_SETTINGS_SCHEMA_SOURCE :: settings_schema_source_get_type 
TYPE_SETTINGS_SCHEMA :: settings_schema_get_type 
TYPE_SETTINGS_SCHEMA_KEY :: settings_schema_key_get_type 
TYPE_SETTINGS :: settings_get_type 
TYPE_SIMPLE_ACTION :: simple_action_get_type 
TYPE_SIMPLE_ACTION_GROUP :: simple_action_group_get_type 
TYPE_SIMPLE_ASYNC_RESULT :: simple_async_result_get_type 
TYPE_SIMPLE_IO_STREAM :: simple_io_stream_get_type 
TYPE_SIMPLE_PERMISSION :: simple_permission_get_type 
TYPE_SIMPLE_PROXY_RESOLVER :: simple_proxy_resolver_get_type 
TYPE_SOCKET :: socket_get_type 
TYPE_SOCKET_CLIENT :: socket_client_get_type 
TYPE_SOCKET_CONNECTABLE :: socket_connectable_get_type 
TYPE_SOCKET_CONNECTION :: socket_connection_get_type 
TYPE_SOCKET_CONTROL_MESSAGE :: socket_control_message_get_type 
TYPE_SOCKET_LISTENER :: socket_listener_get_type 
TYPE_SOCKET_SERVICE :: socket_service_get_type 
TYPE_SRV_TARGET :: srv_target_get_type 
TYPE_SUBPROCESS :: subprocess_get_type 
TYPE_SUBPROCESS_LAUNCHER :: subprocess_launcher_get_type 
TYPE_TASK :: task_get_type 
TYPE_TCP_CONNECTION :: tcp_connection_get_type 
TYPE_TCP_WRAPPER_CONNECTION :: tcp_wrapper_connection_get_type 
TYPE_TEST_DBUS :: test_dbus_get_type 
TYPE_THEMED_ICON :: themed_icon_get_type 
TYPE_THREADED_SOCKET_SERVICE :: threaded_socket_service_get_type 
TLS_BACKEND_EXTENSION_POINT_NAME :: "gio-tls-backend"
TYPE_TLS_BACKEND :: tls_backend_get_type 
TYPE_TLS_CERTIFICATE :: tls_certificate_get_type 
TYPE_TLS_CONNECTION :: tls_connection_get_type 
TLS_ERROR :: (tls_error_quark )
TLS_CHANNEL_BINDING_ERROR :: (tls_channel_binding_error_quark )
TYPE_TLS_CLIENT_CONNECTION :: tls_client_connection_get_type 
TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER :: "1.3.6.1.5.5.7.3.1"
TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT :: "1.3.6.1.5.5.7.3.2"
TYPE_TLS_DATABASE :: tls_database_get_type 
TYPE_TLS_FILE_DATABASE :: tls_file_database_get_type 
TYPE_TLS_INTERACTION :: tls_interaction_get_type 
TYPE_TLS_PASSWORD :: tls_password_get_type 
TYPE_TLS_SERVER_CONNECTION :: tls_server_connection_get_type 
TYPE_UNIX_CONNECTION :: unix_connection_get_type 
TYPE_UNIX_CREDENTIALS_MESSAGE :: unix_credentials_message_get_type 
TYPE_UNIX_FD_LIST :: unix_fd_list_get_type 
TYPE_UNIX_SOCKET_ADDRESS :: unix_socket_address_get_type 
TYPE_VFS :: vfs_get_type 
VFS_EXTENSION_POINT_NAME :: "gio-vfs"
VOLUME_IDENTIFIER_KIND_HAL_UDI :: "hal-udi" 
VOLUME_IDENTIFIER_KIND_UNIX_DEVICE :: "unix-device"
VOLUME_IDENTIFIER_KIND_LABEL :: "label"
VOLUME_IDENTIFIER_KIND_UUID :: "uuid"
VOLUME_IDENTIFIER_KIND_NFS_MOUNT :: "nfs-mount"
VOLUME_IDENTIFIER_KIND_CLASS :: "class"
TYPE_VOLUME :: volume_get_type 
TYPE_ZLIB_COMPRESSOR :: zlib_compressor_get_type 
TYPE_ZLIB_DECOMPRESSOR :: zlib_decompressor_get_type 

AppInfoCreateFlags :: enum u32 {APP_INFO_CREATE_NONE = 0, APP_INFO_CREATE_NEEDS_TERMINAL = 1, APP_INFO_CREATE_SUPPORTS_URIS = 2, APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION = 4, }
ConverterFlags :: enum u32 {CONVERTER_NO_FLAGS = 0, CONVERTER_INPUT_AT_END = 1, CONVERTER_FLUSH = 2, }
ConverterResult :: enum u32 {CONVERTER_ERROR = 0, CONVERTER_CONVERTED = 1, CONVERTER_FINISHED = 2, CONVERTER_FLUSHED = 3, }
DataStreamByteOrder :: enum u32 {DATA_STREAM_BYTE_ORDER_BIG_ENDIAN = 0, DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN = 1, DATA_STREAM_BYTE_ORDER_HOST_ENDIAN = 2, }
DataStreamNewlineType :: enum u32 {DATA_STREAM_NEWLINE_TYPE_LF = 0, DATA_STREAM_NEWLINE_TYPE_CR = 1, DATA_STREAM_NEWLINE_TYPE_CR_LF = 2, DATA_STREAM_NEWLINE_TYPE_ANY = 3, }
FileAttributeType :: enum u32 {FILE_ATTRIBUTE_TYPE_INVALID = 0, FILE_ATTRIBUTE_TYPE_STRING = 1, FILE_ATTRIBUTE_TYPE_BYTE_STRING = 2, FILE_ATTRIBUTE_TYPE_BOOLEAN = 3, FILE_ATTRIBUTE_TYPE_UINT32 = 4, FILE_ATTRIBUTE_TYPE_INT32 = 5, FILE_ATTRIBUTE_TYPE_UINT64 = 6, FILE_ATTRIBUTE_TYPE_INT64 = 7, FILE_ATTRIBUTE_TYPE_OBJECT = 8, FILE_ATTRIBUTE_TYPE_STRINGV = 9, }
FileAttributeInfoFlags :: enum u32 {FILE_ATTRIBUTE_INFO_NONE = 0, FILE_ATTRIBUTE_INFO_COPY_WITH_FILE = 1, FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED = 2, }
FileAttributeStatus :: enum u32 {FILE_ATTRIBUTE_STATUS_UNSET = 0, FILE_ATTRIBUTE_STATUS_SET = 1, FILE_ATTRIBUTE_STATUS_ERROR_SETTING = 2, }
FileQueryInfoFlags :: enum u32 {FILE_QUERY_INFO_NONE = 0, FILE_QUERY_INFO_NOFOLLOW_SYMLINKS = 1, }
FileCreateFlags :: enum u32 {FILE_CREATE_NONE = 0, FILE_CREATE_PRIVATE = 1, FILE_CREATE_REPLACE_DESTINATION = 2, }
FileMeasureFlags :: enum u32 {FILE_MEASURE_NONE = 0, FILE_MEASURE_REPORT_ANY_ERROR = 2, FILE_MEASURE_APPARENT_SIZE = 4, FILE_MEASURE_NO_XDEV = 8, }
MountMountFlags :: enum u32 {MOUNT_MOUNT_NONE = 0, }
MountUnmountFlags :: enum u32 {MOUNT_UNMOUNT_NONE = 0, MOUNT_UNMOUNT_FORCE = 1, }
DriveStartFlags :: enum u32 {DRIVE_START_NONE = 0, }
DriveStartStopType :: enum u32 {DRIVE_START_STOP_TYPE_UNKNOWN = 0, DRIVE_START_STOP_TYPE_SHUTDOWN = 1, DRIVE_START_STOP_TYPE_NETWORK = 2, DRIVE_START_STOP_TYPE_MULTIDISK = 3, DRIVE_START_STOP_TYPE_PASSWORD = 4, }
FileCopyFlags :: enum u32 {FILE_COPY_NONE = 0, FILE_COPY_OVERWRITE = 1, FILE_COPY_BACKUP = 2, FILE_COPY_NOFOLLOW_SYMLINKS = 4, FILE_COPY_ALL_METADATA = 8, FILE_COPY_NO_FALLBACK_FOR_MOVE = 16, FILE_COPY_TARGET_DEFAULT_PERMS = 32, FILE_COPY_TARGET_DEFAULT_MODIFIED_TIME = 64, }
FileMonitorFlags :: enum u32 {FILE_MONITOR_NONE = 0, FILE_MONITOR_WATCH_MOUNTS = 1, FILE_MONITOR_SEND_MOVED = 2, FILE_MONITOR_WATCH_HARD_LINKS = 4, FILE_MONITOR_WATCH_MOVES = 8, }
FileType :: enum u32 {FILE_TYPE_UNKNOWN = 0, FILE_TYPE_REGULAR = 1, FILE_TYPE_DIRECTORY = 2, FILE_TYPE_SYMBOLIC_LINK = 3, FILE_TYPE_SPECIAL = 4, FILE_TYPE_SHORTCUT = 5, FILE_TYPE_MOUNTABLE = 6, }
FilesystemPreviewType :: enum u32 {FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS = 0, FILESYSTEM_PREVIEW_TYPE_IF_LOCAL = 1, FILESYSTEM_PREVIEW_TYPE_NEVER = 2, }
FileMonitorEvent :: enum u32 {FILE_MONITOR_EVENT_CHANGED = 0, FILE_MONITOR_EVENT_CHANGES_DONE_HINT = 1, FILE_MONITOR_EVENT_DELETED = 2, FILE_MONITOR_EVENT_CREATED = 3, FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED = 4, FILE_MONITOR_EVENT_PRE_UNMOUNT = 5, FILE_MONITOR_EVENT_UNMOUNTED = 6, FILE_MONITOR_EVENT_MOVED = 7, FILE_MONITOR_EVENT_RENAMED = 8, FILE_MONITOR_EVENT_MOVED_IN = 9, FILE_MONITOR_EVENT_MOVED_OUT = 10, }
IOErrorEnum :: enum u32 {IO_ERROR_FAILED = 0, IO_ERROR_NOT_FOUND = 1, IO_ERROR_EXISTS = 2, IO_ERROR_IS_DIRECTORY = 3, IO_ERROR_NOT_DIRECTORY = 4, IO_ERROR_NOT_EMPTY = 5, IO_ERROR_NOT_REGULAR_FILE = 6, IO_ERROR_NOT_SYMBOLIC_LINK = 7, IO_ERROR_NOT_MOUNTABLE_FILE = 8, IO_ERROR_FILENAME_TOO_LONG = 9, IO_ERROR_INVALID_FILENAME = 10, IO_ERROR_TOO_MANY_LINKS = 11, IO_ERROR_NO_SPACE = 12, IO_ERROR_INVALID_ARGUMENT = 13, IO_ERROR_PERMISSION_DENIED = 14, IO_ERROR_NOT_SUPPORTED = 15, IO_ERROR_NOT_MOUNTED = 16, IO_ERROR_ALREADY_MOUNTED = 17, IO_ERROR_CLOSED = 18, IO_ERROR_CANCELLED = 19, IO_ERROR_PENDING = 20, IO_ERROR_READ_ONLY = 21, IO_ERROR_CANT_CREATE_BACKUP = 22, IO_ERROR_WRONG_ETAG = 23, IO_ERROR_TIMED_OUT = 24, IO_ERROR_WOULD_RECURSE = 25, IO_ERROR_BUSY = 26, IO_ERROR_WOULD_BLOCK = 27, IO_ERROR_HOST_NOT_FOUND = 28, IO_ERROR_WOULD_MERGE = 29, IO_ERROR_FAILED_HANDLED = 30, IO_ERROR_TOO_MANY_OPEN_FILES = 31, IO_ERROR_NOT_INITIALIZED = 32, IO_ERROR_ADDRESS_IN_USE = 33, IO_ERROR_PARTIAL_INPUT = 34, IO_ERROR_INVALID_DATA = 35, IO_ERROR_DBUS_ERROR = 36, IO_ERROR_HOST_UNREACHABLE = 37, IO_ERROR_NETWORK_UNREACHABLE = 38, IO_ERROR_CONNECTION_REFUSED = 39, IO_ERROR_PROXY_FAILED = 40, IO_ERROR_PROXY_AUTH_FAILED = 41, IO_ERROR_PROXY_NEED_AUTH = 42, IO_ERROR_PROXY_NOT_ALLOWED = 43, IO_ERROR_BROKEN_PIPE = 44, IO_ERROR_CONNECTION_CLOSED = 44, IO_ERROR_NOT_CONNECTED = 45, IO_ERROR_MESSAGE_TOO_LARGE = 46, IO_ERROR_NO_SUCH_DEVICE = 47, IO_ERROR_DESTINATION_UNSET = 48, }
AskPasswordFlags :: enum u32 {ASK_PASSWORD_NEED_PASSWORD = 1, ASK_PASSWORD_NEED_USERNAME = 2, ASK_PASSWORD_NEED_DOMAIN = 4, ASK_PASSWORD_SAVING_SUPPORTED = 8, ASK_PASSWORD_ANONYMOUS_SUPPORTED = 16, ASK_PASSWORD_TCRYPT = 32, }
PasswordSave :: enum u32 {PASSWORD_SAVE_NEVER = 0, PASSWORD_SAVE_FOR_SESSION = 1, PASSWORD_SAVE_PERMANENTLY = 2, }
MountOperationResult :: enum u32 {MOUNT_OPERATION_HANDLED = 0, MOUNT_OPERATION_ABORTED = 1, MOUNT_OPERATION_UNHANDLED = 2, }
OutputStreamSpliceFlags :: enum u32 {OUTPUT_STREAM_SPLICE_NONE = 0, OUTPUT_STREAM_SPLICE_CLOSE_SOURCE = 1, OUTPUT_STREAM_SPLICE_CLOSE_TARGET = 2, }
IOStreamSpliceFlags :: enum u32 {IO_STREAM_SPLICE_NONE = 0, IO_STREAM_SPLICE_CLOSE_STREAM1 = 1, IO_STREAM_SPLICE_CLOSE_STREAM2 = 2, IO_STREAM_SPLICE_WAIT_FOR_BOTH = 4, }
EmblemOrigin :: enum u32 {EMBLEM_ORIGIN_UNKNOWN = 0, EMBLEM_ORIGIN_DEVICE = 1, EMBLEM_ORIGIN_LIVEMETADATA = 2, EMBLEM_ORIGIN_TAG = 3, }
ResolverError :: enum u32 {RESOLVER_ERROR_NOT_FOUND = 0, RESOLVER_ERROR_TEMPORARY_FAILURE = 1, RESOLVER_ERROR_INTERNAL = 2, }
ResolverRecordType :: enum u32 {RESOLVER_RECORD_SRV = 1, RESOLVER_RECORD_MX = 2, RESOLVER_RECORD_TXT = 3, RESOLVER_RECORD_SOA = 4, RESOLVER_RECORD_NS = 5, }
ResourceError :: enum u32 {RESOURCE_ERROR_NOT_FOUND = 0, RESOURCE_ERROR_INTERNAL = 1, }
ResourceFlags :: enum u32 {RESOURCE_FLAGS_NONE = 0, RESOURCE_FLAGS_COMPRESSED = 1, }
ResourceLookupFlags :: enum u32 {RESOURCE_LOOKUP_FLAGS_NONE = 0, }
SocketFamily :: enum u32 {SOCKET_FAMILY_INVALID = 0, SOCKET_FAMILY_UNIX = 1, SOCKET_FAMILY_IPV4 = 2, SOCKET_FAMILY_IPV6 = 10, }
SocketType :: enum u32 {SOCKET_TYPE_INVALID = 0, SOCKET_TYPE_STREAM = 1, SOCKET_TYPE_DATAGRAM = 2, SOCKET_TYPE_SEQPACKET = 3, }
SocketMsgFlags :: enum u32 {SOCKET_MSG_NONE = 0, SOCKET_MSG_OOB = 1, SOCKET_MSG_PEEK = 2, SOCKET_MSG_DONTROUTE = 4, }
SocketProtocol :: enum i32 {SOCKET_PROTOCOL_UNKNOWN = -1, SOCKET_PROTOCOL_DEFAULT = 0, SOCKET_PROTOCOL_TCP = 6, SOCKET_PROTOCOL_UDP = 17, SOCKET_PROTOCOL_SCTP = 132, }
ZlibCompressorFormat :: enum u32 {ZLIB_COMPRESSOR_FORMAT_ZLIB = 0, ZLIB_COMPRESSOR_FORMAT_GZIP = 1, ZLIB_COMPRESSOR_FORMAT_RAW = 2, }
UnixSocketAddressType :: enum u32 {UNIX_SOCKET_ADDRESS_INVALID = 0, UNIX_SOCKET_ADDRESS_ANONYMOUS = 1, UNIX_SOCKET_ADDRESS_PATH = 2, UNIX_SOCKET_ADDRESS_ABSTRACT = 3, UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED = 4, }
BusType :: enum i32 {BUS_TYPE_STARTER = -1, BUS_TYPE_NONE = 0, BUS_TYPE_SYSTEM = 1, BUS_TYPE_SESSION = 2, }
BusNameOwnerFlags :: enum u32 {BUS_NAME_OWNER_FLAGS_NONE = 0, BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT = 1, BUS_NAME_OWNER_FLAGS_REPLACE = 2, BUS_NAME_OWNER_FLAGS_DO_NOT_QUEUE = 4, }
BusNameWatcherFlags :: enum u32 {BUS_NAME_WATCHER_FLAGS_NONE = 0, BUS_NAME_WATCHER_FLAGS_AUTO_START = 1, }
DBusProxyFlags :: enum u32 {DBUS_PROXY_FLAGS_NONE = 0, DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES = 1, DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS = 2, DBUS_PROXY_FLAGS_DO_NOT_AUTO_START = 4, DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES = 8, DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION = 16, DBUS_PROXY_FLAGS_NO_MATCH_RULE = 32, }
DBusError :: enum u32 {DBUS_ERROR_FAILED = 0, DBUS_ERROR_NO_MEMORY = 1, DBUS_ERROR_SERVICE_UNKNOWN = 2, DBUS_ERROR_NAME_HAS_NO_OWNER = 3, DBUS_ERROR_NO_REPLY = 4, DBUS_ERROR_IO_ERROR = 5, DBUS_ERROR_BAD_ADDRESS = 6, DBUS_ERROR_NOT_SUPPORTED = 7, DBUS_ERROR_LIMITS_EXCEEDED = 8, DBUS_ERROR_ACCESS_DENIED = 9, DBUS_ERROR_AUTH_FAILED = 10, DBUS_ERROR_NO_SERVER = 11, DBUS_ERROR_TIMEOUT = 12, DBUS_ERROR_NO_NETWORK = 13, DBUS_ERROR_ADDRESS_IN_USE = 14, DBUS_ERROR_DISCONNECTED = 15, DBUS_ERROR_INVALID_ARGS = 16, DBUS_ERROR_FILE_NOT_FOUND = 17, DBUS_ERROR_FILE_EXISTS = 18, DBUS_ERROR_UNKNOWN_METHOD = 19, DBUS_ERROR_TIMED_OUT = 20, DBUS_ERROR_MATCH_RULE_NOT_FOUND = 21, DBUS_ERROR_MATCH_RULE_INVALID = 22, DBUS_ERROR_SPAWN_EXEC_FAILED = 23, DBUS_ERROR_SPAWN_FORK_FAILED = 24, DBUS_ERROR_SPAWN_CHILD_EXITED = 25, DBUS_ERROR_SPAWN_CHILD_SIGNALED = 26, DBUS_ERROR_SPAWN_FAILED = 27, DBUS_ERROR_SPAWN_SETUP_FAILED = 28, DBUS_ERROR_SPAWN_CONFIG_INVALID = 29, DBUS_ERROR_SPAWN_SERVICE_INVALID = 30, DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND = 31, DBUS_ERROR_SPAWN_PERMISSIONS_INVALID = 32, DBUS_ERROR_SPAWN_FILE_INVALID = 33, DBUS_ERROR_SPAWN_NO_MEMORY = 34, DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN = 35, DBUS_ERROR_INVALID_SIGNATURE = 36, DBUS_ERROR_INVALID_FILE_CONTENT = 37, DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN = 38, DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN = 39, DBUS_ERROR_OBJECT_PATH_IN_USE = 40, DBUS_ERROR_UNKNOWN_OBJECT = 41, DBUS_ERROR_UNKNOWN_INTERFACE = 42, DBUS_ERROR_UNKNOWN_PROPERTY = 43, DBUS_ERROR_PROPERTY_READ_ONLY = 44, }
DBusConnectionFlags :: enum u32 {DBUS_CONNECTION_FLAGS_NONE = 0, DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT = 1, DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER = 2, DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 4, DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION = 8, DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING = 16, DBUS_CONNECTION_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = 32, DBUS_CONNECTION_FLAGS_CROSS_NAMESPACE = 64, }
DBusCapabilityFlags :: enum u32 {DBUS_CAPABILITY_FLAGS_NONE = 0, DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING = 1, }
DBusCallFlags :: enum u32 {DBUS_CALL_FLAGS_NONE = 0, DBUS_CALL_FLAGS_NO_AUTO_START = 1, DBUS_CALL_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = 2, }
DBusMessageType :: enum u32 {DBUS_MESSAGE_TYPE_INVALID = 0, DBUS_MESSAGE_TYPE_METHOD_CALL = 1, DBUS_MESSAGE_TYPE_METHOD_RETURN = 2, DBUS_MESSAGE_TYPE_ERROR = 3, DBUS_MESSAGE_TYPE_SIGNAL = 4, }
DBusMessageFlags :: enum u32 {DBUS_MESSAGE_FLAGS_NONE = 0, DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED = 1, DBUS_MESSAGE_FLAGS_NO_AUTO_START = 2, DBUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = 4, }
DBusMessageHeaderField :: enum u32 {DBUS_MESSAGE_HEADER_FIELD_INVALID = 0, DBUS_MESSAGE_HEADER_FIELD_PATH = 1, DBUS_MESSAGE_HEADER_FIELD_INTERFACE = 2, DBUS_MESSAGE_HEADER_FIELD_MEMBER = 3, DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME = 4, DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL = 5, DBUS_MESSAGE_HEADER_FIELD_DESTINATION = 6, DBUS_MESSAGE_HEADER_FIELD_SENDER = 7, DBUS_MESSAGE_HEADER_FIELD_SIGNATURE = 8, DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS = 9, }
DBusPropertyInfoFlags :: enum u32 {DBUS_PROPERTY_INFO_FLAGS_NONE = 0, DBUS_PROPERTY_INFO_FLAGS_READABLE = 1, DBUS_PROPERTY_INFO_FLAGS_WRITABLE = 2, }
DBusSubtreeFlags :: enum u32 {DBUS_SUBTREE_FLAGS_NONE = 0, DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES = 1, }
DBusServerFlags :: enum u32 {DBUS_SERVER_FLAGS_NONE = 0, DBUS_SERVER_FLAGS_RUN_IN_THREAD = 1, DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 2, DBUS_SERVER_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = 4, }
DBusSignalFlags :: enum u32 {DBUS_SIGNAL_FLAGS_NONE = 0, DBUS_SIGNAL_FLAGS_NO_MATCH_RULE = 1, DBUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE = 2, DBUS_SIGNAL_FLAGS_MATCH_ARG0_PATH = 4, }
DBusSendMessageFlags :: enum u32 {DBUS_SEND_MESSAGE_FLAGS_NONE = 0, DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL = 1, }
CredentialsType :: enum u32 {CREDENTIALS_TYPE_INVALID = 0, CREDENTIALS_TYPE_LINUX_UCRED = 1, CREDENTIALS_TYPE_FREEBSD_CMSGCRED = 2, CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED = 3, CREDENTIALS_TYPE_SOLARIS_UCRED = 4, CREDENTIALS_TYPE_NETBSD_UNPCBID = 5, CREDENTIALS_TYPE_APPLE_XUCRED = 6, CREDENTIALS_TYPE_WIN32_PID = 7, }
DBusMessageByteOrder :: enum u32 {DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN = 66, DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN = 108, }
ApplicationFlags :: enum u32 {APPLICATION_FLAGS_NONE = 0, APPLICATION_DEFAULT_FLAGS = 0, APPLICATION_IS_SERVICE = 1, APPLICATION_IS_LAUNCHER = 2, APPLICATION_HANDLES_OPEN = 4, APPLICATION_HANDLES_COMMAND_LINE = 8, APPLICATION_SEND_ENVIRONMENT = 16, APPLICATION_NON_UNIQUE = 32, APPLICATION_CAN_OVERRIDE_APP_ID = 64, APPLICATION_ALLOW_REPLACEMENT = 128, APPLICATION_REPLACE = 256, }
TlsError :: enum u32 {TLS_ERROR_UNAVAILABLE = 0, TLS_ERROR_MISC = 1, TLS_ERROR_BAD_CERTIFICATE = 2, TLS_ERROR_NOT_TLS = 3, TLS_ERROR_HANDSHAKE = 4, TLS_ERROR_CERTIFICATE_REQUIRED = 5, TLS_ERROR_EOF = 6, TLS_ERROR_INAPPROPRIATE_FALLBACK = 7, TLS_ERROR_BAD_CERTIFICATE_PASSWORD = 8, }
TlsCertificateFlags :: enum u32 {TLS_CERTIFICATE_NO_FLAGS = 0, TLS_CERTIFICATE_UNKNOWN_CA = 1, TLS_CERTIFICATE_BAD_IDENTITY = 2, TLS_CERTIFICATE_NOT_ACTIVATED = 4, TLS_CERTIFICATE_EXPIRED = 8, TLS_CERTIFICATE_REVOKED = 16, TLS_CERTIFICATE_INSECURE = 32, TLS_CERTIFICATE_GENERIC_ERROR = 64, TLS_CERTIFICATE_VALIDATE_ALL = 127, }
TlsAuthenticationMode :: enum u32 {TLS_AUTHENTICATION_NONE = 0, TLS_AUTHENTICATION_REQUESTED = 1, TLS_AUTHENTICATION_REQUIRED = 2, }
TlsChannelBindingType :: enum u32 {TLS_CHANNEL_BINDING_TLS_UNIQUE = 0, TLS_CHANNEL_BINDING_TLS_SERVER_END_POINT = 1, TLS_CHANNEL_BINDING_TLS_EXPORTER = 2, }
TlsChannelBindingError :: enum u32 {TLS_CHANNEL_BINDING_ERROR_NOT_IMPLEMENTED = 0, TLS_CHANNEL_BINDING_ERROR_INVALID_STATE = 1, TLS_CHANNEL_BINDING_ERROR_NOT_AVAILABLE = 2, TLS_CHANNEL_BINDING_ERROR_NOT_SUPPORTED = 3, TLS_CHANNEL_BINDING_ERROR_GENERAL_ERROR = 4, }
TlsRehandshakeMode :: enum u32 {TLS_REHANDSHAKE_NEVER = 0, TLS_REHANDSHAKE_SAFELY = 1, TLS_REHANDSHAKE_UNSAFELY = 2, }
_GTlsPasswordFlags :: enum u32 {TLS_PASSWORD_NONE = 0, TLS_PASSWORD_RETRY = 2, TLS_PASSWORD_MANY_TRIES = 4, TLS_PASSWORD_FINAL_TRY = 8, TLS_PASSWORD_PKCS11_USER = 16, TLS_PASSWORD_PKCS11_SECURITY_OFFICER = 32, TLS_PASSWORD_PKCS11_CONTEXT_SPECIFIC = 64, }
TlsPasswordFlags :: _GTlsPasswordFlags
TlsInteractionResult :: enum u32 {TLS_INTERACTION_UNHANDLED = 0, TLS_INTERACTION_HANDLED = 1, TLS_INTERACTION_FAILED = 2, }
DBusInterfaceSkeletonFlags :: enum u32 {DBUS_INTERFACE_SKELETON_FLAGS_NONE = 0, DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1, }
DBusObjectManagerClientFlags :: enum u32 {DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE = 0, DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START = 1, }
TlsDatabaseVerifyFlags :: enum u32 {TLS_DATABASE_VERIFY_NONE = 0, }
TlsDatabaseLookupFlags :: enum u32 {TLS_DATABASE_LOOKUP_NONE = 0, TLS_DATABASE_LOOKUP_KEYPAIR = 1, }
TlsCertificateRequestFlags :: enum u32 {TLS_CERTIFICATE_REQUEST_NONE = 0, }
TlsProtocolVersion :: enum u32 {TLS_PROTOCOL_VERSION_UNKNOWN = 0, TLS_PROTOCOL_VERSION_SSL_3_0 = 1, TLS_PROTOCOL_VERSION_TLS_1_0 = 2, TLS_PROTOCOL_VERSION_TLS_1_1 = 3, TLS_PROTOCOL_VERSION_TLS_1_2 = 4, TLS_PROTOCOL_VERSION_TLS_1_3 = 5, TLS_PROTOCOL_VERSION_DTLS_1_0 = 201, TLS_PROTOCOL_VERSION_DTLS_1_2 = 202, }
IOModuleScopeFlags :: enum u32 {IO_MODULE_SCOPE_NONE = 0, IO_MODULE_SCOPE_BLOCK_DUPLICATES = 1, }
SocketClientEvent :: enum u32 {SOCKET_CLIENT_RESOLVING = 0, SOCKET_CLIENT_RESOLVED = 1, SOCKET_CLIENT_CONNECTING = 2, SOCKET_CLIENT_CONNECTED = 3, SOCKET_CLIENT_PROXY_NEGOTIATING = 4, SOCKET_CLIENT_PROXY_NEGOTIATED = 5, SOCKET_CLIENT_TLS_HANDSHAKING = 6, SOCKET_CLIENT_TLS_HANDSHAKED = 7, SOCKET_CLIENT_COMPLETE = 8, }
SocketListenerEvent :: enum u32 {SOCKET_LISTENER_BINDING = 0, SOCKET_LISTENER_BOUND = 1, SOCKET_LISTENER_LISTENING = 2, SOCKET_LISTENER_LISTENED = 3, }
TestDBusFlags :: enum u32 {TEST_DBUS_NONE = 0, }
SubprocessFlags :: enum u32 {SUBPROCESS_FLAGS_NONE = 0, SUBPROCESS_FLAGS_STDIN_PIPE = 1, SUBPROCESS_FLAGS_STDIN_INHERIT = 2, SUBPROCESS_FLAGS_STDOUT_PIPE = 4, SUBPROCESS_FLAGS_STDOUT_SILENCE = 8, SUBPROCESS_FLAGS_STDERR_PIPE = 16, SUBPROCESS_FLAGS_STDERR_SILENCE = 32, SUBPROCESS_FLAGS_STDERR_MERGE = 64, SUBPROCESS_FLAGS_INHERIT_FDS = 128, SUBPROCESS_FLAGS_SEARCH_PATH_FROM_ENVP = 256, }
NotificationPriority :: enum u32 {NOTIFICATION_PRIORITY_NORMAL = 0, NOTIFICATION_PRIORITY_LOW = 1, NOTIFICATION_PRIORITY_HIGH = 2, NOTIFICATION_PRIORITY_URGENT = 3, }
NetworkConnectivity :: enum u32 {NETWORK_CONNECTIVITY_LOCAL = 1, NETWORK_CONNECTIVITY_LIMITED = 2, NETWORK_CONNECTIVITY_PORTAL = 3, NETWORK_CONNECTIVITY_FULL = 4, }
PollableReturn :: enum i32 {POLLABLE_RETURN_FAILED = 0, POLLABLE_RETURN_OK = 1, POLLABLE_RETURN_WOULD_BLOCK = -27, }
MemoryMonitorWarningLevel :: enum u32 {MEMORY_MONITOR_WARNING_LEVEL_LOW = 50, MEMORY_MONITOR_WARNING_LEVEL_MEDIUM = 100, MEMORY_MONITOR_WARNING_LEVEL_CRITICAL = 255, }
_GAppLaunchContextPrivate :: struct #packed {}
AppLaunchContextPrivate :: _GAppLaunchContextPrivate
_GAppLaunchContext :: struct {
    parent_instance: gobj.Object,
    priv: ^AppLaunchContextPrivate,
}
AppLaunchContext :: _GAppLaunchContext
_GAppInfo :: struct #packed {}
AppInfo :: _GAppInfo
_GAsyncResult :: struct #packed {}
AsyncResult :: _GAsyncResult
_GAsyncInitable :: struct #packed {}
AsyncInitable :: _GAsyncInitable
_GInputStreamPrivate :: struct #packed {}
InputStreamPrivate :: _GInputStreamPrivate
_GInputStream :: struct {
    parent_instance: gobj.Object,
    priv: ^InputStreamPrivate,
}
InputStream :: _GInputStream
_GFilterInputStream :: struct {
    parent_instance: InputStream,
    base_stream: ^InputStream,
}
FilterInputStream :: _GFilterInputStream
_GBufferedInputStreamPrivate :: struct #packed {}
BufferedInputStreamPrivate :: _GBufferedInputStreamPrivate
_GBufferedInputStream :: struct {
    parent_instance: FilterInputStream,
    priv: ^BufferedInputStreamPrivate,
}
BufferedInputStream :: _GBufferedInputStream
_GOutputStreamPrivate :: struct #packed {}
OutputStreamPrivate :: _GOutputStreamPrivate
_GOutputStream :: struct {
    parent_instance: gobj.Object,
    priv: ^OutputStreamPrivate,
}
OutputStream :: _GOutputStream
_GFilterOutputStream :: struct {
    parent_instance: OutputStream,
    base_stream: ^OutputStream,
}
FilterOutputStream :: _GFilterOutputStream
_GBufferedOutputStreamPrivate :: struct #packed {}
BufferedOutputStreamPrivate :: _GBufferedOutputStreamPrivate
_GBufferedOutputStream :: struct {
    parent_instance: FilterOutputStream,
    priv: ^BufferedOutputStreamPrivate,
}
BufferedOutputStream :: _GBufferedOutputStream
_GCancellablePrivate :: struct #packed {}
CancellablePrivate :: _GCancellablePrivate
_GCancellable :: struct {
    parent_instance: gobj.Object,
    priv: ^CancellablePrivate,
}
Cancellable :: _GCancellable
_GCharsetConverter :: struct #packed {}
CharsetConverter :: _GCharsetConverter
_GConverter :: struct #packed {}
Converter :: _GConverter
_GConverterInputStreamPrivate :: struct #packed {}
ConverterInputStreamPrivate :: _GConverterInputStreamPrivate
_GConverterInputStream :: struct {
    parent_instance: FilterInputStream,
    priv: ^ConverterInputStreamPrivate,
}
ConverterInputStream :: _GConverterInputStream
_GConverterOutputStreamPrivate :: struct #packed {}
ConverterOutputStreamPrivate :: _GConverterOutputStreamPrivate
_GConverterOutputStream :: struct {
    parent_instance: FilterOutputStream,
    priv: ^ConverterOutputStreamPrivate,
}
ConverterOutputStream :: _GConverterOutputStream
_GDatagramBased :: struct #packed {}
DatagramBased :: _GDatagramBased
_GDataInputStreamPrivate :: struct #packed {}
DataInputStreamPrivate :: _GDataInputStreamPrivate
_GDataInputStream :: struct {
    parent_instance: BufferedInputStream,
    priv: ^DataInputStreamPrivate,
}
DataInputStream :: _GDataInputStream
_GSimplePermission :: struct #packed {}
SimplePermission :: _GSimplePermission
_GZlibCompressor :: struct #packed {}
ZlibCompressor :: _GZlibCompressor
_GZlibDecompressor :: struct #packed {}
ZlibDecompressor :: _GZlibDecompressor
_GSimpleActionGroupPrivate :: struct #packed {}
SimpleActionGroupPrivate :: _GSimpleActionGroupPrivate
_GSimpleActionGroup :: struct {
    parent_instance: gobj.Object,
    priv: ^SimpleActionGroupPrivate,
}
SimpleActionGroup :: _GSimpleActionGroup
_GRemoteActionGroup :: struct #packed {}
RemoteActionGroup :: _GRemoteActionGroup
_GDBusActionGroup :: struct #packed {}
DBusActionGroup :: _GDBusActionGroup
_GActionMap :: struct #packed {}
ActionMap :: _GActionMap
_GActionGroup :: struct #packed {}
ActionGroup :: _GActionGroup
_GPropertyAction :: struct #packed {}
PropertyAction :: _GPropertyAction
_GSimpleAction :: struct #packed {}
SimpleAction :: _GSimpleAction
_GAction :: struct #packed {}
Action :: _GAction
_GApplicationPrivate :: struct #packed {}
ApplicationPrivate :: _GApplicationPrivate
_GApplication :: struct {
    parent_instance: gobj.Object,
    priv: ^ApplicationPrivate,
}
Application :: _GApplication
_GApplicationCommandLinePrivate :: struct #packed {}
ApplicationCommandLinePrivate :: _GApplicationCommandLinePrivate
_GApplicationCommandLine :: struct {
    parent_instance: gobj.Object,
    priv: ^ApplicationCommandLinePrivate,
}
ApplicationCommandLine :: _GApplicationCommandLine
_GSettingsBackend :: struct #packed {}
SettingsBackend :: _GSettingsBackend
_GSettingsPrivate :: struct #packed {}
SettingsPrivate :: _GSettingsPrivate
_GSettings :: struct {
    parent_instance: gobj.Object,
    priv: ^SettingsPrivate,
}
Settings :: _GSettings
_GPermissionPrivate :: struct #packed {}
PermissionPrivate :: _GPermissionPrivate
_GPermission :: struct {
    parent_instance: gobj.Object,
    priv: ^PermissionPrivate,
}
Permission :: _GPermission
_GMenuModelPrivate :: struct #packed {}
MenuModelPrivate :: _GMenuModelPrivate
_GMenuModel :: struct {
    parent_instance: gobj.Object,
    priv: ^MenuModelPrivate,
}
MenuModel :: _GMenuModel
_GNotification :: struct #packed {}
Notification :: _GNotification
_GDrive :: struct #packed {}
Drive :: _GDrive
_GFileEnumeratorPrivate :: struct #packed {}
FileEnumeratorPrivate :: _GFileEnumeratorPrivate
_GFileEnumerator :: struct {
    parent_instance: gobj.Object,
    priv: ^FileEnumeratorPrivate,
}
FileEnumerator :: _GFileEnumerator
_GFileMonitorPrivate :: struct #packed {}
FileMonitorPrivate :: _GFileMonitorPrivate
_GFileMonitor :: struct {
    parent_instance: gobj.Object,
    priv: ^FileMonitorPrivate,
}
FileMonitor :: _GFileMonitor
_GFile :: struct #packed {}
File :: _GFile
_GFileInfo :: struct #packed {}
FileInfo :: _GFileInfo
_GFileAttributeMatcher :: struct #packed {}
FileAttributeMatcher :: _GFileAttributeMatcher
_GFileAttributeInfo :: struct {
    name: cstring,
    type: FileAttributeType,
    flags: FileAttributeInfoFlags,
}
FileAttributeInfo :: _GFileAttributeInfo
_GFileAttributeInfoList :: struct {
    infos: [^]FileAttributeInfo,
    n_infos: i32,
}
FileAttributeInfoList :: _GFileAttributeInfoList
_GFileInputStreamPrivate :: struct #packed {}
FileInputStreamPrivate :: _GFileInputStreamPrivate
_GFileInputStream :: struct {
    parent_instance: InputStream,
    priv: ^FileInputStreamPrivate,
}
FileInputStream :: _GFileInputStream
_GFileOutputStreamPrivate :: struct #packed {}
FileOutputStreamPrivate :: _GFileOutputStreamPrivate
_GFileOutputStream :: struct {
    parent_instance: OutputStream,
    priv: ^FileOutputStreamPrivate,
}
FileOutputStream :: _GFileOutputStream
_GIOStreamPrivate :: struct #packed {}
IOStreamPrivate :: _GIOStreamPrivate
_GIOStream :: struct {
    parent_instance: gobj.Object,
    priv: ^IOStreamPrivate,
}
IOStream :: _GIOStream
_GFileIOStreamPrivate :: struct #packed {}
FileIOStreamPrivate :: _GFileIOStreamPrivate
_GFileIOStream :: struct {
    parent_instance: IOStream,
    priv: ^FileIOStreamPrivate,
}
FileIOStream :: _GFileIOStream
_GFileIcon :: struct #packed {}
FileIcon :: _GFileIcon
_GFilenameCompleter :: struct #packed {}
FilenameCompleter :: _GFilenameCompleter
_GIcon :: struct #packed {}
Icon :: _GIcon
_GInetAddressPrivate :: struct #packed {}
InetAddressPrivate :: _GInetAddressPrivate
_GInetAddress :: struct {
    parent_instance: gobj.Object,
    priv: ^InetAddressPrivate,
}
InetAddress :: _GInetAddress
_GInetAddressMaskPrivate :: struct #packed {}
InetAddressMaskPrivate :: _GInetAddressMaskPrivate
_GInetAddressMask :: struct {
    parent_instance: gobj.Object,
    priv: ^InetAddressMaskPrivate,
}
InetAddressMask :: _GInetAddressMask
_GSocketAddress :: struct {
    parent_instance: gobj.Object,
}
SocketAddress :: _GSocketAddress
_GInetSocketAddressPrivate :: struct #packed {}
InetSocketAddressPrivate :: _GInetSocketAddressPrivate
_GInetSocketAddress :: struct {
    parent_instance: SocketAddress,
    priv: ^InetSocketAddressPrivate,
}
InetSocketAddress :: _GInetSocketAddress
_GNativeSocketAddressPrivate :: struct #packed {}
NativeSocketAddressPrivate :: _GNativeSocketAddressPrivate
_GNativeSocketAddress :: struct {
    parent_instance: SocketAddress,
    priv: ^NativeSocketAddressPrivate,
}
NativeSocketAddress :: _GNativeSocketAddress
_GInitable :: struct #packed {}
Initable :: _GInitable
_GIOModule :: struct #packed {}
IOModule :: _GIOModule
_GIOExtensionPoint :: struct #packed {}
IOExtensionPoint :: _GIOExtensionPoint
_GIOExtension :: struct #packed {}
IOExtension :: _GIOExtension
_GIOSchedulerJob :: struct #packed {}
IOSchedulerJob :: _GIOSchedulerJob
_GIOStreamAdapter :: struct #packed {}
IOStreamAdapter :: _GIOStreamAdapter
_GLoadableIcon :: struct #packed {}
LoadableIcon :: _GLoadableIcon
_GBytesIcon :: struct #packed {}
BytesIcon :: _GBytesIcon
_GMemoryInputStreamPrivate :: struct #packed {}
MemoryInputStreamPrivate :: _GMemoryInputStreamPrivate
_GMemoryInputStream :: struct {
    parent_instance: InputStream,
    priv: ^MemoryInputStreamPrivate,
}
MemoryInputStream :: _GMemoryInputStream
_GMemoryOutputStreamPrivate :: struct #packed {}
MemoryOutputStreamPrivate :: _GMemoryOutputStreamPrivate
_GMemoryOutputStream :: struct {
    parent_instance: OutputStream,
    priv: ^MemoryOutputStreamPrivate,
}
MemoryOutputStream :: _GMemoryOutputStream
_GMount :: struct #packed {}
Mount :: _GMount
_GMountOperationPrivate :: struct #packed {}
MountOperationPrivate :: _GMountOperationPrivate
_GMountOperation :: struct {
    parent_instance: gobj.Object,
    priv: ^MountOperationPrivate,
}
MountOperation :: _GMountOperation
_GNetworkAddressPrivate :: struct #packed {}
NetworkAddressPrivate :: _GNetworkAddressPrivate
_GNetworkAddress :: struct {
    parent_instance: gobj.Object,
    priv: ^NetworkAddressPrivate,
}
NetworkAddress :: _GNetworkAddress
_GNetworkMonitor :: struct #packed {}
NetworkMonitor :: _GNetworkMonitor
_GNetworkServicePrivate :: struct #packed {}
NetworkServicePrivate :: _GNetworkServicePrivate
_GNetworkService :: struct {
    parent_instance: gobj.Object,
    priv: ^NetworkServicePrivate,
}
NetworkService :: _GNetworkService
_GSimpleIOStream :: struct #packed {}
SimpleIOStream :: _GSimpleIOStream
_GPollableInputStream :: struct #packed {}
PollableInputStream :: _GPollableInputStream
_GPollableOutputStream :: struct #packed {}
PollableOutputStream :: _GPollableOutputStream
_GResolverPrivate :: struct #packed {}
ResolverPrivate :: _GResolverPrivate
_GResolver :: struct {
    parent_instance: gobj.Object,
    priv: ^ResolverPrivate,
}
Resolver :: _GResolver
_GResource :: struct #packed {}
Resource :: _GResource
_GSeekable :: struct #packed {}
Seekable :: _GSeekable
_GSimpleAsyncResult :: struct #packed {}
SimpleAsyncResult :: _GSimpleAsyncResult
_GSocketPrivate :: struct #packed {}
SocketPrivate :: _GSocketPrivate
_GSocket :: struct {
    parent_instance: gobj.Object,
    priv: ^SocketPrivate,
}
Socket :: _GSocket
_GSocketControlMessagePrivate :: struct #packed {}
SocketControlMessagePrivate :: _GSocketControlMessagePrivate
_GSocketControlMessage :: struct {
    parent_instance: gobj.Object,
    priv: ^SocketControlMessagePrivate,
}
SocketControlMessage :: _GSocketControlMessage
_GSocketClientPrivate :: struct #packed {}
SocketClientPrivate :: _GSocketClientPrivate
_GSocketClient :: struct {
    parent_instance: gobj.Object,
    priv: ^SocketClientPrivate,
}
SocketClient :: _GSocketClient
_GSocketConnectionPrivate :: struct #packed {}
SocketConnectionPrivate :: _GSocketConnectionPrivate
_GSocketConnection :: struct {
    parent_instance: IOStream,
    priv: ^SocketConnectionPrivate,
}
SocketConnection :: _GSocketConnection
_GSocketListenerPrivate :: struct #packed {}
SocketListenerPrivate :: _GSocketListenerPrivate
_GSocketListener :: struct {
    parent_instance: gobj.Object,
    priv: ^SocketListenerPrivate,
}
SocketListener :: _GSocketListener
_GSocketServicePrivate :: struct #packed {}
SocketServicePrivate :: _GSocketServicePrivate
_GSocketService :: struct {
    parent_instance: SocketListener,
    priv: ^SocketServicePrivate,
}
SocketService :: _GSocketService
_GSocketAddressEnumerator :: struct {
    parent_instance: gobj.Object,
}
SocketAddressEnumerator :: _GSocketAddressEnumerator
_GSocketConnectable :: struct #packed {}
SocketConnectable :: _GSocketConnectable
_GSrvTarget :: struct #packed {}
SrvTarget :: _GSrvTarget
_GTask :: struct #packed {}
Task :: _GTask
_GTcpConnectionPrivate :: struct #packed {}
TcpConnectionPrivate :: _GTcpConnectionPrivate
_GTcpConnection :: struct {
    parent_instance: SocketConnection,
    priv: ^TcpConnectionPrivate,
}
TcpConnection :: _GTcpConnection
_GTcpWrapperConnectionPrivate :: struct #packed {}
TcpWrapperConnectionPrivate :: _GTcpWrapperConnectionPrivate
_GTcpWrapperConnection :: struct {
    parent_instance: TcpConnection,
    priv: ^TcpWrapperConnectionPrivate,
}
TcpWrapperConnection :: _GTcpWrapperConnection
_GThreadedSocketServicePrivate :: struct #packed {}
ThreadedSocketServicePrivate :: _GThreadedSocketServicePrivate
_GThreadedSocketService :: struct {
    parent_instance: SocketService,
    priv: ^ThreadedSocketServicePrivate,
}
ThreadedSocketService :: _GThreadedSocketService
_GDtlsConnection :: struct #packed {}
DtlsConnection :: _GDtlsConnection
_GDtlsClientConnection :: struct #packed {}
DtlsClientConnection :: _GDtlsClientConnection
_GDtlsServerConnection :: struct #packed {}
DtlsServerConnection :: _GDtlsServerConnection
_GThemedIcon :: struct #packed {}
ThemedIcon :: _GThemedIcon
_GTlsCertificatePrivate :: struct #packed {}
TlsCertificatePrivate :: _GTlsCertificatePrivate
_GTlsCertificate :: struct {
    parent_instance: gobj.Object,
    priv: ^TlsCertificatePrivate,
}
TlsCertificate :: _GTlsCertificate
_GTlsClientConnection :: struct #packed {}
TlsClientConnection :: _GTlsClientConnection
_GTlsConnectionPrivate :: struct #packed {}
TlsConnectionPrivate :: _GTlsConnectionPrivate
_GTlsConnection :: struct {
    parent_instance: IOStream,
    priv: ^TlsConnectionPrivate,
}
TlsConnection :: _GTlsConnection
_GTlsDatabasePrivate :: struct #packed {}
TlsDatabasePrivate :: _GTlsDatabasePrivate
_GTlsDatabase :: struct {
    parent_instance: gobj.Object,
    priv: ^TlsDatabasePrivate,
}
TlsDatabase :: _GTlsDatabase
_GTlsFileDatabase :: struct #packed {}
TlsFileDatabase :: _GTlsFileDatabase
_GTlsInteractionPrivate :: struct #packed {}
TlsInteractionPrivate :: _GTlsInteractionPrivate
_GTlsInteraction :: struct {
    parent_instance: gobj.Object,
    priv: ^TlsInteractionPrivate,
}
TlsInteraction :: _GTlsInteraction
_GTlsPasswordPrivate :: struct #packed {}
TlsPasswordPrivate :: _GTlsPasswordPrivate
_GTlsPassword :: struct {
    parent_instance: gobj.Object,
    priv: ^TlsPasswordPrivate,
}
TlsPassword :: _GTlsPassword
_GTlsServerConnection :: struct #packed {}
TlsServerConnection :: _GTlsServerConnection
_GVfs :: struct {
    parent_instance: gobj.Object,
}
Vfs :: _GVfs
_GProxyResolver :: struct #packed {}
ProxyResolver :: _GProxyResolver
_GProxy :: struct #packed {}
Proxy :: _GProxy
_GProxyAddressPrivate :: struct #packed {}
ProxyAddressPrivate :: _GProxyAddressPrivate
_GProxyAddress :: struct {
    parent_instance: InetSocketAddress,
    priv: ^ProxyAddressPrivate,
}
ProxyAddress :: _GProxyAddress
_GProxyAddressEnumeratorPrivate :: struct #packed {}
ProxyAddressEnumeratorPrivate :: _GProxyAddressEnumeratorPrivate
_GProxyAddressEnumerator :: struct {
    parent_instance: SocketAddressEnumerator,
    priv: ^ProxyAddressEnumeratorPrivate,
}
ProxyAddressEnumerator :: _GProxyAddressEnumerator
_GVolume :: struct #packed {}
Volume :: _GVolume
_GVolumeMonitor :: struct {
    parent_instance: gobj.Object,
    priv: glib.pointer,
}
VolumeMonitor :: _GVolumeMonitor
AsyncReadyCallback :: #type proc "c" (source_object: ^gobj.Object, res: [^]AsyncResult, data: glib.pointer)
FileProgressCallback :: #type proc "c" (current_num_bytes: glib.offset, total_num_bytes: glib.offset, data: glib.pointer)
FileReadMoreCallback :: #type proc "c" (file_contents: cstring, file_size: glib.offset, callback_data: glib.pointer) -> glib.boolean
FileMeasureProgressCallback :: #type proc "c" (reporting: glib.boolean, current_size: glib.uint64, num_dirs: glib.uint64, num_files: glib.uint64, data: glib.pointer)
IOSchedulerJobFunc :: #type proc "c" (job: ^IOSchedulerJob, cancellable: ^Cancellable, data: glib.pointer) -> glib.boolean
SimpleAsyncThreadFunc :: #type proc "c" (res: [^]SimpleAsyncResult, object: ^gobj.Object, cancellable: ^Cancellable)
SocketSourceFunc :: #type proc "c" (socket: ^Socket, condition: glib.IOCondition, data: glib.pointer) -> glib.boolean
DatagramBasedSourceFunc :: #type proc "c" (datagram_based: ^DatagramBased, condition: glib.IOCondition, data: glib.pointer) -> glib.boolean
_GInputVector :: struct {
    buffer: glib.pointer,
    size_m: glib.size,
}
InputVector :: _GInputVector
_GInputMessage :: struct {
    address: [^]^SocketAddress,
    vectors: [^]InputVector,
    num_vectors: glib.uint_,
    bytes_received: glib.size,
    flags: glib.int_,
    control_messages: [^]^^SocketControlMessage,
    num_control_messages: [^]glib.uint_,
}
InputMessage :: _GInputMessage
_GOutputVector :: struct {
    buffer: glib.constpointer,
    size_m: glib.size,
}
OutputVector :: _GOutputVector
_GOutputMessage :: struct {
    address: [^]SocketAddress,
    vectors: [^]OutputVector,
    num_vectors: glib.uint_,
    bytes_sent: glib.uint_,
    control_messages: [^]^SocketControlMessage,
    num_control_messages: glib.uint_,
}
OutputMessage :: _GOutputMessage
_GCredentials :: struct #packed {}
Credentials :: _GCredentials
_GUnixCredentialsMessagePrivate :: struct #packed {}
UnixCredentialsMessagePrivate :: _GUnixCredentialsMessagePrivate
_GUnixCredentialsMessage :: struct {
    parent_instance: SocketControlMessage,
    priv: ^UnixCredentialsMessagePrivate,
}
UnixCredentialsMessage :: _GUnixCredentialsMessage
_GUnixFDListPrivate :: struct #packed {}
UnixFDListPrivate :: _GUnixFDListPrivate
_GUnixFDList :: struct {
    parent_instance: gobj.Object,
    priv: ^UnixFDListPrivate,
}
UnixFDList :: _GUnixFDList
_GDBusMessage :: struct #packed {}
DBusMessage :: _GDBusMessage
_GDBusConnection :: struct #packed {}
DBusConnection :: _GDBusConnection
_GDBusProxyPrivate :: struct #packed {}
DBusProxyPrivate :: _GDBusProxyPrivate
_GDBusProxy :: struct {
    parent_instance: gobj.Object,
    priv: ^DBusProxyPrivate,
}
DBusProxy :: _GDBusProxy
_GDBusMethodInvocation :: struct #packed {}
DBusMethodInvocation :: _GDBusMethodInvocation
_GDBusServer :: struct #packed {}
DBusServer :: _GDBusServer
_GDBusAuthObserver :: struct #packed {}
DBusAuthObserver :: _GDBusAuthObserver
_GDBusErrorEntry :: struct {
    error_code: glib.int_,
    dbus_error_name: cstring,
}
DBusErrorEntry :: _GDBusErrorEntry
DBusInterfaceMethodCallFunc :: #type proc "c" (connection: ^DBusConnection, sender: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, invocation: ^DBusMethodInvocation, user_data: glib.pointer)
DBusInterfaceGetPropertyFunc :: #type proc "c" (connection: ^DBusConnection, sender: cstring, object_path: cstring, interface_name: cstring, property_name: cstring, error: ^^glib.Error, user_data: glib.pointer) -> ^glib.Variant
DBusInterfaceSetPropertyFunc :: #type proc "c" (connection: ^DBusConnection, sender: cstring, object_path: cstring, interface_name: cstring, property_name: cstring, value: ^glib.Variant, error: ^^glib.Error, user_data: glib.pointer) -> glib.boolean
_GDBusInterfaceVTable :: struct {
    method_call: DBusInterfaceMethodCallFunc,
    get_property: DBusInterfaceGetPropertyFunc,
    set_property: DBusInterfaceSetPropertyFunc,
    padding: [8]glib.pointer,
}
DBusInterfaceVTable :: _GDBusInterfaceVTable
DBusSubtreeEnumerateFunc :: #type proc "c" (connection: ^DBusConnection, sender: cstring, object_path: cstring, user_data: glib.pointer) -> ^cstring
DBusAnnotationInfo :: _GDBusAnnotationInfo
_GDBusArgInfo :: struct {
    ref_count: glib.int_,
    name: cstring,
    signature: cstring,
    annotations: [^]^DBusAnnotationInfo,
}
DBusArgInfo :: _GDBusArgInfo
_GDBusMethodInfo :: struct {
    ref_count: glib.int_,
    name: cstring,
    in_args: [^]^DBusArgInfo,
    out_args: [^]^DBusArgInfo,
    annotations: [^]^DBusAnnotationInfo,
}
DBusMethodInfo :: _GDBusMethodInfo
_GDBusSignalInfo :: struct {
    ref_count: glib.int_,
    name: cstring,
    args: [^]^DBusArgInfo,
    annotations: [^]^DBusAnnotationInfo,
}
DBusSignalInfo :: _GDBusSignalInfo
_GDBusPropertyInfo :: struct {
    ref_count: glib.int_,
    name: cstring,
    signature: cstring,
    flags: DBusPropertyInfoFlags,
    annotations: [^]^DBusAnnotationInfo,
}
DBusPropertyInfo :: _GDBusPropertyInfo
_GDBusInterfaceInfo :: struct {
    ref_count: glib.int_,
    name: cstring,
    methods: [^]^DBusMethodInfo,
    signals: [^]^DBusSignalInfo,
    properties: [^]^DBusPropertyInfo,
    annotations: [^]^DBusAnnotationInfo,
}
DBusInterfaceInfo :: _GDBusInterfaceInfo
DBusSubtreeIntrospectFunc :: #type proc "c" (connection: ^DBusConnection, sender: cstring, object_path: cstring, node: cstring, user_data: glib.pointer) -> ^^DBusInterfaceInfo
DBusSubtreeDispatchFunc :: #type proc "c" (connection: ^DBusConnection, sender: cstring, object_path: cstring, interface_name: cstring, node: cstring, out_user_data: ^glib.pointer, user_data: glib.pointer) -> ^DBusInterfaceVTable
_GDBusSubtreeVTable :: struct {
    enumerate: DBusSubtreeEnumerateFunc,
    introspect: DBusSubtreeIntrospectFunc,
    dispatch: DBusSubtreeDispatchFunc,
    padding: [8]glib.pointer,
}
DBusSubtreeVTable :: _GDBusSubtreeVTable
DBusNodeInfo :: _GDBusNodeInfo
CancellableSourceFunc :: #type proc "c" (cancellable: ^Cancellable, data: glib.pointer) -> glib.boolean
PollableSourceFunc :: #type proc "c" (pollable_stream: ^gobj.Object, data: glib.pointer) -> glib.boolean
_GDBusInterface :: struct #packed {}
DBusInterface :: _GDBusInterface
_GDBusInterfaceSkeletonPrivate :: struct #packed {}
DBusInterfaceSkeletonPrivate :: _GDBusInterfaceSkeletonPrivate
_GDBusInterfaceSkeleton :: struct {
    parent_instance: gobj.Object,
    priv: ^DBusInterfaceSkeletonPrivate,
}
DBusInterfaceSkeleton :: _GDBusInterfaceSkeleton
_GDBusObject :: struct #packed {}
DBusObject :: _GDBusObject
_GDBusObjectSkeletonPrivate :: struct #packed {}
DBusObjectSkeletonPrivate :: _GDBusObjectSkeletonPrivate
_GDBusObjectSkeleton :: struct {
    parent_instance: gobj.Object,
    priv: ^DBusObjectSkeletonPrivate,
}
DBusObjectSkeleton :: _GDBusObjectSkeleton
_GDBusObjectProxyPrivate :: struct #packed {}
DBusObjectProxyPrivate :: _GDBusObjectProxyPrivate
_GDBusObjectProxy :: struct {
    parent_instance: gobj.Object,
    priv: ^DBusObjectProxyPrivate,
}
DBusObjectProxy :: _GDBusObjectProxy
_GDBusObjectManager :: struct #packed {}
DBusObjectManager :: _GDBusObjectManager
_GDBusObjectManagerClientPrivate :: struct #packed {}
DBusObjectManagerClientPrivate :: _GDBusObjectManagerClientPrivate
_GDBusObjectManagerClient :: struct {
    parent_instance: gobj.Object,
    priv: ^DBusObjectManagerClientPrivate,
}
DBusObjectManagerClient :: _GDBusObjectManagerClient
_GDBusObjectManagerServerPrivate :: struct #packed {}
DBusObjectManagerServerPrivate :: _GDBusObjectManagerServerPrivate
_GDBusObjectManagerServer :: struct {
    parent_instance: gobj.Object,
    priv: ^DBusObjectManagerServerPrivate,
}
DBusObjectManagerServer :: _GDBusObjectManagerServer
DBusProxyTypeFunc :: #type proc "c" (manager: ^DBusObjectManagerClient, object_path: cstring, interface_name: cstring, data: glib.pointer) -> gobj.Type
_GTestDBus :: struct #packed {}
TestDBus :: _GTestDBus
_GSubprocess :: struct #packed {}
Subprocess :: _GSubprocess
_GSubprocessLauncher :: struct #packed {}
SubprocessLauncher :: _GSubprocessLauncher
et_name_func_ptr_anon_0 :: #type proc "c" (action: ^Action) -> cstring
et_parameter_type_func_ptr_anon_1 :: #type proc "c" (action: ^Action) -> ^glib.VariantType
et_state_type_func_ptr_anon_2 :: #type proc "c" (action: ^Action) -> ^glib.VariantType
et_state_hint_func_ptr_anon_3 :: #type proc "c" (action: ^Action) -> ^glib.Variant
et_enabled_func_ptr_anon_4 :: #type proc "c" (action: ^Action) -> glib.boolean
et_state_func_ptr_anon_5 :: #type proc "c" (action: ^Action) -> ^glib.Variant
change_state_func_ptr_anon_6 :: #type proc "c" (action: ^Action, value: ^glib.Variant)
activate_func_ptr_anon_7 :: #type proc "c" (action: ^Action, parameter: ^glib.Variant)
_GActionInterface :: struct {
    g_iface: gobj.TypeInterface,
    get_name: et_name_func_ptr_anon_0,
    get_parameter_type: et_parameter_type_func_ptr_anon_1,
    get_state_type: et_state_type_func_ptr_anon_2,
    get_state_hint: et_state_hint_func_ptr_anon_3,
    get_enabled: et_enabled_func_ptr_anon_4,
    get_state: et_state_func_ptr_anon_5,
    change_state: change_state_func_ptr_anon_6,
    activate: activate_func_ptr_anon_7,
}
ActionInterface :: _GActionInterface
has_action_func_ptr_anon_8 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring) -> glib.boolean
list_actions_func_ptr_anon_9 :: #type proc "c" (action_group: ^ActionGroup) -> ^cstring
et_action_enabled_func_ptr_anon_10 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring) -> glib.boolean
et_action_parameter_type_func_ptr_anon_11 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring) -> ^glib.VariantType
et_action_state_type_func_ptr_anon_12 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring) -> ^glib.VariantType
et_action_state_hint_func_ptr_anon_13 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring) -> ^glib.Variant
et_action_state_func_ptr_anon_14 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring) -> ^glib.Variant
change_action_state_func_ptr_anon_15 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring, value: ^glib.Variant)
activate_action_func_ptr_anon_16 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring, parameter: ^glib.Variant)
action_added_func_ptr_anon_17 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring)
action_removed_func_ptr_anon_18 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring)
action_enabled_changed_func_ptr_anon_19 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring, enabled: glib.boolean)
action_state_changed_func_ptr_anon_20 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring, state: ^glib.Variant)
query_action_func_ptr_anon_21 :: #type proc "c" (action_group: ^ActionGroup, action_name: cstring, enabled: ^glib.boolean, parameter_type: ^^glib.VariantType, state_type: ^^glib.VariantType, state_hint: ^^glib.Variant, state: ^^glib.Variant) -> glib.boolean
_GActionGroupInterface :: struct {
    g_iface: gobj.TypeInterface,
    has_action: has_action_func_ptr_anon_8,
    list_actions: list_actions_func_ptr_anon_9,
    get_action_enabled: et_action_enabled_func_ptr_anon_10,
    get_action_parameter_type: et_action_parameter_type_func_ptr_anon_11,
    get_action_state_type: et_action_state_type_func_ptr_anon_12,
    get_action_state_hint: et_action_state_hint_func_ptr_anon_13,
    get_action_state: et_action_state_func_ptr_anon_14,
    change_action_state: change_action_state_func_ptr_anon_15,
    activate_action: activate_action_func_ptr_anon_16,
    action_added: action_added_func_ptr_anon_17,
    action_removed: action_removed_func_ptr_anon_18,
    action_enabled_changed: action_enabled_changed_func_ptr_anon_19,
    action_state_changed: action_state_changed_func_ptr_anon_20,
    query_action: query_action_func_ptr_anon_21,
}
ActionGroupInterface :: _GActionGroupInterface
lookup_action_func_ptr_anon_22 :: #type proc "c" (action_map: ^ActionMap, action_name: cstring) -> ^Action
add_action_func_ptr_anon_23 :: #type proc "c" (action_map: ^ActionMap, action: ^Action)
remove_action_func_ptr_anon_24 :: #type proc "c" (action_map: ^ActionMap, action_name: cstring)
_GActionMapInterface :: struct {
    g_iface: gobj.TypeInterface,
    lookup_action: lookup_action_func_ptr_anon_22,
    add_action: add_action_func_ptr_anon_23,
    remove_action: remove_action_func_ptr_anon_24,
}
ActionMapInterface :: _GActionMapInterface
activate_func_ptr_anon_25 :: #type proc "c" (action: ^SimpleAction, parameter: ^glib.Variant, user_data: glib.pointer)
change_state_func_ptr_anon_26 :: #type proc "c" (action: ^SimpleAction, value: ^glib.Variant, user_data: glib.pointer)
_GActionEntry :: struct {
    name: cstring,
    activate: activate_func_ptr_anon_25,
    parameter_type: cstring,
    state: cstring,
    change_state: change_state_func_ptr_anon_26,
    padding: [3]glib.size,
}
ActionEntry :: _GActionEntry
et_display_func_ptr_anon_52 :: #type proc "c" (context_p: ^AppLaunchContext, info: ^AppInfo, files: [^]glib.List) -> cstring
et_startup_notify_id_func_ptr_anon_53 :: #type proc "c" (context_p: ^AppLaunchContext, info: ^AppInfo, files: [^]glib.List) -> cstring
launch_failed_func_ptr_anon_54 :: #type proc "c" (context_p: ^AppLaunchContext, startup_notify_id: cstring)
launched_func_ptr_anon_55 :: #type proc "c" (context_p: ^AppLaunchContext, info: ^AppInfo, platform_data: ^glib.Variant)
launch_started_func_ptr_anon_56 :: #type proc "c" (context_p: ^AppLaunchContext, info: ^AppInfo, platform_data: ^glib.Variant)
_g_reserved1_func_ptr_anon_57 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_58 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_59 :: #type proc "c" ()
_GAppLaunchContextClass :: struct {
    parent_class: gobj.ObjectClass,
    get_display: et_display_func_ptr_anon_52,
    get_startup_notify_id: et_startup_notify_id_func_ptr_anon_53,
    launch_failed: launch_failed_func_ptr_anon_54,
    launched: launched_func_ptr_anon_55,
    launch_started: launch_started_func_ptr_anon_56,
    _g_reserved1: _g_reserved1_func_ptr_anon_57,
    _g_reserved2: _g_reserved2_func_ptr_anon_58,
    _g_reserved3: _g_reserved3_func_ptr_anon_59,
}
AppLaunchContextClass :: _GAppLaunchContextClass
dup_func_ptr_anon_27 :: #type proc "c" (appinfo: ^AppInfo) -> ^AppInfo
equal_func_ptr_anon_28 :: #type proc "c" (appinfo1: ^AppInfo, appinfo2: ^AppInfo) -> glib.boolean
et_id_func_ptr_anon_29 :: #type proc "c" (appinfo: ^AppInfo) -> cstring
et_name_func_ptr_anon_30 :: #type proc "c" (appinfo: ^AppInfo) -> cstring
et_description_func_ptr_anon_31 :: #type proc "c" (appinfo: ^AppInfo) -> cstring
et_executable_func_ptr_anon_32 :: #type proc "c" (appinfo: ^AppInfo) -> cstring
et_icon_func_ptr_anon_33 :: #type proc "c" (appinfo: ^AppInfo) -> ^Icon
launch_func_ptr_anon_34 :: #type proc "c" (appinfo: ^AppInfo, files: [^]glib.List, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean
supports_uris_func_ptr_anon_35 :: #type proc "c" (appinfo: ^AppInfo) -> glib.boolean
supports_files_func_ptr_anon_36 :: #type proc "c" (appinfo: ^AppInfo) -> glib.boolean
launch_uris_func_ptr_anon_37 :: #type proc "c" (appinfo: ^AppInfo, uris: [^]glib.List, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean
should_show_func_ptr_anon_38 :: #type proc "c" (appinfo: ^AppInfo) -> glib.boolean
set_as_default_for_type_func_ptr_anon_39 :: #type proc "c" (appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean
set_as_default_for_extension_func_ptr_anon_40 :: #type proc "c" (appinfo: ^AppInfo, extension: cstring, error: ^^glib.Error) -> glib.boolean
add_supports_type_func_ptr_anon_41 :: #type proc "c" (appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean
can_remove_supports_type_func_ptr_anon_42 :: #type proc "c" (appinfo: ^AppInfo) -> glib.boolean
remove_supports_type_func_ptr_anon_43 :: #type proc "c" (appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean
can_delete_func_ptr_anon_44 :: #type proc "c" (appinfo: ^AppInfo) -> glib.boolean
do_delete_func_ptr_anon_45 :: #type proc "c" (appinfo: ^AppInfo) -> glib.boolean
et_commandline_func_ptr_anon_46 :: #type proc "c" (appinfo: ^AppInfo) -> cstring
et_display_name_func_ptr_anon_47 :: #type proc "c" (appinfo: ^AppInfo) -> cstring
set_as_last_used_for_type_func_ptr_anon_48 :: #type proc "c" (appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean
et_supported_types_func_ptr_anon_49 :: #type proc "c" (appinfo: ^AppInfo) -> ^cstring
launch_uris_async_func_ptr_anon_50 :: #type proc "c" (appinfo: ^AppInfo, uris: [^]glib.List, context_p: ^AppLaunchContext, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
launch_uris_finish_func_ptr_anon_51 :: #type proc "c" (appinfo: ^AppInfo, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_GAppInfoIface :: struct {
    g_iface: gobj.TypeInterface,
    dup: dup_func_ptr_anon_27,
    equal: equal_func_ptr_anon_28,
    get_id: et_id_func_ptr_anon_29,
    get_name: et_name_func_ptr_anon_30,
    get_description: et_description_func_ptr_anon_31,
    get_executable: et_executable_func_ptr_anon_32,
    get_icon: et_icon_func_ptr_anon_33,
    launch: launch_func_ptr_anon_34,
    supports_uris: supports_uris_func_ptr_anon_35,
    supports_files: supports_files_func_ptr_anon_36,
    launch_uris: launch_uris_func_ptr_anon_37,
    should_show: should_show_func_ptr_anon_38,
    set_as_default_for_type: set_as_default_for_type_func_ptr_anon_39,
    set_as_default_for_extension: set_as_default_for_extension_func_ptr_anon_40,
    add_supports_type: add_supports_type_func_ptr_anon_41,
    can_remove_supports_type: can_remove_supports_type_func_ptr_anon_42,
    remove_supports_type: remove_supports_type_func_ptr_anon_43,
    can_delete: can_delete_func_ptr_anon_44,
    do_delete: do_delete_func_ptr_anon_45,
    get_commandline: et_commandline_func_ptr_anon_46,
    get_display_name: et_display_name_func_ptr_anon_47,
    set_as_last_used_for_type: set_as_last_used_for_type_func_ptr_anon_48,
    get_supported_types: et_supported_types_func_ptr_anon_49,
    launch_uris_async: launch_uris_async_func_ptr_anon_50,
    launch_uris_finish: launch_uris_finish_func_ptr_anon_51,
}
AppInfoIface :: _GAppInfoIface
_GAppInfoMonitor :: struct #packed {}
AppInfoMonitor :: _GAppInfoMonitor
startup_func_ptr_anon_60 :: #type proc "c" (application: ^Application)
activate_func_ptr_anon_61 :: #type proc "c" (application: ^Application)
open_func_ptr_anon_62 :: #type proc "c" (application: ^Application, files: [^]^File, n_files: glib.int_, hint: cstring)
command_line_func_ptr_anon_63 :: #type proc "c" (application: ^Application, command_line: ^ApplicationCommandLine) -> i32
local_command_line_func_ptr_anon_64 :: #type proc "c" (application: ^Application, arguments: [^]^cstring, exit_status: [^]i32) -> glib.boolean
before_emit_func_ptr_anon_65 :: #type proc "c" (application: ^Application, platform_data: ^glib.Variant)
after_emit_func_ptr_anon_66 :: #type proc "c" (application: ^Application, platform_data: ^glib.Variant)
add_platform_data_func_ptr_anon_67 :: #type proc "c" (application: ^Application, builder: ^glib.VariantBuilder)
quit_mainloop_func_ptr_anon_68 :: #type proc "c" (application: ^Application)
run_mainloop_func_ptr_anon_69 :: #type proc "c" (application: ^Application)
shutdown_func_ptr_anon_70 :: #type proc "c" (application: ^Application)
dbus_register_func_ptr_anon_71 :: #type proc "c" (application: ^Application, connection: ^DBusConnection, object_path: cstring, error: ^^glib.Error) -> glib.boolean
dbus_unregister_func_ptr_anon_72 :: #type proc "c" (application: ^Application, connection: ^DBusConnection, object_path: cstring)
handle_local_options_func_ptr_anon_73 :: #type proc "c" (application: ^Application, options: [^]glib.VariantDict) -> glib.int_
name_lost_func_ptr_anon_74 :: #type proc "c" (application: ^Application) -> glib.boolean
_GApplicationClass :: struct {
    parent_class: gobj.ObjectClass,
    startup: startup_func_ptr_anon_60,
    activate: activate_func_ptr_anon_61,
    open: open_func_ptr_anon_62,
    command_line: command_line_func_ptr_anon_63,
    local_command_line: local_command_line_func_ptr_anon_64,
    before_emit: before_emit_func_ptr_anon_65,
    after_emit: after_emit_func_ptr_anon_66,
    add_platform_data: add_platform_data_func_ptr_anon_67,
    quit_mainloop: quit_mainloop_func_ptr_anon_68,
    run_mainloop: run_mainloop_func_ptr_anon_69,
    shutdown: shutdown_func_ptr_anon_70,
    dbus_register: dbus_register_func_ptr_anon_71,
    dbus_unregister: dbus_unregister_func_ptr_anon_72,
    handle_local_options: handle_local_options_func_ptr_anon_73,
    name_lost: name_lost_func_ptr_anon_74,
    padding: [7]glib.pointer,
}
ApplicationClass :: _GApplicationClass
print_literal_func_ptr_anon_75 :: #type proc "c" (cmdline: ^ApplicationCommandLine, message: cstring)
printerr_literal_func_ptr_anon_76 :: #type proc "c" (cmdline: ^ApplicationCommandLine, message: cstring)
et_stdin_func_ptr_anon_77 :: #type proc "c" (cmdline: ^ApplicationCommandLine) -> ^InputStream
done_func_ptr_anon_78 :: #type proc "c" (cmdline: ^ApplicationCommandLine)
_GApplicationCommandLineClass :: struct {
    parent_class: gobj.ObjectClass,
    print_literal: print_literal_func_ptr_anon_75,
    printerr_literal: printerr_literal_func_ptr_anon_76,
    get_stdin: et_stdin_func_ptr_anon_77,
    done: done_func_ptr_anon_78,
    padding: [10]glib.pointer,
}
ApplicationCommandLineClass :: _GApplicationCommandLineClass
init_func_ptr_anon_79 :: #type proc "c" (initable: ^Initable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
_GInitableIface :: struct {
    g_iface: gobj.TypeInterface,
    init: init_func_ptr_anon_79,
}
InitableIface :: _GInitableIface
init_async_func_ptr_anon_80 :: #type proc "c" (initable: ^AsyncInitable, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
init_finish_func_ptr_anon_81 :: #type proc "c" (initable: ^AsyncInitable, res: [^]AsyncResult, error: ^^glib.Error) -> glib.boolean
_GAsyncInitableIface :: struct {
    g_iface: gobj.TypeInterface,
    init_async: init_async_func_ptr_anon_80,
    init_finish: init_finish_func_ptr_anon_81,
}
AsyncInitableIface :: _GAsyncInitableIface
et_user_data_func_ptr_anon_82 :: #type proc "c" (res: [^]AsyncResult) -> glib.pointer
et_source_object_func_ptr_anon_83 :: #type proc "c" (res: [^]AsyncResult) -> ^gobj.Object
is_tagged_func_ptr_anon_84 :: #type proc "c" (res: [^]AsyncResult, source_tag: glib.pointer) -> glib.boolean
_GAsyncResultIface :: struct {
    g_iface: gobj.TypeInterface,
    get_user_data: et_user_data_func_ptr_anon_82,
    get_source_object: et_source_object_func_ptr_anon_83,
    is_tagged: is_tagged_func_ptr_anon_84,
}
AsyncResultIface :: _GAsyncResultIface
read_fn_func_ptr_anon_85 :: #type proc "c" (stream: ^InputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
skip_func_ptr_anon_86 :: #type proc "c" (stream: ^InputStream, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
close_fn_func_ptr_anon_87 :: #type proc "c" (stream: ^InputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
read_async_func_ptr_anon_88 :: #type proc "c" (stream: ^InputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
read_finish_func_ptr_anon_89 :: #type proc "c" (stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
skip_async_func_ptr_anon_90 :: #type proc "c" (stream: ^InputStream, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
skip_finish_func_ptr_anon_91 :: #type proc "c" (stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
close_async_func_ptr_anon_92 :: #type proc "c" (stream: ^InputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
close_finish_func_ptr_anon_93 :: #type proc "c" (stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
_g_reserved1_func_ptr_anon_94 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_95 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_96 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_97 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_98 :: #type proc "c" ()
_GInputStreamClass :: struct {
    parent_class: gobj.ObjectClass,
    read_fn: read_fn_func_ptr_anon_85,
    skip: skip_func_ptr_anon_86,
    close_fn: close_fn_func_ptr_anon_87,
    read_async: read_async_func_ptr_anon_88,
    read_finish: read_finish_func_ptr_anon_89,
    skip_async: skip_async_func_ptr_anon_90,
    skip_finish: skip_finish_func_ptr_anon_91,
    close_async: close_async_func_ptr_anon_92,
    close_finish: close_finish_func_ptr_anon_93,
    _g_reserved1: _g_reserved1_func_ptr_anon_94,
    _g_reserved2: _g_reserved2_func_ptr_anon_95,
    _g_reserved3: _g_reserved3_func_ptr_anon_96,
    _g_reserved4: _g_reserved4_func_ptr_anon_97,
    _g_reserved5: _g_reserved5_func_ptr_anon_98,
}
InputStreamClass :: _GInputStreamClass
_g_reserved1_func_ptr_anon_99 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_100 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_101 :: #type proc "c" ()
_GFilterInputStreamClass :: struct {
    parent_class: InputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_99,
    _g_reserved2: _g_reserved2_func_ptr_anon_100,
    _g_reserved3: _g_reserved3_func_ptr_anon_101,
}
FilterInputStreamClass :: _GFilterInputStreamClass
fill_func_ptr_anon_102 :: #type proc "c" (stream: ^BufferedInputStream, count: glib.ssize, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
fill_async_func_ptr_anon_103 :: #type proc "c" (stream: ^BufferedInputStream, count: glib.ssize, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
fill_finish_func_ptr_anon_104 :: #type proc "c" (stream: ^BufferedInputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
_g_reserved1_func_ptr_anon_105 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_106 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_107 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_108 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_109 :: #type proc "c" ()
_GBufferedInputStreamClass :: struct {
    parent_class: FilterInputStreamClass,
    fill: fill_func_ptr_anon_102,
    fill_async: fill_async_func_ptr_anon_103,
    fill_finish: fill_finish_func_ptr_anon_104,
    _g_reserved1: _g_reserved1_func_ptr_anon_105,
    _g_reserved2: _g_reserved2_func_ptr_anon_106,
    _g_reserved3: _g_reserved3_func_ptr_anon_107,
    _g_reserved4: _g_reserved4_func_ptr_anon_108,
    _g_reserved5: _g_reserved5_func_ptr_anon_109,
}
BufferedInputStreamClass :: _GBufferedInputStreamClass
write_fn_func_ptr_anon_110 :: #type proc "c" (stream: ^OutputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
splice_func_ptr_anon_111 :: #type proc "c" (stream: ^OutputStream, source: ^InputStream, flags: OutputStreamSpliceFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
flush_func_ptr_anon_112 :: #type proc "c" (stream: ^OutputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
close_fn_func_ptr_anon_113 :: #type proc "c" (stream: ^OutputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
write_async_func_ptr_anon_114 :: #type proc "c" (stream: ^OutputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
write_finish_func_ptr_anon_115 :: #type proc "c" (stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
splice_async_func_ptr_anon_116 :: #type proc "c" (stream: ^OutputStream, source: ^InputStream, flags: OutputStreamSpliceFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
splice_finish_func_ptr_anon_117 :: #type proc "c" (stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
flush_async_func_ptr_anon_118 :: #type proc "c" (stream: ^OutputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
flush_finish_func_ptr_anon_119 :: #type proc "c" (stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
close_async_func_ptr_anon_120 :: #type proc "c" (stream: ^OutputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
close_finish_func_ptr_anon_121 :: #type proc "c" (stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
writev_fn_func_ptr_anon_122 :: #type proc "c" (stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
writev_async_func_ptr_anon_123 :: #type proc "c" (stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
writev_finish_func_ptr_anon_124 :: #type proc "c" (stream: ^OutputStream, result: ^AsyncResult, bytes_written: ^glib.size, error: ^^glib.Error) -> glib.boolean
_g_reserved4_func_ptr_anon_125 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_126 :: #type proc "c" ()
_g_reserved6_func_ptr_anon_127 :: #type proc "c" ()
_g_reserved7_func_ptr_anon_128 :: #type proc "c" ()
_g_reserved8_func_ptr_anon_129 :: #type proc "c" ()
_GOutputStreamClass :: struct {
    parent_class: gobj.ObjectClass,
    write_fn: write_fn_func_ptr_anon_110,
    splice: splice_func_ptr_anon_111,
    flush: flush_func_ptr_anon_112,
    close_fn: close_fn_func_ptr_anon_113,
    write_async: write_async_func_ptr_anon_114,
    write_finish: write_finish_func_ptr_anon_115,
    splice_async: splice_async_func_ptr_anon_116,
    splice_finish: splice_finish_func_ptr_anon_117,
    flush_async: flush_async_func_ptr_anon_118,
    flush_finish: flush_finish_func_ptr_anon_119,
    close_async: close_async_func_ptr_anon_120,
    close_finish: close_finish_func_ptr_anon_121,
    writev_fn: writev_fn_func_ptr_anon_122,
    writev_async: writev_async_func_ptr_anon_123,
    writev_finish: writev_finish_func_ptr_anon_124,
    _g_reserved4: _g_reserved4_func_ptr_anon_125,
    _g_reserved5: _g_reserved5_func_ptr_anon_126,
    _g_reserved6: _g_reserved6_func_ptr_anon_127,
    _g_reserved7: _g_reserved7_func_ptr_anon_128,
    _g_reserved8: _g_reserved8_func_ptr_anon_129,
}
OutputStreamClass :: _GOutputStreamClass
_g_reserved1_func_ptr_anon_130 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_131 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_132 :: #type proc "c" ()
_GFilterOutputStreamClass :: struct {
    parent_class: OutputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_130,
    _g_reserved2: _g_reserved2_func_ptr_anon_131,
    _g_reserved3: _g_reserved3_func_ptr_anon_132,
}
FilterOutputStreamClass :: _GFilterOutputStreamClass
_g_reserved1_func_ptr_anon_133 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_134 :: #type proc "c" ()
_GBufferedOutputStreamClass :: struct {
    parent_class: FilterOutputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_133,
    _g_reserved2: _g_reserved2_func_ptr_anon_134,
}
BufferedOutputStreamClass :: _GBufferedOutputStreamClass
cancelled_func_ptr_anon_135 :: #type proc "c" (cancellable: ^Cancellable)
_g_reserved1_func_ptr_anon_136 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_137 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_138 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_139 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_140 :: #type proc "c" ()
_GCancellableClass :: struct {
    parent_class: gobj.ObjectClass,
    cancelled: cancelled_func_ptr_anon_135,
    _g_reserved1: _g_reserved1_func_ptr_anon_136,
    _g_reserved2: _g_reserved2_func_ptr_anon_137,
    _g_reserved3: _g_reserved3_func_ptr_anon_138,
    _g_reserved4: _g_reserved4_func_ptr_anon_139,
    _g_reserved5: _g_reserved5_func_ptr_anon_140,
}
CancellableClass :: _GCancellableClass
convert_func_ptr_anon_141 :: #type proc "c" (converter: ^Converter, inbuf: rawptr, inbuf_size: glib.size, outbuf: rawptr, outbuf_size: glib.size, flags: ConverterFlags, bytes_read: ^glib.size, bytes_written: ^glib.size, error: ^^glib.Error) -> ConverterResult
reset_func_ptr_anon_142 :: #type proc "c" (converter: ^Converter)
_GConverterIface :: struct {
    g_iface: gobj.TypeInterface,
    convert: convert_func_ptr_anon_141,
    reset: reset_func_ptr_anon_142,
}
ConverterIface :: _GConverterIface
_GCharsetConverterClass :: struct {
    parent_class: gobj.ObjectClass,
}
CharsetConverterClass :: _GCharsetConverterClass
_g_reserved1_func_ptr_anon_143 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_144 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_145 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_146 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_147 :: #type proc "c" ()
_GConverterInputStreamClass :: struct {
    parent_class: FilterInputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_143,
    _g_reserved2: _g_reserved2_func_ptr_anon_144,
    _g_reserved3: _g_reserved3_func_ptr_anon_145,
    _g_reserved4: _g_reserved4_func_ptr_anon_146,
    _g_reserved5: _g_reserved5_func_ptr_anon_147,
}
ConverterInputStreamClass :: _GConverterInputStreamClass
_g_reserved1_func_ptr_anon_148 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_149 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_150 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_151 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_152 :: #type proc "c" ()
_GConverterOutputStreamClass :: struct {
    parent_class: FilterOutputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_148,
    _g_reserved2: _g_reserved2_func_ptr_anon_149,
    _g_reserved3: _g_reserved3_func_ptr_anon_150,
    _g_reserved4: _g_reserved4_func_ptr_anon_151,
    _g_reserved5: _g_reserved5_func_ptr_anon_152,
}
ConverterOutputStreamClass :: _GConverterOutputStreamClass
_GCredentialsClass :: struct #packed {}
CredentialsClass :: _GCredentialsClass
receive_messages_func_ptr_anon_153 :: #type proc "c" (datagram_based: ^DatagramBased, messages: [^]InputMessage, num_messages: glib.uint_, flags: glib.int_, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_
send_messages_func_ptr_anon_154 :: #type proc "c" (datagram_based: ^DatagramBased, messages: [^]OutputMessage, num_messages: glib.uint_, flags: glib.int_, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_
create_source_func_ptr_anon_155 :: #type proc "c" (datagram_based: ^DatagramBased, condition: glib.IOCondition, cancellable: ^Cancellable) -> ^glib.Source
condition_check_func_ptr_anon_156 :: #type proc "c" (datagram_based: ^DatagramBased, condition: glib.IOCondition) -> glib.IOCondition
condition_wait_func_ptr_anon_157 :: #type proc "c" (datagram_based: ^DatagramBased, condition: glib.IOCondition, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
_GDatagramBasedInterface :: struct {
    g_iface: gobj.TypeInterface,
    receive_messages: receive_messages_func_ptr_anon_153,
    send_messages: send_messages_func_ptr_anon_154,
    create_source: create_source_func_ptr_anon_155,
    condition_check: condition_check_func_ptr_anon_156,
    condition_wait: condition_wait_func_ptr_anon_157,
}
DatagramBasedInterface :: _GDatagramBasedInterface
_g_reserved1_func_ptr_anon_158 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_159 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_160 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_161 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_162 :: #type proc "c" ()
_GDataInputStreamClass :: struct {
    parent_class: BufferedInputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_158,
    _g_reserved2: _g_reserved2_func_ptr_anon_159,
    _g_reserved3: _g_reserved3_func_ptr_anon_160,
    _g_reserved4: _g_reserved4_func_ptr_anon_161,
    _g_reserved5: _g_reserved5_func_ptr_anon_162,
}
DataInputStreamClass :: _GDataInputStreamClass
_GDataOutputStreamPrivate :: struct #packed {}
DataOutputStreamPrivate :: _GDataOutputStreamPrivate
_GDataOutputStream :: struct {
    parent_instance: FilterOutputStream,
    priv: ^DataOutputStreamPrivate,
}
DataOutputStream :: _GDataOutputStream
_g_reserved1_func_ptr_anon_163 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_164 :: #type proc "c" ()
_g_reserved3_func_ptr_anon_165 :: #type proc "c" ()
_g_reserved4_func_ptr_anon_166 :: #type proc "c" ()
_g_reserved5_func_ptr_anon_167 :: #type proc "c" ()
_GDataOutputStreamClass :: struct {
    parent_class: FilterOutputStreamClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_163,
    _g_reserved2: _g_reserved2_func_ptr_anon_164,
    _g_reserved3: _g_reserved3_func_ptr_anon_165,
    _g_reserved4: _g_reserved4_func_ptr_anon_166,
    _g_reserved5: _g_reserved5_func_ptr_anon_167,
}
DataOutputStreamClass :: _GDataOutputStreamClass
DBusSignalCallback :: #type proc "c" (connection: ^DBusConnection, sender_name: cstring, object_path: cstring, interface_name: cstring, signal_name: cstring, parameters: [^]glib.Variant, user_data: glib.pointer)
DBusMessageFilterFunction :: #type proc "c" (connection: ^DBusConnection, message: ^DBusMessage, incoming: glib.boolean, user_data: glib.pointer) -> ^DBusMessage
et_info_func_ptr_anon_168 :: #type proc "c" (interface_: ^DBusInterface) -> ^DBusInterfaceInfo
et_object_func_ptr_anon_169 :: #type proc "c" (interface_: ^DBusInterface) -> ^DBusObject
set_object_func_ptr_anon_170 :: #type proc "c" (interface_: ^DBusInterface, object: ^DBusObject)
dup_object_func_ptr_anon_171 :: #type proc "c" (interface_: ^DBusInterface) -> ^DBusObject
_GDBusInterfaceIface :: struct {
    parent_iface: gobj.TypeInterface,
    get_info: et_info_func_ptr_anon_168,
    get_object: et_object_func_ptr_anon_169,
    set_object: set_object_func_ptr_anon_170,
    dup_object: dup_object_func_ptr_anon_171,
}
DBusInterfaceIface :: _GDBusInterfaceIface
et_info_func_ptr_anon_172 :: #type proc "c" (interface_: ^DBusInterfaceSkeleton) -> ^DBusInterfaceInfo
et_vtable_func_ptr_anon_173 :: #type proc "c" (interface_: ^DBusInterfaceSkeleton) -> ^DBusInterfaceVTable
et_properties_func_ptr_anon_174 :: #type proc "c" (interface_: ^DBusInterfaceSkeleton) -> ^glib.Variant
flush_func_ptr_anon_175 :: #type proc "c" (interface_: ^DBusInterfaceSkeleton)
g_authorize_method_func_ptr_anon_176 :: #type proc "c" (interface_: ^DBusInterfaceSkeleton, invocation: ^DBusMethodInvocation) -> glib.boolean
_GDBusInterfaceSkeletonClass :: struct {
    parent_class: gobj.ObjectClass,
    get_info: et_info_func_ptr_anon_172,
    get_vtable: et_vtable_func_ptr_anon_173,
    get_properties: et_properties_func_ptr_anon_174,
    flush: flush_func_ptr_anon_175,
    vfunc_padding: [8]glib.pointer,
    g_authorize_method: g_authorize_method_func_ptr_anon_176,
    signal_padding: [8]glib.pointer,
}
DBusInterfaceSkeletonClass :: _GDBusInterfaceSkeletonClass
_GDBusAnnotationInfo :: struct {
    ref_count: glib.int_,
    key: cstring,
    value: cstring,
    annotations: [^]^DBusAnnotationInfo,
}
_GDBusNodeInfo :: struct {
    ref_count: glib.int_,
    path: cstring,
    interfaces: [^]^DBusInterfaceInfo,
    nodes: [^]^DBusNodeInfo,
    annotations: [^]^DBusAnnotationInfo,
}
_GDBusMenuModel :: struct #packed {}
DBusMenuModel :: _GDBusMenuModel
BusAcquiredCallback :: #type proc "c" (connection: ^DBusConnection, name: cstring, user_data: glib.pointer)
BusNameAcquiredCallback :: #type proc "c" (connection: ^DBusConnection, name: cstring, user_data: glib.pointer)
BusNameLostCallback :: #type proc "c" (connection: ^DBusConnection, name: cstring, user_data: glib.pointer)
BusNameAppearedCallback :: #type proc "c" (connection: ^DBusConnection, name: cstring, name_owner: cstring, user_data: glib.pointer)
BusNameVanishedCallback :: #type proc "c" (connection: ^DBusConnection, name: cstring, user_data: glib.pointer)
et_object_path_func_ptr_anon_177 :: #type proc "c" (object: ^DBusObject) -> cstring
et_interfaces_func_ptr_anon_178 :: #type proc "c" (object: ^DBusObject) -> ^glib.List
et_interface_func_ptr_anon_179 :: #type proc "c" (object: ^DBusObject, interface_name: cstring) -> ^DBusInterface
interface_added_func_ptr_anon_180 :: #type proc "c" (object: ^DBusObject, interface_: ^DBusInterface)
interface_removed_func_ptr_anon_181 :: #type proc "c" (object: ^DBusObject, interface_: ^DBusInterface)
_GDBusObjectIface :: struct {
    parent_iface: gobj.TypeInterface,
    get_object_path: et_object_path_func_ptr_anon_177,
    get_interfaces: et_interfaces_func_ptr_anon_178,
    get_interface: et_interface_func_ptr_anon_179,
    interface_added: interface_added_func_ptr_anon_180,
    interface_removed: interface_removed_func_ptr_anon_181,
}
DBusObjectIface :: _GDBusObjectIface
et_object_path_func_ptr_anon_182 :: #type proc "c" (manager: ^DBusObjectManager) -> cstring
et_objects_func_ptr_anon_183 :: #type proc "c" (manager: ^DBusObjectManager) -> ^glib.List
et_object_func_ptr_anon_184 :: #type proc "c" (manager: ^DBusObjectManager, object_path: cstring) -> ^DBusObject
et_interface_func_ptr_anon_185 :: #type proc "c" (manager: ^DBusObjectManager, object_path: cstring, interface_name: cstring) -> ^DBusInterface
object_added_func_ptr_anon_186 :: #type proc "c" (manager: ^DBusObjectManager, object: ^DBusObject)
object_removed_func_ptr_anon_187 :: #type proc "c" (manager: ^DBusObjectManager, object: ^DBusObject)
interface_added_func_ptr_anon_188 :: #type proc "c" (manager: ^DBusObjectManager, object: ^DBusObject, interface_: ^DBusInterface)
interface_removed_func_ptr_anon_189 :: #type proc "c" (manager: ^DBusObjectManager, object: ^DBusObject, interface_: ^DBusInterface)
_GDBusObjectManagerIface :: struct {
    parent_iface: gobj.TypeInterface,
    get_object_path: et_object_path_func_ptr_anon_182,
    get_objects: et_objects_func_ptr_anon_183,
    get_object: et_object_func_ptr_anon_184,
    get_interface: et_interface_func_ptr_anon_185,
    object_added: object_added_func_ptr_anon_186,
    object_removed: object_removed_func_ptr_anon_187,
    interface_added: interface_added_func_ptr_anon_188,
    interface_removed: interface_removed_func_ptr_anon_189,
}
DBusObjectManagerIface :: _GDBusObjectManagerIface
interface_proxy_signal_func_ptr_anon_190 :: #type proc "c" (manager: ^DBusObjectManagerClient, object_proxy: ^DBusObjectProxy, interface_proxy: ^DBusProxy, sender_name: cstring, signal_name: cstring, parameters: [^]glib.Variant)
interface_proxy_properties_changed_func_ptr_anon_191 :: #type proc "c" (manager: ^DBusObjectManagerClient, object_proxy: ^DBusObjectProxy, interface_proxy: ^DBusProxy, changed_properties: [^]glib.Variant, invalidated_properties: [^]cstring)
_GDBusObjectManagerClientClass :: struct {
    parent_class: gobj.ObjectClass,
    interface_proxy_signal: interface_proxy_signal_func_ptr_anon_190,
    interface_proxy_properties_changed: interface_proxy_properties_changed_func_ptr_anon_191,
    padding: [8]glib.pointer,
}
DBusObjectManagerClientClass :: _GDBusObjectManagerClientClass
_GDBusObjectManagerServerClass :: struct {
    parent_class: gobj.ObjectClass,
    padding: [8]glib.pointer,
}
DBusObjectManagerServerClass :: _GDBusObjectManagerServerClass
_GDBusObjectProxyClass :: struct {
    parent_class: gobj.ObjectClass,
    padding: [8]glib.pointer,
}
DBusObjectProxyClass :: _GDBusObjectProxyClass
authorize_method_func_ptr_anon_192 :: #type proc "c" (object: ^DBusObjectSkeleton, interface_: ^DBusInterfaceSkeleton, invocation: ^DBusMethodInvocation) -> glib.boolean
_GDBusObjectSkeletonClass :: struct {
    parent_class: gobj.ObjectClass,
    authorize_method: authorize_method_func_ptr_anon_192,
    padding: [8]glib.pointer,
}
DBusObjectSkeletonClass :: _GDBusObjectSkeletonClass
g_properties_changed_func_ptr_anon_193 :: #type proc "c" (proxy: ^DBusProxy, changed_properties: [^]glib.Variant, invalidated_properties: [^]cstring)
g_signal_func_ptr_anon_194 :: #type proc "c" (proxy: ^DBusProxy, sender_name: cstring, signal_name: cstring, parameters: [^]glib.Variant)
_GDBusProxyClass :: struct {
    parent_class: gobj.ObjectClass,
    g_properties_changed: g_properties_changed_func_ptr_anon_193,
    g_signal: g_signal_func_ptr_anon_194,
    padding: [32]glib.pointer,
}
DBusProxyClass :: _GDBusProxyClass
_GDebugController :: struct #packed {}
DebugController :: _GDebugController
_GDebugControllerInterface :: struct {
    g_iface: gobj.TypeInterface,
}
DebugControllerInterface :: _GDebugControllerInterface
DebugController_autoptr :: ^DebugController
DebugController_listautoptr :: ^glib.List
DebugController_slistautoptr :: ^glib.SList
DebugController_queueautoptr :: ^glib.Queue
_GDebugControllerDBus :: struct {
    parent_instance: gobj.Object,
}
DebugControllerDBus :: _GDebugControllerDBus
authorize_func_ptr_anon_195 :: #type proc "c" (controller: ^DebugControllerDBus, invocation: ^DBusMethodInvocation) -> glib.boolean
_GDebugControllerDBusClass :: struct {
    parent_class: gobj.ObjectClass,
    authorize: authorize_func_ptr_anon_195,
    padding: [12]glib.pointer,
}
DebugControllerDBusClass :: _GDebugControllerDBusClass
DebugControllerDBus_autoptr :: ^DebugControllerDBus
DebugControllerDBus_listautoptr :: ^glib.List
DebugControllerDBus_slistautoptr :: ^glib.SList
DebugControllerDBus_queueautoptr :: ^glib.Queue
DebugControllerDBusClass_autoptr :: ^DebugControllerDBusClass
DebugControllerDBusClass_listautoptr :: ^glib.List
DebugControllerDBusClass_slistautoptr :: ^glib.SList
DebugControllerDBusClass_queueautoptr :: ^glib.Queue
changed_func_ptr_anon_196 :: #type proc "c" (drive: ^Drive)
disconnected_func_ptr_anon_197 :: #type proc "c" (drive: ^Drive)
eject_button_func_ptr_anon_198 :: #type proc "c" (drive: ^Drive)
et_name_func_ptr_anon_199 :: #type proc "c" (drive: ^Drive) -> cstring
et_icon_func_ptr_anon_200 :: #type proc "c" (drive: ^Drive) -> ^Icon
has_volumes_func_ptr_anon_201 :: #type proc "c" (drive: ^Drive) -> glib.boolean
et_volumes_func_ptr_anon_202 :: #type proc "c" (drive: ^Drive) -> ^glib.List
is_media_removable_func_ptr_anon_203 :: #type proc "c" (drive: ^Drive) -> glib.boolean
has_media_func_ptr_anon_204 :: #type proc "c" (drive: ^Drive) -> glib.boolean
is_media_check_automatic_func_ptr_anon_205 :: #type proc "c" (drive: ^Drive) -> glib.boolean
can_eject_func_ptr_anon_206 :: #type proc "c" (drive: ^Drive) -> glib.boolean
can_poll_for_media_func_ptr_anon_207 :: #type proc "c" (drive: ^Drive) -> glib.boolean
eject_func_ptr_anon_208 :: #type proc "c" (drive: ^Drive, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_finish_func_ptr_anon_209 :: #type proc "c" (drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
poll_for_media_func_ptr_anon_210 :: #type proc "c" (drive: ^Drive, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
poll_for_media_finish_func_ptr_anon_211 :: #type proc "c" (drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_identifier_func_ptr_anon_212 :: #type proc "c" (drive: ^Drive, kind: cstring) -> cstring
enumerate_identifiers_func_ptr_anon_213 :: #type proc "c" (drive: ^Drive) -> ^cstring
et_start_stop_type_func_ptr_anon_214 :: #type proc "c" (drive: ^Drive) -> DriveStartStopType
can_start_func_ptr_anon_215 :: #type proc "c" (drive: ^Drive) -> glib.boolean
can_start_degraded_func_ptr_anon_216 :: #type proc "c" (drive: ^Drive) -> glib.boolean
start_func_ptr_anon_217 :: #type proc "c" (drive: ^Drive, flags: DriveStartFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
start_finish_func_ptr_anon_218 :: #type proc "c" (drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
can_stop_func_ptr_anon_219 :: #type proc "c" (drive: ^Drive) -> glib.boolean
stop_func_ptr_anon_220 :: #type proc "c" (drive: ^Drive, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
stop_finish_func_ptr_anon_221 :: #type proc "c" (drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
stop_button_func_ptr_anon_222 :: #type proc "c" (drive: ^Drive)
eject_with_operation_func_ptr_anon_223 :: #type proc "c" (drive: ^Drive, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_with_operation_finish_func_ptr_anon_224 :: #type proc "c" (drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
et_sort_key_func_ptr_anon_225 :: #type proc "c" (drive: ^Drive) -> cstring
et_symbolic_icon_func_ptr_anon_226 :: #type proc "c" (drive: ^Drive) -> ^Icon
is_removable_func_ptr_anon_227 :: #type proc "c" (drive: ^Drive) -> glib.boolean
_GDriveIface :: struct {
    g_iface: gobj.TypeInterface,
    changed: changed_func_ptr_anon_196,
    disconnected: disconnected_func_ptr_anon_197,
    eject_button: eject_button_func_ptr_anon_198,
    get_name: et_name_func_ptr_anon_199,
    get_icon: et_icon_func_ptr_anon_200,
    has_volumes: has_volumes_func_ptr_anon_201,
    get_volumes: et_volumes_func_ptr_anon_202,
    is_media_removable: is_media_removable_func_ptr_anon_203,
    has_media: has_media_func_ptr_anon_204,
    is_media_check_automatic: is_media_check_automatic_func_ptr_anon_205,
    can_eject: can_eject_func_ptr_anon_206,
    can_poll_for_media: can_poll_for_media_func_ptr_anon_207,
    eject: eject_func_ptr_anon_208,
    eject_finish: eject_finish_func_ptr_anon_209,
    poll_for_media: poll_for_media_func_ptr_anon_210,
    poll_for_media_finish: poll_for_media_finish_func_ptr_anon_211,
    get_identifier: et_identifier_func_ptr_anon_212,
    enumerate_identifiers: enumerate_identifiers_func_ptr_anon_213,
    get_start_stop_type: et_start_stop_type_func_ptr_anon_214,
    can_start: can_start_func_ptr_anon_215,
    can_start_degraded: can_start_degraded_func_ptr_anon_216,
    start: start_func_ptr_anon_217,
    start_finish: start_finish_func_ptr_anon_218,
    can_stop: can_stop_func_ptr_anon_219,
    stop: stop_func_ptr_anon_220,
    stop_finish: stop_finish_func_ptr_anon_221,
    stop_button: stop_button_func_ptr_anon_222,
    eject_with_operation: eject_with_operation_func_ptr_anon_223,
    eject_with_operation_finish: eject_with_operation_finish_func_ptr_anon_224,
    get_sort_key: et_sort_key_func_ptr_anon_225,
    get_symbolic_icon: et_symbolic_icon_func_ptr_anon_226,
    is_removable: is_removable_func_ptr_anon_227,
}
DriveIface :: _GDriveIface
accept_certificate_func_ptr_anon_228 :: #type proc "c" (connection: ^DtlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean
handshake_func_ptr_anon_229 :: #type proc "c" (conn: ^DtlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
handshake_async_func_ptr_anon_230 :: #type proc "c" (conn: ^DtlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
handshake_finish_func_ptr_anon_231 :: #type proc "c" (conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
shutdown_func_ptr_anon_232 :: #type proc "c" (conn: ^DtlsConnection, shutdown_read: glib.boolean, shutdown_write: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
shutdown_async_func_ptr_anon_233 :: #type proc "c" (conn: ^DtlsConnection, shutdown_read: glib.boolean, shutdown_write: glib.boolean, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
shutdown_finish_func_ptr_anon_234 :: #type proc "c" (conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
set_advertised_protocols_func_ptr_anon_235 :: #type proc "c" (conn: ^DtlsConnection, protocols: [^]cstring)
et_negotiated_protocol_func_ptr_anon_236 :: #type proc "c" (conn: ^DtlsConnection) -> cstring
et_binding_data_func_ptr_anon_237 :: #type proc "c" (conn: ^DtlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean
_GDtlsConnectionInterface :: struct {
    g_iface: gobj.TypeInterface,
    accept_certificate: accept_certificate_func_ptr_anon_228,
    handshake: handshake_func_ptr_anon_229,
    handshake_async: handshake_async_func_ptr_anon_230,
    handshake_finish: handshake_finish_func_ptr_anon_231,
    shutdown: shutdown_func_ptr_anon_232,
    shutdown_async: shutdown_async_func_ptr_anon_233,
    shutdown_finish: shutdown_finish_func_ptr_anon_234,
    set_advertised_protocols: set_advertised_protocols_func_ptr_anon_235,
    get_negotiated_protocol: et_negotiated_protocol_func_ptr_anon_236,
    get_binding_data: et_binding_data_func_ptr_anon_237,
}
DtlsConnectionInterface :: _GDtlsConnectionInterface
_GDtlsClientConnectionInterface :: struct {
    g_iface: gobj.TypeInterface,
}
DtlsClientConnectionInterface :: _GDtlsClientConnectionInterface
_GDtlsServerConnectionInterface :: struct {
    g_iface: gobj.TypeInterface,
}
DtlsServerConnectionInterface :: _GDtlsServerConnectionInterface
hash_func_ptr_anon_238 :: #type proc "c" (icon: ^Icon) -> glib.uint_
equal_func_ptr_anon_239 :: #type proc "c" (icon1: ^Icon, icon2: ^Icon) -> glib.boolean
to_tokens_func_ptr_anon_240 :: #type proc "c" (icon: ^Icon, tokens: [^]glib.PtrArray, out_version: ^glib.int_) -> glib.boolean
from_tokens_func_ptr_anon_241 :: #type proc "c" (tokens: [^]cstring, num_tokens: glib.int_, version: glib.int_, error: ^^glib.Error) -> ^Icon
serialize_func_ptr_anon_242 :: #type proc "c" (icon: ^Icon) -> ^glib.Variant
_GIconIface :: struct {
    g_iface: gobj.TypeInterface,
    hash: hash_func_ptr_anon_238,
    equal: equal_func_ptr_anon_239,
    to_tokens: to_tokens_func_ptr_anon_240,
    from_tokens: from_tokens_func_ptr_anon_241,
    serialize: serialize_func_ptr_anon_242,
}
IconIface :: _GIconIface
_GEmblem :: struct #packed {}
Emblem :: _GEmblem
_GEmblemClass :: struct #packed {}
EmblemClass :: _GEmblemClass
_GEmblemedIconPrivate :: struct #packed {}
EmblemedIconPrivate :: _GEmblemedIconPrivate
_GEmblemedIcon :: struct {
    parent_instance: gobj.Object,
    priv: ^EmblemedIconPrivate,
}
EmblemedIcon :: _GEmblemedIcon
_GEmblemedIconClass :: struct {
    parent_class: gobj.ObjectClass,
}
EmblemedIconClass :: _GEmblemedIconClass
dup_func_ptr_anon_243 :: #type proc "c" (file: ^File) -> ^File
hash_func_ptr_anon_244 :: #type proc "c" (file: ^File) -> glib.uint_
equal_func_ptr_anon_245 :: #type proc "c" (file1: ^File, file2: ^File) -> glib.boolean
is_native_func_ptr_anon_246 :: #type proc "c" (file: ^File) -> glib.boolean
has_uri_scheme_func_ptr_anon_247 :: #type proc "c" (file: ^File, uri_scheme: cstring) -> glib.boolean
et_uri_scheme_func_ptr_anon_248 :: #type proc "c" (file: ^File) -> cstring
et_basename_func_ptr_anon_249 :: #type proc "c" (file: ^File) -> cstring
et_path_func_ptr_anon_250 :: #type proc "c" (file: ^File) -> cstring
et_uri_func_ptr_anon_251 :: #type proc "c" (file: ^File) -> cstring
et_parse_name_func_ptr_anon_252 :: #type proc "c" (file: ^File) -> cstring
et_parent_func_ptr_anon_253 :: #type proc "c" (file: ^File) -> ^File
prefix_matches_func_ptr_anon_254 :: #type proc "c" (prefix: ^File, file: ^File) -> glib.boolean
et_relative_path_func_ptr_anon_255 :: #type proc "c" (parent: ^File, descendant: ^File) -> cstring
resolve_relative_path_func_ptr_anon_256 :: #type proc "c" (file: ^File, relative_path: cstring) -> ^File
et_child_for_display_name_func_ptr_anon_257 :: #type proc "c" (file: ^File, display_name: cstring, error: ^^glib.Error) -> ^File
enumerate_children_func_ptr_anon_258 :: #type proc "c" (file: ^File, attributes: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileEnumerator
enumerate_children_async_func_ptr_anon_259 :: #type proc "c" (file: ^File, attributes: cstring, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
enumerate_children_finish_func_ptr_anon_260 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileEnumerator
query_info_func_ptr_anon_261 :: #type proc "c" (file: ^File, attributes: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
query_info_async_func_ptr_anon_262 :: #type proc "c" (file: ^File, attributes: cstring, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
query_info_finish_func_ptr_anon_263 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileInfo
query_filesystem_info_func_ptr_anon_264 :: #type proc "c" (file: ^File, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
query_filesystem_info_async_func_ptr_anon_265 :: #type proc "c" (file: ^File, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
query_filesystem_info_finish_func_ptr_anon_266 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileInfo
find_enclosing_mount_func_ptr_anon_267 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Mount
find_enclosing_mount_async_func_ptr_anon_268 :: #type proc "c" (file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
find_enclosing_mount_finish_func_ptr_anon_269 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^Mount
set_display_name_func_ptr_anon_270 :: #type proc "c" (file: ^File, display_name: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^File
set_display_name_async_func_ptr_anon_271 :: #type proc "c" (file: ^File, display_name: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
set_display_name_finish_func_ptr_anon_272 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^File
query_settable_attributes_func_ptr_anon_273 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileAttributeInfoList
_query_settable_attributes_async_func_ptr_anon_274 :: #type proc "c" ()
_query_settable_attributes_finish_func_ptr_anon_275 :: #type proc "c" ()
query_writable_namespaces_func_ptr_anon_276 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileAttributeInfoList
_query_writable_namespaces_async_func_ptr_anon_277 :: #type proc "c" ()
_query_writable_namespaces_finish_func_ptr_anon_278 :: #type proc "c" ()
set_attribute_func_ptr_anon_279 :: #type proc "c" (file: ^File, attribute: cstring, type: FileAttributeType, value_p: glib.pointer, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
set_attributes_from_info_func_ptr_anon_280 :: #type proc "c" (file: ^File, info: ^FileInfo, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
set_attributes_async_func_ptr_anon_281 :: #type proc "c" (file: ^File, info: ^FileInfo, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
set_attributes_finish_func_ptr_anon_282 :: #type proc "c" (file: ^File, result: ^AsyncResult, info: ^^FileInfo, error: ^^glib.Error) -> glib.boolean
read_fn_func_ptr_anon_283 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInputStream
read_async_func_ptr_anon_284 :: #type proc "c" (file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
read_finish_func_ptr_anon_285 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileInputStream
append_to_func_ptr_anon_286 :: #type proc "c" (file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream
append_to_async_func_ptr_anon_287 :: #type proc "c" (file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
append_to_finish_func_ptr_anon_288 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileOutputStream
create_func_ptr_anon_289 :: #type proc "c" (file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream
create_async_func_ptr_anon_290 :: #type proc "c" (file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
create_finish_func_ptr_anon_291 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileOutputStream
replace_func_ptr_anon_292 :: #type proc "c" (file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream
replace_async_func_ptr_anon_293 :: #type proc "c" (file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
replace_finish_func_ptr_anon_294 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileOutputStream
delete_file_func_ptr_anon_295 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
delete_file_async_func_ptr_anon_296 :: #type proc "c" (file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
delete_file_finish_func_ptr_anon_297 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
trash_func_ptr_anon_298 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
trash_async_func_ptr_anon_299 :: #type proc "c" (file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
trash_finish_func_ptr_anon_300 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
make_directory_func_ptr_anon_301 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
make_directory_async_func_ptr_anon_302 :: #type proc "c" (file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
make_directory_finish_func_ptr_anon_303 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
make_symbolic_link_func_ptr_anon_304 :: #type proc "c" (file: ^File, symlink_value: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
make_symbolic_link_async_func_ptr_anon_305 :: #type proc "c" (file: ^File, symlink_value: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
make_symbolic_link_finish_func_ptr_anon_306 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
copy_func_ptr_anon_307 :: #type proc "c" (source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, error: ^^glib.Error) -> glib.boolean
copy_async_func_ptr_anon_308 :: #type proc "c" (source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer)
copy_finish_func_ptr_anon_309 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> glib.boolean
move_func_ptr_anon_310 :: #type proc "c" (source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, error: ^^glib.Error) -> glib.boolean
move_async_func_ptr_anon_311 :: #type proc "c" (source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer)
move_finish_func_ptr_anon_312 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
mount_mountable_func_ptr_anon_313 :: #type proc "c" (file: ^File, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
mount_mountable_finish_func_ptr_anon_314 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> ^File
unmount_mountable_func_ptr_anon_315 :: #type proc "c" (file: ^File, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
unmount_mountable_finish_func_ptr_anon_316 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
eject_mountable_func_ptr_anon_317 :: #type proc "c" (file: ^File, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_mountable_finish_func_ptr_anon_318 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
mount_enclosing_volume_func_ptr_anon_319 :: #type proc "c" (location: ^File, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
mount_enclosing_volume_finish_func_ptr_anon_320 :: #type proc "c" (location: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
monitor_dir_func_ptr_anon_321 :: #type proc "c" (file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor
monitor_file_func_ptr_anon_322 :: #type proc "c" (file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor
open_readwrite_func_ptr_anon_323 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream
open_readwrite_async_func_ptr_anon_324 :: #type proc "c" (file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
open_readwrite_finish_func_ptr_anon_325 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileIOStream
create_readwrite_func_ptr_anon_326 :: #type proc "c" (file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream
create_readwrite_async_func_ptr_anon_327 :: #type proc "c" (file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
create_readwrite_finish_func_ptr_anon_328 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileIOStream
replace_readwrite_func_ptr_anon_329 :: #type proc "c" (file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream
replace_readwrite_async_func_ptr_anon_330 :: #type proc "c" (file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
replace_readwrite_finish_func_ptr_anon_331 :: #type proc "c" (file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileIOStream
start_mountable_func_ptr_anon_332 :: #type proc "c" (file: ^File, flags: DriveStartFlags, start_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
start_mountable_finish_func_ptr_anon_333 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
stop_mountable_func_ptr_anon_334 :: #type proc "c" (file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
stop_mountable_finish_func_ptr_anon_335 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
unmount_mountable_with_operation_func_ptr_anon_336 :: #type proc "c" (file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
unmount_mountable_with_operation_finish_func_ptr_anon_337 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
eject_mountable_with_operation_func_ptr_anon_338 :: #type proc "c" (file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
eject_mountable_with_operation_finish_func_ptr_anon_339 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
poll_mountable_func_ptr_anon_340 :: #type proc "c" (file: ^File, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
poll_mountable_finish_func_ptr_anon_341 :: #type proc "c" (file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
measure_disk_usage_func_ptr_anon_342 :: #type proc "c" (file: ^File, flags: FileMeasureFlags, cancellable: ^Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: glib.pointer, disk_usage: ^glib.uint64, num_dirs: [^]glib.uint64, num_files: [^]glib.uint64, error: ^^glib.Error) -> glib.boolean
measure_disk_usage_async_func_ptr_anon_343 :: #type proc "c" (file: ^File, flags: FileMeasureFlags, io_priority: glib.int_, cancellable: ^Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer)
measure_disk_usage_finish_func_ptr_anon_344 :: #type proc "c" (file: ^File, result: ^AsyncResult, disk_usage: ^glib.uint64, num_dirs: [^]glib.uint64, num_files: [^]glib.uint64, error: ^^glib.Error) -> glib.boolean
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
FileIface :: _GFileIface
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
FileEnumeratorClass :: _GFileEnumeratorClass
_GFileIconClass :: struct #packed {}
FileIconClass :: _GFileIconClass
_GFileInfoClass :: struct #packed {}
FileInfoClass :: _GFileInfoClass
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
FileInputStreamClass :: _GFileInputStreamClass
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
IOStreamClass :: _GIOStreamClass
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
FileIOStreamClass :: _GFileIOStreamClass
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
FileMonitorClass :: _GFileMonitorClass
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
FilenameCompleterClass :: _GFilenameCompleterClass
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
FileOutputStreamClass :: _GFileOutputStreamClass
to_string_func_ptr_anon_424 :: #type proc "c" (address: [^]InetAddress) -> cstring
to_bytes_func_ptr_anon_425 :: #type proc "c" (address: [^]InetAddress) -> ^glib.uint8
_GInetAddressClass :: struct {
    parent_class: gobj.ObjectClass,
    to_string: to_string_func_ptr_anon_424,
    to_bytes: to_bytes_func_ptr_anon_425,
}
InetAddressClass :: _GInetAddressClass
_GInetAddressMaskClass :: struct {
    parent_class: gobj.ObjectClass,
}
InetAddressMaskClass :: _GInetAddressMaskClass
et_family_func_ptr_anon_426 :: #type proc "c" (address: [^]SocketAddress) -> SocketFamily
et_native_size_func_ptr_anon_427 :: #type proc "c" (address: [^]SocketAddress) -> glib.ssize
to_native_func_ptr_anon_428 :: #type proc "c" (address: [^]SocketAddress, dest: glib.pointer, destlen: glib.size, error: ^^glib.Error) -> glib.boolean
_GSocketAddressClass :: struct {
    parent_class: gobj.ObjectClass,
    get_family: et_family_func_ptr_anon_426,
    get_native_size: et_native_size_func_ptr_anon_427,
    to_native: to_native_func_ptr_anon_428,
}
SocketAddressClass :: _GSocketAddressClass
_GInetSocketAddressClass :: struct {
    parent_class: SocketAddressClass,
}
InetSocketAddressClass :: _GInetSocketAddressClass
_GIOModuleScope :: struct #packed {}
IOModuleScope :: _GIOModuleScope
_GIOModuleClass :: struct #packed {}
IOModuleClass :: _GIOModuleClass
_GListModel :: struct #packed {}
ListModel :: _GListModel
et_item_type_func_ptr_anon_429 :: #type proc "c" (list: ^ListModel) -> gobj.Type
et_n_items_func_ptr_anon_430 :: #type proc "c" (list: ^ListModel) -> glib.uint_
et_item_func_ptr_anon_431 :: #type proc "c" (list: ^ListModel, position: glib.uint_) -> glib.pointer
_GListModelInterface :: struct {
    g_iface: gobj.TypeInterface,
    get_item_type: et_item_type_func_ptr_anon_429,
    get_n_items: et_n_items_func_ptr_anon_430,
    get_item: et_item_func_ptr_anon_431,
}
ListModelInterface :: _GListModelInterface
ListModel_autoptr :: ^ListModel
ListModel_listautoptr :: ^glib.List
ListModel_slistautoptr :: ^glib.SList
ListModel_queueautoptr :: ^glib.Queue
_GListStore :: struct #packed {}
ListStore :: _GListStore
ListStoreClass :: struct {
    parent_class: gobj.ObjectClass,
}
ListStore_autoptr :: ^ListStore
ListStore_listautoptr :: ^glib.List
ListStore_slistautoptr :: ^glib.SList
ListStore_queueautoptr :: ^glib.Queue
ListStoreClass_autoptr :: ^ListStoreClass
ListStoreClass_listautoptr :: ^glib.List
ListStoreClass_slistautoptr :: ^glib.SList
ListStoreClass_queueautoptr :: ^glib.Queue
load_func_ptr_anon_432 :: #type proc "c" (icon: ^LoadableIcon, size_p: i32, type: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^InputStream
load_async_func_ptr_anon_433 :: #type proc "c" (icon: ^LoadableIcon, size_p: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
load_finish_func_ptr_anon_434 :: #type proc "c" (icon: ^LoadableIcon, res: [^]AsyncResult, type: ^cstring, error: ^^glib.Error) -> ^InputStream
_GLoadableIconIface :: struct {
    g_iface: gobj.TypeInterface,
    load: load_func_ptr_anon_432,
    load_async: load_async_func_ptr_anon_433,
    load_finish: load_finish_func_ptr_anon_434,
}
LoadableIconIface :: _GLoadableIconIface
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
MemoryInputStreamClass :: _GMemoryInputStreamClass
_GMemoryMonitor :: struct #packed {}
MemoryMonitor :: _GMemoryMonitor
low_memory_warning_func_ptr_anon_440 :: #type proc "c" (monitor: ^MemoryMonitor, level: MemoryMonitorWarningLevel)
_GMemoryMonitorInterface :: struct {
    g_iface: gobj.TypeInterface,
    low_memory_warning: low_memory_warning_func_ptr_anon_440,
}
MemoryMonitorInterface :: _GMemoryMonitorInterface
MemoryMonitor_autoptr :: ^MemoryMonitor
MemoryMonitor_listautoptr :: ^glib.List
MemoryMonitor_slistautoptr :: ^glib.SList
MemoryMonitor_queueautoptr :: ^glib.Queue
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
MemoryOutputStreamClass :: _GMemoryOutputStreamClass
ReallocFunc :: #type proc "c" (data: glib.pointer, size_p: glib.size) -> glib.pointer
is_mutable_func_ptr_anon_446 :: #type proc "c" (model: ^MenuModel) -> glib.boolean
et_n_items_func_ptr_anon_447 :: #type proc "c" (model: ^MenuModel) -> glib.int_
et_item_attributes_func_ptr_anon_448 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, attributes: [^]^glib.HashTable)
_GMenuAttributeIterPrivate :: struct #packed {}
MenuAttributeIterPrivate :: _GMenuAttributeIterPrivate
_GMenuAttributeIter :: struct {
    parent_instance: gobj.Object,
    priv: ^MenuAttributeIterPrivate,
}
MenuAttributeIter :: _GMenuAttributeIter
iterate_item_attributes_func_ptr_anon_449 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_) -> ^MenuAttributeIter
et_item_attribute_value_func_ptr_anon_450 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, attribute: cstring, expected_type: ^glib.VariantType) -> ^glib.Variant
et_item_links_func_ptr_anon_451 :: #type proc "c" (model: ^MenuModel, item_index: glib.int_, links: [^]^glib.HashTable)
_GMenuLinkIterPrivate :: struct #packed {}
MenuLinkIterPrivate :: _GMenuLinkIterPrivate
_GMenuLinkIter :: struct {
    parent_instance: gobj.Object,
    priv: ^MenuLinkIterPrivate,
}
MenuLinkIter :: _GMenuLinkIter
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
MenuModelClass :: _GMenuModelClass
et_next_func_ptr_anon_454 :: #type proc "c" (iter: ^MenuAttributeIter, out_name: ^cstring, value: ^^glib.Variant) -> glib.boolean
_GMenuAttributeIterClass :: struct {
    parent_class: gobj.ObjectClass,
    get_next: et_next_func_ptr_anon_454,
}
MenuAttributeIterClass :: _GMenuAttributeIterClass
et_next_func_ptr_anon_455 :: #type proc "c" (iter: ^MenuLinkIter, out_link: ^cstring, value: ^^MenuModel) -> glib.boolean
_GMenuLinkIterClass :: struct {
    parent_class: gobj.ObjectClass,
    get_next: et_next_func_ptr_anon_455,
}
MenuLinkIterClass :: _GMenuLinkIterClass
_GMenuItem :: struct #packed {}
MenuItem :: _GMenuItem
_GMenu :: struct #packed {}
Menu :: _GMenu
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
MountIface :: _GMountIface
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
MountOperationClass :: _GMountOperationClass
_GNativeSocketAddressClass :: struct {
    parent_class: SocketAddressClass,
}
NativeSocketAddressClass :: _GNativeSocketAddressClass
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
VolumeMonitorClass :: _GVolumeMonitorClass
_GNativeVolumeMonitor :: struct {
    parent_instance: VolumeMonitor,
}
NativeVolumeMonitor :: _GNativeVolumeMonitor
et_mount_for_mount_path_func_ptr_anon_523 :: #type proc "c" (mount_path: cstring, cancellable: ^Cancellable) -> ^Mount
_GNativeVolumeMonitorClass :: struct {
    parent_class: VolumeMonitorClass,
    get_mount_for_mount_path: et_mount_for_mount_path_func_ptr_anon_523,
}
NativeVolumeMonitorClass :: _GNativeVolumeMonitorClass
_GNetworkAddressClass :: struct {
    parent_class: gobj.ObjectClass,
}
NetworkAddressClass :: _GNetworkAddressClass
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
NetworkMonitorInterface :: _GNetworkMonitorInterface
_GNetworkServiceClass :: struct {
    parent_class: gobj.ObjectClass,
}
NetworkServiceClass :: _GNetworkServiceClass
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
PermissionClass :: _GPermissionClass
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
PollableInputStreamInterface :: _GPollableInputStreamInterface
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
PollableOutputStreamInterface :: _GPollableOutputStreamInterface
_GPowerProfileMonitor :: struct #packed {}
PowerProfileMonitor :: _GPowerProfileMonitor
_GPowerProfileMonitorInterface :: struct {
    g_iface: gobj.TypeInterface,
}
PowerProfileMonitorInterface :: _GPowerProfileMonitorInterface
PowerProfileMonitor_autoptr :: ^PowerProfileMonitor
PowerProfileMonitor_listautoptr :: ^glib.List
PowerProfileMonitor_slistautoptr :: ^glib.SList
PowerProfileMonitor_queueautoptr :: ^glib.Queue
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
ProxyInterface :: _GProxyInterface
_GProxyAddressClass :: struct {
    parent_class: InetSocketAddressClass,
}
ProxyAddressClass :: _GProxyAddressClass
next_func_ptr_anon_547 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketAddress
next_async_func_ptr_anon_548 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
next_finish_func_ptr_anon_549 :: #type proc "c" (enumerator: ^SocketAddressEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketAddress
_GSocketAddressEnumeratorClass :: struct {
    parent_class: gobj.ObjectClass,
    next: next_func_ptr_anon_547,
    next_async: next_async_func_ptr_anon_548,
    next_finish: next_finish_func_ptr_anon_549,
}
SocketAddressEnumeratorClass :: _GSocketAddressEnumeratorClass
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
ProxyAddressEnumeratorClass :: _GProxyAddressEnumeratorClass
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
ProxyResolverInterface :: _GProxyResolverInterface
activate_action_full_func_ptr_anon_561 :: #type proc "c" (remote: ^RemoteActionGroup, action_name: cstring, parameter: ^glib.Variant, platform_data: ^glib.Variant)
change_action_state_full_func_ptr_anon_562 :: #type proc "c" (remote: ^RemoteActionGroup, action_name: cstring, value: ^glib.Variant, platform_data: ^glib.Variant)
_GRemoteActionGroupInterface :: struct {
    g_iface: gobj.TypeInterface,
    activate_action_full: activate_action_full_func_ptr_anon_561,
    change_action_state_full: change_action_state_full_func_ptr_anon_562,
}
RemoteActionGroupInterface :: _GRemoteActionGroupInterface
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
ResolverNameLookupFlags :: enum u32 {RESOLVER_NAME_LOOKUP_FLAGS_DEFAULT = 0, RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY = 1, RESOLVER_NAME_LOOKUP_FLAGS_IPV6_ONLY = 2, }
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
ResolverClass :: _GResolverClass
StaticResource :: _GStaticResource
_GStaticResource :: struct {
    data: ^glib.uint8,
    data_len: glib.size,
    resource: ^Resource,
    next: ^StaticResource,
    padding: glib.pointer,
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
SeekableIface :: _GSeekableIface
_GSettingsSchemaSource :: struct #packed {}
SettingsSchemaSource :: _GSettingsSchemaSource
_GSettingsSchema :: struct #packed {}
SettingsSchema :: _GSettingsSchema
_GSettingsSchemaKey :: struct #packed {}
SettingsSchemaKey :: _GSettingsSchemaKey
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
SettingsClass :: _GSettingsClass
SettingsBindSetMapping :: #type proc "c" (value: ^gobj.Value, expected_type: ^glib.VariantType, user_data: glib.pointer) -> ^glib.Variant
SettingsBindGetMapping :: #type proc "c" (value: ^gobj.Value, variant: ^glib.Variant, user_data: glib.pointer) -> glib.boolean
SettingsGetMapping :: #type proc "c" (value: ^glib.Variant, result: ^glib.pointer, user_data: glib.pointer) -> glib.boolean
SettingsBindFlags :: enum u32 {SETTINGS_BIND_DEFAULT = 0, SETTINGS_BIND_GET = 1, SETTINGS_BIND_SET = 2, SETTINGS_BIND_NO_SENSITIVITY = 4, SETTINGS_BIND_GET_NO_CHANGES = 8, SETTINGS_BIND_INVERT_BOOLEAN = 16, }
_GSimpleActionGroupClass :: struct {
    parent_class: gobj.ObjectClass,
    padding: [12]glib.pointer,
}
SimpleActionGroupClass :: _GSimpleActionGroupClass
_GSimpleAsyncResultClass :: struct #packed {}
SimpleAsyncResultClass :: _GSimpleAsyncResultClass
_GSimpleProxyResolverPrivate :: struct #packed {}
SimpleProxyResolverPrivate :: _GSimpleProxyResolverPrivate
_GSimpleProxyResolver :: struct {
    parent_instance: gobj.Object,
    priv: ^SimpleProxyResolverPrivate,
}
SimpleProxyResolver :: _GSimpleProxyResolver
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
SimpleProxyResolverClass :: _GSimpleProxyResolverClass
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
SocketClass :: _GSocketClass
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
SocketClientClass :: _GSocketClientClass
enumerate_func_ptr_anon_608 :: #type proc "c" (connectable: ^SocketConnectable) -> ^SocketAddressEnumerator
proxy_enumerate_func_ptr_anon_609 :: #type proc "c" (connectable: ^SocketConnectable) -> ^SocketAddressEnumerator
to_string_func_ptr_anon_610 :: #type proc "c" (connectable: ^SocketConnectable) -> cstring
_GSocketConnectableIface :: struct {
    g_iface: gobj.TypeInterface,
    enumerate: enumerate_func_ptr_anon_608,
    proxy_enumerate: proxy_enumerate_func_ptr_anon_609,
    to_string: to_string_func_ptr_anon_610,
}
SocketConnectableIface :: _GSocketConnectableIface
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
SocketConnectionClass :: _GSocketConnectionClass
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
SocketControlMessageClass :: _GSocketControlMessageClass
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
SocketListenerClass :: _GSocketListenerClass
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
SocketServiceClass :: _GSocketServiceClass
_GTaskClass :: struct #packed {}
TaskClass :: _GTaskClass
TaskThreadFunc :: #type proc "c" (task: ^Task, source_object: glib.pointer, task_data: glib.pointer, cancellable: ^Cancellable)
_GTcpConnectionClass :: struct {
    parent_class: SocketConnectionClass,
}
TcpConnectionClass :: _GTcpConnectionClass
_GTcpWrapperConnectionClass :: struct {
    parent_class: TcpConnectionClass,
}
TcpWrapperConnectionClass :: _GTcpWrapperConnectionClass
_GThemedIconClass :: struct #packed {}
ThemedIconClass :: _GThemedIconClass
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
ThreadedSocketServiceClass :: _GThreadedSocketServiceClass
_GTlsBackend :: struct #packed {}
TlsBackend :: _GTlsBackend
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
TlsBackendInterface :: _GTlsBackendInterface
verify_func_ptr_anon_656 :: #type proc "c" (cert: ^TlsCertificate, identity: ^SocketConnectable, trusted_ca: ^TlsCertificate) -> TlsCertificateFlags
_GTlsCertificateClass :: struct {
    parent_class: gobj.ObjectClass,
    verify: verify_func_ptr_anon_656,
    padding: [8]glib.pointer,
}
TlsCertificateClass :: _GTlsCertificateClass
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
TlsConnectionClass :: _GTlsConnectionClass
copy_session_state_func_ptr_anon_663 :: #type proc "c" (conn: ^TlsClientConnection, source: ^TlsClientConnection)
_GTlsClientConnectionInterface :: struct {
    g_iface: gobj.TypeInterface,
    copy_session_state: copy_session_state_func_ptr_anon_663,
}
TlsClientConnectionInterface :: _GTlsClientConnectionInterface
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
TlsDatabaseClass :: _GTlsDatabaseClass
_GTlsFileDatabaseInterface :: struct {
    g_iface: gobj.TypeInterface,
    padding: [8]glib.pointer,
}
TlsFileDatabaseInterface :: _GTlsFileDatabaseInterface
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
TlsInteractionClass :: _GTlsInteractionClass
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
TlsPasswordClass :: _GTlsPasswordClass
_GTlsServerConnectionInterface :: struct {
    g_iface: gobj.TypeInterface,
}
TlsServerConnectionInterface :: _GTlsServerConnectionInterface
_GUnixConnectionPrivate :: struct #packed {}
UnixConnectionPrivate :: _GUnixConnectionPrivate
_GUnixConnection :: struct {
    parent_instance: SocketConnection,
    priv: ^UnixConnectionPrivate,
}
UnixConnection :: _GUnixConnection
_GUnixConnectionClass :: struct {
    parent_class: SocketConnectionClass,
}
UnixConnectionClass :: _GUnixConnectionClass
UnixConnection_autoptr :: ^UnixConnection
UnixConnection_listautoptr :: ^glib.List
UnixConnection_slistautoptr :: ^glib.SList
UnixConnection_queueautoptr :: ^glib.Queue
_g_reserved1_func_ptr_anon_686 :: #type proc "c" ()
_g_reserved2_func_ptr_anon_687 :: #type proc "c" ()
_GUnixCredentialsMessageClass :: struct {
    parent_class: SocketControlMessageClass,
    _g_reserved1: _g_reserved1_func_ptr_anon_686,
    _g_reserved2: _g_reserved2_func_ptr_anon_687,
}
UnixCredentialsMessageClass :: _GUnixCredentialsMessageClass
UnixCredentialsMessage_autoptr :: ^UnixCredentialsMessage
UnixCredentialsMessage_listautoptr :: ^glib.List
UnixCredentialsMessage_slistautoptr :: ^glib.SList
UnixCredentialsMessage_queueautoptr :: ^glib.Queue
UnixFDList_autoptr :: ^UnixFDList
UnixFDList_listautoptr :: ^glib.List
UnixFDList_slistautoptr :: ^glib.SList
UnixFDList_queueautoptr :: ^glib.Queue
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
UnixFDListClass :: _GUnixFDListClass
_GUnixSocketAddressPrivate :: struct #packed {}
UnixSocketAddressPrivate :: _GUnixSocketAddressPrivate
_GUnixSocketAddress :: struct {
    parent_instance: SocketAddress,
    priv: ^UnixSocketAddressPrivate,
}
UnixSocketAddress :: _GUnixSocketAddress
_GUnixSocketAddressClass :: struct {
    parent_class: SocketAddressClass,
}
UnixSocketAddressClass :: _GUnixSocketAddressClass
UnixSocketAddress_autoptr :: ^UnixSocketAddress
UnixSocketAddress_listautoptr :: ^glib.List
UnixSocketAddress_slistautoptr :: ^glib.SList
UnixSocketAddress_queueautoptr :: ^glib.Queue
VfsFileLookupFunc :: #type proc "c" (vfs: [^]Vfs, identifier: cstring, user_data: glib.pointer) -> ^File
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
VfsClass :: _GVfsClass
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
VolumeIface :: _GVolumeIface
_GZlibCompressorClass :: struct {
    parent_class: gobj.ObjectClass,
}
ZlibCompressorClass :: _GZlibCompressorClass
_GZlibDecompressorClass :: struct {
    parent_class: gobj.ObjectClass,
}
ZlibDecompressorClass :: _GZlibDecompressorClass
Action_autoptr :: ^Action
Action_listautoptr :: ^glib.List
Action_slistautoptr :: ^glib.SList
Action_queueautoptr :: ^glib.Queue
ActionMap_autoptr :: ^ActionMap
ActionMap_listautoptr :: ^glib.List
ActionMap_slistautoptr :: ^glib.SList
ActionMap_queueautoptr :: ^glib.Queue
AppInfo_autoptr :: ^AppInfo
AppInfo_listautoptr :: ^glib.List
AppInfo_slistautoptr :: ^glib.SList
AppInfo_queueautoptr :: ^glib.Queue
AppLaunchContext_autoptr :: ^AppLaunchContext
AppLaunchContext_listautoptr :: ^glib.List
AppLaunchContext_slistautoptr :: ^glib.SList
AppLaunchContext_queueautoptr :: ^glib.Queue
AppInfoMonitor_autoptr :: ^AppInfoMonitor
AppInfoMonitor_listautoptr :: ^glib.List
AppInfoMonitor_slistautoptr :: ^glib.SList
AppInfoMonitor_queueautoptr :: ^glib.Queue
ApplicationCommandLine_autoptr :: ^ApplicationCommandLine
ApplicationCommandLine_listautoptr :: ^glib.List
ApplicationCommandLine_slistautoptr :: ^glib.SList
ApplicationCommandLine_queueautoptr :: ^glib.Queue
Application_autoptr :: ^Application
Application_listautoptr :: ^glib.List
Application_slistautoptr :: ^glib.SList
Application_queueautoptr :: ^glib.Queue
AsyncInitable_autoptr :: ^AsyncInitable
AsyncInitable_listautoptr :: ^glib.List
AsyncInitable_slistautoptr :: ^glib.SList
AsyncInitable_queueautoptr :: ^glib.Queue
AsyncResult_autoptr :: ^AsyncResult
AsyncResult_listautoptr :: ^glib.List
AsyncResult_slistautoptr :: ^glib.SList
AsyncResult_queueautoptr :: ^glib.Queue
BufferedInputStream_autoptr :: ^BufferedInputStream
BufferedInputStream_listautoptr :: ^glib.List
BufferedInputStream_slistautoptr :: ^glib.SList
BufferedInputStream_queueautoptr :: ^glib.Queue
BufferedOutputStream_autoptr :: ^BufferedOutputStream
BufferedOutputStream_listautoptr :: ^glib.List
BufferedOutputStream_slistautoptr :: ^glib.SList
BufferedOutputStream_queueautoptr :: ^glib.Queue
BytesIcon_autoptr :: ^BytesIcon
BytesIcon_listautoptr :: ^glib.List
BytesIcon_slistautoptr :: ^glib.SList
BytesIcon_queueautoptr :: ^glib.Queue
Cancellable_autoptr :: ^Cancellable
Cancellable_listautoptr :: ^glib.List
Cancellable_slistautoptr :: ^glib.SList
Cancellable_queueautoptr :: ^glib.Queue
CharsetConverter_autoptr :: ^CharsetConverter
CharsetConverter_listautoptr :: ^glib.List
CharsetConverter_slistautoptr :: ^glib.SList
CharsetConverter_queueautoptr :: ^glib.Queue
Converter_autoptr :: ^Converter
Converter_listautoptr :: ^glib.List
Converter_slistautoptr :: ^glib.SList
Converter_queueautoptr :: ^glib.Queue
ConverterInputStream_autoptr :: ^ConverterInputStream
ConverterInputStream_listautoptr :: ^glib.List
ConverterInputStream_slistautoptr :: ^glib.SList
ConverterInputStream_queueautoptr :: ^glib.Queue
ConverterOutputStream_autoptr :: ^ConverterOutputStream
ConverterOutputStream_listautoptr :: ^glib.List
ConverterOutputStream_slistautoptr :: ^glib.SList
ConverterOutputStream_queueautoptr :: ^glib.Queue
Credentials_autoptr :: ^Credentials
Credentials_listautoptr :: ^glib.List
Credentials_slistautoptr :: ^glib.SList
Credentials_queueautoptr :: ^glib.Queue
DatagramBased_autoptr :: ^DatagramBased
DatagramBased_listautoptr :: ^glib.List
DatagramBased_slistautoptr :: ^glib.SList
DatagramBased_queueautoptr :: ^glib.Queue
DataInputStream_autoptr :: ^DataInputStream
DataInputStream_listautoptr :: ^glib.List
DataInputStream_slistautoptr :: ^glib.SList
DataInputStream_queueautoptr :: ^glib.Queue
DataOutputStream_autoptr :: ^DataOutputStream
DataOutputStream_listautoptr :: ^glib.List
DataOutputStream_slistautoptr :: ^glib.SList
DataOutputStream_queueautoptr :: ^glib.Queue
DBusActionGroup_autoptr :: ^DBusActionGroup
DBusActionGroup_listautoptr :: ^glib.List
DBusActionGroup_slistautoptr :: ^glib.SList
DBusActionGroup_queueautoptr :: ^glib.Queue
DBusAuthObserver_autoptr :: ^DBusAuthObserver
DBusAuthObserver_listautoptr :: ^glib.List
DBusAuthObserver_slistautoptr :: ^glib.SList
DBusAuthObserver_queueautoptr :: ^glib.Queue
DBusConnection_autoptr :: ^DBusConnection
DBusConnection_listautoptr :: ^glib.List
DBusConnection_slistautoptr :: ^glib.SList
DBusConnection_queueautoptr :: ^glib.Queue
DBusInterface_autoptr :: ^DBusInterface
DBusInterface_listautoptr :: ^glib.List
DBusInterface_slistautoptr :: ^glib.SList
DBusInterface_queueautoptr :: ^glib.Queue
DBusInterfaceSkeleton_autoptr :: ^DBusInterfaceSkeleton
DBusInterfaceSkeleton_listautoptr :: ^glib.List
DBusInterfaceSkeleton_slistautoptr :: ^glib.SList
DBusInterfaceSkeleton_queueautoptr :: ^glib.Queue
DBusMenuModel_autoptr :: ^DBusMenuModel
DBusMenuModel_listautoptr :: ^glib.List
DBusMenuModel_slistautoptr :: ^glib.SList
DBusMenuModel_queueautoptr :: ^glib.Queue
DBusMessage_autoptr :: ^DBusMessage
DBusMessage_listautoptr :: ^glib.List
DBusMessage_slistautoptr :: ^glib.SList
DBusMessage_queueautoptr :: ^glib.Queue
DBusMethodInvocation_autoptr :: ^DBusMethodInvocation
DBusMethodInvocation_listautoptr :: ^glib.List
DBusMethodInvocation_slistautoptr :: ^glib.SList
DBusMethodInvocation_queueautoptr :: ^glib.Queue
DBusNodeInfo_autoptr :: ^DBusNodeInfo
DBusNodeInfo_listautoptr :: ^glib.List
DBusNodeInfo_slistautoptr :: ^glib.SList
DBusNodeInfo_queueautoptr :: ^glib.Queue
DBusObject_autoptr :: ^DBusObject
DBusObject_listautoptr :: ^glib.List
DBusObject_slistautoptr :: ^glib.SList
DBusObject_queueautoptr :: ^glib.Queue
DBusObjectManagerClient_autoptr :: ^DBusObjectManagerClient
DBusObjectManagerClient_listautoptr :: ^glib.List
DBusObjectManagerClient_slistautoptr :: ^glib.SList
DBusObjectManagerClient_queueautoptr :: ^glib.Queue
DBusObjectManager_autoptr :: ^DBusObjectManager
DBusObjectManager_listautoptr :: ^glib.List
DBusObjectManager_slistautoptr :: ^glib.SList
DBusObjectManager_queueautoptr :: ^glib.Queue
DBusObjectManagerServer_autoptr :: ^DBusObjectManagerServer
DBusObjectManagerServer_listautoptr :: ^glib.List
DBusObjectManagerServer_slistautoptr :: ^glib.SList
DBusObjectManagerServer_queueautoptr :: ^glib.Queue
DBusObjectProxy_autoptr :: ^DBusObjectProxy
DBusObjectProxy_listautoptr :: ^glib.List
DBusObjectProxy_slistautoptr :: ^glib.SList
DBusObjectProxy_queueautoptr :: ^glib.Queue
DBusObjectSkeleton_autoptr :: ^DBusObjectSkeleton
DBusObjectSkeleton_listautoptr :: ^glib.List
DBusObjectSkeleton_slistautoptr :: ^glib.SList
DBusObjectSkeleton_queueautoptr :: ^glib.Queue
DBusProxy_autoptr :: ^DBusProxy
DBusProxy_listautoptr :: ^glib.List
DBusProxy_slistautoptr :: ^glib.SList
DBusProxy_queueautoptr :: ^glib.Queue
DBusServer_autoptr :: ^DBusServer
DBusServer_listautoptr :: ^glib.List
DBusServer_slistautoptr :: ^glib.SList
DBusServer_queueautoptr :: ^glib.Queue
Drive_autoptr :: ^Drive
Drive_listautoptr :: ^glib.List
Drive_slistautoptr :: ^glib.SList
Drive_queueautoptr :: ^glib.Queue
EmblemedIcon_autoptr :: ^EmblemedIcon
EmblemedIcon_listautoptr :: ^glib.List
EmblemedIcon_slistautoptr :: ^glib.SList
EmblemedIcon_queueautoptr :: ^glib.Queue
Emblem_autoptr :: ^Emblem
Emblem_listautoptr :: ^glib.List
Emblem_slistautoptr :: ^glib.SList
Emblem_queueautoptr :: ^glib.Queue
FileEnumerator_autoptr :: ^FileEnumerator
FileEnumerator_listautoptr :: ^glib.List
FileEnumerator_slistautoptr :: ^glib.SList
FileEnumerator_queueautoptr :: ^glib.Queue
File_autoptr :: ^File
File_listautoptr :: ^glib.List
File_slistautoptr :: ^glib.SList
File_queueautoptr :: ^glib.Queue
FileAttributeInfoList_autoptr :: ^FileAttributeInfoList
FileAttributeInfoList_listautoptr :: ^glib.List
FileAttributeInfoList_slistautoptr :: ^glib.SList
FileAttributeInfoList_queueautoptr :: ^glib.Queue
FileIcon_autoptr :: ^FileIcon
FileIcon_listautoptr :: ^glib.List
FileIcon_slistautoptr :: ^glib.SList
FileIcon_queueautoptr :: ^glib.Queue
FileInfo_autoptr :: ^FileInfo
FileInfo_listautoptr :: ^glib.List
FileInfo_slistautoptr :: ^glib.SList
FileInfo_queueautoptr :: ^glib.Queue
FileInputStream_autoptr :: ^FileInputStream
FileInputStream_listautoptr :: ^glib.List
FileInputStream_slistautoptr :: ^glib.SList
FileInputStream_queueautoptr :: ^glib.Queue
FileIOStream_autoptr :: ^FileIOStream
FileIOStream_listautoptr :: ^glib.List
FileIOStream_slistautoptr :: ^glib.SList
FileIOStream_queueautoptr :: ^glib.Queue
FileMonitor_autoptr :: ^FileMonitor
FileMonitor_listautoptr :: ^glib.List
FileMonitor_slistautoptr :: ^glib.SList
FileMonitor_queueautoptr :: ^glib.Queue
FilenameCompleter_autoptr :: ^FilenameCompleter
FilenameCompleter_listautoptr :: ^glib.List
FilenameCompleter_slistautoptr :: ^glib.SList
FilenameCompleter_queueautoptr :: ^glib.Queue
FileOutputStream_autoptr :: ^FileOutputStream
FileOutputStream_listautoptr :: ^glib.List
FileOutputStream_slistautoptr :: ^glib.SList
FileOutputStream_queueautoptr :: ^glib.Queue
FilterInputStream_autoptr :: ^FilterInputStream
FilterInputStream_listautoptr :: ^glib.List
FilterInputStream_slistautoptr :: ^glib.SList
FilterInputStream_queueautoptr :: ^glib.Queue
FilterOutputStream_autoptr :: ^FilterOutputStream
FilterOutputStream_listautoptr :: ^glib.List
FilterOutputStream_slistautoptr :: ^glib.SList
FilterOutputStream_queueautoptr :: ^glib.Queue
Icon_autoptr :: ^Icon
Icon_listautoptr :: ^glib.List
Icon_slistautoptr :: ^glib.SList
Icon_queueautoptr :: ^glib.Queue
InetAddress_autoptr :: ^InetAddress
InetAddress_listautoptr :: ^glib.List
InetAddress_slistautoptr :: ^glib.SList
InetAddress_queueautoptr :: ^glib.Queue
InetAddressMask_autoptr :: ^InetAddressMask
InetAddressMask_listautoptr :: ^glib.List
InetAddressMask_slistautoptr :: ^glib.SList
InetAddressMask_queueautoptr :: ^glib.Queue
InetSocketAddress_autoptr :: ^InetSocketAddress
InetSocketAddress_listautoptr :: ^glib.List
InetSocketAddress_slistautoptr :: ^glib.SList
InetSocketAddress_queueautoptr :: ^glib.Queue
Initable_autoptr :: ^Initable
Initable_listautoptr :: ^glib.List
Initable_slistautoptr :: ^glib.SList
Initable_queueautoptr :: ^glib.Queue
InputStream_autoptr :: ^InputStream
InputStream_listautoptr :: ^glib.List
InputStream_slistautoptr :: ^glib.SList
InputStream_queueautoptr :: ^glib.Queue
IOModule_autoptr :: ^IOModule
IOModule_listautoptr :: ^glib.List
IOModule_slistautoptr :: ^glib.SList
IOModule_queueautoptr :: ^glib.Queue
IOStream_autoptr :: ^IOStream
IOStream_listautoptr :: ^glib.List
IOStream_slistautoptr :: ^glib.SList
IOStream_queueautoptr :: ^glib.Queue
LoadableIcon_autoptr :: ^LoadableIcon
LoadableIcon_listautoptr :: ^glib.List
LoadableIcon_slistautoptr :: ^glib.SList
LoadableIcon_queueautoptr :: ^glib.Queue
MemoryInputStream_autoptr :: ^MemoryInputStream
MemoryInputStream_listautoptr :: ^glib.List
MemoryInputStream_slistautoptr :: ^glib.SList
MemoryInputStream_queueautoptr :: ^glib.Queue
MemoryOutputStream_autoptr :: ^MemoryOutputStream
MemoryOutputStream_listautoptr :: ^glib.List
MemoryOutputStream_slistautoptr :: ^glib.SList
MemoryOutputStream_queueautoptr :: ^glib.Queue
Menu_autoptr :: ^Menu
Menu_listautoptr :: ^glib.List
Menu_slistautoptr :: ^glib.SList
Menu_queueautoptr :: ^glib.Queue
MenuItem_autoptr :: ^MenuItem
MenuItem_listautoptr :: ^glib.List
MenuItem_slistautoptr :: ^glib.SList
MenuItem_queueautoptr :: ^glib.Queue
MenuModel_autoptr :: ^MenuModel
MenuModel_listautoptr :: ^glib.List
MenuModel_slistautoptr :: ^glib.SList
MenuModel_queueautoptr :: ^glib.Queue
MenuAttributeIter_autoptr :: ^MenuAttributeIter
MenuAttributeIter_listautoptr :: ^glib.List
MenuAttributeIter_slistautoptr :: ^glib.SList
MenuAttributeIter_queueautoptr :: ^glib.Queue
MenuLinkIter_autoptr :: ^MenuLinkIter
MenuLinkIter_listautoptr :: ^glib.List
MenuLinkIter_slistautoptr :: ^glib.SList
MenuLinkIter_queueautoptr :: ^glib.Queue
Mount_autoptr :: ^Mount
Mount_listautoptr :: ^glib.List
Mount_slistautoptr :: ^glib.SList
Mount_queueautoptr :: ^glib.Queue
MountOperation_autoptr :: ^MountOperation
MountOperation_listautoptr :: ^glib.List
MountOperation_slistautoptr :: ^glib.SList
MountOperation_queueautoptr :: ^glib.Queue
NativeVolumeMonitor_autoptr :: ^NativeVolumeMonitor
NativeVolumeMonitor_listautoptr :: ^glib.List
NativeVolumeMonitor_slistautoptr :: ^glib.SList
NativeVolumeMonitor_queueautoptr :: ^glib.Queue
NetworkAddress_autoptr :: ^NetworkAddress
NetworkAddress_listautoptr :: ^glib.List
NetworkAddress_slistautoptr :: ^glib.SList
NetworkAddress_queueautoptr :: ^glib.Queue
NetworkMonitor_autoptr :: ^NetworkMonitor
NetworkMonitor_listautoptr :: ^glib.List
NetworkMonitor_slistautoptr :: ^glib.SList
NetworkMonitor_queueautoptr :: ^glib.Queue
NetworkService_autoptr :: ^NetworkService
NetworkService_listautoptr :: ^glib.List
NetworkService_slistautoptr :: ^glib.SList
NetworkService_queueautoptr :: ^glib.Queue
Notification_autoptr :: ^Notification
Notification_listautoptr :: ^glib.List
Notification_slistautoptr :: ^glib.SList
Notification_queueautoptr :: ^glib.Queue
OutputStream_autoptr :: ^OutputStream
OutputStream_listautoptr :: ^glib.List
OutputStream_slistautoptr :: ^glib.SList
OutputStream_queueautoptr :: ^glib.Queue
Permission_autoptr :: ^Permission
Permission_listautoptr :: ^glib.List
Permission_slistautoptr :: ^glib.SList
Permission_queueautoptr :: ^glib.Queue
PollableInputStream_autoptr :: ^PollableInputStream
PollableInputStream_listautoptr :: ^glib.List
PollableInputStream_slistautoptr :: ^glib.SList
PollableInputStream_queueautoptr :: ^glib.Queue
PollableOutputStream_autoptr :: ^PollableOutputStream
PollableOutputStream_listautoptr :: ^glib.List
PollableOutputStream_slistautoptr :: ^glib.SList
PollableOutputStream_queueautoptr :: ^glib.Queue
PropertyAction_autoptr :: ^PropertyAction
PropertyAction_listautoptr :: ^glib.List
PropertyAction_slistautoptr :: ^glib.SList
PropertyAction_queueautoptr :: ^glib.Queue
ProxyAddressEnumerator_autoptr :: ^ProxyAddressEnumerator
ProxyAddressEnumerator_listautoptr :: ^glib.List
ProxyAddressEnumerator_slistautoptr :: ^glib.SList
ProxyAddressEnumerator_queueautoptr :: ^glib.Queue
ProxyAddress_autoptr :: ^ProxyAddress
ProxyAddress_listautoptr :: ^glib.List
ProxyAddress_slistautoptr :: ^glib.SList
ProxyAddress_queueautoptr :: ^glib.Queue
Proxy_autoptr :: ^Proxy
Proxy_listautoptr :: ^glib.List
Proxy_slistautoptr :: ^glib.SList
Proxy_queueautoptr :: ^glib.Queue
ProxyResolver_autoptr :: ^ProxyResolver
ProxyResolver_listautoptr :: ^glib.List
ProxyResolver_slistautoptr :: ^glib.SList
ProxyResolver_queueautoptr :: ^glib.Queue
RemoteActionGroup_autoptr :: ^RemoteActionGroup
RemoteActionGroup_listautoptr :: ^glib.List
RemoteActionGroup_slistautoptr :: ^glib.SList
RemoteActionGroup_queueautoptr :: ^glib.Queue
Resolver_autoptr :: ^Resolver
Resolver_listautoptr :: ^glib.List
Resolver_slistautoptr :: ^glib.SList
Resolver_queueautoptr :: ^glib.Queue
Resource_autoptr :: ^Resource
Resource_listautoptr :: ^glib.List
Resource_slistautoptr :: ^glib.SList
Resource_queueautoptr :: ^glib.Queue
Seekable_autoptr :: ^Seekable
Seekable_listautoptr :: ^glib.List
Seekable_slistautoptr :: ^glib.SList
Seekable_queueautoptr :: ^glib.Queue
SettingsBackend_autoptr :: ^SettingsBackend
SettingsBackend_listautoptr :: ^glib.List
SettingsBackend_slistautoptr :: ^glib.SList
SettingsBackend_queueautoptr :: ^glib.Queue
SettingsSchema_autoptr :: ^SettingsSchema
SettingsSchema_listautoptr :: ^glib.List
SettingsSchema_slistautoptr :: ^glib.SList
SettingsSchema_queueautoptr :: ^glib.Queue
SettingsSchemaKey_autoptr :: ^SettingsSchemaKey
SettingsSchemaKey_listautoptr :: ^glib.List
SettingsSchemaKey_slistautoptr :: ^glib.SList
SettingsSchemaKey_queueautoptr :: ^glib.Queue
SettingsSchemaSource_autoptr :: ^SettingsSchemaSource
SettingsSchemaSource_listautoptr :: ^glib.List
SettingsSchemaSource_slistautoptr :: ^glib.SList
SettingsSchemaSource_queueautoptr :: ^glib.Queue
Settings_autoptr :: ^Settings
Settings_listautoptr :: ^glib.List
Settings_slistautoptr :: ^glib.SList
Settings_queueautoptr :: ^glib.Queue
SimpleActionGroup_autoptr :: ^SimpleActionGroup
SimpleActionGroup_listautoptr :: ^glib.List
SimpleActionGroup_slistautoptr :: ^glib.SList
SimpleActionGroup_queueautoptr :: ^glib.Queue
SimpleAction_autoptr :: ^SimpleAction
SimpleAction_listautoptr :: ^glib.List
SimpleAction_slistautoptr :: ^glib.SList
SimpleAction_queueautoptr :: ^glib.Queue
SimpleAsyncResult_autoptr :: ^SimpleAsyncResult
SimpleAsyncResult_listautoptr :: ^glib.List
SimpleAsyncResult_slistautoptr :: ^glib.SList
SimpleAsyncResult_queueautoptr :: ^glib.Queue
SimplePermission_autoptr :: ^SimplePermission
SimplePermission_listautoptr :: ^glib.List
SimplePermission_slistautoptr :: ^glib.SList
SimplePermission_queueautoptr :: ^glib.Queue
SimpleProxyResolver_autoptr :: ^SimpleProxyResolver
SimpleProxyResolver_listautoptr :: ^glib.List
SimpleProxyResolver_slistautoptr :: ^glib.SList
SimpleProxyResolver_queueautoptr :: ^glib.Queue
SocketAddressEnumerator_autoptr :: ^SocketAddressEnumerator
SocketAddressEnumerator_listautoptr :: ^glib.List
SocketAddressEnumerator_slistautoptr :: ^glib.SList
SocketAddressEnumerator_queueautoptr :: ^glib.Queue
SocketAddress_autoptr :: ^SocketAddress
SocketAddress_listautoptr :: ^glib.List
SocketAddress_slistautoptr :: ^glib.SList
SocketAddress_queueautoptr :: ^glib.Queue
SocketClient_autoptr :: ^SocketClient
SocketClient_listautoptr :: ^glib.List
SocketClient_slistautoptr :: ^glib.SList
SocketClient_queueautoptr :: ^glib.Queue
SocketConnectable_autoptr :: ^SocketConnectable
SocketConnectable_listautoptr :: ^glib.List
SocketConnectable_slistautoptr :: ^glib.SList
SocketConnectable_queueautoptr :: ^glib.Queue
SocketConnection_autoptr :: ^SocketConnection
SocketConnection_listautoptr :: ^glib.List
SocketConnection_slistautoptr :: ^glib.SList
SocketConnection_queueautoptr :: ^glib.Queue
SocketControlMessage_autoptr :: ^SocketControlMessage
SocketControlMessage_listautoptr :: ^glib.List
SocketControlMessage_slistautoptr :: ^glib.SList
SocketControlMessage_queueautoptr :: ^glib.Queue
Socket_autoptr :: ^Socket
Socket_listautoptr :: ^glib.List
Socket_slistautoptr :: ^glib.SList
Socket_queueautoptr :: ^glib.Queue
SocketListener_autoptr :: ^SocketListener
SocketListener_listautoptr :: ^glib.List
SocketListener_slistautoptr :: ^glib.SList
SocketListener_queueautoptr :: ^glib.Queue
SocketService_autoptr :: ^SocketService
SocketService_listautoptr :: ^glib.List
SocketService_slistautoptr :: ^glib.SList
SocketService_queueautoptr :: ^glib.Queue
Subprocess_autoptr :: ^Subprocess
Subprocess_listautoptr :: ^glib.List
Subprocess_slistautoptr :: ^glib.SList
Subprocess_queueautoptr :: ^glib.Queue
SubprocessLauncher_autoptr :: ^SubprocessLauncher
SubprocessLauncher_listautoptr :: ^glib.List
SubprocessLauncher_slistautoptr :: ^glib.SList
SubprocessLauncher_queueautoptr :: ^glib.Queue
Task_autoptr :: ^Task
Task_listautoptr :: ^glib.List
Task_slistautoptr :: ^glib.SList
Task_queueautoptr :: ^glib.Queue
TcpConnection_autoptr :: ^TcpConnection
TcpConnection_listautoptr :: ^glib.List
TcpConnection_slistautoptr :: ^glib.SList
TcpConnection_queueautoptr :: ^glib.Queue
TcpWrapperConnection_autoptr :: ^TcpWrapperConnection
TcpWrapperConnection_listautoptr :: ^glib.List
TcpWrapperConnection_slistautoptr :: ^glib.SList
TcpWrapperConnection_queueautoptr :: ^glib.Queue
TestDBus_autoptr :: ^TestDBus
TestDBus_listautoptr :: ^glib.List
TestDBus_slistautoptr :: ^glib.SList
TestDBus_queueautoptr :: ^glib.Queue
ThemedIcon_autoptr :: ^ThemedIcon
ThemedIcon_listautoptr :: ^glib.List
ThemedIcon_slistautoptr :: ^glib.SList
ThemedIcon_queueautoptr :: ^glib.Queue
ThreadedSocketService_autoptr :: ^ThreadedSocketService
ThreadedSocketService_listautoptr :: ^glib.List
ThreadedSocketService_slistautoptr :: ^glib.SList
ThreadedSocketService_queueautoptr :: ^glib.Queue
TlsBackend_autoptr :: ^TlsBackend
TlsBackend_listautoptr :: ^glib.List
TlsBackend_slistautoptr :: ^glib.SList
TlsBackend_queueautoptr :: ^glib.Queue
TlsCertificate_autoptr :: ^TlsCertificate
TlsCertificate_listautoptr :: ^glib.List
TlsCertificate_slistautoptr :: ^glib.SList
TlsCertificate_queueautoptr :: ^glib.Queue
TlsClientConnection_autoptr :: ^TlsClientConnection
TlsClientConnection_listautoptr :: ^glib.List
TlsClientConnection_slistautoptr :: ^glib.SList
TlsClientConnection_queueautoptr :: ^glib.Queue
TlsConnection_autoptr :: ^TlsConnection
TlsConnection_listautoptr :: ^glib.List
TlsConnection_slistautoptr :: ^glib.SList
TlsConnection_queueautoptr :: ^glib.Queue
TlsDatabase_autoptr :: ^TlsDatabase
TlsDatabase_listautoptr :: ^glib.List
TlsDatabase_slistautoptr :: ^glib.SList
TlsDatabase_queueautoptr :: ^glib.Queue
TlsFileDatabase_autoptr :: ^TlsFileDatabase
TlsFileDatabase_listautoptr :: ^glib.List
TlsFileDatabase_slistautoptr :: ^glib.SList
TlsFileDatabase_queueautoptr :: ^glib.Queue
TlsInteraction_autoptr :: ^TlsInteraction
TlsInteraction_listautoptr :: ^glib.List
TlsInteraction_slistautoptr :: ^glib.SList
TlsInteraction_queueautoptr :: ^glib.Queue
TlsPassword_autoptr :: ^TlsPassword
TlsPassword_listautoptr :: ^glib.List
TlsPassword_slistautoptr :: ^glib.SList
TlsPassword_queueautoptr :: ^glib.Queue
TlsServerConnection_autoptr :: ^TlsServerConnection
TlsServerConnection_listautoptr :: ^glib.List
TlsServerConnection_slistautoptr :: ^glib.SList
TlsServerConnection_queueautoptr :: ^glib.Queue
Vfs_autoptr :: ^Vfs
Vfs_listautoptr :: ^glib.List
Vfs_slistautoptr :: ^glib.SList
Vfs_queueautoptr :: ^glib.Queue
Volume_autoptr :: ^Volume
Volume_listautoptr :: ^glib.List
Volume_slistautoptr :: ^glib.SList
Volume_queueautoptr :: ^glib.Queue
VolumeMonitor_autoptr :: ^VolumeMonitor
VolumeMonitor_listautoptr :: ^glib.List
VolumeMonitor_slistautoptr :: ^glib.SList
VolumeMonitor_queueautoptr :: ^glib.Queue
ZlibCompressor_autoptr :: ^ZlibCompressor
ZlibCompressor_listautoptr :: ^glib.List
ZlibCompressor_slistautoptr :: ^glib.SList
ZlibCompressor_queueautoptr :: ^glib.Queue
ZlibDecompressor_autoptr :: ^ZlibDecompressor
ZlibDecompressor_listautoptr :: ^glib.List
ZlibDecompressor_slistautoptr :: ^glib.SList
ZlibDecompressor_queueautoptr :: ^glib.Queue

@(default_calling_convention = "c")
foreign gio_runic {
    @(link_name = "g_action_get_type")
    action_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_action_get_name")
    action_get_name :: proc(action: ^Action) -> cstring ---

    @(link_name = "g_action_get_parameter_type")
    action_get_parameter_type :: proc(action: ^Action) -> ^glib.VariantType ---

    @(link_name = "g_action_get_state_type")
    action_get_state_type :: proc(action: ^Action) -> ^glib.VariantType ---

    @(link_name = "g_action_get_state_hint")
    action_get_state_hint :: proc(action: ^Action) -> ^glib.Variant ---

    @(link_name = "g_action_get_enabled")
    action_get_enabled :: proc(action: ^Action) -> glib.boolean ---

    @(link_name = "g_action_get_state")
    action_get_state :: proc(action: ^Action) -> ^glib.Variant ---

    @(link_name = "g_action_change_state")
    action_change_state :: proc(action: ^Action, value: ^glib.Variant) ---

    @(link_name = "g_action_activate")
    action_activate :: proc(action: ^Action, parameter: ^glib.Variant) ---

    @(link_name = "g_action_name_is_valid")
    action_name_is_valid :: proc(action_name: cstring) -> glib.boolean ---

    @(link_name = "g_action_parse_detailed_name")
    action_parse_detailed_name :: proc(detailed_name: cstring, action_name: ^cstring, target_value: ^^glib.Variant, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_action_print_detailed_name")
    action_print_detailed_name :: proc(action_name: cstring, target_value: ^glib.Variant) -> cstring ---

    @(link_name = "g_action_group_get_type")
    action_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_action_group_has_action")
    action_group_has_action :: proc(action_group: ^ActionGroup, action_name: cstring) -> glib.boolean ---

    @(link_name = "g_action_group_list_actions")
    action_group_list_actions :: proc(action_group: ^ActionGroup) -> ^cstring ---

    @(link_name = "g_action_group_get_action_parameter_type")
    action_group_get_action_parameter_type :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.VariantType ---

    @(link_name = "g_action_group_get_action_state_type")
    action_group_get_action_state_type :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.VariantType ---

    @(link_name = "g_action_group_get_action_state_hint")
    action_group_get_action_state_hint :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.Variant ---

    @(link_name = "g_action_group_get_action_enabled")
    action_group_get_action_enabled :: proc(action_group: ^ActionGroup, action_name: cstring) -> glib.boolean ---

    @(link_name = "g_action_group_get_action_state")
    action_group_get_action_state :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.Variant ---

    @(link_name = "g_action_group_change_action_state")
    action_group_change_action_state :: proc(action_group: ^ActionGroup, action_name: cstring, value: ^glib.Variant) ---

    @(link_name = "g_action_group_activate_action")
    action_group_activate_action :: proc(action_group: ^ActionGroup, action_name: cstring, parameter: ^glib.Variant) ---

    @(link_name = "g_action_group_action_added")
    action_group_action_added :: proc(action_group: ^ActionGroup, action_name: cstring) ---

    @(link_name = "g_action_group_action_removed")
    action_group_action_removed :: proc(action_group: ^ActionGroup, action_name: cstring) ---

    @(link_name = "g_action_group_action_enabled_changed")
    action_group_action_enabled_changed :: proc(action_group: ^ActionGroup, action_name: cstring, enabled: glib.boolean) ---

    @(link_name = "g_action_group_action_state_changed")
    action_group_action_state_changed :: proc(action_group: ^ActionGroup, action_name: cstring, state: ^glib.Variant) ---

    @(link_name = "g_action_group_query_action")
    action_group_query_action :: proc(action_group: ^ActionGroup, action_name: cstring, enabled: ^glib.boolean, parameter_type: ^^glib.VariantType, state_type: ^^glib.VariantType, state_hint: ^^glib.Variant, state: ^^glib.Variant) -> glib.boolean ---

    @(link_name = "g_dbus_connection_export_action_group")
    dbus_connection_export_action_group :: proc(connection: ^DBusConnection, object_path: cstring, action_group: ^ActionGroup, error: ^^glib.Error) -> glib.uint_ ---

    @(link_name = "g_dbus_connection_unexport_action_group")
    dbus_connection_unexport_action_group :: proc(connection: ^DBusConnection, export_id: glib.uint_) ---

    @(link_name = "g_action_map_get_type")
    action_map_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_action_map_lookup_action")
    action_map_lookup_action :: proc(action_map: ^ActionMap, action_name: cstring) -> ^Action ---

    @(link_name = "g_action_map_add_action")
    action_map_add_action :: proc(action_map: ^ActionMap, action: ^Action) ---

    @(link_name = "g_action_map_remove_action")
    action_map_remove_action :: proc(action_map: ^ActionMap, action_name: cstring) ---

    @(link_name = "g_action_map_add_action_entries")
    action_map_add_action_entries :: proc(action_map: ^ActionMap, entries: [^]ActionEntry, n_entries: glib.int_, user_data: glib.pointer) ---

    @(link_name = "g_action_map_remove_action_entries")
    action_map_remove_action_entries :: proc(action_map: ^ActionMap, entries: [^]ActionEntry, n_entries: glib.int_) ---

    @(link_name = "g_app_info_get_type")
    app_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_app_info_create_from_commandline")
    app_info_create_from_commandline :: proc(commandline: cstring, application_name: cstring, flags: AppInfoCreateFlags, error: ^^glib.Error) -> ^AppInfo ---

    @(link_name = "g_app_info_dup")
    app_info_dup :: proc(appinfo: ^AppInfo) -> ^AppInfo ---

    @(link_name = "g_app_info_equal")
    app_info_equal :: proc(appinfo1: ^AppInfo, appinfo2: ^AppInfo) -> glib.boolean ---

    @(link_name = "g_app_info_get_id")
    app_info_get_id :: proc(appinfo: ^AppInfo) -> cstring ---

    @(link_name = "g_app_info_get_name")
    app_info_get_name :: proc(appinfo: ^AppInfo) -> cstring ---

    @(link_name = "g_app_info_get_display_name")
    app_info_get_display_name :: proc(appinfo: ^AppInfo) -> cstring ---

    @(link_name = "g_app_info_get_description")
    app_info_get_description :: proc(appinfo: ^AppInfo) -> cstring ---

    @(link_name = "g_app_info_get_executable")
    app_info_get_executable :: proc(appinfo: ^AppInfo) -> cstring ---

    @(link_name = "g_app_info_get_commandline")
    app_info_get_commandline :: proc(appinfo: ^AppInfo) -> cstring ---

    @(link_name = "g_app_info_get_icon")
    app_info_get_icon :: proc(appinfo: ^AppInfo) -> ^Icon ---

    @(link_name = "g_app_info_launch")
    app_info_launch :: proc(appinfo: ^AppInfo, files: [^]glib.List, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_supports_uris")
    app_info_supports_uris :: proc(appinfo: ^AppInfo) -> glib.boolean ---

    @(link_name = "g_app_info_supports_files")
    app_info_supports_files :: proc(appinfo: ^AppInfo) -> glib.boolean ---

    @(link_name = "g_app_info_launch_uris")
    app_info_launch_uris :: proc(appinfo: ^AppInfo, uris: [^]glib.List, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_launch_uris_async")
    app_info_launch_uris_async :: proc(appinfo: ^AppInfo, uris: [^]glib.List, context_p: ^AppLaunchContext, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_app_info_launch_uris_finish")
    app_info_launch_uris_finish :: proc(appinfo: ^AppInfo, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_should_show")
    app_info_should_show :: proc(appinfo: ^AppInfo) -> glib.boolean ---

    @(link_name = "g_app_info_set_as_default_for_type")
    app_info_set_as_default_for_type :: proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_set_as_default_for_extension")
    app_info_set_as_default_for_extension :: proc(appinfo: ^AppInfo, extension: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_add_supports_type")
    app_info_add_supports_type :: proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_can_remove_supports_type")
    app_info_can_remove_supports_type :: proc(appinfo: ^AppInfo) -> glib.boolean ---

    @(link_name = "g_app_info_remove_supports_type")
    app_info_remove_supports_type :: proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_get_supported_types")
    app_info_get_supported_types :: proc(appinfo: ^AppInfo) -> ^cstring ---

    @(link_name = "g_app_info_can_delete")
    app_info_can_delete :: proc(appinfo: ^AppInfo) -> glib.boolean ---

    @(link_name = "g_app_info_delete")
    app_info_delete :: proc(appinfo: ^AppInfo) -> glib.boolean ---

    @(link_name = "g_app_info_set_as_last_used_for_type")
    app_info_set_as_last_used_for_type :: proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_get_all")
    app_info_get_all :: proc() -> ^glib.List ---

    @(link_name = "g_app_info_get_all_for_type")
    app_info_get_all_for_type :: proc(content_type: cstring) -> ^glib.List ---

    @(link_name = "g_app_info_get_recommended_for_type")
    app_info_get_recommended_for_type :: proc(content_type: cstring) -> ^glib.List ---

    @(link_name = "g_app_info_get_fallback_for_type")
    app_info_get_fallback_for_type :: proc(content_type: cstring) -> ^glib.List ---

    @(link_name = "g_app_info_reset_type_associations")
    app_info_reset_type_associations :: proc(content_type: cstring) ---

    @(link_name = "g_app_info_get_default_for_type")
    app_info_get_default_for_type :: proc(content_type: cstring, must_support_uris: glib.boolean) -> ^AppInfo ---

    @(link_name = "g_app_info_get_default_for_type_async")
    app_info_get_default_for_type_async :: proc(content_type: cstring, must_support_uris: glib.boolean, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_app_info_get_default_for_type_finish")
    app_info_get_default_for_type_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> ^AppInfo ---

    @(link_name = "g_app_info_get_default_for_uri_scheme")
    app_info_get_default_for_uri_scheme :: proc(uri_scheme: cstring) -> ^AppInfo ---

    @(link_name = "g_app_info_get_default_for_uri_scheme_async")
    app_info_get_default_for_uri_scheme_async :: proc(uri_scheme: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_app_info_get_default_for_uri_scheme_finish")
    app_info_get_default_for_uri_scheme_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> ^AppInfo ---

    @(link_name = "g_app_info_launch_default_for_uri")
    app_info_launch_default_for_uri :: proc(uri: cstring, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_info_launch_default_for_uri_async")
    app_info_launch_default_for_uri_async :: proc(uri: cstring, context_p: ^AppLaunchContext, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_app_info_launch_default_for_uri_finish")
    app_info_launch_default_for_uri_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_app_launch_context_get_type")
    app_launch_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_app_launch_context_new")
    app_launch_context_new :: proc() -> ^AppLaunchContext ---

    @(link_name = "g_app_launch_context_setenv")
    app_launch_context_setenv :: proc(context_p: ^AppLaunchContext, variable: cstring, value: cstring) ---

    @(link_name = "g_app_launch_context_unsetenv")
    app_launch_context_unsetenv :: proc(context_p: ^AppLaunchContext, variable: cstring) ---

    @(link_name = "g_app_launch_context_get_environment")
    app_launch_context_get_environment :: proc(context_p: ^AppLaunchContext) -> ^cstring ---

    @(link_name = "g_app_launch_context_get_display")
    app_launch_context_get_display :: proc(context_p: ^AppLaunchContext, info: ^AppInfo, files: [^]glib.List) -> cstring ---

    @(link_name = "g_app_launch_context_get_startup_notify_id")
    app_launch_context_get_startup_notify_id :: proc(context_p: ^AppLaunchContext, info: ^AppInfo, files: [^]glib.List) -> cstring ---

    @(link_name = "g_app_launch_context_launch_failed")
    app_launch_context_launch_failed :: proc(context_p: ^AppLaunchContext, startup_notify_id: cstring) ---

    @(link_name = "g_app_info_monitor_get_type")
    app_info_monitor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_app_info_monitor_get")
    app_info_monitor_get :: proc() -> ^AppInfoMonitor ---

    @(link_name = "g_application_get_type")
    application_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_application_id_is_valid")
    application_id_is_valid :: proc(application_id: cstring) -> glib.boolean ---

    @(link_name = "g_application_new")
    application_new :: proc(application_id: cstring, flags: ApplicationFlags) -> ^Application ---

    @(link_name = "g_application_get_application_id")
    application_get_application_id :: proc(application: ^Application) -> cstring ---

    @(link_name = "g_application_set_application_id")
    application_set_application_id :: proc(application: ^Application, application_id: cstring) ---

    @(link_name = "g_application_get_version")
    application_get_version :: proc(application: ^Application) -> cstring ---

    @(link_name = "g_application_set_version")
    application_set_version :: proc(application: ^Application, version: cstring) ---

    @(link_name = "g_application_get_dbus_connection")
    application_get_dbus_connection :: proc(application: ^Application) -> ^DBusConnection ---

    @(link_name = "g_application_get_dbus_object_path")
    application_get_dbus_object_path :: proc(application: ^Application) -> cstring ---

    @(link_name = "g_application_get_inactivity_timeout")
    application_get_inactivity_timeout :: proc(application: ^Application) -> glib.uint_ ---

    @(link_name = "g_application_set_inactivity_timeout")
    application_set_inactivity_timeout :: proc(application: ^Application, inactivity_timeout: glib.uint_) ---

    @(link_name = "g_application_get_flags")
    application_get_flags :: proc(application: ^Application) -> ApplicationFlags ---

    @(link_name = "g_application_set_flags")
    application_set_flags :: proc(application: ^Application, flags: ApplicationFlags) ---

    @(link_name = "g_application_get_resource_base_path")
    application_get_resource_base_path :: proc(application: ^Application) -> cstring ---

    @(link_name = "g_application_set_resource_base_path")
    application_set_resource_base_path :: proc(application: ^Application, resource_path: cstring) ---

    @(link_name = "g_application_set_action_group")
    application_set_action_group :: proc(application: ^Application, action_group: ^ActionGroup) ---

    @(link_name = "g_application_add_main_option_entries")
    application_add_main_option_entries :: proc(application: ^Application, entries: [^]glib.OptionEntry) ---

    @(link_name = "g_application_add_main_option")
    application_add_main_option :: proc(application: ^Application, long_name: cstring, short_name: glib.char, flags: glib.OptionFlags, arg: glib.OptionArg, description: cstring, arg_description: cstring) ---

    @(link_name = "g_application_add_option_group")
    application_add_option_group :: proc(application: ^Application, group: ^glib.OptionGroup) ---

    @(link_name = "g_application_set_option_context_parameter_string")
    application_set_option_context_parameter_string :: proc(application: ^Application, parameter_string: cstring) ---

    @(link_name = "g_application_set_option_context_summary")
    application_set_option_context_summary :: proc(application: ^Application, summary: cstring) ---

    @(link_name = "g_application_set_option_context_description")
    application_set_option_context_description :: proc(application: ^Application, description: cstring) ---

    @(link_name = "g_application_get_is_registered")
    application_get_is_registered :: proc(application: ^Application) -> glib.boolean ---

    @(link_name = "g_application_get_is_remote")
    application_get_is_remote :: proc(application: ^Application) -> glib.boolean ---

    @(link_name = "g_application_register")
    application_register :: proc(application: ^Application, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_application_hold")
    application_hold :: proc(application: ^Application) ---

    @(link_name = "g_application_release")
    application_release :: proc(application: ^Application) ---

    @(link_name = "g_application_activate")
    application_activate :: proc(application: ^Application) ---

    @(link_name = "g_application_open")
    application_open :: proc(application: ^Application, files: [^]^File, n_files: glib.int_, hint: cstring) ---

    @(link_name = "g_application_run")
    application_run :: proc(application: ^Application, argc: i32, argv: ^cstring) -> i32 ---

    @(link_name = "g_application_quit")
    application_quit :: proc(application: ^Application) ---

    @(link_name = "g_application_get_default")
    application_get_default :: proc() -> ^Application ---

    @(link_name = "g_application_set_default")
    application_set_default :: proc(application: ^Application) ---

    @(link_name = "g_application_mark_busy")
    application_mark_busy :: proc(application: ^Application) ---

    @(link_name = "g_application_unmark_busy")
    application_unmark_busy :: proc(application: ^Application) ---

    @(link_name = "g_application_get_is_busy")
    application_get_is_busy :: proc(application: ^Application) -> glib.boolean ---

    @(link_name = "g_application_send_notification")
    application_send_notification :: proc(application: ^Application, id: cstring, notification: ^Notification) ---

    @(link_name = "g_application_withdraw_notification")
    application_withdraw_notification :: proc(application: ^Application, id: cstring) ---

    @(link_name = "g_application_bind_busy_property")
    application_bind_busy_property :: proc(application: ^Application, object: glib.pointer, property: cstring) ---

    @(link_name = "g_application_unbind_busy_property")
    application_unbind_busy_property :: proc(application: ^Application, object: glib.pointer, property: cstring) ---

    @(link_name = "g_application_command_line_get_type")
    application_command_line_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_application_command_line_get_arguments")
    application_command_line_get_arguments :: proc(cmdline: ^ApplicationCommandLine, argc: ^i32) -> ^cstring ---

    @(link_name = "g_application_command_line_get_options_dict")
    application_command_line_get_options_dict :: proc(cmdline: ^ApplicationCommandLine) -> ^glib.VariantDict ---

    @(link_name = "g_application_command_line_get_stdin")
    application_command_line_get_stdin :: proc(cmdline: ^ApplicationCommandLine) -> ^InputStream ---

    @(link_name = "g_application_command_line_get_environ")
    application_command_line_get_environ :: proc(cmdline: ^ApplicationCommandLine) -> ^cstring ---

    @(link_name = "g_application_command_line_getenv")
    application_command_line_getenv :: proc(cmdline: ^ApplicationCommandLine, name: cstring) -> cstring ---

    @(link_name = "g_application_command_line_get_cwd")
    application_command_line_get_cwd :: proc(cmdline: ^ApplicationCommandLine) -> cstring ---

    @(link_name = "g_application_command_line_get_is_remote")
    application_command_line_get_is_remote :: proc(cmdline: ^ApplicationCommandLine) -> glib.boolean ---

    @(link_name = "g_application_command_line_print_literal")
    application_command_line_print_literal :: proc(cmdline: ^ApplicationCommandLine, message: cstring) ---

    @(link_name = "g_application_command_line_printerr_literal")
    application_command_line_printerr_literal :: proc(cmdline: ^ApplicationCommandLine, message: cstring) ---

    @(link_name = "g_application_command_line_print")
    application_command_line_print :: proc(cmdline: ^ApplicationCommandLine, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_application_command_line_printerr")
    application_command_line_printerr :: proc(cmdline: ^ApplicationCommandLine, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_application_command_line_get_exit_status")
    application_command_line_get_exit_status :: proc(cmdline: ^ApplicationCommandLine) -> i32 ---

    @(link_name = "g_application_command_line_set_exit_status")
    application_command_line_set_exit_status :: proc(cmdline: ^ApplicationCommandLine, exit_status: i32) ---

    @(link_name = "g_application_command_line_get_platform_data")
    application_command_line_get_platform_data :: proc(cmdline: ^ApplicationCommandLine) -> ^glib.Variant ---

    @(link_name = "g_application_command_line_create_file_for_arg")
    application_command_line_create_file_for_arg :: proc(cmdline: ^ApplicationCommandLine, arg: cstring) -> ^File ---

    @(link_name = "g_application_command_line_done")
    application_command_line_done :: proc(cmdline: ^ApplicationCommandLine) ---

    @(link_name = "g_initable_get_type")
    initable_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_initable_init")
    initable_init :: proc(initable: ^Initable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_initable_new")
    initable_new :: proc(object_type: gobj.Type, cancellable: ^Cancellable, error: ^^glib.Error, first_property_name: cstring, #c_vararg var_args: ..any) -> glib.pointer ---

    @(link_name = "g_initable_newv")
    initable_newv :: proc(object_type: gobj.Type, n_parameters: glib.uint_, parameters: [^]gobj.Parameter, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.pointer ---

    @(link_name = "g_initable_new_valist")
    initable_new_valist :: proc(object_type: gobj.Type, first_property_name: cstring, var_args: libc.va_list, cancellable: ^Cancellable, error: ^^glib.Error) -> ^gobj.Object ---

    @(link_name = "g_async_initable_get_type")
    async_initable_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_async_initable_init_async")
    async_initable_init_async :: proc(initable: ^AsyncInitable, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_async_initable_init_finish")
    async_initable_init_finish :: proc(initable: ^AsyncInitable, res: [^]AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_async_initable_new_async")
    async_initable_new_async :: proc(object_type: gobj.Type, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_async_initable_newv_async")
    async_initable_newv_async :: proc(object_type: gobj.Type, n_parameters: glib.uint_, parameters: [^]gobj.Parameter, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_async_initable_new_valist_async")
    async_initable_new_valist_async :: proc(object_type: gobj.Type, first_property_name: cstring, var_args: libc.va_list, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_async_initable_new_finish")
    async_initable_new_finish :: proc(initable: ^AsyncInitable, res: [^]AsyncResult, error: ^^glib.Error) -> ^gobj.Object ---

    @(link_name = "g_async_result_get_type")
    async_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_async_result_get_user_data")
    async_result_get_user_data :: proc(res: [^]AsyncResult) -> glib.pointer ---

    @(link_name = "g_async_result_get_source_object")
    async_result_get_source_object :: proc(res: [^]AsyncResult) -> ^gobj.Object ---

    @(link_name = "g_async_result_legacy_propagate_error")
    async_result_legacy_propagate_error :: proc(res: [^]AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_async_result_is_tagged")
    async_result_is_tagged :: proc(res: [^]AsyncResult, source_tag: glib.pointer) -> glib.boolean ---

    @(link_name = "g_input_stream_get_type")
    input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_input_stream_read")
    input_stream_read :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_input_stream_read_all")
    input_stream_read_all :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, bytes_read: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_input_stream_read_bytes")
    input_stream_read_bytes :: proc(stream: ^InputStream, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_input_stream_skip")
    input_stream_skip :: proc(stream: ^InputStream, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_input_stream_close")
    input_stream_close :: proc(stream: ^InputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_input_stream_read_async")
    input_stream_read_async :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_input_stream_read_finish")
    input_stream_read_finish :: proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_input_stream_read_all_async")
    input_stream_read_all_async :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_input_stream_read_all_finish")
    input_stream_read_all_finish :: proc(stream: ^InputStream, result: ^AsyncResult, bytes_read: ^glib.size, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_input_stream_read_bytes_async")
    input_stream_read_bytes_async :: proc(stream: ^InputStream, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_input_stream_read_bytes_finish")
    input_stream_read_bytes_finish :: proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_input_stream_skip_async")
    input_stream_skip_async :: proc(stream: ^InputStream, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_input_stream_skip_finish")
    input_stream_skip_finish :: proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_input_stream_close_async")
    input_stream_close_async :: proc(stream: ^InputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_input_stream_close_finish")
    input_stream_close_finish :: proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_input_stream_is_closed")
    input_stream_is_closed :: proc(stream: ^InputStream) -> glib.boolean ---

    @(link_name = "g_input_stream_has_pending")
    input_stream_has_pending :: proc(stream: ^InputStream) -> glib.boolean ---

    @(link_name = "g_input_stream_set_pending")
    input_stream_set_pending :: proc(stream: ^InputStream, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_input_stream_clear_pending")
    input_stream_clear_pending :: proc(stream: ^InputStream) ---

    @(link_name = "g_filter_input_stream_get_type")
    filter_input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_filter_input_stream_get_base_stream")
    filter_input_stream_get_base_stream :: proc(stream: ^FilterInputStream) -> ^InputStream ---

    @(link_name = "g_filter_input_stream_get_close_base_stream")
    filter_input_stream_get_close_base_stream :: proc(stream: ^FilterInputStream) -> glib.boolean ---

    @(link_name = "g_filter_input_stream_set_close_base_stream")
    filter_input_stream_set_close_base_stream :: proc(stream: ^FilterInputStream, close_base: glib.boolean) ---

    @(link_name = "g_buffered_input_stream_get_type")
    buffered_input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_buffered_input_stream_new")
    buffered_input_stream_new :: proc(base_stream: ^InputStream) -> ^InputStream ---

    @(link_name = "g_buffered_input_stream_new_sized")
    buffered_input_stream_new_sized :: proc(base_stream: ^InputStream, size_p: glib.size) -> ^InputStream ---

    @(link_name = "g_buffered_input_stream_get_buffer_size")
    buffered_input_stream_get_buffer_size :: proc(stream: ^BufferedInputStream) -> glib.size ---

    @(link_name = "g_buffered_input_stream_set_buffer_size")
    buffered_input_stream_set_buffer_size :: proc(stream: ^BufferedInputStream, size_p: glib.size) ---

    @(link_name = "g_buffered_input_stream_get_available")
    buffered_input_stream_get_available :: proc(stream: ^BufferedInputStream) -> glib.size ---

    @(link_name = "g_buffered_input_stream_peek")
    buffered_input_stream_peek :: proc(stream: ^BufferedInputStream, buffer: rawptr, offset_p: glib.size, count: glib.size) -> glib.size ---

    @(link_name = "g_buffered_input_stream_peek_buffer")
    buffered_input_stream_peek_buffer :: proc(stream: ^BufferedInputStream, count: ^glib.size) -> rawptr ---

    @(link_name = "g_buffered_input_stream_fill")
    buffered_input_stream_fill :: proc(stream: ^BufferedInputStream, count: glib.ssize, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_buffered_input_stream_fill_async")
    buffered_input_stream_fill_async :: proc(stream: ^BufferedInputStream, count: glib.ssize, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_buffered_input_stream_fill_finish")
    buffered_input_stream_fill_finish :: proc(stream: ^BufferedInputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_buffered_input_stream_read_byte")
    buffered_input_stream_read_byte :: proc(stream: ^BufferedInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> i32 ---

    @(link_name = "g_output_stream_get_type")
    output_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_output_stream_write")
    output_stream_write :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_output_stream_write_all")
    output_stream_write_all :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_writev")
    output_stream_writev :: proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_writev_all")
    output_stream_writev_all :: proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_printf")
    output_stream_printf :: proc(stream: ^OutputStream, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error, format: cstring, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "g_output_stream_vprintf")
    output_stream_vprintf :: proc(stream: ^OutputStream, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error, format: cstring, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "g_output_stream_write_bytes")
    output_stream_write_bytes :: proc(stream: ^OutputStream, bytes: [^]glib.Bytes, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_output_stream_splice")
    output_stream_splice :: proc(stream: ^OutputStream, source: ^InputStream, flags: OutputStreamSpliceFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_output_stream_flush")
    output_stream_flush :: proc(stream: ^OutputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_close")
    output_stream_close :: proc(stream: ^OutputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_write_async")
    output_stream_write_async :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_output_stream_write_finish")
    output_stream_write_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_output_stream_write_all_async")
    output_stream_write_all_async :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_output_stream_write_all_finish")
    output_stream_write_all_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, bytes_written: ^glib.size, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_writev_async")
    output_stream_writev_async :: proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_output_stream_writev_finish")
    output_stream_writev_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, bytes_written: ^glib.size, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_writev_all_async")
    output_stream_writev_all_async :: proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_output_stream_writev_all_finish")
    output_stream_writev_all_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, bytes_written: ^glib.size, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_write_bytes_async")
    output_stream_write_bytes_async :: proc(stream: ^OutputStream, bytes: [^]glib.Bytes, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_output_stream_write_bytes_finish")
    output_stream_write_bytes_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_output_stream_splice_async")
    output_stream_splice_async :: proc(stream: ^OutputStream, source: ^InputStream, flags: OutputStreamSpliceFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_output_stream_splice_finish")
    output_stream_splice_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_output_stream_flush_async")
    output_stream_flush_async :: proc(stream: ^OutputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_output_stream_flush_finish")
    output_stream_flush_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_close_async")
    output_stream_close_async :: proc(stream: ^OutputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_output_stream_close_finish")
    output_stream_close_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_is_closed")
    output_stream_is_closed :: proc(stream: ^OutputStream) -> glib.boolean ---

    @(link_name = "g_output_stream_is_closing")
    output_stream_is_closing :: proc(stream: ^OutputStream) -> glib.boolean ---

    @(link_name = "g_output_stream_has_pending")
    output_stream_has_pending :: proc(stream: ^OutputStream) -> glib.boolean ---

    @(link_name = "g_output_stream_set_pending")
    output_stream_set_pending :: proc(stream: ^OutputStream, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_output_stream_clear_pending")
    output_stream_clear_pending :: proc(stream: ^OutputStream) ---

    @(link_name = "g_filter_output_stream_get_type")
    filter_output_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_filter_output_stream_get_base_stream")
    filter_output_stream_get_base_stream :: proc(stream: ^FilterOutputStream) -> ^OutputStream ---

    @(link_name = "g_filter_output_stream_get_close_base_stream")
    filter_output_stream_get_close_base_stream :: proc(stream: ^FilterOutputStream) -> glib.boolean ---

    @(link_name = "g_filter_output_stream_set_close_base_stream")
    filter_output_stream_set_close_base_stream :: proc(stream: ^FilterOutputStream, close_base: glib.boolean) ---

    @(link_name = "g_buffered_output_stream_get_type")
    buffered_output_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_buffered_output_stream_new")
    buffered_output_stream_new :: proc(base_stream: ^OutputStream) -> ^OutputStream ---

    @(link_name = "g_buffered_output_stream_new_sized")
    buffered_output_stream_new_sized :: proc(base_stream: ^OutputStream, size_p: glib.size) -> ^OutputStream ---

    @(link_name = "g_buffered_output_stream_get_buffer_size")
    buffered_output_stream_get_buffer_size :: proc(stream: ^BufferedOutputStream) -> glib.size ---

    @(link_name = "g_buffered_output_stream_set_buffer_size")
    buffered_output_stream_set_buffer_size :: proc(stream: ^BufferedOutputStream, size_p: glib.size) ---

    @(link_name = "g_buffered_output_stream_get_auto_grow")
    buffered_output_stream_get_auto_grow :: proc(stream: ^BufferedOutputStream) -> glib.boolean ---

    @(link_name = "g_buffered_output_stream_set_auto_grow")
    buffered_output_stream_set_auto_grow :: proc(stream: ^BufferedOutputStream, auto_grow: glib.boolean) ---

    @(link_name = "g_bytes_icon_get_type")
    bytes_icon_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_bytes_icon_new")
    bytes_icon_new :: proc(bytes: [^]glib.Bytes) -> ^Icon ---

    @(link_name = "g_bytes_icon_get_bytes")
    bytes_icon_get_bytes :: proc(icon: ^BytesIcon) -> ^glib.Bytes ---

    @(link_name = "g_cancellable_get_type")
    cancellable_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_cancellable_new")
    cancellable_new :: proc() -> ^Cancellable ---

    @(link_name = "g_cancellable_is_cancelled")
    cancellable_is_cancelled :: proc(cancellable: ^Cancellable) -> glib.boolean ---

    @(link_name = "g_cancellable_set_error_if_cancelled")
    cancellable_set_error_if_cancelled :: proc(cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_cancellable_get_fd")
    cancellable_get_fd :: proc(cancellable: ^Cancellable) -> i32 ---

    @(link_name = "g_cancellable_make_pollfd")
    cancellable_make_pollfd :: proc(cancellable: ^Cancellable, pollfd: ^glib.PollFD) -> glib.boolean ---

    @(link_name = "g_cancellable_release_fd")
    cancellable_release_fd :: proc(cancellable: ^Cancellable) ---

    @(link_name = "g_cancellable_source_new")
    cancellable_source_new :: proc(cancellable: ^Cancellable) -> ^glib.Source ---

    @(link_name = "g_cancellable_get_current")
    cancellable_get_current :: proc() -> ^Cancellable ---

    @(link_name = "g_cancellable_push_current")
    cancellable_push_current :: proc(cancellable: ^Cancellable) ---

    @(link_name = "g_cancellable_pop_current")
    cancellable_pop_current :: proc(cancellable: ^Cancellable) ---

    @(link_name = "g_cancellable_reset")
    cancellable_reset :: proc(cancellable: ^Cancellable) ---

    @(link_name = "g_cancellable_connect")
    cancellable_connect :: proc(cancellable: ^Cancellable, callback: gobj.Callback, data: glib.pointer, data_destroy_func: glib.DestroyNotify) -> glib.ulong ---

    @(link_name = "g_cancellable_disconnect")
    cancellable_disconnect :: proc(cancellable: ^Cancellable, handler_id: glib.ulong) ---

    @(link_name = "g_cancellable_cancel")
    cancellable_cancel :: proc(cancellable: ^Cancellable) ---

    @(link_name = "g_converter_get_type")
    converter_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_converter_convert")
    converter_convert :: proc(converter: ^Converter, inbuf: rawptr, inbuf_size: glib.size, outbuf: rawptr, outbuf_size: glib.size, flags: ConverterFlags, bytes_read: ^glib.size, bytes_written: ^glib.size, error: ^^glib.Error) -> ConverterResult ---

    @(link_name = "g_converter_reset")
    converter_reset :: proc(converter: ^Converter) ---

    @(link_name = "g_converter_convert_bytes")
    converter_convert_bytes :: proc(converter: ^Converter, bytes: [^]glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_charset_converter_get_type")
    charset_converter_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_charset_converter_new")
    charset_converter_new :: proc(to_charset: cstring, from_charset: cstring, error: ^^glib.Error) -> ^CharsetConverter ---

    @(link_name = "g_charset_converter_set_use_fallback")
    charset_converter_set_use_fallback :: proc(converter: ^CharsetConverter, use_fallback: glib.boolean) ---

    @(link_name = "g_charset_converter_get_use_fallback")
    charset_converter_get_use_fallback :: proc(converter: ^CharsetConverter) -> glib.boolean ---

    @(link_name = "g_charset_converter_get_num_fallbacks")
    charset_converter_get_num_fallbacks :: proc(converter: ^CharsetConverter) -> glib.uint_ ---

    @(link_name = "g_content_type_equals")
    content_type_equals :: proc(type1: cstring, type2: cstring) -> glib.boolean ---

    @(link_name = "g_content_type_is_a")
    content_type_is_a :: proc(type: cstring, supertype: cstring) -> glib.boolean ---

    @(link_name = "g_content_type_is_mime_type")
    content_type_is_mime_type :: proc(type: cstring, mime_type: cstring) -> glib.boolean ---

    @(link_name = "g_content_type_is_unknown")
    content_type_is_unknown :: proc(type: cstring) -> glib.boolean ---

    @(link_name = "g_content_type_get_description")
    content_type_get_description :: proc(type: cstring) -> cstring ---

    @(link_name = "g_content_type_get_mime_type")
    content_type_get_mime_type :: proc(type: cstring) -> cstring ---

    @(link_name = "g_content_type_get_icon")
    content_type_get_icon :: proc(type: cstring) -> ^Icon ---

    @(link_name = "g_content_type_get_symbolic_icon")
    content_type_get_symbolic_icon :: proc(type: cstring) -> ^Icon ---

    @(link_name = "g_content_type_get_generic_icon_name")
    content_type_get_generic_icon_name :: proc(type: cstring) -> cstring ---

    @(link_name = "g_content_type_can_be_executable")
    content_type_can_be_executable :: proc(type: cstring) -> glib.boolean ---

    @(link_name = "g_content_type_from_mime_type")
    content_type_from_mime_type :: proc(mime_type: cstring) -> cstring ---

    @(link_name = "g_content_type_guess")
    content_type_guess :: proc(filename: cstring, data: ^glib.uchar, data_size: glib.size, result_uncertain: ^glib.boolean) -> cstring ---

    @(link_name = "g_content_type_guess_for_tree")
    content_type_guess_for_tree :: proc(root: ^File) -> ^cstring ---

    @(link_name = "g_content_types_get_registered")
    content_types_get_registered :: proc() -> ^glib.List ---

    @(link_name = "g_content_type_get_mime_dirs")
    content_type_get_mime_dirs :: proc() -> ^cstring ---

    @(link_name = "g_content_type_set_mime_dirs")
    content_type_set_mime_dirs :: proc(dirs: [^]cstring) ---

    @(link_name = "g_converter_input_stream_get_type")
    converter_input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_converter_input_stream_new")
    converter_input_stream_new :: proc(base_stream: ^InputStream, converter: ^Converter) -> ^InputStream ---

    @(link_name = "g_converter_input_stream_get_converter")
    converter_input_stream_get_converter :: proc(converter_stream: ^ConverterInputStream) -> ^Converter ---

    @(link_name = "g_converter_output_stream_get_type")
    converter_output_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_converter_output_stream_new")
    converter_output_stream_new :: proc(base_stream: ^OutputStream, converter: ^Converter) -> ^OutputStream ---

    @(link_name = "g_converter_output_stream_get_converter")
    converter_output_stream_get_converter :: proc(converter_stream: ^ConverterOutputStream) -> ^Converter ---

    @(link_name = "g_credentials_get_type")
    credentials_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_credentials_new")
    credentials_new :: proc() -> ^Credentials ---

    @(link_name = "g_credentials_to_string")
    credentials_to_string :: proc(credentials: [^]Credentials) -> cstring ---

    @(link_name = "g_credentials_get_native")
    credentials_get_native :: proc(credentials: [^]Credentials, native_type: CredentialsType) -> glib.pointer ---

    @(link_name = "g_credentials_set_native")
    credentials_set_native :: proc(credentials: [^]Credentials, native_type: CredentialsType, native: glib.pointer) ---

    @(link_name = "g_credentials_is_same_user")
    credentials_is_same_user :: proc(credentials: [^]Credentials, other_credentials: [^]Credentials, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_credentials_get_unix_pid")
    credentials_get_unix_pid :: proc(credentials: [^]Credentials, error: ^^glib.Error) -> linux.Pid ---

    @(link_name = "g_credentials_get_unix_user")
    credentials_get_unix_user :: proc(credentials: [^]Credentials, error: ^^glib.Error) -> linux.Uid ---

    @(link_name = "g_credentials_set_unix_user")
    credentials_set_unix_user :: proc(credentials: [^]Credentials, uid: linux.Uid, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_datagram_based_get_type")
    datagram_based_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_datagram_based_receive_messages")
    datagram_based_receive_messages :: proc(datagram_based: ^DatagramBased, messages: [^]InputMessage, num_messages: glib.uint_, flags: glib.int_, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---

    @(link_name = "g_datagram_based_send_messages")
    datagram_based_send_messages :: proc(datagram_based: ^DatagramBased, messages: [^]OutputMessage, num_messages: glib.uint_, flags: glib.int_, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---

    @(link_name = "g_datagram_based_create_source")
    datagram_based_create_source :: proc(datagram_based: ^DatagramBased, condition: glib.IOCondition, cancellable: ^Cancellable) -> ^glib.Source ---

    @(link_name = "g_datagram_based_condition_check")
    datagram_based_condition_check :: proc(datagram_based: ^DatagramBased, condition: glib.IOCondition) -> glib.IOCondition ---

    @(link_name = "g_datagram_based_condition_wait")
    datagram_based_condition_wait :: proc(datagram_based: ^DatagramBased, condition: glib.IOCondition, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_data_input_stream_get_type")
    data_input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_data_input_stream_new")
    data_input_stream_new :: proc(base_stream: ^InputStream) -> ^DataInputStream ---

    @(link_name = "g_data_input_stream_set_byte_order")
    data_input_stream_set_byte_order :: proc(stream: ^DataInputStream, order: DataStreamByteOrder) ---

    @(link_name = "g_data_input_stream_get_byte_order")
    data_input_stream_get_byte_order :: proc(stream: ^DataInputStream) -> DataStreamByteOrder ---

    @(link_name = "g_data_input_stream_set_newline_type")
    data_input_stream_set_newline_type :: proc(stream: ^DataInputStream, type: DataStreamNewlineType) ---

    @(link_name = "g_data_input_stream_get_newline_type")
    data_input_stream_get_newline_type :: proc(stream: ^DataInputStream) -> DataStreamNewlineType ---

    @(link_name = "g_data_input_stream_read_byte")
    data_input_stream_read_byte :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.uchar ---

    @(link_name = "g_data_input_stream_read_int16")
    data_input_stream_read_int16 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int16 ---

    @(link_name = "g_data_input_stream_read_uint16")
    data_input_stream_read_uint16 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.uint16 ---

    @(link_name = "g_data_input_stream_read_int32")
    data_input_stream_read_int32 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int32 ---

    @(link_name = "g_data_input_stream_read_uint32")
    data_input_stream_read_uint32 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.uint32 ---

    @(link_name = "g_data_input_stream_read_int64")
    data_input_stream_read_int64 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int64 ---

    @(link_name = "g_data_input_stream_read_uint64")
    data_input_stream_read_uint64 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.uint64 ---

    @(link_name = "g_data_input_stream_read_line")
    data_input_stream_read_line :: proc(stream: ^DataInputStream, length: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_data_input_stream_read_line_utf8")
    data_input_stream_read_line_utf8 :: proc(stream: ^DataInputStream, length: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_data_input_stream_read_line_async")
    data_input_stream_read_line_async :: proc(stream: ^DataInputStream, io_priority: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_data_input_stream_read_line_finish")
    data_input_stream_read_line_finish :: proc(stream: ^DataInputStream, result: ^AsyncResult, length: ^glib.size, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_data_input_stream_read_line_finish_utf8")
    data_input_stream_read_line_finish_utf8 :: proc(stream: ^DataInputStream, result: ^AsyncResult, length: ^glib.size, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_data_input_stream_read_until")
    data_input_stream_read_until :: proc(stream: ^DataInputStream, stop_chars: [^]glib.char, length: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_data_input_stream_read_until_async")
    data_input_stream_read_until_async :: proc(stream: ^DataInputStream, stop_chars: [^]glib.char, io_priority: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_data_input_stream_read_until_finish")
    data_input_stream_read_until_finish :: proc(stream: ^DataInputStream, result: ^AsyncResult, length: ^glib.size, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_data_input_stream_read_upto")
    data_input_stream_read_upto :: proc(stream: ^DataInputStream, stop_chars: [^]glib.char, stop_chars_len: glib.ssize, length: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_data_input_stream_read_upto_async")
    data_input_stream_read_upto_async :: proc(stream: ^DataInputStream, stop_chars: [^]glib.char, stop_chars_len: glib.ssize, io_priority: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_data_input_stream_read_upto_finish")
    data_input_stream_read_upto_finish :: proc(stream: ^DataInputStream, result: ^AsyncResult, length: ^glib.size, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_data_output_stream_get_type")
    data_output_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_data_output_stream_new")
    data_output_stream_new :: proc(base_stream: ^OutputStream) -> ^DataOutputStream ---

    @(link_name = "g_data_output_stream_set_byte_order")
    data_output_stream_set_byte_order :: proc(stream: ^DataOutputStream, order: DataStreamByteOrder) ---

    @(link_name = "g_data_output_stream_get_byte_order")
    data_output_stream_get_byte_order :: proc(stream: ^DataOutputStream) -> DataStreamByteOrder ---

    @(link_name = "g_data_output_stream_put_byte")
    data_output_stream_put_byte :: proc(stream: ^DataOutputStream, data: glib.uchar, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_data_output_stream_put_int16")
    data_output_stream_put_int16 :: proc(stream: ^DataOutputStream, data: glib.int16, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_data_output_stream_put_uint16")
    data_output_stream_put_uint16 :: proc(stream: ^DataOutputStream, data: glib.uint16, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_data_output_stream_put_int32")
    data_output_stream_put_int32 :: proc(stream: ^DataOutputStream, data: glib.int32, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_data_output_stream_put_uint32")
    data_output_stream_put_uint32 :: proc(stream: ^DataOutputStream, data: glib.uint32, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_data_output_stream_put_int64")
    data_output_stream_put_int64 :: proc(stream: ^DataOutputStream, data: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_data_output_stream_put_uint64")
    data_output_stream_put_uint64 :: proc(stream: ^DataOutputStream, data: glib.uint64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_data_output_stream_put_string")
    data_output_stream_put_string :: proc(stream: ^DataOutputStream, str: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_action_group_get_type")
    dbus_action_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_action_group_get")
    dbus_action_group_get :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring) -> ^DBusActionGroup ---

    @(link_name = "g_dbus_address_escape_value")
    dbus_address_escape_value :: proc(string_p: cstring) -> cstring ---

    @(link_name = "g_dbus_is_address")
    dbus_is_address :: proc(string_p: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_is_supported_address")
    dbus_is_supported_address :: proc(string_p: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_address_get_stream")
    dbus_address_get_stream :: proc(address: [^]glib.char, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_address_get_stream_finish")
    dbus_address_get_stream_finish :: proc(res: [^]AsyncResult, out_guid: ^cstring, error: ^^glib.Error) -> ^IOStream ---

    @(link_name = "g_dbus_address_get_stream_sync")
    dbus_address_get_stream_sync :: proc(address: [^]glib.char, out_guid: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^IOStream ---

    @(link_name = "g_dbus_address_get_for_bus_sync")
    dbus_address_get_for_bus_sync :: proc(bus_type: BusType, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_dbus_auth_observer_get_type")
    dbus_auth_observer_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_auth_observer_new")
    dbus_auth_observer_new :: proc() -> ^DBusAuthObserver ---

    @(link_name = "g_dbus_auth_observer_authorize_authenticated_peer")
    dbus_auth_observer_authorize_authenticated_peer :: proc(observer: ^DBusAuthObserver, stream: ^IOStream, credentials: [^]Credentials) -> glib.boolean ---

    @(link_name = "g_dbus_auth_observer_allow_mechanism")
    dbus_auth_observer_allow_mechanism :: proc(observer: ^DBusAuthObserver, mechanism: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_connection_get_type")
    dbus_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_bus_get")
    bus_get :: proc(bus_type: BusType, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_bus_get_finish")
    bus_get_finish :: proc(res: [^]AsyncResult, error: ^^glib.Error) -> ^DBusConnection ---

    @(link_name = "g_bus_get_sync")
    bus_get_sync :: proc(bus_type: BusType, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusConnection ---

    @(link_name = "g_dbus_connection_new")
    dbus_connection_new :: proc(stream: ^IOStream, guid: cstring, flags: DBusConnectionFlags, observer: ^DBusAuthObserver, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_new_finish")
    dbus_connection_new_finish :: proc(res: [^]AsyncResult, error: ^^glib.Error) -> ^DBusConnection ---

    @(link_name = "g_dbus_connection_new_sync")
    dbus_connection_new_sync :: proc(stream: ^IOStream, guid: cstring, flags: DBusConnectionFlags, observer: ^DBusAuthObserver, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusConnection ---

    @(link_name = "g_dbus_connection_new_for_address")
    dbus_connection_new_for_address :: proc(address: [^]glib.char, flags: DBusConnectionFlags, observer: ^DBusAuthObserver, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_new_for_address_finish")
    dbus_connection_new_for_address_finish :: proc(res: [^]AsyncResult, error: ^^glib.Error) -> ^DBusConnection ---

    @(link_name = "g_dbus_connection_new_for_address_sync")
    dbus_connection_new_for_address_sync :: proc(address: [^]glib.char, flags: DBusConnectionFlags, observer: ^DBusAuthObserver, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusConnection ---

    @(link_name = "g_dbus_connection_start_message_processing")
    dbus_connection_start_message_processing :: proc(connection: ^DBusConnection) ---

    @(link_name = "g_dbus_connection_is_closed")
    dbus_connection_is_closed :: proc(connection: ^DBusConnection) -> glib.boolean ---

    @(link_name = "g_dbus_connection_get_stream")
    dbus_connection_get_stream :: proc(connection: ^DBusConnection) -> ^IOStream ---

    @(link_name = "g_dbus_connection_get_guid")
    dbus_connection_get_guid :: proc(connection: ^DBusConnection) -> cstring ---

    @(link_name = "g_dbus_connection_get_unique_name")
    dbus_connection_get_unique_name :: proc(connection: ^DBusConnection) -> cstring ---

    @(link_name = "g_dbus_connection_get_peer_credentials")
    dbus_connection_get_peer_credentials :: proc(connection: ^DBusConnection) -> ^Credentials ---

    @(link_name = "g_dbus_connection_get_last_serial")
    dbus_connection_get_last_serial :: proc(connection: ^DBusConnection) -> glib.uint32 ---

    @(link_name = "g_dbus_connection_get_exit_on_close")
    dbus_connection_get_exit_on_close :: proc(connection: ^DBusConnection) -> glib.boolean ---

    @(link_name = "g_dbus_connection_set_exit_on_close")
    dbus_connection_set_exit_on_close :: proc(connection: ^DBusConnection, exit_on_close: glib.boolean) ---

    @(link_name = "g_dbus_connection_get_capabilities")
    dbus_connection_get_capabilities :: proc(connection: ^DBusConnection) -> DBusCapabilityFlags ---

    @(link_name = "g_dbus_connection_get_flags")
    dbus_connection_get_flags :: proc(connection: ^DBusConnection) -> DBusConnectionFlags ---

    @(link_name = "g_dbus_connection_close")
    dbus_connection_close :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_close_finish")
    dbus_connection_close_finish :: proc(connection: ^DBusConnection, res: [^]AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_connection_close_sync")
    dbus_connection_close_sync :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_connection_flush")
    dbus_connection_flush :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_flush_finish")
    dbus_connection_flush_finish :: proc(connection: ^DBusConnection, res: [^]AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_connection_flush_sync")
    dbus_connection_flush_sync :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_connection_send_message")
    dbus_connection_send_message :: proc(connection: ^DBusConnection, message: ^DBusMessage, flags: DBusSendMessageFlags, out_serial: ^glib.uint32, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_connection_send_message_with_reply")
    dbus_connection_send_message_with_reply :: proc(connection: ^DBusConnection, message: ^DBusMessage, flags: DBusSendMessageFlags, timeout_msec: glib.int_, out_serial: ^glib.uint32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_send_message_with_reply_finish")
    dbus_connection_send_message_with_reply_finish :: proc(connection: ^DBusConnection, res: [^]AsyncResult, error: ^^glib.Error) -> ^DBusMessage ---

    @(link_name = "g_dbus_connection_send_message_with_reply_sync")
    dbus_connection_send_message_with_reply_sync :: proc(connection: ^DBusConnection, message: ^DBusMessage, flags: DBusSendMessageFlags, timeout_msec: glib.int_, out_serial: ^glib.uint32, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusMessage ---

    @(link_name = "g_dbus_connection_emit_signal")
    dbus_connection_emit_signal :: proc(connection: ^DBusConnection, destination_bus_name: cstring, object_path: cstring, interface_name: cstring, signal_name: cstring, parameters: [^]glib.Variant, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_connection_call")
    dbus_connection_call :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_call_finish")
    dbus_connection_call_finish :: proc(connection: ^DBusConnection, res: [^]AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_connection_call_sync")
    dbus_connection_call_sync :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list")
    dbus_connection_call_with_unix_fd_list :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list_finish")
    dbus_connection_call_with_unix_fd_list_finish :: proc(connection: ^DBusConnection, out_fd_list: ^^UnixFDList, res: [^]AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_connection_call_with_unix_fd_list_sync")
    dbus_connection_call_with_unix_fd_list_sync :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: [^]glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, out_fd_list: ^^UnixFDList, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_connection_register_object")
    dbus_connection_register_object :: proc(connection: ^DBusConnection, object_path: cstring, interface_info: ^DBusInterfaceInfo, vtable: ^DBusInterfaceVTable, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify, error: ^^glib.Error) -> glib.uint_ ---

    @(link_name = "g_dbus_connection_register_object_with_closures")
    dbus_connection_register_object_with_closures :: proc(connection: ^DBusConnection, object_path: cstring, interface_info: ^DBusInterfaceInfo, method_call_closure: ^gobj.Closure, get_property_closure: ^gobj.Closure, set_property_closure: ^gobj.Closure, error: ^^glib.Error) -> glib.uint_ ---

    @(link_name = "g_dbus_connection_unregister_object")
    dbus_connection_unregister_object :: proc(connection: ^DBusConnection, registration_id: glib.uint_) -> glib.boolean ---

    @(link_name = "g_dbus_connection_register_subtree")
    dbus_connection_register_subtree :: proc(connection: ^DBusConnection, object_path: cstring, vtable: ^DBusSubtreeVTable, flags: DBusSubtreeFlags, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify, error: ^^glib.Error) -> glib.uint_ ---

    @(link_name = "g_dbus_connection_unregister_subtree")
    dbus_connection_unregister_subtree :: proc(connection: ^DBusConnection, registration_id: glib.uint_) -> glib.boolean ---

    @(link_name = "g_dbus_connection_signal_subscribe")
    dbus_connection_signal_subscribe :: proc(connection: ^DBusConnection, sender: cstring, interface_name: cstring, member: cstring, object_path: cstring, arg0: cstring, flags: DBusSignalFlags, callback: DBusSignalCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---

    @(link_name = "g_dbus_connection_signal_unsubscribe")
    dbus_connection_signal_unsubscribe :: proc(connection: ^DBusConnection, subscription_id: glib.uint_) ---

    @(link_name = "g_dbus_connection_add_filter")
    dbus_connection_add_filter :: proc(connection: ^DBusConnection, filter_function: DBusMessageFilterFunction, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---

    @(link_name = "g_dbus_connection_remove_filter")
    dbus_connection_remove_filter :: proc(connection: ^DBusConnection, filter_id: glib.uint_) ---

    @(link_name = "g_dbus_error_quark")
    dbus_error_quark :: proc() -> glib.Quark ---

    @(link_name = "g_dbus_error_is_remote_error")
    dbus_error_is_remote_error :: proc(error: ^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_error_get_remote_error")
    dbus_error_get_remote_error :: proc(error: ^glib.Error) -> cstring ---

    @(link_name = "g_dbus_error_strip_remote_error")
    dbus_error_strip_remote_error :: proc(error: ^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_error_register_error")
    dbus_error_register_error :: proc(error_domain: glib.Quark, error_code: glib.int_, dbus_error_name: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_error_unregister_error")
    dbus_error_unregister_error :: proc(error_domain: glib.Quark, error_code: glib.int_, dbus_error_name: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_error_register_error_domain")
    dbus_error_register_error_domain :: proc(error_domain_quark_name: cstring, quark_volatile: ^glib.size, entries: [^]DBusErrorEntry, num_entries: glib.uint_) ---

    @(link_name = "g_dbus_error_new_for_dbus_error")
    dbus_error_new_for_dbus_error :: proc(dbus_error_name: cstring, dbus_error_message: cstring) -> ^glib.Error ---

    @(link_name = "g_dbus_error_set_dbus_error")
    dbus_error_set_dbus_error :: proc(error: ^^glib.Error, dbus_error_name: cstring, dbus_error_message: cstring, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_dbus_error_set_dbus_error_valist")
    dbus_error_set_dbus_error_valist :: proc(error: ^^glib.Error, dbus_error_name: cstring, dbus_error_message: cstring, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_dbus_error_encode_gerror")
    dbus_error_encode_gerror :: proc(error: ^glib.Error) -> cstring ---

    @(link_name = "g_dbus_interface_get_type")
    dbus_interface_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_interface_get_info")
    dbus_interface_get_info :: proc(interface_: ^DBusInterface) -> ^DBusInterfaceInfo ---

    @(link_name = "g_dbus_interface_get_object")
    dbus_interface_get_object :: proc(interface_: ^DBusInterface) -> ^DBusObject ---

    @(link_name = "g_dbus_interface_set_object")
    dbus_interface_set_object :: proc(interface_: ^DBusInterface, object: ^DBusObject) ---

    @(link_name = "g_dbus_interface_dup_object")
    dbus_interface_dup_object :: proc(interface_: ^DBusInterface) -> ^DBusObject ---

    @(link_name = "g_dbus_interface_skeleton_get_type")
    dbus_interface_skeleton_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_interface_skeleton_get_flags")
    dbus_interface_skeleton_get_flags :: proc(interface_: ^DBusInterfaceSkeleton) -> DBusInterfaceSkeletonFlags ---

    @(link_name = "g_dbus_interface_skeleton_set_flags")
    dbus_interface_skeleton_set_flags :: proc(interface_: ^DBusInterfaceSkeleton, flags: DBusInterfaceSkeletonFlags) ---

    @(link_name = "g_dbus_interface_skeleton_get_info")
    dbus_interface_skeleton_get_info :: proc(interface_: ^DBusInterfaceSkeleton) -> ^DBusInterfaceInfo ---

    @(link_name = "g_dbus_interface_skeleton_get_vtable")
    dbus_interface_skeleton_get_vtable :: proc(interface_: ^DBusInterfaceSkeleton) -> ^DBusInterfaceVTable ---

    @(link_name = "g_dbus_interface_skeleton_get_properties")
    dbus_interface_skeleton_get_properties :: proc(interface_: ^DBusInterfaceSkeleton) -> ^glib.Variant ---

    @(link_name = "g_dbus_interface_skeleton_flush")
    dbus_interface_skeleton_flush :: proc(interface_: ^DBusInterfaceSkeleton) ---

    @(link_name = "g_dbus_interface_skeleton_export")
    dbus_interface_skeleton_export :: proc(interface_: ^DBusInterfaceSkeleton, connection: ^DBusConnection, object_path: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_interface_skeleton_unexport")
    dbus_interface_skeleton_unexport :: proc(interface_: ^DBusInterfaceSkeleton) ---

    @(link_name = "g_dbus_interface_skeleton_unexport_from_connection")
    dbus_interface_skeleton_unexport_from_connection :: proc(interface_: ^DBusInterfaceSkeleton, connection: ^DBusConnection) ---

    @(link_name = "g_dbus_interface_skeleton_get_connection")
    dbus_interface_skeleton_get_connection :: proc(interface_: ^DBusInterfaceSkeleton) -> ^DBusConnection ---

    @(link_name = "g_dbus_interface_skeleton_get_connections")
    dbus_interface_skeleton_get_connections :: proc(interface_: ^DBusInterfaceSkeleton) -> ^glib.List ---

    @(link_name = "g_dbus_interface_skeleton_has_connection")
    dbus_interface_skeleton_has_connection :: proc(interface_: ^DBusInterfaceSkeleton, connection: ^DBusConnection) -> glib.boolean ---

    @(link_name = "g_dbus_interface_skeleton_get_object_path")
    dbus_interface_skeleton_get_object_path :: proc(interface_: ^DBusInterfaceSkeleton) -> cstring ---

    @(link_name = "g_dbus_annotation_info_lookup")
    dbus_annotation_info_lookup :: proc(annotations: [^]^DBusAnnotationInfo, name: cstring) -> cstring ---

    @(link_name = "g_dbus_interface_info_lookup_method")
    dbus_interface_info_lookup_method :: proc(info: ^DBusInterfaceInfo, name: cstring) -> ^DBusMethodInfo ---

    @(link_name = "g_dbus_interface_info_lookup_signal")
    dbus_interface_info_lookup_signal :: proc(info: ^DBusInterfaceInfo, name: cstring) -> ^DBusSignalInfo ---

    @(link_name = "g_dbus_interface_info_lookup_property")
    dbus_interface_info_lookup_property :: proc(info: ^DBusInterfaceInfo, name: cstring) -> ^DBusPropertyInfo ---

    @(link_name = "g_dbus_interface_info_cache_build")
    dbus_interface_info_cache_build :: proc(info: ^DBusInterfaceInfo) ---

    @(link_name = "g_dbus_interface_info_cache_release")
    dbus_interface_info_cache_release :: proc(info: ^DBusInterfaceInfo) ---

    @(link_name = "g_dbus_interface_info_generate_xml")
    dbus_interface_info_generate_xml :: proc(info: ^DBusInterfaceInfo, indent: glib.uint_, string_builder: ^glib.String) ---

    @(link_name = "g_dbus_node_info_new_for_xml")
    dbus_node_info_new_for_xml :: proc(xml_data: cstring, error: ^^glib.Error) -> ^DBusNodeInfo ---

    @(link_name = "g_dbus_node_info_lookup_interface")
    dbus_node_info_lookup_interface :: proc(info: ^DBusNodeInfo, name: cstring) -> ^DBusInterfaceInfo ---

    @(link_name = "g_dbus_node_info_generate_xml")
    dbus_node_info_generate_xml :: proc(info: ^DBusNodeInfo, indent: glib.uint_, string_builder: ^glib.String) ---

    @(link_name = "g_dbus_node_info_ref")
    dbus_node_info_ref :: proc(info: ^DBusNodeInfo) -> ^DBusNodeInfo ---

    @(link_name = "g_dbus_interface_info_ref")
    dbus_interface_info_ref :: proc(info: ^DBusInterfaceInfo) -> ^DBusInterfaceInfo ---

    @(link_name = "g_dbus_method_info_ref")
    dbus_method_info_ref :: proc(info: ^DBusMethodInfo) -> ^DBusMethodInfo ---

    @(link_name = "g_dbus_signal_info_ref")
    dbus_signal_info_ref :: proc(info: ^DBusSignalInfo) -> ^DBusSignalInfo ---

    @(link_name = "g_dbus_property_info_ref")
    dbus_property_info_ref :: proc(info: ^DBusPropertyInfo) -> ^DBusPropertyInfo ---

    @(link_name = "g_dbus_arg_info_ref")
    dbus_arg_info_ref :: proc(info: ^DBusArgInfo) -> ^DBusArgInfo ---

    @(link_name = "g_dbus_annotation_info_ref")
    dbus_annotation_info_ref :: proc(info: ^DBusAnnotationInfo) -> ^DBusAnnotationInfo ---

    @(link_name = "g_dbus_node_info_unref")
    dbus_node_info_unref :: proc(info: ^DBusNodeInfo) ---

    @(link_name = "g_dbus_interface_info_unref")
    dbus_interface_info_unref :: proc(info: ^DBusInterfaceInfo) ---

    @(link_name = "g_dbus_method_info_unref")
    dbus_method_info_unref :: proc(info: ^DBusMethodInfo) ---

    @(link_name = "g_dbus_signal_info_unref")
    dbus_signal_info_unref :: proc(info: ^DBusSignalInfo) ---

    @(link_name = "g_dbus_property_info_unref")
    dbus_property_info_unref :: proc(info: ^DBusPropertyInfo) ---

    @(link_name = "g_dbus_arg_info_unref")
    dbus_arg_info_unref :: proc(info: ^DBusArgInfo) ---

    @(link_name = "g_dbus_annotation_info_unref")
    dbus_annotation_info_unref :: proc(info: ^DBusAnnotationInfo) ---

    @(link_name = "g_dbus_node_info_get_type")
    dbus_node_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_interface_info_get_type")
    dbus_interface_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_method_info_get_type")
    dbus_method_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_signal_info_get_type")
    dbus_signal_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_property_info_get_type")
    dbus_property_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_arg_info_get_type")
    dbus_arg_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_annotation_info_get_type")
    dbus_annotation_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_menu_model_get_type")
    dbus_menu_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_menu_model_get")
    dbus_menu_model_get :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring) -> ^DBusMenuModel ---

    @(link_name = "g_dbus_message_get_type")
    dbus_message_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_new")
    dbus_message_new :: proc() -> ^DBusMessage ---

    @(link_name = "g_dbus_message_new_signal")
    dbus_message_new_signal :: proc(path: cstring, interface_: cstring, signal: cstring) -> ^DBusMessage ---

    @(link_name = "g_dbus_message_new_method_call")
    dbus_message_new_method_call :: proc(name: cstring, path: cstring, interface_: cstring, method: cstring) -> ^DBusMessage ---

    @(link_name = "g_dbus_message_new_method_reply")
    dbus_message_new_method_reply :: proc(method_call_message: ^DBusMessage) -> ^DBusMessage ---

    @(link_name = "g_dbus_message_new_method_error")
    dbus_message_new_method_error :: proc(method_call_message: ^DBusMessage, error_name: cstring, error_message_format: cstring, #c_vararg var_args: ..any) -> ^DBusMessage ---

    @(link_name = "g_dbus_message_new_method_error_valist")
    dbus_message_new_method_error_valist :: proc(method_call_message: ^DBusMessage, error_name: cstring, error_message_format: cstring, #c_vararg var_args: ..any) -> ^DBusMessage ---

    @(link_name = "g_dbus_message_new_method_error_literal")
    dbus_message_new_method_error_literal :: proc(method_call_message: ^DBusMessage, error_name: cstring, error_message: cstring) -> ^DBusMessage ---

    @(link_name = "g_dbus_message_print")
    dbus_message_print :: proc(message: ^DBusMessage, indent: glib.uint_) -> cstring ---

    @(link_name = "g_dbus_message_get_locked")
    dbus_message_get_locked :: proc(message: ^DBusMessage) -> glib.boolean ---

    @(link_name = "g_dbus_message_lock")
    dbus_message_lock :: proc(message: ^DBusMessage) ---

    @(link_name = "g_dbus_message_copy")
    dbus_message_copy :: proc(message: ^DBusMessage, error: ^^glib.Error) -> ^DBusMessage ---

    @(link_name = "g_dbus_message_get_byte_order")
    dbus_message_get_byte_order :: proc(message: ^DBusMessage) -> DBusMessageByteOrder ---

    @(link_name = "g_dbus_message_set_byte_order")
    dbus_message_set_byte_order :: proc(message: ^DBusMessage, byte_order: DBusMessageByteOrder) ---

    @(link_name = "g_dbus_message_get_message_type")
    dbus_message_get_message_type :: proc(message: ^DBusMessage) -> DBusMessageType ---

    @(link_name = "g_dbus_message_set_message_type")
    dbus_message_set_message_type :: proc(message: ^DBusMessage, type: DBusMessageType) ---

    @(link_name = "g_dbus_message_get_flags")
    dbus_message_get_flags :: proc(message: ^DBusMessage) -> DBusMessageFlags ---

    @(link_name = "g_dbus_message_set_flags")
    dbus_message_set_flags :: proc(message: ^DBusMessage, flags: DBusMessageFlags) ---

    @(link_name = "g_dbus_message_get_serial")
    dbus_message_get_serial :: proc(message: ^DBusMessage) -> glib.uint32 ---

    @(link_name = "g_dbus_message_set_serial")
    dbus_message_set_serial :: proc(message: ^DBusMessage, serial: glib.uint32) ---

    @(link_name = "g_dbus_message_get_header")
    dbus_message_get_header :: proc(message: ^DBusMessage, header_field: DBusMessageHeaderField) -> ^glib.Variant ---

    @(link_name = "g_dbus_message_set_header")
    dbus_message_set_header :: proc(message: ^DBusMessage, header_field: DBusMessageHeaderField, value: ^glib.Variant) ---

    @(link_name = "g_dbus_message_get_header_fields")
    dbus_message_get_header_fields :: proc(message: ^DBusMessage) -> ^glib.uchar ---

    @(link_name = "g_dbus_message_get_body")
    dbus_message_get_body :: proc(message: ^DBusMessage) -> ^glib.Variant ---

    @(link_name = "g_dbus_message_set_body")
    dbus_message_set_body :: proc(message: ^DBusMessage, body: ^glib.Variant) ---

    @(link_name = "g_dbus_message_get_unix_fd_list")
    dbus_message_get_unix_fd_list :: proc(message: ^DBusMessage) -> ^UnixFDList ---

    @(link_name = "g_dbus_message_set_unix_fd_list")
    dbus_message_set_unix_fd_list :: proc(message: ^DBusMessage, fd_list: ^UnixFDList) ---

    @(link_name = "g_dbus_message_get_reply_serial")
    dbus_message_get_reply_serial :: proc(message: ^DBusMessage) -> glib.uint32 ---

    @(link_name = "g_dbus_message_set_reply_serial")
    dbus_message_set_reply_serial :: proc(message: ^DBusMessage, value: glib.uint32) ---

    @(link_name = "g_dbus_message_get_interface")
    dbus_message_get_interface :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_set_interface")
    dbus_message_set_interface :: proc(message: ^DBusMessage, value: cstring) ---

    @(link_name = "g_dbus_message_get_member")
    dbus_message_get_member :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_set_member")
    dbus_message_set_member :: proc(message: ^DBusMessage, value: cstring) ---

    @(link_name = "g_dbus_message_get_path")
    dbus_message_get_path :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_set_path")
    dbus_message_set_path :: proc(message: ^DBusMessage, value: cstring) ---

    @(link_name = "g_dbus_message_get_sender")
    dbus_message_get_sender :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_set_sender")
    dbus_message_set_sender :: proc(message: ^DBusMessage, value: cstring) ---

    @(link_name = "g_dbus_message_get_destination")
    dbus_message_get_destination :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_set_destination")
    dbus_message_set_destination :: proc(message: ^DBusMessage, value: cstring) ---

    @(link_name = "g_dbus_message_get_error_name")
    dbus_message_get_error_name :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_set_error_name")
    dbus_message_set_error_name :: proc(message: ^DBusMessage, value: cstring) ---

    @(link_name = "g_dbus_message_get_signature")
    dbus_message_get_signature :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_set_signature")
    dbus_message_set_signature :: proc(message: ^DBusMessage, value: cstring) ---

    @(link_name = "g_dbus_message_get_num_unix_fds")
    dbus_message_get_num_unix_fds :: proc(message: ^DBusMessage) -> glib.uint32 ---

    @(link_name = "g_dbus_message_set_num_unix_fds")
    dbus_message_set_num_unix_fds :: proc(message: ^DBusMessage, value: glib.uint32) ---

    @(link_name = "g_dbus_message_get_arg0")
    dbus_message_get_arg0 :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_get_arg0_path")
    dbus_message_get_arg0_path :: proc(message: ^DBusMessage) -> cstring ---

    @(link_name = "g_dbus_message_new_from_blob")
    dbus_message_new_from_blob :: proc(blob: ^glib.uchar, blob_len: glib.size, capabilities: DBusCapabilityFlags, error: ^^glib.Error) -> ^DBusMessage ---

    @(link_name = "g_dbus_message_bytes_needed")
    dbus_message_bytes_needed :: proc(blob: ^glib.uchar, blob_len: glib.size, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_dbus_message_to_blob")
    dbus_message_to_blob :: proc(message: ^DBusMessage, out_size: ^glib.size, capabilities: DBusCapabilityFlags, error: ^^glib.Error) -> ^glib.uchar ---

    @(link_name = "g_dbus_message_to_gerror")
    dbus_message_to_gerror :: proc(message: ^DBusMessage, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dbus_method_invocation_get_type")
    dbus_method_invocation_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_method_invocation_get_sender")
    dbus_method_invocation_get_sender :: proc(invocation: ^DBusMethodInvocation) -> cstring ---

    @(link_name = "g_dbus_method_invocation_get_object_path")
    dbus_method_invocation_get_object_path :: proc(invocation: ^DBusMethodInvocation) -> cstring ---

    @(link_name = "g_dbus_method_invocation_get_interface_name")
    dbus_method_invocation_get_interface_name :: proc(invocation: ^DBusMethodInvocation) -> cstring ---

    @(link_name = "g_dbus_method_invocation_get_method_name")
    dbus_method_invocation_get_method_name :: proc(invocation: ^DBusMethodInvocation) -> cstring ---

    @(link_name = "g_dbus_method_invocation_get_method_info")
    dbus_method_invocation_get_method_info :: proc(invocation: ^DBusMethodInvocation) -> ^DBusMethodInfo ---

    @(link_name = "g_dbus_method_invocation_get_property_info")
    dbus_method_invocation_get_property_info :: proc(invocation: ^DBusMethodInvocation) -> ^DBusPropertyInfo ---

    @(link_name = "g_dbus_method_invocation_get_connection")
    dbus_method_invocation_get_connection :: proc(invocation: ^DBusMethodInvocation) -> ^DBusConnection ---

    @(link_name = "g_dbus_method_invocation_get_message")
    dbus_method_invocation_get_message :: proc(invocation: ^DBusMethodInvocation) -> ^DBusMessage ---

    @(link_name = "g_dbus_method_invocation_get_parameters")
    dbus_method_invocation_get_parameters :: proc(invocation: ^DBusMethodInvocation) -> ^glib.Variant ---

    @(link_name = "g_dbus_method_invocation_get_user_data")
    dbus_method_invocation_get_user_data :: proc(invocation: ^DBusMethodInvocation) -> glib.pointer ---

    @(link_name = "g_dbus_method_invocation_return_value")
    dbus_method_invocation_return_value :: proc(invocation: ^DBusMethodInvocation, parameters: [^]glib.Variant) ---

    @(link_name = "g_dbus_method_invocation_return_value_with_unix_fd_list")
    dbus_method_invocation_return_value_with_unix_fd_list :: proc(invocation: ^DBusMethodInvocation, parameters: [^]glib.Variant, fd_list: ^UnixFDList) ---

    @(link_name = "g_dbus_method_invocation_return_error")
    dbus_method_invocation_return_error :: proc(invocation: ^DBusMethodInvocation, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_dbus_method_invocation_return_error_valist")
    dbus_method_invocation_return_error_valist :: proc(invocation: ^DBusMethodInvocation, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_dbus_method_invocation_return_error_literal")
    dbus_method_invocation_return_error_literal :: proc(invocation: ^DBusMethodInvocation, domain: glib.Quark, code: glib.int_, message: cstring) ---

    @(link_name = "g_dbus_method_invocation_return_gerror")
    dbus_method_invocation_return_gerror :: proc(invocation: ^DBusMethodInvocation, error: ^glib.Error) ---

    @(link_name = "g_dbus_method_invocation_take_error")
    dbus_method_invocation_take_error :: proc(invocation: ^DBusMethodInvocation, error: ^glib.Error) ---

    @(link_name = "g_dbus_method_invocation_return_dbus_error")
    dbus_method_invocation_return_dbus_error :: proc(invocation: ^DBusMethodInvocation, error_name: cstring, error_message: cstring) ---

    @(link_name = "g_bus_own_name")
    bus_own_name :: proc(bus_type: BusType, name: cstring, flags: BusNameOwnerFlags, bus_acquired_handler: BusAcquiredCallback, name_acquired_handler: BusNameAcquiredCallback, name_lost_handler: BusNameLostCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---

    @(link_name = "g_bus_own_name_on_connection")
    bus_own_name_on_connection :: proc(connection: ^DBusConnection, name: cstring, flags: BusNameOwnerFlags, name_acquired_handler: BusNameAcquiredCallback, name_lost_handler: BusNameLostCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---

    @(link_name = "g_bus_own_name_with_closures")
    bus_own_name_with_closures :: proc(bus_type: BusType, name: cstring, flags: BusNameOwnerFlags, bus_acquired_closure: ^gobj.Closure, name_acquired_closure: ^gobj.Closure, name_lost_closure: ^gobj.Closure) -> glib.uint_ ---

    @(link_name = "g_bus_own_name_on_connection_with_closures")
    bus_own_name_on_connection_with_closures :: proc(connection: ^DBusConnection, name: cstring, flags: BusNameOwnerFlags, name_acquired_closure: ^gobj.Closure, name_lost_closure: ^gobj.Closure) -> glib.uint_ ---

    @(link_name = "g_bus_unown_name")
    bus_unown_name :: proc(owner_id: glib.uint_) ---

    @(link_name = "g_bus_watch_name")
    bus_watch_name :: proc(bus_type: BusType, name: cstring, flags: BusNameWatcherFlags, name_appeared_handler: BusNameAppearedCallback, name_vanished_handler: BusNameVanishedCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---

    @(link_name = "g_bus_watch_name_on_connection")
    bus_watch_name_on_connection :: proc(connection: ^DBusConnection, name: cstring, flags: BusNameWatcherFlags, name_appeared_handler: BusNameAppearedCallback, name_vanished_handler: BusNameVanishedCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---

    @(link_name = "g_bus_watch_name_with_closures")
    bus_watch_name_with_closures :: proc(bus_type: BusType, name: cstring, flags: BusNameWatcherFlags, name_appeared_closure: ^gobj.Closure, name_vanished_closure: ^gobj.Closure) -> glib.uint_ ---

    @(link_name = "g_bus_watch_name_on_connection_with_closures")
    bus_watch_name_on_connection_with_closures :: proc(connection: ^DBusConnection, name: cstring, flags: BusNameWatcherFlags, name_appeared_closure: ^gobj.Closure, name_vanished_closure: ^gobj.Closure) -> glib.uint_ ---

    @(link_name = "g_bus_unwatch_name")
    bus_unwatch_name :: proc(watcher_id: glib.uint_) ---

    @(link_name = "g_dbus_object_get_type")
    dbus_object_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_object_get_object_path")
    dbus_object_get_object_path :: proc(object: ^DBusObject) -> cstring ---

    @(link_name = "g_dbus_object_get_interfaces")
    dbus_object_get_interfaces :: proc(object: ^DBusObject) -> ^glib.List ---

    @(link_name = "g_dbus_object_get_interface")
    dbus_object_get_interface :: proc(object: ^DBusObject, interface_name: cstring) -> ^DBusInterface ---

    @(link_name = "g_dbus_object_manager_get_type")
    dbus_object_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_object_manager_get_object_path")
    dbus_object_manager_get_object_path :: proc(manager: ^DBusObjectManager) -> cstring ---

    @(link_name = "g_dbus_object_manager_get_objects")
    dbus_object_manager_get_objects :: proc(manager: ^DBusObjectManager) -> ^glib.List ---

    @(link_name = "g_dbus_object_manager_get_object")
    dbus_object_manager_get_object :: proc(manager: ^DBusObjectManager, object_path: cstring) -> ^DBusObject ---

    @(link_name = "g_dbus_object_manager_get_interface")
    dbus_object_manager_get_interface :: proc(manager: ^DBusObjectManager, object_path: cstring, interface_name: cstring) -> ^DBusInterface ---

    @(link_name = "g_dbus_object_manager_client_get_type")
    dbus_object_manager_client_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_object_manager_client_new")
    dbus_object_manager_client_new :: proc(connection: ^DBusConnection, flags: DBusObjectManagerClientFlags, name: cstring, object_path: cstring, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: glib.pointer, get_proxy_type_destroy_notify: glib.DestroyNotify, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_object_manager_client_new_finish")
    dbus_object_manager_client_new_finish :: proc(res: [^]AsyncResult, error: ^^glib.Error) -> ^DBusObjectManager ---

    @(link_name = "g_dbus_object_manager_client_new_sync")
    dbus_object_manager_client_new_sync :: proc(connection: ^DBusConnection, flags: DBusObjectManagerClientFlags, name: cstring, object_path: cstring, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: glib.pointer, get_proxy_type_destroy_notify: glib.DestroyNotify, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusObjectManager ---

    @(link_name = "g_dbus_object_manager_client_new_for_bus")
    dbus_object_manager_client_new_for_bus :: proc(bus_type: BusType, flags: DBusObjectManagerClientFlags, name: cstring, object_path: cstring, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: glib.pointer, get_proxy_type_destroy_notify: glib.DestroyNotify, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_object_manager_client_new_for_bus_finish")
    dbus_object_manager_client_new_for_bus_finish :: proc(res: [^]AsyncResult, error: ^^glib.Error) -> ^DBusObjectManager ---

    @(link_name = "g_dbus_object_manager_client_new_for_bus_sync")
    dbus_object_manager_client_new_for_bus_sync :: proc(bus_type: BusType, flags: DBusObjectManagerClientFlags, name: cstring, object_path: cstring, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: glib.pointer, get_proxy_type_destroy_notify: glib.DestroyNotify, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusObjectManager ---

    @(link_name = "g_dbus_object_manager_client_get_connection")
    dbus_object_manager_client_get_connection :: proc(manager: ^DBusObjectManagerClient) -> ^DBusConnection ---

    @(link_name = "g_dbus_object_manager_client_get_flags")
    dbus_object_manager_client_get_flags :: proc(manager: ^DBusObjectManagerClient) -> DBusObjectManagerClientFlags ---

    @(link_name = "g_dbus_object_manager_client_get_name")
    dbus_object_manager_client_get_name :: proc(manager: ^DBusObjectManagerClient) -> cstring ---

    @(link_name = "g_dbus_object_manager_client_get_name_owner")
    dbus_object_manager_client_get_name_owner :: proc(manager: ^DBusObjectManagerClient) -> cstring ---

    @(link_name = "g_dbus_object_manager_server_get_type")
    dbus_object_manager_server_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_object_manager_server_new")
    dbus_object_manager_server_new :: proc(object_path: cstring) -> ^DBusObjectManagerServer ---

    @(link_name = "g_dbus_object_manager_server_get_connection")
    dbus_object_manager_server_get_connection :: proc(manager: ^DBusObjectManagerServer) -> ^DBusConnection ---

    @(link_name = "g_dbus_object_manager_server_set_connection")
    dbus_object_manager_server_set_connection :: proc(manager: ^DBusObjectManagerServer, connection: ^DBusConnection) ---

    @(link_name = "g_dbus_object_manager_server_export")
    dbus_object_manager_server_export :: proc(manager: ^DBusObjectManagerServer, object: ^DBusObjectSkeleton) ---

    @(link_name = "g_dbus_object_manager_server_export_uniquely")
    dbus_object_manager_server_export_uniquely :: proc(manager: ^DBusObjectManagerServer, object: ^DBusObjectSkeleton) ---

    @(link_name = "g_dbus_object_manager_server_is_exported")
    dbus_object_manager_server_is_exported :: proc(manager: ^DBusObjectManagerServer, object: ^DBusObjectSkeleton) -> glib.boolean ---

    @(link_name = "g_dbus_object_manager_server_unexport")
    dbus_object_manager_server_unexport :: proc(manager: ^DBusObjectManagerServer, object_path: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_object_proxy_get_type")
    dbus_object_proxy_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_object_proxy_new")
    dbus_object_proxy_new :: proc(connection: ^DBusConnection, object_path: cstring) -> ^DBusObjectProxy ---

    @(link_name = "g_dbus_object_proxy_get_connection")
    dbus_object_proxy_get_connection :: proc(proxy: ^DBusObjectProxy) -> ^DBusConnection ---

    @(link_name = "g_dbus_object_skeleton_get_type")
    dbus_object_skeleton_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_object_skeleton_new")
    dbus_object_skeleton_new :: proc(object_path: cstring) -> ^DBusObjectSkeleton ---

    @(link_name = "g_dbus_object_skeleton_flush")
    dbus_object_skeleton_flush :: proc(object: ^DBusObjectSkeleton) ---

    @(link_name = "g_dbus_object_skeleton_add_interface")
    dbus_object_skeleton_add_interface :: proc(object: ^DBusObjectSkeleton, interface_: ^DBusInterfaceSkeleton) ---

    @(link_name = "g_dbus_object_skeleton_remove_interface")
    dbus_object_skeleton_remove_interface :: proc(object: ^DBusObjectSkeleton, interface_: ^DBusInterfaceSkeleton) ---

    @(link_name = "g_dbus_object_skeleton_remove_interface_by_name")
    dbus_object_skeleton_remove_interface_by_name :: proc(object: ^DBusObjectSkeleton, interface_name: cstring) ---

    @(link_name = "g_dbus_object_skeleton_set_object_path")
    dbus_object_skeleton_set_object_path :: proc(object: ^DBusObjectSkeleton, object_path: cstring) ---

    @(link_name = "g_dbus_proxy_get_type")
    dbus_proxy_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_proxy_new")
    dbus_proxy_new :: proc(connection: ^DBusConnection, flags: DBusProxyFlags, info: ^DBusInterfaceInfo, name: cstring, object_path: cstring, interface_name: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_proxy_new_finish")
    dbus_proxy_new_finish :: proc(res: [^]AsyncResult, error: ^^glib.Error) -> ^DBusProxy ---

    @(link_name = "g_dbus_proxy_new_sync")
    dbus_proxy_new_sync :: proc(connection: ^DBusConnection, flags: DBusProxyFlags, info: ^DBusInterfaceInfo, name: cstring, object_path: cstring, interface_name: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusProxy ---

    @(link_name = "g_dbus_proxy_new_for_bus")
    dbus_proxy_new_for_bus :: proc(bus_type: BusType, flags: DBusProxyFlags, info: ^DBusInterfaceInfo, name: cstring, object_path: cstring, interface_name: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_proxy_new_for_bus_finish")
    dbus_proxy_new_for_bus_finish :: proc(res: [^]AsyncResult, error: ^^glib.Error) -> ^DBusProxy ---

    @(link_name = "g_dbus_proxy_new_for_bus_sync")
    dbus_proxy_new_for_bus_sync :: proc(bus_type: BusType, flags: DBusProxyFlags, info: ^DBusInterfaceInfo, name: cstring, object_path: cstring, interface_name: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusProxy ---

    @(link_name = "g_dbus_proxy_get_connection")
    dbus_proxy_get_connection :: proc(proxy: ^DBusProxy) -> ^DBusConnection ---

    @(link_name = "g_dbus_proxy_get_flags")
    dbus_proxy_get_flags :: proc(proxy: ^DBusProxy) -> DBusProxyFlags ---

    @(link_name = "g_dbus_proxy_get_name")
    dbus_proxy_get_name :: proc(proxy: ^DBusProxy) -> cstring ---

    @(link_name = "g_dbus_proxy_get_name_owner")
    dbus_proxy_get_name_owner :: proc(proxy: ^DBusProxy) -> cstring ---

    @(link_name = "g_dbus_proxy_get_object_path")
    dbus_proxy_get_object_path :: proc(proxy: ^DBusProxy) -> cstring ---

    @(link_name = "g_dbus_proxy_get_interface_name")
    dbus_proxy_get_interface_name :: proc(proxy: ^DBusProxy) -> cstring ---

    @(link_name = "g_dbus_proxy_get_default_timeout")
    dbus_proxy_get_default_timeout :: proc(proxy: ^DBusProxy) -> glib.int_ ---

    @(link_name = "g_dbus_proxy_set_default_timeout")
    dbus_proxy_set_default_timeout :: proc(proxy: ^DBusProxy, timeout_msec: glib.int_) ---

    @(link_name = "g_dbus_proxy_get_interface_info")
    dbus_proxy_get_interface_info :: proc(proxy: ^DBusProxy) -> ^DBusInterfaceInfo ---

    @(link_name = "g_dbus_proxy_set_interface_info")
    dbus_proxy_set_interface_info :: proc(proxy: ^DBusProxy, info: ^DBusInterfaceInfo) ---

    @(link_name = "g_dbus_proxy_get_cached_property")
    dbus_proxy_get_cached_property :: proc(proxy: ^DBusProxy, property_name: cstring) -> ^glib.Variant ---

    @(link_name = "g_dbus_proxy_set_cached_property")
    dbus_proxy_set_cached_property :: proc(proxy: ^DBusProxy, property_name: cstring, value: ^glib.Variant) ---

    @(link_name = "g_dbus_proxy_get_cached_property_names")
    dbus_proxy_get_cached_property_names :: proc(proxy: ^DBusProxy) -> ^cstring ---

    @(link_name = "g_dbus_proxy_call")
    dbus_proxy_call :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: [^]glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_proxy_call_finish")
    dbus_proxy_call_finish :: proc(proxy: ^DBusProxy, res: [^]AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_proxy_call_sync")
    dbus_proxy_call_sync :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: [^]glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list")
    dbus_proxy_call_with_unix_fd_list :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: [^]glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list_finish")
    dbus_proxy_call_with_unix_fd_list_finish :: proc(proxy: ^DBusProxy, out_fd_list: ^^UnixFDList, res: [^]AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_proxy_call_with_unix_fd_list_sync")
    dbus_proxy_call_with_unix_fd_list_sync :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: [^]glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, out_fd_list: ^^UnixFDList, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---

    @(link_name = "g_dbus_server_get_type")
    dbus_server_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_server_new_sync")
    dbus_server_new_sync :: proc(address: [^]glib.char, flags: DBusServerFlags, guid: cstring, observer: ^DBusAuthObserver, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusServer ---

    @(link_name = "g_dbus_server_get_client_address")
    dbus_server_get_client_address :: proc(server: ^DBusServer) -> cstring ---

    @(link_name = "g_dbus_server_get_guid")
    dbus_server_get_guid :: proc(server: ^DBusServer) -> cstring ---

    @(link_name = "g_dbus_server_get_flags")
    dbus_server_get_flags :: proc(server: ^DBusServer) -> DBusServerFlags ---

    @(link_name = "g_dbus_server_start")
    dbus_server_start :: proc(server: ^DBusServer) ---

    @(link_name = "g_dbus_server_stop")
    dbus_server_stop :: proc(server: ^DBusServer) ---

    @(link_name = "g_dbus_server_is_active")
    dbus_server_is_active :: proc(server: ^DBusServer) -> glib.boolean ---

    @(link_name = "g_dbus_is_guid")
    dbus_is_guid :: proc(string_p: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_generate_guid")
    dbus_generate_guid :: proc() -> cstring ---

    @(link_name = "g_dbus_is_name")
    dbus_is_name :: proc(string_p: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_is_unique_name")
    dbus_is_unique_name :: proc(string_p: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_is_member_name")
    dbus_is_member_name :: proc(string_p: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_is_interface_name")
    dbus_is_interface_name :: proc(string_p: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_is_error_name")
    dbus_is_error_name :: proc(string_p: cstring) -> glib.boolean ---

    @(link_name = "g_dbus_gvariant_to_gvalue")
    dbus_gvariant_to_gvalue :: proc(value: ^glib.Variant, out_gvalue: ^gobj.Value) ---

    @(link_name = "g_dbus_gvalue_to_gvariant")
    dbus_gvalue_to_gvariant :: proc(gvalue: ^gobj.Value, type: ^glib.VariantType) -> ^glib.Variant ---

    @(link_name = "g_dbus_escape_object_path_bytestring")
    dbus_escape_object_path_bytestring :: proc(bytes: [^]glib.uint8) -> cstring ---

    @(link_name = "g_dbus_escape_object_path")
    dbus_escape_object_path :: proc(s: cstring) -> cstring ---

    @(link_name = "g_dbus_unescape_object_path")
    dbus_unescape_object_path :: proc(s: cstring) -> ^glib.uint8 ---

    @(link_name = "g_debug_controller_get_type")
    debug_controller_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_debug_controller_get_debug_enabled")
    debug_controller_get_debug_enabled :: proc(self: ^DebugController) -> glib.boolean ---

    @(link_name = "g_debug_controller_set_debug_enabled")
    debug_controller_set_debug_enabled :: proc(self: ^DebugController, debug_enabled: glib.boolean) ---

    @(link_name = "g_debug_controller_dbus_get_type")
    debug_controller_dbus_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_debug_controller_dbus_new")
    debug_controller_dbus_new :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DebugControllerDBus ---

    @(link_name = "g_debug_controller_dbus_stop")
    debug_controller_dbus_stop :: proc(self: ^DebugControllerDBus) ---

    @(link_name = "g_drive_get_type")
    drive_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_drive_get_name")
    drive_get_name :: proc(drive: ^Drive) -> cstring ---

    @(link_name = "g_drive_get_icon")
    drive_get_icon :: proc(drive: ^Drive) -> ^Icon ---

    @(link_name = "g_drive_get_symbolic_icon")
    drive_get_symbolic_icon :: proc(drive: ^Drive) -> ^Icon ---

    @(link_name = "g_drive_has_volumes")
    drive_has_volumes :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_get_volumes")
    drive_get_volumes :: proc(drive: ^Drive) -> ^glib.List ---

    @(link_name = "g_drive_is_removable")
    drive_is_removable :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_is_media_removable")
    drive_is_media_removable :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_has_media")
    drive_has_media :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_is_media_check_automatic")
    drive_is_media_check_automatic :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_can_poll_for_media")
    drive_can_poll_for_media :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_can_eject")
    drive_can_eject :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_eject")
    drive_eject :: proc(drive: ^Drive, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_drive_eject_finish")
    drive_eject_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_drive_poll_for_media")
    drive_poll_for_media :: proc(drive: ^Drive, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_drive_poll_for_media_finish")
    drive_poll_for_media_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_drive_get_identifier")
    drive_get_identifier :: proc(drive: ^Drive, kind: cstring) -> cstring ---

    @(link_name = "g_drive_enumerate_identifiers")
    drive_enumerate_identifiers :: proc(drive: ^Drive) -> ^cstring ---

    @(link_name = "g_drive_get_start_stop_type")
    drive_get_start_stop_type :: proc(drive: ^Drive) -> DriveStartStopType ---

    @(link_name = "g_drive_can_start")
    drive_can_start :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_can_start_degraded")
    drive_can_start_degraded :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_start")
    drive_start :: proc(drive: ^Drive, flags: DriveStartFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_drive_start_finish")
    drive_start_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_drive_can_stop")
    drive_can_stop :: proc(drive: ^Drive) -> glib.boolean ---

    @(link_name = "g_drive_stop")
    drive_stop :: proc(drive: ^Drive, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_drive_stop_finish")
    drive_stop_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_drive_eject_with_operation")
    drive_eject_with_operation :: proc(drive: ^Drive, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_drive_eject_with_operation_finish")
    drive_eject_with_operation_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_drive_get_sort_key")
    drive_get_sort_key :: proc(drive: ^Drive) -> cstring ---

    @(link_name = "g_dtls_connection_get_type")
    dtls_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dtls_connection_set_database")
    dtls_connection_set_database :: proc(conn: ^DtlsConnection, database: ^TlsDatabase) ---

    @(link_name = "g_dtls_connection_get_database")
    dtls_connection_get_database :: proc(conn: ^DtlsConnection) -> ^TlsDatabase ---

    @(link_name = "g_dtls_connection_set_certificate")
    dtls_connection_set_certificate :: proc(conn: ^DtlsConnection, certificate: ^TlsCertificate) ---

    @(link_name = "g_dtls_connection_get_certificate")
    dtls_connection_get_certificate :: proc(conn: ^DtlsConnection) -> ^TlsCertificate ---

    @(link_name = "g_dtls_connection_set_interaction")
    dtls_connection_set_interaction :: proc(conn: ^DtlsConnection, interaction: ^TlsInteraction) ---

    @(link_name = "g_dtls_connection_get_interaction")
    dtls_connection_get_interaction :: proc(conn: ^DtlsConnection) -> ^TlsInteraction ---

    @(link_name = "g_dtls_connection_get_peer_certificate")
    dtls_connection_get_peer_certificate :: proc(conn: ^DtlsConnection) -> ^TlsCertificate ---

    @(link_name = "g_dtls_connection_get_peer_certificate_errors")
    dtls_connection_get_peer_certificate_errors :: proc(conn: ^DtlsConnection) -> TlsCertificateFlags ---

    @(link_name = "g_dtls_connection_set_require_close_notify")
    dtls_connection_set_require_close_notify :: proc(conn: ^DtlsConnection, require_close_notify: glib.boolean) ---

    @(link_name = "g_dtls_connection_get_require_close_notify")
    dtls_connection_get_require_close_notify :: proc(conn: ^DtlsConnection) -> glib.boolean ---

    @(link_name = "g_dtls_connection_set_rehandshake_mode")
    dtls_connection_set_rehandshake_mode :: proc(conn: ^DtlsConnection, mode: TlsRehandshakeMode) ---

    @(link_name = "g_dtls_connection_get_rehandshake_mode")
    dtls_connection_get_rehandshake_mode :: proc(conn: ^DtlsConnection) -> TlsRehandshakeMode ---

    @(link_name = "g_dtls_connection_handshake")
    dtls_connection_handshake :: proc(conn: ^DtlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dtls_connection_handshake_async")
    dtls_connection_handshake_async :: proc(conn: ^DtlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dtls_connection_handshake_finish")
    dtls_connection_handshake_finish :: proc(conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dtls_connection_shutdown")
    dtls_connection_shutdown :: proc(conn: ^DtlsConnection, shutdown_read: glib.boolean, shutdown_write: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dtls_connection_shutdown_async")
    dtls_connection_shutdown_async :: proc(conn: ^DtlsConnection, shutdown_read: glib.boolean, shutdown_write: glib.boolean, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dtls_connection_shutdown_finish")
    dtls_connection_shutdown_finish :: proc(conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dtls_connection_close")
    dtls_connection_close :: proc(conn: ^DtlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dtls_connection_close_async")
    dtls_connection_close_async :: proc(conn: ^DtlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_dtls_connection_close_finish")
    dtls_connection_close_finish :: proc(conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dtls_connection_emit_accept_certificate")
    dtls_connection_emit_accept_certificate :: proc(conn: ^DtlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean ---

    @(link_name = "g_dtls_connection_set_advertised_protocols")
    dtls_connection_set_advertised_protocols :: proc(conn: ^DtlsConnection, protocols: [^]cstring) ---

    @(link_name = "g_dtls_connection_get_negotiated_protocol")
    dtls_connection_get_negotiated_protocol :: proc(conn: ^DtlsConnection) -> cstring ---

    @(link_name = "g_dtls_connection_get_channel_binding_data")
    dtls_connection_get_channel_binding_data :: proc(conn: ^DtlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_dtls_connection_get_protocol_version")
    dtls_connection_get_protocol_version :: proc(conn: ^DtlsConnection) -> TlsProtocolVersion ---

    @(link_name = "g_dtls_connection_get_ciphersuite_name")
    dtls_connection_get_ciphersuite_name :: proc(conn: ^DtlsConnection) -> cstring ---

    @(link_name = "g_dtls_client_connection_get_type")
    dtls_client_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dtls_client_connection_new")
    dtls_client_connection_new :: proc(base_socket: ^DatagramBased, server_identity: ^SocketConnectable, error: ^^glib.Error) -> ^DatagramBased ---

    @(link_name = "g_dtls_client_connection_get_validation_flags")
    dtls_client_connection_get_validation_flags :: proc(conn: ^DtlsClientConnection) -> TlsCertificateFlags ---

    @(link_name = "g_dtls_client_connection_set_validation_flags")
    dtls_client_connection_set_validation_flags :: proc(conn: ^DtlsClientConnection, flags: TlsCertificateFlags) ---

    @(link_name = "g_dtls_client_connection_get_server_identity")
    dtls_client_connection_get_server_identity :: proc(conn: ^DtlsClientConnection) -> ^SocketConnectable ---

    @(link_name = "g_dtls_client_connection_set_server_identity")
    dtls_client_connection_set_server_identity :: proc(conn: ^DtlsClientConnection, identity: ^SocketConnectable) ---

    @(link_name = "g_dtls_client_connection_get_accepted_cas")
    dtls_client_connection_get_accepted_cas :: proc(conn: ^DtlsClientConnection) -> ^glib.List ---

    @(link_name = "g_dtls_server_connection_get_type")
    dtls_server_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dtls_server_connection_new")
    dtls_server_connection_new :: proc(base_socket: ^DatagramBased, certificate: ^TlsCertificate, error: ^^glib.Error) -> ^DatagramBased ---

    @(link_name = "g_icon_get_type")
    icon_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_icon_hash")
    icon_hash :: proc(icon: glib.constpointer) -> glib.uint_ ---

    @(link_name = "g_icon_equal")
    icon_equal :: proc(icon1: ^Icon, icon2: ^Icon) -> glib.boolean ---

    @(link_name = "g_icon_to_string")
    icon_to_string :: proc(icon: ^Icon) -> cstring ---

    @(link_name = "g_icon_new_for_string")
    icon_new_for_string :: proc(str: cstring, error: ^^glib.Error) -> ^Icon ---

    @(link_name = "g_icon_serialize")
    icon_serialize :: proc(icon: ^Icon) -> ^glib.Variant ---

    @(link_name = "g_icon_deserialize")
    icon_deserialize :: proc(value: ^glib.Variant) -> ^Icon ---

    @(link_name = "g_emblem_get_type")
    emblem_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_emblem_new")
    emblem_new :: proc(icon: ^Icon) -> ^Emblem ---

    @(link_name = "g_emblem_new_with_origin")
    emblem_new_with_origin :: proc(icon: ^Icon, origin: EmblemOrigin) -> ^Emblem ---

    @(link_name = "g_emblem_get_icon")
    emblem_get_icon :: proc(emblem: ^Emblem) -> ^Icon ---

    @(link_name = "g_emblem_get_origin")
    emblem_get_origin :: proc(emblem: ^Emblem) -> EmblemOrigin ---

    @(link_name = "g_emblemed_icon_get_type")
    emblemed_icon_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_emblemed_icon_new")
    emblemed_icon_new :: proc(icon: ^Icon, emblem: ^Emblem) -> ^Icon ---

    @(link_name = "g_emblemed_icon_get_icon")
    emblemed_icon_get_icon :: proc(emblemed: ^EmblemedIcon) -> ^Icon ---

    @(link_name = "g_emblemed_icon_get_emblems")
    emblemed_icon_get_emblems :: proc(emblemed: ^EmblemedIcon) -> ^glib.List ---

    @(link_name = "g_emblemed_icon_add_emblem")
    emblemed_icon_add_emblem :: proc(emblemed: ^EmblemedIcon, emblem: ^Emblem) ---

    @(link_name = "g_emblemed_icon_clear_emblems")
    emblemed_icon_clear_emblems :: proc(emblemed: ^EmblemedIcon) ---

    @(link_name = "g_file_get_type")
    file_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_new_for_path")
    file_new_for_path :: proc(path: cstring) -> ^File ---

    @(link_name = "g_file_new_for_uri")
    file_new_for_uri :: proc(uri: cstring) -> ^File ---

    @(link_name = "g_file_new_for_commandline_arg")
    file_new_for_commandline_arg :: proc(arg: cstring) -> ^File ---

    @(link_name = "g_file_new_for_commandline_arg_and_cwd")
    file_new_for_commandline_arg_and_cwd :: proc(arg: cstring, cwd: cstring) -> ^File ---

    @(link_name = "g_file_new_tmp")
    file_new_tmp :: proc(tmpl: cstring, iostream: ^^FileIOStream, error: ^^glib.Error) -> ^File ---

    @(link_name = "g_file_new_tmp_async")
    file_new_tmp_async :: proc(tmpl: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_new_tmp_finish")
    file_new_tmp_finish :: proc(result: ^AsyncResult, iostream: ^^FileIOStream, error: ^^glib.Error) -> ^File ---

    @(link_name = "g_file_new_tmp_dir_async")
    file_new_tmp_dir_async :: proc(tmpl: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_new_tmp_dir_finish")
    file_new_tmp_dir_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> ^File ---

    @(link_name = "g_file_parse_name")
    file_parse_name :: proc(parse_name: cstring) -> ^File ---

    @(link_name = "g_file_new_build_filename")
    file_new_build_filename :: proc(first_element: cstring, #c_vararg var_args: ..any) -> ^File ---

    @(link_name = "g_file_new_build_filenamev")
    file_new_build_filenamev :: proc(args: [^]cstring) -> ^File ---

    @(link_name = "g_file_dup")
    file_dup :: proc(file: ^File) -> ^File ---

    @(link_name = "g_file_hash")
    file_hash :: proc(file: glib.constpointer) -> glib.uint_ ---

    @(link_name = "g_file_equal")
    file_equal :: proc(file1: ^File, file2: ^File) -> glib.boolean ---

    @(link_name = "g_file_get_basename")
    file_get_basename :: proc(file: ^File) -> cstring ---

    @(link_name = "g_file_get_path")
    file_get_path :: proc(file: ^File) -> cstring ---

    @(link_name = "g_file_peek_path")
    file_peek_path :: proc(file: ^File) -> cstring ---

    @(link_name = "g_file_get_uri")
    file_get_uri :: proc(file: ^File) -> cstring ---

    @(link_name = "g_file_get_parse_name")
    file_get_parse_name :: proc(file: ^File) -> cstring ---

    @(link_name = "g_file_get_parent")
    file_get_parent :: proc(file: ^File) -> ^File ---

    @(link_name = "g_file_has_parent")
    file_has_parent :: proc(file: ^File, parent: ^File) -> glib.boolean ---

    @(link_name = "g_file_get_child")
    file_get_child :: proc(file: ^File, name: cstring) -> ^File ---

    @(link_name = "g_file_get_child_for_display_name")
    file_get_child_for_display_name :: proc(file: ^File, display_name: cstring, error: ^^glib.Error) -> ^File ---

    @(link_name = "g_file_has_prefix")
    file_has_prefix :: proc(file: ^File, prefix: ^File) -> glib.boolean ---

    @(link_name = "g_file_get_relative_path")
    file_get_relative_path :: proc(parent: ^File, descendant: ^File) -> cstring ---

    @(link_name = "g_file_resolve_relative_path")
    file_resolve_relative_path :: proc(file: ^File, relative_path: cstring) -> ^File ---

    @(link_name = "g_file_is_native")
    file_is_native :: proc(file: ^File) -> glib.boolean ---

    @(link_name = "g_file_has_uri_scheme")
    file_has_uri_scheme :: proc(file: ^File, uri_scheme: cstring) -> glib.boolean ---

    @(link_name = "g_file_get_uri_scheme")
    file_get_uri_scheme :: proc(file: ^File) -> cstring ---

    @(link_name = "g_file_read")
    file_read :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInputStream ---

    @(link_name = "g_file_read_async")
    file_read_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_read_finish")
    file_read_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileInputStream ---

    @(link_name = "g_file_append_to")
    file_append_to :: proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream ---

    @(link_name = "g_file_create")
    file_create :: proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream ---

    @(link_name = "g_file_replace")
    file_replace :: proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream ---

    @(link_name = "g_file_append_to_async")
    file_append_to_async :: proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_append_to_finish")
    file_append_to_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileOutputStream ---

    @(link_name = "g_file_create_async")
    file_create_async :: proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_create_finish")
    file_create_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileOutputStream ---

    @(link_name = "g_file_replace_async")
    file_replace_async :: proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_replace_finish")
    file_replace_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileOutputStream ---

    @(link_name = "g_file_open_readwrite")
    file_open_readwrite :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream ---

    @(link_name = "g_file_open_readwrite_async")
    file_open_readwrite_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_open_readwrite_finish")
    file_open_readwrite_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileIOStream ---

    @(link_name = "g_file_create_readwrite")
    file_create_readwrite :: proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream ---

    @(link_name = "g_file_create_readwrite_async")
    file_create_readwrite_async :: proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_create_readwrite_finish")
    file_create_readwrite_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileIOStream ---

    @(link_name = "g_file_replace_readwrite")
    file_replace_readwrite :: proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream ---

    @(link_name = "g_file_replace_readwrite_async")
    file_replace_readwrite_async :: proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_replace_readwrite_finish")
    file_replace_readwrite_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileIOStream ---

    @(link_name = "g_file_query_exists")
    file_query_exists :: proc(file: ^File, cancellable: ^Cancellable) -> glib.boolean ---

    @(link_name = "g_file_query_file_type")
    file_query_file_type :: proc(file: ^File, flags: FileQueryInfoFlags, cancellable: ^Cancellable) -> FileType ---

    @(link_name = "g_file_query_info")
    file_query_info :: proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_query_info_async")
    file_query_info_async :: proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_query_info_finish")
    file_query_info_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_query_filesystem_info")
    file_query_filesystem_info :: proc(file: ^File, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_query_filesystem_info_async")
    file_query_filesystem_info_async :: proc(file: ^File, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_query_filesystem_info_finish")
    file_query_filesystem_info_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_find_enclosing_mount")
    file_find_enclosing_mount :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Mount ---

    @(link_name = "g_file_find_enclosing_mount_async")
    file_find_enclosing_mount_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_find_enclosing_mount_finish")
    file_find_enclosing_mount_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^Mount ---

    @(link_name = "g_file_enumerate_children")
    file_enumerate_children :: proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileEnumerator ---

    @(link_name = "g_file_enumerate_children_async")
    file_enumerate_children_async :: proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_enumerate_children_finish")
    file_enumerate_children_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^FileEnumerator ---

    @(link_name = "g_file_set_display_name")
    file_set_display_name :: proc(file: ^File, display_name: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^File ---

    @(link_name = "g_file_set_display_name_async")
    file_set_display_name_async :: proc(file: ^File, display_name: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_set_display_name_finish")
    file_set_display_name_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> ^File ---

    @(link_name = "g_file_delete")
    file_delete :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_delete_async")
    file_delete_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_delete_finish")
    file_delete_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_trash")
    file_trash :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_trash_async")
    file_trash_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_trash_finish")
    file_trash_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_copy")
    file_copy :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_copy_async")
    file_copy_async :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_copy_async_with_closures")
    file_copy_async_with_closures :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback_closure: ^gobj.Closure, ready_callback_closure: ^gobj.Closure) ---

    @(link_name = "g_file_copy_finish")
    file_copy_finish :: proc(file: ^File, res: [^]AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_move")
    file_move :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_move_async")
    file_move_async :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_move_async_with_closures")
    file_move_async_with_closures :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback_closure: ^gobj.Closure, ready_callback_closure: ^gobj.Closure) ---

    @(link_name = "g_file_move_finish")
    file_move_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_make_directory")
    file_make_directory :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_make_directory_async")
    file_make_directory_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_make_directory_finish")
    file_make_directory_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_make_directory_with_parents")
    file_make_directory_with_parents :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_make_symbolic_link")
    file_make_symbolic_link :: proc(file: ^File, symlink_value: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_make_symbolic_link_async")
    file_make_symbolic_link_async :: proc(file: ^File, symlink_value: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_make_symbolic_link_finish")
    file_make_symbolic_link_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_query_settable_attributes")
    file_query_settable_attributes :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileAttributeInfoList ---

    @(link_name = "g_file_query_writable_namespaces")
    file_query_writable_namespaces :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileAttributeInfoList ---

    @(link_name = "g_file_set_attribute")
    file_set_attribute :: proc(file: ^File, attribute: cstring, type: FileAttributeType, value_p: glib.pointer, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_set_attributes_from_info")
    file_set_attributes_from_info :: proc(file: ^File, info: ^FileInfo, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_set_attributes_async")
    file_set_attributes_async :: proc(file: ^File, info: ^FileInfo, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_set_attributes_finish")
    file_set_attributes_finish :: proc(file: ^File, result: ^AsyncResult, info: ^^FileInfo, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_set_attribute_string")
    file_set_attribute_string :: proc(file: ^File, attribute: cstring, value: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_set_attribute_byte_string")
    file_set_attribute_byte_string :: proc(file: ^File, attribute: cstring, value: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_set_attribute_uint32")
    file_set_attribute_uint32 :: proc(file: ^File, attribute: cstring, value: glib.uint32, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_set_attribute_int32")
    file_set_attribute_int32 :: proc(file: ^File, attribute: cstring, value: glib.int32, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_set_attribute_uint64")
    file_set_attribute_uint64 :: proc(file: ^File, attribute: cstring, value: glib.uint64, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_set_attribute_int64")
    file_set_attribute_int64 :: proc(file: ^File, attribute: cstring, value: glib.int64, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_mount_enclosing_volume")
    file_mount_enclosing_volume :: proc(location: ^File, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_mount_enclosing_volume_finish")
    file_mount_enclosing_volume_finish :: proc(location: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_mount_mountable")
    file_mount_mountable :: proc(file: ^File, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_mount_mountable_finish")
    file_mount_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> ^File ---

    @(link_name = "g_file_unmount_mountable")
    file_unmount_mountable :: proc(file: ^File, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_unmount_mountable_finish")
    file_unmount_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_unmount_mountable_with_operation")
    file_unmount_mountable_with_operation :: proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_unmount_mountable_with_operation_finish")
    file_unmount_mountable_with_operation_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_eject_mountable")
    file_eject_mountable :: proc(file: ^File, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_eject_mountable_finish")
    file_eject_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_eject_mountable_with_operation")
    file_eject_mountable_with_operation :: proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_eject_mountable_with_operation_finish")
    file_eject_mountable_with_operation_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_build_attribute_list_for_copy")
    file_build_attribute_list_for_copy :: proc(file: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_file_copy_attributes")
    file_copy_attributes :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_monitor_directory")
    file_monitor_directory :: proc(file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor ---

    @(link_name = "g_file_monitor_file")
    file_monitor_file :: proc(file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor ---

    @(link_name = "g_file_monitor")
    file_monitor :: proc(file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor ---

    @(link_name = "g_file_measure_disk_usage")
    file_measure_disk_usage :: proc(file: ^File, flags: FileMeasureFlags, cancellable: ^Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: glib.pointer, disk_usage: ^glib.uint64, num_dirs: [^]glib.uint64, num_files: [^]glib.uint64, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_measure_disk_usage_async")
    file_measure_disk_usage_async :: proc(file: ^File, flags: FileMeasureFlags, io_priority: glib.int_, cancellable: ^Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_measure_disk_usage_finish")
    file_measure_disk_usage_finish :: proc(file: ^File, result: ^AsyncResult, disk_usage: ^glib.uint64, num_dirs: [^]glib.uint64, num_files: [^]glib.uint64, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_start_mountable")
    file_start_mountable :: proc(file: ^File, flags: DriveStartFlags, start_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_start_mountable_finish")
    file_start_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_stop_mountable")
    file_stop_mountable :: proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_stop_mountable_finish")
    file_stop_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_poll_mountable")
    file_poll_mountable :: proc(file: ^File, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_poll_mountable_finish")
    file_poll_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_query_default_handler")
    file_query_default_handler :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^AppInfo ---

    @(link_name = "g_file_query_default_handler_async")
    file_query_default_handler_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_query_default_handler_finish")
    file_query_default_handler_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> ^AppInfo ---

    @(link_name = "g_file_load_contents")
    file_load_contents :: proc(file: ^File, cancellable: ^Cancellable, contents: [^]cstring, length: ^glib.size, etag_out: ^cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_load_contents_async")
    file_load_contents_async :: proc(file: ^File, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_load_contents_finish")
    file_load_contents_finish :: proc(file: ^File, res: [^]AsyncResult, contents: [^]cstring, length: ^glib.size, etag_out: ^cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_load_partial_contents_async")
    file_load_partial_contents_async :: proc(file: ^File, cancellable: ^Cancellable, read_more_callback: FileReadMoreCallback, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_load_partial_contents_finish")
    file_load_partial_contents_finish :: proc(file: ^File, res: [^]AsyncResult, contents: [^]cstring, length: ^glib.size, etag_out: ^cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_replace_contents")
    file_replace_contents :: proc(file: ^File, contents: cstring, length: glib.size, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, new_etag: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_replace_contents_async")
    file_replace_contents_async :: proc(file: ^File, contents: cstring, length: glib.size, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_replace_contents_bytes_async")
    file_replace_contents_bytes_async :: proc(file: ^File, contents: [^]glib.Bytes, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_replace_contents_finish")
    file_replace_contents_finish :: proc(file: ^File, res: [^]AsyncResult, new_etag: ^cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_supports_thread_contexts")
    file_supports_thread_contexts :: proc(file: ^File) -> glib.boolean ---

    @(link_name = "g_file_load_bytes")
    file_load_bytes :: proc(file: ^File, cancellable: ^Cancellable, etag_out: ^cstring, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_file_load_bytes_async")
    file_load_bytes_async :: proc(file: ^File, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_load_bytes_finish")
    file_load_bytes_finish :: proc(file: ^File, result: ^AsyncResult, etag_out: ^cstring, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_file_attribute_info_list_get_type")
    file_attribute_info_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_attribute_info_list_new")
    file_attribute_info_list_new :: proc() -> ^FileAttributeInfoList ---

    @(link_name = "g_file_attribute_info_list_ref")
    file_attribute_info_list_ref :: proc(list: ^FileAttributeInfoList) -> ^FileAttributeInfoList ---

    @(link_name = "g_file_attribute_info_list_unref")
    file_attribute_info_list_unref :: proc(list: ^FileAttributeInfoList) ---

    @(link_name = "g_file_attribute_info_list_dup")
    file_attribute_info_list_dup :: proc(list: ^FileAttributeInfoList) -> ^FileAttributeInfoList ---

    @(link_name = "g_file_attribute_info_list_lookup")
    file_attribute_info_list_lookup :: proc(list: ^FileAttributeInfoList, name: cstring) -> ^FileAttributeInfo ---

    @(link_name = "g_file_attribute_info_list_add")
    file_attribute_info_list_add :: proc(list: ^FileAttributeInfoList, name: cstring, type: FileAttributeType, flags: FileAttributeInfoFlags) ---

    @(link_name = "g_file_enumerator_get_type")
    file_enumerator_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_enumerator_next_file")
    file_enumerator_next_file :: proc(enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_enumerator_close")
    file_enumerator_close :: proc(enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_enumerator_next_files_async")
    file_enumerator_next_files_async :: proc(enumerator: ^FileEnumerator, num_files: i32, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_enumerator_next_files_finish")
    file_enumerator_next_files_finish :: proc(enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_file_enumerator_close_async")
    file_enumerator_close_async :: proc(enumerator: ^FileEnumerator, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_enumerator_close_finish")
    file_enumerator_close_finish :: proc(enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_enumerator_is_closed")
    file_enumerator_is_closed :: proc(enumerator: ^FileEnumerator) -> glib.boolean ---

    @(link_name = "g_file_enumerator_has_pending")
    file_enumerator_has_pending :: proc(enumerator: ^FileEnumerator) -> glib.boolean ---

    @(link_name = "g_file_enumerator_set_pending")
    file_enumerator_set_pending :: proc(enumerator: ^FileEnumerator, pending: glib.boolean) ---

    @(link_name = "g_file_enumerator_get_container")
    file_enumerator_get_container :: proc(enumerator: ^FileEnumerator) -> ^File ---

    @(link_name = "g_file_enumerator_get_child")
    file_enumerator_get_child :: proc(enumerator: ^FileEnumerator, info: ^FileInfo) -> ^File ---

    @(link_name = "g_file_enumerator_iterate")
    file_enumerator_iterate :: proc(direnum: ^FileEnumerator, out_info: ^^FileInfo, out_child: ^^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_file_icon_get_type")
    file_icon_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_icon_new")
    file_icon_new :: proc(file: ^File) -> ^Icon ---

    @(link_name = "g_file_icon_get_file")
    file_icon_get_file :: proc(icon: ^FileIcon) -> ^File ---

    @(link_name = "g_file_info_get_type")
    file_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_info_new")
    file_info_new :: proc() -> ^FileInfo ---

    @(link_name = "g_file_info_dup")
    file_info_dup :: proc(other: ^FileInfo) -> ^FileInfo ---

    @(link_name = "g_file_info_copy_into")
    file_info_copy_into :: proc(src_info: ^FileInfo, dest_info: ^FileInfo) ---

    @(link_name = "g_file_info_has_attribute")
    file_info_has_attribute :: proc(info: ^FileInfo, attribute: cstring) -> glib.boolean ---

    @(link_name = "g_file_info_has_namespace")
    file_info_has_namespace :: proc(info: ^FileInfo, name_space: cstring) -> glib.boolean ---

    @(link_name = "g_file_info_list_attributes")
    file_info_list_attributes :: proc(info: ^FileInfo, name_space: cstring) -> ^cstring ---

    @(link_name = "g_file_info_get_attribute_data")
    file_info_get_attribute_data :: proc(info: ^FileInfo, attribute: cstring, type: ^FileAttributeType, value_pp: ^glib.pointer, status: [^]FileAttributeStatus) -> glib.boolean ---

    @(link_name = "g_file_info_get_attribute_type")
    file_info_get_attribute_type :: proc(info: ^FileInfo, attribute: cstring) -> FileAttributeType ---

    @(link_name = "g_file_info_remove_attribute")
    file_info_remove_attribute :: proc(info: ^FileInfo, attribute: cstring) ---

    @(link_name = "g_file_info_get_attribute_status")
    file_info_get_attribute_status :: proc(info: ^FileInfo, attribute: cstring) -> FileAttributeStatus ---

    @(link_name = "g_file_info_set_attribute_status")
    file_info_set_attribute_status :: proc(info: ^FileInfo, attribute: cstring, status: FileAttributeStatus) -> glib.boolean ---

    @(link_name = "g_file_info_get_attribute_as_string")
    file_info_get_attribute_as_string :: proc(info: ^FileInfo, attribute: cstring) -> cstring ---

    @(link_name = "g_file_info_get_attribute_string")
    file_info_get_attribute_string :: proc(info: ^FileInfo, attribute: cstring) -> cstring ---

    @(link_name = "g_file_info_get_attribute_byte_string")
    file_info_get_attribute_byte_string :: proc(info: ^FileInfo, attribute: cstring) -> cstring ---

    @(link_name = "g_file_info_get_attribute_boolean")
    file_info_get_attribute_boolean :: proc(info: ^FileInfo, attribute: cstring) -> glib.boolean ---

    @(link_name = "g_file_info_get_attribute_uint32")
    file_info_get_attribute_uint32 :: proc(info: ^FileInfo, attribute: cstring) -> glib.uint32 ---

    @(link_name = "g_file_info_get_attribute_int32")
    file_info_get_attribute_int32 :: proc(info: ^FileInfo, attribute: cstring) -> glib.int32 ---

    @(link_name = "g_file_info_get_attribute_uint64")
    file_info_get_attribute_uint64 :: proc(info: ^FileInfo, attribute: cstring) -> glib.uint64 ---

    @(link_name = "g_file_info_get_attribute_int64")
    file_info_get_attribute_int64 :: proc(info: ^FileInfo, attribute: cstring) -> glib.int64 ---

    @(link_name = "g_file_info_get_attribute_object")
    file_info_get_attribute_object :: proc(info: ^FileInfo, attribute: cstring) -> ^gobj.Object ---

    @(link_name = "g_file_info_get_attribute_stringv")
    file_info_get_attribute_stringv :: proc(info: ^FileInfo, attribute: cstring) -> ^cstring ---

    @(link_name = "g_file_info_get_attribute_file_path")
    file_info_get_attribute_file_path :: proc(info: ^FileInfo, attribute: cstring) -> cstring ---

    @(link_name = "g_file_info_set_attribute")
    file_info_set_attribute :: proc(info: ^FileInfo, attribute: cstring, type: FileAttributeType, value_p: glib.pointer) ---

    @(link_name = "g_file_info_set_attribute_string")
    file_info_set_attribute_string :: proc(info: ^FileInfo, attribute: cstring, attr_value: cstring) ---

    @(link_name = "g_file_info_set_attribute_byte_string")
    file_info_set_attribute_byte_string :: proc(info: ^FileInfo, attribute: cstring, attr_value: cstring) ---

    @(link_name = "g_file_info_set_attribute_boolean")
    file_info_set_attribute_boolean :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.boolean) ---

    @(link_name = "g_file_info_set_attribute_uint32")
    file_info_set_attribute_uint32 :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.uint32) ---

    @(link_name = "g_file_info_set_attribute_int32")
    file_info_set_attribute_int32 :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.int32) ---

    @(link_name = "g_file_info_set_attribute_uint64")
    file_info_set_attribute_uint64 :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.uint64) ---

    @(link_name = "g_file_info_set_attribute_int64")
    file_info_set_attribute_int64 :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.int64) ---

    @(link_name = "g_file_info_set_attribute_object")
    file_info_set_attribute_object :: proc(info: ^FileInfo, attribute: cstring, attr_value: ^gobj.Object) ---

    @(link_name = "g_file_info_set_attribute_stringv")
    file_info_set_attribute_stringv :: proc(info: ^FileInfo, attribute: cstring, attr_value: ^cstring) ---

    @(link_name = "g_file_info_set_attribute_file_path")
    file_info_set_attribute_file_path :: proc(info: ^FileInfo, attribute: cstring, attr_value: cstring) ---

    @(link_name = "g_file_info_clear_status")
    file_info_clear_status :: proc(info: ^FileInfo) ---

    @(link_name = "g_file_info_get_deletion_date")
    file_info_get_deletion_date :: proc(info: ^FileInfo) -> ^glib.DateTime ---

    @(link_name = "g_file_info_get_file_type")
    file_info_get_file_type :: proc(info: ^FileInfo) -> FileType ---

    @(link_name = "g_file_info_get_is_hidden")
    file_info_get_is_hidden :: proc(info: ^FileInfo) -> glib.boolean ---

    @(link_name = "g_file_info_get_is_backup")
    file_info_get_is_backup :: proc(info: ^FileInfo) -> glib.boolean ---

    @(link_name = "g_file_info_get_is_symlink")
    file_info_get_is_symlink :: proc(info: ^FileInfo) -> glib.boolean ---

    @(link_name = "g_file_info_get_name")
    file_info_get_name :: proc(info: ^FileInfo) -> cstring ---

    @(link_name = "g_file_info_get_display_name")
    file_info_get_display_name :: proc(info: ^FileInfo) -> cstring ---

    @(link_name = "g_file_info_get_edit_name")
    file_info_get_edit_name :: proc(info: ^FileInfo) -> cstring ---

    @(link_name = "g_file_info_get_icon")
    file_info_get_icon :: proc(info: ^FileInfo) -> ^Icon ---

    @(link_name = "g_file_info_get_symbolic_icon")
    file_info_get_symbolic_icon :: proc(info: ^FileInfo) -> ^Icon ---

    @(link_name = "g_file_info_get_content_type")
    file_info_get_content_type :: proc(info: ^FileInfo) -> cstring ---

    @(link_name = "g_file_info_get_size")
    file_info_get_size :: proc(info: ^FileInfo) -> glib.offset ---

    @(link_name = "g_file_info_get_modification_time")
    file_info_get_modification_time :: proc(info: ^FileInfo, result: ^glib.TimeVal) ---

    @(link_name = "g_file_info_get_modification_date_time")
    file_info_get_modification_date_time :: proc(info: ^FileInfo) -> ^glib.DateTime ---

    @(link_name = "g_file_info_get_access_date_time")
    file_info_get_access_date_time :: proc(info: ^FileInfo) -> ^glib.DateTime ---

    @(link_name = "g_file_info_get_creation_date_time")
    file_info_get_creation_date_time :: proc(info: ^FileInfo) -> ^glib.DateTime ---

    @(link_name = "g_file_info_get_symlink_target")
    file_info_get_symlink_target :: proc(info: ^FileInfo) -> cstring ---

    @(link_name = "g_file_info_get_etag")
    file_info_get_etag :: proc(info: ^FileInfo) -> cstring ---

    @(link_name = "g_file_info_get_sort_order")
    file_info_get_sort_order :: proc(info: ^FileInfo) -> glib.int32 ---

    @(link_name = "g_file_info_set_attribute_mask")
    file_info_set_attribute_mask :: proc(info: ^FileInfo, mask: ^FileAttributeMatcher) ---

    @(link_name = "g_file_info_unset_attribute_mask")
    file_info_unset_attribute_mask :: proc(info: ^FileInfo) ---

    @(link_name = "g_file_info_set_file_type")
    file_info_set_file_type :: proc(info: ^FileInfo, type: FileType) ---

    @(link_name = "g_file_info_set_is_hidden")
    file_info_set_is_hidden :: proc(info: ^FileInfo, is_hidden: glib.boolean) ---

    @(link_name = "g_file_info_set_is_symlink")
    file_info_set_is_symlink :: proc(info: ^FileInfo, is_symlink: glib.boolean) ---

    @(link_name = "g_file_info_set_name")
    file_info_set_name :: proc(info: ^FileInfo, name: cstring) ---

    @(link_name = "g_file_info_set_display_name")
    file_info_set_display_name :: proc(info: ^FileInfo, display_name: cstring) ---

    @(link_name = "g_file_info_set_edit_name")
    file_info_set_edit_name :: proc(info: ^FileInfo, edit_name: cstring) ---

    @(link_name = "g_file_info_set_icon")
    file_info_set_icon :: proc(info: ^FileInfo, icon: ^Icon) ---

    @(link_name = "g_file_info_set_symbolic_icon")
    file_info_set_symbolic_icon :: proc(info: ^FileInfo, icon: ^Icon) ---

    @(link_name = "g_file_info_set_content_type")
    file_info_set_content_type :: proc(info: ^FileInfo, content_type: cstring) ---

    @(link_name = "g_file_info_set_size")
    file_info_set_size :: proc(info: ^FileInfo, size_p: glib.offset) ---

    @(link_name = "g_file_info_set_modification_time")
    file_info_set_modification_time :: proc(info: ^FileInfo, mtime: ^glib.TimeVal) ---

    @(link_name = "g_file_info_set_modification_date_time")
    file_info_set_modification_date_time :: proc(info: ^FileInfo, mtime: ^glib.DateTime) ---

    @(link_name = "g_file_info_set_access_date_time")
    file_info_set_access_date_time :: proc(info: ^FileInfo, atime: ^glib.DateTime) ---

    @(link_name = "g_file_info_set_creation_date_time")
    file_info_set_creation_date_time :: proc(info: ^FileInfo, creation_time: ^glib.DateTime) ---

    @(link_name = "g_file_info_set_symlink_target")
    file_info_set_symlink_target :: proc(info: ^FileInfo, symlink_target: cstring) ---

    @(link_name = "g_file_info_set_sort_order")
    file_info_set_sort_order :: proc(info: ^FileInfo, sort_order: glib.int32) ---

    @(link_name = "g_file_attribute_matcher_get_type")
    file_attribute_matcher_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_attribute_matcher_new")
    file_attribute_matcher_new :: proc(attributes: cstring) -> ^FileAttributeMatcher ---

    @(link_name = "g_file_attribute_matcher_ref")
    file_attribute_matcher_ref :: proc(matcher: ^FileAttributeMatcher) -> ^FileAttributeMatcher ---

    @(link_name = "g_file_attribute_matcher_unref")
    file_attribute_matcher_unref :: proc(matcher: ^FileAttributeMatcher) ---

    @(link_name = "g_file_attribute_matcher_subtract")
    file_attribute_matcher_subtract :: proc(matcher: ^FileAttributeMatcher, subtract: ^FileAttributeMatcher) -> ^FileAttributeMatcher ---

    @(link_name = "g_file_attribute_matcher_matches")
    file_attribute_matcher_matches :: proc(matcher: ^FileAttributeMatcher, attribute: cstring) -> glib.boolean ---

    @(link_name = "g_file_attribute_matcher_matches_only")
    file_attribute_matcher_matches_only :: proc(matcher: ^FileAttributeMatcher, attribute: cstring) -> glib.boolean ---

    @(link_name = "g_file_attribute_matcher_enumerate_namespace")
    file_attribute_matcher_enumerate_namespace :: proc(matcher: ^FileAttributeMatcher, ns: cstring) -> glib.boolean ---

    @(link_name = "g_file_attribute_matcher_enumerate_next")
    file_attribute_matcher_enumerate_next :: proc(matcher: ^FileAttributeMatcher) -> cstring ---

    @(link_name = "g_file_attribute_matcher_to_string")
    file_attribute_matcher_to_string :: proc(matcher: ^FileAttributeMatcher) -> cstring ---

    @(link_name = "g_file_input_stream_get_type")
    file_input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_input_stream_query_info")
    file_input_stream_query_info :: proc(stream: ^FileInputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_input_stream_query_info_async")
    file_input_stream_query_info_async :: proc(stream: ^FileInputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_input_stream_query_info_finish")
    file_input_stream_query_info_finish :: proc(stream: ^FileInputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_io_error_quark")
    io_error_quark :: proc() -> glib.Quark ---

    @(link_name = "g_io_error_from_errno")
    io_error_from_errno :: proc(err_no: glib.int_) -> IOErrorEnum ---

    @(link_name = "g_io_error_from_file_error")
    io_error_from_file_error :: proc(file_error: glib.FileError) -> IOErrorEnum ---

    @(link_name = "g_io_stream_get_type")
    io_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_stream_get_input_stream")
    io_stream_get_input_stream :: proc(stream: ^IOStream) -> ^InputStream ---

    @(link_name = "g_io_stream_get_output_stream")
    io_stream_get_output_stream :: proc(stream: ^IOStream) -> ^OutputStream ---

    @(link_name = "g_io_stream_splice_async")
    io_stream_splice_async :: proc(stream1: ^IOStream, stream2: ^IOStream, flags: IOStreamSpliceFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_io_stream_splice_finish")
    io_stream_splice_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_io_stream_close")
    io_stream_close :: proc(stream: ^IOStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_io_stream_close_async")
    io_stream_close_async :: proc(stream: ^IOStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_io_stream_close_finish")
    io_stream_close_finish :: proc(stream: ^IOStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_io_stream_is_closed")
    io_stream_is_closed :: proc(stream: ^IOStream) -> glib.boolean ---

    @(link_name = "g_io_stream_has_pending")
    io_stream_has_pending :: proc(stream: ^IOStream) -> glib.boolean ---

    @(link_name = "g_io_stream_set_pending")
    io_stream_set_pending :: proc(stream: ^IOStream, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_io_stream_clear_pending")
    io_stream_clear_pending :: proc(stream: ^IOStream) ---

    @(link_name = "g_file_io_stream_get_type")
    file_io_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_io_stream_query_info")
    file_io_stream_query_info :: proc(stream: ^FileIOStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_io_stream_query_info_async")
    file_io_stream_query_info_async :: proc(stream: ^FileIOStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_io_stream_query_info_finish")
    file_io_stream_query_info_finish :: proc(stream: ^FileIOStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_io_stream_get_etag")
    file_io_stream_get_etag :: proc(stream: ^FileIOStream) -> cstring ---

    @(link_name = "g_file_monitor_get_type")
    file_monitor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_monitor_cancel")
    file_monitor_cancel :: proc(monitor: ^FileMonitor) -> glib.boolean ---

    @(link_name = "g_file_monitor_is_cancelled")
    file_monitor_is_cancelled :: proc(monitor: ^FileMonitor) -> glib.boolean ---

    @(link_name = "g_file_monitor_set_rate_limit")
    file_monitor_set_rate_limit :: proc(monitor: ^FileMonitor, limit_msecs: glib.int_) ---

    @(link_name = "g_file_monitor_emit_event")
    file_monitor_emit_event :: proc(monitor: ^FileMonitor, child: ^File, other_file: ^File, event_type: FileMonitorEvent) ---

    @(link_name = "g_filename_completer_get_type")
    filename_completer_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_filename_completer_new")
    filename_completer_new :: proc() -> ^FilenameCompleter ---

    @(link_name = "g_filename_completer_get_completion_suffix")
    filename_completer_get_completion_suffix :: proc(completer: ^FilenameCompleter, initial_text: cstring) -> cstring ---

    @(link_name = "g_filename_completer_get_completions")
    filename_completer_get_completions :: proc(completer: ^FilenameCompleter, initial_text: cstring) -> ^cstring ---

    @(link_name = "g_filename_completer_set_dirs_only")
    filename_completer_set_dirs_only :: proc(completer: ^FilenameCompleter, dirs_only: glib.boolean) ---

    @(link_name = "g_file_output_stream_get_type")
    file_output_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_output_stream_query_info")
    file_output_stream_query_info :: proc(stream: ^FileOutputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_output_stream_query_info_async")
    file_output_stream_query_info_async :: proc(stream: ^FileOutputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_file_output_stream_query_info_finish")
    file_output_stream_query_info_finish :: proc(stream: ^FileOutputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo ---

    @(link_name = "g_file_output_stream_get_etag")
    file_output_stream_get_etag :: proc(stream: ^FileOutputStream) -> cstring ---

    @(link_name = "g_inet_address_get_type")
    inet_address_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_inet_address_new_from_string")
    inet_address_new_from_string :: proc(string_p: cstring) -> ^InetAddress ---

    @(link_name = "g_inet_address_new_from_bytes")
    inet_address_new_from_bytes :: proc(bytes: [^]glib.uint8, family: SocketFamily) -> ^InetAddress ---

    @(link_name = "g_inet_address_new_loopback")
    inet_address_new_loopback :: proc(family: SocketFamily) -> ^InetAddress ---

    @(link_name = "g_inet_address_new_any")
    inet_address_new_any :: proc(family: SocketFamily) -> ^InetAddress ---

    @(link_name = "g_inet_address_equal")
    inet_address_equal :: proc(address: [^]InetAddress, other_address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_to_string")
    inet_address_to_string :: proc(address: [^]InetAddress) -> cstring ---

    @(link_name = "g_inet_address_to_bytes")
    inet_address_to_bytes :: proc(address: [^]InetAddress) -> ^glib.uint8 ---

    @(link_name = "g_inet_address_get_native_size")
    inet_address_get_native_size :: proc(address: [^]InetAddress) -> glib.size ---

    @(link_name = "g_inet_address_get_family")
    inet_address_get_family :: proc(address: [^]InetAddress) -> SocketFamily ---

    @(link_name = "g_inet_address_get_is_any")
    inet_address_get_is_any :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_loopback")
    inet_address_get_is_loopback :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_link_local")
    inet_address_get_is_link_local :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_site_local")
    inet_address_get_is_site_local :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_multicast")
    inet_address_get_is_multicast :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_mc_global")
    inet_address_get_is_mc_global :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_mc_link_local")
    inet_address_get_is_mc_link_local :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_mc_node_local")
    inet_address_get_is_mc_node_local :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_mc_org_local")
    inet_address_get_is_mc_org_local :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_get_is_mc_site_local")
    inet_address_get_is_mc_site_local :: proc(address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_mask_get_type")
    inet_address_mask_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_inet_address_mask_new")
    inet_address_mask_new :: proc(addr: ^InetAddress, length: glib.uint_, error: ^^glib.Error) -> ^InetAddressMask ---

    @(link_name = "g_inet_address_mask_new_from_string")
    inet_address_mask_new_from_string :: proc(mask_string: cstring, error: ^^glib.Error) -> ^InetAddressMask ---

    @(link_name = "g_inet_address_mask_to_string")
    inet_address_mask_to_string :: proc(mask: ^InetAddressMask) -> cstring ---

    @(link_name = "g_inet_address_mask_get_family")
    inet_address_mask_get_family :: proc(mask: ^InetAddressMask) -> SocketFamily ---

    @(link_name = "g_inet_address_mask_get_address")
    inet_address_mask_get_address :: proc(mask: ^InetAddressMask) -> ^InetAddress ---

    @(link_name = "g_inet_address_mask_get_length")
    inet_address_mask_get_length :: proc(mask: ^InetAddressMask) -> glib.uint_ ---

    @(link_name = "g_inet_address_mask_matches")
    inet_address_mask_matches :: proc(mask: ^InetAddressMask, address: [^]InetAddress) -> glib.boolean ---

    @(link_name = "g_inet_address_mask_equal")
    inet_address_mask_equal :: proc(mask: ^InetAddressMask, mask2: ^InetAddressMask) -> glib.boolean ---

    @(link_name = "g_socket_address_get_type")
    socket_address_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_address_get_family")
    socket_address_get_family :: proc(address: [^]SocketAddress) -> SocketFamily ---

    @(link_name = "g_socket_address_new_from_native")
    socket_address_new_from_native :: proc(native: glib.pointer, len: glib.size) -> ^SocketAddress ---

    @(link_name = "g_socket_address_to_native")
    socket_address_to_native :: proc(address: [^]SocketAddress, dest: glib.pointer, destlen: glib.size, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_address_get_native_size")
    socket_address_get_native_size :: proc(address: [^]SocketAddress) -> glib.ssize ---

    @(link_name = "g_inet_socket_address_get_type")
    inet_socket_address_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_inet_socket_address_new")
    inet_socket_address_new :: proc(address: [^]InetAddress, port: glib.uint16) -> ^SocketAddress ---

    @(link_name = "g_inet_socket_address_new_from_string")
    inet_socket_address_new_from_string :: proc(address: cstring, port: glib.uint_) -> ^SocketAddress ---

    @(link_name = "g_inet_socket_address_get_address")
    inet_socket_address_get_address :: proc(address: [^]InetSocketAddress) -> ^InetAddress ---

    @(link_name = "g_inet_socket_address_get_port")
    inet_socket_address_get_port :: proc(address: [^]InetSocketAddress) -> glib.uint16 ---

    @(link_name = "g_inet_socket_address_get_flowinfo")
    inet_socket_address_get_flowinfo :: proc(address: [^]InetSocketAddress) -> glib.uint32 ---

    @(link_name = "g_inet_socket_address_get_scope_id")
    inet_socket_address_get_scope_id :: proc(address: [^]InetSocketAddress) -> glib.uint32 ---

    @(link_name = "g_app_info_create_flags_get_type")
    app_info_create_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_converter_flags_get_type")
    converter_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_converter_result_get_type")
    converter_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_data_stream_byte_order_get_type")
    data_stream_byte_order_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_data_stream_newline_type_get_type")
    data_stream_newline_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_attribute_type_get_type")
    file_attribute_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_attribute_info_flags_get_type")
    file_attribute_info_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_attribute_status_get_type")
    file_attribute_status_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_query_info_flags_get_type")
    file_query_info_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_create_flags_get_type")
    file_create_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_measure_flags_get_type")
    file_measure_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_mount_mount_flags_get_type")
    mount_mount_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_mount_unmount_flags_get_type")
    mount_unmount_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_drive_start_flags_get_type")
    drive_start_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_drive_start_stop_type_get_type")
    drive_start_stop_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_copy_flags_get_type")
    file_copy_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_monitor_flags_get_type")
    file_monitor_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_type_get_type")
    file_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_filesystem_preview_type_get_type")
    filesystem_preview_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_monitor_event_get_type")
    file_monitor_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_error_enum_get_type")
    io_error_enum_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_ask_password_flags_get_type")
    ask_password_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_password_save_get_type")
    password_save_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_mount_operation_result_get_type")
    mount_operation_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_output_stream_splice_flags_get_type")
    output_stream_splice_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_stream_splice_flags_get_type")
    io_stream_splice_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_emblem_origin_get_type")
    emblem_origin_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resolver_error_get_type")
    resolver_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resolver_record_type_get_type")
    resolver_record_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resource_error_get_type")
    resource_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resource_flags_get_type")
    resource_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resource_lookup_flags_get_type")
    resource_lookup_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_family_get_type")
    socket_family_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_type_get_type")
    socket_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_msg_flags_get_type")
    socket_msg_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_protocol_get_type")
    socket_protocol_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_zlib_compressor_format_get_type")
    zlib_compressor_format_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_unix_socket_address_type_get_type")
    unix_socket_address_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_bus_type_get_type")
    bus_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_bus_name_owner_flags_get_type")
    bus_name_owner_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_bus_name_watcher_flags_get_type")
    bus_name_watcher_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_proxy_flags_get_type")
    dbus_proxy_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_error_get_type")
    dbus_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_connection_flags_get_type")
    dbus_connection_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_capability_flags_get_type")
    dbus_capability_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_call_flags_get_type")
    dbus_call_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_type_get_type")
    dbus_message_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_flags_get_type")
    dbus_message_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_header_field_get_type")
    dbus_message_header_field_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_property_info_flags_get_type")
    dbus_property_info_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_subtree_flags_get_type")
    dbus_subtree_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_server_flags_get_type")
    dbus_server_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_signal_flags_get_type")
    dbus_signal_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_send_message_flags_get_type")
    dbus_send_message_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_credentials_type_get_type")
    credentials_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_byte_order_get_type")
    dbus_message_byte_order_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_application_flags_get_type")
    application_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_error_get_type")
    tls_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_certificate_flags_get_type")
    tls_certificate_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_authentication_mode_get_type")
    tls_authentication_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_channel_binding_type_get_type")
    tls_channel_binding_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_channel_binding_error_get_type")
    tls_channel_binding_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_rehandshake_mode_get_type")
    tls_rehandshake_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_password_flags_get_type")
    tls_password_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_interaction_result_get_type")
    tls_interaction_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_interface_skeleton_flags_get_type")
    dbus_interface_skeleton_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_object_manager_client_flags_get_type")
    dbus_object_manager_client_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_database_verify_flags_get_type")
    tls_database_verify_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_database_lookup_flags_get_type")
    tls_database_lookup_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_certificate_request_flags_get_type")
    tls_certificate_request_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_protocol_version_get_type")
    tls_protocol_version_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_module_scope_flags_get_type")
    io_module_scope_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_client_event_get_type")
    socket_client_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_listener_event_get_type")
    socket_listener_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_test_dbus_flags_get_type")
    test_dbus_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_subprocess_flags_get_type")
    subprocess_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_notification_priority_get_type")
    notification_priority_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_network_connectivity_get_type")
    network_connectivity_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_pollable_return_get_type")
    pollable_return_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_memory_monitor_warning_level_get_type")
    memory_monitor_warning_level_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resolver_name_lookup_flags_get_type")
    resolver_name_lookup_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_settings_bind_flags_get_type")
    settings_bind_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_module_scope_new")
    io_module_scope_new :: proc(flags: IOModuleScopeFlags) -> ^IOModuleScope ---

    @(link_name = "g_io_module_scope_free")
    io_module_scope_free :: proc(scope: ^IOModuleScope) ---

    @(link_name = "g_io_module_scope_block")
    io_module_scope_block :: proc(scope: ^IOModuleScope, basename: cstring) ---

    @(link_name = "g_io_module_get_type")
    io_module_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_module_new")
    io_module_new :: proc(filename: cstring) -> ^IOModule ---

    @(link_name = "g_io_modules_scan_all_in_directory")
    io_modules_scan_all_in_directory :: proc(dirname: cstring) ---

    @(link_name = "g_io_modules_load_all_in_directory")
    io_modules_load_all_in_directory :: proc(dirname: cstring) -> ^glib.List ---

    @(link_name = "g_io_modules_scan_all_in_directory_with_scope")
    io_modules_scan_all_in_directory_with_scope :: proc(dirname: cstring, scope: ^IOModuleScope) ---

    @(link_name = "g_io_modules_load_all_in_directory_with_scope")
    io_modules_load_all_in_directory_with_scope :: proc(dirname: cstring, scope: ^IOModuleScope) -> ^glib.List ---

    @(link_name = "g_io_extension_point_register")
    io_extension_point_register :: proc(name: cstring) -> ^IOExtensionPoint ---

    @(link_name = "g_io_extension_point_lookup")
    io_extension_point_lookup :: proc(name: cstring) -> ^IOExtensionPoint ---

    @(link_name = "g_io_extension_point_set_required_type")
    io_extension_point_set_required_type :: proc(extension_point: ^IOExtensionPoint, type: gobj.Type) ---

    @(link_name = "g_io_extension_point_get_required_type")
    io_extension_point_get_required_type :: proc(extension_point: ^IOExtensionPoint) -> gobj.Type ---

    @(link_name = "g_io_extension_point_get_extensions")
    io_extension_point_get_extensions :: proc(extension_point: ^IOExtensionPoint) -> ^glib.List ---

    @(link_name = "g_io_extension_point_get_extension_by_name")
    io_extension_point_get_extension_by_name :: proc(extension_point: ^IOExtensionPoint, name: cstring) -> ^IOExtension ---

    @(link_name = "g_io_extension_point_implement")
    io_extension_point_implement :: proc(extension_point_name: cstring, type: gobj.Type, extension_name: cstring, priority: glib.int_) -> ^IOExtension ---

    @(link_name = "g_io_extension_get_type")
    io_extension_get_type :: proc(extension: ^IOExtension) -> gobj.Type ---

    @(link_name = "g_io_extension_get_name")
    io_extension_get_name :: proc(extension: ^IOExtension) -> cstring ---

    @(link_name = "g_io_extension_get_priority")
    io_extension_get_priority :: proc(extension: ^IOExtension) -> glib.int_ ---

    @(link_name = "g_io_extension_ref_class")
    io_extension_ref_class :: proc(extension: ^IOExtension) -> ^gobj.TypeClass ---

    @(link_name = "g_io_module_load")
    io_module_load :: proc(module: ^IOModule) ---

    @(link_name = "g_io_module_unload")
    io_module_unload :: proc(module: ^IOModule) ---

    @(link_name = "g_io_module_query")
    io_module_query :: proc() -> ^cstring ---

    @(link_name = "g_io_scheduler_push_job")
    io_scheduler_push_job :: proc(job_func: IOSchedulerJobFunc, user_data: glib.pointer, notify: glib.DestroyNotify, io_priority: glib.int_, cancellable: ^Cancellable) ---

    @(link_name = "g_io_scheduler_cancel_all_jobs")
    io_scheduler_cancel_all_jobs :: proc() ---

    @(link_name = "g_io_scheduler_job_send_to_mainloop")
    io_scheduler_job_send_to_mainloop :: proc(job: ^IOSchedulerJob, func: glib.SourceFunc, user_data: glib.pointer, notify: glib.DestroyNotify) -> glib.boolean ---

    @(link_name = "g_io_scheduler_job_send_to_mainloop_async")
    io_scheduler_job_send_to_mainloop_async :: proc(job: ^IOSchedulerJob, func: glib.SourceFunc, user_data: glib.pointer, notify: glib.DestroyNotify) ---

    @(link_name = "g_list_model_get_type")
    list_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_list_model_get_item_type")
    list_model_get_item_type :: proc(list: ^ListModel) -> gobj.Type ---

    @(link_name = "g_list_model_get_n_items")
    list_model_get_n_items :: proc(list: ^ListModel) -> glib.uint_ ---

    @(link_name = "g_list_model_get_item")
    list_model_get_item :: proc(list: ^ListModel, position: glib.uint_) -> glib.pointer ---

    @(link_name = "g_list_model_get_object")
    list_model_get_object :: proc(list: ^ListModel, position: glib.uint_) -> ^gobj.Object ---

    @(link_name = "g_list_model_items_changed")
    list_model_items_changed :: proc(list: ^ListModel, position: glib.uint_, removed: glib.uint_, added: glib.uint_) ---

    @(link_name = "g_list_store_get_type")
    list_store_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_list_store_new")
    list_store_new :: proc(item_type: gobj.Type) -> ^ListStore ---

    @(link_name = "g_list_store_insert")
    list_store_insert :: proc(store: ^ListStore, position: glib.uint_, item: glib.pointer) ---

    @(link_name = "g_list_store_insert_sorted")
    list_store_insert_sorted :: proc(store: ^ListStore, item: glib.pointer, compare_func: glib.CompareDataFunc, user_data: glib.pointer) -> glib.uint_ ---

    @(link_name = "g_list_store_sort")
    list_store_sort :: proc(store: ^ListStore, compare_func: glib.CompareDataFunc, user_data: glib.pointer) ---

    @(link_name = "g_list_store_append")
    list_store_append :: proc(store: ^ListStore, item: glib.pointer) ---

    @(link_name = "g_list_store_remove")
    list_store_remove :: proc(store: ^ListStore, position: glib.uint_) ---

    @(link_name = "g_list_store_remove_all")
    list_store_remove_all :: proc(store: ^ListStore) ---

    @(link_name = "g_list_store_splice")
    list_store_splice :: proc(store: ^ListStore, position: glib.uint_, n_removals: glib.uint_, additions: [^]glib.pointer, n_additions: glib.uint_) ---

    @(link_name = "g_list_store_find")
    list_store_find :: proc(store: ^ListStore, item: glib.pointer, position: ^glib.uint_) -> glib.boolean ---

    @(link_name = "g_list_store_find_with_equal_func")
    list_store_find_with_equal_func :: proc(store: ^ListStore, item: glib.pointer, equal_func: glib.EqualFunc, position: ^glib.uint_) -> glib.boolean ---

    @(link_name = "g_list_store_find_with_equal_func_full")
    list_store_find_with_equal_func_full :: proc(store: ^ListStore, item: glib.pointer, equal_func: glib.EqualFuncFull, user_data: glib.pointer, position: ^glib.uint_) -> glib.boolean ---

    @(link_name = "g_loadable_icon_get_type")
    loadable_icon_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_loadable_icon_load")
    loadable_icon_load :: proc(icon: ^LoadableIcon, size_p: i32, type: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^InputStream ---

    @(link_name = "g_loadable_icon_load_async")
    loadable_icon_load_async :: proc(icon: ^LoadableIcon, size_p: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_loadable_icon_load_finish")
    loadable_icon_load_finish :: proc(icon: ^LoadableIcon, res: [^]AsyncResult, type: ^cstring, error: ^^glib.Error) -> ^InputStream ---

    @(link_name = "g_memory_input_stream_get_type")
    memory_input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_memory_input_stream_new")
    memory_input_stream_new :: proc() -> ^InputStream ---

    @(link_name = "g_memory_input_stream_new_from_data")
    memory_input_stream_new_from_data :: proc(data: rawptr, len: glib.ssize, destroy: glib.DestroyNotify) -> ^InputStream ---

    @(link_name = "g_memory_input_stream_new_from_bytes")
    memory_input_stream_new_from_bytes :: proc(bytes: [^]glib.Bytes) -> ^InputStream ---

    @(link_name = "g_memory_input_stream_add_data")
    memory_input_stream_add_data :: proc(stream: ^MemoryInputStream, data: rawptr, len: glib.ssize, destroy: glib.DestroyNotify) ---

    @(link_name = "g_memory_input_stream_add_bytes")
    memory_input_stream_add_bytes :: proc(stream: ^MemoryInputStream, bytes: [^]glib.Bytes) ---

    @(link_name = "g_memory_monitor_get_type")
    memory_monitor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_memory_monitor_dup_default")
    memory_monitor_dup_default :: proc() -> ^MemoryMonitor ---

    @(link_name = "g_memory_output_stream_get_type")
    memory_output_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_memory_output_stream_new")
    memory_output_stream_new :: proc(data: glib.pointer, size_p: glib.size, realloc_function: ReallocFunc, destroy_function: glib.DestroyNotify) -> ^OutputStream ---

    @(link_name = "g_memory_output_stream_new_resizable")
    memory_output_stream_new_resizable :: proc() -> ^OutputStream ---

    @(link_name = "g_memory_output_stream_get_data")
    memory_output_stream_get_data :: proc(ostream: ^MemoryOutputStream) -> glib.pointer ---

    @(link_name = "g_memory_output_stream_get_size")
    memory_output_stream_get_size :: proc(ostream: ^MemoryOutputStream) -> glib.size ---

    @(link_name = "g_memory_output_stream_get_data_size")
    memory_output_stream_get_data_size :: proc(ostream: ^MemoryOutputStream) -> glib.size ---

    @(link_name = "g_memory_output_stream_steal_data")
    memory_output_stream_steal_data :: proc(ostream: ^MemoryOutputStream) -> glib.pointer ---

    @(link_name = "g_memory_output_stream_steal_as_bytes")
    memory_output_stream_steal_as_bytes :: proc(ostream: ^MemoryOutputStream) -> ^glib.Bytes ---

    @(link_name = "g_menu_model_get_type")
    menu_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_menu_model_is_mutable")
    menu_model_is_mutable :: proc(model: ^MenuModel) -> glib.boolean ---

    @(link_name = "g_menu_model_get_n_items")
    menu_model_get_n_items :: proc(model: ^MenuModel) -> glib.int_ ---

    @(link_name = "g_menu_model_iterate_item_attributes")
    menu_model_iterate_item_attributes :: proc(model: ^MenuModel, item_index: glib.int_) -> ^MenuAttributeIter ---

    @(link_name = "g_menu_model_get_item_attribute_value")
    menu_model_get_item_attribute_value :: proc(model: ^MenuModel, item_index: glib.int_, attribute: cstring, expected_type: ^glib.VariantType) -> ^glib.Variant ---

    @(link_name = "g_menu_model_get_item_attribute")
    menu_model_get_item_attribute :: proc(model: ^MenuModel, item_index: glib.int_, attribute: cstring, format_string: cstring, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "g_menu_model_iterate_item_links")
    menu_model_iterate_item_links :: proc(model: ^MenuModel, item_index: glib.int_) -> ^MenuLinkIter ---

    @(link_name = "g_menu_model_get_item_link")
    menu_model_get_item_link :: proc(model: ^MenuModel, item_index: glib.int_, link: cstring) -> ^MenuModel ---

    @(link_name = "g_menu_model_items_changed")
    menu_model_items_changed :: proc(model: ^MenuModel, position: glib.int_, removed: glib.int_, added: glib.int_) ---

    @(link_name = "g_menu_attribute_iter_get_type")
    menu_attribute_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_menu_attribute_iter_get_next")
    menu_attribute_iter_get_next :: proc(iter: ^MenuAttributeIter, out_name: ^cstring, value: ^^glib.Variant) -> glib.boolean ---

    @(link_name = "g_menu_attribute_iter_next")
    menu_attribute_iter_next :: proc(iter: ^MenuAttributeIter) -> glib.boolean ---

    @(link_name = "g_menu_attribute_iter_get_name")
    menu_attribute_iter_get_name :: proc(iter: ^MenuAttributeIter) -> cstring ---

    @(link_name = "g_menu_attribute_iter_get_value")
    menu_attribute_iter_get_value :: proc(iter: ^MenuAttributeIter) -> ^glib.Variant ---

    @(link_name = "g_menu_link_iter_get_type")
    menu_link_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_menu_link_iter_get_next")
    menu_link_iter_get_next :: proc(iter: ^MenuLinkIter, out_link: ^cstring, value: ^^MenuModel) -> glib.boolean ---

    @(link_name = "g_menu_link_iter_next")
    menu_link_iter_next :: proc(iter: ^MenuLinkIter) -> glib.boolean ---

    @(link_name = "g_menu_link_iter_get_name")
    menu_link_iter_get_name :: proc(iter: ^MenuLinkIter) -> cstring ---

    @(link_name = "g_menu_link_iter_get_value")
    menu_link_iter_get_value :: proc(iter: ^MenuLinkIter) -> ^MenuModel ---

    @(link_name = "g_menu_get_type")
    menu_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_menu_new")
    menu_new :: proc() -> ^Menu ---

    @(link_name = "g_menu_freeze")
    menu_freeze :: proc(menu: ^Menu) ---

    @(link_name = "g_menu_insert_item")
    menu_insert_item :: proc(menu: ^Menu, position: glib.int_, item: ^MenuItem) ---

    @(link_name = "g_menu_prepend_item")
    menu_prepend_item :: proc(menu: ^Menu, item: ^MenuItem) ---

    @(link_name = "g_menu_append_item")
    menu_append_item :: proc(menu: ^Menu, item: ^MenuItem) ---

    @(link_name = "g_menu_remove")
    menu_remove :: proc(menu: ^Menu, position: glib.int_) ---

    @(link_name = "g_menu_remove_all")
    menu_remove_all :: proc(menu: ^Menu) ---

    @(link_name = "g_menu_insert")
    menu_insert :: proc(menu: ^Menu, position: glib.int_, label: cstring, detailed_action: cstring) ---

    @(link_name = "g_menu_prepend")
    menu_prepend :: proc(menu: ^Menu, label: cstring, detailed_action: cstring) ---

    @(link_name = "g_menu_append")
    menu_append :: proc(menu: ^Menu, label: cstring, detailed_action: cstring) ---

    @(link_name = "g_menu_insert_section")
    menu_insert_section :: proc(menu: ^Menu, position: glib.int_, label: cstring, section: ^MenuModel) ---

    @(link_name = "g_menu_prepend_section")
    menu_prepend_section :: proc(menu: ^Menu, label: cstring, section: ^MenuModel) ---

    @(link_name = "g_menu_append_section")
    menu_append_section :: proc(menu: ^Menu, label: cstring, section: ^MenuModel) ---

    @(link_name = "g_menu_insert_submenu")
    menu_insert_submenu :: proc(menu: ^Menu, position: glib.int_, label: cstring, submenu: ^MenuModel) ---

    @(link_name = "g_menu_prepend_submenu")
    menu_prepend_submenu :: proc(menu: ^Menu, label: cstring, submenu: ^MenuModel) ---

    @(link_name = "g_menu_append_submenu")
    menu_append_submenu :: proc(menu: ^Menu, label: cstring, submenu: ^MenuModel) ---

    @(link_name = "g_menu_item_get_type")
    menu_item_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_menu_item_new")
    menu_item_new :: proc(label: cstring, detailed_action: cstring) -> ^MenuItem ---

    @(link_name = "g_menu_item_new_from_model")
    menu_item_new_from_model :: proc(model: ^MenuModel, item_index: glib.int_) -> ^MenuItem ---

    @(link_name = "g_menu_item_new_submenu")
    menu_item_new_submenu :: proc(label: cstring, submenu: ^MenuModel) -> ^MenuItem ---

    @(link_name = "g_menu_item_new_section")
    menu_item_new_section :: proc(label: cstring, section: ^MenuModel) -> ^MenuItem ---

    @(link_name = "g_menu_item_get_attribute_value")
    menu_item_get_attribute_value :: proc(menu_item: ^MenuItem, attribute: cstring, expected_type: ^glib.VariantType) -> ^glib.Variant ---

    @(link_name = "g_menu_item_get_attribute")
    menu_item_get_attribute :: proc(menu_item: ^MenuItem, attribute: cstring, format_string: cstring, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "g_menu_item_get_link")
    menu_item_get_link :: proc(menu_item: ^MenuItem, link: cstring) -> ^MenuModel ---

    @(link_name = "g_menu_item_set_attribute_value")
    menu_item_set_attribute_value :: proc(menu_item: ^MenuItem, attribute: cstring, value: ^glib.Variant) ---

    @(link_name = "g_menu_item_set_attribute")
    menu_item_set_attribute :: proc(menu_item: ^MenuItem, attribute: cstring, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_menu_item_set_link")
    menu_item_set_link :: proc(menu_item: ^MenuItem, link: cstring, model: ^MenuModel) ---

    @(link_name = "g_menu_item_set_label")
    menu_item_set_label :: proc(menu_item: ^MenuItem, label: cstring) ---

    @(link_name = "g_menu_item_set_submenu")
    menu_item_set_submenu :: proc(menu_item: ^MenuItem, submenu: ^MenuModel) ---

    @(link_name = "g_menu_item_set_section")
    menu_item_set_section :: proc(menu_item: ^MenuItem, section: ^MenuModel) ---

    @(link_name = "g_menu_item_set_action_and_target_value")
    menu_item_set_action_and_target_value :: proc(menu_item: ^MenuItem, action: cstring, target_value: ^glib.Variant) ---

    @(link_name = "g_menu_item_set_action_and_target")
    menu_item_set_action_and_target :: proc(menu_item: ^MenuItem, action: cstring, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_menu_item_set_detailed_action")
    menu_item_set_detailed_action :: proc(menu_item: ^MenuItem, detailed_action: cstring) ---

    @(link_name = "g_menu_item_set_icon")
    menu_item_set_icon :: proc(menu_item: ^MenuItem, icon: ^Icon) ---

    @(link_name = "g_dbus_connection_export_menu_model")
    dbus_connection_export_menu_model :: proc(connection: ^DBusConnection, object_path: cstring, menu: ^MenuModel, error: ^^glib.Error) -> glib.uint_ ---

    @(link_name = "g_dbus_connection_unexport_menu_model")
    dbus_connection_unexport_menu_model :: proc(connection: ^DBusConnection, export_id: glib.uint_) ---

    @(link_name = "g_mount_get_type")
    mount_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_mount_get_root")
    mount_get_root :: proc(mount: ^Mount) -> ^File ---

    @(link_name = "g_mount_get_default_location")
    mount_get_default_location :: proc(mount: ^Mount) -> ^File ---

    @(link_name = "g_mount_get_name")
    mount_get_name :: proc(mount: ^Mount) -> cstring ---

    @(link_name = "g_mount_get_icon")
    mount_get_icon :: proc(mount: ^Mount) -> ^Icon ---

    @(link_name = "g_mount_get_symbolic_icon")
    mount_get_symbolic_icon :: proc(mount: ^Mount) -> ^Icon ---

    @(link_name = "g_mount_get_uuid")
    mount_get_uuid :: proc(mount: ^Mount) -> cstring ---

    @(link_name = "g_mount_get_volume")
    mount_get_volume :: proc(mount: ^Mount) -> ^Volume ---

    @(link_name = "g_mount_get_drive")
    mount_get_drive :: proc(mount: ^Mount) -> ^Drive ---

    @(link_name = "g_mount_can_unmount")
    mount_can_unmount :: proc(mount: ^Mount) -> glib.boolean ---

    @(link_name = "g_mount_can_eject")
    mount_can_eject :: proc(mount: ^Mount) -> glib.boolean ---

    @(link_name = "g_mount_unmount")
    mount_unmount :: proc(mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_mount_unmount_finish")
    mount_unmount_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_mount_eject")
    mount_eject :: proc(mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_mount_eject_finish")
    mount_eject_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_mount_remount")
    mount_remount :: proc(mount: ^Mount, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_mount_remount_finish")
    mount_remount_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_mount_guess_content_type")
    mount_guess_content_type :: proc(mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_mount_guess_content_type_finish")
    mount_guess_content_type_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring ---

    @(link_name = "g_mount_guess_content_type_sync")
    mount_guess_content_type_sync :: proc(mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring ---

    @(link_name = "g_mount_is_shadowed")
    mount_is_shadowed :: proc(mount: ^Mount) -> glib.boolean ---

    @(link_name = "g_mount_shadow")
    mount_shadow :: proc(mount: ^Mount) ---

    @(link_name = "g_mount_unshadow")
    mount_unshadow :: proc(mount: ^Mount) ---

    @(link_name = "g_mount_unmount_with_operation")
    mount_unmount_with_operation :: proc(mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_mount_unmount_with_operation_finish")
    mount_unmount_with_operation_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_mount_eject_with_operation")
    mount_eject_with_operation :: proc(mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_mount_eject_with_operation_finish")
    mount_eject_with_operation_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_mount_get_sort_key")
    mount_get_sort_key :: proc(mount: ^Mount) -> cstring ---

    @(link_name = "g_mount_operation_get_type")
    mount_operation_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_mount_operation_new")
    mount_operation_new :: proc() -> ^MountOperation ---

    @(link_name = "g_mount_operation_get_username")
    mount_operation_get_username :: proc(op: ^MountOperation) -> cstring ---

    @(link_name = "g_mount_operation_set_username")
    mount_operation_set_username :: proc(op: ^MountOperation, username: cstring) ---

    @(link_name = "g_mount_operation_get_password")
    mount_operation_get_password :: proc(op: ^MountOperation) -> cstring ---

    @(link_name = "g_mount_operation_set_password")
    mount_operation_set_password :: proc(op: ^MountOperation, password: cstring) ---

    @(link_name = "g_mount_operation_get_anonymous")
    mount_operation_get_anonymous :: proc(op: ^MountOperation) -> glib.boolean ---

    @(link_name = "g_mount_operation_set_anonymous")
    mount_operation_set_anonymous :: proc(op: ^MountOperation, anonymous: glib.boolean) ---

    @(link_name = "g_mount_operation_get_domain")
    mount_operation_get_domain :: proc(op: ^MountOperation) -> cstring ---

    @(link_name = "g_mount_operation_set_domain")
    mount_operation_set_domain :: proc(op: ^MountOperation, domain: cstring) ---

    @(link_name = "g_mount_operation_get_password_save")
    mount_operation_get_password_save :: proc(op: ^MountOperation) -> PasswordSave ---

    @(link_name = "g_mount_operation_set_password_save")
    mount_operation_set_password_save :: proc(op: ^MountOperation, save: PasswordSave) ---

    @(link_name = "g_mount_operation_get_choice")
    mount_operation_get_choice :: proc(op: ^MountOperation) -> i32 ---

    @(link_name = "g_mount_operation_set_choice")
    mount_operation_set_choice :: proc(op: ^MountOperation, choice: i32) ---

    @(link_name = "g_mount_operation_reply")
    mount_operation_reply :: proc(op: ^MountOperation, result: MountOperationResult) ---

    @(link_name = "g_mount_operation_get_is_tcrypt_hidden_volume")
    mount_operation_get_is_tcrypt_hidden_volume :: proc(op: ^MountOperation) -> glib.boolean ---

    @(link_name = "g_mount_operation_set_is_tcrypt_hidden_volume")
    mount_operation_set_is_tcrypt_hidden_volume :: proc(op: ^MountOperation, hidden_volume: glib.boolean) ---

    @(link_name = "g_mount_operation_get_is_tcrypt_system_volume")
    mount_operation_get_is_tcrypt_system_volume :: proc(op: ^MountOperation) -> glib.boolean ---

    @(link_name = "g_mount_operation_set_is_tcrypt_system_volume")
    mount_operation_set_is_tcrypt_system_volume :: proc(op: ^MountOperation, system_volume: glib.boolean) ---

    @(link_name = "g_mount_operation_get_pim")
    mount_operation_get_pim :: proc(op: ^MountOperation) -> glib.uint_ ---

    @(link_name = "g_mount_operation_set_pim")
    mount_operation_set_pim :: proc(op: ^MountOperation, pim: glib.uint_) ---

    @(link_name = "g_native_socket_address_get_type")
    native_socket_address_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_native_socket_address_new")
    native_socket_address_new :: proc(native: glib.pointer, len: glib.size) -> ^SocketAddress ---

    @(link_name = "g_volume_monitor_get_type")
    volume_monitor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_volume_monitor_get")
    volume_monitor_get :: proc() -> ^VolumeMonitor ---

    @(link_name = "g_volume_monitor_get_connected_drives")
    volume_monitor_get_connected_drives :: proc(volume_monitor: ^VolumeMonitor) -> ^glib.List ---

    @(link_name = "g_volume_monitor_get_volumes")
    volume_monitor_get_volumes :: proc(volume_monitor: ^VolumeMonitor) -> ^glib.List ---

    @(link_name = "g_volume_monitor_get_mounts")
    volume_monitor_get_mounts :: proc(volume_monitor: ^VolumeMonitor) -> ^glib.List ---

    @(link_name = "g_volume_monitor_get_volume_for_uuid")
    volume_monitor_get_volume_for_uuid :: proc(volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Volume ---

    @(link_name = "g_volume_monitor_get_mount_for_uuid")
    volume_monitor_get_mount_for_uuid :: proc(volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Mount ---

    @(link_name = "g_volume_monitor_adopt_orphan_mount")
    volume_monitor_adopt_orphan_mount :: proc(mount: ^Mount) -> ^Volume ---

    @(link_name = "g_native_volume_monitor_get_type")
    native_volume_monitor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_network_address_get_type")
    network_address_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_network_address_new")
    network_address_new :: proc(hostname: cstring, port: glib.uint16) -> ^SocketConnectable ---

    @(link_name = "g_network_address_new_loopback")
    network_address_new_loopback :: proc(port: glib.uint16) -> ^SocketConnectable ---

    @(link_name = "g_network_address_parse")
    network_address_parse :: proc(host_and_port: cstring, default_port: glib.uint16, error: ^^glib.Error) -> ^SocketConnectable ---

    @(link_name = "g_network_address_parse_uri")
    network_address_parse_uri :: proc(uri: cstring, default_port: glib.uint16, error: ^^glib.Error) -> ^SocketConnectable ---

    @(link_name = "g_network_address_get_hostname")
    network_address_get_hostname :: proc(addr: ^NetworkAddress) -> cstring ---

    @(link_name = "g_network_address_get_port")
    network_address_get_port :: proc(addr: ^NetworkAddress) -> glib.uint16 ---

    @(link_name = "g_network_address_get_scheme")
    network_address_get_scheme :: proc(addr: ^NetworkAddress) -> cstring ---

    @(link_name = "g_network_monitor_get_type")
    network_monitor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_network_monitor_get_default")
    network_monitor_get_default :: proc() -> ^NetworkMonitor ---

    @(link_name = "g_network_monitor_get_network_available")
    network_monitor_get_network_available :: proc(monitor: ^NetworkMonitor) -> glib.boolean ---

    @(link_name = "g_network_monitor_get_network_metered")
    network_monitor_get_network_metered :: proc(monitor: ^NetworkMonitor) -> glib.boolean ---

    @(link_name = "g_network_monitor_get_connectivity")
    network_monitor_get_connectivity :: proc(monitor: ^NetworkMonitor) -> NetworkConnectivity ---

    @(link_name = "g_network_monitor_can_reach")
    network_monitor_can_reach :: proc(monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_network_monitor_can_reach_async")
    network_monitor_can_reach_async :: proc(monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_network_monitor_can_reach_finish")
    network_monitor_can_reach_finish :: proc(monitor: ^NetworkMonitor, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_network_service_get_type")
    network_service_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_network_service_new")
    network_service_new :: proc(service: cstring, protocol: cstring, domain: cstring) -> ^SocketConnectable ---

    @(link_name = "g_network_service_get_service")
    network_service_get_service :: proc(srv: ^NetworkService) -> cstring ---

    @(link_name = "g_network_service_get_protocol")
    network_service_get_protocol :: proc(srv: ^NetworkService) -> cstring ---

    @(link_name = "g_network_service_get_domain")
    network_service_get_domain :: proc(srv: ^NetworkService) -> cstring ---

    @(link_name = "g_network_service_get_scheme")
    network_service_get_scheme :: proc(srv: ^NetworkService) -> cstring ---

    @(link_name = "g_network_service_set_scheme")
    network_service_set_scheme :: proc(srv: ^NetworkService, scheme: cstring) ---

    @(link_name = "g_notification_get_type")
    notification_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_notification_new")
    notification_new :: proc(title: cstring) -> ^Notification ---

    @(link_name = "g_notification_set_title")
    notification_set_title :: proc(notification: ^Notification, title: cstring) ---

    @(link_name = "g_notification_set_body")
    notification_set_body :: proc(notification: ^Notification, body: cstring) ---

    @(link_name = "g_notification_set_icon")
    notification_set_icon :: proc(notification: ^Notification, icon: ^Icon) ---

    @(link_name = "g_notification_set_urgent")
    notification_set_urgent :: proc(notification: ^Notification, urgent: glib.boolean) ---

    @(link_name = "g_notification_set_priority")
    notification_set_priority :: proc(notification: ^Notification, priority: NotificationPriority) ---

    @(link_name = "g_notification_set_category")
    notification_set_category :: proc(notification: ^Notification, category: cstring) ---

    @(link_name = "g_notification_add_button")
    notification_add_button :: proc(notification: ^Notification, label: cstring, detailed_action: cstring) ---

    @(link_name = "g_notification_add_button_with_target")
    notification_add_button_with_target :: proc(notification: ^Notification, label: cstring, action: cstring, target_format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_notification_add_button_with_target_value")
    notification_add_button_with_target_value :: proc(notification: ^Notification, label: cstring, action: cstring, target: ^glib.Variant) ---

    @(link_name = "g_notification_set_default_action")
    notification_set_default_action :: proc(notification: ^Notification, detailed_action: cstring) ---

    @(link_name = "g_notification_set_default_action_and_target")
    notification_set_default_action_and_target :: proc(notification: ^Notification, action: cstring, target_format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_notification_set_default_action_and_target_value")
    notification_set_default_action_and_target_value :: proc(notification: ^Notification, action: cstring, target: ^glib.Variant) ---

    @(link_name = "g_permission_get_type")
    permission_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_permission_acquire")
    permission_acquire :: proc(permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_permission_acquire_async")
    permission_acquire_async :: proc(permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_permission_acquire_finish")
    permission_acquire_finish :: proc(permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_permission_release")
    permission_release :: proc(permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_permission_release_async")
    permission_release_async :: proc(permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_permission_release_finish")
    permission_release_finish :: proc(permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_permission_get_allowed")
    permission_get_allowed :: proc(permission: ^Permission) -> glib.boolean ---

    @(link_name = "g_permission_get_can_acquire")
    permission_get_can_acquire :: proc(permission: ^Permission) -> glib.boolean ---

    @(link_name = "g_permission_get_can_release")
    permission_get_can_release :: proc(permission: ^Permission) -> glib.boolean ---

    @(link_name = "g_permission_impl_update")
    permission_impl_update :: proc(permission: ^Permission, allowed: glib.boolean, can_acquire: glib.boolean, can_release: glib.boolean) ---

    @(link_name = "g_pollable_input_stream_get_type")
    pollable_input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_pollable_input_stream_can_poll")
    pollable_input_stream_can_poll :: proc(stream: ^PollableInputStream) -> glib.boolean ---

    @(link_name = "g_pollable_input_stream_is_readable")
    pollable_input_stream_is_readable :: proc(stream: ^PollableInputStream) -> glib.boolean ---

    @(link_name = "g_pollable_input_stream_create_source")
    pollable_input_stream_create_source :: proc(stream: ^PollableInputStream, cancellable: ^Cancellable) -> ^glib.Source ---

    @(link_name = "g_pollable_input_stream_read_nonblocking")
    pollable_input_stream_read_nonblocking :: proc(stream: ^PollableInputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_pollable_output_stream_get_type")
    pollable_output_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_pollable_output_stream_can_poll")
    pollable_output_stream_can_poll :: proc(stream: ^PollableOutputStream) -> glib.boolean ---

    @(link_name = "g_pollable_output_stream_is_writable")
    pollable_output_stream_is_writable :: proc(stream: ^PollableOutputStream) -> glib.boolean ---

    @(link_name = "g_pollable_output_stream_create_source")
    pollable_output_stream_create_source :: proc(stream: ^PollableOutputStream, cancellable: ^Cancellable) -> ^glib.Source ---

    @(link_name = "g_pollable_output_stream_write_nonblocking")
    pollable_output_stream_write_nonblocking :: proc(stream: ^PollableOutputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_pollable_output_stream_writev_nonblocking")
    pollable_output_stream_writev_nonblocking :: proc(stream: ^PollableOutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> PollableReturn ---

    @(link_name = "g_pollable_source_new")
    pollable_source_new :: proc(pollable_stream: ^gobj.Object) -> ^glib.Source ---

    @(link_name = "g_pollable_source_new_full")
    pollable_source_new_full :: proc(pollable_stream: glib.pointer, child_source: ^glib.Source, cancellable: ^Cancellable) -> ^glib.Source ---

    @(link_name = "g_pollable_stream_read")
    pollable_stream_read :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, blocking: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_pollable_stream_write")
    pollable_stream_write :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, blocking: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_pollable_stream_write_all")
    pollable_stream_write_all :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, blocking: glib.boolean, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_power_profile_monitor_get_type")
    power_profile_monitor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_power_profile_monitor_dup_default")
    power_profile_monitor_dup_default :: proc() -> ^PowerProfileMonitor ---

    @(link_name = "g_power_profile_monitor_get_power_saver_enabled")
    power_profile_monitor_get_power_saver_enabled :: proc(monitor: ^PowerProfileMonitor) -> glib.boolean ---

    @(link_name = "g_property_action_get_type")
    property_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_property_action_new")
    property_action_new :: proc(name: cstring, object: glib.pointer, property_name: cstring) -> ^PropertyAction ---

    @(link_name = "g_proxy_get_type")
    proxy_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_proxy_get_default_for_protocol")
    proxy_get_default_for_protocol :: proc(protocol: cstring) -> ^Proxy ---

    @(link_name = "g_proxy_connect")
    proxy_connect :: proc(proxy: ^Proxy, connection: ^IOStream, proxy_address: [^]ProxyAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> ^IOStream ---

    @(link_name = "g_proxy_connect_async")
    proxy_connect_async :: proc(proxy: ^Proxy, connection: ^IOStream, proxy_address: [^]ProxyAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_proxy_connect_finish")
    proxy_connect_finish :: proc(proxy: ^Proxy, result: ^AsyncResult, error: ^^glib.Error) -> ^IOStream ---

    @(link_name = "g_proxy_supports_hostname")
    proxy_supports_hostname :: proc(proxy: ^Proxy) -> glib.boolean ---

    @(link_name = "g_proxy_address_get_type")
    proxy_address_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_proxy_address_new")
    proxy_address_new :: proc(inetaddr: ^InetAddress, port: glib.uint16, protocol: cstring, dest_hostname: cstring, dest_port: glib.uint16, username: cstring, password: cstring) -> ^SocketAddress ---

    @(link_name = "g_proxy_address_get_protocol")
    proxy_address_get_protocol :: proc(proxy: ^ProxyAddress) -> cstring ---

    @(link_name = "g_proxy_address_get_destination_protocol")
    proxy_address_get_destination_protocol :: proc(proxy: ^ProxyAddress) -> cstring ---

    @(link_name = "g_proxy_address_get_destination_hostname")
    proxy_address_get_destination_hostname :: proc(proxy: ^ProxyAddress) -> cstring ---

    @(link_name = "g_proxy_address_get_destination_port")
    proxy_address_get_destination_port :: proc(proxy: ^ProxyAddress) -> glib.uint16 ---

    @(link_name = "g_proxy_address_get_username")
    proxy_address_get_username :: proc(proxy: ^ProxyAddress) -> cstring ---

    @(link_name = "g_proxy_address_get_password")
    proxy_address_get_password :: proc(proxy: ^ProxyAddress) -> cstring ---

    @(link_name = "g_proxy_address_get_uri")
    proxy_address_get_uri :: proc(proxy: ^ProxyAddress) -> cstring ---

    @(link_name = "g_socket_address_enumerator_get_type")
    socket_address_enumerator_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_address_enumerator_next")
    socket_address_enumerator_next :: proc(enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketAddress ---

    @(link_name = "g_socket_address_enumerator_next_async")
    socket_address_enumerator_next_async :: proc(enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_socket_address_enumerator_next_finish")
    socket_address_enumerator_next_finish :: proc(enumerator: ^SocketAddressEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketAddress ---

    @(link_name = "g_proxy_address_enumerator_get_type")
    proxy_address_enumerator_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_proxy_resolver_get_type")
    proxy_resolver_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_proxy_resolver_get_default")
    proxy_resolver_get_default :: proc() -> ^ProxyResolver ---

    @(link_name = "g_proxy_resolver_is_supported")
    proxy_resolver_is_supported :: proc(resolver: ^ProxyResolver) -> glib.boolean ---

    @(link_name = "g_proxy_resolver_lookup")
    proxy_resolver_lookup :: proc(resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring ---

    @(link_name = "g_proxy_resolver_lookup_async")
    proxy_resolver_lookup_async :: proc(resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_proxy_resolver_lookup_finish")
    proxy_resolver_lookup_finish :: proc(resolver: ^ProxyResolver, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring ---

    @(link_name = "g_remote_action_group_get_type")
    remote_action_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_remote_action_group_activate_action_full")
    remote_action_group_activate_action_full :: proc(remote: ^RemoteActionGroup, action_name: cstring, parameter: ^glib.Variant, platform_data: ^glib.Variant) ---

    @(link_name = "g_remote_action_group_change_action_state_full")
    remote_action_group_change_action_state_full :: proc(remote: ^RemoteActionGroup, action_name: cstring, value: ^glib.Variant, platform_data: ^glib.Variant) ---

    @(link_name = "g_resolver_get_type")
    resolver_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resolver_get_default")
    resolver_get_default :: proc() -> ^Resolver ---

    @(link_name = "g_resolver_set_default")
    resolver_set_default :: proc(resolver: ^Resolver) ---

    @(link_name = "g_resolver_lookup_by_name")
    resolver_lookup_by_name :: proc(resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_resolver_lookup_by_name_async")
    resolver_lookup_by_name_async :: proc(resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_resolver_lookup_by_name_finish")
    resolver_lookup_by_name_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_resolver_lookup_by_name_with_flags_async")
    resolver_lookup_by_name_with_flags_async :: proc(resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_resolver_lookup_by_name_with_flags_finish")
    resolver_lookup_by_name_with_flags_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_resolver_lookup_by_name_with_flags")
    resolver_lookup_by_name_with_flags :: proc(resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_resolver_free_addresses")
    resolver_free_addresses :: proc(addresses: [^]glib.List) ---

    @(link_name = "g_resolver_lookup_by_address")
    resolver_lookup_by_address :: proc(resolver: ^Resolver, address: [^]InetAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_resolver_lookup_by_address_async")
    resolver_lookup_by_address_async :: proc(resolver: ^Resolver, address: [^]InetAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_resolver_lookup_by_address_finish")
    resolver_lookup_by_address_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> cstring ---

    @(link_name = "g_resolver_lookup_service")
    resolver_lookup_service :: proc(resolver: ^Resolver, service: cstring, protocol: cstring, domain: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_resolver_lookup_service_async")
    resolver_lookup_service_async :: proc(resolver: ^Resolver, service: cstring, protocol: cstring, domain: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_resolver_lookup_service_finish")
    resolver_lookup_service_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_resolver_lookup_records")
    resolver_lookup_records :: proc(resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_resolver_lookup_records_async")
    resolver_lookup_records_async :: proc(resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_resolver_lookup_records_finish")
    resolver_lookup_records_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_resolver_free_targets")
    resolver_free_targets :: proc(targets: [^]glib.List) ---

    @(link_name = "g_resolver_get_timeout")
    resolver_get_timeout :: proc(resolver: ^Resolver) -> u32 ---

    @(link_name = "g_resolver_set_timeout")
    resolver_set_timeout :: proc(resolver: ^Resolver, timeout_ms: u32) ---

    @(link_name = "g_resolver_error_quark")
    resolver_error_quark :: proc() -> glib.Quark ---

    @(link_name = "g_resource_error_quark")
    resource_error_quark :: proc() -> glib.Quark ---

    @(link_name = "g_resource_get_type")
    resource_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resource_new_from_data")
    resource_new_from_data :: proc(data: ^glib.Bytes, error: ^^glib.Error) -> ^Resource ---

    @(link_name = "g_resource_ref")
    resource_ref :: proc(resource: ^Resource) -> ^Resource ---

    @(link_name = "g_resource_unref")
    resource_unref :: proc(resource: ^Resource) ---

    @(link_name = "g_resource_load")
    resource_load :: proc(filename: cstring, error: ^^glib.Error) -> ^Resource ---

    @(link_name = "g_resource_open_stream")
    resource_open_stream :: proc(resource: ^Resource, path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^InputStream ---

    @(link_name = "g_resource_lookup_data")
    resource_lookup_data :: proc(resource: ^Resource, path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_resource_enumerate_children")
    resource_enumerate_children :: proc(resource: ^Resource, path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^cstring ---

    @(link_name = "g_resource_get_info")
    resource_get_info :: proc(resource: ^Resource, path: cstring, lookup_flags: ResourceLookupFlags, size_p: ^glib.size, flags: [^]glib.uint32, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_resources_register")
    resources_register :: proc(resource: ^Resource) ---

    @(link_name = "g_resources_unregister")
    resources_unregister :: proc(resource: ^Resource) ---

    @(link_name = "g_resources_open_stream")
    resources_open_stream :: proc(path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^InputStream ---

    @(link_name = "g_resources_lookup_data")
    resources_lookup_data :: proc(path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_resources_enumerate_children")
    resources_enumerate_children :: proc(path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^cstring ---

    @(link_name = "g_resources_get_info")
    resources_get_info :: proc(path: cstring, lookup_flags: ResourceLookupFlags, size_p: ^glib.size, flags: [^]glib.uint32, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_resource_has_children")
    resource_has_children :: proc(resource: ^Resource, path: cstring) -> glib.boolean ---

    @(link_name = "g_resources_has_children")
    resources_has_children :: proc(path: cstring) -> glib.boolean ---

    @(link_name = "g_static_resource_init")
    static_resource_init :: proc(static_resource: ^StaticResource) ---

    @(link_name = "g_static_resource_fini")
    static_resource_fini :: proc(static_resource: ^StaticResource) ---

    @(link_name = "g_static_resource_get_resource")
    static_resource_get_resource :: proc(static_resource: ^StaticResource) -> ^Resource ---

    @(link_name = "g_seekable_get_type")
    seekable_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_seekable_tell")
    seekable_tell :: proc(seekable: ^Seekable) -> glib.offset ---

    @(link_name = "g_seekable_can_seek")
    seekable_can_seek :: proc(seekable: ^Seekable) -> glib.boolean ---

    @(link_name = "g_seekable_seek")
    seekable_seek :: proc(seekable: ^Seekable, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_seekable_can_truncate")
    seekable_can_truncate :: proc(seekable: ^Seekable) -> glib.boolean ---

    @(link_name = "g_seekable_truncate")
    seekable_truncate :: proc(seekable: ^Seekable, offset_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_settings_schema_source_get_type")
    settings_schema_source_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_settings_schema_source_get_default")
    settings_schema_source_get_default :: proc() -> ^SettingsSchemaSource ---

    @(link_name = "g_settings_schema_source_ref")
    settings_schema_source_ref :: proc(source: ^SettingsSchemaSource) -> ^SettingsSchemaSource ---

    @(link_name = "g_settings_schema_source_unref")
    settings_schema_source_unref :: proc(source: ^SettingsSchemaSource) ---

    @(link_name = "g_settings_schema_source_new_from_directory")
    settings_schema_source_new_from_directory :: proc(directory: cstring, parent: ^SettingsSchemaSource, trusted: glib.boolean, error: ^^glib.Error) -> ^SettingsSchemaSource ---

    @(link_name = "g_settings_schema_source_lookup")
    settings_schema_source_lookup :: proc(source: ^SettingsSchemaSource, schema_id: cstring, recursive: glib.boolean) -> ^SettingsSchema ---

    @(link_name = "g_settings_schema_source_list_schemas")
    settings_schema_source_list_schemas :: proc(source: ^SettingsSchemaSource, recursive: glib.boolean, non_relocatable: ^^cstring, relocatable: ^^cstring) ---

    @(link_name = "g_settings_schema_get_type")
    settings_schema_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_settings_schema_ref")
    settings_schema_ref :: proc(schema: ^SettingsSchema) -> ^SettingsSchema ---

    @(link_name = "g_settings_schema_unref")
    settings_schema_unref :: proc(schema: ^SettingsSchema) ---

    @(link_name = "g_settings_schema_get_id")
    settings_schema_get_id :: proc(schema: ^SettingsSchema) -> cstring ---

    @(link_name = "g_settings_schema_get_path")
    settings_schema_get_path :: proc(schema: ^SettingsSchema) -> cstring ---

    @(link_name = "g_settings_schema_get_key")
    settings_schema_get_key :: proc(schema: ^SettingsSchema, name: cstring) -> ^SettingsSchemaKey ---

    @(link_name = "g_settings_schema_has_key")
    settings_schema_has_key :: proc(schema: ^SettingsSchema, name: cstring) -> glib.boolean ---

    @(link_name = "g_settings_schema_list_keys")
    settings_schema_list_keys :: proc(schema: ^SettingsSchema) -> ^cstring ---

    @(link_name = "g_settings_schema_list_children")
    settings_schema_list_children :: proc(schema: ^SettingsSchema) -> ^cstring ---

    @(link_name = "g_settings_schema_key_get_type")
    settings_schema_key_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_settings_schema_key_ref")
    settings_schema_key_ref :: proc(key: ^SettingsSchemaKey) -> ^SettingsSchemaKey ---

    @(link_name = "g_settings_schema_key_unref")
    settings_schema_key_unref :: proc(key: ^SettingsSchemaKey) ---

    @(link_name = "g_settings_schema_key_get_value_type")
    settings_schema_key_get_value_type :: proc(key: ^SettingsSchemaKey) -> ^glib.VariantType ---

    @(link_name = "g_settings_schema_key_get_default_value")
    settings_schema_key_get_default_value :: proc(key: ^SettingsSchemaKey) -> ^glib.Variant ---

    @(link_name = "g_settings_schema_key_get_range")
    settings_schema_key_get_range :: proc(key: ^SettingsSchemaKey) -> ^glib.Variant ---

    @(link_name = "g_settings_schema_key_range_check")
    settings_schema_key_range_check :: proc(key: ^SettingsSchemaKey, value: ^glib.Variant) -> glib.boolean ---

    @(link_name = "g_settings_schema_key_get_name")
    settings_schema_key_get_name :: proc(key: ^SettingsSchemaKey) -> cstring ---

    @(link_name = "g_settings_schema_key_get_summary")
    settings_schema_key_get_summary :: proc(key: ^SettingsSchemaKey) -> cstring ---

    @(link_name = "g_settings_schema_key_get_description")
    settings_schema_key_get_description :: proc(key: ^SettingsSchemaKey) -> cstring ---

    @(link_name = "g_settings_get_type")
    settings_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_settings_list_schemas")
    settings_list_schemas :: proc() -> ^cstring ---

    @(link_name = "g_settings_list_relocatable_schemas")
    settings_list_relocatable_schemas :: proc() -> ^cstring ---

    @(link_name = "g_settings_new")
    settings_new :: proc(schema_id: cstring) -> ^Settings ---

    @(link_name = "g_settings_new_with_path")
    settings_new_with_path :: proc(schema_id: cstring, path: cstring) -> ^Settings ---

    @(link_name = "g_settings_new_with_backend")
    settings_new_with_backend :: proc(schema_id: cstring, backend: ^SettingsBackend) -> ^Settings ---

    @(link_name = "g_settings_new_with_backend_and_path")
    settings_new_with_backend_and_path :: proc(schema_id: cstring, backend: ^SettingsBackend, path: cstring) -> ^Settings ---

    @(link_name = "g_settings_new_full")
    settings_new_full :: proc(schema: ^SettingsSchema, backend: ^SettingsBackend, path: cstring) -> ^Settings ---

    @(link_name = "g_settings_list_children")
    settings_list_children :: proc(settings: [^]Settings) -> ^cstring ---

    @(link_name = "g_settings_list_keys")
    settings_list_keys :: proc(settings: [^]Settings) -> ^cstring ---

    @(link_name = "g_settings_get_range")
    settings_get_range :: proc(settings: [^]Settings, key: cstring) -> ^glib.Variant ---

    @(link_name = "g_settings_range_check")
    settings_range_check :: proc(settings: [^]Settings, key: cstring, value: ^glib.Variant) -> glib.boolean ---

    @(link_name = "g_settings_set_value")
    settings_set_value :: proc(settings: [^]Settings, key: cstring, value: ^glib.Variant) -> glib.boolean ---

    @(link_name = "g_settings_get_value")
    settings_get_value :: proc(settings: [^]Settings, key: cstring) -> ^glib.Variant ---

    @(link_name = "g_settings_get_user_value")
    settings_get_user_value :: proc(settings: [^]Settings, key: cstring) -> ^glib.Variant ---

    @(link_name = "g_settings_get_default_value")
    settings_get_default_value :: proc(settings: [^]Settings, key: cstring) -> ^glib.Variant ---

    @(link_name = "g_settings_set")
    settings_set :: proc(settings: [^]Settings, key: cstring, format: cstring, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "g_settings_get")
    settings_get :: proc(settings: [^]Settings, key: cstring, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_settings_reset")
    settings_reset :: proc(settings: [^]Settings, key: cstring) ---

    @(link_name = "g_settings_get_int")
    settings_get_int :: proc(settings: [^]Settings, key: cstring) -> glib.int_ ---

    @(link_name = "g_settings_set_int")
    settings_set_int :: proc(settings: [^]Settings, key: cstring, value: glib.int_) -> glib.boolean ---

    @(link_name = "g_settings_get_int64")
    settings_get_int64 :: proc(settings: [^]Settings, key: cstring) -> glib.int64 ---

    @(link_name = "g_settings_set_int64")
    settings_set_int64 :: proc(settings: [^]Settings, key: cstring, value: glib.int64) -> glib.boolean ---

    @(link_name = "g_settings_get_uint")
    settings_get_uint :: proc(settings: [^]Settings, key: cstring) -> glib.uint_ ---

    @(link_name = "g_settings_set_uint")
    settings_set_uint :: proc(settings: [^]Settings, key: cstring, value: glib.uint_) -> glib.boolean ---

    @(link_name = "g_settings_get_uint64")
    settings_get_uint64 :: proc(settings: [^]Settings, key: cstring) -> glib.uint64 ---

    @(link_name = "g_settings_set_uint64")
    settings_set_uint64 :: proc(settings: [^]Settings, key: cstring, value: glib.uint64) -> glib.boolean ---

    @(link_name = "g_settings_get_string")
    settings_get_string :: proc(settings: [^]Settings, key: cstring) -> cstring ---

    @(link_name = "g_settings_set_string")
    settings_set_string :: proc(settings: [^]Settings, key: cstring, value: cstring) -> glib.boolean ---

    @(link_name = "g_settings_get_boolean")
    settings_get_boolean :: proc(settings: [^]Settings, key: cstring) -> glib.boolean ---

    @(link_name = "g_settings_set_boolean")
    settings_set_boolean :: proc(settings: [^]Settings, key: cstring, value: glib.boolean) -> glib.boolean ---

    @(link_name = "g_settings_get_double")
    settings_get_double :: proc(settings: [^]Settings, key: cstring) -> glib.double ---

    @(link_name = "g_settings_set_double")
    settings_set_double :: proc(settings: [^]Settings, key: cstring, value: glib.double) -> glib.boolean ---

    @(link_name = "g_settings_get_strv")
    settings_get_strv :: proc(settings: [^]Settings, key: cstring) -> ^cstring ---

    @(link_name = "g_settings_set_strv")
    settings_set_strv :: proc(settings: [^]Settings, key: cstring, value: ^cstring) -> glib.boolean ---

    @(link_name = "g_settings_get_enum")
    settings_get_enum :: proc(settings: [^]Settings, key: cstring) -> glib.int_ ---

    @(link_name = "g_settings_set_enum")
    settings_set_enum :: proc(settings: [^]Settings, key: cstring, value: glib.int_) -> glib.boolean ---

    @(link_name = "g_settings_get_flags")
    settings_get_flags :: proc(settings: [^]Settings, key: cstring) -> glib.uint_ ---

    @(link_name = "g_settings_set_flags")
    settings_set_flags :: proc(settings: [^]Settings, key: cstring, value: glib.uint_) -> glib.boolean ---

    @(link_name = "g_settings_get_child")
    settings_get_child :: proc(settings: [^]Settings, name: cstring) -> ^Settings ---

    @(link_name = "g_settings_is_writable")
    settings_is_writable :: proc(settings: [^]Settings, name: cstring) -> glib.boolean ---

    @(link_name = "g_settings_delay")
    settings_delay :: proc(settings: [^]Settings) ---

    @(link_name = "g_settings_apply")
    settings_apply :: proc(settings: [^]Settings) ---

    @(link_name = "g_settings_revert")
    settings_revert :: proc(settings: [^]Settings) ---

    @(link_name = "g_settings_get_has_unapplied")
    settings_get_has_unapplied :: proc(settings: [^]Settings) -> glib.boolean ---

    @(link_name = "g_settings_sync")
    settings_sync :: proc() ---

    @(link_name = "g_settings_bind")
    settings_bind :: proc(settings: [^]Settings, key: cstring, object: glib.pointer, property: cstring, flags: SettingsBindFlags) ---

    @(link_name = "g_settings_bind_with_mapping")
    settings_bind_with_mapping :: proc(settings: [^]Settings, key: cstring, object: glib.pointer, property: cstring, flags: SettingsBindFlags, get_mapping: SettingsBindGetMapping, set_mapping: SettingsBindSetMapping, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "g_settings_bind_with_mapping_closures")
    settings_bind_with_mapping_closures :: proc(settings: [^]Settings, key: cstring, object: ^gobj.Object, property: cstring, flags: SettingsBindFlags, get_mapping: ^gobj.Closure, set_mapping: ^gobj.Closure) ---

    @(link_name = "g_settings_bind_writable")
    settings_bind_writable :: proc(settings: [^]Settings, key: cstring, object: glib.pointer, property: cstring, inverted: glib.boolean) ---

    @(link_name = "g_settings_unbind")
    settings_unbind :: proc(object: glib.pointer, property: cstring) ---

    @(link_name = "g_settings_create_action")
    settings_create_action :: proc(settings: [^]Settings, key: cstring) -> ^Action ---

    @(link_name = "g_settings_get_mapped")
    settings_get_mapped :: proc(settings: [^]Settings, key: cstring, mapping: SettingsGetMapping, user_data: glib.pointer) -> glib.pointer ---

    @(link_name = "g_simple_action_get_type")
    simple_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_simple_action_new")
    simple_action_new :: proc(name: cstring, parameter_type: ^glib.VariantType) -> ^SimpleAction ---

    @(link_name = "g_simple_action_new_stateful")
    simple_action_new_stateful :: proc(name: cstring, parameter_type: ^glib.VariantType, state: ^glib.Variant) -> ^SimpleAction ---

    @(link_name = "g_simple_action_set_enabled")
    simple_action_set_enabled :: proc(simple: ^SimpleAction, enabled: glib.boolean) ---

    @(link_name = "g_simple_action_set_state")
    simple_action_set_state :: proc(simple: ^SimpleAction, value: ^glib.Variant) ---

    @(link_name = "g_simple_action_set_state_hint")
    simple_action_set_state_hint :: proc(simple: ^SimpleAction, state_hint: ^glib.Variant) ---

    @(link_name = "g_simple_action_group_get_type")
    simple_action_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_simple_action_group_new")
    simple_action_group_new :: proc() -> ^SimpleActionGroup ---

    @(link_name = "g_simple_action_group_lookup")
    simple_action_group_lookup :: proc(simple: ^SimpleActionGroup, action_name: cstring) -> ^Action ---

    @(link_name = "g_simple_action_group_insert")
    simple_action_group_insert :: proc(simple: ^SimpleActionGroup, action: ^Action) ---

    @(link_name = "g_simple_action_group_remove")
    simple_action_group_remove :: proc(simple: ^SimpleActionGroup, action_name: cstring) ---

    @(link_name = "g_simple_action_group_add_entries")
    simple_action_group_add_entries :: proc(simple: ^SimpleActionGroup, entries: [^]ActionEntry, n_entries: glib.int_, user_data: glib.pointer) ---

    @(link_name = "g_simple_async_result_get_type")
    simple_async_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_simple_async_result_new")
    simple_async_result_new :: proc(source_object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, source_tag: glib.pointer) -> ^SimpleAsyncResult ---

    @(link_name = "g_simple_async_result_new_error")
    simple_async_result_new_error :: proc(source_object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) -> ^SimpleAsyncResult ---

    @(link_name = "g_simple_async_result_new_from_error")
    simple_async_result_new_from_error :: proc(source_object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, error: ^glib.Error) -> ^SimpleAsyncResult ---

    @(link_name = "g_simple_async_result_new_take_error")
    simple_async_result_new_take_error :: proc(source_object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, error: ^glib.Error) -> ^SimpleAsyncResult ---

    @(link_name = "g_simple_async_result_set_op_res_gpointer")
    simple_async_result_set_op_res_gpointer :: proc(simple: ^SimpleAsyncResult, op_res: glib.pointer, destroy_op_res: glib.DestroyNotify) ---

    @(link_name = "g_simple_async_result_get_op_res_gpointer")
    simple_async_result_get_op_res_gpointer :: proc(simple: ^SimpleAsyncResult) -> glib.pointer ---

    @(link_name = "g_simple_async_result_set_op_res_gssize")
    simple_async_result_set_op_res_gssize :: proc(simple: ^SimpleAsyncResult, op_res: glib.ssize) ---

    @(link_name = "g_simple_async_result_get_op_res_gssize")
    simple_async_result_get_op_res_gssize :: proc(simple: ^SimpleAsyncResult) -> glib.ssize ---

    @(link_name = "g_simple_async_result_set_op_res_gboolean")
    simple_async_result_set_op_res_gboolean :: proc(simple: ^SimpleAsyncResult, op_res: glib.boolean) ---

    @(link_name = "g_simple_async_result_get_op_res_gboolean")
    simple_async_result_get_op_res_gboolean :: proc(simple: ^SimpleAsyncResult) -> glib.boolean ---

    @(link_name = "g_simple_async_result_set_check_cancellable")
    simple_async_result_set_check_cancellable :: proc(simple: ^SimpleAsyncResult, check_cancellable: ^Cancellable) ---

    @(link_name = "g_simple_async_result_get_source_tag")
    simple_async_result_get_source_tag :: proc(simple: ^SimpleAsyncResult) -> glib.pointer ---

    @(link_name = "g_simple_async_result_set_handle_cancellation")
    simple_async_result_set_handle_cancellation :: proc(simple: ^SimpleAsyncResult, handle_cancellation: glib.boolean) ---

    @(link_name = "g_simple_async_result_complete")
    simple_async_result_complete :: proc(simple: ^SimpleAsyncResult) ---

    @(link_name = "g_simple_async_result_complete_in_idle")
    simple_async_result_complete_in_idle :: proc(simple: ^SimpleAsyncResult) ---

    @(link_name = "g_simple_async_result_run_in_thread")
    simple_async_result_run_in_thread :: proc(simple: ^SimpleAsyncResult, func: SimpleAsyncThreadFunc, io_priority: i32, cancellable: ^Cancellable) ---

    @(link_name = "g_simple_async_result_set_from_error")
    simple_async_result_set_from_error :: proc(simple: ^SimpleAsyncResult, error: ^glib.Error) ---

    @(link_name = "g_simple_async_result_take_error")
    simple_async_result_take_error :: proc(simple: ^SimpleAsyncResult, error: ^glib.Error) ---

    @(link_name = "g_simple_async_result_propagate_error")
    simple_async_result_propagate_error :: proc(simple: ^SimpleAsyncResult, dest: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_simple_async_result_set_error")
    simple_async_result_set_error :: proc(simple: ^SimpleAsyncResult, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_simple_async_result_set_error_va")
    simple_async_result_set_error_va :: proc(simple: ^SimpleAsyncResult, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_simple_async_result_is_valid")
    simple_async_result_is_valid :: proc(result: ^AsyncResult, source: ^gobj.Object, source_tag: glib.pointer) -> glib.boolean ---

    @(link_name = "g_simple_async_report_error_in_idle")
    simple_async_report_error_in_idle :: proc(object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_simple_async_report_gerror_in_idle")
    simple_async_report_gerror_in_idle :: proc(object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, error: ^glib.Error) ---

    @(link_name = "g_simple_async_report_take_gerror_in_idle")
    simple_async_report_take_gerror_in_idle :: proc(object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, error: ^glib.Error) ---

    @(link_name = "g_simple_io_stream_get_type")
    simple_io_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_simple_io_stream_new")
    simple_io_stream_new :: proc(input_stream: ^InputStream, output_stream: ^OutputStream) -> ^IOStream ---

    @(link_name = "g_simple_permission_get_type")
    simple_permission_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_simple_permission_new")
    simple_permission_new :: proc(allowed: glib.boolean) -> ^Permission ---

    @(link_name = "g_simple_proxy_resolver_get_type")
    simple_proxy_resolver_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_simple_proxy_resolver_new")
    simple_proxy_resolver_new :: proc(default_proxy: cstring, ignore_hosts: [^]cstring) -> ^ProxyResolver ---

    @(link_name = "g_simple_proxy_resolver_set_default_proxy")
    simple_proxy_resolver_set_default_proxy :: proc(resolver: ^SimpleProxyResolver, default_proxy: cstring) ---

    @(link_name = "g_simple_proxy_resolver_set_ignore_hosts")
    simple_proxy_resolver_set_ignore_hosts :: proc(resolver: ^SimpleProxyResolver, ignore_hosts: [^]cstring) ---

    @(link_name = "g_simple_proxy_resolver_set_uri_proxy")
    simple_proxy_resolver_set_uri_proxy :: proc(resolver: ^SimpleProxyResolver, uri_scheme: cstring, proxy: cstring) ---

    @(link_name = "g_socket_get_type")
    socket_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_new")
    socket_new :: proc(family: SocketFamily, type: SocketType, protocol: SocketProtocol, error: ^^glib.Error) -> ^Socket ---

    @(link_name = "g_socket_new_from_fd")
    socket_new_from_fd :: proc(fd: glib.int_, error: ^^glib.Error) -> ^Socket ---

    @(link_name = "g_socket_get_fd")
    socket_get_fd :: proc(socket: ^Socket) -> i32 ---

    @(link_name = "g_socket_get_family")
    socket_get_family :: proc(socket: ^Socket) -> SocketFamily ---

    @(link_name = "g_socket_get_socket_type")
    socket_get_socket_type :: proc(socket: ^Socket) -> SocketType ---

    @(link_name = "g_socket_get_protocol")
    socket_get_protocol :: proc(socket: ^Socket) -> SocketProtocol ---

    @(link_name = "g_socket_get_local_address")
    socket_get_local_address :: proc(socket: ^Socket, error: ^^glib.Error) -> ^SocketAddress ---

    @(link_name = "g_socket_get_remote_address")
    socket_get_remote_address :: proc(socket: ^Socket, error: ^^glib.Error) -> ^SocketAddress ---

    @(link_name = "g_socket_set_blocking")
    socket_set_blocking :: proc(socket: ^Socket, blocking: glib.boolean) ---

    @(link_name = "g_socket_get_blocking")
    socket_get_blocking :: proc(socket: ^Socket) -> glib.boolean ---

    @(link_name = "g_socket_set_keepalive")
    socket_set_keepalive :: proc(socket: ^Socket, keepalive: glib.boolean) ---

    @(link_name = "g_socket_get_keepalive")
    socket_get_keepalive :: proc(socket: ^Socket) -> glib.boolean ---

    @(link_name = "g_socket_get_listen_backlog")
    socket_get_listen_backlog :: proc(socket: ^Socket) -> glib.int_ ---

    @(link_name = "g_socket_set_listen_backlog")
    socket_set_listen_backlog :: proc(socket: ^Socket, backlog: glib.int_) ---

    @(link_name = "g_socket_get_timeout")
    socket_get_timeout :: proc(socket: ^Socket) -> glib.uint_ ---

    @(link_name = "g_socket_set_timeout")
    socket_set_timeout :: proc(socket: ^Socket, timeout: glib.uint_) ---

    @(link_name = "g_socket_get_ttl")
    socket_get_ttl :: proc(socket: ^Socket) -> glib.uint_ ---

    @(link_name = "g_socket_set_ttl")
    socket_set_ttl :: proc(socket: ^Socket, ttl: glib.uint_) ---

    @(link_name = "g_socket_get_broadcast")
    socket_get_broadcast :: proc(socket: ^Socket) -> glib.boolean ---

    @(link_name = "g_socket_set_broadcast")
    socket_set_broadcast :: proc(socket: ^Socket, broadcast: glib.boolean) ---

    @(link_name = "g_socket_get_multicast_loopback")
    socket_get_multicast_loopback :: proc(socket: ^Socket) -> glib.boolean ---

    @(link_name = "g_socket_set_multicast_loopback")
    socket_set_multicast_loopback :: proc(socket: ^Socket, loopback: glib.boolean) ---

    @(link_name = "g_socket_get_multicast_ttl")
    socket_get_multicast_ttl :: proc(socket: ^Socket) -> glib.uint_ ---

    @(link_name = "g_socket_set_multicast_ttl")
    socket_set_multicast_ttl :: proc(socket: ^Socket, ttl: glib.uint_) ---

    @(link_name = "g_socket_is_connected")
    socket_is_connected :: proc(socket: ^Socket) -> glib.boolean ---

    @(link_name = "g_socket_bind")
    socket_bind :: proc(socket: ^Socket, address: [^]SocketAddress, allow_reuse: glib.boolean, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_join_multicast_group")
    socket_join_multicast_group :: proc(socket: ^Socket, group: ^InetAddress, source_specific: glib.boolean, iface: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_leave_multicast_group")
    socket_leave_multicast_group :: proc(socket: ^Socket, group: ^InetAddress, source_specific: glib.boolean, iface: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_join_multicast_group_ssm")
    socket_join_multicast_group_ssm :: proc(socket: ^Socket, group: ^InetAddress, source_specific: ^InetAddress, iface: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_leave_multicast_group_ssm")
    socket_leave_multicast_group_ssm :: proc(socket: ^Socket, group: ^InetAddress, source_specific: ^InetAddress, iface: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_connect")
    socket_connect :: proc(socket: ^Socket, address: [^]SocketAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_check_connect_result")
    socket_check_connect_result :: proc(socket: ^Socket, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_get_available_bytes")
    socket_get_available_bytes :: proc(socket: ^Socket) -> glib.ssize ---

    @(link_name = "g_socket_condition_check")
    socket_condition_check :: proc(socket: ^Socket, condition: glib.IOCondition) -> glib.IOCondition ---

    @(link_name = "g_socket_condition_wait")
    socket_condition_wait :: proc(socket: ^Socket, condition: glib.IOCondition, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_condition_timed_wait")
    socket_condition_timed_wait :: proc(socket: ^Socket, condition: glib.IOCondition, timeout_us: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_accept")
    socket_accept :: proc(socket: ^Socket, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Socket ---

    @(link_name = "g_socket_listen")
    socket_listen :: proc(socket: ^Socket, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_receive")
    socket_receive :: proc(socket: ^Socket, buffer: cstring, size_p: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_socket_receive_bytes")
    socket_receive_bytes :: proc(socket: ^Socket, size_p: glib.size, timeout_us: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_socket_receive_from")
    socket_receive_from :: proc(socket: ^Socket, address: [^]^SocketAddress, buffer: cstring, size_p: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_socket_receive_bytes_from")
    socket_receive_bytes_from :: proc(socket: ^Socket, address: [^]^SocketAddress, size_p: glib.size, timeout_us: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "g_socket_send")
    socket_send :: proc(socket: ^Socket, buffer: cstring, size_p: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_socket_send_to")
    socket_send_to :: proc(socket: ^Socket, address: [^]SocketAddress, buffer: cstring, size_p: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_socket_receive_message")
    socket_receive_message :: proc(socket: ^Socket, address: [^]^SocketAddress, vectors: [^]InputVector, num_vectors: glib.int_, messages: [^]^^SocketControlMessage, num_messages: [^]glib.int_, flags: [^]glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_socket_send_message")
    socket_send_message :: proc(socket: ^Socket, address: [^]SocketAddress, vectors: [^]OutputVector, num_vectors: glib.int_, messages: [^]^SocketControlMessage, num_messages: glib.int_, flags: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_socket_receive_messages")
    socket_receive_messages :: proc(socket: ^Socket, messages: [^]InputMessage, num_messages: glib.uint_, flags: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---

    @(link_name = "g_socket_send_messages")
    socket_send_messages :: proc(socket: ^Socket, messages: [^]OutputMessage, num_messages: glib.uint_, flags: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---

    @(link_name = "g_socket_close")
    socket_close :: proc(socket: ^Socket, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_shutdown")
    socket_shutdown :: proc(socket: ^Socket, shutdown_read: glib.boolean, shutdown_write: glib.boolean, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_is_closed")
    socket_is_closed :: proc(socket: ^Socket) -> glib.boolean ---

    @(link_name = "g_socket_create_source")
    socket_create_source :: proc(socket: ^Socket, condition: glib.IOCondition, cancellable: ^Cancellable) -> ^glib.Source ---

    @(link_name = "g_socket_speaks_ipv4")
    socket_speaks_ipv4 :: proc(socket: ^Socket) -> glib.boolean ---

    @(link_name = "g_socket_get_credentials")
    socket_get_credentials :: proc(socket: ^Socket, error: ^^glib.Error) -> ^Credentials ---

    @(link_name = "g_socket_receive_with_blocking")
    socket_receive_with_blocking :: proc(socket: ^Socket, buffer: cstring, size_p: glib.size, blocking: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_socket_send_with_blocking")
    socket_send_with_blocking :: proc(socket: ^Socket, buffer: cstring, size_p: glib.size, blocking: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_socket_send_message_with_timeout")
    socket_send_message_with_timeout :: proc(socket: ^Socket, address: [^]SocketAddress, vectors: [^]OutputVector, num_vectors: glib.int_, messages: [^]^SocketControlMessage, num_messages: glib.int_, flags: glib.int_, timeout_us: glib.int64, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> PollableReturn ---

    @(link_name = "g_socket_get_option")
    socket_get_option :: proc(socket: ^Socket, level: glib.int_, optname: glib.int_, value: ^glib.int_, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_set_option")
    socket_set_option :: proc(socket: ^Socket, level: glib.int_, optname: glib.int_, value: glib.int_, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_client_get_type")
    socket_client_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_client_new")
    socket_client_new :: proc() -> ^SocketClient ---

    @(link_name = "g_socket_client_get_family")
    socket_client_get_family :: proc(client: ^SocketClient) -> SocketFamily ---

    @(link_name = "g_socket_client_set_family")
    socket_client_set_family :: proc(client: ^SocketClient, family: SocketFamily) ---

    @(link_name = "g_socket_client_get_socket_type")
    socket_client_get_socket_type :: proc(client: ^SocketClient) -> SocketType ---

    @(link_name = "g_socket_client_set_socket_type")
    socket_client_set_socket_type :: proc(client: ^SocketClient, type: SocketType) ---

    @(link_name = "g_socket_client_get_protocol")
    socket_client_get_protocol :: proc(client: ^SocketClient) -> SocketProtocol ---

    @(link_name = "g_socket_client_set_protocol")
    socket_client_set_protocol :: proc(client: ^SocketClient, protocol: SocketProtocol) ---

    @(link_name = "g_socket_client_get_local_address")
    socket_client_get_local_address :: proc(client: ^SocketClient) -> ^SocketAddress ---

    @(link_name = "g_socket_client_set_local_address")
    socket_client_set_local_address :: proc(client: ^SocketClient, address: [^]SocketAddress) ---

    @(link_name = "g_socket_client_get_timeout")
    socket_client_get_timeout :: proc(client: ^SocketClient) -> glib.uint_ ---

    @(link_name = "g_socket_client_set_timeout")
    socket_client_set_timeout :: proc(client: ^SocketClient, timeout: glib.uint_) ---

    @(link_name = "g_socket_client_get_enable_proxy")
    socket_client_get_enable_proxy :: proc(client: ^SocketClient) -> glib.boolean ---

    @(link_name = "g_socket_client_set_enable_proxy")
    socket_client_set_enable_proxy :: proc(client: ^SocketClient, enable: glib.boolean) ---

    @(link_name = "g_socket_client_get_tls")
    socket_client_get_tls :: proc(client: ^SocketClient) -> glib.boolean ---

    @(link_name = "g_socket_client_set_tls")
    socket_client_set_tls :: proc(client: ^SocketClient, tls: glib.boolean) ---

    @(link_name = "g_socket_client_get_tls_validation_flags")
    socket_client_get_tls_validation_flags :: proc(client: ^SocketClient) -> TlsCertificateFlags ---

    @(link_name = "g_socket_client_set_tls_validation_flags")
    socket_client_set_tls_validation_flags :: proc(client: ^SocketClient, flags: TlsCertificateFlags) ---

    @(link_name = "g_socket_client_get_proxy_resolver")
    socket_client_get_proxy_resolver :: proc(client: ^SocketClient) -> ^ProxyResolver ---

    @(link_name = "g_socket_client_set_proxy_resolver")
    socket_client_set_proxy_resolver :: proc(client: ^SocketClient, proxy_resolver: ^ProxyResolver) ---

    @(link_name = "g_socket_client_connect")
    socket_client_connect :: proc(client: ^SocketClient, connectable: ^SocketConnectable, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_client_connect_to_host")
    socket_client_connect_to_host :: proc(client: ^SocketClient, host_and_port: cstring, default_port: glib.uint16, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_client_connect_to_service")
    socket_client_connect_to_service :: proc(client: ^SocketClient, domain: cstring, service: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_client_connect_to_uri")
    socket_client_connect_to_uri :: proc(client: ^SocketClient, uri: cstring, default_port: glib.uint16, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_client_connect_async")
    socket_client_connect_async :: proc(client: ^SocketClient, connectable: ^SocketConnectable, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_socket_client_connect_finish")
    socket_client_connect_finish :: proc(client: ^SocketClient, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_client_connect_to_host_async")
    socket_client_connect_to_host_async :: proc(client: ^SocketClient, host_and_port: cstring, default_port: glib.uint16, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_socket_client_connect_to_host_finish")
    socket_client_connect_to_host_finish :: proc(client: ^SocketClient, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_client_connect_to_service_async")
    socket_client_connect_to_service_async :: proc(client: ^SocketClient, domain: cstring, service: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_socket_client_connect_to_service_finish")
    socket_client_connect_to_service_finish :: proc(client: ^SocketClient, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_client_connect_to_uri_async")
    socket_client_connect_to_uri_async :: proc(client: ^SocketClient, uri: cstring, default_port: glib.uint16, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_socket_client_connect_to_uri_finish")
    socket_client_connect_to_uri_finish :: proc(client: ^SocketClient, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_client_add_application_proxy")
    socket_client_add_application_proxy :: proc(client: ^SocketClient, protocol: cstring) ---

    @(link_name = "g_socket_connectable_get_type")
    socket_connectable_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_connectable_enumerate")
    socket_connectable_enumerate :: proc(connectable: ^SocketConnectable) -> ^SocketAddressEnumerator ---

    @(link_name = "g_socket_connectable_proxy_enumerate")
    socket_connectable_proxy_enumerate :: proc(connectable: ^SocketConnectable) -> ^SocketAddressEnumerator ---

    @(link_name = "g_socket_connectable_to_string")
    socket_connectable_to_string :: proc(connectable: ^SocketConnectable) -> cstring ---

    @(link_name = "g_socket_connection_get_type")
    socket_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_connection_is_connected")
    socket_connection_is_connected :: proc(connection: ^SocketConnection) -> glib.boolean ---

    @(link_name = "g_socket_connection_connect")
    socket_connection_connect :: proc(connection: ^SocketConnection, address: [^]SocketAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_connection_connect_async")
    socket_connection_connect_async :: proc(connection: ^SocketConnection, address: [^]SocketAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_socket_connection_connect_finish")
    socket_connection_connect_finish :: proc(connection: ^SocketConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_connection_get_socket")
    socket_connection_get_socket :: proc(connection: ^SocketConnection) -> ^Socket ---

    @(link_name = "g_socket_connection_get_local_address")
    socket_connection_get_local_address :: proc(connection: ^SocketConnection, error: ^^glib.Error) -> ^SocketAddress ---

    @(link_name = "g_socket_connection_get_remote_address")
    socket_connection_get_remote_address :: proc(connection: ^SocketConnection, error: ^^glib.Error) -> ^SocketAddress ---

    @(link_name = "g_socket_connection_factory_register_type")
    socket_connection_factory_register_type :: proc(g_type: gobj.Type, family: SocketFamily, type: SocketType, protocol: glib.int_) ---

    @(link_name = "g_socket_connection_factory_lookup_type")
    socket_connection_factory_lookup_type :: proc(family: SocketFamily, type: SocketType, protocol_id: glib.int_) -> gobj.Type ---

    @(link_name = "g_socket_connection_factory_create_connection")
    socket_connection_factory_create_connection :: proc(socket: ^Socket) -> ^SocketConnection ---

    @(link_name = "g_socket_control_message_get_type")
    socket_control_message_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_control_message_get_size")
    socket_control_message_get_size :: proc(message: ^SocketControlMessage) -> glib.size ---

    @(link_name = "g_socket_control_message_get_level")
    socket_control_message_get_level :: proc(message: ^SocketControlMessage) -> i32 ---

    @(link_name = "g_socket_control_message_get_msg_type")
    socket_control_message_get_msg_type :: proc(message: ^SocketControlMessage) -> i32 ---

    @(link_name = "g_socket_control_message_serialize")
    socket_control_message_serialize :: proc(message: ^SocketControlMessage, data: glib.pointer) ---

    @(link_name = "g_socket_control_message_deserialize")
    socket_control_message_deserialize :: proc(level: i32, type: i32, size_p: glib.size, data: glib.pointer) -> ^SocketControlMessage ---

    @(link_name = "g_socket_listener_get_type")
    socket_listener_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_listener_new")
    socket_listener_new :: proc() -> ^SocketListener ---

    @(link_name = "g_socket_listener_set_backlog")
    socket_listener_set_backlog :: proc(listener: ^SocketListener, listen_backlog: i32) ---

    @(link_name = "g_socket_listener_add_socket")
    socket_listener_add_socket :: proc(listener: ^SocketListener, socket: ^Socket, source_object: ^gobj.Object, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_listener_add_address")
    socket_listener_add_address :: proc(listener: ^SocketListener, address: [^]SocketAddress, type: SocketType, protocol: SocketProtocol, source_object: ^gobj.Object, effective_address: [^]^SocketAddress, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_listener_add_inet_port")
    socket_listener_add_inet_port :: proc(listener: ^SocketListener, port: glib.uint16, source_object: ^gobj.Object, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_socket_listener_add_any_inet_port")
    socket_listener_add_any_inet_port :: proc(listener: ^SocketListener, source_object: ^gobj.Object, error: ^^glib.Error) -> glib.uint16 ---

    @(link_name = "g_socket_listener_accept_socket")
    socket_listener_accept_socket :: proc(listener: ^SocketListener, source_object: ^^gobj.Object, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Socket ---

    @(link_name = "g_socket_listener_accept_socket_async")
    socket_listener_accept_socket_async :: proc(listener: ^SocketListener, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_socket_listener_accept_socket_finish")
    socket_listener_accept_socket_finish :: proc(listener: ^SocketListener, result: ^AsyncResult, source_object: ^^gobj.Object, error: ^^glib.Error) -> ^Socket ---

    @(link_name = "g_socket_listener_accept")
    socket_listener_accept :: proc(listener: ^SocketListener, source_object: ^^gobj.Object, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_listener_accept_async")
    socket_listener_accept_async :: proc(listener: ^SocketListener, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_socket_listener_accept_finish")
    socket_listener_accept_finish :: proc(listener: ^SocketListener, result: ^AsyncResult, source_object: ^^gobj.Object, error: ^^glib.Error) -> ^SocketConnection ---

    @(link_name = "g_socket_listener_close")
    socket_listener_close :: proc(listener: ^SocketListener) ---

    @(link_name = "g_socket_service_get_type")
    socket_service_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_service_new")
    socket_service_new :: proc() -> ^SocketService ---

    @(link_name = "g_socket_service_start")
    socket_service_start :: proc(service: ^SocketService) ---

    @(link_name = "g_socket_service_stop")
    socket_service_stop :: proc(service: ^SocketService) ---

    @(link_name = "g_socket_service_is_active")
    socket_service_is_active :: proc(service: ^SocketService) -> glib.boolean ---

    @(link_name = "g_srv_target_get_type")
    srv_target_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_srv_target_new")
    srv_target_new :: proc(hostname: cstring, port: glib.uint16, priority: glib.uint16, weight: glib.uint16) -> ^SrvTarget ---

    @(link_name = "g_srv_target_copy")
    srv_target_copy :: proc(target: ^SrvTarget) -> ^SrvTarget ---

    @(link_name = "g_srv_target_free")
    srv_target_free :: proc(target: ^SrvTarget) ---

    @(link_name = "g_srv_target_get_hostname")
    srv_target_get_hostname :: proc(target: ^SrvTarget) -> cstring ---

    @(link_name = "g_srv_target_get_port")
    srv_target_get_port :: proc(target: ^SrvTarget) -> glib.uint16 ---

    @(link_name = "g_srv_target_get_priority")
    srv_target_get_priority :: proc(target: ^SrvTarget) -> glib.uint16 ---

    @(link_name = "g_srv_target_get_weight")
    srv_target_get_weight :: proc(target: ^SrvTarget) -> glib.uint16 ---

    @(link_name = "g_srv_target_list_sort")
    srv_target_list_sort :: proc(targets: [^]glib.List) -> ^glib.List ---

    @(link_name = "g_subprocess_get_type")
    subprocess_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_subprocess_new")
    subprocess_new :: proc(flags: SubprocessFlags, error: ^^glib.Error, argv0: cstring, #c_vararg var_args: ..any) -> ^Subprocess ---

    @(link_name = "g_subprocess_newv")
    subprocess_newv :: proc(argv: ^cstring, flags: SubprocessFlags, error: ^^glib.Error) -> ^Subprocess ---

    @(link_name = "g_subprocess_get_stdin_pipe")
    subprocess_get_stdin_pipe :: proc(subprocess: [^]Subprocess) -> ^OutputStream ---

    @(link_name = "g_subprocess_get_stdout_pipe")
    subprocess_get_stdout_pipe :: proc(subprocess: [^]Subprocess) -> ^InputStream ---

    @(link_name = "g_subprocess_get_stderr_pipe")
    subprocess_get_stderr_pipe :: proc(subprocess: [^]Subprocess) -> ^InputStream ---

    @(link_name = "g_subprocess_get_identifier")
    subprocess_get_identifier :: proc(subprocess: [^]Subprocess) -> cstring ---

    @(link_name = "g_subprocess_send_signal")
    subprocess_send_signal :: proc(subprocess: [^]Subprocess, signal_num: glib.int_) ---

    @(link_name = "g_subprocess_force_exit")
    subprocess_force_exit :: proc(subprocess: [^]Subprocess) ---

    @(link_name = "g_subprocess_wait")
    subprocess_wait :: proc(subprocess: [^]Subprocess, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_subprocess_wait_async")
    subprocess_wait_async :: proc(subprocess: [^]Subprocess, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_subprocess_wait_finish")
    subprocess_wait_finish :: proc(subprocess: [^]Subprocess, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_subprocess_wait_check")
    subprocess_wait_check :: proc(subprocess: [^]Subprocess, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_subprocess_wait_check_async")
    subprocess_wait_check_async :: proc(subprocess: [^]Subprocess, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_subprocess_wait_check_finish")
    subprocess_wait_check_finish :: proc(subprocess: [^]Subprocess, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_subprocess_get_status")
    subprocess_get_status :: proc(subprocess: [^]Subprocess) -> glib.int_ ---

    @(link_name = "g_subprocess_get_successful")
    subprocess_get_successful :: proc(subprocess: [^]Subprocess) -> glib.boolean ---

    @(link_name = "g_subprocess_get_if_exited")
    subprocess_get_if_exited :: proc(subprocess: [^]Subprocess) -> glib.boolean ---

    @(link_name = "g_subprocess_get_exit_status")
    subprocess_get_exit_status :: proc(subprocess: [^]Subprocess) -> glib.int_ ---

    @(link_name = "g_subprocess_get_if_signaled")
    subprocess_get_if_signaled :: proc(subprocess: [^]Subprocess) -> glib.boolean ---

    @(link_name = "g_subprocess_get_term_sig")
    subprocess_get_term_sig :: proc(subprocess: [^]Subprocess) -> glib.int_ ---

    @(link_name = "g_subprocess_communicate")
    subprocess_communicate :: proc(subprocess: [^]Subprocess, stdin_buf: ^glib.Bytes, cancellable: ^Cancellable, stdout_buf: ^^glib.Bytes, stderr_buf: ^^glib.Bytes, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_subprocess_communicate_async")
    subprocess_communicate_async :: proc(subprocess: [^]Subprocess, stdin_buf: ^glib.Bytes, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_subprocess_communicate_finish")
    subprocess_communicate_finish :: proc(subprocess: [^]Subprocess, result: ^AsyncResult, stdout_buf: ^^glib.Bytes, stderr_buf: ^^glib.Bytes, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_subprocess_communicate_utf8")
    subprocess_communicate_utf8 :: proc(subprocess: [^]Subprocess, stdin_buf: cstring, cancellable: ^Cancellable, stdout_buf: ^cstring, stderr_buf: ^cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_subprocess_communicate_utf8_async")
    subprocess_communicate_utf8_async :: proc(subprocess: [^]Subprocess, stdin_buf: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_subprocess_communicate_utf8_finish")
    subprocess_communicate_utf8_finish :: proc(subprocess: [^]Subprocess, result: ^AsyncResult, stdout_buf: ^cstring, stderr_buf: ^cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_subprocess_launcher_get_type")
    subprocess_launcher_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_subprocess_launcher_new")
    subprocess_launcher_new :: proc(flags: SubprocessFlags) -> ^SubprocessLauncher ---

    @(link_name = "g_subprocess_launcher_spawn")
    subprocess_launcher_spawn :: proc(self: ^SubprocessLauncher, error: ^^glib.Error, argv0: cstring, #c_vararg var_args: ..any) -> ^Subprocess ---

    @(link_name = "g_subprocess_launcher_spawnv")
    subprocess_launcher_spawnv :: proc(self: ^SubprocessLauncher, argv: ^cstring, error: ^^glib.Error) -> ^Subprocess ---

    @(link_name = "g_subprocess_launcher_set_environ")
    subprocess_launcher_set_environ :: proc(self: ^SubprocessLauncher, env: ^cstring) ---

    @(link_name = "g_subprocess_launcher_setenv")
    subprocess_launcher_setenv :: proc(self: ^SubprocessLauncher, variable: cstring, value: cstring, overwrite: glib.boolean) ---

    @(link_name = "g_subprocess_launcher_unsetenv")
    subprocess_launcher_unsetenv :: proc(self: ^SubprocessLauncher, variable: cstring) ---

    @(link_name = "g_subprocess_launcher_getenv")
    subprocess_launcher_getenv :: proc(self: ^SubprocessLauncher, variable: cstring) -> cstring ---

    @(link_name = "g_subprocess_launcher_set_cwd")
    subprocess_launcher_set_cwd :: proc(self: ^SubprocessLauncher, cwd: cstring) ---

    @(link_name = "g_subprocess_launcher_set_flags")
    subprocess_launcher_set_flags :: proc(self: ^SubprocessLauncher, flags: SubprocessFlags) ---

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

    @(link_name = "g_task_get_type")
    task_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_task_new")
    task_new :: proc(source_object: glib.pointer, cancellable: ^Cancellable, callback: AsyncReadyCallback, callback_data: glib.pointer) -> ^Task ---

    @(link_name = "g_task_report_error")
    task_report_error :: proc(source_object: glib.pointer, callback: AsyncReadyCallback, callback_data: glib.pointer, source_tag: glib.pointer, error: ^glib.Error) ---

    @(link_name = "g_task_report_new_error")
    task_report_new_error :: proc(source_object: glib.pointer, callback: AsyncReadyCallback, callback_data: glib.pointer, source_tag: glib.pointer, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_task_set_task_data")
    task_set_task_data :: proc(task: ^Task, task_data: glib.pointer, task_data_destroy: glib.DestroyNotify) ---

    @(link_name = "g_task_set_priority")
    task_set_priority :: proc(task: ^Task, priority: glib.int_) ---

    @(link_name = "g_task_set_check_cancellable")
    task_set_check_cancellable :: proc(task: ^Task, check_cancellable: glib.boolean) ---

    @(link_name = "g_task_set_source_tag")
    task_set_source_tag :: proc(task: ^Task, source_tag: glib.pointer) ---

    @(link_name = "g_task_set_name")
    task_set_name :: proc(task: ^Task, name: cstring) ---

    @(link_name = "g_task_set_static_name")
    task_set_static_name :: proc(task: ^Task, name: cstring) ---

    @(link_name = "g_task_get_source_object")
    task_get_source_object :: proc(task: ^Task) -> glib.pointer ---

    @(link_name = "g_task_get_task_data")
    task_get_task_data :: proc(task: ^Task) -> glib.pointer ---

    @(link_name = "g_task_get_priority")
    task_get_priority :: proc(task: ^Task) -> glib.int_ ---

    @(link_name = "g_task_get_context")
    task_get_context :: proc(task: ^Task) -> ^glib.MainContext ---

    @(link_name = "g_task_get_cancellable")
    task_get_cancellable :: proc(task: ^Task) -> ^Cancellable ---

    @(link_name = "g_task_get_check_cancellable")
    task_get_check_cancellable :: proc(task: ^Task) -> glib.boolean ---

    @(link_name = "g_task_get_source_tag")
    task_get_source_tag :: proc(task: ^Task) -> glib.pointer ---

    @(link_name = "g_task_get_name")
    task_get_name :: proc(task: ^Task) -> cstring ---

    @(link_name = "g_task_is_valid")
    task_is_valid :: proc(result: glib.pointer, source_object: glib.pointer) -> glib.boolean ---

    @(link_name = "g_task_run_in_thread")
    task_run_in_thread :: proc(task: ^Task, task_func: TaskThreadFunc) ---

    @(link_name = "g_task_run_in_thread_sync")
    task_run_in_thread_sync :: proc(task: ^Task, task_func: TaskThreadFunc) ---

    @(link_name = "g_task_set_return_on_cancel")
    task_set_return_on_cancel :: proc(task: ^Task, return_on_cancel: glib.boolean) -> glib.boolean ---

    @(link_name = "g_task_get_return_on_cancel")
    task_get_return_on_cancel :: proc(task: ^Task) -> glib.boolean ---

    @(link_name = "g_task_attach_source")
    task_attach_source :: proc(task: ^Task, source: ^glib.Source, callback: glib.SourceFunc) ---

    @(link_name = "g_task_return_pointer")
    task_return_pointer :: proc(task: ^Task, result: glib.pointer, result_destroy: glib.DestroyNotify) ---

    @(link_name = "g_task_return_boolean")
    task_return_boolean :: proc(task: ^Task, result: glib.boolean) ---

    @(link_name = "g_task_return_int")
    task_return_int :: proc(task: ^Task, result: glib.ssize) ---

    @(link_name = "g_task_return_error")
    task_return_error :: proc(task: ^Task, error: ^glib.Error) ---

    @(link_name = "g_task_return_prefixed_error")
    task_return_prefixed_error :: proc(task: ^Task, error: ^glib.Error, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_task_return_new_error")
    task_return_new_error :: proc(task: ^Task, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "g_task_return_new_error_literal")
    task_return_new_error_literal :: proc(task: ^Task, domain: glib.Quark, code: glib.int_, message: cstring) ---

    @(link_name = "g_task_return_value")
    task_return_value :: proc(task: ^Task, result: ^gobj.Value) ---

    @(link_name = "g_task_return_error_if_cancelled")
    task_return_error_if_cancelled :: proc(task: ^Task) -> glib.boolean ---

    @(link_name = "g_task_propagate_pointer")
    task_propagate_pointer :: proc(task: ^Task, error: ^^glib.Error) -> glib.pointer ---

    @(link_name = "g_task_propagate_boolean")
    task_propagate_boolean :: proc(task: ^Task, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_task_propagate_int")
    task_propagate_int :: proc(task: ^Task, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "g_task_propagate_value")
    task_propagate_value :: proc(task: ^Task, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_task_had_error")
    task_had_error :: proc(task: ^Task) -> glib.boolean ---

    @(link_name = "g_task_get_completed")
    task_get_completed :: proc(task: ^Task) -> glib.boolean ---

    @(link_name = "g_task_print_alive_tasks")
    task_print_alive_tasks :: proc() ---

    @(link_name = "g_tcp_connection_get_type")
    tcp_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tcp_connection_set_graceful_disconnect")
    tcp_connection_set_graceful_disconnect :: proc(connection: ^TcpConnection, graceful_disconnect: glib.boolean) ---

    @(link_name = "g_tcp_connection_get_graceful_disconnect")
    tcp_connection_get_graceful_disconnect :: proc(connection: ^TcpConnection) -> glib.boolean ---

    @(link_name = "g_tcp_wrapper_connection_get_type")
    tcp_wrapper_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tcp_wrapper_connection_new")
    tcp_wrapper_connection_new :: proc(base_io_stream: ^IOStream, socket: ^Socket) -> ^SocketConnection ---

    @(link_name = "g_tcp_wrapper_connection_get_base_io_stream")
    tcp_wrapper_connection_get_base_io_stream :: proc(conn: ^TcpWrapperConnection) -> ^IOStream ---

    @(link_name = "g_test_dbus_get_type")
    test_dbus_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_test_dbus_new")
    test_dbus_new :: proc(flags: TestDBusFlags) -> ^TestDBus ---

    @(link_name = "g_test_dbus_get_flags")
    test_dbus_get_flags :: proc(self: ^TestDBus) -> TestDBusFlags ---

    @(link_name = "g_test_dbus_get_bus_address")
    test_dbus_get_bus_address :: proc(self: ^TestDBus) -> cstring ---

    @(link_name = "g_test_dbus_add_service_dir")
    test_dbus_add_service_dir :: proc(self: ^TestDBus, path: cstring) ---

    @(link_name = "g_test_dbus_up")
    test_dbus_up :: proc(self: ^TestDBus) ---

    @(link_name = "g_test_dbus_stop")
    test_dbus_stop :: proc(self: ^TestDBus) ---

    @(link_name = "g_test_dbus_down")
    test_dbus_down :: proc(self: ^TestDBus) ---

    @(link_name = "g_test_dbus_unset")
    test_dbus_unset :: proc() ---

    @(link_name = "g_themed_icon_get_type")
    themed_icon_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_themed_icon_new")
    themed_icon_new :: proc(iconname: cstring) -> ^Icon ---

    @(link_name = "g_themed_icon_new_with_default_fallbacks")
    themed_icon_new_with_default_fallbacks :: proc(iconname: cstring) -> ^Icon ---

    @(link_name = "g_themed_icon_new_from_names")
    themed_icon_new_from_names :: proc(iconnames: [^]cstring, len: i32) -> ^Icon ---

    @(link_name = "g_themed_icon_prepend_name")
    themed_icon_prepend_name :: proc(icon: ^ThemedIcon, iconname: cstring) ---

    @(link_name = "g_themed_icon_append_name")
    themed_icon_append_name :: proc(icon: ^ThemedIcon, iconname: cstring) ---

    @(link_name = "g_themed_icon_get_names")
    themed_icon_get_names :: proc(icon: ^ThemedIcon) -> ^cstring ---

    @(link_name = "g_threaded_socket_service_get_type")
    threaded_socket_service_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_threaded_socket_service_new")
    threaded_socket_service_new :: proc(max_threads: i32) -> ^SocketService ---

    @(link_name = "g_tls_backend_get_type")
    tls_backend_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_backend_get_default")
    tls_backend_get_default :: proc() -> ^TlsBackend ---

    @(link_name = "g_tls_backend_get_default_database")
    tls_backend_get_default_database :: proc(backend: ^TlsBackend) -> ^TlsDatabase ---

    @(link_name = "g_tls_backend_set_default_database")
    tls_backend_set_default_database :: proc(backend: ^TlsBackend, database: ^TlsDatabase) ---

    @(link_name = "g_tls_backend_supports_tls")
    tls_backend_supports_tls :: proc(backend: ^TlsBackend) -> glib.boolean ---

    @(link_name = "g_tls_backend_supports_dtls")
    tls_backend_supports_dtls :: proc(backend: ^TlsBackend) -> glib.boolean ---

    @(link_name = "g_tls_backend_get_certificate_type")
    tls_backend_get_certificate_type :: proc(backend: ^TlsBackend) -> gobj.Type ---

    @(link_name = "g_tls_backend_get_client_connection_type")
    tls_backend_get_client_connection_type :: proc(backend: ^TlsBackend) -> gobj.Type ---

    @(link_name = "g_tls_backend_get_server_connection_type")
    tls_backend_get_server_connection_type :: proc(backend: ^TlsBackend) -> gobj.Type ---

    @(link_name = "g_tls_backend_get_file_database_type")
    tls_backend_get_file_database_type :: proc(backend: ^TlsBackend) -> gobj.Type ---

    @(link_name = "g_tls_backend_get_dtls_client_connection_type")
    tls_backend_get_dtls_client_connection_type :: proc(backend: ^TlsBackend) -> gobj.Type ---

    @(link_name = "g_tls_backend_get_dtls_server_connection_type")
    tls_backend_get_dtls_server_connection_type :: proc(backend: ^TlsBackend) -> gobj.Type ---

    @(link_name = "g_tls_certificate_get_type")
    tls_certificate_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_certificate_new_from_pem")
    tls_certificate_new_from_pem :: proc(data: cstring, length: glib.ssize, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_certificate_new_from_pkcs12")
    tls_certificate_new_from_pkcs12 :: proc(data: ^glib.uint8, length: glib.size, password: cstring, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_certificate_new_from_file_with_password")
    tls_certificate_new_from_file_with_password :: proc(file: cstring, password: cstring, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_certificate_new_from_file")
    tls_certificate_new_from_file :: proc(file: cstring, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_certificate_new_from_files")
    tls_certificate_new_from_files :: proc(cert_file: cstring, key_file: cstring, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_certificate_new_from_pkcs11_uris")
    tls_certificate_new_from_pkcs11_uris :: proc(pkcs11_uri: cstring, private_key_pkcs11_uri: cstring, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_certificate_list_new_from_file")
    tls_certificate_list_new_from_file :: proc(file: cstring, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_tls_certificate_get_issuer")
    tls_certificate_get_issuer :: proc(cert: ^TlsCertificate) -> ^TlsCertificate ---

    @(link_name = "g_tls_certificate_verify")
    tls_certificate_verify :: proc(cert: ^TlsCertificate, identity: ^SocketConnectable, trusted_ca: ^TlsCertificate) -> TlsCertificateFlags ---

    @(link_name = "g_tls_certificate_is_same")
    tls_certificate_is_same :: proc(cert_one: ^TlsCertificate, cert_two: ^TlsCertificate) -> glib.boolean ---

    @(link_name = "g_tls_certificate_get_not_valid_before")
    tls_certificate_get_not_valid_before :: proc(cert: ^TlsCertificate) -> ^glib.DateTime ---

    @(link_name = "g_tls_certificate_get_not_valid_after")
    tls_certificate_get_not_valid_after :: proc(cert: ^TlsCertificate) -> ^glib.DateTime ---

    @(link_name = "g_tls_certificate_get_subject_name")
    tls_certificate_get_subject_name :: proc(cert: ^TlsCertificate) -> cstring ---

    @(link_name = "g_tls_certificate_get_issuer_name")
    tls_certificate_get_issuer_name :: proc(cert: ^TlsCertificate) -> cstring ---

    @(link_name = "g_tls_certificate_get_dns_names")
    tls_certificate_get_dns_names :: proc(cert: ^TlsCertificate) -> ^glib.PtrArray ---

    @(link_name = "g_tls_certificate_get_ip_addresses")
    tls_certificate_get_ip_addresses :: proc(cert: ^TlsCertificate) -> ^glib.PtrArray ---

    @(link_name = "g_tls_connection_get_type")
    tls_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_connection_set_use_system_certdb")
    tls_connection_set_use_system_certdb :: proc(conn: ^TlsConnection, use_system_certdb: glib.boolean) ---

    @(link_name = "g_tls_connection_get_use_system_certdb")
    tls_connection_get_use_system_certdb :: proc(conn: ^TlsConnection) -> glib.boolean ---

    @(link_name = "g_tls_connection_set_database")
    tls_connection_set_database :: proc(conn: ^TlsConnection, database: ^TlsDatabase) ---

    @(link_name = "g_tls_connection_get_database")
    tls_connection_get_database :: proc(conn: ^TlsConnection) -> ^TlsDatabase ---

    @(link_name = "g_tls_connection_set_certificate")
    tls_connection_set_certificate :: proc(conn: ^TlsConnection, certificate: ^TlsCertificate) ---

    @(link_name = "g_tls_connection_get_certificate")
    tls_connection_get_certificate :: proc(conn: ^TlsConnection) -> ^TlsCertificate ---

    @(link_name = "g_tls_connection_set_interaction")
    tls_connection_set_interaction :: proc(conn: ^TlsConnection, interaction: ^TlsInteraction) ---

    @(link_name = "g_tls_connection_get_interaction")
    tls_connection_get_interaction :: proc(conn: ^TlsConnection) -> ^TlsInteraction ---

    @(link_name = "g_tls_connection_get_peer_certificate")
    tls_connection_get_peer_certificate :: proc(conn: ^TlsConnection) -> ^TlsCertificate ---

    @(link_name = "g_tls_connection_get_peer_certificate_errors")
    tls_connection_get_peer_certificate_errors :: proc(conn: ^TlsConnection) -> TlsCertificateFlags ---

    @(link_name = "g_tls_connection_set_require_close_notify")
    tls_connection_set_require_close_notify :: proc(conn: ^TlsConnection, require_close_notify: glib.boolean) ---

    @(link_name = "g_tls_connection_get_require_close_notify")
    tls_connection_get_require_close_notify :: proc(conn: ^TlsConnection) -> glib.boolean ---

    @(link_name = "g_tls_connection_set_rehandshake_mode")
    tls_connection_set_rehandshake_mode :: proc(conn: ^TlsConnection, mode: TlsRehandshakeMode) ---

    @(link_name = "g_tls_connection_get_rehandshake_mode")
    tls_connection_get_rehandshake_mode :: proc(conn: ^TlsConnection) -> TlsRehandshakeMode ---

    @(link_name = "g_tls_connection_set_advertised_protocols")
    tls_connection_set_advertised_protocols :: proc(conn: ^TlsConnection, protocols: [^]cstring) ---

    @(link_name = "g_tls_connection_get_negotiated_protocol")
    tls_connection_get_negotiated_protocol :: proc(conn: ^TlsConnection) -> cstring ---

    @(link_name = "g_tls_connection_get_channel_binding_data")
    tls_connection_get_channel_binding_data :: proc(conn: ^TlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_tls_connection_handshake")
    tls_connection_handshake :: proc(conn: ^TlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_tls_connection_handshake_async")
    tls_connection_handshake_async :: proc(conn: ^TlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_tls_connection_handshake_finish")
    tls_connection_handshake_finish :: proc(conn: ^TlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_tls_connection_get_protocol_version")
    tls_connection_get_protocol_version :: proc(conn: ^TlsConnection) -> TlsProtocolVersion ---

    @(link_name = "g_tls_connection_get_ciphersuite_name")
    tls_connection_get_ciphersuite_name :: proc(conn: ^TlsConnection) -> cstring ---

    @(link_name = "g_tls_error_quark")
    tls_error_quark :: proc() -> glib.Quark ---

    @(link_name = "g_tls_channel_binding_error_quark")
    tls_channel_binding_error_quark :: proc() -> glib.Quark ---

    @(link_name = "g_tls_connection_emit_accept_certificate")
    tls_connection_emit_accept_certificate :: proc(conn: ^TlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean ---

    @(link_name = "g_tls_client_connection_get_type")
    tls_client_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_client_connection_new")
    tls_client_connection_new :: proc(base_io_stream: ^IOStream, server_identity: ^SocketConnectable, error: ^^glib.Error) -> ^IOStream ---

    @(link_name = "g_tls_client_connection_get_validation_flags")
    tls_client_connection_get_validation_flags :: proc(conn: ^TlsClientConnection) -> TlsCertificateFlags ---

    @(link_name = "g_tls_client_connection_set_validation_flags")
    tls_client_connection_set_validation_flags :: proc(conn: ^TlsClientConnection, flags: TlsCertificateFlags) ---

    @(link_name = "g_tls_client_connection_get_server_identity")
    tls_client_connection_get_server_identity :: proc(conn: ^TlsClientConnection) -> ^SocketConnectable ---

    @(link_name = "g_tls_client_connection_set_server_identity")
    tls_client_connection_set_server_identity :: proc(conn: ^TlsClientConnection, identity: ^SocketConnectable) ---

    @(link_name = "g_tls_client_connection_get_use_ssl3")
    tls_client_connection_get_use_ssl3 :: proc(conn: ^TlsClientConnection) -> glib.boolean ---

    @(link_name = "g_tls_client_connection_set_use_ssl3")
    tls_client_connection_set_use_ssl3 :: proc(conn: ^TlsClientConnection, use_ssl3: glib.boolean) ---

    @(link_name = "g_tls_client_connection_get_accepted_cas")
    tls_client_connection_get_accepted_cas :: proc(conn: ^TlsClientConnection) -> ^glib.List ---

    @(link_name = "g_tls_client_connection_copy_session_state")
    tls_client_connection_copy_session_state :: proc(conn: ^TlsClientConnection, source: ^TlsClientConnection) ---

    @(link_name = "g_tls_database_get_type")
    tls_database_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_database_verify_chain")
    tls_database_verify_chain :: proc(self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsCertificateFlags ---

    @(link_name = "g_tls_database_verify_chain_async")
    tls_database_verify_chain_async :: proc(self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_tls_database_verify_chain_finish")
    tls_database_verify_chain_finish :: proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> TlsCertificateFlags ---

    @(link_name = "g_tls_database_create_certificate_handle")
    tls_database_create_certificate_handle :: proc(self: ^TlsDatabase, certificate: ^TlsCertificate) -> cstring ---

    @(link_name = "g_tls_database_lookup_certificate_for_handle")
    tls_database_lookup_certificate_for_handle :: proc(self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_database_lookup_certificate_for_handle_async")
    tls_database_lookup_certificate_for_handle_async :: proc(self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_tls_database_lookup_certificate_for_handle_finish")
    tls_database_lookup_certificate_for_handle_finish :: proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_database_lookup_certificate_issuer")
    tls_database_lookup_certificate_issuer :: proc(self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_database_lookup_certificate_issuer_async")
    tls_database_lookup_certificate_issuer_async :: proc(self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_tls_database_lookup_certificate_issuer_finish")
    tls_database_lookup_certificate_issuer_finish :: proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate ---

    @(link_name = "g_tls_database_lookup_certificates_issued_by")
    tls_database_lookup_certificates_issued_by :: proc(self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_tls_database_lookup_certificates_issued_by_async")
    tls_database_lookup_certificates_issued_by_async :: proc(self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_tls_database_lookup_certificates_issued_by_finish")
    tls_database_lookup_certificates_issued_by_finish :: proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "g_tls_file_database_get_type")
    tls_file_database_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_file_database_new")
    tls_file_database_new :: proc(anchors: [^]glib.char, error: ^^glib.Error) -> ^TlsDatabase ---

    @(link_name = "g_tls_interaction_get_type")
    tls_interaction_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_interaction_invoke_ask_password")
    tls_interaction_invoke_ask_password :: proc(interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult ---

    @(link_name = "g_tls_interaction_ask_password")
    tls_interaction_ask_password :: proc(interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult ---

    @(link_name = "g_tls_interaction_ask_password_async")
    tls_interaction_ask_password_async :: proc(interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_tls_interaction_ask_password_finish")
    tls_interaction_ask_password_finish :: proc(interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult ---

    @(link_name = "g_tls_interaction_invoke_request_certificate")
    tls_interaction_invoke_request_certificate :: proc(interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult ---

    @(link_name = "g_tls_interaction_request_certificate")
    tls_interaction_request_certificate :: proc(interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult ---

    @(link_name = "g_tls_interaction_request_certificate_async")
    tls_interaction_request_certificate_async :: proc(interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_tls_interaction_request_certificate_finish")
    tls_interaction_request_certificate_finish :: proc(interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult ---

    @(link_name = "g_tls_password_get_type")
    tls_password_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_password_new")
    tls_password_new :: proc(flags: TlsPasswordFlags, description: cstring) -> ^TlsPassword ---

    @(link_name = "g_tls_password_get_value")
    tls_password_get_value :: proc(password: ^TlsPassword, length: ^glib.size) -> ^glib.uchar ---

    @(link_name = "g_tls_password_set_value")
    tls_password_set_value :: proc(password: ^TlsPassword, value: ^glib.uchar, length: glib.ssize) ---

    @(link_name = "g_tls_password_set_value_full")
    tls_password_set_value_full :: proc(password: ^TlsPassword, value: ^glib.uchar, length: glib.ssize, destroy: glib.DestroyNotify) ---

    @(link_name = "g_tls_password_get_flags")
    tls_password_get_flags :: proc(password: ^TlsPassword) -> TlsPasswordFlags ---

    @(link_name = "g_tls_password_set_flags")
    tls_password_set_flags :: proc(password: ^TlsPassword, flags: TlsPasswordFlags) ---

    @(link_name = "g_tls_password_get_description")
    tls_password_get_description :: proc(password: ^TlsPassword) -> cstring ---

    @(link_name = "g_tls_password_set_description")
    tls_password_set_description :: proc(password: ^TlsPassword, description: cstring) ---

    @(link_name = "g_tls_password_get_warning")
    tls_password_get_warning :: proc(password: ^TlsPassword) -> cstring ---

    @(link_name = "g_tls_password_set_warning")
    tls_password_set_warning :: proc(password: ^TlsPassword, warning: cstring) ---

    @(link_name = "g_tls_server_connection_get_type")
    tls_server_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_server_connection_new")
    tls_server_connection_new :: proc(base_io_stream: ^IOStream, certificate: ^TlsCertificate, error: ^^glib.Error) -> ^IOStream ---

    @(link_name = "g_unix_connection_get_type")
    unix_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_unix_connection_send_fd")
    unix_connection_send_fd :: proc(connection: ^UnixConnection, fd: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_unix_connection_receive_fd")
    unix_connection_receive_fd :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---

    @(link_name = "g_unix_connection_send_credentials")
    unix_connection_send_credentials :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_unix_connection_send_credentials_async")
    unix_connection_send_credentials_async :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_unix_connection_send_credentials_finish")
    unix_connection_send_credentials_finish :: proc(connection: ^UnixConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_unix_connection_receive_credentials")
    unix_connection_receive_credentials :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Credentials ---

    @(link_name = "g_unix_connection_receive_credentials_async")
    unix_connection_receive_credentials_async :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_unix_connection_receive_credentials_finish")
    unix_connection_receive_credentials_finish :: proc(connection: ^UnixConnection, result: ^AsyncResult, error: ^^glib.Error) -> ^Credentials ---

    @(link_name = "g_unix_credentials_message_get_type")
    unix_credentials_message_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_unix_credentials_message_new")
    unix_credentials_message_new :: proc() -> ^SocketControlMessage ---

    @(link_name = "g_unix_credentials_message_new_with_credentials")
    unix_credentials_message_new_with_credentials :: proc(credentials: [^]Credentials) -> ^SocketControlMessage ---

    @(link_name = "g_unix_credentials_message_get_credentials")
    unix_credentials_message_get_credentials :: proc(message: ^UnixCredentialsMessage) -> ^Credentials ---

    @(link_name = "g_unix_credentials_message_is_supported")
    unix_credentials_message_is_supported :: proc() -> glib.boolean ---

    @(link_name = "g_unix_fd_list_get_type")
    unix_fd_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_unix_fd_list_new")
    unix_fd_list_new :: proc() -> ^UnixFDList ---

    @(link_name = "g_unix_fd_list_new_from_array")
    unix_fd_list_new_from_array :: proc(fds: [^]glib.int_, n_fds: glib.int_) -> ^UnixFDList ---

    @(link_name = "g_unix_fd_list_append")
    unix_fd_list_append :: proc(list: ^UnixFDList, fd: glib.int_, error: ^^glib.Error) -> glib.int_ ---

    @(link_name = "g_unix_fd_list_get_length")
    unix_fd_list_get_length :: proc(list: ^UnixFDList) -> glib.int_ ---

    @(link_name = "g_unix_fd_list_get")
    unix_fd_list_get :: proc(list: ^UnixFDList, index_: glib.int_, error: ^^glib.Error) -> glib.int_ ---

    @(link_name = "g_unix_fd_list_peek_fds")
    unix_fd_list_peek_fds :: proc(list: ^UnixFDList, length: ^glib.int_) -> ^glib.int_ ---

    @(link_name = "g_unix_fd_list_steal_fds")
    unix_fd_list_steal_fds :: proc(list: ^UnixFDList, length: ^glib.int_) -> ^glib.int_ ---

    @(link_name = "g_unix_socket_address_get_type")
    unix_socket_address_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_unix_socket_address_new")
    unix_socket_address_new :: proc(path: cstring) -> ^SocketAddress ---

    @(link_name = "g_unix_socket_address_new_abstract")
    unix_socket_address_new_abstract :: proc(path: cstring, path_len: glib.int_) -> ^SocketAddress ---

    @(link_name = "g_unix_socket_address_new_with_type")
    unix_socket_address_new_with_type :: proc(path: cstring, path_len: glib.int_, type: UnixSocketAddressType) -> ^SocketAddress ---

    @(link_name = "g_unix_socket_address_get_path")
    unix_socket_address_get_path :: proc(address: [^]UnixSocketAddress) -> cstring ---

    @(link_name = "g_unix_socket_address_get_path_len")
    unix_socket_address_get_path_len :: proc(address: [^]UnixSocketAddress) -> glib.size ---

    @(link_name = "g_unix_socket_address_get_address_type")
    unix_socket_address_get_address_type :: proc(address: [^]UnixSocketAddress) -> UnixSocketAddressType ---

    @(link_name = "g_unix_socket_address_get_is_abstract")
    unix_socket_address_get_is_abstract :: proc(address: [^]UnixSocketAddress) -> glib.boolean ---

    @(link_name = "g_unix_socket_address_abstract_names_supported")
    unix_socket_address_abstract_names_supported :: proc() -> glib.boolean ---

    @(link_name = "g_vfs_get_type")
    vfs_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_vfs_is_active")
    vfs_is_active :: proc(vfs: [^]Vfs) -> glib.boolean ---

    @(link_name = "g_vfs_get_file_for_path")
    vfs_get_file_for_path :: proc(vfs: [^]Vfs, path: cstring) -> ^File ---

    @(link_name = "g_vfs_get_file_for_uri")
    vfs_get_file_for_uri :: proc(vfs: [^]Vfs, uri: cstring) -> ^File ---

    @(link_name = "g_vfs_get_supported_uri_schemes")
    vfs_get_supported_uri_schemes :: proc(vfs: [^]Vfs) -> ^cstring ---

    @(link_name = "g_vfs_parse_name")
    vfs_parse_name :: proc(vfs: [^]Vfs, parse_name: cstring) -> ^File ---

    @(link_name = "g_vfs_get_default")
    vfs_get_default :: proc() -> ^Vfs ---

    @(link_name = "g_vfs_get_local")
    vfs_get_local :: proc() -> ^Vfs ---

    @(link_name = "g_vfs_register_uri_scheme")
    vfs_register_uri_scheme :: proc(vfs: [^]Vfs, scheme: cstring, uri_func: VfsFileLookupFunc, uri_data: glib.pointer, uri_destroy: glib.DestroyNotify, parse_name_func: VfsFileLookupFunc, parse_name_data: glib.pointer, parse_name_destroy: glib.DestroyNotify) -> glib.boolean ---

    @(link_name = "g_vfs_unregister_uri_scheme")
    vfs_unregister_uri_scheme :: proc(vfs: [^]Vfs, scheme: cstring) -> glib.boolean ---

    @(link_name = "g_volume_get_type")
    volume_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_volume_get_name")
    volume_get_name :: proc(volume: ^Volume) -> cstring ---

    @(link_name = "g_volume_get_icon")
    volume_get_icon :: proc(volume: ^Volume) -> ^Icon ---

    @(link_name = "g_volume_get_symbolic_icon")
    volume_get_symbolic_icon :: proc(volume: ^Volume) -> ^Icon ---

    @(link_name = "g_volume_get_uuid")
    volume_get_uuid :: proc(volume: ^Volume) -> cstring ---

    @(link_name = "g_volume_get_drive")
    volume_get_drive :: proc(volume: ^Volume) -> ^Drive ---

    @(link_name = "g_volume_get_mount")
    volume_get_mount :: proc(volume: ^Volume) -> ^Mount ---

    @(link_name = "g_volume_can_mount")
    volume_can_mount :: proc(volume: ^Volume) -> glib.boolean ---

    @(link_name = "g_volume_can_eject")
    volume_can_eject :: proc(volume: ^Volume) -> glib.boolean ---

    @(link_name = "g_volume_should_automount")
    volume_should_automount :: proc(volume: ^Volume) -> glib.boolean ---

    @(link_name = "g_volume_mount")
    volume_mount :: proc(volume: ^Volume, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_volume_mount_finish")
    volume_mount_finish :: proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_volume_eject")
    volume_eject :: proc(volume: ^Volume, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_volume_eject_finish")
    volume_eject_finish :: proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_volume_get_identifier")
    volume_get_identifier :: proc(volume: ^Volume, kind: cstring) -> cstring ---

    @(link_name = "g_volume_enumerate_identifiers")
    volume_enumerate_identifiers :: proc(volume: ^Volume) -> ^cstring ---

    @(link_name = "g_volume_get_activation_root")
    volume_get_activation_root :: proc(volume: ^Volume) -> ^File ---

    @(link_name = "g_volume_eject_with_operation")
    volume_eject_with_operation :: proc(volume: ^Volume, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "g_volume_eject_with_operation_finish")
    volume_eject_with_operation_finish :: proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "g_volume_get_sort_key")
    volume_get_sort_key :: proc(volume: ^Volume) -> cstring ---

    @(link_name = "g_zlib_compressor_get_type")
    zlib_compressor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_zlib_compressor_new")
    zlib_compressor_new :: proc(format: ZlibCompressorFormat, level: i32) -> ^ZlibCompressor ---

    @(link_name = "g_zlib_compressor_get_file_info")
    zlib_compressor_get_file_info :: proc(compressor: ^ZlibCompressor) -> ^FileInfo ---

    @(link_name = "g_zlib_compressor_set_file_info")
    zlib_compressor_set_file_info :: proc(compressor: ^ZlibCompressor, file_info: ^FileInfo) ---

    @(link_name = "g_zlib_decompressor_get_type")
    zlib_decompressor_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_zlib_decompressor_new")
    zlib_decompressor_new :: proc(format: ZlibCompressorFormat) -> ^ZlibDecompressor ---

    @(link_name = "g_zlib_decompressor_get_file_info")
    zlib_decompressor_get_file_info :: proc(decompressor: ^ZlibDecompressor) -> ^FileInfo ---

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

when (ODIN_ARCH == .amd64) {

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import gio_runic { "../../lib/linux/x86_64/libgio-2.0.a", "../../lib/linux/x86_64/libgio-wrapper.a", "system:ffi", "system:pcre2-8", "system:mount", "system:z" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import gio_runic { "system:gio-2.0", "../../lib/linux/x86_64/libgio-wrapper.a" }
} 
}

}

when (ODIN_ARCH == .arm64) {

when #config(GLIB_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import gio_runic { "../../lib/linux/aarch64/libgio-2.0.a", "../../lib/linux/aarch64/libgio-wrapper.a", "system:ffi", "system:pcre2-8", "system:mount", "system:z" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import gio_runic { "system:gio-2.0", "../../lib/linux/aarch64/libgio-wrapper.a" }
} 
}

}

