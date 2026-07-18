#+build linux amd64, linux arm64, windows amd64
package gtksourceview

import "../glib"
import "../glib/gio"
import gobj "../glib/gobject"

G_ALLOC_ONLY :: 1
G_ALLOC_AND_FREE :: 2
G_ALLOCATOR_LIST :: 1
G_ALLOCATOR_SLIST :: 2
G_ALLOCATOR_NODE :: 3
G_STATIC_PRIVATE_INIT :: `{ 0 }`
GDK_DEPRECATED_MACRO :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE :: `__attribute__((__deprecated__))`
GDK_MAJOR_VERSION :: `(4)`
GDK_MINOR_VERSION :: `(22)`
GDK_VERSION_4_0 :: `(((4) << 16 | (0) << 8))`
GDK_VERSION_4_2 :: `(((4) << 16 | (2) << 8))`
GDK_VERSION_4_4 :: `(((4) << 16 | (4) << 8))`
GDK_VERSION_4_6 :: `(((4) << 16 | (6) << 8))`
GDK_VERSION_4_8 :: `(((4) << 16 | (8) << 8))`
GDK_VERSION_4_10 :: `(((4) << 16 | (10) << 8))`
GDK_VERSION_4_12 :: `(((4) << 16 | (12) << 8))`
GDK_VERSION_4_14 :: `(((4) << 16 | (14) << 8))`
GDK_VERSION_4_16 :: `(((4) << 16 | (16) << 8))`
GDK_VERSION_4_18 :: `(((4) << 16 | (18) << 8))`
GDK_VERSION_4_20 :: `(((4) << 16 | (20) << 8))`
GDK_VERSION_4_22 :: `(((4) << 16 | (22) << 8))`
GDK_VERSION_CUR_STABLE :: `((((4)) << 16 | ((22)) << 8))`
GDK_VERSION_PREV_STABLE :: `((((4)) << 16 | ((22) - 2) << 8))`
GDK_VERSION_MIN_REQUIRED :: `(((((4)) << 16 | ((22)) << 8)))`
GDK_VERSION_MAX_ALLOWED :: `(((((4)) << 16 | ((22)) << 8)))`
GDK_DEPRECATED_MACRO_IN_4_0 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_0 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_0 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_2 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_2 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_2 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_4 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_4 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_4 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_6 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_6 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_6 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_8 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_8 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_8 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_10 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_10 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_10 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_12 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_12 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_12 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_14 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_14 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_14 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_16 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_16 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_16 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_18 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_18 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_18 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_20 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_20 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_20 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_MACRO_IN_4_22 :: `_Pragma(\"GCC warning \\\"Deprecated pre-processor symbol\\\"\")`
GDK_DEPRECATED_ENUMERATOR_IN_4_22 :: `__attribute__((__deprecated__))`
GDK_DEPRECATED_TYPE_IN_4_22 :: `__attribute__((__deprecated__))`
GTK_TYPE_CSS_PARSER_ERROR :: `(gtk_css_parser_error_get_type ())`
GTK_TYPE_CSS_PARSER_WARNING :: `(gtk_css_parser_warning_get_type ())`
GTK_CSS_PARSER_ERROR :: `(gtk_css_parser_error_quark ())`
GTK_CSS_PARSER_WARNING :: `(gtk_css_parser_warning_quark ())`
GTK_TYPE_CSS_SECTION :: `(gtk_css_section_get_type ())`
GSK_TYPE_VULKAN_RENDERER :: `(gsk_vulkan_renderer_get_type ())`
GSK_TYPE_GL_RENDERER :: `(gsk_gl_renderer_get_type())`
GTK_TYPE_APP_CHOOSER :: `(gtk_app_chooser_get_type ())`
GTK_TYPE_DIALOG :: `(gtk_dialog_get_type ())`
GTK_TYPE_APP_CHOOSER_DIALOG :: `(gtk_app_chooser_dialog_get_type ())`
GTK_TYPE_APP_CHOOSER_WIDGET :: `(gtk_app_chooser_widget_get_type ())`
GTK_TYPE_APP_CHOOSER_BUTTON :: `(gtk_app_chooser_button_get_type ())`
GTK_TYPE_SHORTCUTS_SHORTCUT :: `(gtk_shortcuts_shortcut_get_type())`
GTK_TYPE_SHORTCUTS_GROUP :: `(gtk_shortcuts_group_get_type ())`
GTK_TYPE_SHORTCUTS_SECTION :: `(gtk_shortcuts_section_get_type ())`
GTK_TYPE_SHORTCUTS_WINDOW :: `(gtk_shortcuts_window_get_type ())`
GTK_TYPE_ASSISTANT :: `(gtk_assistant_get_type ())`
GTK_TYPE_ASSISTANT_PAGE :: `(gtk_assistant_page_get_type ())`
GTK_TYPE_CELL_EDITABLE :: `(gtk_cell_editable_get_type ())`
GTK_TYPE_CELL_RENDERER :: `(gtk_cell_renderer_get_type ())`
GTK_TYPE_TREE_MODEL :: `(gtk_tree_model_get_type ())`
GTK_TYPE_TREE_ITER :: `(gtk_tree_iter_get_type ())`
GTK_TYPE_TREE_PATH :: `(gtk_tree_path_get_type ())`
GTK_TYPE_TREE_ROW_REFERENCE :: `(gtk_tree_row_reference_get_type ())`
GTK_TYPE_CELL_AREA :: `(gtk_cell_area_get_type ())`
GTK_TYPE_CELL_AREA_BOX :: `(gtk_cell_area_box_get_type ())`
GTK_TYPE_CELL_AREA_CONTEXT :: `(gtk_cell_area_context_get_type ())`
GTK_TYPE_CELL_LAYOUT :: `(gtk_cell_layout_get_type ())`
GTK_TYPE_CELL_RENDERER_TEXT :: `(gtk_cell_renderer_text_get_type ())`
GTK_TYPE_CELL_RENDERER_ACCEL :: `(gtk_cell_renderer_accel_get_type ())`
GTK_TYPE_CELL_RENDERER_COMBO :: `(gtk_cell_renderer_combo_get_type ())`
GTK_TYPE_CELL_RENDERER_PIXBUF :: `(gtk_cell_renderer_pixbuf_get_type ())`
GTK_TYPE_CELL_RENDERER_PROGRESS :: `(gtk_cell_renderer_progress_get_type ())`
GTK_TYPE_CELL_RENDERER_SPIN :: `(gtk_cell_renderer_spin_get_type ())`
GTK_TYPE_CELL_RENDERER_SPINNER :: `(gtk_cell_renderer_spinner_get_type ())`
GTK_TYPE_CELL_RENDERER_TOGGLE :: `(gtk_cell_renderer_toggle_get_type ())`
GTK_TYPE_CELL_VIEW :: `(gtk_cell_view_get_type ())`
GTK_TYPE_COLOR_BUTTON :: `(gtk_color_button_get_type ())`
GTK_TYPE_COLOR_CHOOSER :: `(gtk_color_chooser_get_type ())`
GTK_TYPE_COLOR_CHOOSER_DIALOG :: `(gtk_color_chooser_dialog_get_type ())`
GTK_TYPE_COLOR_CHOOSER_WIDGET :: `(gtk_color_chooser_widget_get_type ())`
GTK_TYPE_TREE_SORTABLE :: `(gtk_tree_sortable_get_type ())`
GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID :: `(-1)`
GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID :: `(-2)`
GTK_TYPE_TREE_VIEW_COLUMN :: `(gtk_tree_view_column_get_type ())`
GTK_TYPE_LIST_STORE :: `(gtk_list_store_get_type ())`
GTK_TYPE_TREE_MODEL_FILTER :: `(gtk_tree_model_filter_get_type ())`
GTK_TYPE_ENTRY_COMPLETION :: `(gtk_entry_completion_get_type ())`
GTK_TYPE_TREE_VIEW :: `(gtk_tree_view_get_type ())`
GTK_TYPE_COMBO_BOX :: `(gtk_combo_box_get_type ())`
GTK_TYPE_COMBO_BOX_TEXT :: `(gtk_combo_box_text_get_type ())`
GTK_TYPE_FILE_CHOOSER :: `(gtk_file_chooser_get_type ())`
GTK_FILE_CHOOSER_ERROR :: `(gtk_file_chooser_error_quark ())`
GTK_TYPE_FILE_CHOOSER_DIALOG :: `(gtk_file_chooser_dialog_get_type ())`
GTK_TYPE_FILE_CHOOSER_NATIVE :: `(gtk_file_chooser_native_get_type ())`
GTK_TYPE_FILE_CHOOSER_WIDGET :: `(gtk_file_chooser_widget_get_type ())`
GTK_TYPE_FONT_BUTTON :: `(gtk_font_button_get_type ())`
GTK_TYPE_FONT_CHOOSER :: `(gtk_font_chooser_get_type ())`
GTK_TYPE_FONT_CHOOSER_DIALOG :: `(gtk_font_chooser_dialog_get_type ())`
GTK_TYPE_FONT_CHOOSER_WIDGET :: `(gtk_font_chooser_widget_get_type ())`
GTK_TYPE_ICON_VIEW :: `(gtk_icon_view_get_type ())`
GTK_TYPE_INFO_BAR :: `(gtk_info_bar_get_type())`
GTK_TYPE_LOCK_BUTTON :: `(gtk_lock_button_get_type ())`
GTK_TYPE_MESSAGE_DIALOG :: `(gtk_message_dialog_get_type ())`
GTK_TYPE_PAPER_SIZE :: `(gtk_paper_size_get_type ())`
GTK_PAPER_NAME_A3 :: "iso_a3"
GTK_PAPER_NAME_A4 :: "iso_a4"
GTK_PAPER_NAME_A5 :: "iso_a5"
GTK_PAPER_NAME_B5 :: "iso_b5"
GTK_PAPER_NAME_LETTER :: "na_letter"
GTK_PAPER_NAME_EXECUTIVE :: "na_executive"
GTK_PAPER_NAME_LEGAL :: "na_legal"
GTK_TYPE_PAGE_SETUP :: `(gtk_page_setup_get_type ())`
GTK_TYPE_PRINT_SETTINGS :: `(gtk_print_settings_get_type ())`
GTK_PRINT_SETTINGS_PRINTER :: "printer"
GTK_PRINT_SETTINGS_ORIENTATION :: "orientation"
GTK_PRINT_SETTINGS_PAPER_FORMAT :: "paper-format"
GTK_PRINT_SETTINGS_PAPER_WIDTH :: "paper-width"
GTK_PRINT_SETTINGS_PAPER_HEIGHT :: "paper-height"
GTK_PRINT_SETTINGS_N_COPIES :: "n-copies"
GTK_PRINT_SETTINGS_DEFAULT_SOURCE :: "default-source"
GTK_PRINT_SETTINGS_QUALITY :: "quality"
GTK_PRINT_SETTINGS_RESOLUTION :: "resolution"
GTK_PRINT_SETTINGS_USE_COLOR :: "use-color"
GTK_PRINT_SETTINGS_DUPLEX :: "duplex"
GTK_PRINT_SETTINGS_COLLATE :: "collate"
GTK_PRINT_SETTINGS_REVERSE :: "reverse"
GTK_PRINT_SETTINGS_MEDIA_TYPE :: "media-type"
GTK_PRINT_SETTINGS_DITHER :: "dither"
GTK_PRINT_SETTINGS_SCALE :: "scale"
GTK_PRINT_SETTINGS_PRINT_PAGES :: "print-pages"
GTK_PRINT_SETTINGS_PAGE_RANGES :: "page-ranges"
GTK_PRINT_SETTINGS_PAGE_SET :: "page-set"
GTK_PRINT_SETTINGS_FINISHINGS :: "finishings"
GTK_PRINT_SETTINGS_NUMBER_UP :: "number-up"
GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT :: "number-up-layout"
GTK_PRINT_SETTINGS_OUTPUT_BIN :: "output-bin"
GTK_PRINT_SETTINGS_RESOLUTION_X :: "resolution-x"
GTK_PRINT_SETTINGS_RESOLUTION_Y :: "resolution-y"
GTK_PRINT_SETTINGS_PRINTER_LPI :: "printer-lpi"
GTK_PRINT_SETTINGS_OUTPUT_DIR :: "output-dir"
GTK_PRINT_SETTINGS_OUTPUT_BASENAME :: "output-basename"
GTK_PRINT_SETTINGS_OUTPUT_FILE_FORMAT :: "output-file-format"
GTK_PRINT_SETTINGS_OUTPUT_URI :: "output-uri"
GTK_PRINT_SETTINGS_WIN32_DRIVER_VERSION :: "win32-driver-version"
GTK_PRINT_SETTINGS_WIN32_DRIVER_EXTRA :: "win32-driver-extra"
GTK_TYPE_PRINT_CONTEXT :: `(gtk_print_context_get_type ())`
GTK_TYPE_PRINT_OPERATION_PREVIEW :: `(gtk_print_operation_preview_get_type ())`
GTK_TYPE_PRINT_OPERATION :: `(gtk_print_operation_get_type ())`
GTK_PRINT_ERROR :: `gtk_print_error_quark ()`
GTK_TYPE_SHORTCUT_LABEL :: `(gtk_shortcut_label_get_type())`
GTK_TYPE_STATUSBAR :: `(gtk_statusbar_get_type ())`
GTK_TYPE_STYLE_CONTEXT :: `(gtk_style_context_get_type ())`
GTK_TYPE_TREE_ROW_DATA :: `(gtk_tree_row_data_get_type ())`
GTK_TYPE_TREE_DRAG_SOURCE :: `(gtk_tree_drag_source_get_type ())`
GTK_TYPE_TREE_DRAG_DEST :: `(gtk_tree_drag_dest_get_type ())`
GTK_TYPE_TREE_MODEL_SORT :: `(gtk_tree_model_sort_get_type ())`
GTK_TYPE_TREE_SELECTION :: `(gtk_tree_selection_get_type ())`
GTK_TYPE_TREE_STORE :: `(gtk_tree_store_get_type ())`
GTK_TYPE_VOLUME_BUTTON :: `(gtk_volume_button_get_type ())`
TYPE_ANNOTATION :: gtk_source_annotation_get_type
TYPE_ANNOTATIONS :: gtk_source_annotations_get_type
TYPE_ANNOTATION_PROVIDER :: gtk_source_annotation_provider_get_type
TYPE_BUFFER :: gtk_source_buffer_get_type
TYPE_COMPLETION :: gtk_source_completion_get_type
TYPE_COMPLETION_CELL :: gtk_source_completion_cell_get_type
TYPE_COMPLETION_CONTEXT :: gtk_source_completion_context_get_type
TYPE_COMPLETION_PROPOSAL :: gtk_source_completion_proposal_get_type
TYPE_COMPLETION_PROVIDER :: gtk_source_completion_provider_get_type
TYPE_ENCODING :: gtk_source_encoding_get_type 
TYPE_FILE :: gtk_source_file_get_type
TYPE_FILE_LOADER :: gtk_source_file_loader_get_type
FILE_LOADER_ERROR :: `(gtk_source_file_loader_error_quark())`
TYPE_FILE_SAVER :: gtk_source_file_saver_get_type
FILE_SAVER_ERROR :: `(gtk_source_file_saver_error_quark())`
TYPE_GUTTER :: gtk_source_gutter_get_type
TYPE_GUTTER_RENDERER :: gtk_source_gutter_renderer_get_type
TYPE_GUTTER_RENDERER_TEXT :: gtk_source_gutter_renderer_text_get_type
TYPE_GUTTER_RENDERER_PIXBUF :: gtk_source_gutter_renderer_pixbuf_get_type
TYPE_HOVER :: gtk_source_hover_get_type
TYPE_HOVER_CONTEXT :: gtk_source_hover_context_get_type
TYPE_HOVER_DISPLAY :: gtk_source_hover_display_get_type
TYPE_HOVER_PROVIDER :: gtk_source_hover_provider_get_type
TYPE_INDENTER :: gtk_source_indenter_get_type
TYPE_LANGUAGE :: gtk_source_language_get_type
TYPE_LANGUAGE_MANAGER :: gtk_source_language_manager_get_type
TYPE_GUTTER_LINES :: gtk_source_gutter_lines_get_type
TYPE_VIEW :: gtk_source_view_get_type
TYPE_MAP :: gtk_source_map_get_type
TYPE_MARK :: gtk_source_mark_get_type
TYPE_MARK_ATTRIBUTES :: gtk_source_mark_attributes_get_type
TYPE_PRINT_COMPOSITOR :: gtk_source_print_compositor_get_type
TYPE_REGION :: gtk_source_region_get_type 
TYPE_SEARCH_CONTEXT :: gtk_source_search_context_get_type
TYPE_SEARCH_SETTINGS :: gtk_source_search_settings_get_type
TYPE_SNIPPET :: gtk_source_snippet_get_type
TYPE_SNIPPET_CHUNK :: gtk_source_snippet_chunk_get_type
TYPE_SNIPPET_CONTEXT :: gtk_source_snippet_context_get_type
TYPE_SNIPPET_MANAGER :: gtk_source_snippet_manager_get_type
TYPE_SPACE_DRAWER :: gtk_source_space_drawer_get_type
TYPE_STYLE :: gtk_source_style_get_type 
TYPE_STYLE_SCHEME :: gtk_source_style_scheme_get_type
TYPE_STYLE_SCHEME_CHOOSER :: gtk_source_style_scheme_chooser_get_type
TYPE_STYLE_SCHEME_CHOOSER_BUTTON :: gtk_source_style_scheme_chooser_button_get_type
TYPE_STYLE_SCHEME_CHOOSER_WIDGET :: gtk_source_style_scheme_chooser_widget_get_type
TYPE_STYLE_SCHEME_MANAGER :: gtk_source_style_scheme_manager_get_type
TYPE_STYLE_SCHEME_PREVIEW :: gtk_source_style_scheme_preview_get_type
TYPE_TAG :: gtk_source_tag_get_type
TYPE_VIM_IM_CONTEXT :: gtk_source_vim_im_context_get_type
TYPE_COMPLETION_WORDS :: gtk_source_completion_words_get_type
TYPE_COMPLETION_SNIPPETS :: gtk_source_completion_snippets_get_type

pthread_mutex_t :: i32
hb_feature_t :: rawptr
hb_font_t :: rawptr
guint16 :: u16
guint8 :: u8
gint32 :: i32
gint16 :: i16
FILE :: f64
gssize :: i64
GCacheNewFunc :: #type proc "c" (key: glib.gpointer) -> glib.gpointer
GCacheDupFunc :: #type proc "c" (value: glib.gpointer) -> glib.gpointer
GCacheDestroyFunc :: #type proc "c" (value: glib.gpointer)
GCompletionFunc :: #type proc "c" (item: glib.gpointer) -> ^glib.gchar
GCompletionStrncmpFunc :: #type proc "c" (s1: ^glib.gchar, s2: ^glib.gchar, n: glib.gsize) -> glib.gint
_GCompletion :: struct {
    items: [^]glib.GList,
    func: GCompletionFunc,
    prefix: ^glib.gchar,
    cache: ^glib.GList,
    strncmp_func: GCompletionStrncmpFunc,
}
_GTuples :: struct {
    len: glib.guint,
}
GThreadPriority :: enum u32 {G_THREAD_PRIORITY_LOW = 0, G_THREAD_PRIORITY_NORMAL = 1, G_THREAD_PRIORITY_HIGH = 2, G_THREAD_PRIORITY_URGENT = 3 }
_GThread :: struct {
    func: glib.GThreadFunc,
    data: glib.gpointer,
    joinable: glib.gboolean,
    priority: GThreadPriority,
}
mutex_new_func_ptr_anon_0 :: #type proc "c" () -> ^glib.GMutex
mutex_lock_func_ptr_anon_1 :: #type proc "c" (mutex: ^glib.GMutex)
mutex_trylock_func_ptr_anon_2 :: #type proc "c" (mutex: ^glib.GMutex) -> glib.gboolean
mutex_unlock_func_ptr_anon_3 :: #type proc "c" (mutex: ^glib.GMutex)
mutex_free_func_ptr_anon_4 :: #type proc "c" (mutex: ^glib.GMutex)
cond_new_func_ptr_anon_5 :: #type proc "c" () -> ^glib.GCond
cond_signal_func_ptr_anon_6 :: #type proc "c" (cond: ^glib.GCond)
cond_broadcast_func_ptr_anon_7 :: #type proc "c" (cond: ^glib.GCond)
cond_wait_func_ptr_anon_8 :: #type proc "c" (cond: ^glib.GCond, mutex: ^glib.GMutex)
cond_timed_wait_func_ptr_anon_9 :: #type proc "c" (cond: ^glib.GCond, mutex: ^glib.GMutex, end_time: ^glib.GTimeVal) -> glib.gboolean
cond_free_func_ptr_anon_10 :: #type proc "c" (cond: ^glib.GCond)
private_new_func_ptr_anon_11 :: #type proc "c" (destructor: glib.GDestroyNotify) -> ^glib.GPrivate
private_get_func_ptr_anon_12 :: #type proc "c" (private_key: ^glib.GPrivate) -> glib.gpointer
private_set_func_ptr_anon_13 :: #type proc "c" (private_key: ^glib.GPrivate, data: glib.gpointer)
thread_create_func_ptr_anon_14 :: #type proc "c" (func: glib.GThreadFunc, data: glib.gpointer, stack_size: glib.gulong, joinable: glib.gboolean, bound: glib.gboolean, priority: GThreadPriority, thread: glib.gpointer, error: ^^glib.GError)
thread_yield_func_ptr_anon_15 :: #type proc "c" ()
thread_join_func_ptr_anon_16 :: #type proc "c" (thread: glib.gpointer)
thread_exit_func_ptr_anon_17 :: #type proc "c" ()
thread_set_priority_func_ptr_anon_18 :: #type proc "c" (thread: glib.gpointer, priority: GThreadPriority)
thread_self_func_ptr_anon_19 :: #type proc "c" (thread: glib.gpointer)
thread_equal_func_ptr_anon_20 :: #type proc "c" (thread1: glib.gpointer, thread2: glib.gpointer) -> glib.gboolean
_GThreadFunctions :: struct {
    mutex_new: mutex_new_func_ptr_anon_0,
    mutex_lock: mutex_lock_func_ptr_anon_1,
    mutex_trylock: mutex_trylock_func_ptr_anon_2,
    mutex_unlock: mutex_unlock_func_ptr_anon_3,
    mutex_free: mutex_free_func_ptr_anon_4,
    cond_new: cond_new_func_ptr_anon_5,
    cond_signal: cond_signal_func_ptr_anon_6,
    cond_broadcast: cond_broadcast_func_ptr_anon_7,
    cond_wait: cond_wait_func_ptr_anon_8,
    cond_timed_wait: cond_timed_wait_func_ptr_anon_9,
    cond_free: cond_free_func_ptr_anon_10,
    private_new: private_new_func_ptr_anon_11,
    private_get: private_get_func_ptr_anon_12,
    private_set: private_set_func_ptr_anon_13,
    thread_create: thread_create_func_ptr_anon_14,
    thread_yield: thread_yield_func_ptr_anon_15,
    thread_join: thread_join_func_ptr_anon_16,
    thread_exit: thread_exit_func_ptr_anon_17,
    thread_set_priority: thread_set_priority_func_ptr_anon_18,
    thread_self: thread_self_func_ptr_anon_19,
    thread_equal: thread_equal_func_ptr_anon_20,
}
_GStaticRWLock :: struct {
    mutex: GStaticMutex,
    read_cond: ^glib.GCond,
    write_cond: ^glib.GCond,
    read_counter: glib.guint,
    have_writer: glib.gboolean,
    want_to_read: glib.guint,
    want_to_write: glib.guint,
}
_GStaticPrivate :: struct {
    index: glib.guint,
}
GtkCssParserError :: enum u32 {GTK_CSS_PARSER_ERROR_FAILED = 0, GTK_CSS_PARSER_ERROR_SYNTAX = 1, GTK_CSS_PARSER_ERROR_IMPORT = 2, GTK_CSS_PARSER_ERROR_NAME = 3, GTK_CSS_PARSER_ERROR_UNKNOWN_VALUE = 4 }
GtkCssParserWarning :: enum u32 {GTK_CSS_PARSER_WARNING_DEPRECATED = 0, GTK_CSS_PARSER_WARNING_SYNTAX = 1, GTK_CSS_PARSER_WARNING_UNIMPLEMENTED = 2 }
_GtkCssLocation :: struct {
    bytes: glib.gsize,
    chars: glib.gsize,
    lines: glib.gsize,
    line_bytes: glib.gsize,
    line_chars: glib.gsize,
}
GtkDialogFlags :: enum u32 {GTK_DIALOG_MODAL = 1, GTK_DIALOG_DESTROY_WITH_PARENT = 2, GTK_DIALOG_USE_HEADER_BAR = 4 }
GtkResponseType :: enum i32 {GTK_RESPONSE_NONE = -1, GTK_RESPONSE_REJECT = -2, GTK_RESPONSE_ACCEPT = -3, GTK_RESPONSE_DELETE_EVENT = -4, GTK_RESPONSE_OK = -5, GTK_RESPONSE_CANCEL = -6, GTK_RESPONSE_CLOSE = -7, GTK_RESPONSE_YES = -8, GTK_RESPONSE_NO = -9, GTK_RESPONSE_APPLY = -10, GTK_RESPONSE_HELP = -11 }
GtkShortcutType :: enum u32 {GTK_SHORTCUT_ACCELERATOR = 0, GTK_SHORTCUT_GESTURE_PINCH = 1, GTK_SHORTCUT_GESTURE_STRETCH = 2, GTK_SHORTCUT_GESTURE_ROTATE_CLOCKWISE = 3, GTK_SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE = 4, GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT = 5, GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT = 6, GTK_SHORTCUT_GESTURE = 7, GTK_SHORTCUT_GESTURE_SWIPE_LEFT = 8, GTK_SHORTCUT_GESTURE_SWIPE_RIGHT = 9 }
GtkAssistantPageType :: enum u32 {GTK_ASSISTANT_PAGE_CONTENT = 0, GTK_ASSISTANT_PAGE_INTRO = 1, GTK_ASSISTANT_PAGE_CONFIRM = 2, GTK_ASSISTANT_PAGE_SUMMARY = 3, GTK_ASSISTANT_PAGE_PROGRESS = 4, GTK_ASSISTANT_PAGE_CUSTOM = 5 }
GtkAssistantPageFunc :: #type proc "c" (current_page: i32, data: glib.gpointer) -> i32
GtkCellRendererState :: enum u32 {GTK_CELL_RENDERER_SELECTED = 1, GTK_CELL_RENDERER_PRELIT = 2, GTK_CELL_RENDERER_INSENSITIVE = 4, GTK_CELL_RENDERER_SORTED = 8, GTK_CELL_RENDERER_FOCUSED = 16, GTK_CELL_RENDERER_EXPANDABLE = 32, GTK_CELL_RENDERER_EXPANDED = 64 }
GtkCellRendererMode :: enum u32 {GTK_CELL_RENDERER_MODE_INERT = 0, GTK_CELL_RENDERER_MODE_ACTIVATABLE = 1, GTK_CELL_RENDERER_MODE_EDITABLE = 2 }
_GtkCellRenderer :: struct {
    parent_instance: gobj.GInitiallyUnowned,
    priv: ^GtkCellRendererPrivate,
}
GtkTreeModelForeachFunc :: #type proc "c" (model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter, data: glib.gpointer) -> glib.gboolean
GtkTreeModelFlags :: enum u32 {GTK_TREE_MODEL_ITERS_PERSIST = 1, GTK_TREE_MODEL_LIST_ONLY = 2 }
_GtkTreeIter :: struct {
    stamp: i32,
    user_data: glib.gpointer,
    user_data2: glib.gpointer,
    user_data3: glib.gpointer,
}
GtkCellCallback :: #type proc "c" (renderer: ^GtkCellRenderer, data: glib.gpointer) -> glib.gboolean
_GtkCellArea :: struct {
    parent_instance: gobj.GInitiallyUnowned,
}
_GtkCellAreaContext :: struct {
    parent_instance: gobj.GObject,
}
GtkCellLayoutDataFunc :: #type proc "c" (cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, data: glib.gpointer)
_GtkCellRendererText :: struct {
    parent: GtkCellRenderer,
}
GtkCellRendererAccelMode :: enum u32 {GTK_CELL_RENDERER_ACCEL_MODE_GTK = 0, GTK_CELL_RENDERER_ACCEL_MODE_OTHER = 1 }
GtkTreeIterCompareFunc :: #type proc "c" (model: ^GtkTreeModel, a: ^GtkTreeIter, b: ^GtkTreeIter, user_data: glib.gpointer) -> i32
GtkTreeViewColumnSizing :: enum u32 {GTK_TREE_VIEW_COLUMN_GROW_ONLY = 0, GTK_TREE_VIEW_COLUMN_AUTOSIZE = 1, GTK_TREE_VIEW_COLUMN_FIXED = 2 }
GtkTreeCellDataFunc :: #type proc "c" (tree_column: ^GtkTreeViewColumn, cell: ^GtkCellRenderer, tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, data: glib.gpointer)
_GtkListStore :: struct {
    parent: gobj.GObject,
    priv: ^GtkListStorePrivate,
}
_GtkListStoreClass :: struct {
    parent_class: gobj.GObjectClass,
    padding: [8]glib.gpointer,
}
GtkTreeModelFilterVisibleFunc :: #type proc "c" (model: ^GtkTreeModel, iter: ^GtkTreeIter, data: glib.gpointer) -> glib.gboolean
GtkTreeModelFilterModifyFunc :: #type proc "c" (model: ^GtkTreeModel, iter: ^GtkTreeIter, value: ^gobj.GValue, column: i32, data: glib.gpointer)
_GtkTreeModelFilter :: struct {
    parent: gobj.GObject,
    priv: ^GtkTreeModelFilterPrivate,
}
GtkEntryCompletionMatchFunc :: #type proc "c" (completion: ^GtkEntryCompletion, key: cstring, iter: ^GtkTreeIter, user_data: glib.gpointer) -> glib.gboolean
GtkTreeViewDropPosition :: enum u32 {GTK_TREE_VIEW_DROP_BEFORE = 0, GTK_TREE_VIEW_DROP_AFTER = 1, GTK_TREE_VIEW_DROP_INTO_OR_BEFORE = 2, GTK_TREE_VIEW_DROP_INTO_OR_AFTER = 3 }
GtkTreeViewColumnDropFunc :: #type proc "c" (tree_view: ^GtkTreeView, column: ^GtkTreeViewColumn, prev_column: ^GtkTreeViewColumn, next_column: ^GtkTreeViewColumn, data: glib.gpointer) -> glib.gboolean
GtkTreeViewMappingFunc :: #type proc "c" (tree_view: ^GtkTreeView, path: ^GtkTreePath, user_data: glib.gpointer)
GtkTreeViewSearchEqualFunc :: #type proc "c" (model: ^GtkTreeModel, column: i32, key: cstring, iter: ^GtkTreeIter, search_data: glib.gpointer) -> glib.gboolean
GtkTreeViewRowSeparatorFunc :: #type proc "c" (model: ^GtkTreeModel, iter: ^GtkTreeIter, data: glib.gpointer) -> glib.gboolean
GtkFileChooserAction :: enum u32 {GTK_FILE_CHOOSER_ACTION_OPEN = 0, GTK_FILE_CHOOSER_ACTION_SAVE = 1, GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER = 2 }
GtkFileChooserError :: enum u32 {GTK_FILE_CHOOSER_ERROR_NONEXISTENT = 0, GTK_FILE_CHOOSER_ERROR_BAD_FILENAME = 1, GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS = 2, GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME = 3 }
GtkFontChooserLevel :: enum u32 {GTK_FONT_CHOOSER_LEVEL_FAMILY = 0, GTK_FONT_CHOOSER_LEVEL_STYLE = 1, GTK_FONT_CHOOSER_LEVEL_SIZE = 2, GTK_FONT_CHOOSER_LEVEL_VARIATIONS = 4, GTK_FONT_CHOOSER_LEVEL_FEATURES = 8 }
GtkIconViewForeachFunc :: #type proc "c" (icon_view: ^GtkIconView, path: ^GtkTreePath, data: glib.gpointer)
GtkIconViewDropPosition :: enum u32 {GTK_ICON_VIEW_NO_DROP = 0, GTK_ICON_VIEW_DROP_INTO = 1, GTK_ICON_VIEW_DROP_LEFT = 2, GTK_ICON_VIEW_DROP_RIGHT = 3, GTK_ICON_VIEW_DROP_ABOVE = 4, GTK_ICON_VIEW_DROP_BELOW = 5 }
_GtkMessageDialog :: struct {
    parent_instance: GtkDialog,
}
GtkButtonsType :: enum u32 {GTK_BUTTONS_NONE = 0, GTK_BUTTONS_OK = 1, GTK_BUTTONS_CLOSE = 2, GTK_BUTTONS_CANCEL = 3, GTK_BUTTONS_YES_NO = 4, GTK_BUTTONS_OK_CANCEL = 5 }
GtkPrintSettingsFunc :: #type proc "c" (key: cstring, value: cstring, user_data: glib.gpointer)
_GtkPageRange :: struct {
    start: i32,
    end: i32,
}
GtkPrintStatus :: enum u32 {GTK_PRINT_STATUS_INITIAL = 0, GTK_PRINT_STATUS_PREPARING = 1, GTK_PRINT_STATUS_GENERATING_DATA = 2, GTK_PRINT_STATUS_SENDING_DATA = 3, GTK_PRINT_STATUS_PENDING = 4, GTK_PRINT_STATUS_PENDING_ISSUE = 5, GTK_PRINT_STATUS_PRINTING = 6, GTK_PRINT_STATUS_FINISHED = 7, GTK_PRINT_STATUS_FINISHED_ABORTED = 8 }
GtkPrintOperationResult :: enum u32 {GTK_PRINT_OPERATION_RESULT_ERROR = 0, GTK_PRINT_OPERATION_RESULT_APPLY = 1, GTK_PRINT_OPERATION_RESULT_CANCEL = 2, GTK_PRINT_OPERATION_RESULT_IN_PROGRESS = 3 }
GtkPrintOperationAction :: enum u32 {GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG = 0, GTK_PRINT_OPERATION_ACTION_PRINT = 1, GTK_PRINT_OPERATION_ACTION_PREVIEW = 2, GTK_PRINT_OPERATION_ACTION_EXPORT = 3 }
_GtkPrintOperation :: struct {
    parent_instance: gobj.GObject,
    priv: ^GtkPrintOperationPrivate,
}
GtkPrintError :: enum u32 {GTK_PRINT_ERROR_GENERAL = 0, GTK_PRINT_ERROR_INTERNAL_ERROR = 1, GTK_PRINT_ERROR_NOMEM = 2, GTK_PRINT_ERROR_INVALID_FILE = 3 }
GtkPageSetupDoneFunc :: #type proc "c" (page_setup: ^GtkPageSetup, data: glib.gpointer)
_GtkStyleContext :: struct {
    parent_object: gobj.GObject,
}
GtkStyleContextPrintFlags :: enum u32 {GTK_STYLE_CONTEXT_PRINT_NONE = 0, GTK_STYLE_CONTEXT_PRINT_RECURSE = 1, GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE = 2, GTK_STYLE_CONTEXT_PRINT_SHOW_CHANGE = 4 }
_GtkTreeModelSort :: struct {
    parent: gobj.GObject,
    priv: ^GtkTreeModelSortPrivate,
}
_GtkTreeModelSortClass :: struct {
    parent_class: gobj.GObjectClass,
    padding: [8]glib.gpointer,
}
GtkTreeSelectionFunc :: #type proc "c" (selection: ^GtkTreeSelection, model: ^GtkTreeModel, path: ^GtkTreePath, path_currently_selected: glib.gboolean, data: glib.gpointer) -> glib.gboolean
GtkTreeSelectionForeachFunc :: #type proc "c" (model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter, data: glib.gpointer)
_GtkTreeStore :: struct {
    parent: gobj.GObject,
    priv: ^GtkTreeStorePrivate,
}
_GtkTreeStoreClass :: struct {
    parent_class: gobj.GObjectClass,
    padding: [8]glib.gpointer,
}
AnnotationStyle :: enum u32 {ANNOTATION_STYLE_NONE = 0, ANNOTATION_STYLE_WARNING = 1, ANNOTATION_STYLE_ERROR = 2, ANNOTATION_STYLE_ACCENT = 3 }
AnnotationClass :: struct {
    parent_class: gobj.GObjectClass,
}
AnnotationsClass :: struct {
    parent_class: gobj.GObjectClass,
}
AnnotationProvider :: struct {
    parent_instance: gobj.GObject,
}
BracketMatchType :: enum u32 {BRACKET_MATCH_NONE = 0, BRACKET_MATCH_OUT_OF_RANGE = 1, BRACKET_MATCH_NOT_FOUND = 2, BRACKET_MATCH_FOUND = 3 }
ChangeCaseType :: enum u32 {CHANGE_CASE_LOWER = 0, CHANGE_CASE_UPPER = 1, CHANGE_CASE_TOGGLE = 2, CHANGE_CASE_TITLE = 3 }
SortFlags :: enum u32 {SORT_FLAGS_NONE = 0, SORT_FLAGS_CASE_SENSITIVE = 1, SORT_FLAGS_REVERSE_ORDER = 2, SORT_FLAGS_REMOVE_DUPLICATES = 4, SORT_FLAGS_FILENAME = 8 }
CompletionClass :: struct {
    parent_class: gobj.GObjectClass,
}
CompletionColumn :: enum u32 {COMPLETION_COLUMN_ICON = 0, COMPLETION_COLUMN_BEFORE = 1, COMPLETION_COLUMN_TYPED_TEXT = 2, COMPLETION_COLUMN_AFTER = 3, COMPLETION_COLUMN_COMMENT = 4, COMPLETION_COLUMN_DETAILS = 5 }
CompletionActivation :: enum u32 {COMPLETION_ACTIVATION_NONE = 0, COMPLETION_ACTIVATION_INTERACTIVE = 1, COMPLETION_ACTIVATION_USER_REQUESTED = 2 }
CompletionContextClass :: struct {
    parent_class: gobj.GObjectClass,
}
NewlineType :: enum u32 {NEWLINE_TYPE_LF = 0, NEWLINE_TYPE_CR = 1, NEWLINE_TYPE_CR_LF = 2 }
CompressionType :: enum u32 {COMPRESSION_TYPE_NONE = 0, COMPRESSION_TYPE_GZIP = 1 }
MountOperationFactory :: #type proc "c" (file: ^File, userdata: glib.gpointer) -> ^gio.GMountOperation
File :: struct {
    parent_instance: gobj.GObject,
}
FileClass :: struct {
    parent_class: gobj.GObjectClass,
    _reserved: [10]glib.gpointer,
}
FileLoaderError :: enum u32 {FILE_LOADER_ERROR_TOO_BIG = 0, FILE_LOADER_ERROR_ENCODING_AUTO_DETECTION_FAILED = 1, FILE_LOADER_ERROR_CONVERSION_FALLBACK = 2 }
FileLoaderClass :: struct {
    parent_class: gobj.GObjectClass,
}
FileSaverError :: enum u32 {FILE_SAVER_ERROR_INVALID_CHARS = 0, FILE_SAVER_ERROR_EXTERNALLY_MODIFIED = 1 }
FileSaverFlags :: enum u32 {FILE_SAVER_FLAGS_NONE = 0, FILE_SAVER_FLAGS_IGNORE_INVALID_CHARS = 1, FILE_SAVER_FLAGS_IGNORE_MODIFICATION_TIME = 2, FILE_SAVER_FLAGS_CREATE_BACKUP = 4 }
FileSaverClass :: struct {
    parent_class: gobj.GObjectClass,
}
GutterRendererAlignmentMode :: enum u32 {GUTTER_RENDERER_ALIGNMENT_MODE_CELL = 0, GUTTER_RENDERER_ALIGNMENT_MODE_FIRST = 1, GUTTER_RENDERER_ALIGNMENT_MODE_LAST = 2 }
GutterRendererTextClass :: struct {
    parent_class: GutterRendererClass,
    _reserved: [10]glib.gpointer,
}
GutterRendererText :: struct {
    parent_instance: GutterRenderer,
}
GutterRendererPixbuf :: struct {
    parent_instance: GutterRenderer,
}
GutterRendererPixbufClass :: struct {
    parent_class: GutterRendererClass,
    _reserved: [10]glib.gpointer,
}
HoverClass :: struct {
    parent_class: gobj.GObjectClass,
}
HoverContextClass :: struct {
    parent_class: gobj.GObjectClass,
}
LanguageClass :: struct {
    parent_class: gobj.GObjectClass,
}
LanguageManagerClass :: struct {
    parent_class: gobj.GObjectClass,
}
GutterLinesClass :: struct {
    parent_class: gobj.GObjectClass,
}
ViewGutterPosition :: enum i32 {VIEW_GUTTER_POSITION_LINES = -30, VIEW_GUTTER_POSITION_MARKS = -20 }
SmartHomeEndType :: enum u32 {SMART_HOME_END_DISABLED = 0, SMART_HOME_END_BEFORE = 1, SMART_HOME_END_AFTER = 2, SMART_HOME_END_ALWAYS = 3 }
BackgroundPatternType :: enum u32 {BACKGROUND_PATTERN_TYPE_NONE = 0, BACKGROUND_PATTERN_TYPE_GRID = 1 }
Map :: struct {
    parent_instance: View,
}
MapClass :: struct {
    parent_class: ViewClass,
    _reserved: [10]glib.gpointer,
}
MarkAttributesClass :: struct {
    parent_class: gobj.GObjectClass,
}
PrintCompositor :: struct {
    parent_instance: gobj.GObject,
}
PrintCompositorClass :: struct {
    parent_class: gobj.GObjectClass,
    _reserved: [10]glib.gpointer,
}
Region :: struct {
    parent_instance: gobj.GObject,
}
RegionClass :: struct {
    parent_class: gobj.GObjectClass,
    _reserved: [10]glib.gpointer,
}
RegionIter :: struct {
    dummy1: glib.gpointer,
    dummy2: glib.guint32,
    dummy3: glib.gpointer,
}
SchedulerCallback :: #type proc "c" (deadline: glib.gint64, user_data: glib.gpointer) -> glib.gboolean
SearchContextClass :: struct {
    parent_class: gobj.GObjectClass,
}
SearchSettings :: struct {
    parent_instance: gobj.GObject,
}
SearchSettingsClass :: struct {
    parent_class: gobj.GObjectClass,
    _reserved: [10]glib.gpointer,
}
SnippetClass :: struct {
    parent_class: gobj.GObjectClass,
}
SnippetChunkClass :: struct {
    parent_class: gobj.GInitiallyUnownedClass,
}
SnippetContextClass :: struct {
    parent_class: gobj.GObjectClass,
}
SnippetManagerClass :: struct {
    parent_class: gobj.GObjectClass,
}
SpaceTypeFlags :: enum u32 {SPACE_TYPE_NONE = 0, SPACE_TYPE_SPACE = 1, SPACE_TYPE_TAB = 2, SPACE_TYPE_NEWLINE = 4, SPACE_TYPE_NBSP = 8, SPACE_TYPE_ALL = 15 }
SpaceLocationFlags :: enum u32 {SPACE_LOCATION_NONE = 0, SPACE_LOCATION_LEADING = 1, SPACE_LOCATION_INSIDE_TEXT = 2, SPACE_LOCATION_TRAILING = 4, SPACE_LOCATION_ALL = 7 }
SpaceDrawerClass :: struct {
    parent_class: gobj.GObjectClass,
}
StyleClass :: struct {
    parent_class: gobj.GObjectClass,
}
StyleSchemeClass :: struct {
    parent_class: gobj.GObjectClass,
}
StyleSchemeManagerClass :: struct {
    parent_class: gobj.GObjectClass,
}
CompletionWordsClass :: struct {
    parent_class: gobj.GObjectClass,
    _reserved: [10]glib.gpointer,
}
CompletionWords :: struct {
    parent_instance: gobj.GObject,
}
CompletionSnippets :: struct {
    parent_instance: gobj.GObject,
}
CompletionSnippetsClass :: struct {
    parent_class: gobj.GObjectClass,
    _reserved: [10]glib.gpointer,
}
_GAllocator :: struct #packed {}
_GMemChunk :: struct #packed {}
_GCache :: struct #packed {}
_GRelation :: struct #packed {}
Annotation :: struct #packed {}
Annotations :: struct #packed {}
Completion :: struct #packed {}
CompletionCell :: struct #packed {}
CompletionContext :: struct #packed {}
CompletionProposal :: struct #packed {}
CompletionProvider :: struct #packed {}
Encoding :: struct #packed {}
FileLoader :: struct #packed {}
FileSaver :: struct #packed {}
Gutter :: struct #packed {}
GutterLines :: struct #packed {}
Hover :: struct #packed {}
HoverContext :: struct #packed {}
HoverDisplay :: struct #packed {}
HoverProvider :: struct #packed {}
VimIMContext :: struct #packed {}
Indenter :: struct #packed {}
Language :: struct #packed {}
LanguageManager :: struct #packed {}
MarkAttributes :: struct #packed {}
SearchContext :: struct #packed {}
Snippet :: struct #packed {}
SnippetChunk :: struct #packed {}
SnippetContext :: struct #packed {}
SnippetManager :: struct #packed {}
SpaceDrawer :: struct #packed {}
Style :: struct #packed {}
StyleSchemeChooser :: struct #packed {}
StyleScheme :: struct #packed {}
StyleSchemeManager :: struct #packed {}
StyleSchemePreview :: struct #packed {}
_GtkCssSection :: struct #packed {}
_GskVulkanRenderer :: struct #packed {}
_GskVulkanRendererClass :: struct #packed {}
_GskGLRenderer :: struct #packed {}
_GskGLRendererClass :: struct #packed {}
_GtkAppChooser :: struct #packed {}
_GtkAppChooserDialog :: struct #packed {}
_GtkAppChooserWidget :: struct #packed {}
_GtkAppChooserButton :: struct #packed {}
_GtkShortcutsShortcut :: struct #packed {}
_GtkShortcutsShortcutClass :: struct #packed {}
_GtkShortcutsGroup :: struct #packed {}
_GtkShortcutsGroupClass :: struct #packed {}
_GtkShortcutsSection :: struct #packed {}
_GtkShortcutsSectionClass :: struct #packed {}
_GtkShortcutsWindow :: struct #packed {}
_GtkAssistant :: struct #packed {}
_GtkAssistantPage :: struct #packed {}
_GtkCellEditable :: struct #packed {}
_GtkCellRendererPrivate :: struct #packed {}
_GtkCellRendererClassPrivate :: struct #packed {}
_GtkTreePath :: struct #packed {}
_GtkTreeRowReference :: struct #packed {}
_GtkTreeModel :: struct #packed {}
_GtkCellAreaBox :: struct #packed {}
_GtkCellAreaContextPrivate :: struct #packed {}
_GtkCellLayout :: struct #packed {}
_GtkCellRendererAccel :: struct #packed {}
_GtkCellRendererCombo :: struct #packed {}
_GtkCellRendererPixbuf :: struct #packed {}
_GtkCellRendererProgress :: struct #packed {}
_GtkCellRendererSpin :: struct #packed {}
_GtkCellRendererSpinner :: struct #packed {}
_GtkCellRendererToggle :: struct #packed {}
_GtkCellView :: struct #packed {}
_GtkColorButton :: struct #packed {}
_GtkColorChooser :: struct #packed {}
_GtkColorChooserDialog :: struct #packed {}
_GtkColorChooserWidget :: struct #packed {}
_GtkTreeSortable :: struct #packed {}
_GtkTreeViewColumn :: struct #packed {}
_GtkListStorePrivate :: struct #packed {}
_GtkTreeModelFilterPrivate :: struct #packed {}
_GtkEntryCompletion :: struct #packed {}
_GtkTreeSelection :: struct #packed {}
_GtkComboBoxText :: struct #packed {}
_GtkFileChooser :: struct #packed {}
_GtkFileChooserDialog :: struct #packed {}
_GtkFileChooserNative :: struct #packed {}
_GtkFileChooserWidget :: struct #packed {}
_GtkFontButton :: struct #packed {}
_GtkFontChooser :: struct #packed {}
_GtkFontChooserDialog :: struct #packed {}
_GtkFontChooserWidget :: struct #packed {}
_GtkIconView :: struct #packed {}
_GtkInfoBar :: struct #packed {}
_GtkLockButton :: struct #packed {}
_GtkMessageDialogClass :: struct #packed {}
_GtkPaperSize :: struct #packed {}
_GtkPageSetup :: struct #packed {}
_GtkPrintSettings :: struct #packed {}
_GtkPrintContext :: struct #packed {}
_GtkPrintOperationPreview :: struct #packed {}
_GtkPrintOperationPrivate :: struct #packed {}
_GtkShortcutLabel :: struct #packed {}
_GtkShortcutLabelClass :: struct #packed {}
_GtkStatusbar :: struct #packed {}
_GtkTreeDragSource :: struct #packed {}
_GtkTreeDragDest :: struct #packed {}
_GtkTreeModelSortPrivate :: struct #packed {}
_GtkTreeStorePrivate :: struct #packed {}

@(default_calling_convention = "c")
foreign gtksourceview_runic {
    @(link_name = "g_mem_chunk_new")
    g_mem_chunk_new :: proc(name: ^glib.gchar, atom_size: glib.gint, area_size: glib.gsize, type: glib.gint) -> ^GMemChunk ---

    @(link_name = "g_mem_chunk_destroy")
    g_mem_chunk_destroy :: proc(mem_chunk: ^GMemChunk) ---

    @(link_name = "g_mem_chunk_alloc")
    g_mem_chunk_alloc :: proc(mem_chunk: ^GMemChunk) -> glib.gpointer ---

    @(link_name = "g_mem_chunk_alloc0")
    g_mem_chunk_alloc0 :: proc(mem_chunk: ^GMemChunk) -> glib.gpointer ---

    @(link_name = "g_mem_chunk_free")
    g_mem_chunk_free :: proc(mem_chunk: ^GMemChunk, mem: glib.gpointer) ---

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
    g_allocator_new :: proc(name: ^glib.gchar, n_preallocs: glib.guint) -> ^GAllocator ---

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
    g_cache_new :: proc(value_new_func: GCacheNewFunc, value_destroy_func: GCacheDestroyFunc, key_dup_func: GCacheDupFunc, key_destroy_func: GCacheDestroyFunc, hash_key_func: glib.GHashFunc, hash_value_func: glib.GHashFunc, key_equal_func: glib.GEqualFunc) -> ^GCache ---

    @(link_name = "g_cache_destroy")
    g_cache_destroy :: proc(cache: ^GCache) ---

    @(link_name = "g_cache_insert")
    g_cache_insert :: proc(cache: ^GCache, key: glib.gpointer) -> glib.gpointer ---

    @(link_name = "g_cache_remove")
    g_cache_remove :: proc(cache: ^GCache, value: glib.gconstpointer) ---

    @(link_name = "g_cache_key_foreach")
    g_cache_key_foreach :: proc(cache: ^GCache, func: glib.GHFunc, user_data: glib.gpointer) ---

    @(link_name = "g_cache_value_foreach")
    g_cache_value_foreach :: proc(cache: ^GCache, func: glib.GHFunc, user_data: glib.gpointer) ---

    @(link_name = "g_completion_new")
    g_completion_new :: proc(func: GCompletionFunc) -> ^GCompletion ---

    @(link_name = "g_completion_add_items")
    g_completion_add_items :: proc(cmp: ^GCompletion, items: [^]glib.GList) ---

    @(link_name = "g_completion_remove_items")
    g_completion_remove_items :: proc(cmp: ^GCompletion, items: [^]glib.GList) ---

    @(link_name = "g_completion_clear_items")
    g_completion_clear_items :: proc(cmp: ^GCompletion) ---

    @(link_name = "g_completion_complete")
    g_completion_complete :: proc(cmp: ^GCompletion, prefix: ^glib.gchar, new_prefix: ^^glib.gchar) -> ^glib.GList ---

    @(link_name = "g_completion_complete_utf8")
    g_completion_complete_utf8 :: proc(cmp: ^GCompletion, prefix: ^glib.gchar, new_prefix: ^^glib.gchar) -> ^glib.GList ---

    @(link_name = "g_completion_set_compare")
    g_completion_set_compare :: proc(cmp: ^GCompletion, strncmp_func: GCompletionStrncmpFunc) ---

    @(link_name = "g_completion_free")
    g_completion_free :: proc(cmp: ^GCompletion) ---

    @(link_name = "g_relation_new")
    g_relation_new :: proc(fields: glib.gint) -> ^GRelation ---

    @(link_name = "g_relation_destroy")
    g_relation_destroy :: proc(relation: ^GRelation) ---

    @(link_name = "g_relation_index")
    g_relation_index :: proc(relation: ^GRelation, field: glib.gint, hash_func: glib.GHashFunc, key_equal_func: glib.GEqualFunc) ---

    @(link_name = "g_relation_insert")
    g_relation_insert :: proc(relation: ^GRelation, #c_vararg var_args: ..any) ---

    @(link_name = "g_relation_delete")
    g_relation_delete :: proc(relation: ^GRelation, key: glib.gconstpointer, field: glib.gint) -> glib.gint ---

    @(link_name = "g_relation_select")
    g_relation_select :: proc(relation: ^GRelation, key: glib.gconstpointer, field: glib.gint) -> ^GTuples ---

    @(link_name = "g_relation_count")
    g_relation_count :: proc(relation: ^GRelation, key: glib.gconstpointer, field: glib.gint) -> glib.gint ---

    @(link_name = "g_relation_exists")
    g_relation_exists :: proc(relation: ^GRelation, #c_vararg var_args: ..any) -> glib.gboolean ---

    @(link_name = "g_relation_print")
    g_relation_print :: proc(relation: ^GRelation) ---

    @(link_name = "g_tuples_destroy")
    g_tuples_destroy :: proc(tuples: [^]GTuples) ---

    @(link_name = "g_tuples_index")
    g_tuples_index :: proc(tuples: [^]GTuples, index_: glib.gint, field: glib.gint) -> glib.gpointer ---

    @(link_name = "g_thread_functions_for_glib_use")
    g_thread_functions_for_glib_use: GThreadFunctions

    @(link_name = "g_thread_use_default_impl")
    g_thread_use_default_impl: glib.gboolean

    @(link_name = "g_thread_gettime")
    g_thread_gettime: #type proc "c" () -> glib.guint64

    @(link_name = "g_thread_create")
    g_thread_create :: proc(func: glib.GThreadFunc, data: glib.gpointer, joinable: glib.gboolean, error: ^^glib.GError) -> ^glib.GThread ---

    @(link_name = "g_thread_create_full")
    g_thread_create_full :: proc(func: glib.GThreadFunc, data: glib.gpointer, stack_size: glib.gulong, joinable: glib.gboolean, bound: glib.gboolean, priority: GThreadPriority, error: ^^glib.GError) -> ^glib.GThread ---

    @(link_name = "g_thread_set_priority")
    g_thread_set_priority :: proc(thread: ^glib.GThread, priority: GThreadPriority) ---

    @(link_name = "g_thread_foreach")
    g_thread_foreach :: proc(thread_func: glib.GFunc, user_data: glib.gpointer) ---

    @(link_name = "g_static_mutex_init")
    g_static_mutex_init :: proc(mutex: ^GStaticMutex) ---

    @(link_name = "g_static_mutex_free")
    g_static_mutex_free :: proc(mutex: ^GStaticMutex) ---

    @(link_name = "g_static_mutex_get_mutex_impl")
    g_static_mutex_get_mutex_impl :: proc(mutex: ^GStaticMutex) -> ^glib.GMutex ---

    @(link_name = "g_static_rec_mutex_init")
    g_static_rec_mutex_init :: proc(mutex: ^GStaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_lock")
    g_static_rec_mutex_lock :: proc(mutex: ^GStaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_trylock")
    g_static_rec_mutex_trylock :: proc(mutex: ^GStaticRecMutex) -> glib.gboolean ---

    @(link_name = "g_static_rec_mutex_unlock")
    g_static_rec_mutex_unlock :: proc(mutex: ^GStaticRecMutex) ---

    @(link_name = "g_static_rec_mutex_lock_full")
    g_static_rec_mutex_lock_full :: proc(mutex: ^GStaticRecMutex, depth: glib.guint) ---

    @(link_name = "g_static_rec_mutex_unlock_full")
    g_static_rec_mutex_unlock_full :: proc(mutex: ^GStaticRecMutex) -> glib.guint ---

    @(link_name = "g_static_rec_mutex_free")
    g_static_rec_mutex_free :: proc(mutex: ^GStaticRecMutex) ---

    @(link_name = "g_static_rw_lock_init")
    g_static_rw_lock_init :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_reader_lock")
    g_static_rw_lock_reader_lock :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_reader_trylock")
    g_static_rw_lock_reader_trylock :: proc(lock: ^GStaticRWLock) -> glib.gboolean ---

    @(link_name = "g_static_rw_lock_reader_unlock")
    g_static_rw_lock_reader_unlock :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_writer_lock")
    g_static_rw_lock_writer_lock :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_writer_trylock")
    g_static_rw_lock_writer_trylock :: proc(lock: ^GStaticRWLock) -> glib.gboolean ---

    @(link_name = "g_static_rw_lock_writer_unlock")
    g_static_rw_lock_writer_unlock :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_static_rw_lock_free")
    g_static_rw_lock_free :: proc(lock: ^GStaticRWLock) ---

    @(link_name = "g_private_new")
    g_private_new :: proc(notify: glib.GDestroyNotify) -> ^glib.GPrivate ---

    @(link_name = "g_static_private_init")
    g_static_private_init :: proc(private_key: ^GStaticPrivate) ---

    @(link_name = "g_static_private_get")
    g_static_private_get :: proc(private_key: ^GStaticPrivate) -> glib.gpointer ---

    @(link_name = "g_static_private_set")
    g_static_private_set :: proc(private_key: ^GStaticPrivate, data: glib.gpointer, notify: glib.GDestroyNotify) ---

    @(link_name = "g_static_private_free")
    g_static_private_free :: proc(private_key: ^GStaticPrivate) ---

    @(link_name = "g_once_init_enter_impl")
    g_once_init_enter_impl :: proc(location: ^glib.gsize) -> glib.gboolean ---

    @(link_name = "g_thread_init")
    g_thread_init :: proc(vtable: glib.gpointer) ---

    @(link_name = "g_thread_init_with_errorcheck_mutexes")
    g_thread_init_with_errorcheck_mutexes :: proc(vtable: glib.gpointer) ---

    @(link_name = "g_thread_get_initialized")
    g_thread_get_initialized :: proc() -> glib.gboolean ---

    @(link_name = "g_threads_got_initialized")
    g_threads_got_initialized: glib.gboolean

    @(link_name = "g_mutex_new")
    g_mutex_new :: proc() -> ^glib.GMutex ---

    @(link_name = "g_mutex_free")
    g_mutex_free :: proc(mutex: ^glib.GMutex) ---

    @(link_name = "g_cond_new")
    g_cond_new :: proc() -> ^glib.GCond ---

    @(link_name = "g_cond_free")
    g_cond_free :: proc(cond: ^glib.GCond) ---

    @(link_name = "g_cond_timed_wait")
    g_cond_timed_wait :: proc(cond: ^glib.GCond, mutex: ^glib.GMutex, abs_time: ^glib.GTimeVal) -> glib.gboolean ---

    @(link_name = "gtk_css_parser_error_get_type")
    gtk_css_parser_error_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_css_parser_warning_get_type")
    gtk_css_parser_warning_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_css_parser_error_quark")
    gtk_css_parser_error_quark :: proc() -> glib.GQuark ---

    @(link_name = "gtk_css_parser_warning_quark")
    gtk_css_parser_warning_quark :: proc() -> glib.GQuark ---

    @(link_name = "gtk_css_section_get_type")
    gtk_css_section_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_css_section_new")
    gtk_css_section_new :: proc(file: ^gio.GFile, start: ^GtkCssLocation, end: ^GtkCssLocation) -> ^GtkCssSection ---

    @(link_name = "gtk_css_section_new_with_bytes")
    gtk_css_section_new_with_bytes :: proc(file: ^gio.GFile, bytes: [^]glib.GBytes, start: ^GtkCssLocation, end: ^GtkCssLocation) -> ^GtkCssSection ---

    @(link_name = "gtk_css_section_ref")
    gtk_css_section_ref :: proc(section: ^GtkCssSection) -> ^GtkCssSection ---

    @(link_name = "gtk_css_section_unref")
    gtk_css_section_unref :: proc(section: ^GtkCssSection) ---

    @(link_name = "gtk_css_section_print")
    gtk_css_section_print :: proc(section: ^GtkCssSection, string_p: ^glib.GString) ---

    @(link_name = "gtk_css_section_to_string")
    gtk_css_section_to_string :: proc(section: ^GtkCssSection) -> cstring ---

    @(link_name = "gtk_css_section_get_parent")
    gtk_css_section_get_parent :: proc(section: ^GtkCssSection) -> ^GtkCssSection ---

    @(link_name = "gtk_css_section_get_file")
    gtk_css_section_get_file :: proc(section: ^GtkCssSection) -> ^gio.GFile ---

    @(link_name = "gtk_css_section_get_bytes")
    gtk_css_section_get_bytes :: proc(section: ^GtkCssSection) -> ^glib.GBytes ---

    @(link_name = "gtk_css_section_get_start_location")
    gtk_css_section_get_start_location :: proc(section: ^GtkCssSection) -> ^GtkCssLocation ---

    @(link_name = "gtk_css_section_get_end_location")
    gtk_css_section_get_end_location :: proc(section: ^GtkCssSection) -> ^GtkCssLocation ---

    @(link_name = "gsk_vulkan_renderer_get_type")
    gsk_vulkan_renderer_get_type :: proc() -> gobj.GType ---

    @(link_name = "gsk_gl_renderer_get_type")
    gsk_gl_renderer_get_type :: proc() -> gobj.GType ---

    @(link_name = "gsk_ngl_renderer_get_type")
    gsk_ngl_renderer_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_app_chooser_get_type")
    gtk_app_chooser_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_app_chooser_get_app_info")
    gtk_app_chooser_get_app_info :: proc(self: ^GtkAppChooser) -> ^gio.GAppInfo ---

    @(link_name = "gtk_app_chooser_get_content_type")
    gtk_app_chooser_get_content_type :: proc(self: ^GtkAppChooser) -> cstring ---

    @(link_name = "gtk_app_chooser_refresh")
    gtk_app_chooser_refresh :: proc(self: ^GtkAppChooser) ---

    @(link_name = "gtk_dialog_get_type")
    gtk_dialog_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_dialog_add_buttons")
    gtk_dialog_add_buttons :: proc(dialog: ^GtkDialog, first_button_text: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_dialog_set_response_sensitive")
    gtk_dialog_set_response_sensitive :: proc(dialog: ^GtkDialog, response_id: i32, setting: glib.gboolean) ---

    @(link_name = "gtk_dialog_set_default_response")
    gtk_dialog_set_default_response :: proc(dialog: ^GtkDialog, response_id: i32) ---

    @(link_name = "gtk_dialog_response")
    gtk_dialog_response :: proc(dialog: ^GtkDialog, response_id: i32) ---

    @(link_name = "gtk_app_chooser_dialog_get_type")
    gtk_app_chooser_dialog_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_app_chooser_dialog_set_heading")
    gtk_app_chooser_dialog_set_heading :: proc(self: ^GtkAppChooserDialog, heading: cstring) ---

    @(link_name = "gtk_app_chooser_dialog_get_heading")
    gtk_app_chooser_dialog_get_heading :: proc(self: ^GtkAppChooserDialog) -> cstring ---

    @(link_name = "gtk_app_chooser_widget_get_type")
    gtk_app_chooser_widget_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_app_chooser_widget_set_show_default")
    gtk_app_chooser_widget_set_show_default :: proc(self: ^GtkAppChooserWidget, setting: glib.gboolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_default")
    gtk_app_chooser_widget_get_show_default :: proc(self: ^GtkAppChooserWidget) -> glib.gboolean ---

    @(link_name = "gtk_app_chooser_widget_set_show_recommended")
    gtk_app_chooser_widget_set_show_recommended :: proc(self: ^GtkAppChooserWidget, setting: glib.gboolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_recommended")
    gtk_app_chooser_widget_get_show_recommended :: proc(self: ^GtkAppChooserWidget) -> glib.gboolean ---

    @(link_name = "gtk_app_chooser_widget_set_show_fallback")
    gtk_app_chooser_widget_set_show_fallback :: proc(self: ^GtkAppChooserWidget, setting: glib.gboolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_fallback")
    gtk_app_chooser_widget_get_show_fallback :: proc(self: ^GtkAppChooserWidget) -> glib.gboolean ---

    @(link_name = "gtk_app_chooser_widget_set_show_other")
    gtk_app_chooser_widget_set_show_other :: proc(self: ^GtkAppChooserWidget, setting: glib.gboolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_other")
    gtk_app_chooser_widget_get_show_other :: proc(self: ^GtkAppChooserWidget) -> glib.gboolean ---

    @(link_name = "gtk_app_chooser_widget_set_show_all")
    gtk_app_chooser_widget_set_show_all :: proc(self: ^GtkAppChooserWidget, setting: glib.gboolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_all")
    gtk_app_chooser_widget_get_show_all :: proc(self: ^GtkAppChooserWidget) -> glib.gboolean ---

    @(link_name = "gtk_app_chooser_widget_set_default_text")
    gtk_app_chooser_widget_set_default_text :: proc(self: ^GtkAppChooserWidget, text: cstring) ---

    @(link_name = "gtk_app_chooser_widget_get_default_text")
    gtk_app_chooser_widget_get_default_text :: proc(self: ^GtkAppChooserWidget) -> cstring ---

    @(link_name = "gtk_app_chooser_button_get_type")
    gtk_app_chooser_button_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_app_chooser_button_append_separator")
    gtk_app_chooser_button_append_separator :: proc(self: ^GtkAppChooserButton) ---

    @(link_name = "gtk_app_chooser_button_append_custom_item")
    gtk_app_chooser_button_append_custom_item :: proc(self: ^GtkAppChooserButton, name: cstring, label: cstring, icon: ^gio.GIcon) ---

    @(link_name = "gtk_app_chooser_button_set_active_custom_item")
    gtk_app_chooser_button_set_active_custom_item :: proc(self: ^GtkAppChooserButton, name: cstring) ---

    @(link_name = "gtk_app_chooser_button_set_show_dialog_item")
    gtk_app_chooser_button_set_show_dialog_item :: proc(self: ^GtkAppChooserButton, setting: glib.gboolean) ---

    @(link_name = "gtk_app_chooser_button_get_show_dialog_item")
    gtk_app_chooser_button_get_show_dialog_item :: proc(self: ^GtkAppChooserButton) -> glib.gboolean ---

    @(link_name = "gtk_app_chooser_button_set_heading")
    gtk_app_chooser_button_set_heading :: proc(self: ^GtkAppChooserButton, heading: cstring) ---

    @(link_name = "gtk_app_chooser_button_get_heading")
    gtk_app_chooser_button_get_heading :: proc(self: ^GtkAppChooserButton) -> cstring ---

    @(link_name = "gtk_app_chooser_button_set_show_default_item")
    gtk_app_chooser_button_set_show_default_item :: proc(self: ^GtkAppChooserButton, setting: glib.gboolean) ---

    @(link_name = "gtk_app_chooser_button_get_show_default_item")
    gtk_app_chooser_button_get_show_default_item :: proc(self: ^GtkAppChooserButton) -> glib.gboolean ---

    @(link_name = "gtk_app_chooser_button_get_modal")
    gtk_app_chooser_button_get_modal :: proc(self: ^GtkAppChooserButton) -> glib.gboolean ---

    @(link_name = "gtk_app_chooser_button_set_modal")
    gtk_app_chooser_button_set_modal :: proc(self: ^GtkAppChooserButton, modal: glib.gboolean) ---

    @(link_name = "gtk_shortcuts_shortcut_get_type")
    gtk_shortcuts_shortcut_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_shortcuts_group_get_type")
    gtk_shortcuts_group_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_shortcuts_group_add_shortcut")
    gtk_shortcuts_group_add_shortcut :: proc(self: ^GtkShortcutsGroup, shortcut: ^GtkShortcutsShortcut) ---

    @(link_name = "gtk_shortcuts_section_get_type")
    gtk_shortcuts_section_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_shortcuts_section_add_group")
    gtk_shortcuts_section_add_group :: proc(self: ^GtkShortcutsSection, group: ^GtkShortcutsGroup) ---

    @(link_name = "gtk_shortcuts_window_get_type")
    gtk_shortcuts_window_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_shortcuts_window_add_section")
    gtk_shortcuts_window_add_section :: proc(self: ^GtkShortcutsWindow, section: ^GtkShortcutsSection) ---

    @(link_name = "gtk_assistant_page_get_type")
    gtk_assistant_page_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_assistant_get_type")
    gtk_assistant_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_assistant_next_page")
    gtk_assistant_next_page :: proc(assistant: ^GtkAssistant) ---

    @(link_name = "gtk_assistant_previous_page")
    gtk_assistant_previous_page :: proc(assistant: ^GtkAssistant) ---

    @(link_name = "gtk_assistant_get_current_page")
    gtk_assistant_get_current_page :: proc(assistant: ^GtkAssistant) -> i32 ---

    @(link_name = "gtk_assistant_set_current_page")
    gtk_assistant_set_current_page :: proc(assistant: ^GtkAssistant, page_num: i32) ---

    @(link_name = "gtk_assistant_get_n_pages")
    gtk_assistant_get_n_pages :: proc(assistant: ^GtkAssistant) -> i32 ---

    @(link_name = "gtk_assistant_remove_page")
    gtk_assistant_remove_page :: proc(assistant: ^GtkAssistant, page_num: i32) ---

    @(link_name = "gtk_assistant_set_forward_page_func")
    gtk_assistant_set_forward_page_func :: proc(assistant: ^GtkAssistant, page_func: GtkAssistantPageFunc, data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_assistant_update_buttons_state")
    gtk_assistant_update_buttons_state :: proc(assistant: ^GtkAssistant) ---

    @(link_name = "gtk_assistant_commit")
    gtk_assistant_commit :: proc(assistant: ^GtkAssistant) ---

    @(link_name = "gtk_assistant_get_pages")
    gtk_assistant_get_pages :: proc(assistant: ^GtkAssistant) -> ^gio.GListModel ---

    @(link_name = "gtk_cell_editable_get_type")
    gtk_cell_editable_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_editable_editing_done")
    gtk_cell_editable_editing_done :: proc(cell_editable: ^GtkCellEditable) ---

    @(link_name = "gtk_cell_editable_remove_widget")
    gtk_cell_editable_remove_widget :: proc(cell_editable: ^GtkCellEditable) ---

    @(link_name = "gtk_cell_renderer_get_type")
    gtk_cell_renderer_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_set_fixed_size")
    gtk_cell_renderer_set_fixed_size :: proc(cell: ^GtkCellRenderer, width: i32, height: i32) ---

    @(link_name = "gtk_cell_renderer_get_fixed_size")
    gtk_cell_renderer_get_fixed_size :: proc(cell: ^GtkCellRenderer, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_cell_renderer_set_alignment")
    gtk_cell_renderer_set_alignment :: proc(cell: ^GtkCellRenderer, xalign: f32, yalign: f32) ---

    @(link_name = "gtk_cell_renderer_get_alignment")
    gtk_cell_renderer_get_alignment :: proc(cell: ^GtkCellRenderer, xalign: ^f32, yalign: ^f32) ---

    @(link_name = "gtk_cell_renderer_set_padding")
    gtk_cell_renderer_set_padding :: proc(cell: ^GtkCellRenderer, xpad: i32, ypad: i32) ---

    @(link_name = "gtk_cell_renderer_get_padding")
    gtk_cell_renderer_get_padding :: proc(cell: ^GtkCellRenderer, xpad: ^i32, ypad: ^i32) ---

    @(link_name = "gtk_cell_renderer_set_visible")
    gtk_cell_renderer_set_visible :: proc(cell: ^GtkCellRenderer, visible: glib.gboolean) ---

    @(link_name = "gtk_cell_renderer_get_visible")
    gtk_cell_renderer_get_visible :: proc(cell: ^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_set_sensitive")
    gtk_cell_renderer_set_sensitive :: proc(cell: ^GtkCellRenderer, sensitive: glib.gboolean) ---

    @(link_name = "gtk_cell_renderer_get_sensitive")
    gtk_cell_renderer_get_sensitive :: proc(cell: ^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_is_activatable")
    gtk_cell_renderer_is_activatable :: proc(cell: ^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_set_is_expander")
    gtk_cell_renderer_set_is_expander :: proc(cell: ^GtkCellRenderer, is_expander: glib.gboolean) ---

    @(link_name = "gtk_cell_renderer_get_is_expander")
    gtk_cell_renderer_get_is_expander :: proc(cell: ^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_set_is_expanded")
    gtk_cell_renderer_set_is_expanded :: proc(cell: ^GtkCellRenderer, is_expanded: glib.gboolean) ---

    @(link_name = "gtk_cell_renderer_get_is_expanded")
    gtk_cell_renderer_get_is_expanded :: proc(cell: ^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_stop_editing")
    gtk_cell_renderer_stop_editing :: proc(cell: ^GtkCellRenderer, canceled: glib.gboolean) ---

    @(link_name = "gtk_tree_path_new")
    gtk_tree_path_new :: proc() -> ^GtkTreePath ---

    @(link_name = "gtk_tree_path_new_from_string")
    gtk_tree_path_new_from_string :: proc(path: cstring) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_path_new_from_indices")
    gtk_tree_path_new_from_indices :: proc(first_index: i32, #c_vararg var_args: ..any) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_path_new_from_indicesv")
    gtk_tree_path_new_from_indicesv :: proc(indices: [^]i32, length: glib.gsize) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_path_to_string")
    gtk_tree_path_to_string :: proc(path: ^GtkTreePath) -> cstring ---

    @(link_name = "gtk_tree_path_new_first")
    gtk_tree_path_new_first :: proc() -> ^GtkTreePath ---

    @(link_name = "gtk_tree_path_append_index")
    gtk_tree_path_append_index :: proc(path: ^GtkTreePath, index_: i32) ---

    @(link_name = "gtk_tree_path_prepend_index")
    gtk_tree_path_prepend_index :: proc(path: ^GtkTreePath, index_: i32) ---

    @(link_name = "gtk_tree_path_get_depth")
    gtk_tree_path_get_depth :: proc(path: ^GtkTreePath) -> i32 ---

    @(link_name = "gtk_tree_path_get_indices")
    gtk_tree_path_get_indices :: proc(path: ^GtkTreePath) -> ^i32 ---

    @(link_name = "gtk_tree_path_get_indices_with_depth")
    gtk_tree_path_get_indices_with_depth :: proc(path: ^GtkTreePath, depth: ^i32) -> ^i32 ---

    @(link_name = "gtk_tree_path_free")
    gtk_tree_path_free :: proc(path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_path_copy")
    gtk_tree_path_copy :: proc(path: ^GtkTreePath) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_path_get_type")
    gtk_tree_path_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_path_compare")
    gtk_tree_path_compare :: proc(a: ^GtkTreePath, b: ^GtkTreePath) -> i32 ---

    @(link_name = "gtk_tree_path_next")
    gtk_tree_path_next :: proc(path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_path_prev")
    gtk_tree_path_prev :: proc(path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_path_up")
    gtk_tree_path_up :: proc(path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_path_down")
    gtk_tree_path_down :: proc(path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_path_is_ancestor")
    gtk_tree_path_is_ancestor :: proc(path: ^GtkTreePath, descendant: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_path_is_descendant")
    gtk_tree_path_is_descendant :: proc(path: ^GtkTreePath, ancestor: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_row_reference_get_type")
    gtk_tree_row_reference_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_row_reference_new")
    gtk_tree_row_reference_new :: proc(model: ^GtkTreeModel, path: ^GtkTreePath) -> ^GtkTreeRowReference ---

    @(link_name = "gtk_tree_row_reference_new_proxy")
    gtk_tree_row_reference_new_proxy :: proc(proxy: ^gobj.GObject, model: ^GtkTreeModel, path: ^GtkTreePath) -> ^GtkTreeRowReference ---

    @(link_name = "gtk_tree_row_reference_get_path")
    gtk_tree_row_reference_get_path :: proc(reference: ^GtkTreeRowReference) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_row_reference_get_model")
    gtk_tree_row_reference_get_model :: proc(reference: ^GtkTreeRowReference) -> ^GtkTreeModel ---

    @(link_name = "gtk_tree_row_reference_valid")
    gtk_tree_row_reference_valid :: proc(reference: ^GtkTreeRowReference) -> glib.gboolean ---

    @(link_name = "gtk_tree_row_reference_copy")
    gtk_tree_row_reference_copy :: proc(reference: ^GtkTreeRowReference) -> ^GtkTreeRowReference ---

    @(link_name = "gtk_tree_row_reference_free")
    gtk_tree_row_reference_free :: proc(reference: ^GtkTreeRowReference) ---

    @(link_name = "gtk_tree_row_reference_inserted")
    gtk_tree_row_reference_inserted :: proc(proxy: ^gobj.GObject, path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_row_reference_deleted")
    gtk_tree_row_reference_deleted :: proc(proxy: ^gobj.GObject, path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_row_reference_reordered")
    gtk_tree_row_reference_reordered :: proc(proxy: ^gobj.GObject, path: ^GtkTreePath, iter: ^GtkTreeIter, new_order: ^i32) ---

    @(link_name = "gtk_tree_iter_copy")
    gtk_tree_iter_copy :: proc(iter: ^GtkTreeIter) -> ^GtkTreeIter ---

    @(link_name = "gtk_tree_iter_free")
    gtk_tree_iter_free :: proc(iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_iter_get_type")
    gtk_tree_iter_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_model_get_type")
    gtk_tree_model_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_model_get_flags")
    gtk_tree_model_get_flags :: proc(tree_model: ^GtkTreeModel) -> GtkTreeModelFlags ---

    @(link_name = "gtk_tree_model_get_n_columns")
    gtk_tree_model_get_n_columns :: proc(tree_model: ^GtkTreeModel) -> i32 ---

    @(link_name = "gtk_tree_model_get_column_type")
    gtk_tree_model_get_column_type :: proc(tree_model: ^GtkTreeModel, index_: i32) -> gobj.GType ---

    @(link_name = "gtk_tree_model_get_iter")
    gtk_tree_model_get_iter :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_get_iter_from_string")
    gtk_tree_model_get_iter_from_string :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, path_string: cstring) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_get_string_from_iter")
    gtk_tree_model_get_string_from_iter :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> cstring ---

    @(link_name = "gtk_tree_model_get_iter_first")
    gtk_tree_model_get_iter_first :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_get_path")
    gtk_tree_model_get_path :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_model_get_value")
    gtk_tree_model_get_value :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, column: i32, value: ^gobj.GValue) ---

    @(link_name = "gtk_tree_model_iter_previous")
    gtk_tree_model_iter_previous :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_iter_next")
    gtk_tree_model_iter_next :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_iter_children")
    gtk_tree_model_iter_children :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, parent: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_iter_has_child")
    gtk_tree_model_iter_has_child :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_iter_n_children")
    gtk_tree_model_iter_n_children :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> i32 ---

    @(link_name = "gtk_tree_model_iter_nth_child")
    gtk_tree_model_iter_nth_child :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, parent: ^GtkTreeIter, n: i32) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_iter_parent")
    gtk_tree_model_iter_parent :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, child: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_ref_node")
    gtk_tree_model_ref_node :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_model_unref_node")
    gtk_tree_model_unref_node :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_model_get")
    gtk_tree_model_get :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_model_get_valist")
    gtk_tree_model_get_valist :: proc(tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_model_foreach")
    gtk_tree_model_foreach :: proc(model: ^GtkTreeModel, func: GtkTreeModelForeachFunc, user_data: glib.gpointer) ---

    @(link_name = "gtk_tree_model_row_changed")
    gtk_tree_model_row_changed :: proc(tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_model_row_inserted")
    gtk_tree_model_row_inserted :: proc(tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_model_row_has_child_toggled")
    gtk_tree_model_row_has_child_toggled :: proc(tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_model_row_deleted")
    gtk_tree_model_row_deleted :: proc(tree_model: ^GtkTreeModel, path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_model_rows_reordered")
    gtk_tree_model_rows_reordered :: proc(tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter, new_order: ^i32) ---

    @(link_name = "gtk_tree_model_rows_reordered_with_length")
    gtk_tree_model_rows_reordered_with_length :: proc(tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter, new_order: ^i32, length: i32) ---

    @(link_name = "gtk_cell_area_get_type")
    gtk_cell_area_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_area_add")
    gtk_cell_area_add :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer) ---

    @(link_name = "gtk_cell_area_remove")
    gtk_cell_area_remove :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer) ---

    @(link_name = "gtk_cell_area_has_renderer")
    gtk_cell_area_has_renderer :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_cell_area_foreach")
    gtk_cell_area_foreach :: proc(area: ^GtkCellArea, callback: GtkCellCallback, callback_data: glib.gpointer) ---

    @(link_name = "gtk_cell_area_create_context")
    gtk_cell_area_create_context :: proc(area: ^GtkCellArea) -> ^GtkCellAreaContext ---

    @(link_name = "gtk_cell_area_copy_context")
    gtk_cell_area_copy_context :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext) -> ^GtkCellAreaContext ---

    @(link_name = "gtk_cell_area_get_current_path_string")
    gtk_cell_area_get_current_path_string :: proc(area: ^GtkCellArea) -> cstring ---

    @(link_name = "gtk_cell_area_apply_attributes")
    gtk_cell_area_apply_attributes :: proc(area: ^GtkCellArea, tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, is_expander: glib.gboolean, is_expanded: glib.gboolean) ---

    @(link_name = "gtk_cell_area_attribute_connect")
    gtk_cell_area_attribute_connect :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, attribute: cstring, column: i32) ---

    @(link_name = "gtk_cell_area_attribute_disconnect")
    gtk_cell_area_attribute_disconnect :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, attribute: cstring) ---

    @(link_name = "gtk_cell_area_attribute_get_column")
    gtk_cell_area_attribute_get_column :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, attribute: cstring) -> i32 ---

    @(link_name = "gtk_cell_area_class_install_cell_property")
    gtk_cell_area_class_install_cell_property :: proc(aclass: [^]GtkCellAreaClass, property_id: glib.guint, pspec: ^gobj.GParamSpec) ---

    @(link_name = "gtk_cell_area_class_find_cell_property")
    gtk_cell_area_class_find_cell_property :: proc(aclass: [^]GtkCellAreaClass, property_name: cstring) -> ^gobj.GParamSpec ---

    @(link_name = "gtk_cell_area_class_list_cell_properties")
    gtk_cell_area_class_list_cell_properties :: proc(aclass: [^]GtkCellAreaClass, n_properties: [^]glib.guint) -> ^^gobj.GParamSpec ---

    @(link_name = "gtk_cell_area_add_with_properties")
    gtk_cell_area_add_with_properties :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_set")
    gtk_cell_area_cell_set :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_get")
    gtk_cell_area_cell_get :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_set_valist")
    gtk_cell_area_cell_set_valist :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_get_valist")
    gtk_cell_area_cell_get_valist :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_set_property")
    gtk_cell_area_cell_set_property :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, property_name: cstring, value: ^gobj.GValue) ---

    @(link_name = "gtk_cell_area_cell_get_property")
    gtk_cell_area_cell_get_property :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, property_name: cstring, value: ^gobj.GValue) ---

    @(link_name = "gtk_cell_area_is_activatable")
    gtk_cell_area_is_activatable :: proc(area: ^GtkCellArea) -> glib.gboolean ---

    @(link_name = "gtk_cell_area_set_focus_cell")
    gtk_cell_area_set_focus_cell :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer) ---

    @(link_name = "gtk_cell_area_get_focus_cell")
    gtk_cell_area_get_focus_cell :: proc(area: ^GtkCellArea) -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_area_add_focus_sibling")
    gtk_cell_area_add_focus_sibling :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, sibling: ^GtkCellRenderer) ---

    @(link_name = "gtk_cell_area_remove_focus_sibling")
    gtk_cell_area_remove_focus_sibling :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, sibling: ^GtkCellRenderer) ---

    @(link_name = "gtk_cell_area_is_focus_sibling")
    gtk_cell_area_is_focus_sibling :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, sibling: ^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_cell_area_get_focus_siblings")
    gtk_cell_area_get_focus_siblings :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer) -> ^glib.GList ---

    @(link_name = "gtk_cell_area_get_focus_from_sibling")
    gtk_cell_area_get_focus_from_sibling :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer) -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_area_get_edited_cell")
    gtk_cell_area_get_edited_cell :: proc(area: ^GtkCellArea) -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_area_get_edit_widget")
    gtk_cell_area_get_edit_widget :: proc(area: ^GtkCellArea) -> ^GtkCellEditable ---

    @(link_name = "gtk_cell_area_stop_editing")
    gtk_cell_area_stop_editing :: proc(area: ^GtkCellArea, canceled: glib.gboolean) ---

    @(link_name = "_gtk_cell_area_set_cell_data_func_with_proxy")
    _gtk_cell_area_set_cell_data_func_with_proxy :: proc(area: ^GtkCellArea, cell: ^GtkCellRenderer, func: glib.GFunc, func_data: glib.gpointer, destroy: glib.GDestroyNotify, proxy: glib.gpointer) ---

    @(link_name = "gtk_cell_area_box_get_type")
    gtk_cell_area_box_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_area_box_new")
    gtk_cell_area_box_new :: proc() -> ^GtkCellArea ---

    @(link_name = "gtk_cell_area_box_pack_start")
    gtk_cell_area_box_pack_start :: proc(box: ^GtkCellAreaBox, renderer: ^GtkCellRenderer, expand: glib.gboolean, align: glib.gboolean, fixed: glib.gboolean) ---

    @(link_name = "gtk_cell_area_box_pack_end")
    gtk_cell_area_box_pack_end :: proc(box: ^GtkCellAreaBox, renderer: ^GtkCellRenderer, expand: glib.gboolean, align: glib.gboolean, fixed: glib.gboolean) ---

    @(link_name = "gtk_cell_area_box_get_spacing")
    gtk_cell_area_box_get_spacing :: proc(box: ^GtkCellAreaBox) -> i32 ---

    @(link_name = "gtk_cell_area_box_set_spacing")
    gtk_cell_area_box_set_spacing :: proc(box: ^GtkCellAreaBox, spacing: i32) ---

    @(link_name = "_gtk_cell_area_box_group_visible")
    _gtk_cell_area_box_group_visible :: proc(box: ^GtkCellAreaBox, group_idx: i32) -> glib.gboolean ---

    @(link_name = "gtk_cell_area_context_get_type")
    gtk_cell_area_context_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_area_context_get_area")
    gtk_cell_area_context_get_area :: proc(context_p: ^GtkCellAreaContext) -> ^GtkCellArea ---

    @(link_name = "gtk_cell_area_context_allocate")
    gtk_cell_area_context_allocate :: proc(context_p: ^GtkCellAreaContext, width: i32, height: i32) ---

    @(link_name = "gtk_cell_area_context_reset")
    gtk_cell_area_context_reset :: proc(context_p: ^GtkCellAreaContext) ---

    @(link_name = "gtk_cell_area_context_get_preferred_width")
    gtk_cell_area_context_get_preferred_width :: proc(context_p: ^GtkCellAreaContext, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_area_context_get_preferred_height")
    gtk_cell_area_context_get_preferred_height :: proc(context_p: ^GtkCellAreaContext, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_area_context_get_preferred_height_for_width")
    gtk_cell_area_context_get_preferred_height_for_width :: proc(context_p: ^GtkCellAreaContext, width: i32, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_area_context_get_preferred_width_for_height")
    gtk_cell_area_context_get_preferred_width_for_height :: proc(context_p: ^GtkCellAreaContext, height: i32, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_area_context_get_allocation")
    gtk_cell_area_context_get_allocation :: proc(context_p: ^GtkCellAreaContext, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_cell_area_context_push_preferred_width")
    gtk_cell_area_context_push_preferred_width :: proc(context_p: ^GtkCellAreaContext, minimum_width: i32, natural_width: i32) ---

    @(link_name = "gtk_cell_area_context_push_preferred_height")
    gtk_cell_area_context_push_preferred_height :: proc(context_p: ^GtkCellAreaContext, minimum_height: i32, natural_height: i32) ---

    @(link_name = "gtk_cell_layout_get_type")
    gtk_cell_layout_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_layout_pack_start")
    gtk_cell_layout_pack_start :: proc(cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, expand: glib.gboolean) ---

    @(link_name = "gtk_cell_layout_pack_end")
    gtk_cell_layout_pack_end :: proc(cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, expand: glib.gboolean) ---

    @(link_name = "gtk_cell_layout_get_cells")
    gtk_cell_layout_get_cells :: proc(cell_layout: ^GtkCellLayout) -> ^glib.GList ---

    @(link_name = "gtk_cell_layout_clear")
    gtk_cell_layout_clear :: proc(cell_layout: ^GtkCellLayout) ---

    @(link_name = "gtk_cell_layout_set_attributes")
    gtk_cell_layout_set_attributes :: proc(cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_layout_add_attribute")
    gtk_cell_layout_add_attribute :: proc(cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, attribute: cstring, column: i32) ---

    @(link_name = "gtk_cell_layout_set_cell_data_func")
    gtk_cell_layout_set_cell_data_func :: proc(cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, func: GtkCellLayoutDataFunc, func_data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_cell_layout_clear_attributes")
    gtk_cell_layout_clear_attributes :: proc(cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer) ---

    @(link_name = "gtk_cell_layout_reorder")
    gtk_cell_layout_reorder :: proc(cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, position: i32) ---

    @(link_name = "gtk_cell_layout_get_area")
    gtk_cell_layout_get_area :: proc(cell_layout: ^GtkCellLayout) -> ^GtkCellArea ---

    @(link_name = "gtk_cell_renderer_text_get_type")
    gtk_cell_renderer_text_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_text_new")
    gtk_cell_renderer_text_new :: proc() -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_renderer_text_set_fixed_height_from_font")
    gtk_cell_renderer_text_set_fixed_height_from_font :: proc(renderer: ^GtkCellRendererText, number_of_rows: i32) ---

    @(link_name = "gtk_cell_renderer_accel_get_type")
    gtk_cell_renderer_accel_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_accel_new")
    gtk_cell_renderer_accel_new :: proc() -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_renderer_combo_get_type")
    gtk_cell_renderer_combo_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_combo_new")
    gtk_cell_renderer_combo_new :: proc() -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_renderer_pixbuf_get_type")
    gtk_cell_renderer_pixbuf_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_pixbuf_new")
    gtk_cell_renderer_pixbuf_new :: proc() -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_renderer_progress_get_type")
    gtk_cell_renderer_progress_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_progress_new")
    gtk_cell_renderer_progress_new :: proc() -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_renderer_spin_get_type")
    gtk_cell_renderer_spin_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_spin_new")
    gtk_cell_renderer_spin_new :: proc() -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_renderer_spinner_get_type")
    gtk_cell_renderer_spinner_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_spinner_new")
    gtk_cell_renderer_spinner_new :: proc() -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_renderer_toggle_get_type")
    gtk_cell_renderer_toggle_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_renderer_toggle_new")
    gtk_cell_renderer_toggle_new :: proc() -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_renderer_toggle_get_radio")
    gtk_cell_renderer_toggle_get_radio :: proc(toggle: ^GtkCellRendererToggle) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_toggle_set_radio")
    gtk_cell_renderer_toggle_set_radio :: proc(toggle: ^GtkCellRendererToggle, radio: glib.gboolean) ---

    @(link_name = "gtk_cell_renderer_toggle_get_active")
    gtk_cell_renderer_toggle_get_active :: proc(toggle: ^GtkCellRendererToggle) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_toggle_set_active")
    gtk_cell_renderer_toggle_set_active :: proc(toggle: ^GtkCellRendererToggle, setting: glib.gboolean) ---

    @(link_name = "gtk_cell_renderer_toggle_get_activatable")
    gtk_cell_renderer_toggle_get_activatable :: proc(toggle: ^GtkCellRendererToggle) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_toggle_set_activatable")
    gtk_cell_renderer_toggle_set_activatable :: proc(toggle: ^GtkCellRendererToggle, setting: glib.gboolean) ---

    @(link_name = "gtk_cell_view_get_type")
    gtk_cell_view_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_cell_view_set_model")
    gtk_cell_view_set_model :: proc(cell_view: ^GtkCellView, model: ^GtkTreeModel) ---

    @(link_name = "gtk_cell_view_get_model")
    gtk_cell_view_get_model :: proc(cell_view: ^GtkCellView) -> ^GtkTreeModel ---

    @(link_name = "gtk_cell_view_set_displayed_row")
    gtk_cell_view_set_displayed_row :: proc(cell_view: ^GtkCellView, path: ^GtkTreePath) ---

    @(link_name = "gtk_cell_view_get_displayed_row")
    gtk_cell_view_get_displayed_row :: proc(cell_view: ^GtkCellView) -> ^GtkTreePath ---

    @(link_name = "gtk_cell_view_get_draw_sensitive")
    gtk_cell_view_get_draw_sensitive :: proc(cell_view: ^GtkCellView) -> glib.gboolean ---

    @(link_name = "gtk_cell_view_set_draw_sensitive")
    gtk_cell_view_set_draw_sensitive :: proc(cell_view: ^GtkCellView, draw_sensitive: glib.gboolean) ---

    @(link_name = "gtk_cell_view_get_fit_model")
    gtk_cell_view_get_fit_model :: proc(cell_view: ^GtkCellView) -> glib.gboolean ---

    @(link_name = "gtk_cell_view_set_fit_model")
    gtk_cell_view_set_fit_model :: proc(cell_view: ^GtkCellView, fit_model: glib.gboolean) ---

    @(link_name = "gtk_color_button_get_type")
    gtk_color_button_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_color_button_set_title")
    gtk_color_button_set_title :: proc(button: ^GtkColorButton, title: cstring) ---

    @(link_name = "gtk_color_button_get_title")
    gtk_color_button_get_title :: proc(button: ^GtkColorButton) -> cstring ---

    @(link_name = "gtk_color_button_get_modal")
    gtk_color_button_get_modal :: proc(button: ^GtkColorButton) -> glib.gboolean ---

    @(link_name = "gtk_color_button_set_modal")
    gtk_color_button_set_modal :: proc(button: ^GtkColorButton, modal: glib.gboolean) ---

    @(link_name = "gtk_color_chooser_get_type")
    gtk_color_chooser_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_color_chooser_get_use_alpha")
    gtk_color_chooser_get_use_alpha :: proc(chooser: ^GtkColorChooser) -> glib.gboolean ---

    @(link_name = "gtk_color_chooser_set_use_alpha")
    gtk_color_chooser_set_use_alpha :: proc(chooser: ^GtkColorChooser, use_alpha: glib.gboolean) ---

    @(link_name = "gtk_color_chooser_dialog_get_type")
    gtk_color_chooser_dialog_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_color_chooser_widget_get_type")
    gtk_color_chooser_widget_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_sortable_get_type")
    gtk_tree_sortable_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_sortable_sort_column_changed")
    gtk_tree_sortable_sort_column_changed :: proc(sortable: ^GtkTreeSortable) ---

    @(link_name = "gtk_tree_sortable_set_sort_func")
    gtk_tree_sortable_set_sort_func :: proc(sortable: ^GtkTreeSortable, sort_column_id: i32, sort_func: GtkTreeIterCompareFunc, user_data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_sortable_set_default_sort_func")
    gtk_tree_sortable_set_default_sort_func :: proc(sortable: ^GtkTreeSortable, sort_func: GtkTreeIterCompareFunc, user_data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_sortable_has_default_sort_func")
    gtk_tree_sortable_has_default_sort_func :: proc(sortable: ^GtkTreeSortable) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_get_type")
    gtk_tree_view_column_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_view_column_new")
    gtk_tree_view_column_new :: proc() -> ^GtkTreeViewColumn ---

    @(link_name = "gtk_tree_view_column_new_with_area")
    gtk_tree_view_column_new_with_area :: proc(area: ^GtkCellArea) -> ^GtkTreeViewColumn ---

    @(link_name = "gtk_tree_view_column_new_with_attributes")
    gtk_tree_view_column_new_with_attributes :: proc(title: cstring, cell: ^GtkCellRenderer, #c_vararg var_args: ..any) -> ^GtkTreeViewColumn ---

    @(link_name = "gtk_tree_view_column_pack_start")
    gtk_tree_view_column_pack_start :: proc(tree_column: ^GtkTreeViewColumn, cell: ^GtkCellRenderer, expand: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_pack_end")
    gtk_tree_view_column_pack_end :: proc(tree_column: ^GtkTreeViewColumn, cell: ^GtkCellRenderer, expand: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_clear")
    gtk_tree_view_column_clear :: proc(tree_column: ^GtkTreeViewColumn) ---

    @(link_name = "gtk_tree_view_column_add_attribute")
    gtk_tree_view_column_add_attribute :: proc(tree_column: ^GtkTreeViewColumn, cell_renderer: ^GtkCellRenderer, attribute: cstring, column: i32) ---

    @(link_name = "gtk_tree_view_column_set_attributes")
    gtk_tree_view_column_set_attributes :: proc(tree_column: ^GtkTreeViewColumn, cell_renderer: ^GtkCellRenderer, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_view_column_set_cell_data_func")
    gtk_tree_view_column_set_cell_data_func :: proc(tree_column: ^GtkTreeViewColumn, cell_renderer: ^GtkCellRenderer, func: GtkTreeCellDataFunc, func_data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_view_column_clear_attributes")
    gtk_tree_view_column_clear_attributes :: proc(tree_column: ^GtkTreeViewColumn, cell_renderer: ^GtkCellRenderer) ---

    @(link_name = "gtk_tree_view_column_set_spacing")
    gtk_tree_view_column_set_spacing :: proc(tree_column: ^GtkTreeViewColumn, spacing: i32) ---

    @(link_name = "gtk_tree_view_column_get_spacing")
    gtk_tree_view_column_get_spacing :: proc(tree_column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_set_visible")
    gtk_tree_view_column_set_visible :: proc(tree_column: ^GtkTreeViewColumn, visible: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_get_visible")
    gtk_tree_view_column_get_visible :: proc(tree_column: ^GtkTreeViewColumn) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_set_resizable")
    gtk_tree_view_column_set_resizable :: proc(tree_column: ^GtkTreeViewColumn, resizable: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_get_resizable")
    gtk_tree_view_column_get_resizable :: proc(tree_column: ^GtkTreeViewColumn) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_set_sizing")
    gtk_tree_view_column_set_sizing :: proc(tree_column: ^GtkTreeViewColumn, type: GtkTreeViewColumnSizing) ---

    @(link_name = "gtk_tree_view_column_get_sizing")
    gtk_tree_view_column_get_sizing :: proc(tree_column: ^GtkTreeViewColumn) -> GtkTreeViewColumnSizing ---

    @(link_name = "gtk_tree_view_column_get_x_offset")
    gtk_tree_view_column_get_x_offset :: proc(tree_column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_get_width")
    gtk_tree_view_column_get_width :: proc(tree_column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_get_fixed_width")
    gtk_tree_view_column_get_fixed_width :: proc(tree_column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_set_fixed_width")
    gtk_tree_view_column_set_fixed_width :: proc(tree_column: ^GtkTreeViewColumn, fixed_width: i32) ---

    @(link_name = "gtk_tree_view_column_set_min_width")
    gtk_tree_view_column_set_min_width :: proc(tree_column: ^GtkTreeViewColumn, min_width: i32) ---

    @(link_name = "gtk_tree_view_column_get_min_width")
    gtk_tree_view_column_get_min_width :: proc(tree_column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_set_max_width")
    gtk_tree_view_column_set_max_width :: proc(tree_column: ^GtkTreeViewColumn, max_width: i32) ---

    @(link_name = "gtk_tree_view_column_get_max_width")
    gtk_tree_view_column_get_max_width :: proc(tree_column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_clicked")
    gtk_tree_view_column_clicked :: proc(tree_column: ^GtkTreeViewColumn) ---

    @(link_name = "gtk_tree_view_column_set_title")
    gtk_tree_view_column_set_title :: proc(tree_column: ^GtkTreeViewColumn, title: cstring) ---

    @(link_name = "gtk_tree_view_column_get_title")
    gtk_tree_view_column_get_title :: proc(tree_column: ^GtkTreeViewColumn) -> cstring ---

    @(link_name = "gtk_tree_view_column_set_expand")
    gtk_tree_view_column_set_expand :: proc(tree_column: ^GtkTreeViewColumn, expand: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_get_expand")
    gtk_tree_view_column_get_expand :: proc(tree_column: ^GtkTreeViewColumn) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_set_clickable")
    gtk_tree_view_column_set_clickable :: proc(tree_column: ^GtkTreeViewColumn, clickable: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_get_clickable")
    gtk_tree_view_column_get_clickable :: proc(tree_column: ^GtkTreeViewColumn) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_set_alignment")
    gtk_tree_view_column_set_alignment :: proc(tree_column: ^GtkTreeViewColumn, xalign: f32) ---

    @(link_name = "gtk_tree_view_column_get_alignment")
    gtk_tree_view_column_get_alignment :: proc(tree_column: ^GtkTreeViewColumn) -> f32 ---

    @(link_name = "gtk_tree_view_column_set_reorderable")
    gtk_tree_view_column_set_reorderable :: proc(tree_column: ^GtkTreeViewColumn, reorderable: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_get_reorderable")
    gtk_tree_view_column_get_reorderable :: proc(tree_column: ^GtkTreeViewColumn) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_set_sort_column_id")
    gtk_tree_view_column_set_sort_column_id :: proc(tree_column: ^GtkTreeViewColumn, sort_column_id: i32) ---

    @(link_name = "gtk_tree_view_column_get_sort_column_id")
    gtk_tree_view_column_get_sort_column_id :: proc(tree_column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_set_sort_indicator")
    gtk_tree_view_column_set_sort_indicator :: proc(tree_column: ^GtkTreeViewColumn, setting: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_get_sort_indicator")
    gtk_tree_view_column_get_sort_indicator :: proc(tree_column: ^GtkTreeViewColumn) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_cell_set_cell_data")
    gtk_tree_view_column_cell_set_cell_data :: proc(tree_column: ^GtkTreeViewColumn, tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, is_expander: glib.gboolean, is_expanded: glib.gboolean) ---

    @(link_name = "gtk_tree_view_column_cell_get_size")
    gtk_tree_view_column_cell_get_size :: proc(tree_column: ^GtkTreeViewColumn, x_offset: ^i32, y_offset: ^i32, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_tree_view_column_cell_is_visible")
    gtk_tree_view_column_cell_is_visible :: proc(tree_column: ^GtkTreeViewColumn) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_focus_cell")
    gtk_tree_view_column_focus_cell :: proc(tree_column: ^GtkTreeViewColumn, cell: ^GtkCellRenderer) ---

    @(link_name = "gtk_tree_view_column_cell_get_position")
    gtk_tree_view_column_cell_get_position :: proc(tree_column: ^GtkTreeViewColumn, cell_renderer: ^GtkCellRenderer, x_offset: ^i32, width: ^i32) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_column_queue_resize")
    gtk_tree_view_column_queue_resize :: proc(tree_column: ^GtkTreeViewColumn) ---

    @(link_name = "gtk_list_store_get_type")
    gtk_list_store_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_list_store_new")
    gtk_list_store_new :: proc(n_columns: i32, #c_vararg var_args: ..any) -> ^GtkListStore ---

    @(link_name = "gtk_list_store_newv")
    gtk_list_store_newv :: proc(n_columns: i32, types: [^]gobj.GType) -> ^GtkListStore ---

    @(link_name = "gtk_list_store_set_column_types")
    gtk_list_store_set_column_types :: proc(list_store: ^GtkListStore, n_columns: i32, types: [^]gobj.GType) ---

    @(link_name = "gtk_list_store_set_value")
    gtk_list_store_set_value :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, column: i32, value: ^gobj.GValue) ---

    @(link_name = "gtk_list_store_set")
    gtk_list_store_set :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_list_store_set_valuesv")
    gtk_list_store_set_valuesv :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, columns: [^]i32, values: [^]gobj.GValue, n_values: i32) ---

    @(link_name = "gtk_list_store_set_valist")
    gtk_list_store_set_valist :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_list_store_remove")
    gtk_list_store_remove :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_list_store_insert")
    gtk_list_store_insert :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, position: i32) ---

    @(link_name = "gtk_list_store_insert_before")
    gtk_list_store_insert_before :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, sibling: ^GtkTreeIter) ---

    @(link_name = "gtk_list_store_insert_after")
    gtk_list_store_insert_after :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, sibling: ^GtkTreeIter) ---

    @(link_name = "gtk_list_store_insert_with_values")
    gtk_list_store_insert_with_values :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, position: i32, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_list_store_insert_with_valuesv")
    gtk_list_store_insert_with_valuesv :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter, position: i32, columns: [^]i32, values: [^]gobj.GValue, n_values: i32) ---

    @(link_name = "gtk_list_store_prepend")
    gtk_list_store_prepend :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_list_store_append")
    gtk_list_store_append :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_list_store_clear")
    gtk_list_store_clear :: proc(list_store: ^GtkListStore) ---

    @(link_name = "gtk_list_store_iter_is_valid")
    gtk_list_store_iter_is_valid :: proc(list_store: ^GtkListStore, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_list_store_reorder")
    gtk_list_store_reorder :: proc(store: ^GtkListStore, new_order: ^i32) ---

    @(link_name = "gtk_list_store_swap")
    gtk_list_store_swap :: proc(store: ^GtkListStore, a: ^GtkTreeIter, b: ^GtkTreeIter) ---

    @(link_name = "gtk_list_store_move_after")
    gtk_list_store_move_after :: proc(store: ^GtkListStore, iter: ^GtkTreeIter, position: ^GtkTreeIter) ---

    @(link_name = "gtk_list_store_move_before")
    gtk_list_store_move_before :: proc(store: ^GtkListStore, iter: ^GtkTreeIter, position: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_model_filter_get_type")
    gtk_tree_model_filter_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_model_filter_new")
    gtk_tree_model_filter_new :: proc(child_model: ^GtkTreeModel, root: ^GtkTreePath) -> ^GtkTreeModel ---

    @(link_name = "gtk_tree_model_filter_set_visible_func")
    gtk_tree_model_filter_set_visible_func :: proc(filter: ^GtkTreeModelFilter, func: GtkTreeModelFilterVisibleFunc, data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_model_filter_set_modify_func")
    gtk_tree_model_filter_set_modify_func :: proc(filter: ^GtkTreeModelFilter, n_columns: i32, types: [^]gobj.GType, func: GtkTreeModelFilterModifyFunc, data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_model_filter_set_visible_column")
    gtk_tree_model_filter_set_visible_column :: proc(filter: ^GtkTreeModelFilter, column: i32) ---

    @(link_name = "gtk_tree_model_filter_get_model")
    gtk_tree_model_filter_get_model :: proc(filter: ^GtkTreeModelFilter) -> ^GtkTreeModel ---

    @(link_name = "gtk_tree_model_filter_convert_child_iter_to_iter")
    gtk_tree_model_filter_convert_child_iter_to_iter :: proc(filter: ^GtkTreeModelFilter, filter_iter: ^GtkTreeIter, child_iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_filter_convert_iter_to_child_iter")
    gtk_tree_model_filter_convert_iter_to_child_iter :: proc(filter: ^GtkTreeModelFilter, child_iter: ^GtkTreeIter, filter_iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_model_filter_convert_child_path_to_path")
    gtk_tree_model_filter_convert_child_path_to_path :: proc(filter: ^GtkTreeModelFilter, child_path: ^GtkTreePath) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_model_filter_convert_path_to_child_path")
    gtk_tree_model_filter_convert_path_to_child_path :: proc(filter: ^GtkTreeModelFilter, filter_path: ^GtkTreePath) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_model_filter_refilter")
    gtk_tree_model_filter_refilter :: proc(filter: ^GtkTreeModelFilter) ---

    @(link_name = "gtk_tree_model_filter_clear_cache")
    gtk_tree_model_filter_clear_cache :: proc(filter: ^GtkTreeModelFilter) ---

    @(link_name = "gtk_entry_completion_get_type")
    gtk_entry_completion_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_entry_completion_new")
    gtk_entry_completion_new :: proc() -> ^GtkEntryCompletion ---

    @(link_name = "gtk_entry_completion_new_with_area")
    gtk_entry_completion_new_with_area :: proc(area: ^GtkCellArea) -> ^GtkEntryCompletion ---

    @(link_name = "gtk_entry_completion_set_model")
    gtk_entry_completion_set_model :: proc(completion: ^GtkEntryCompletion, model: ^GtkTreeModel) ---

    @(link_name = "gtk_entry_completion_get_model")
    gtk_entry_completion_get_model :: proc(completion: ^GtkEntryCompletion) -> ^GtkTreeModel ---

    @(link_name = "gtk_entry_completion_set_match_func")
    gtk_entry_completion_set_match_func :: proc(completion: ^GtkEntryCompletion, func: GtkEntryCompletionMatchFunc, func_data: glib.gpointer, func_notify: glib.GDestroyNotify) ---

    @(link_name = "gtk_entry_completion_set_minimum_key_length")
    gtk_entry_completion_set_minimum_key_length :: proc(completion: ^GtkEntryCompletion, length: i32) ---

    @(link_name = "gtk_entry_completion_get_minimum_key_length")
    gtk_entry_completion_get_minimum_key_length :: proc(completion: ^GtkEntryCompletion) -> i32 ---

    @(link_name = "gtk_entry_completion_compute_prefix")
    gtk_entry_completion_compute_prefix :: proc(completion: ^GtkEntryCompletion, key: cstring) -> cstring ---

    @(link_name = "gtk_entry_completion_complete")
    gtk_entry_completion_complete :: proc(completion: ^GtkEntryCompletion) ---

    @(link_name = "gtk_entry_completion_insert_prefix")
    gtk_entry_completion_insert_prefix :: proc(completion: ^GtkEntryCompletion) ---

    @(link_name = "gtk_entry_completion_set_inline_completion")
    gtk_entry_completion_set_inline_completion :: proc(completion: ^GtkEntryCompletion, inline_completion: glib.gboolean) ---

    @(link_name = "gtk_entry_completion_get_inline_completion")
    gtk_entry_completion_get_inline_completion :: proc(completion: ^GtkEntryCompletion) -> glib.gboolean ---

    @(link_name = "gtk_entry_completion_set_inline_selection")
    gtk_entry_completion_set_inline_selection :: proc(completion: ^GtkEntryCompletion, inline_selection: glib.gboolean) ---

    @(link_name = "gtk_entry_completion_get_inline_selection")
    gtk_entry_completion_get_inline_selection :: proc(completion: ^GtkEntryCompletion) -> glib.gboolean ---

    @(link_name = "gtk_entry_completion_set_popup_completion")
    gtk_entry_completion_set_popup_completion :: proc(completion: ^GtkEntryCompletion, popup_completion: glib.gboolean) ---

    @(link_name = "gtk_entry_completion_get_popup_completion")
    gtk_entry_completion_get_popup_completion :: proc(completion: ^GtkEntryCompletion) -> glib.gboolean ---

    @(link_name = "gtk_entry_completion_set_popup_set_width")
    gtk_entry_completion_set_popup_set_width :: proc(completion: ^GtkEntryCompletion, popup_set_width: glib.gboolean) ---

    @(link_name = "gtk_entry_completion_get_popup_set_width")
    gtk_entry_completion_get_popup_set_width :: proc(completion: ^GtkEntryCompletion) -> glib.gboolean ---

    @(link_name = "gtk_entry_completion_set_popup_single_match")
    gtk_entry_completion_set_popup_single_match :: proc(completion: ^GtkEntryCompletion, popup_single_match: glib.gboolean) ---

    @(link_name = "gtk_entry_completion_get_popup_single_match")
    gtk_entry_completion_get_popup_single_match :: proc(completion: ^GtkEntryCompletion) -> glib.gboolean ---

    @(link_name = "gtk_entry_completion_get_completion_prefix")
    gtk_entry_completion_get_completion_prefix :: proc(completion: ^GtkEntryCompletion) -> cstring ---

    @(link_name = "gtk_entry_completion_set_text_column")
    gtk_entry_completion_set_text_column :: proc(completion: ^GtkEntryCompletion, column: i32) ---

    @(link_name = "gtk_entry_completion_get_text_column")
    gtk_entry_completion_get_text_column :: proc(completion: ^GtkEntryCompletion) -> i32 ---

    @(link_name = "gtk_tree_view_get_type")
    gtk_tree_view_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_view_get_model")
    gtk_tree_view_get_model :: proc(tree_view: ^GtkTreeView) -> ^GtkTreeModel ---

    @(link_name = "gtk_tree_view_set_model")
    gtk_tree_view_set_model :: proc(tree_view: ^GtkTreeView, model: ^GtkTreeModel) ---

    @(link_name = "gtk_tree_view_get_selection")
    gtk_tree_view_get_selection :: proc(tree_view: ^GtkTreeView) -> ^GtkTreeSelection ---

    @(link_name = "gtk_tree_view_get_headers_visible")
    gtk_tree_view_get_headers_visible :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_headers_visible")
    gtk_tree_view_set_headers_visible :: proc(tree_view: ^GtkTreeView, headers_visible: glib.gboolean) ---

    @(link_name = "gtk_tree_view_columns_autosize")
    gtk_tree_view_columns_autosize :: proc(tree_view: ^GtkTreeView) ---

    @(link_name = "gtk_tree_view_get_headers_clickable")
    gtk_tree_view_get_headers_clickable :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_headers_clickable")
    gtk_tree_view_set_headers_clickable :: proc(tree_view: ^GtkTreeView, setting: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_activate_on_single_click")
    gtk_tree_view_get_activate_on_single_click :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_activate_on_single_click")
    gtk_tree_view_set_activate_on_single_click :: proc(tree_view: ^GtkTreeView, single: glib.gboolean) ---

    @(link_name = "gtk_tree_view_append_column")
    gtk_tree_view_append_column :: proc(tree_view: ^GtkTreeView, column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_remove_column")
    gtk_tree_view_remove_column :: proc(tree_view: ^GtkTreeView, column: ^GtkTreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_insert_column")
    gtk_tree_view_insert_column :: proc(tree_view: ^GtkTreeView, column: ^GtkTreeViewColumn, position: i32) -> i32 ---

    @(link_name = "gtk_tree_view_insert_column_with_attributes")
    gtk_tree_view_insert_column_with_attributes :: proc(tree_view: ^GtkTreeView, position: i32, title: cstring, cell: ^GtkCellRenderer, #c_vararg var_args: ..any) -> i32 ---

    @(link_name = "gtk_tree_view_insert_column_with_data_func")
    gtk_tree_view_insert_column_with_data_func :: proc(tree_view: ^GtkTreeView, position: i32, title: cstring, cell: ^GtkCellRenderer, func: GtkTreeCellDataFunc, data: glib.gpointer, dnotify: glib.GDestroyNotify) -> i32 ---

    @(link_name = "gtk_tree_view_get_n_columns")
    gtk_tree_view_get_n_columns :: proc(tree_view: ^GtkTreeView) -> glib.guint ---

    @(link_name = "gtk_tree_view_get_column")
    gtk_tree_view_get_column :: proc(tree_view: ^GtkTreeView, n: i32) -> ^GtkTreeViewColumn ---

    @(link_name = "gtk_tree_view_get_columns")
    gtk_tree_view_get_columns :: proc(tree_view: ^GtkTreeView) -> ^glib.GList ---

    @(link_name = "gtk_tree_view_move_column_after")
    gtk_tree_view_move_column_after :: proc(tree_view: ^GtkTreeView, column: ^GtkTreeViewColumn, base_column: ^GtkTreeViewColumn) ---

    @(link_name = "gtk_tree_view_set_expander_column")
    gtk_tree_view_set_expander_column :: proc(tree_view: ^GtkTreeView, column: ^GtkTreeViewColumn) ---

    @(link_name = "gtk_tree_view_get_expander_column")
    gtk_tree_view_get_expander_column :: proc(tree_view: ^GtkTreeView) -> ^GtkTreeViewColumn ---

    @(link_name = "gtk_tree_view_set_column_drag_function")
    gtk_tree_view_set_column_drag_function :: proc(tree_view: ^GtkTreeView, func: GtkTreeViewColumnDropFunc, user_data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_view_scroll_to_point")
    gtk_tree_view_scroll_to_point :: proc(tree_view: ^GtkTreeView, tree_x: i32, tree_y: i32) ---

    @(link_name = "gtk_tree_view_scroll_to_cell")
    gtk_tree_view_scroll_to_cell :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath, column: ^GtkTreeViewColumn, use_align: glib.gboolean, row_align: f32, col_align: f32) ---

    @(link_name = "gtk_tree_view_row_activated")
    gtk_tree_view_row_activated :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath, column: ^GtkTreeViewColumn) ---

    @(link_name = "gtk_tree_view_expand_all")
    gtk_tree_view_expand_all :: proc(tree_view: ^GtkTreeView) ---

    @(link_name = "gtk_tree_view_collapse_all")
    gtk_tree_view_collapse_all :: proc(tree_view: ^GtkTreeView) ---

    @(link_name = "gtk_tree_view_expand_to_path")
    gtk_tree_view_expand_to_path :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_view_expand_row")
    gtk_tree_view_expand_row :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath, open_all: glib.gboolean) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_collapse_row")
    gtk_tree_view_collapse_row :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_map_expanded_rows")
    gtk_tree_view_map_expanded_rows :: proc(tree_view: ^GtkTreeView, func: GtkTreeViewMappingFunc, data: glib.gpointer) ---

    @(link_name = "gtk_tree_view_row_expanded")
    gtk_tree_view_row_expanded :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_reorderable")
    gtk_tree_view_set_reorderable :: proc(tree_view: ^GtkTreeView, reorderable: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_reorderable")
    gtk_tree_view_get_reorderable :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_cursor")
    gtk_tree_view_set_cursor :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath, focus_column: ^GtkTreeViewColumn, start_editing: glib.gboolean) ---

    @(link_name = "gtk_tree_view_set_cursor_on_cell")
    gtk_tree_view_set_cursor_on_cell :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath, focus_column: ^GtkTreeViewColumn, focus_cell: ^GtkCellRenderer, start_editing: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_cursor")
    gtk_tree_view_get_cursor :: proc(tree_view: ^GtkTreeView, path: ^^GtkTreePath, focus_column: ^^GtkTreeViewColumn) ---

    @(link_name = "gtk_tree_view_get_path_at_pos")
    gtk_tree_view_get_path_at_pos :: proc(tree_view: ^GtkTreeView, x: i32, y: i32, path: ^^GtkTreePath, column: ^^GtkTreeViewColumn, cell_x: ^i32, cell_y: ^i32) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_get_visible_range")
    gtk_tree_view_get_visible_range :: proc(tree_view: ^GtkTreeView, start_path: ^^GtkTreePath, end_path: ^^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_is_blank_at_pos")
    gtk_tree_view_is_blank_at_pos :: proc(tree_view: ^GtkTreeView, x: i32, y: i32, path: ^^GtkTreePath, column: ^^GtkTreeViewColumn, cell_x: ^i32, cell_y: ^i32) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_unset_rows_drag_source")
    gtk_tree_view_unset_rows_drag_source :: proc(tree_view: ^GtkTreeView) ---

    @(link_name = "gtk_tree_view_unset_rows_drag_dest")
    gtk_tree_view_unset_rows_drag_dest :: proc(tree_view: ^GtkTreeView) ---

    @(link_name = "gtk_tree_view_set_drag_dest_row")
    gtk_tree_view_set_drag_dest_row :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath, pos: GtkTreeViewDropPosition) ---

    @(link_name = "gtk_tree_view_get_drag_dest_row")
    gtk_tree_view_get_drag_dest_row :: proc(tree_view: ^GtkTreeView, path: ^^GtkTreePath, pos: [^]GtkTreeViewDropPosition) ---

    @(link_name = "gtk_tree_view_get_dest_row_at_pos")
    gtk_tree_view_get_dest_row_at_pos :: proc(tree_view: ^GtkTreeView, drag_x: i32, drag_y: i32, path: ^^GtkTreePath, pos: [^]GtkTreeViewDropPosition) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_enable_search")
    gtk_tree_view_set_enable_search :: proc(tree_view: ^GtkTreeView, enable_search: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_enable_search")
    gtk_tree_view_get_enable_search :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_get_search_column")
    gtk_tree_view_get_search_column :: proc(tree_view: ^GtkTreeView) -> i32 ---

    @(link_name = "gtk_tree_view_set_search_column")
    gtk_tree_view_set_search_column :: proc(tree_view: ^GtkTreeView, column: i32) ---

    @(link_name = "gtk_tree_view_get_search_equal_func")
    gtk_tree_view_get_search_equal_func :: proc(tree_view: ^GtkTreeView) -> GtkTreeViewSearchEqualFunc ---

    @(link_name = "gtk_tree_view_set_search_equal_func")
    gtk_tree_view_set_search_equal_func :: proc(tree_view: ^GtkTreeView, search_equal_func: GtkTreeViewSearchEqualFunc, search_user_data: glib.gpointer, search_destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_view_convert_widget_to_tree_coords")
    gtk_tree_view_convert_widget_to_tree_coords :: proc(tree_view: ^GtkTreeView, wx: i32, wy: i32, tx: ^i32, ty: ^i32) ---

    @(link_name = "gtk_tree_view_convert_tree_to_widget_coords")
    gtk_tree_view_convert_tree_to_widget_coords :: proc(tree_view: ^GtkTreeView, tx: i32, ty: i32, wx: ^i32, wy: ^i32) ---

    @(link_name = "gtk_tree_view_convert_widget_to_bin_window_coords")
    gtk_tree_view_convert_widget_to_bin_window_coords :: proc(tree_view: ^GtkTreeView, wx: i32, wy: i32, bx: ^i32, by: ^i32) ---

    @(link_name = "gtk_tree_view_convert_bin_window_to_widget_coords")
    gtk_tree_view_convert_bin_window_to_widget_coords :: proc(tree_view: ^GtkTreeView, bx: i32, by: i32, wx: ^i32, wy: ^i32) ---

    @(link_name = "gtk_tree_view_convert_tree_to_bin_window_coords")
    gtk_tree_view_convert_tree_to_bin_window_coords :: proc(tree_view: ^GtkTreeView, tx: i32, ty: i32, bx: ^i32, by: ^i32) ---

    @(link_name = "gtk_tree_view_convert_bin_window_to_tree_coords")
    gtk_tree_view_convert_bin_window_to_tree_coords :: proc(tree_view: ^GtkTreeView, bx: i32, by: i32, tx: ^i32, ty: ^i32) ---

    @(link_name = "gtk_tree_view_set_fixed_height_mode")
    gtk_tree_view_set_fixed_height_mode :: proc(tree_view: ^GtkTreeView, enable: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_fixed_height_mode")
    gtk_tree_view_get_fixed_height_mode :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_hover_selection")
    gtk_tree_view_set_hover_selection :: proc(tree_view: ^GtkTreeView, hover: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_hover_selection")
    gtk_tree_view_get_hover_selection :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_hover_expand")
    gtk_tree_view_set_hover_expand :: proc(tree_view: ^GtkTreeView, expand: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_hover_expand")
    gtk_tree_view_get_hover_expand :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_rubber_banding")
    gtk_tree_view_set_rubber_banding :: proc(tree_view: ^GtkTreeView, enable: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_rubber_banding")
    gtk_tree_view_get_rubber_banding :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_is_rubber_banding_active")
    gtk_tree_view_is_rubber_banding_active :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_get_row_separator_func")
    gtk_tree_view_get_row_separator_func :: proc(tree_view: ^GtkTreeView) -> GtkTreeViewRowSeparatorFunc ---

    @(link_name = "gtk_tree_view_set_row_separator_func")
    gtk_tree_view_set_row_separator_func :: proc(tree_view: ^GtkTreeView, func: GtkTreeViewRowSeparatorFunc, data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_view_get_enable_tree_lines")
    gtk_tree_view_get_enable_tree_lines :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_enable_tree_lines")
    gtk_tree_view_set_enable_tree_lines :: proc(tree_view: ^GtkTreeView, enabled: glib.gboolean) ---

    @(link_name = "gtk_tree_view_set_show_expanders")
    gtk_tree_view_set_show_expanders :: proc(tree_view: ^GtkTreeView, enabled: glib.gboolean) ---

    @(link_name = "gtk_tree_view_get_show_expanders")
    gtk_tree_view_get_show_expanders :: proc(tree_view: ^GtkTreeView) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_level_indentation")
    gtk_tree_view_set_level_indentation :: proc(tree_view: ^GtkTreeView, indentation: i32) ---

    @(link_name = "gtk_tree_view_get_level_indentation")
    gtk_tree_view_get_level_indentation :: proc(tree_view: ^GtkTreeView) -> i32 ---

    @(link_name = "gtk_tree_view_get_tooltip_context")
    gtk_tree_view_get_tooltip_context :: proc(tree_view: ^GtkTreeView, x: i32, y: i32, keyboard_tip: glib.gboolean, model: ^^GtkTreeModel, path: ^^GtkTreePath, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_view_set_tooltip_column")
    gtk_tree_view_set_tooltip_column :: proc(tree_view: ^GtkTreeView, column: i32) ---

    @(link_name = "gtk_tree_view_get_tooltip_column")
    gtk_tree_view_get_tooltip_column :: proc(tree_view: ^GtkTreeView) -> i32 ---

    @(link_name = "gtk_combo_box_get_type")
    gtk_combo_box_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_combo_box_get_active")
    gtk_combo_box_get_active :: proc(combo_box: ^GtkComboBox) -> i32 ---

    @(link_name = "gtk_combo_box_set_active")
    gtk_combo_box_set_active :: proc(combo_box: ^GtkComboBox, index_: i32) ---

    @(link_name = "gtk_combo_box_get_active_iter")
    gtk_combo_box_get_active_iter :: proc(combo_box: ^GtkComboBox, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_combo_box_set_active_iter")
    gtk_combo_box_set_active_iter :: proc(combo_box: ^GtkComboBox, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_combo_box_set_model")
    gtk_combo_box_set_model :: proc(combo_box: ^GtkComboBox, model: ^GtkTreeModel) ---

    @(link_name = "gtk_combo_box_get_model")
    gtk_combo_box_get_model :: proc(combo_box: ^GtkComboBox) -> ^GtkTreeModel ---

    @(link_name = "gtk_combo_box_get_row_separator_func")
    gtk_combo_box_get_row_separator_func :: proc(combo_box: ^GtkComboBox) -> GtkTreeViewRowSeparatorFunc ---

    @(link_name = "gtk_combo_box_set_row_separator_func")
    gtk_combo_box_set_row_separator_func :: proc(combo_box: ^GtkComboBox, func: GtkTreeViewRowSeparatorFunc, data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_combo_box_get_has_entry")
    gtk_combo_box_get_has_entry :: proc(combo_box: ^GtkComboBox) -> glib.gboolean ---

    @(link_name = "gtk_combo_box_set_entry_text_column")
    gtk_combo_box_set_entry_text_column :: proc(combo_box: ^GtkComboBox, text_column: i32) ---

    @(link_name = "gtk_combo_box_get_entry_text_column")
    gtk_combo_box_get_entry_text_column :: proc(combo_box: ^GtkComboBox) -> i32 ---

    @(link_name = "gtk_combo_box_set_popup_fixed_width")
    gtk_combo_box_set_popup_fixed_width :: proc(combo_box: ^GtkComboBox, fixed: glib.gboolean) ---

    @(link_name = "gtk_combo_box_get_popup_fixed_width")
    gtk_combo_box_get_popup_fixed_width :: proc(combo_box: ^GtkComboBox) -> glib.gboolean ---

    @(link_name = "gtk_combo_box_popup")
    gtk_combo_box_popup :: proc(combo_box: ^GtkComboBox) ---

    @(link_name = "gtk_combo_box_popdown")
    gtk_combo_box_popdown :: proc(combo_box: ^GtkComboBox) ---

    @(link_name = "gtk_combo_box_get_id_column")
    gtk_combo_box_get_id_column :: proc(combo_box: ^GtkComboBox) -> i32 ---

    @(link_name = "gtk_combo_box_set_id_column")
    gtk_combo_box_set_id_column :: proc(combo_box: ^GtkComboBox, id_column: i32) ---

    @(link_name = "gtk_combo_box_get_active_id")
    gtk_combo_box_get_active_id :: proc(combo_box: ^GtkComboBox) -> cstring ---

    @(link_name = "gtk_combo_box_set_active_id")
    gtk_combo_box_set_active_id :: proc(combo_box: ^GtkComboBox, active_id: cstring) -> glib.gboolean ---

    @(link_name = "gtk_combo_box_text_get_type")
    gtk_combo_box_text_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_combo_box_text_append_text")
    gtk_combo_box_text_append_text :: proc(combo_box: ^GtkComboBoxText, text: cstring) ---

    @(link_name = "gtk_combo_box_text_insert_text")
    gtk_combo_box_text_insert_text :: proc(combo_box: ^GtkComboBoxText, position: i32, text: cstring) ---

    @(link_name = "gtk_combo_box_text_prepend_text")
    gtk_combo_box_text_prepend_text :: proc(combo_box: ^GtkComboBoxText, text: cstring) ---

    @(link_name = "gtk_combo_box_text_remove")
    gtk_combo_box_text_remove :: proc(combo_box: ^GtkComboBoxText, position: i32) ---

    @(link_name = "gtk_combo_box_text_remove_all")
    gtk_combo_box_text_remove_all :: proc(combo_box: ^GtkComboBoxText) ---

    @(link_name = "gtk_combo_box_text_get_active_text")
    gtk_combo_box_text_get_active_text :: proc(combo_box: ^GtkComboBoxText) -> cstring ---

    @(link_name = "gtk_combo_box_text_insert")
    gtk_combo_box_text_insert :: proc(combo_box: ^GtkComboBoxText, position: i32, id: cstring, text: cstring) ---

    @(link_name = "gtk_combo_box_text_append")
    gtk_combo_box_text_append :: proc(combo_box: ^GtkComboBoxText, id: cstring, text: cstring) ---

    @(link_name = "gtk_combo_box_text_prepend")
    gtk_combo_box_text_prepend :: proc(combo_box: ^GtkComboBoxText, id: cstring, text: cstring) ---

    @(link_name = "gtk_file_chooser_get_type")
    gtk_file_chooser_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_file_chooser_error_quark")
    gtk_file_chooser_error_quark :: proc() -> glib.GQuark ---

    @(link_name = "gtk_file_chooser_set_action")
    gtk_file_chooser_set_action :: proc(chooser: ^GtkFileChooser, action: GtkFileChooserAction) ---

    @(link_name = "gtk_file_chooser_get_action")
    gtk_file_chooser_get_action :: proc(chooser: ^GtkFileChooser) -> GtkFileChooserAction ---

    @(link_name = "gtk_file_chooser_set_select_multiple")
    gtk_file_chooser_set_select_multiple :: proc(chooser: ^GtkFileChooser, select_multiple: glib.gboolean) ---

    @(link_name = "gtk_file_chooser_get_select_multiple")
    gtk_file_chooser_get_select_multiple :: proc(chooser: ^GtkFileChooser) -> glib.gboolean ---

    @(link_name = "gtk_file_chooser_set_create_folders")
    gtk_file_chooser_set_create_folders :: proc(chooser: ^GtkFileChooser, create_folders: glib.gboolean) ---

    @(link_name = "gtk_file_chooser_get_create_folders")
    gtk_file_chooser_get_create_folders :: proc(chooser: ^GtkFileChooser) -> glib.gboolean ---

    @(link_name = "gtk_file_chooser_set_current_name")
    gtk_file_chooser_set_current_name :: proc(chooser: ^GtkFileChooser, name: cstring) ---

    @(link_name = "gtk_file_chooser_get_current_name")
    gtk_file_chooser_get_current_name :: proc(chooser: ^GtkFileChooser) -> cstring ---

    @(link_name = "gtk_file_chooser_get_file")
    gtk_file_chooser_get_file :: proc(chooser: ^GtkFileChooser) -> ^gio.GFile ---

    @(link_name = "gtk_file_chooser_set_file")
    gtk_file_chooser_set_file :: proc(chooser: ^GtkFileChooser, file: ^gio.GFile, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_file_chooser_get_files")
    gtk_file_chooser_get_files :: proc(chooser: ^GtkFileChooser) -> ^gio.GListModel ---

    @(link_name = "gtk_file_chooser_set_current_folder")
    gtk_file_chooser_set_current_folder :: proc(chooser: ^GtkFileChooser, file: ^gio.GFile, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_file_chooser_get_current_folder")
    gtk_file_chooser_get_current_folder :: proc(chooser: ^GtkFileChooser) -> ^gio.GFile ---

    @(link_name = "gtk_file_chooser_get_filters")
    gtk_file_chooser_get_filters :: proc(chooser: ^GtkFileChooser) -> ^gio.GListModel ---

    @(link_name = "gtk_file_chooser_add_shortcut_folder")
    gtk_file_chooser_add_shortcut_folder :: proc(chooser: ^GtkFileChooser, folder: ^gio.GFile, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_file_chooser_remove_shortcut_folder")
    gtk_file_chooser_remove_shortcut_folder :: proc(chooser: ^GtkFileChooser, folder: ^gio.GFile, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_file_chooser_get_shortcut_folders")
    gtk_file_chooser_get_shortcut_folders :: proc(chooser: ^GtkFileChooser) -> ^gio.GListModel ---

    @(link_name = "gtk_file_chooser_add_choice")
    gtk_file_chooser_add_choice :: proc(chooser: ^GtkFileChooser, id: cstring, label: cstring, options: [^]cstring, option_labels: [^]cstring) ---

    @(link_name = "gtk_file_chooser_remove_choice")
    gtk_file_chooser_remove_choice :: proc(chooser: ^GtkFileChooser, id: cstring) ---

    @(link_name = "gtk_file_chooser_set_choice")
    gtk_file_chooser_set_choice :: proc(chooser: ^GtkFileChooser, id: cstring, option: cstring) ---

    @(link_name = "gtk_file_chooser_get_choice")
    gtk_file_chooser_get_choice :: proc(chooser: ^GtkFileChooser, id: cstring) -> cstring ---

    @(link_name = "gtk_file_chooser_dialog_get_type")
    gtk_file_chooser_dialog_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_file_chooser_native_get_type")
    gtk_file_chooser_native_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_file_chooser_native_get_accept_label")
    gtk_file_chooser_native_get_accept_label :: proc(self: ^GtkFileChooserNative) -> cstring ---

    @(link_name = "gtk_file_chooser_native_set_accept_label")
    gtk_file_chooser_native_set_accept_label :: proc(self: ^GtkFileChooserNative, accept_label: cstring) ---

    @(link_name = "gtk_file_chooser_native_get_cancel_label")
    gtk_file_chooser_native_get_cancel_label :: proc(self: ^GtkFileChooserNative) -> cstring ---

    @(link_name = "gtk_file_chooser_native_set_cancel_label")
    gtk_file_chooser_native_set_cancel_label :: proc(self: ^GtkFileChooserNative, cancel_label: cstring) ---

    @(link_name = "gtk_file_chooser_widget_get_type")
    gtk_file_chooser_widget_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_font_button_get_type")
    gtk_font_button_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_font_button_get_title")
    gtk_font_button_get_title :: proc(font_button: ^GtkFontButton) -> cstring ---

    @(link_name = "gtk_font_button_set_title")
    gtk_font_button_set_title :: proc(font_button: ^GtkFontButton, title: cstring) ---

    @(link_name = "gtk_font_button_get_modal")
    gtk_font_button_get_modal :: proc(font_button: ^GtkFontButton) -> glib.gboolean ---

    @(link_name = "gtk_font_button_set_modal")
    gtk_font_button_set_modal :: proc(font_button: ^GtkFontButton, modal: glib.gboolean) ---

    @(link_name = "gtk_font_button_get_use_font")
    gtk_font_button_get_use_font :: proc(font_button: ^GtkFontButton) -> glib.gboolean ---

    @(link_name = "gtk_font_button_set_use_font")
    gtk_font_button_set_use_font :: proc(font_button: ^GtkFontButton, use_font: glib.gboolean) ---

    @(link_name = "gtk_font_button_get_use_size")
    gtk_font_button_get_use_size :: proc(font_button: ^GtkFontButton) -> glib.gboolean ---

    @(link_name = "gtk_font_button_set_use_size")
    gtk_font_button_set_use_size :: proc(font_button: ^GtkFontButton, use_size: glib.gboolean) ---

    @(link_name = "gtk_font_chooser_get_type")
    gtk_font_chooser_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_font_chooser_get_font_size")
    gtk_font_chooser_get_font_size :: proc(fontchooser: ^GtkFontChooser) -> i32 ---

    @(link_name = "gtk_font_chooser_get_font")
    gtk_font_chooser_get_font :: proc(fontchooser: ^GtkFontChooser) -> cstring ---

    @(link_name = "gtk_font_chooser_set_font")
    gtk_font_chooser_set_font :: proc(fontchooser: ^GtkFontChooser, fontname: cstring) ---

    @(link_name = "gtk_font_chooser_get_preview_text")
    gtk_font_chooser_get_preview_text :: proc(fontchooser: ^GtkFontChooser) -> cstring ---

    @(link_name = "gtk_font_chooser_set_preview_text")
    gtk_font_chooser_set_preview_text :: proc(fontchooser: ^GtkFontChooser, text: cstring) ---

    @(link_name = "gtk_font_chooser_get_show_preview_entry")
    gtk_font_chooser_get_show_preview_entry :: proc(fontchooser: ^GtkFontChooser) -> glib.gboolean ---

    @(link_name = "gtk_font_chooser_set_show_preview_entry")
    gtk_font_chooser_set_show_preview_entry :: proc(fontchooser: ^GtkFontChooser, show_preview_entry: glib.gboolean) ---

    @(link_name = "gtk_font_chooser_set_filter_func")
    gtk_font_chooser_set_filter_func :: proc(fontchooser: ^GtkFontChooser, filter: GtkFontFilterFunc, user_data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_font_chooser_set_level")
    gtk_font_chooser_set_level :: proc(fontchooser: ^GtkFontChooser, level: GtkFontChooserLevel) ---

    @(link_name = "gtk_font_chooser_get_level")
    gtk_font_chooser_get_level :: proc(fontchooser: ^GtkFontChooser) -> GtkFontChooserLevel ---

    @(link_name = "gtk_font_chooser_get_font_features")
    gtk_font_chooser_get_font_features :: proc(fontchooser: ^GtkFontChooser) -> cstring ---

    @(link_name = "gtk_font_chooser_get_language")
    gtk_font_chooser_get_language :: proc(fontchooser: ^GtkFontChooser) -> cstring ---

    @(link_name = "gtk_font_chooser_set_language")
    gtk_font_chooser_set_language :: proc(fontchooser: ^GtkFontChooser, language: cstring) ---

    @(link_name = "gtk_font_chooser_dialog_get_type")
    gtk_font_chooser_dialog_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_font_chooser_widget_get_type")
    gtk_font_chooser_widget_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_icon_view_get_type")
    gtk_icon_view_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_icon_view_set_model")
    gtk_icon_view_set_model :: proc(icon_view: ^GtkIconView, model: ^GtkTreeModel) ---

    @(link_name = "gtk_icon_view_get_model")
    gtk_icon_view_get_model :: proc(icon_view: ^GtkIconView) -> ^GtkTreeModel ---

    @(link_name = "gtk_icon_view_set_text_column")
    gtk_icon_view_set_text_column :: proc(icon_view: ^GtkIconView, column: i32) ---

    @(link_name = "gtk_icon_view_get_text_column")
    gtk_icon_view_get_text_column :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_markup_column")
    gtk_icon_view_set_markup_column :: proc(icon_view: ^GtkIconView, column: i32) ---

    @(link_name = "gtk_icon_view_get_markup_column")
    gtk_icon_view_get_markup_column :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_pixbuf_column")
    gtk_icon_view_set_pixbuf_column :: proc(icon_view: ^GtkIconView, column: i32) ---

    @(link_name = "gtk_icon_view_get_pixbuf_column")
    gtk_icon_view_get_pixbuf_column :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_columns")
    gtk_icon_view_set_columns :: proc(icon_view: ^GtkIconView, columns: i32) ---

    @(link_name = "gtk_icon_view_get_columns")
    gtk_icon_view_get_columns :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_item_width")
    gtk_icon_view_set_item_width :: proc(icon_view: ^GtkIconView, item_width: i32) ---

    @(link_name = "gtk_icon_view_get_item_width")
    gtk_icon_view_get_item_width :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_spacing")
    gtk_icon_view_set_spacing :: proc(icon_view: ^GtkIconView, spacing: i32) ---

    @(link_name = "gtk_icon_view_get_spacing")
    gtk_icon_view_get_spacing :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_row_spacing")
    gtk_icon_view_set_row_spacing :: proc(icon_view: ^GtkIconView, row_spacing: i32) ---

    @(link_name = "gtk_icon_view_get_row_spacing")
    gtk_icon_view_get_row_spacing :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_column_spacing")
    gtk_icon_view_set_column_spacing :: proc(icon_view: ^GtkIconView, column_spacing: i32) ---

    @(link_name = "gtk_icon_view_get_column_spacing")
    gtk_icon_view_get_column_spacing :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_margin")
    gtk_icon_view_set_margin :: proc(icon_view: ^GtkIconView, margin: i32) ---

    @(link_name = "gtk_icon_view_get_margin")
    gtk_icon_view_get_margin :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_item_padding")
    gtk_icon_view_set_item_padding :: proc(icon_view: ^GtkIconView, item_padding: i32) ---

    @(link_name = "gtk_icon_view_get_item_padding")
    gtk_icon_view_get_item_padding :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_icon_view_get_path_at_pos")
    gtk_icon_view_get_path_at_pos :: proc(icon_view: ^GtkIconView, x: i32, y: i32) -> ^GtkTreePath ---

    @(link_name = "gtk_icon_view_get_item_at_pos")
    gtk_icon_view_get_item_at_pos :: proc(icon_view: ^GtkIconView, x: i32, y: i32, path: ^^GtkTreePath, cell: ^^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_get_visible_range")
    gtk_icon_view_get_visible_range :: proc(icon_view: ^GtkIconView, start_path: ^^GtkTreePath, end_path: ^^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_set_activate_on_single_click")
    gtk_icon_view_set_activate_on_single_click :: proc(icon_view: ^GtkIconView, single: glib.gboolean) ---

    @(link_name = "gtk_icon_view_get_activate_on_single_click")
    gtk_icon_view_get_activate_on_single_click :: proc(icon_view: ^GtkIconView) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_selected_foreach")
    gtk_icon_view_selected_foreach :: proc(icon_view: ^GtkIconView, func: GtkIconViewForeachFunc, data: glib.gpointer) ---

    @(link_name = "gtk_icon_view_select_path")
    gtk_icon_view_select_path :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath) ---

    @(link_name = "gtk_icon_view_unselect_path")
    gtk_icon_view_unselect_path :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath) ---

    @(link_name = "gtk_icon_view_path_is_selected")
    gtk_icon_view_path_is_selected :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_get_item_row")
    gtk_icon_view_get_item_row :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath) -> i32 ---

    @(link_name = "gtk_icon_view_get_item_column")
    gtk_icon_view_get_item_column :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath) -> i32 ---

    @(link_name = "gtk_icon_view_get_selected_items")
    gtk_icon_view_get_selected_items :: proc(icon_view: ^GtkIconView) -> ^glib.GList ---

    @(link_name = "gtk_icon_view_select_all")
    gtk_icon_view_select_all :: proc(icon_view: ^GtkIconView) ---

    @(link_name = "gtk_icon_view_unselect_all")
    gtk_icon_view_unselect_all :: proc(icon_view: ^GtkIconView) ---

    @(link_name = "gtk_icon_view_item_activated")
    gtk_icon_view_item_activated :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath) ---

    @(link_name = "gtk_icon_view_set_cursor")
    gtk_icon_view_set_cursor :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath, cell: ^GtkCellRenderer, start_editing: glib.gboolean) ---

    @(link_name = "gtk_icon_view_get_cursor")
    gtk_icon_view_get_cursor :: proc(icon_view: ^GtkIconView, path: ^^GtkTreePath, cell: ^^GtkCellRenderer) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_scroll_to_path")
    gtk_icon_view_scroll_to_path :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath, use_align: glib.gboolean, row_align: f32, col_align: f32) ---

    @(link_name = "gtk_icon_view_unset_model_drag_source")
    gtk_icon_view_unset_model_drag_source :: proc(icon_view: ^GtkIconView) ---

    @(link_name = "gtk_icon_view_unset_model_drag_dest")
    gtk_icon_view_unset_model_drag_dest :: proc(icon_view: ^GtkIconView) ---

    @(link_name = "gtk_icon_view_set_reorderable")
    gtk_icon_view_set_reorderable :: proc(icon_view: ^GtkIconView, reorderable: glib.gboolean) ---

    @(link_name = "gtk_icon_view_get_reorderable")
    gtk_icon_view_get_reorderable :: proc(icon_view: ^GtkIconView) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_set_drag_dest_item")
    gtk_icon_view_set_drag_dest_item :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath, pos: GtkIconViewDropPosition) ---

    @(link_name = "gtk_icon_view_get_drag_dest_item")
    gtk_icon_view_get_drag_dest_item :: proc(icon_view: ^GtkIconView, path: ^^GtkTreePath, pos: [^]GtkIconViewDropPosition) ---

    @(link_name = "gtk_icon_view_get_dest_item_at_pos")
    gtk_icon_view_get_dest_item_at_pos :: proc(icon_view: ^GtkIconView, drag_x: i32, drag_y: i32, path: ^^GtkTreePath, pos: [^]GtkIconViewDropPosition) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_get_tooltip_context")
    gtk_icon_view_get_tooltip_context :: proc(icon_view: ^GtkIconView, x: i32, y: i32, keyboard_tip: glib.gboolean, model: ^^GtkTreeModel, path: ^^GtkTreePath, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_set_tooltip_column")
    gtk_icon_view_set_tooltip_column :: proc(icon_view: ^GtkIconView, column: i32) ---

    @(link_name = "gtk_icon_view_get_tooltip_column")
    gtk_icon_view_get_tooltip_column :: proc(icon_view: ^GtkIconView) -> i32 ---

    @(link_name = "gtk_info_bar_get_type")
    gtk_info_bar_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_info_bar_add_buttons")
    gtk_info_bar_add_buttons :: proc(info_bar: ^GtkInfoBar, first_button_text: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_info_bar_set_response_sensitive")
    gtk_info_bar_set_response_sensitive :: proc(info_bar: ^GtkInfoBar, response_id: i32, setting: glib.gboolean) ---

    @(link_name = "gtk_info_bar_set_default_response")
    gtk_info_bar_set_default_response :: proc(info_bar: ^GtkInfoBar, response_id: i32) ---

    @(link_name = "gtk_info_bar_response")
    gtk_info_bar_response :: proc(info_bar: ^GtkInfoBar, response_id: i32) ---

    @(link_name = "gtk_info_bar_set_show_close_button")
    gtk_info_bar_set_show_close_button :: proc(info_bar: ^GtkInfoBar, setting: glib.gboolean) ---

    @(link_name = "gtk_info_bar_get_show_close_button")
    gtk_info_bar_get_show_close_button :: proc(info_bar: ^GtkInfoBar) -> glib.gboolean ---

    @(link_name = "gtk_info_bar_set_revealed")
    gtk_info_bar_set_revealed :: proc(info_bar: ^GtkInfoBar, revealed: glib.gboolean) ---

    @(link_name = "gtk_info_bar_get_revealed")
    gtk_info_bar_get_revealed :: proc(info_bar: ^GtkInfoBar) -> glib.gboolean ---

    @(link_name = "gtk_lock_button_get_type")
    gtk_lock_button_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_lock_button_get_permission")
    gtk_lock_button_get_permission :: proc(button: ^GtkLockButton) -> ^gio.GPermission ---

    @(link_name = "gtk_lock_button_set_permission")
    gtk_lock_button_set_permission :: proc(button: ^GtkLockButton, permission: ^gio.GPermission) ---

    @(link_name = "gtk_message_dialog_get_type")
    gtk_message_dialog_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_message_dialog_set_markup")
    gtk_message_dialog_set_markup :: proc(message_dialog: ^GtkMessageDialog, str: cstring) ---

    @(link_name = "gtk_message_dialog_format_secondary_text")
    gtk_message_dialog_format_secondary_text :: proc(message_dialog: ^GtkMessageDialog, message_format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_message_dialog_format_secondary_markup")
    gtk_message_dialog_format_secondary_markup :: proc(message_dialog: ^GtkMessageDialog, message_format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_paper_size_get_type")
    gtk_paper_size_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_paper_size_new")
    gtk_paper_size_new :: proc(name: cstring) -> ^GtkPaperSize ---

    @(link_name = "gtk_paper_size_new_from_ppd")
    gtk_paper_size_new_from_ppd :: proc(ppd_name: cstring, ppd_display_name: cstring, width: f64, height: f64) -> ^GtkPaperSize ---

    @(link_name = "gtk_paper_size_new_from_ipp")
    gtk_paper_size_new_from_ipp :: proc(ipp_name: cstring, width: f64, height: f64) -> ^GtkPaperSize ---

    @(link_name = "gtk_paper_size_copy")
    gtk_paper_size_copy :: proc(other: ^GtkPaperSize) -> ^GtkPaperSize ---

    @(link_name = "gtk_paper_size_free")
    gtk_paper_size_free :: proc(size: ^GtkPaperSize) ---

    @(link_name = "gtk_paper_size_is_equal")
    gtk_paper_size_is_equal :: proc(size1: ^GtkPaperSize, size2: ^GtkPaperSize) -> glib.gboolean ---

    @(link_name = "gtk_paper_size_get_paper_sizes")
    gtk_paper_size_get_paper_sizes :: proc(include_custom: glib.gboolean) -> ^glib.GList ---

    @(link_name = "gtk_paper_size_get_name")
    gtk_paper_size_get_name :: proc(size: ^GtkPaperSize) -> cstring ---

    @(link_name = "gtk_paper_size_get_display_name")
    gtk_paper_size_get_display_name :: proc(size: ^GtkPaperSize) -> cstring ---

    @(link_name = "gtk_paper_size_get_ppd_name")
    gtk_paper_size_get_ppd_name :: proc(size: ^GtkPaperSize) -> cstring ---

    @(link_name = "gtk_paper_size_is_custom")
    gtk_paper_size_is_custom :: proc(size: ^GtkPaperSize) -> glib.gboolean ---

    @(link_name = "gtk_paper_size_is_ipp")
    gtk_paper_size_is_ipp :: proc(size: ^GtkPaperSize) -> glib.gboolean ---

    @(link_name = "gtk_paper_size_get_default")
    gtk_paper_size_get_default :: proc() -> cstring ---

    @(link_name = "gtk_paper_size_new_from_key_file")
    gtk_paper_size_new_from_key_file :: proc(key_file: ^glib.GKeyFile, group_name: cstring, error: ^^glib.GError) -> ^GtkPaperSize ---

    @(link_name = "gtk_paper_size_to_key_file")
    gtk_paper_size_to_key_file :: proc(size: ^GtkPaperSize, key_file: ^glib.GKeyFile, group_name: cstring) ---

    @(link_name = "gtk_paper_size_new_from_gvariant")
    gtk_paper_size_new_from_gvariant :: proc(variant: ^glib.GVariant) -> ^GtkPaperSize ---

    @(link_name = "gtk_paper_size_to_gvariant")
    gtk_paper_size_to_gvariant :: proc(paper_size: ^GtkPaperSize) -> ^glib.GVariant ---

    @(link_name = "gtk_page_setup_get_type")
    gtk_page_setup_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_page_setup_new")
    gtk_page_setup_new :: proc() -> ^GtkPageSetup ---

    @(link_name = "gtk_page_setup_copy")
    gtk_page_setup_copy :: proc(other: ^GtkPageSetup) -> ^GtkPageSetup ---

    @(link_name = "gtk_page_setup_get_paper_size")
    gtk_page_setup_get_paper_size :: proc(setup: ^GtkPageSetup) -> ^GtkPaperSize ---

    @(link_name = "gtk_page_setup_set_paper_size")
    gtk_page_setup_set_paper_size :: proc(setup: ^GtkPageSetup, size: ^GtkPaperSize) ---

    @(link_name = "gtk_page_setup_set_paper_size_and_default_margins")
    gtk_page_setup_set_paper_size_and_default_margins :: proc(setup: ^GtkPageSetup, size: ^GtkPaperSize) ---

    @(link_name = "gtk_page_setup_new_from_file")
    gtk_page_setup_new_from_file :: proc(file_name: cstring, error: ^^glib.GError) -> ^GtkPageSetup ---

    @(link_name = "gtk_page_setup_load_file")
    gtk_page_setup_load_file :: proc(setup: ^GtkPageSetup, file_name: cstring, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_page_setup_to_file")
    gtk_page_setup_to_file :: proc(setup: ^GtkPageSetup, file_name: cstring, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_page_setup_new_from_key_file")
    gtk_page_setup_new_from_key_file :: proc(key_file: ^glib.GKeyFile, group_name: cstring, error: ^^glib.GError) -> ^GtkPageSetup ---

    @(link_name = "gtk_page_setup_load_key_file")
    gtk_page_setup_load_key_file :: proc(setup: ^GtkPageSetup, key_file: ^glib.GKeyFile, group_name: cstring, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_page_setup_to_key_file")
    gtk_page_setup_to_key_file :: proc(setup: ^GtkPageSetup, key_file: ^glib.GKeyFile, group_name: cstring) ---

    @(link_name = "gtk_page_setup_to_gvariant")
    gtk_page_setup_to_gvariant :: proc(setup: ^GtkPageSetup) -> ^glib.GVariant ---

    @(link_name = "gtk_page_setup_new_from_gvariant")
    gtk_page_setup_new_from_gvariant :: proc(variant: ^glib.GVariant) -> ^GtkPageSetup ---

    @(link_name = "gtk_print_settings_get_type")
    gtk_print_settings_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_print_settings_new")
    gtk_print_settings_new :: proc() -> ^GtkPrintSettings ---

    @(link_name = "gtk_print_settings_copy")
    gtk_print_settings_copy :: proc(other: ^GtkPrintSettings) -> ^GtkPrintSettings ---

    @(link_name = "gtk_print_settings_new_from_file")
    gtk_print_settings_new_from_file :: proc(file_name: cstring, error: ^^glib.GError) -> ^GtkPrintSettings ---

    @(link_name = "gtk_print_settings_load_file")
    gtk_print_settings_load_file :: proc(settings: [^]GtkPrintSettings, file_name: cstring, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_print_settings_to_file")
    gtk_print_settings_to_file :: proc(settings: [^]GtkPrintSettings, file_name: cstring, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_print_settings_new_from_key_file")
    gtk_print_settings_new_from_key_file :: proc(key_file: ^glib.GKeyFile, group_name: cstring, error: ^^glib.GError) -> ^GtkPrintSettings ---

    @(link_name = "gtk_print_settings_load_key_file")
    gtk_print_settings_load_key_file :: proc(settings: [^]GtkPrintSettings, key_file: ^glib.GKeyFile, group_name: cstring, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_print_settings_to_key_file")
    gtk_print_settings_to_key_file :: proc(settings: [^]GtkPrintSettings, key_file: ^glib.GKeyFile, group_name: cstring) ---

    @(link_name = "gtk_print_settings_has_key")
    gtk_print_settings_has_key :: proc(settings: [^]GtkPrintSettings, key: cstring) -> glib.gboolean ---

    @(link_name = "gtk_print_settings_get")
    gtk_print_settings_get :: proc(settings: [^]GtkPrintSettings, key: cstring) -> cstring ---

    @(link_name = "gtk_print_settings_set")
    gtk_print_settings_set :: proc(settings: [^]GtkPrintSettings, key: cstring, value: cstring) ---

    @(link_name = "gtk_print_settings_unset")
    gtk_print_settings_unset :: proc(settings: [^]GtkPrintSettings, key: cstring) ---

    @(link_name = "gtk_print_settings_foreach")
    gtk_print_settings_foreach :: proc(settings: [^]GtkPrintSettings, func: GtkPrintSettingsFunc, user_data: glib.gpointer) ---

    @(link_name = "gtk_print_settings_get_bool")
    gtk_print_settings_get_bool :: proc(settings: [^]GtkPrintSettings, key: cstring) -> glib.gboolean ---

    @(link_name = "gtk_print_settings_set_bool")
    gtk_print_settings_set_bool :: proc(settings: [^]GtkPrintSettings, key: cstring, value: glib.gboolean) ---

    @(link_name = "gtk_print_settings_get_double")
    gtk_print_settings_get_double :: proc(settings: [^]GtkPrintSettings, key: cstring) -> f64 ---

    @(link_name = "gtk_print_settings_get_double_with_default")
    gtk_print_settings_get_double_with_default :: proc(settings: [^]GtkPrintSettings, key: cstring, def: f64) -> f64 ---

    @(link_name = "gtk_print_settings_set_double")
    gtk_print_settings_set_double :: proc(settings: [^]GtkPrintSettings, key: cstring, value: f64) ---

    @(link_name = "gtk_print_settings_get_int")
    gtk_print_settings_get_int :: proc(settings: [^]GtkPrintSettings, key: cstring) -> i32 ---

    @(link_name = "gtk_print_settings_get_int_with_default")
    gtk_print_settings_get_int_with_default :: proc(settings: [^]GtkPrintSettings, key: cstring, def: i32) -> i32 ---

    @(link_name = "gtk_print_settings_set_int")
    gtk_print_settings_set_int :: proc(settings: [^]GtkPrintSettings, key: cstring, value: i32) ---

    @(link_name = "gtk_print_settings_get_printer")
    gtk_print_settings_get_printer :: proc(settings: [^]GtkPrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_printer")
    gtk_print_settings_set_printer :: proc(settings: [^]GtkPrintSettings, printer: cstring) ---

    @(link_name = "gtk_print_settings_get_paper_size")
    gtk_print_settings_get_paper_size :: proc(settings: [^]GtkPrintSettings) -> ^GtkPaperSize ---

    @(link_name = "gtk_print_settings_set_paper_size")
    gtk_print_settings_set_paper_size :: proc(settings: [^]GtkPrintSettings, paper_size: ^GtkPaperSize) ---

    @(link_name = "gtk_print_settings_get_use_color")
    gtk_print_settings_get_use_color :: proc(settings: [^]GtkPrintSettings) -> glib.gboolean ---

    @(link_name = "gtk_print_settings_set_use_color")
    gtk_print_settings_set_use_color :: proc(settings: [^]GtkPrintSettings, use_color: glib.gboolean) ---

    @(link_name = "gtk_print_settings_get_collate")
    gtk_print_settings_get_collate :: proc(settings: [^]GtkPrintSettings) -> glib.gboolean ---

    @(link_name = "gtk_print_settings_set_collate")
    gtk_print_settings_set_collate :: proc(settings: [^]GtkPrintSettings, collate: glib.gboolean) ---

    @(link_name = "gtk_print_settings_get_reverse")
    gtk_print_settings_get_reverse :: proc(settings: [^]GtkPrintSettings) -> glib.gboolean ---

    @(link_name = "gtk_print_settings_set_reverse")
    gtk_print_settings_set_reverse :: proc(settings: [^]GtkPrintSettings, reverse: glib.gboolean) ---

    @(link_name = "gtk_print_settings_get_n_copies")
    gtk_print_settings_get_n_copies :: proc(settings: [^]GtkPrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_set_n_copies")
    gtk_print_settings_set_n_copies :: proc(settings: [^]GtkPrintSettings, num_copies: i32) ---

    @(link_name = "gtk_print_settings_get_number_up")
    gtk_print_settings_get_number_up :: proc(settings: [^]GtkPrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_set_number_up")
    gtk_print_settings_set_number_up :: proc(settings: [^]GtkPrintSettings, number_up: i32) ---

    @(link_name = "gtk_print_settings_get_resolution")
    gtk_print_settings_get_resolution :: proc(settings: [^]GtkPrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_set_resolution")
    gtk_print_settings_set_resolution :: proc(settings: [^]GtkPrintSettings, resolution: i32) ---

    @(link_name = "gtk_print_settings_get_resolution_x")
    gtk_print_settings_get_resolution_x :: proc(settings: [^]GtkPrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_get_resolution_y")
    gtk_print_settings_get_resolution_y :: proc(settings: [^]GtkPrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_set_resolution_xy")
    gtk_print_settings_set_resolution_xy :: proc(settings: [^]GtkPrintSettings, resolution_x: i32, resolution_y: i32) ---

    @(link_name = "gtk_print_settings_get_printer_lpi")
    gtk_print_settings_get_printer_lpi :: proc(settings: [^]GtkPrintSettings) -> f64 ---

    @(link_name = "gtk_print_settings_set_printer_lpi")
    gtk_print_settings_set_printer_lpi :: proc(settings: [^]GtkPrintSettings, lpi: f64) ---

    @(link_name = "gtk_print_settings_get_scale")
    gtk_print_settings_get_scale :: proc(settings: [^]GtkPrintSettings) -> f64 ---

    @(link_name = "gtk_print_settings_set_scale")
    gtk_print_settings_set_scale :: proc(settings: [^]GtkPrintSettings, scale: f64) ---

    @(link_name = "gtk_print_settings_get_page_ranges")
    gtk_print_settings_get_page_ranges :: proc(settings: [^]GtkPrintSettings, num_ranges: [^]i32) -> ^GtkPageRange ---

    @(link_name = "gtk_print_settings_set_page_ranges")
    gtk_print_settings_set_page_ranges :: proc(settings: [^]GtkPrintSettings, page_ranges: [^]GtkPageRange, num_ranges: i32) ---

    @(link_name = "gtk_print_settings_get_default_source")
    gtk_print_settings_get_default_source :: proc(settings: [^]GtkPrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_default_source")
    gtk_print_settings_set_default_source :: proc(settings: [^]GtkPrintSettings, default_source: cstring) ---

    @(link_name = "gtk_print_settings_get_media_type")
    gtk_print_settings_get_media_type :: proc(settings: [^]GtkPrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_media_type")
    gtk_print_settings_set_media_type :: proc(settings: [^]GtkPrintSettings, media_type: cstring) ---

    @(link_name = "gtk_print_settings_get_dither")
    gtk_print_settings_get_dither :: proc(settings: [^]GtkPrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_dither")
    gtk_print_settings_set_dither :: proc(settings: [^]GtkPrintSettings, dither: cstring) ---

    @(link_name = "gtk_print_settings_get_finishings")
    gtk_print_settings_get_finishings :: proc(settings: [^]GtkPrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_finishings")
    gtk_print_settings_set_finishings :: proc(settings: [^]GtkPrintSettings, finishings: cstring) ---

    @(link_name = "gtk_print_settings_get_output_bin")
    gtk_print_settings_get_output_bin :: proc(settings: [^]GtkPrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_output_bin")
    gtk_print_settings_set_output_bin :: proc(settings: [^]GtkPrintSettings, output_bin: cstring) ---

    @(link_name = "gtk_print_settings_to_gvariant")
    gtk_print_settings_to_gvariant :: proc(settings: [^]GtkPrintSettings) -> ^glib.GVariant ---

    @(link_name = "gtk_print_settings_new_from_gvariant")
    gtk_print_settings_new_from_gvariant :: proc(variant: ^glib.GVariant) -> ^GtkPrintSettings ---

    @(link_name = "gtk_print_context_get_type")
    gtk_print_context_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_print_context_get_page_setup")
    gtk_print_context_get_page_setup :: proc(context_p: ^GtkPrintContext) -> ^GtkPageSetup ---

    @(link_name = "gtk_print_context_get_width")
    gtk_print_context_get_width :: proc(context_p: ^GtkPrintContext) -> f64 ---

    @(link_name = "gtk_print_context_get_height")
    gtk_print_context_get_height :: proc(context_p: ^GtkPrintContext) -> f64 ---

    @(link_name = "gtk_print_context_get_dpi_x")
    gtk_print_context_get_dpi_x :: proc(context_p: ^GtkPrintContext) -> f64 ---

    @(link_name = "gtk_print_context_get_dpi_y")
    gtk_print_context_get_dpi_y :: proc(context_p: ^GtkPrintContext) -> f64 ---

    @(link_name = "gtk_print_context_get_hard_margins")
    gtk_print_context_get_hard_margins :: proc(context_p: ^GtkPrintContext, top: ^f64, bottom: ^f64, left: ^f64, right: ^f64) -> glib.gboolean ---

    @(link_name = "gtk_print_operation_preview_get_type")
    gtk_print_operation_preview_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_print_operation_preview_render_page")
    gtk_print_operation_preview_render_page :: proc(preview: ^GtkPrintOperationPreview, page_nr: i32) ---

    @(link_name = "gtk_print_operation_preview_end_preview")
    gtk_print_operation_preview_end_preview :: proc(preview: ^GtkPrintOperationPreview) ---

    @(link_name = "gtk_print_operation_preview_is_selected")
    gtk_print_operation_preview_is_selected :: proc(preview: ^GtkPrintOperationPreview, page_nr: i32) -> glib.gboolean ---

    @(link_name = "gtk_print_error_quark")
    gtk_print_error_quark :: proc() -> glib.GQuark ---

    @(link_name = "gtk_print_operation_get_type")
    gtk_print_operation_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_print_operation_new")
    gtk_print_operation_new :: proc() -> ^GtkPrintOperation ---

    @(link_name = "gtk_print_operation_set_default_page_setup")
    gtk_print_operation_set_default_page_setup :: proc(op: ^GtkPrintOperation, default_page_setup: ^GtkPageSetup) ---

    @(link_name = "gtk_print_operation_get_default_page_setup")
    gtk_print_operation_get_default_page_setup :: proc(op: ^GtkPrintOperation) -> ^GtkPageSetup ---

    @(link_name = "gtk_print_operation_set_print_settings")
    gtk_print_operation_set_print_settings :: proc(op: ^GtkPrintOperation, print_settings: [^]GtkPrintSettings) ---

    @(link_name = "gtk_print_operation_get_print_settings")
    gtk_print_operation_get_print_settings :: proc(op: ^GtkPrintOperation) -> ^GtkPrintSettings ---

    @(link_name = "gtk_print_operation_set_job_name")
    gtk_print_operation_set_job_name :: proc(op: ^GtkPrintOperation, job_name: cstring) ---

    @(link_name = "gtk_print_operation_set_n_pages")
    gtk_print_operation_set_n_pages :: proc(op: ^GtkPrintOperation, n_pages: i32) ---

    @(link_name = "gtk_print_operation_set_current_page")
    gtk_print_operation_set_current_page :: proc(op: ^GtkPrintOperation, current_page: i32) ---

    @(link_name = "gtk_print_operation_set_use_full_page")
    gtk_print_operation_set_use_full_page :: proc(op: ^GtkPrintOperation, full_page: glib.gboolean) ---

    @(link_name = "gtk_print_operation_set_export_filename")
    gtk_print_operation_set_export_filename :: proc(op: ^GtkPrintOperation, filename: cstring) ---

    @(link_name = "gtk_print_operation_set_track_print_status")
    gtk_print_operation_set_track_print_status :: proc(op: ^GtkPrintOperation, track_status: glib.gboolean) ---

    @(link_name = "gtk_print_operation_set_show_progress")
    gtk_print_operation_set_show_progress :: proc(op: ^GtkPrintOperation, show_progress: glib.gboolean) ---

    @(link_name = "gtk_print_operation_set_allow_async")
    gtk_print_operation_set_allow_async :: proc(op: ^GtkPrintOperation, allow_async: glib.gboolean) ---

    @(link_name = "gtk_print_operation_set_custom_tab_label")
    gtk_print_operation_set_custom_tab_label :: proc(op: ^GtkPrintOperation, label: cstring) ---

    @(link_name = "gtk_print_operation_get_error")
    gtk_print_operation_get_error :: proc(op: ^GtkPrintOperation, error: ^^glib.GError) ---

    @(link_name = "gtk_print_operation_get_status")
    gtk_print_operation_get_status :: proc(op: ^GtkPrintOperation) -> GtkPrintStatus ---

    @(link_name = "gtk_print_operation_get_status_string")
    gtk_print_operation_get_status_string :: proc(op: ^GtkPrintOperation) -> cstring ---

    @(link_name = "gtk_print_operation_is_finished")
    gtk_print_operation_is_finished :: proc(op: ^GtkPrintOperation) -> glib.gboolean ---

    @(link_name = "gtk_print_operation_cancel")
    gtk_print_operation_cancel :: proc(op: ^GtkPrintOperation) ---

    @(link_name = "gtk_print_operation_draw_page_finish")
    gtk_print_operation_draw_page_finish :: proc(op: ^GtkPrintOperation) ---

    @(link_name = "gtk_print_operation_set_defer_drawing")
    gtk_print_operation_set_defer_drawing :: proc(op: ^GtkPrintOperation) ---

    @(link_name = "gtk_print_operation_set_support_selection")
    gtk_print_operation_set_support_selection :: proc(op: ^GtkPrintOperation, support_selection: glib.gboolean) ---

    @(link_name = "gtk_print_operation_get_support_selection")
    gtk_print_operation_get_support_selection :: proc(op: ^GtkPrintOperation) -> glib.gboolean ---

    @(link_name = "gtk_print_operation_set_has_selection")
    gtk_print_operation_set_has_selection :: proc(op: ^GtkPrintOperation, has_selection: glib.gboolean) ---

    @(link_name = "gtk_print_operation_get_has_selection")
    gtk_print_operation_get_has_selection :: proc(op: ^GtkPrintOperation) -> glib.gboolean ---

    @(link_name = "gtk_print_operation_set_embed_page_setup")
    gtk_print_operation_set_embed_page_setup :: proc(op: ^GtkPrintOperation, embed: glib.gboolean) ---

    @(link_name = "gtk_print_operation_get_embed_page_setup")
    gtk_print_operation_get_embed_page_setup :: proc(op: ^GtkPrintOperation) -> glib.gboolean ---

    @(link_name = "gtk_print_operation_get_n_pages_to_print")
    gtk_print_operation_get_n_pages_to_print :: proc(op: ^GtkPrintOperation) -> i32 ---

    @(link_name = "gtk_shortcut_label_get_type")
    gtk_shortcut_label_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_shortcut_label_get_accelerator")
    gtk_shortcut_label_get_accelerator :: proc(self: ^GtkShortcutLabel) -> cstring ---

    @(link_name = "gtk_shortcut_label_set_accelerator")
    gtk_shortcut_label_set_accelerator :: proc(self: ^GtkShortcutLabel, accelerator: cstring) ---

    @(link_name = "gtk_shortcut_label_get_disabled_text")
    gtk_shortcut_label_get_disabled_text :: proc(self: ^GtkShortcutLabel) -> cstring ---

    @(link_name = "gtk_shortcut_label_set_disabled_text")
    gtk_shortcut_label_set_disabled_text :: proc(self: ^GtkShortcutLabel, disabled_text: cstring) ---

    @(link_name = "gtk_statusbar_get_type")
    gtk_statusbar_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_statusbar_get_context_id")
    gtk_statusbar_get_context_id :: proc(statusbar: ^GtkStatusbar, context_description: cstring) -> glib.guint ---

    @(link_name = "gtk_statusbar_push")
    gtk_statusbar_push :: proc(statusbar: ^GtkStatusbar, context_id: glib.guint, text: cstring) -> glib.guint ---

    @(link_name = "gtk_statusbar_pop")
    gtk_statusbar_pop :: proc(statusbar: ^GtkStatusbar, context_id: glib.guint) ---

    @(link_name = "gtk_statusbar_remove")
    gtk_statusbar_remove :: proc(statusbar: ^GtkStatusbar, context_id: glib.guint, message_id: glib.guint) ---

    @(link_name = "gtk_statusbar_remove_all")
    gtk_statusbar_remove_all :: proc(statusbar: ^GtkStatusbar, context_id: glib.guint) ---

    @(link_name = "gtk_style_context_get_type")
    gtk_style_context_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_row_data_get_type")
    gtk_tree_row_data_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_drag_source_get_type")
    gtk_tree_drag_source_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_drag_source_row_draggable")
    gtk_tree_drag_source_row_draggable :: proc(drag_source: ^GtkTreeDragSource, path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_drag_source_drag_data_delete")
    gtk_tree_drag_source_drag_data_delete :: proc(drag_source: ^GtkTreeDragSource, path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_drag_dest_get_type")
    gtk_tree_drag_dest_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_drag_dest_drag_data_received")
    gtk_tree_drag_dest_drag_data_received :: proc(drag_dest: ^GtkTreeDragDest, dest: ^GtkTreePath, value: ^gobj.GValue) -> glib.gboolean ---

    @(link_name = "gtk_tree_drag_dest_row_drop_possible")
    gtk_tree_drag_dest_row_drop_possible :: proc(drag_dest: ^GtkTreeDragDest, dest_path: ^GtkTreePath, value: ^gobj.GValue) -> glib.gboolean ---

    @(link_name = "gtk_tree_get_row_drag_data")
    gtk_tree_get_row_drag_data :: proc(value: ^gobj.GValue, tree_model: ^^GtkTreeModel, path: ^^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_sort_get_type")
    gtk_tree_model_sort_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_model_sort_new_with_model")
    gtk_tree_model_sort_new_with_model :: proc(child_model: ^GtkTreeModel) -> ^GtkTreeModel ---

    @(link_name = "gtk_tree_model_sort_get_model")
    gtk_tree_model_sort_get_model :: proc(tree_model: ^GtkTreeModelSort) -> ^GtkTreeModel ---

    @(link_name = "gtk_tree_model_sort_convert_child_path_to_path")
    gtk_tree_model_sort_convert_child_path_to_path :: proc(tree_model_sort: ^GtkTreeModelSort, child_path: ^GtkTreePath) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_model_sort_convert_child_iter_to_iter")
    gtk_tree_model_sort_convert_child_iter_to_iter :: proc(tree_model_sort: ^GtkTreeModelSort, sort_iter: ^GtkTreeIter, child_iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_model_sort_convert_path_to_child_path")
    gtk_tree_model_sort_convert_path_to_child_path :: proc(tree_model_sort: ^GtkTreeModelSort, sorted_path: ^GtkTreePath) -> ^GtkTreePath ---

    @(link_name = "gtk_tree_model_sort_convert_iter_to_child_iter")
    gtk_tree_model_sort_convert_iter_to_child_iter :: proc(tree_model_sort: ^GtkTreeModelSort, child_iter: ^GtkTreeIter, sorted_iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_model_sort_reset_default_sort_func")
    gtk_tree_model_sort_reset_default_sort_func :: proc(tree_model_sort: ^GtkTreeModelSort) ---

    @(link_name = "gtk_tree_model_sort_clear_cache")
    gtk_tree_model_sort_clear_cache :: proc(tree_model_sort: ^GtkTreeModelSort) ---

    @(link_name = "gtk_tree_model_sort_iter_is_valid")
    gtk_tree_model_sort_iter_is_valid :: proc(tree_model_sort: ^GtkTreeModelSort, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_selection_get_type")
    gtk_tree_selection_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_selection_set_select_function")
    gtk_tree_selection_set_select_function :: proc(selection: ^GtkTreeSelection, func: GtkTreeSelectionFunc, data: glib.gpointer, destroy: glib.GDestroyNotify) ---

    @(link_name = "gtk_tree_selection_get_user_data")
    gtk_tree_selection_get_user_data :: proc(selection: ^GtkTreeSelection) -> glib.gpointer ---

    @(link_name = "gtk_tree_selection_get_tree_view")
    gtk_tree_selection_get_tree_view :: proc(selection: ^GtkTreeSelection) -> ^GtkTreeView ---

    @(link_name = "gtk_tree_selection_get_select_function")
    gtk_tree_selection_get_select_function :: proc(selection: ^GtkTreeSelection) -> GtkTreeSelectionFunc ---

    @(link_name = "gtk_tree_selection_get_selected")
    gtk_tree_selection_get_selected :: proc(selection: ^GtkTreeSelection, model: ^^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_selection_get_selected_rows")
    gtk_tree_selection_get_selected_rows :: proc(selection: ^GtkTreeSelection, model: ^^GtkTreeModel) -> ^glib.GList ---

    @(link_name = "gtk_tree_selection_count_selected_rows")
    gtk_tree_selection_count_selected_rows :: proc(selection: ^GtkTreeSelection) -> i32 ---

    @(link_name = "gtk_tree_selection_selected_foreach")
    gtk_tree_selection_selected_foreach :: proc(selection: ^GtkTreeSelection, func: GtkTreeSelectionForeachFunc, data: glib.gpointer) ---

    @(link_name = "gtk_tree_selection_select_path")
    gtk_tree_selection_select_path :: proc(selection: ^GtkTreeSelection, path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_selection_unselect_path")
    gtk_tree_selection_unselect_path :: proc(selection: ^GtkTreeSelection, path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_selection_select_iter")
    gtk_tree_selection_select_iter :: proc(selection: ^GtkTreeSelection, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_selection_unselect_iter")
    gtk_tree_selection_unselect_iter :: proc(selection: ^GtkTreeSelection, iter: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_selection_path_is_selected")
    gtk_tree_selection_path_is_selected :: proc(selection: ^GtkTreeSelection, path: ^GtkTreePath) -> glib.gboolean ---

    @(link_name = "gtk_tree_selection_iter_is_selected")
    gtk_tree_selection_iter_is_selected :: proc(selection: ^GtkTreeSelection, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_selection_select_all")
    gtk_tree_selection_select_all :: proc(selection: ^GtkTreeSelection) ---

    @(link_name = "gtk_tree_selection_unselect_all")
    gtk_tree_selection_unselect_all :: proc(selection: ^GtkTreeSelection) ---

    @(link_name = "gtk_tree_selection_select_range")
    gtk_tree_selection_select_range :: proc(selection: ^GtkTreeSelection, start_path: ^GtkTreePath, end_path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_selection_unselect_range")
    gtk_tree_selection_unselect_range :: proc(selection: ^GtkTreeSelection, start_path: ^GtkTreePath, end_path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_store_get_type")
    gtk_tree_store_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_tree_store_new")
    gtk_tree_store_new :: proc(n_columns: i32, #c_vararg var_args: ..any) -> ^GtkTreeStore ---

    @(link_name = "gtk_tree_store_newv")
    gtk_tree_store_newv :: proc(n_columns: i32, types: [^]gobj.GType) -> ^GtkTreeStore ---

    @(link_name = "gtk_tree_store_set_column_types")
    gtk_tree_store_set_column_types :: proc(tree_store: ^GtkTreeStore, n_columns: i32, types: [^]gobj.GType) ---

    @(link_name = "gtk_tree_store_set_value")
    gtk_tree_store_set_value :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, column: i32, value: ^gobj.GValue) ---

    @(link_name = "gtk_tree_store_set")
    gtk_tree_store_set :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_store_set_valuesv")
    gtk_tree_store_set_valuesv :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, columns: [^]i32, values: [^]gobj.GValue, n_values: i32) ---

    @(link_name = "gtk_tree_store_set_valist")
    gtk_tree_store_set_valist :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_store_remove")
    gtk_tree_store_remove :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_store_insert")
    gtk_tree_store_insert :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, parent: ^GtkTreeIter, position: i32) ---

    @(link_name = "gtk_tree_store_insert_before")
    gtk_tree_store_insert_before :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, parent: ^GtkTreeIter, sibling: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_store_insert_after")
    gtk_tree_store_insert_after :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, parent: ^GtkTreeIter, sibling: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_store_insert_with_values")
    gtk_tree_store_insert_with_values :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, parent: ^GtkTreeIter, position: i32, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_store_insert_with_valuesv")
    gtk_tree_store_insert_with_valuesv :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, parent: ^GtkTreeIter, position: i32, columns: [^]i32, values: [^]gobj.GValue, n_values: i32) ---

    @(link_name = "gtk_tree_store_prepend")
    gtk_tree_store_prepend :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, parent: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_store_append")
    gtk_tree_store_append :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, parent: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_store_is_ancestor")
    gtk_tree_store_is_ancestor :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, descendant: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_store_iter_depth")
    gtk_tree_store_iter_depth :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter) -> i32 ---

    @(link_name = "gtk_tree_store_clear")
    gtk_tree_store_clear :: proc(tree_store: ^GtkTreeStore) ---

    @(link_name = "gtk_tree_store_iter_is_valid")
    gtk_tree_store_iter_is_valid :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter) -> glib.gboolean ---

    @(link_name = "gtk_tree_store_reorder")
    gtk_tree_store_reorder :: proc(tree_store: ^GtkTreeStore, parent: ^GtkTreeIter, new_order: ^i32) ---

    @(link_name = "gtk_tree_store_swap")
    gtk_tree_store_swap :: proc(tree_store: ^GtkTreeStore, a: ^GtkTreeIter, b: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_store_move_before")
    gtk_tree_store_move_before :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, position: ^GtkTreeIter) ---

    @(link_name = "gtk_tree_store_move_after")
    gtk_tree_store_move_after :: proc(tree_store: ^GtkTreeStore, iter: ^GtkTreeIter, position: ^GtkTreeIter) ---

    @(link_name = "gtk_volume_button_get_type")
    gtk_volume_button_get_type :: proc() -> gobj.GType ---

    @(link_name = "gtk_source_annotation_get_line")
    annotation_get_line :: proc(self: ^Annotation) -> i32 ---

    @(link_name = "gtk_source_completion_provider_get_priority")
    completion_provider_get_priority :: proc(self: ^CompletionProvider, context_p: ^CompletionContext) -> i32 ---

}

g_static_mutex_get_mutex :: g_static_mutex_get_mutex_impl

when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {

G_STATIC_MUTEX_INIT :: 0
G_STATIC_REC_MUTEX_INIT :: 0
G_STATIC_RW_LOCK_INIT :: 0

struct _GAllocator :: 
GAllocator :: 
struct _GMemChunk :: 
GMemChunk :: 
struct _GCache :: 
GCache :: 
struct _GCompletion :: 
GCompletion :: 
struct _GRelation :: 
GRelation :: 
struct _GTuples :: 
GTuples :: 
struct _GThreadFunctions :: 
GThreadFunctions :: 
struct _GStaticRecMutex :: 
GStaticRecMutex :: 
_GStaticRecMutex :: struct {
    mutex: GStaticMutex,
    depth: glib.guint,
    unused: ,
}
struct _GStaticRWLock :: 
GStaticRWLock :: 
struct _GStaticPrivate :: 
GStaticPrivate :: 
struct _GtkSourceAnnotation :: 
Annotation :: 
struct _GtkSourceAnnotations :: 
Annotations :: 
struct _GtkSourceAnnotationProvider :: 
AnnotationProvider :: 
struct _GtkSourceBuffer :: 
Buffer :: 
struct _GtkSourceCompletion :: 
Completion :: 
struct _GtkSourceCompletionCell :: 
CompletionCell :: 
struct _GtkSourceCompletionContext :: 
CompletionContext :: 
struct _GtkSourceCompletionProposal :: 
CompletionProposal :: 
struct _GtkSourceCompletionProvider :: 
CompletionProvider :: 
struct _GtkSourceEncoding :: 
Encoding :: 
struct _GtkSourceFile :: 
File :: 
struct _GtkSourceFileLoader :: 
FileLoader :: 
struct _GtkSourceFileSaver :: 
FileSaver :: 
struct _GtkSourceGutter :: 
Gutter :: 
struct _GtkSourceGutterLines :: 
GutterLines :: 
struct _GtkSourceGutterRenderer :: 
GutterRenderer :: 
struct _GtkSourceGutterRendererPixbuf :: 
GutterRendererPixbuf :: 
struct _GtkSourceGutterRendererText :: 
GutterRendererText :: 
struct _GtkSourceHover :: 
Hover :: 
struct _GtkSourceHoverContext :: 
HoverContext :: 
struct _GtkSourceHoverDisplay :: 
HoverDisplay :: 
struct _GtkSourceHoverProvider :: 
HoverProvider :: 
struct _GtkSourceVimIMContext :: 
VimIMContext :: 
struct _GtkSourceIndenter :: 
Indenter :: 
struct _GtkSourceLanguage :: 
Language :: 
struct _GtkSourceLanguageManager :: 
LanguageManager :: 
struct _GtkSourceMap :: 
Map :: 
struct _GtkSourceMarkAttributes :: 
MarkAttributes :: 
struct _GtkSourceMark :: 
Mark :: 
struct _GtkSourcePrintCompositor :: 
PrintCompositor :: 
struct _GtkSourceSearchContext :: 
SearchContext :: 
struct _GtkSourceSearchSettings :: 
SearchSettings :: 
struct _GtkSourceSnippet :: 
Snippet :: 
struct _GtkSourceSnippetChunk :: 
SnippetChunk :: 
struct _GtkSourceSnippetContext :: 
SnippetContext :: 
struct _GtkSourceSnippetManager :: 
SnippetManager :: 
struct _GtkSourceSpaceDrawer :: 
SpaceDrawer :: 
struct _GtkSourceStyle :: 
Style :: 
struct _GtkSourceStyleSchemeChooserButton :: 
StyleSchemeChooserButton :: 
struct _GtkSourceStyleSchemeChooser :: 
StyleSchemeChooser :: 
struct _GtkSourceStyleSchemeChooserWidget :: 
StyleSchemeChooserWidget :: 
struct _GtkSourceStyleScheme :: 
StyleScheme :: 
struct _GtkSourceStyleSchemeManager :: 
StyleSchemeManager :: 
struct _GtkSourceStyleSchemePreview :: 
StyleSchemePreview :: 
struct _GtkSourceView :: 
View :: 
struct _GtkCssLocation :: 
GtkCssLocation :: 
struct _GtkCssSection :: 
GtkCssSection :: 
struct _GskVulkanRenderer :: 
GskVulkanRenderer :: 
struct _GskVulkanRendererClass :: 
GskVulkanRendererClass :: 
struct _GskGLRenderer :: 
GskGLRenderer :: 
struct _GskGLRendererClass :: 
GskGLRendererClass :: 
struct _GtkAppChooser :: 
GtkAppChooser :: 
struct _GtkDialog :: 
GtkDialog :: 
struct _GtkDialogClass :: 
GtkDialogClass :: 
struct _GtkAppChooserDialog :: 
GtkAppChooserDialog :: 
struct _GtkAppChooserWidget :: 
GtkAppChooserWidget :: 
struct _GtkAppChooserButton :: 
GtkAppChooserButton :: 
struct _GtkShortcutsShortcut :: 
GtkShortcutsShortcut :: 
struct _GtkShortcutsShortcutClass :: 
GtkShortcutsShortcutClass :: 
struct _GtkShortcutsGroup :: 
GtkShortcutsGroup :: 
struct _GtkShortcutsGroupClass :: 
GtkShortcutsGroupClass :: 
struct _GtkShortcutsSection :: 
GtkShortcutsSection :: 
struct _GtkShortcutsSectionClass :: 
GtkShortcutsSectionClass :: 
struct _GtkShortcutsWindow :: 
GtkShortcutsWindow :: 
struct _GtkAssistant :: 
GtkAssistant :: 
struct _GtkAssistantPage :: 
GtkAssistantPage :: 
struct _GtkCellEditable :: 
GtkCellEditable :: 
struct _GtkCellEditableIface :: 
GtkCellEditableIface :: 
struct _GtkCellRenderer :: 
GtkCellRenderer :: 
struct _GtkCellRendererPrivate :: 
GtkCellRendererPrivate :: 
struct _GtkCellRendererClass :: 
GtkCellRendererClass :: 
struct _GtkCellRendererClassPrivate :: 
GtkCellRendererClassPrivate :: 
struct _GtkTreeIter :: 
GtkTreeIter :: 
struct _GtkTreePath :: 
GtkTreePath :: 
struct _GtkTreeRowReference :: 
GtkTreeRowReference :: 
struct _GtkTreeModel :: 
GtkTreeModel :: 
struct _GtkTreeModelIface :: 
GtkTreeModelIface :: 
struct _GtkCellArea :: 
GtkCellArea :: 
struct _GtkCellAreaClass :: 
GtkCellAreaClass :: 
struct _GtkCellAreaContext :: 
GtkCellAreaContext :: 
struct _GtkCellAreaBox :: 
GtkCellAreaBox :: 
struct _GtkCellAreaContextPrivate :: 
GtkCellAreaContextPrivate :: 
struct _GtkCellAreaContextClass :: 
GtkCellAreaContextClass :: 
struct _GtkCellLayout :: 
GtkCellLayout :: 
struct _GtkCellLayoutIface :: 
GtkCellLayoutIface :: 
struct _GtkCellRendererText :: 
GtkCellRendererText :: 
struct _GtkCellRendererTextClass :: 
GtkCellRendererTextClass :: 
struct _GtkCellRendererAccel :: 
GtkCellRendererAccel :: 
struct _GtkCellRendererCombo :: 
GtkCellRendererCombo :: 
struct _GtkCellRendererPixbuf :: 
GtkCellRendererPixbuf :: 
struct _GtkCellRendererProgress :: 
GtkCellRendererProgress :: 
struct _GtkCellRendererSpin :: 
GtkCellRendererSpin :: 
struct _GtkCellRendererSpinner :: 
GtkCellRendererSpinner :: 
struct _GtkCellRendererToggle :: 
GtkCellRendererToggle :: 
struct _GtkCellView :: 
GtkCellView :: 
struct _GtkColorButton :: 
GtkColorButton :: 
struct _GtkColorChooser :: 
GtkColorChooser :: 
struct _GtkColorChooserInterface :: 
GtkColorChooserInterface :: 
struct _GtkColorChooserDialog :: 
GtkColorChooserDialog :: 
struct _GtkColorChooserWidget :: 
GtkColorChooserWidget :: 
struct _GtkTreeSortable :: 
GtkTreeSortable :: 
struct _GtkTreeSortableIface :: 
GtkTreeSortableIface :: 
struct _GtkTreeViewColumn :: 
GtkTreeViewColumn :: 
struct _GtkListStore :: 
GtkListStore :: 
struct _GtkListStorePrivate :: 
GtkListStorePrivate :: 
struct _GtkListStoreClass :: 
GtkListStoreClass :: 
struct _GtkTreeModelFilter :: 
GtkTreeModelFilter :: 
struct _GtkTreeModelFilterClass :: 
GtkTreeModelFilterClass :: 
struct _GtkTreeModelFilterPrivate :: 
GtkTreeModelFilterPrivate :: 
struct _GtkEntryCompletion :: 
GtkEntryCompletion :: 
struct _GtkTreeView :: 
GtkTreeView :: 
struct _GtkTreeViewClass :: 
GtkTreeViewClass :: 
struct _GtkTreeSelection :: 
GtkTreeSelection :: 
struct _GtkComboBox :: 
GtkComboBox :: 
struct _GtkComboBoxClass :: 
GtkComboBoxClass :: 
struct _GtkComboBoxText :: 
GtkComboBoxText :: 
struct _GtkFileChooser :: 
GtkFileChooser :: 
struct _GtkFileChooserDialog :: 
GtkFileChooserDialog :: 
struct _GtkFileChooserNative :: 
GtkFileChooserNative :: 
struct _GtkFileChooserWidget :: 
GtkFileChooserWidget :: 
struct _GtkFontButton :: 
GtkFontButton :: 
struct _GtkFontChooser :: 
GtkFontChooser :: 
struct _GtkFontChooserIface :: 
GtkFontChooserIface :: 
struct _GtkFontChooserDialog :: 
GtkFontChooserDialog :: 
struct _GtkFontChooserWidget :: 
GtkFontChooserWidget :: 
struct _GtkIconView :: 
GtkIconView :: 
struct _GtkInfoBar :: 
GtkInfoBar :: 
struct _GtkLockButton :: 
GtkLockButton :: 
struct _GtkMessageDialog :: 
GtkMessageDialog :: 
struct _GtkMessageDialogClass :: 
GtkMessageDialogClass :: 
struct _GtkPaperSize :: 
GtkPaperSize :: 
struct _GtkPageSetup :: 
GtkPageSetup :: 
struct _GtkPrintSettings :: 
GtkPrintSettings :: 
struct _GtkPageRange :: 
GtkPageRange :: 
struct _GtkPrintContext :: 
GtkPrintContext :: 
struct _GtkPrintOperationPreview :: 
GtkPrintOperationPreview :: 
struct _GtkPrintOperationPreviewIface :: 
GtkPrintOperationPreviewIface :: 
struct _GtkPrintOperationClass :: 
GtkPrintOperationClass :: 
struct _GtkPrintOperationPrivate :: 
GtkPrintOperationPrivate :: 
struct _GtkPrintOperation :: 
GtkPrintOperation :: 
struct _GtkShortcutLabel :: 
GtkShortcutLabel :: 
struct _GtkShortcutLabelClass :: 
GtkShortcutLabelClass :: 
struct _GtkStatusbar :: 
GtkStatusbar :: 
struct _GtkStyleContextClass :: 
GtkStyleContextClass :: 
struct _GtkTreeDragSource :: 
GtkTreeDragSource :: 
struct _GtkTreeDragSourceIface :: 
GtkTreeDragSourceIface :: 
struct _GtkTreeDragDest :: 
GtkTreeDragDest :: 
struct _GtkTreeDragDestIface :: 
GtkTreeDragDestIface :: 
struct _GtkTreeModelSort :: 
GtkTreeModelSort :: 
struct _GtkTreeModelSortClass :: 
GtkTreeModelSortClass :: 
struct _GtkTreeModelSortPrivate :: 
GtkTreeModelSortPrivate :: 
struct _GtkTreeStore :: 
GtkTreeStore :: 
struct _GtkTreeStoreClass :: 
GtkTreeStoreClass :: 
struct _GtkTreeStorePrivate :: 
GtkTreeStorePrivate :: 
struct _GtkVolumeButton :: 
GtkVolumeButton :: 
struct _GtkSourceAnnotationProviderClass :: 
AnnotationProviderClass :: 
struct _GtkSourceBufferClass :: 
BufferClass :: 
struct _GtkSourceCompletionProposalInterface :: 
CompletionProposalInterface :: 
struct _GtkSourceCompletionProviderInterface :: 
CompletionProviderInterface :: 
struct _GtkSourceFileClass :: 
FileClass :: 
struct _GtkSourceGutterRendererClass :: 
GutterRendererClass :: 
struct _GtkSourceGutterRendererTextClass :: 
GutterRendererTextClass :: 
struct _GtkSourceGutterRendererPixbufClass :: 
GutterRendererPixbufClass :: 
struct _GtkSourceHoverProviderInterface :: 
HoverProviderInterface :: 
struct _GtkSourceIndenterInterface :: 
IndenterInterface :: 
struct _GtkSourceViewClass :: 
ViewClass :: 
struct _GtkSourceMapClass :: 
MapClass :: 
struct _GtkSourceMarkClass :: 
MarkClass :: 
struct _GtkSourcePrintCompositorClass :: 
PrintCompositorClass :: 
struct _GtkSourceRegion :: 
Region :: 
struct _GtkSourceRegionClass :: 
RegionClass :: 
struct _GtkSourceRegionIter :: 
RegionIter :: 
struct _GtkSourceSearchSettingsClass :: 
SearchSettingsClass :: 
struct _GtkSourceStyleSchemeChooserInterface :: 
StyleSchemeChooserInterface :: 
struct _GtkSourceStyleSchemeChooserButtonClass :: 
StyleSchemeChooserButtonClass :: 
struct _GtkSourceStyleSchemeChooserWidgetClass :: 
StyleSchemeChooserWidgetClass :: 
struct _GtkSourceTag :: 
Tag :: 
struct _GtkSourceTagClass :: 
TagClass :: 
struct _GtkSourceCompletionWords :: 
CompletionWords :: 
struct _GtkSourceCompletionWordsClass :: 
CompletionWordsClass :: 
struct _GtkSourceCompletionSnippets :: 
CompletionSnippets :: 
struct _GtkSourceCompletionSnippetsClass :: 
CompletionSnippetsClass :: 

}

when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {

G_STATIC_MUTEX_INIT :: 0
G_STATIC_REC_MUTEX_INIT :: 0
G_STATIC_RW_LOCK_INIT :: 0

struct _GAllocator :: 
GAllocator :: 
struct _GMemChunk :: 
GMemChunk :: 
struct _GCache :: 
GCache :: 
struct _GCompletion :: 
GCompletion :: 
struct _GRelation :: 
GRelation :: 
struct _GTuples :: 
GTuples :: 
struct _GThreadFunctions :: 
GThreadFunctions :: 
struct _GStaticRecMutex :: 
GStaticRecMutex :: 
_GStaticRecMutex :: struct {
    mutex: GStaticMutex,
    depth: glib.guint,
    unused: ,
}
struct _GStaticRWLock :: 
GStaticRWLock :: 
struct _GStaticPrivate :: 
GStaticPrivate :: 
struct _GtkSourceAnnotation :: 
Annotation :: 
struct _GtkSourceAnnotations :: 
Annotations :: 
struct _GtkSourceAnnotationProvider :: 
AnnotationProvider :: 
struct _GtkSourceBuffer :: 
Buffer :: 
struct _GtkSourceCompletion :: 
Completion :: 
struct _GtkSourceCompletionCell :: 
CompletionCell :: 
struct _GtkSourceCompletionContext :: 
CompletionContext :: 
struct _GtkSourceCompletionProposal :: 
CompletionProposal :: 
struct _GtkSourceCompletionProvider :: 
CompletionProvider :: 
struct _GtkSourceEncoding :: 
Encoding :: 
struct _GtkSourceFile :: 
File :: 
struct _GtkSourceFileLoader :: 
FileLoader :: 
struct _GtkSourceFileSaver :: 
FileSaver :: 
struct _GtkSourceGutter :: 
Gutter :: 
struct _GtkSourceGutterLines :: 
GutterLines :: 
struct _GtkSourceGutterRenderer :: 
GutterRenderer :: 
struct _GtkSourceGutterRendererPixbuf :: 
GutterRendererPixbuf :: 
struct _GtkSourceGutterRendererText :: 
GutterRendererText :: 
struct _GtkSourceHover :: 
Hover :: 
struct _GtkSourceHoverContext :: 
HoverContext :: 
struct _GtkSourceHoverDisplay :: 
HoverDisplay :: 
struct _GtkSourceHoverProvider :: 
HoverProvider :: 
struct _GtkSourceVimIMContext :: 
VimIMContext :: 
struct _GtkSourceIndenter :: 
Indenter :: 
struct _GtkSourceLanguage :: 
Language :: 
struct _GtkSourceLanguageManager :: 
LanguageManager :: 
struct _GtkSourceMap :: 
Map :: 
struct _GtkSourceMarkAttributes :: 
MarkAttributes :: 
struct _GtkSourceMark :: 
Mark :: 
struct _GtkSourcePrintCompositor :: 
PrintCompositor :: 
struct _GtkSourceSearchContext :: 
SearchContext :: 
struct _GtkSourceSearchSettings :: 
SearchSettings :: 
struct _GtkSourceSnippet :: 
Snippet :: 
struct _GtkSourceSnippetChunk :: 
SnippetChunk :: 
struct _GtkSourceSnippetContext :: 
SnippetContext :: 
struct _GtkSourceSnippetManager :: 
SnippetManager :: 
struct _GtkSourceSpaceDrawer :: 
SpaceDrawer :: 
struct _GtkSourceStyle :: 
Style :: 
struct _GtkSourceStyleSchemeChooserButton :: 
StyleSchemeChooserButton :: 
struct _GtkSourceStyleSchemeChooser :: 
StyleSchemeChooser :: 
struct _GtkSourceStyleSchemeChooserWidget :: 
StyleSchemeChooserWidget :: 
struct _GtkSourceStyleScheme :: 
StyleScheme :: 
struct _GtkSourceStyleSchemeManager :: 
StyleSchemeManager :: 
struct _GtkSourceStyleSchemePreview :: 
StyleSchemePreview :: 
struct _GtkSourceView :: 
View :: 
struct _GtkCssLocation :: 
GtkCssLocation :: 
struct _GtkCssSection :: 
GtkCssSection :: 
struct _GskVulkanRenderer :: 
GskVulkanRenderer :: 
struct _GskVulkanRendererClass :: 
GskVulkanRendererClass :: 
struct _GskGLRenderer :: 
GskGLRenderer :: 
struct _GskGLRendererClass :: 
GskGLRendererClass :: 
struct _GtkAppChooser :: 
GtkAppChooser :: 
struct _GtkDialog :: 
GtkDialog :: 
struct _GtkDialogClass :: 
GtkDialogClass :: 
struct _GtkAppChooserDialog :: 
GtkAppChooserDialog :: 
struct _GtkAppChooserWidget :: 
GtkAppChooserWidget :: 
struct _GtkAppChooserButton :: 
GtkAppChooserButton :: 
struct _GtkShortcutsShortcut :: 
GtkShortcutsShortcut :: 
struct _GtkShortcutsShortcutClass :: 
GtkShortcutsShortcutClass :: 
struct _GtkShortcutsGroup :: 
GtkShortcutsGroup :: 
struct _GtkShortcutsGroupClass :: 
GtkShortcutsGroupClass :: 
struct _GtkShortcutsSection :: 
GtkShortcutsSection :: 
struct _GtkShortcutsSectionClass :: 
GtkShortcutsSectionClass :: 
struct _GtkShortcutsWindow :: 
GtkShortcutsWindow :: 
struct _GtkAssistant :: 
GtkAssistant :: 
struct _GtkAssistantPage :: 
GtkAssistantPage :: 
struct _GtkCellEditable :: 
GtkCellEditable :: 
struct _GtkCellEditableIface :: 
GtkCellEditableIface :: 
struct _GtkCellRenderer :: 
GtkCellRenderer :: 
struct _GtkCellRendererPrivate :: 
GtkCellRendererPrivate :: 
struct _GtkCellRendererClass :: 
GtkCellRendererClass :: 
struct _GtkCellRendererClassPrivate :: 
GtkCellRendererClassPrivate :: 
struct _GtkTreeIter :: 
GtkTreeIter :: 
struct _GtkTreePath :: 
GtkTreePath :: 
struct _GtkTreeRowReference :: 
GtkTreeRowReference :: 
struct _GtkTreeModel :: 
GtkTreeModel :: 
struct _GtkTreeModelIface :: 
GtkTreeModelIface :: 
struct _GtkCellArea :: 
GtkCellArea :: 
struct _GtkCellAreaClass :: 
GtkCellAreaClass :: 
struct _GtkCellAreaContext :: 
GtkCellAreaContext :: 
struct _GtkCellAreaBox :: 
GtkCellAreaBox :: 
struct _GtkCellAreaContextPrivate :: 
GtkCellAreaContextPrivate :: 
struct _GtkCellAreaContextClass :: 
GtkCellAreaContextClass :: 
struct _GtkCellLayout :: 
GtkCellLayout :: 
struct _GtkCellLayoutIface :: 
GtkCellLayoutIface :: 
struct _GtkCellRendererText :: 
GtkCellRendererText :: 
struct _GtkCellRendererTextClass :: 
GtkCellRendererTextClass :: 
struct _GtkCellRendererAccel :: 
GtkCellRendererAccel :: 
struct _GtkCellRendererCombo :: 
GtkCellRendererCombo :: 
struct _GtkCellRendererPixbuf :: 
GtkCellRendererPixbuf :: 
struct _GtkCellRendererProgress :: 
GtkCellRendererProgress :: 
struct _GtkCellRendererSpin :: 
GtkCellRendererSpin :: 
struct _GtkCellRendererSpinner :: 
GtkCellRendererSpinner :: 
struct _GtkCellRendererToggle :: 
GtkCellRendererToggle :: 
struct _GtkCellView :: 
GtkCellView :: 
struct _GtkColorButton :: 
GtkColorButton :: 
struct _GtkColorChooser :: 
GtkColorChooser :: 
struct _GtkColorChooserInterface :: 
GtkColorChooserInterface :: 
struct _GtkColorChooserDialog :: 
GtkColorChooserDialog :: 
struct _GtkColorChooserWidget :: 
GtkColorChooserWidget :: 
struct _GtkTreeSortable :: 
GtkTreeSortable :: 
struct _GtkTreeSortableIface :: 
GtkTreeSortableIface :: 
struct _GtkTreeViewColumn :: 
GtkTreeViewColumn :: 
struct _GtkListStore :: 
GtkListStore :: 
struct _GtkListStorePrivate :: 
GtkListStorePrivate :: 
struct _GtkListStoreClass :: 
GtkListStoreClass :: 
struct _GtkTreeModelFilter :: 
GtkTreeModelFilter :: 
struct _GtkTreeModelFilterClass :: 
GtkTreeModelFilterClass :: 
struct _GtkTreeModelFilterPrivate :: 
GtkTreeModelFilterPrivate :: 
struct _GtkEntryCompletion :: 
GtkEntryCompletion :: 
struct _GtkTreeView :: 
GtkTreeView :: 
struct _GtkTreeViewClass :: 
GtkTreeViewClass :: 
struct _GtkTreeSelection :: 
GtkTreeSelection :: 
struct _GtkComboBox :: 
GtkComboBox :: 
struct _GtkComboBoxClass :: 
GtkComboBoxClass :: 
struct _GtkComboBoxText :: 
GtkComboBoxText :: 
struct _GtkFileChooser :: 
GtkFileChooser :: 
struct _GtkFileChooserDialog :: 
GtkFileChooserDialog :: 
struct _GtkFileChooserNative :: 
GtkFileChooserNative :: 
struct _GtkFileChooserWidget :: 
GtkFileChooserWidget :: 
struct _GtkFontButton :: 
GtkFontButton :: 
struct _GtkFontChooser :: 
GtkFontChooser :: 
struct _GtkFontChooserIface :: 
GtkFontChooserIface :: 
struct _GtkFontChooserDialog :: 
GtkFontChooserDialog :: 
struct _GtkFontChooserWidget :: 
GtkFontChooserWidget :: 
struct _GtkIconView :: 
GtkIconView :: 
struct _GtkInfoBar :: 
GtkInfoBar :: 
struct _GtkLockButton :: 
GtkLockButton :: 
struct _GtkMessageDialog :: 
GtkMessageDialog :: 
struct _GtkMessageDialogClass :: 
GtkMessageDialogClass :: 
struct _GtkPaperSize :: 
GtkPaperSize :: 
struct _GtkPageSetup :: 
GtkPageSetup :: 
struct _GtkPrintSettings :: 
GtkPrintSettings :: 
struct _GtkPageRange :: 
GtkPageRange :: 
struct _GtkPrintContext :: 
GtkPrintContext :: 
struct _GtkPrintOperationPreview :: 
GtkPrintOperationPreview :: 
struct _GtkPrintOperationPreviewIface :: 
GtkPrintOperationPreviewIface :: 
struct _GtkPrintOperationClass :: 
GtkPrintOperationClass :: 
struct _GtkPrintOperationPrivate :: 
GtkPrintOperationPrivate :: 
struct _GtkPrintOperation :: 
GtkPrintOperation :: 
struct _GtkShortcutLabel :: 
GtkShortcutLabel :: 
struct _GtkShortcutLabelClass :: 
GtkShortcutLabelClass :: 
struct _GtkStatusbar :: 
GtkStatusbar :: 
struct _GtkStyleContextClass :: 
GtkStyleContextClass :: 
struct _GtkTreeDragSource :: 
GtkTreeDragSource :: 
struct _GtkTreeDragSourceIface :: 
GtkTreeDragSourceIface :: 
struct _GtkTreeDragDest :: 
GtkTreeDragDest :: 
struct _GtkTreeDragDestIface :: 
GtkTreeDragDestIface :: 
struct _GtkTreeModelSort :: 
GtkTreeModelSort :: 
struct _GtkTreeModelSortClass :: 
GtkTreeModelSortClass :: 
struct _GtkTreeModelSortPrivate :: 
GtkTreeModelSortPrivate :: 
struct _GtkTreeStore :: 
GtkTreeStore :: 
struct _GtkTreeStoreClass :: 
GtkTreeStoreClass :: 
struct _GtkTreeStorePrivate :: 
GtkTreeStorePrivate :: 
struct _GtkVolumeButton :: 
GtkVolumeButton :: 
struct _GtkSourceAnnotationProviderClass :: 
AnnotationProviderClass :: 
struct _GtkSourceBufferClass :: 
BufferClass :: 
struct _GtkSourceCompletionProposalInterface :: 
CompletionProposalInterface :: 
struct _GtkSourceCompletionProviderInterface :: 
CompletionProviderInterface :: 
struct _GtkSourceFileClass :: 
FileClass :: 
struct _GtkSourceGutterRendererClass :: 
GutterRendererClass :: 
struct _GtkSourceGutterRendererTextClass :: 
GutterRendererTextClass :: 
struct _GtkSourceGutterRendererPixbufClass :: 
GutterRendererPixbufClass :: 
struct _GtkSourceHoverProviderInterface :: 
HoverProviderInterface :: 
struct _GtkSourceIndenterInterface :: 
IndenterInterface :: 
struct _GtkSourceViewClass :: 
ViewClass :: 
struct _GtkSourceMapClass :: 
MapClass :: 
struct _GtkSourceMarkClass :: 
MarkClass :: 
struct _GtkSourcePrintCompositorClass :: 
PrintCompositorClass :: 
struct _GtkSourceRegion :: 
Region :: 
struct _GtkSourceRegionClass :: 
RegionClass :: 
struct _GtkSourceRegionIter :: 
RegionIter :: 
struct _GtkSourceSearchSettingsClass :: 
SearchSettingsClass :: 
struct _GtkSourceStyleSchemeChooserInterface :: 
StyleSchemeChooserInterface :: 
struct _GtkSourceStyleSchemeChooserButtonClass :: 
StyleSchemeChooserButtonClass :: 
struct _GtkSourceStyleSchemeChooserWidgetClass :: 
StyleSchemeChooserWidgetClass :: 
struct _GtkSourceTag :: 
Tag :: 
struct _GtkSourceTagClass :: 
TagClass :: 
struct _GtkSourceCompletionWords :: 
CompletionWords :: 
struct _GtkSourceCompletionWordsClass :: 
CompletionWordsClass :: 
struct _GtkSourceCompletionSnippets :: 
CompletionSnippets :: 
struct _GtkSourceCompletionSnippetsClass :: 
CompletionSnippetsClass :: 

}

when (ODIN_OS == .Linux) {

foreign import gtksourceview_runic "system:gtksourceview-5"

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

foreign import gtksourceview_runic "../lib/windows/x86_64/gtksourceview-5.lib"

}

