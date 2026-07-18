#+build linux amd64, linux arm64
package gtksourceview

import "../glib"
import "../glib/gio"
import gobj "../glib/gobject"
import gtk "../gtk"
import pango "../pango"

GDK_MICRO_VERSION :: `(4)`
_GDK_EXPORT :: `__attribute__((visibility(\"default\")))`
_GDK_API :: ""
_GDK_EXTERN :: `extern`
GDK_VAR :: `extern`
GDK_AVAILABLE_IN_ALL :: `extern`
GDK_DEPRECATED :: `__attribute__((__deprecated__)) extern`
GDK_DEPRECATED_IN_4_0 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_0 :: `extern`
GDK_DEPRECATED_IN_4_2 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_2 :: `extern`
GDK_DEPRECATED_IN_4_4 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_4 :: `extern`
GDK_DEPRECATED_IN_4_6 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_6 :: `extern`
GDK_DEPRECATED_IN_4_8 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_8 :: `extern`
GDK_DEPRECATED_IN_4_10 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_10 :: `extern`
GDK_DEPRECATED_IN_4_12 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_12 :: `extern`
GDK_DEPRECATED_IN_4_14 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_14 :: `extern`
GDK_DEPRECATED_IN_4_16 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_16 :: `extern`
GDK_DEPRECATED_IN_4_18 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_18 :: `extern`
GDK_DEPRECATED_IN_4_20 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_20 :: `extern`
GDK_DEPRECATED_IN_4_22 :: `__attribute__((__deprecated__)) extern`
GDK_AVAILABLE_IN_4_22 :: `extern`
NEWLINE_TYPE_DEFAULT :: `GTK_SOURCE_NEWLINE_TYPE_LF`

GStaticMutex :: struct {
    mutex: ^glib.GMutex,
    unused: pthread_mutex_t,
}
_GtkDialog :: struct {
    parent_instance: gtk.GtkWindow,
}
response_func_ptr_anon_21 :: #type proc "c" (dialog: ^GtkDialog, response_id: i32)
close_func_ptr_anon_22 :: #type proc "c" (dialog: ^GtkDialog)
_GtkDialogClass :: struct {
    parent_class: gtk.GtkWindowClass,
    response: response_func_ptr_anon_21,
    close: close_func_ptr_anon_22,
    padding: [8]glib.gpointer,
}
editing_done_func_ptr_anon_23 :: #type proc "c" (cell_editable: ^GtkCellEditable)
remove_widget_func_ptr_anon_24 :: #type proc "c" (cell_editable: ^GtkCellEditable)
start_editing_func_ptr_anon_25 :: #type proc "c" (cell_editable: ^GtkCellEditable, event: ^gtk.GdkEvent)
_GtkCellEditableIface :: struct {
    g_iface: gobj.GTypeInterface,
    editing_done: editing_done_func_ptr_anon_23,
    remove_widget: remove_widget_func_ptr_anon_24,
    start_editing: start_editing_func_ptr_anon_25,
}
get_request_mode_func_ptr_anon_26 :: #type proc "c" (cell: ^GtkCellRenderer) -> gtk.GtkSizeRequestMode
get_preferred_width_func_ptr_anon_27 :: #type proc "c" (cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, minimum_size: ^i32, natural_size: ^i32)
get_preferred_height_for_width_func_ptr_anon_28 :: #type proc "c" (cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, width: i32, minimum_height: ^i32, natural_height: ^i32)
get_preferred_height_func_ptr_anon_29 :: #type proc "c" (cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, minimum_size: ^i32, natural_size: ^i32)
get_preferred_width_for_height_func_ptr_anon_30 :: #type proc "c" (cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, height: i32, minimum_width: ^i32, natural_width: ^i32)
get_aligned_area_func_ptr_anon_31 :: #type proc "c" (cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, flags: GtkCellRendererState, cell_area: ^gtk.GdkRectangle, aligned_area: ^gtk.GdkRectangle)
snapshot_func_ptr_anon_32 :: #type proc "c" (cell: ^GtkCellRenderer, snapshot: ^gtk.GtkSnapshot, widget: ^gtk.GtkWidget, background_area: ^gtk.GdkRectangle, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState)
activate_func_ptr_anon_33 :: #type proc "c" (cell: ^GtkCellRenderer, event: ^gtk.GdkEvent, widget: ^gtk.GtkWidget, path: cstring, background_area: ^gtk.GdkRectangle, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState) -> glib.gboolean
start_editing_func_ptr_anon_34 :: #type proc "c" (cell: ^GtkCellRenderer, event: ^gtk.GdkEvent, widget: ^gtk.GtkWidget, path: cstring, background_area: ^gtk.GdkRectangle, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState) -> ^GtkCellEditable
editing_canceled_func_ptr_anon_35 :: #type proc "c" (cell: ^GtkCellRenderer)
editing_started_func_ptr_anon_36 :: #type proc "c" (cell: ^GtkCellRenderer, editable: ^GtkCellEditable, path: cstring)
_GtkCellRendererClass :: struct {
    parent_class: gobj.GInitiallyUnownedClass,
    get_request_mode: get_request_mode_func_ptr_anon_26,
    get_preferred_width: get_preferred_width_func_ptr_anon_27,
    get_preferred_height_for_width: get_preferred_height_for_width_func_ptr_anon_28,
    get_preferred_height: get_preferred_height_func_ptr_anon_29,
    get_preferred_width_for_height: get_preferred_width_for_height_func_ptr_anon_30,
    get_aligned_area: get_aligned_area_func_ptr_anon_31,
    snapshot: snapshot_func_ptr_anon_32,
    activate: activate_func_ptr_anon_33,
    start_editing: start_editing_func_ptr_anon_34,
    editing_canceled: editing_canceled_func_ptr_anon_35,
    editing_started: editing_started_func_ptr_anon_36,
    padding: [8]glib.gpointer,
}
row_changed_func_ptr_anon_37 :: #type proc "c" (tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter)
row_inserted_func_ptr_anon_38 :: #type proc "c" (tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter)
row_has_child_toggled_func_ptr_anon_39 :: #type proc "c" (tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter)
row_deleted_func_ptr_anon_40 :: #type proc "c" (tree_model: ^GtkTreeModel, path: ^GtkTreePath)
rows_reordered_func_ptr_anon_41 :: #type proc "c" (tree_model: ^GtkTreeModel, path: ^GtkTreePath, iter: ^GtkTreeIter, new_order: ^i32)
get_flags_func_ptr_anon_42 :: #type proc "c" (tree_model: ^GtkTreeModel) -> GtkTreeModelFlags
get_n_columns_func_ptr_anon_43 :: #type proc "c" (tree_model: ^GtkTreeModel) -> i32
get_column_type_func_ptr_anon_44 :: #type proc "c" (tree_model: ^GtkTreeModel, index_: i32) -> gobj.GType
get_iter_func_ptr_anon_45 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, path: ^GtkTreePath) -> glib.gboolean
get_path_func_ptr_anon_46 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> ^GtkTreePath
get_value_func_ptr_anon_47 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, column: i32, value: ^gobj.GValue)
iter_next_func_ptr_anon_48 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean
iter_previous_func_ptr_anon_49 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean
iter_children_func_ptr_anon_50 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, parent: ^GtkTreeIter) -> glib.gboolean
iter_has_child_func_ptr_anon_51 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean
iter_n_children_func_ptr_anon_52 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> i32
iter_nth_child_func_ptr_anon_53 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, parent: ^GtkTreeIter, n: i32) -> glib.gboolean
iter_parent_func_ptr_anon_54 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, child: ^GtkTreeIter) -> glib.gboolean
ref_node_func_ptr_anon_55 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter)
unref_node_func_ptr_anon_56 :: #type proc "c" (tree_model: ^GtkTreeModel, iter: ^GtkTreeIter)
_GtkTreeModelIface :: struct {
    g_iface: gobj.GTypeInterface,
    row_changed: row_changed_func_ptr_anon_37,
    row_inserted: row_inserted_func_ptr_anon_38,
    row_has_child_toggled: row_has_child_toggled_func_ptr_anon_39,
    row_deleted: row_deleted_func_ptr_anon_40,
    rows_reordered: rows_reordered_func_ptr_anon_41,
    get_flags: get_flags_func_ptr_anon_42,
    get_n_columns: get_n_columns_func_ptr_anon_43,
    get_column_type: get_column_type_func_ptr_anon_44,
    get_iter: get_iter_func_ptr_anon_45,
    get_path: get_path_func_ptr_anon_46,
    get_value: get_value_func_ptr_anon_47,
    iter_next: iter_next_func_ptr_anon_48,
    iter_previous: iter_previous_func_ptr_anon_49,
    iter_children: iter_children_func_ptr_anon_50,
    iter_has_child: iter_has_child_func_ptr_anon_51,
    iter_n_children: iter_n_children_func_ptr_anon_52,
    iter_nth_child: iter_nth_child_func_ptr_anon_53,
    iter_parent: iter_parent_func_ptr_anon_54,
    ref_node: ref_node_func_ptr_anon_55,
    unref_node: unref_node_func_ptr_anon_56,
}
GtkCellAllocCallback :: #type proc "c" (renderer: ^GtkCellRenderer, cell_area: ^gtk.GdkRectangle, cell_background: ^gtk.GdkRectangle, data: glib.gpointer) -> glib.gboolean
add_func_ptr_anon_57 :: #type proc "c" (area: ^GtkCellArea, renderer: ^GtkCellRenderer)
remove_func_ptr_anon_58 :: #type proc "c" (area: ^GtkCellArea, renderer: ^GtkCellRenderer)
foreach_func_ptr_anon_59 :: #type proc "c" (area: ^GtkCellArea, callback: GtkCellCallback, callback_data: glib.gpointer)
foreach_alloc_func_ptr_anon_60 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, cell_area: ^gtk.GdkRectangle, background_area: ^gtk.GdkRectangle, callback: GtkCellAllocCallback, callback_data: glib.gpointer)
event_func_ptr_anon_61 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, event: ^gtk.GdkEvent, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState) -> i32
snapshot_func_ptr_anon_62 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, snapshot: ^gtk.GtkSnapshot, background_area: ^gtk.GdkRectangle, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState, paint_focus: glib.gboolean)
apply_attributes_func_ptr_anon_63 :: #type proc "c" (area: ^GtkCellArea, tree_model: ^GtkTreeModel, iter: ^GtkTreeIter, is_expander: glib.gboolean, is_expanded: glib.gboolean)
create_context_func_ptr_anon_64 :: #type proc "c" (area: ^GtkCellArea) -> ^GtkCellAreaContext
copy_context_func_ptr_anon_65 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext) -> ^GtkCellAreaContext
get_request_mode_func_ptr_anon_66 :: #type proc "c" (area: ^GtkCellArea) -> gtk.GtkSizeRequestMode
get_preferred_width_func_ptr_anon_67 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, minimum_width: ^i32, natural_width: ^i32)
get_preferred_height_for_width_func_ptr_anon_68 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, width: i32, minimum_height: ^i32, natural_height: ^i32)
get_preferred_height_func_ptr_anon_69 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, minimum_height: ^i32, natural_height: ^i32)
get_preferred_width_for_height_func_ptr_anon_70 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, height: i32, minimum_width: ^i32, natural_width: ^i32)
set_cell_property_func_ptr_anon_71 :: #type proc "c" (area: ^GtkCellArea, renderer: ^GtkCellRenderer, property_id: glib.guint, value: ^gobj.GValue, pspec: ^gobj.GParamSpec)
get_cell_property_func_ptr_anon_72 :: #type proc "c" (area: ^GtkCellArea, renderer: ^GtkCellRenderer, property_id: glib.guint, value: ^gobj.GValue, pspec: ^gobj.GParamSpec)
focus_func_ptr_anon_73 :: #type proc "c" (area: ^GtkCellArea, direction: gtk.GtkDirectionType) -> glib.gboolean
is_activatable_func_ptr_anon_74 :: #type proc "c" (area: ^GtkCellArea) -> glib.gboolean
activate_func_ptr_anon_75 :: #type proc "c" (area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState, edit_only: glib.gboolean) -> glib.gboolean
_GtkCellAreaClass :: struct {
    parent_class: gobj.GInitiallyUnownedClass,
    add: add_func_ptr_anon_57,
    remove: remove_func_ptr_anon_58,
    foreach: foreach_func_ptr_anon_59,
    foreach_alloc: foreach_alloc_func_ptr_anon_60,
    event: event_func_ptr_anon_61,
    snapshot: snapshot_func_ptr_anon_62,
    apply_attributes: apply_attributes_func_ptr_anon_63,
    create_context: create_context_func_ptr_anon_64,
    copy_context: copy_context_func_ptr_anon_65,
    get_request_mode: get_request_mode_func_ptr_anon_66,
    get_preferred_width: get_preferred_width_func_ptr_anon_67,
    get_preferred_height_for_width: get_preferred_height_for_width_func_ptr_anon_68,
    get_preferred_height: get_preferred_height_func_ptr_anon_69,
    get_preferred_width_for_height: get_preferred_width_for_height_func_ptr_anon_70,
    set_cell_property: set_cell_property_func_ptr_anon_71,
    get_cell_property: get_cell_property_func_ptr_anon_72,
    focus: focus_func_ptr_anon_73,
    is_activatable: is_activatable_func_ptr_anon_74,
    activate: activate_func_ptr_anon_75,
    padding: [8]glib.gpointer,
}
allocate_func_ptr_anon_76 :: #type proc "c" (context_p: ^GtkCellAreaContext, width: i32, height: i32)
reset_func_ptr_anon_77 :: #type proc "c" (context_p: ^GtkCellAreaContext)
get_preferred_height_for_width_func_ptr_anon_78 :: #type proc "c" (context_p: ^GtkCellAreaContext, width: i32, minimum_height: ^i32, natural_height: ^i32)
get_preferred_width_for_height_func_ptr_anon_79 :: #type proc "c" (context_p: ^GtkCellAreaContext, height: i32, minimum_width: ^i32, natural_width: ^i32)
_GtkCellAreaContextClass :: struct {
    parent_class: gobj.GObjectClass,
    allocate: allocate_func_ptr_anon_76,
    reset: reset_func_ptr_anon_77,
    get_preferred_height_for_width: get_preferred_height_for_width_func_ptr_anon_78,
    get_preferred_width_for_height: get_preferred_width_for_height_func_ptr_anon_79,
    padding: [8]glib.gpointer,
}
pack_start_func_ptr_anon_80 :: #type proc "c" (cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, expand: glib.gboolean)
pack_end_func_ptr_anon_81 :: #type proc "c" (cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, expand: glib.gboolean)
clear_func_ptr_anon_82 :: #type proc "c" (cell_layout: ^GtkCellLayout)
add_attribute_func_ptr_anon_83 :: #type proc "c" (cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, attribute: cstring, column: i32)
set_cell_data_func_func_ptr_anon_84 :: #type proc "c" (cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, func: GtkCellLayoutDataFunc, func_data: glib.gpointer, destroy: glib.GDestroyNotify)
clear_attributes_func_ptr_anon_85 :: #type proc "c" (cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer)
reorder_func_ptr_anon_86 :: #type proc "c" (cell_layout: ^GtkCellLayout, cell: ^GtkCellRenderer, position: i32)
get_cells_func_ptr_anon_87 :: #type proc "c" (cell_layout: ^GtkCellLayout) -> ^glib.GList
get_area_func_ptr_anon_88 :: #type proc "c" (cell_layout: ^GtkCellLayout) -> ^GtkCellArea
_GtkCellLayoutIface :: struct {
    g_iface: gobj.GTypeInterface,
    pack_start: pack_start_func_ptr_anon_80,
    pack_end: pack_end_func_ptr_anon_81,
    clear: clear_func_ptr_anon_82,
    add_attribute: add_attribute_func_ptr_anon_83,
    set_cell_data_func: set_cell_data_func_func_ptr_anon_84,
    clear_attributes: clear_attributes_func_ptr_anon_85,
    reorder: reorder_func_ptr_anon_86,
    get_cells: get_cells_func_ptr_anon_87,
    get_area: get_area_func_ptr_anon_88,
}
edited_func_ptr_anon_89 :: #type proc "c" (cell_renderer_text: ^GtkCellRendererText, path: cstring, new_text: cstring)
_GtkCellRendererTextClass :: struct {
    parent_class: GtkCellRendererClass,
    edited: edited_func_ptr_anon_89,
    padding: [8]glib.gpointer,
}
get_rgba_func_ptr_anon_90 :: #type proc "c" (chooser: ^GtkColorChooser, color: ^gtk.GdkRGBA)
set_rgba_func_ptr_anon_91 :: #type proc "c" (chooser: ^GtkColorChooser, color: ^gtk.GdkRGBA)
add_palette_func_ptr_anon_92 :: #type proc "c" (chooser: ^GtkColorChooser, orientation: gtk.GtkOrientation, colors_per_line: i32, n_colors: i32, colors: [^]gtk.GdkRGBA)
color_activated_func_ptr_anon_93 :: #type proc "c" (chooser: ^GtkColorChooser, color: ^gtk.GdkRGBA)
_GtkColorChooserInterface :: struct {
    base_interface: gobj.GTypeInterface,
    get_rgba: get_rgba_func_ptr_anon_90,
    set_rgba: set_rgba_func_ptr_anon_91,
    add_palette: add_palette_func_ptr_anon_92,
    color_activated: color_activated_func_ptr_anon_93,
    padding: [12]glib.gpointer,
}
sort_column_changed_func_ptr_anon_94 :: #type proc "c" (sortable: ^GtkTreeSortable)
get_sort_column_id_func_ptr_anon_95 :: #type proc "c" (sortable: ^GtkTreeSortable, sort_column_id: ^i32, order: ^gtk.GtkSortType) -> glib.gboolean
set_sort_column_id_func_ptr_anon_96 :: #type proc "c" (sortable: ^GtkTreeSortable, sort_column_id: i32, order: gtk.GtkSortType)
set_sort_func_func_ptr_anon_97 :: #type proc "c" (sortable: ^GtkTreeSortable, sort_column_id: i32, sort_func: GtkTreeIterCompareFunc, user_data: glib.gpointer, destroy: glib.GDestroyNotify)
set_default_sort_func_func_ptr_anon_98 :: #type proc "c" (sortable: ^GtkTreeSortable, sort_func: GtkTreeIterCompareFunc, user_data: glib.gpointer, destroy: glib.GDestroyNotify)
has_default_sort_func_func_ptr_anon_99 :: #type proc "c" (sortable: ^GtkTreeSortable) -> glib.gboolean
_GtkTreeSortableIface :: struct {
    g_iface: gobj.GTypeInterface,
    sort_column_changed: sort_column_changed_func_ptr_anon_94,
    get_sort_column_id: get_sort_column_id_func_ptr_anon_95,
    set_sort_column_id: set_sort_column_id_func_ptr_anon_96,
    set_sort_func: set_sort_func_func_ptr_anon_97,
    set_default_sort_func: set_default_sort_func_func_ptr_anon_98,
    has_default_sort_func: has_default_sort_func_func_ptr_anon_99,
}
visible_func_ptr_anon_100 :: #type proc "c" (self: ^GtkTreeModelFilter, child_model: ^GtkTreeModel, iter: ^GtkTreeIter) -> glib.gboolean
modify_func_ptr_anon_101 :: #type proc "c" (self: ^GtkTreeModelFilter, child_model: ^GtkTreeModel, iter: ^GtkTreeIter, value: ^gobj.GValue, column: i32)
_GtkTreeModelFilterClass :: struct {
    parent_class: gobj.GObjectClass,
    visible: visible_func_ptr_anon_100,
    modify: modify_func_ptr_anon_101,
    padding: [8]glib.gpointer,
}
_GtkTreeView :: struct {
    parent_instance: gtk.GtkWidget,
}
row_activated_func_ptr_anon_102 :: #type proc "c" (tree_view: ^GtkTreeView, path: ^GtkTreePath, column: ^GtkTreeViewColumn)
test_expand_row_func_ptr_anon_103 :: #type proc "c" (tree_view: ^GtkTreeView, iter: ^GtkTreeIter, path: ^GtkTreePath) -> glib.gboolean
test_collapse_row_func_ptr_anon_104 :: #type proc "c" (tree_view: ^GtkTreeView, iter: ^GtkTreeIter, path: ^GtkTreePath) -> glib.gboolean
row_expanded_func_ptr_anon_105 :: #type proc "c" (tree_view: ^GtkTreeView, iter: ^GtkTreeIter, path: ^GtkTreePath)
row_collapsed_func_ptr_anon_106 :: #type proc "c" (tree_view: ^GtkTreeView, iter: ^GtkTreeIter, path: ^GtkTreePath)
columns_changed_func_ptr_anon_107 :: #type proc "c" (tree_view: ^GtkTreeView)
cursor_changed_func_ptr_anon_108 :: #type proc "c" (tree_view: ^GtkTreeView)
move_cursor_func_ptr_anon_109 :: #type proc "c" (tree_view: ^GtkTreeView, step: gtk.GtkMovementStep, count: i32, extend: glib.gboolean, modify: glib.gboolean) -> glib.gboolean
select_all_func_ptr_anon_110 :: #type proc "c" (tree_view: ^GtkTreeView) -> glib.gboolean
unselect_all_func_ptr_anon_111 :: #type proc "c" (tree_view: ^GtkTreeView) -> glib.gboolean
select_cursor_row_func_ptr_anon_112 :: #type proc "c" (tree_view: ^GtkTreeView, start_editing: glib.gboolean) -> glib.gboolean
toggle_cursor_row_func_ptr_anon_113 :: #type proc "c" (tree_view: ^GtkTreeView) -> glib.gboolean
expand_collapse_cursor_row_func_ptr_anon_114 :: #type proc "c" (tree_view: ^GtkTreeView, logical: glib.gboolean, expand: glib.gboolean, open_all: glib.gboolean) -> glib.gboolean
select_cursor_parent_func_ptr_anon_115 :: #type proc "c" (tree_view: ^GtkTreeView) -> glib.gboolean
start_interactive_search_func_ptr_anon_116 :: #type proc "c" (tree_view: ^GtkTreeView) -> glib.gboolean
_GtkTreeViewClass :: struct {
    parent_class: gtk.GtkWidgetClass,
    row_activated: row_activated_func_ptr_anon_102,
    test_expand_row: test_expand_row_func_ptr_anon_103,
    test_collapse_row: test_collapse_row_func_ptr_anon_104,
    row_expanded: row_expanded_func_ptr_anon_105,
    row_collapsed: row_collapsed_func_ptr_anon_106,
    columns_changed: columns_changed_func_ptr_anon_107,
    cursor_changed: cursor_changed_func_ptr_anon_108,
    move_cursor: move_cursor_func_ptr_anon_109,
    select_all: select_all_func_ptr_anon_110,
    unselect_all: unselect_all_func_ptr_anon_111,
    select_cursor_row: select_cursor_row_func_ptr_anon_112,
    toggle_cursor_row: toggle_cursor_row_func_ptr_anon_113,
    expand_collapse_cursor_row: expand_collapse_cursor_row_func_ptr_anon_114,
    select_cursor_parent: select_cursor_parent_func_ptr_anon_115,
    start_interactive_search: start_interactive_search_func_ptr_anon_116,
    _reserved: [16]glib.gpointer,
}
_GtkComboBox :: struct {
    parent_instance: gtk.GtkWidget,
}
changed_func_ptr_anon_117 :: #type proc "c" (combo_box: ^GtkComboBox)
format_entry_text_func_ptr_anon_118 :: #type proc "c" (combo_box: ^GtkComboBox, path: cstring) -> cstring
activate_func_ptr_anon_119 :: #type proc "c" (combo_box: ^GtkComboBox)
_GtkComboBoxClass :: struct {
    parent_class: gtk.GtkWidgetClass,
    changed: changed_func_ptr_anon_117,
    format_entry_text: format_entry_text_func_ptr_anon_118,
    activate: activate_func_ptr_anon_119,
    padding: [7]glib.gpointer,
}
GtkFileChooserNativeClass :: struct {
    parent_class: gtk.GtkNativeDialogClass,
}
GtkFontFilterFunc :: #type proc "c" (family: ^pango.PangoFontFamily, face: ^pango.PangoFontFace, data: glib.gpointer) -> glib.gboolean
get_font_family_func_ptr_anon_120 :: #type proc "c" (fontchooser: ^GtkFontChooser) -> ^pango.PangoFontFamily
get_font_face_func_ptr_anon_121 :: #type proc "c" (fontchooser: ^GtkFontChooser) -> ^pango.PangoFontFace
get_font_size_func_ptr_anon_122 :: #type proc "c" (fontchooser: ^GtkFontChooser) -> i32
set_filter_func_func_ptr_anon_123 :: #type proc "c" (fontchooser: ^GtkFontChooser, filter: GtkFontFilterFunc, user_data: glib.gpointer, destroy: glib.GDestroyNotify)
font_activated_func_ptr_anon_124 :: #type proc "c" (chooser: ^GtkFontChooser, fontname: cstring)
set_font_map_func_ptr_anon_125 :: #type proc "c" (fontchooser: ^GtkFontChooser, fontmap: ^pango.PangoFontMap)
get_font_map_func_ptr_anon_126 :: #type proc "c" (fontchooser: ^GtkFontChooser) -> ^pango.PangoFontMap
_GtkFontChooserIface :: struct {
    base_iface: gobj.GTypeInterface,
    get_font_family: get_font_family_func_ptr_anon_120,
    get_font_face: get_font_face_func_ptr_anon_121,
    get_font_size: get_font_size_func_ptr_anon_122,
    set_filter_func: set_filter_func_func_ptr_anon_123,
    font_activated: font_activated_func_ptr_anon_124,
    set_font_map: set_font_map_func_ptr_anon_125,
    get_font_map: get_font_map_func_ptr_anon_126,
    padding: [10]glib.gpointer,
}
ready_func_ptr_anon_127 :: #type proc "c" (preview: ^GtkPrintOperationPreview, context_p: ^GtkPrintContext)
got_page_size_func_ptr_anon_128 :: #type proc "c" (preview: ^GtkPrintOperationPreview, context_p: ^GtkPrintContext, page_setup: ^GtkPageSetup)
render_page_func_ptr_anon_129 :: #type proc "c" (preview: ^GtkPrintOperationPreview, page_nr: i32)
is_selected_func_ptr_anon_130 :: #type proc "c" (preview: ^GtkPrintOperationPreview, page_nr: i32) -> glib.gboolean
end_preview_func_ptr_anon_131 :: #type proc "c" (preview: ^GtkPrintOperationPreview)
_gtk_reserved1_func_ptr_anon_132 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_133 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_134 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_135 :: #type proc "c" ()
_gtk_reserved5_func_ptr_anon_136 :: #type proc "c" ()
_gtk_reserved6_func_ptr_anon_137 :: #type proc "c" ()
_gtk_reserved7_func_ptr_anon_138 :: #type proc "c" ()
_gtk_reserved8_func_ptr_anon_139 :: #type proc "c" ()
_GtkPrintOperationPreviewIface :: struct {
    g_iface: gobj.GTypeInterface,
    ready: ready_func_ptr_anon_127,
    got_page_size: got_page_size_func_ptr_anon_128,
    render_page: render_page_func_ptr_anon_129,
    is_selected: is_selected_func_ptr_anon_130,
    end_preview: end_preview_func_ptr_anon_131,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_132,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_133,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_134,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_135,
    _gtk_reserved5: _gtk_reserved5_func_ptr_anon_136,
    _gtk_reserved6: _gtk_reserved6_func_ptr_anon_137,
    _gtk_reserved7: _gtk_reserved7_func_ptr_anon_138,
    _gtk_reserved8: _gtk_reserved8_func_ptr_anon_139,
}
done_func_ptr_anon_140 :: #type proc "c" (operation: ^GtkPrintOperation, result: GtkPrintOperationResult)
begin_print_func_ptr_anon_141 :: #type proc "c" (operation: ^GtkPrintOperation, context_p: ^GtkPrintContext)
paginate_func_ptr_anon_142 :: #type proc "c" (operation: ^GtkPrintOperation, context_p: ^GtkPrintContext) -> glib.gboolean
request_page_setup_func_ptr_anon_143 :: #type proc "c" (operation: ^GtkPrintOperation, context_p: ^GtkPrintContext, page_nr: i32, setup: ^GtkPageSetup)
draw_page_func_ptr_anon_144 :: #type proc "c" (operation: ^GtkPrintOperation, context_p: ^GtkPrintContext, page_nr: i32)
end_print_func_ptr_anon_145 :: #type proc "c" (operation: ^GtkPrintOperation, context_p: ^GtkPrintContext)
status_changed_func_ptr_anon_146 :: #type proc "c" (operation: ^GtkPrintOperation)
create_custom_widget_func_ptr_anon_147 :: #type proc "c" (operation: ^GtkPrintOperation) -> ^gtk.GtkWidget
custom_widget_apply_func_ptr_anon_148 :: #type proc "c" (operation: ^GtkPrintOperation, widget: ^gtk.GtkWidget)
preview_func_ptr_anon_149 :: #type proc "c" (operation: ^GtkPrintOperation, preview: ^GtkPrintOperationPreview, context_p: ^GtkPrintContext, parent: ^gtk.GtkWindow) -> glib.gboolean
update_custom_widget_func_ptr_anon_150 :: #type proc "c" (operation: ^GtkPrintOperation, widget: ^gtk.GtkWidget, setup: ^GtkPageSetup, settings: [^]GtkPrintSettings)
_GtkPrintOperationClass :: struct {
    parent_class: gobj.GObjectClass,
    done: done_func_ptr_anon_140,
    begin_print: begin_print_func_ptr_anon_141,
    paginate: paginate_func_ptr_anon_142,
    request_page_setup: request_page_setup_func_ptr_anon_143,
    draw_page: draw_page_func_ptr_anon_144,
    end_print: end_print_func_ptr_anon_145,
    status_changed: status_changed_func_ptr_anon_146,
    create_custom_widget: create_custom_widget_func_ptr_anon_147,
    custom_widget_apply: custom_widget_apply_func_ptr_anon_148,
    preview: preview_func_ptr_anon_149,
    update_custom_widget: update_custom_widget_func_ptr_anon_150,
    padding: [8]glib.gpointer,
}
changed_func_ptr_anon_151 :: #type proc "c" (context_p: ^gtk.GtkStyleContext)
_gtk_reserved1_func_ptr_anon_152 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_153 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_154 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_155 :: #type proc "c" ()
_GtkStyleContextClass :: struct {
    parent_class: gobj.GObjectClass,
    changed: changed_func_ptr_anon_151,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_152,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_153,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_154,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_155,
}
row_draggable_func_ptr_anon_156 :: #type proc "c" (drag_source: ^GtkTreeDragSource, path: ^GtkTreePath) -> glib.gboolean
drag_data_get_func_ptr_anon_157 :: #type proc "c" (drag_source: ^GtkTreeDragSource, path: ^GtkTreePath) -> ^gtk.GdkContentProvider
drag_data_delete_func_ptr_anon_158 :: #type proc "c" (drag_source: ^GtkTreeDragSource, path: ^GtkTreePath) -> glib.gboolean
_GtkTreeDragSourceIface :: struct {
    g_iface: gobj.GTypeInterface,
    row_draggable: row_draggable_func_ptr_anon_156,
    drag_data_get: drag_data_get_func_ptr_anon_157,
    drag_data_delete: drag_data_delete_func_ptr_anon_158,
}
drag_data_received_func_ptr_anon_159 :: #type proc "c" (drag_dest: ^GtkTreeDragDest, dest: ^GtkTreePath, value: ^gobj.GValue) -> glib.gboolean
row_drop_possible_func_ptr_anon_160 :: #type proc "c" (drag_dest: ^GtkTreeDragDest, dest_path: ^GtkTreePath, value: ^gobj.GValue) -> glib.gboolean
_GtkTreeDragDestIface :: struct {
    g_iface: gobj.GTypeInterface,
    drag_data_received: drag_data_received_func_ptr_anon_159,
    row_drop_possible: row_drop_possible_func_ptr_anon_160,
}
_GtkVolumeButton :: struct {
    parent: gtk.GtkScaleButton,
}
populate_hover_async_func_ptr_anon_161 :: #type proc "c" (self: ^AnnotationProvider, annotation: ^Annotation, display: ^HoverDisplay, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer)
populate_hover_finish_func_ptr_anon_162 :: #type proc "c" (self: ^AnnotationProvider, result: ^gio.GAsyncResult, error: ^^glib.GError) -> glib.gboolean
_GtkSourceAnnotationProviderClass :: struct {
    parent_class: gobj.GObjectClass,
    populate_hover_async: populate_hover_async_func_ptr_anon_161,
    populate_hover_finish: populate_hover_finish_func_ptr_anon_162,
}
_GtkSourceBuffer :: struct {
    parent_instance: gtk.GtkTextBuffer,
}
_GtkSourceBufferClass :: struct {
    parent_class: gtk.GtkTextBufferClass,
    bracket_matched: bracket_matched_func_ptr_anon_163,
    _reserved: [20]glib.gpointer,
}
CompletionCellClass :: struct {
    parent_class: gtk.GtkWidgetClass,
}
get_typed_text_func_ptr_anon_164 :: #type proc "c" (proposal: ^CompletionProposal) -> cstring
_GtkSourceCompletionProposalInterface :: struct {
    parent_iface: gobj.GTypeInterface,
    get_typed_text: get_typed_text_func_ptr_anon_164,
}
get_title_func_ptr_anon_165 :: #type proc "c" (self: ^CompletionProvider) -> cstring
get_priority_func_ptr_anon_166 :: #type proc "c" (self: ^CompletionProvider, context_p: ^CompletionContext) -> i32
is_trigger_func_ptr_anon_167 :: #type proc "c" (self: ^CompletionProvider, iter: ^gtk.GtkTextIter, ch: glib.gunichar) -> glib.gboolean
key_activates_func_ptr_anon_168 :: #type proc "c" (self: ^CompletionProvider, context_p: ^CompletionContext, proposal: ^CompletionProposal, keyval: glib.guint, state: gtk.GdkModifierType) -> glib.gboolean
populate_func_ptr_anon_169 :: #type proc "c" (self: ^CompletionProvider, context_p: ^CompletionContext, error: ^^glib.GError) -> ^gio.GListModel
populate_async_func_ptr_anon_170 :: #type proc "c" (self: ^CompletionProvider, context_p: ^CompletionContext, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer)
populate_finish_func_ptr_anon_171 :: #type proc "c" (self: ^CompletionProvider, result: ^gio.GAsyncResult, error: ^^glib.GError) -> ^gio.GListModel
refilter_func_ptr_anon_172 :: #type proc "c" (self: ^CompletionProvider, context_p: ^CompletionContext, model: ^gio.GListModel)
display_func_ptr_anon_173 :: #type proc "c" (self: ^CompletionProvider, context_p: ^CompletionContext, proposal: ^CompletionProposal, cell: ^CompletionCell)
activate_func_ptr_anon_174 :: #type proc "c" (self: ^CompletionProvider, context_p: ^CompletionContext, proposal: ^CompletionProposal)
list_alternates_func_ptr_anon_175 :: #type proc "c" (self: ^CompletionProvider, context_p: ^CompletionContext, proposal: ^CompletionProposal) -> ^glib.GPtrArray
_GtkSourceCompletionProviderInterface :: struct {
    parent_iface: gobj.GTypeInterface,
    get_title: get_title_func_ptr_anon_165,
    get_priority: get_priority_func_ptr_anon_166,
    is_trigger: is_trigger_func_ptr_anon_167,
    key_activates: key_activates_func_ptr_anon_168,
    populate: populate_func_ptr_anon_169,
    populate_async: populate_async_func_ptr_anon_170,
    populate_finish: populate_finish_func_ptr_anon_171,
    refilter: refilter_func_ptr_anon_172,
    display: display_func_ptr_anon_173,
    activate: activate_func_ptr_anon_174,
    list_alternates: list_alternates_func_ptr_anon_175,
}
GutterClass :: struct {
    parent_class: gtk.GtkWidgetClass,
}
query_data_func_ptr_anon_176 :: #type proc "c" (renderer: ^GutterRenderer, lines: [^]GutterLines, line: glib.guint)
begin_func_ptr_anon_177 :: #type proc "c" (renderer: ^GutterRenderer, lines: [^]GutterLines)
snapshot_line_func_ptr_anon_178 :: #type proc "c" (renderer: ^GutterRenderer, snapshot: ^gtk.GtkSnapshot, lines: [^]GutterLines, line: glib.guint)
end_func_ptr_anon_179 :: #type proc "c" (renderer: ^GutterRenderer)
change_view_func_ptr_anon_180 :: #type proc "c" (renderer: ^GutterRenderer, old_view: ^View)
change_buffer_func_ptr_anon_181 :: #type proc "c" (renderer: ^GutterRenderer, old_buffer: ^Buffer)
query_activatable_func_ptr_anon_182 :: #type proc "c" (renderer: ^GutterRenderer, iter: ^gtk.GtkTextIter, area: ^gtk.GdkRectangle) -> glib.gboolean
activate_func_ptr_anon_183 :: #type proc "c" (renderer: ^GutterRenderer, iter: ^gtk.GtkTextIter, area: ^gtk.GdkRectangle, button: glib.guint, state: gtk.GdkModifierType, n_presses: glib.gint)
_GtkSourceGutterRendererClass :: struct {
    parent_class: gtk.GtkWidgetClass,
    query_data: query_data_func_ptr_anon_176,
    begin: begin_func_ptr_anon_177,
    snapshot_line: snapshot_line_func_ptr_anon_178,
    end: end_func_ptr_anon_179,
    change_view: change_view_func_ptr_anon_180,
    change_buffer: change_buffer_func_ptr_anon_181,
    query_activatable: query_activatable_func_ptr_anon_182,
    activate: activate_func_ptr_anon_183,
    _reserved: [20]glib.gpointer,
}
_GtkSourceGutterRenderer :: struct {
    parent_instance: gtk.GtkWidget,
}
HoverDisplayClass :: struct {
    parent_class: gtk.GtkWidgetClass,
}
populate_func_ptr_anon_184 :: #type proc "c" (self: ^HoverProvider, context_p: ^HoverContext, display: ^HoverDisplay, error: ^^glib.GError) -> glib.gboolean
populate_async_func_ptr_anon_185 :: #type proc "c" (self: ^HoverProvider, context_p: ^HoverContext, display: ^HoverDisplay, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer)
populate_finish_func_ptr_anon_186 :: #type proc "c" (self: ^HoverProvider, result: ^gio.GAsyncResult, error: ^^glib.GError) -> glib.gboolean
_GtkSourceHoverProviderInterface :: struct {
    parent_iface: gobj.GTypeInterface,
    populate: populate_func_ptr_anon_184,
    populate_async: populate_async_func_ptr_anon_185,
    populate_finish: populate_finish_func_ptr_anon_186,
}
is_trigger_func_ptr_anon_187 :: #type proc "c" (self: ^Indenter, view: ^View, location: ^gtk.GtkTextIter, state: gtk.GdkModifierType, keyval: glib.guint) -> glib.gboolean
indent_func_ptr_anon_188 :: #type proc "c" (self: ^Indenter, view: ^View, iter: ^gtk.GtkTextIter)
_GtkSourceIndenterInterface :: struct {
    parent_iface: gobj.GTypeInterface,
    is_trigger: is_trigger_func_ptr_anon_187,
    indent: indent_func_ptr_anon_188,
}
_GtkSourceView :: struct {
    parent_instance: gtk.GtkTextView,
}
line_mark_activated_func_ptr_anon_189 :: #type proc "c" (view: ^View, iter: ^gtk.GtkTextIter, button: glib.guint, state: gtk.GdkModifierType, n_presses: glib.gint)
show_completion_func_ptr_anon_190 :: #type proc "c" (view: ^View)
move_lines_func_ptr_anon_191 :: #type proc "c" (view: ^View, down: glib.gboolean)
move_words_func_ptr_anon_192 :: #type proc "c" (view: ^View, step: glib.gint)
push_snippet_func_ptr_anon_193 :: #type proc "c" (view: ^View, snippet: ^Snippet, location: ^gtk.GtkTextIter)
_GtkSourceViewClass :: struct {
    parent_class: gtk.GtkTextViewClass,
    line_mark_activated: line_mark_activated_func_ptr_anon_189,
    show_completion: show_completion_func_ptr_anon_190,
    move_lines: move_lines_func_ptr_anon_191,
    move_words: move_words_func_ptr_anon_192,
    push_snippet: push_snippet_func_ptr_anon_193,
    _reserved: [20]glib.gpointer,
}
_GtkSourceMark :: struct {
    parent_instance: gtk.GtkTextMark,
}
_GtkSourceMarkClass :: struct {
    parent_class: gtk.GtkTextMarkClass,
    _reserved: [10]glib.gpointer,
}
get_style_scheme_func_ptr_anon_194 :: #type proc "c" (chooser: ^StyleSchemeChooser) -> ^StyleScheme
set_style_scheme_func_ptr_anon_195 :: #type proc "c" (chooser: ^StyleSchemeChooser, scheme: ^StyleScheme)
_GtkSourceStyleSchemeChooserInterface :: struct {
    base_interface: gobj.GTypeInterface,
    get_style_scheme: get_style_scheme_func_ptr_anon_194,
    set_style_scheme: set_style_scheme_func_ptr_anon_195,
    _reserved: [12]glib.gpointer,
}
_GtkSourceStyleSchemeChooserButtonClass :: struct {
    parent: gtk.GtkButtonClass,
    _reserved: [10]glib.gpointer,
}
_GtkSourceStyleSchemeChooserButton :: struct {
    parent_instance: gtk.GtkButton,
}
_GtkSourceStyleSchemeChooserWidgetClass :: struct {
    parent: gtk.GtkWidgetClass,
    _reserved: [10]glib.gpointer,
}
_GtkSourceStyleSchemeChooserWidget :: struct {
    parent_instance: gtk.GtkWidget,
}
StyleSchemePreviewClass :: struct {
    parent_class: gtk.GtkWidgetClass,
}
_GtkSourceTag :: struct {
    parent_instance: gtk.GtkTextTag,
}
_GtkSourceTagClass :: struct {
    parent_class: gtk.GtkTextTagClass,
    _reserved: [10]glib.gpointer,
}
VimIMContextClass :: struct {
    parent_class: gtk.GtkIMContextClass,
}

@(default_calling_convention = "c")
foreign gtksourceview_runic {
    @(link_name = "gdk_pixbuf_get_from_surface")
    gdk_pixbuf_get_from_surface :: proc(surface: rawptr, src_x: i32, src_y: i32, width: i32, height: i32) -> ^i32 ---

    @(link_name = "gdk_pixbuf_get_from_texture")
    gdk_pixbuf_get_from_texture :: proc(texture: ^gtk.GdkTexture) -> ^i32 ---

    @(link_name = "gsk_vulkan_renderer_new")
    gsk_vulkan_renderer_new :: proc() -> ^gtk.GskRenderer ---

    @(link_name = "gsk_gl_renderer_new")
    gsk_gl_renderer_new :: proc() -> ^gtk.GskRenderer ---

    @(link_name = "gsk_ngl_renderer_new")
    gsk_ngl_renderer_new :: proc() -> ^gtk.GskRenderer ---

    @(link_name = "gtk_dialog_new")
    gtk_dialog_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_dialog_new_with_buttons")
    gtk_dialog_new_with_buttons :: proc(title: cstring, parent: ^gtk.GtkWindow, flags: GtkDialogFlags, first_button_text: cstring, #c_vararg var_args: ..any) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_dialog_add_action_widget")
    gtk_dialog_add_action_widget :: proc(dialog: ^GtkDialog, child: ^gtk.GtkWidget, response_id: i32) ---

    @(link_name = "gtk_dialog_add_button")
    gtk_dialog_add_button :: proc(dialog: ^GtkDialog, button_text: cstring, response_id: i32) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_dialog_get_widget_for_response")
    gtk_dialog_get_widget_for_response :: proc(dialog: ^GtkDialog, response_id: i32) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_dialog_get_response_for_widget")
    gtk_dialog_get_response_for_widget :: proc(dialog: ^GtkDialog, widget: ^gtk.GtkWidget) -> i32 ---

    @(link_name = "gtk_dialog_get_content_area")
    gtk_dialog_get_content_area :: proc(dialog: ^GtkDialog) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_dialog_get_header_bar")
    gtk_dialog_get_header_bar :: proc(dialog: ^GtkDialog) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_app_chooser_dialog_new")
    gtk_app_chooser_dialog_new :: proc(parent: ^gtk.GtkWindow, flags: GtkDialogFlags, file: ^gio.GFile) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_app_chooser_dialog_new_for_content_type")
    gtk_app_chooser_dialog_new_for_content_type :: proc(parent: ^gtk.GtkWindow, flags: GtkDialogFlags, content_type: cstring) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_app_chooser_dialog_get_widget")
    gtk_app_chooser_dialog_get_widget :: proc(self: ^GtkAppChooserDialog) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_app_chooser_widget_new")
    gtk_app_chooser_widget_new :: proc(content_type: cstring) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_app_chooser_button_new")
    gtk_app_chooser_button_new :: proc(content_type: cstring) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_assistant_new")
    gtk_assistant_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_assistant_get_nth_page")
    gtk_assistant_get_nth_page :: proc(assistant: ^GtkAssistant, page_num: i32) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_assistant_prepend_page")
    gtk_assistant_prepend_page :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget) -> i32 ---

    @(link_name = "gtk_assistant_append_page")
    gtk_assistant_append_page :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget) -> i32 ---

    @(link_name = "gtk_assistant_insert_page")
    gtk_assistant_insert_page :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget, position: i32) -> i32 ---

    @(link_name = "gtk_assistant_set_page_type")
    gtk_assistant_set_page_type :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget, type: GtkAssistantPageType) ---

    @(link_name = "gtk_assistant_get_page_type")
    gtk_assistant_get_page_type :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget) -> GtkAssistantPageType ---

    @(link_name = "gtk_assistant_set_page_title")
    gtk_assistant_set_page_title :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget, title: cstring) ---

    @(link_name = "gtk_assistant_get_page_title")
    gtk_assistant_get_page_title :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget) -> cstring ---

    @(link_name = "gtk_assistant_set_page_complete")
    gtk_assistant_set_page_complete :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget, complete: glib.gboolean) ---

    @(link_name = "gtk_assistant_get_page_complete")
    gtk_assistant_get_page_complete :: proc(assistant: ^GtkAssistant, page: ^gtk.GtkWidget) -> glib.gboolean ---

    @(link_name = "gtk_assistant_add_action_widget")
    gtk_assistant_add_action_widget :: proc(assistant: ^GtkAssistant, child: ^gtk.GtkWidget) ---

    @(link_name = "gtk_assistant_remove_action_widget")
    gtk_assistant_remove_action_widget :: proc(assistant: ^GtkAssistant, child: ^gtk.GtkWidget) ---

    @(link_name = "gtk_assistant_get_page")
    gtk_assistant_get_page :: proc(assistant: ^GtkAssistant, child: ^gtk.GtkWidget) -> ^GtkAssistantPage ---

    @(link_name = "gtk_assistant_page_get_child")
    gtk_assistant_page_get_child :: proc(page: ^GtkAssistantPage) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_cell_editable_start_editing")
    gtk_cell_editable_start_editing :: proc(cell_editable: ^GtkCellEditable, event: ^gtk.GdkEvent) ---

    @(link_name = "gtk_cell_renderer_get_request_mode")
    gtk_cell_renderer_get_request_mode :: proc(cell: ^GtkCellRenderer) -> gtk.GtkSizeRequestMode ---

    @(link_name = "gtk_cell_renderer_get_preferred_width")
    gtk_cell_renderer_get_preferred_width :: proc(cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, minimum_size: ^i32, natural_size: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_preferred_height_for_width")
    gtk_cell_renderer_get_preferred_height_for_width :: proc(cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, width: i32, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_preferred_height")
    gtk_cell_renderer_get_preferred_height :: proc(cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, minimum_size: ^i32, natural_size: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_preferred_width_for_height")
    gtk_cell_renderer_get_preferred_width_for_height :: proc(cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, height: i32, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_preferred_size")
    gtk_cell_renderer_get_preferred_size :: proc(cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, minimum_size: ^gtk.GtkRequisition, natural_size: ^gtk.GtkRequisition) ---

    @(link_name = "gtk_cell_renderer_get_aligned_area")
    gtk_cell_renderer_get_aligned_area :: proc(cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, flags: GtkCellRendererState, cell_area: ^gtk.GdkRectangle, aligned_area: ^gtk.GdkRectangle) ---

    @(link_name = "gtk_cell_renderer_snapshot")
    gtk_cell_renderer_snapshot :: proc(cell: ^GtkCellRenderer, snapshot: ^gtk.GtkSnapshot, widget: ^gtk.GtkWidget, background_area: ^gtk.GdkRectangle, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState) ---

    @(link_name = "gtk_cell_renderer_activate")
    gtk_cell_renderer_activate :: proc(cell: ^GtkCellRenderer, event: ^gtk.GdkEvent, widget: ^gtk.GtkWidget, path: cstring, background_area: ^gtk.GdkRectangle, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState) -> glib.gboolean ---

    @(link_name = "gtk_cell_renderer_start_editing")
    gtk_cell_renderer_start_editing :: proc(cell: ^GtkCellRenderer, event: ^gtk.GdkEvent, widget: ^gtk.GtkWidget, path: cstring, background_area: ^gtk.GdkRectangle, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState) -> ^GtkCellEditable ---

    @(link_name = "_gtk_cell_renderer_calc_offset")
    _gtk_cell_renderer_calc_offset :: proc(cell: ^GtkCellRenderer, cell_area: ^gtk.GdkRectangle, direction: gtk.GtkTextDirection, width: i32, height: i32, x_offset: ^i32, y_offset: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_state")
    gtk_cell_renderer_get_state :: proc(cell: ^GtkCellRenderer, widget: ^gtk.GtkWidget, cell_state: GtkCellRendererState) -> gtk.GtkStateFlags ---

    @(link_name = "gtk_cell_area_foreach_alloc")
    gtk_cell_area_foreach_alloc :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, cell_area: ^gtk.GdkRectangle, background_area: ^gtk.GdkRectangle, callback: GtkCellAllocCallback, callback_data: glib.gpointer) ---

    @(link_name = "gtk_cell_area_event")
    gtk_cell_area_event :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, event: ^gtk.GdkEvent, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState) -> i32 ---

    @(link_name = "gtk_cell_area_snapshot")
    gtk_cell_area_snapshot :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, snapshot: ^gtk.GtkSnapshot, background_area: ^gtk.GdkRectangle, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState, paint_focus: glib.gboolean) ---

    @(link_name = "gtk_cell_area_get_cell_allocation")
    gtk_cell_area_get_cell_allocation :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, renderer: ^GtkCellRenderer, cell_area: ^gtk.GdkRectangle, allocation: ^gtk.GdkRectangle) ---

    @(link_name = "gtk_cell_area_get_cell_at_position")
    gtk_cell_area_get_cell_at_position :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, cell_area: ^gtk.GdkRectangle, x: i32, y: i32, alloc_area: ^gtk.GdkRectangle) -> ^GtkCellRenderer ---

    @(link_name = "gtk_cell_area_get_request_mode")
    gtk_cell_area_get_request_mode :: proc(area: ^GtkCellArea) -> gtk.GtkSizeRequestMode ---

    @(link_name = "gtk_cell_area_get_preferred_width")
    gtk_cell_area_get_preferred_width :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_area_get_preferred_height_for_width")
    gtk_cell_area_get_preferred_height_for_width :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, width: i32, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_area_get_preferred_height")
    gtk_cell_area_get_preferred_height :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_area_get_preferred_width_for_height")
    gtk_cell_area_get_preferred_width_for_height :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, height: i32, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_area_activate")
    gtk_cell_area_activate :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext, widget: ^gtk.GtkWidget, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState, edit_only: glib.gboolean) -> glib.gboolean ---

    @(link_name = "gtk_cell_area_focus")
    gtk_cell_area_focus :: proc(area: ^GtkCellArea, direction: gtk.GtkDirectionType) -> glib.gboolean ---

    @(link_name = "gtk_cell_area_activate_cell")
    gtk_cell_area_activate_cell :: proc(area: ^GtkCellArea, widget: ^gtk.GtkWidget, renderer: ^GtkCellRenderer, event: ^gtk.GdkEvent, cell_area: ^gtk.GdkRectangle, flags: GtkCellRendererState) -> glib.gboolean ---

    @(link_name = "gtk_cell_area_inner_cell_area")
    gtk_cell_area_inner_cell_area :: proc(area: ^GtkCellArea, widget: ^gtk.GtkWidget, cell_area: ^gtk.GdkRectangle, inner_area: ^gtk.GdkRectangle) ---

    @(link_name = "gtk_cell_area_request_renderer")
    gtk_cell_area_request_renderer :: proc(area: ^GtkCellArea, renderer: ^GtkCellRenderer, orientation: gtk.GtkOrientation, widget: ^gtk.GtkWidget, for_size: i32, minimum_size: ^i32, natural_size: ^i32) ---

    @(link_name = "_gtk_cell_layout_buildable_custom_tag_start")
    _gtk_cell_layout_buildable_custom_tag_start :: proc(buildable: ^gtk.GtkBuildable, builder: ^gtk.GtkBuilder, child: ^gobj.GObject, tagname: cstring, parser: ^gtk.GtkBuildableParser, data: ^glib.gpointer) -> glib.gboolean ---

    @(link_name = "_gtk_cell_layout_buildable_custom_tag_end")
    _gtk_cell_layout_buildable_custom_tag_end :: proc(buildable: ^gtk.GtkBuildable, builder: ^gtk.GtkBuilder, child: ^gobj.GObject, tagname: cstring, data: ^glib.gpointer) -> glib.gboolean ---

    @(link_name = "_gtk_cell_layout_buildable_add_child")
    _gtk_cell_layout_buildable_add_child :: proc(buildable: ^gtk.GtkBuildable, builder: ^gtk.GtkBuilder, child: ^gobj.GObject, type: cstring) ---

    @(link_name = "gtk_cell_view_new")
    gtk_cell_view_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_cell_view_new_with_context")
    gtk_cell_view_new_with_context :: proc(area: ^GtkCellArea, context_p: ^GtkCellAreaContext) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_cell_view_new_with_text")
    gtk_cell_view_new_with_text :: proc(text: cstring) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_cell_view_new_with_markup")
    gtk_cell_view_new_with_markup :: proc(markup: cstring) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_cell_view_new_with_texture")
    gtk_cell_view_new_with_texture :: proc(texture: ^gtk.GdkTexture) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_color_button_new")
    gtk_color_button_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_color_button_new_with_rgba")
    gtk_color_button_new_with_rgba :: proc(rgba: ^gtk.GdkRGBA) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_color_chooser_get_rgba")
    gtk_color_chooser_get_rgba :: proc(chooser: ^GtkColorChooser, color: ^gtk.GdkRGBA) ---

    @(link_name = "gtk_color_chooser_set_rgba")
    gtk_color_chooser_set_rgba :: proc(chooser: ^GtkColorChooser, color: ^gtk.GdkRGBA) ---

    @(link_name = "gtk_color_chooser_add_palette")
    gtk_color_chooser_add_palette :: proc(chooser: ^GtkColorChooser, orientation: gtk.GtkOrientation, colors_per_line: i32, n_colors: i32, colors: [^]gtk.GdkRGBA) ---

    @(link_name = "gtk_color_chooser_dialog_new")
    gtk_color_chooser_dialog_new :: proc(title: cstring, parent: ^gtk.GtkWindow) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_color_chooser_widget_new")
    gtk_color_chooser_widget_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_tree_sortable_get_sort_column_id")
    gtk_tree_sortable_get_sort_column_id :: proc(sortable: ^GtkTreeSortable, sort_column_id: ^i32, order: ^gtk.GtkSortType) -> glib.gboolean ---

    @(link_name = "gtk_tree_sortable_set_sort_column_id")
    gtk_tree_sortable_set_sort_column_id :: proc(sortable: ^GtkTreeSortable, sort_column_id: i32, order: gtk.GtkSortType) ---

    @(link_name = "gtk_tree_view_column_set_widget")
    gtk_tree_view_column_set_widget :: proc(tree_column: ^GtkTreeViewColumn, widget: ^gtk.GtkWidget) ---

    @(link_name = "gtk_tree_view_column_get_widget")
    gtk_tree_view_column_get_widget :: proc(tree_column: ^GtkTreeViewColumn) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_tree_view_column_set_sort_order")
    gtk_tree_view_column_set_sort_order :: proc(tree_column: ^GtkTreeViewColumn, order: gtk.GtkSortType) ---

    @(link_name = "gtk_tree_view_column_get_sort_order")
    gtk_tree_view_column_get_sort_order :: proc(tree_column: ^GtkTreeViewColumn) -> gtk.GtkSortType ---

    @(link_name = "gtk_tree_view_column_get_tree_view")
    gtk_tree_view_column_get_tree_view :: proc(tree_column: ^GtkTreeViewColumn) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_tree_view_column_get_button")
    gtk_tree_view_column_get_button :: proc(tree_column: ^GtkTreeViewColumn) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_entry_completion_get_entry")
    gtk_entry_completion_get_entry :: proc(completion: ^GtkEntryCompletion) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_tree_view_new")
    gtk_tree_view_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_tree_view_new_with_model")
    gtk_tree_view_new_with_model :: proc(model: ^GtkTreeModel) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_tree_view_get_cell_area")
    gtk_tree_view_get_cell_area :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath, column: ^GtkTreeViewColumn, rect: ^gtk.GdkRectangle) ---

    @(link_name = "gtk_tree_view_get_background_area")
    gtk_tree_view_get_background_area :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath, column: ^GtkTreeViewColumn, rect: ^gtk.GdkRectangle) ---

    @(link_name = "gtk_tree_view_get_visible_rect")
    gtk_tree_view_get_visible_rect :: proc(tree_view: ^GtkTreeView, visible_rect: ^gtk.GdkRectangle) ---

    @(link_name = "gtk_tree_view_enable_model_drag_source")
    gtk_tree_view_enable_model_drag_source :: proc(tree_view: ^GtkTreeView, start_button_mask: gtk.GdkModifierType, formats: [^]gtk.GdkContentFormats, actions: gtk.GdkDragAction) ---

    @(link_name = "gtk_tree_view_enable_model_drag_dest")
    gtk_tree_view_enable_model_drag_dest :: proc(tree_view: ^GtkTreeView, formats: [^]gtk.GdkContentFormats, actions: gtk.GdkDragAction) ---

    @(link_name = "gtk_tree_view_create_row_drag_icon")
    gtk_tree_view_create_row_drag_icon :: proc(tree_view: ^GtkTreeView, path: ^GtkTreePath) -> ^gtk.GdkPaintable ---

    @(link_name = "gtk_tree_view_get_search_entry")
    gtk_tree_view_get_search_entry :: proc(tree_view: ^GtkTreeView) -> ^gtk.GtkEditable ---

    @(link_name = "gtk_tree_view_set_search_entry")
    gtk_tree_view_set_search_entry :: proc(tree_view: ^GtkTreeView, entry: ^gtk.GtkEditable) ---

    @(link_name = "gtk_tree_view_get_grid_lines")
    gtk_tree_view_get_grid_lines :: proc(tree_view: ^GtkTreeView) -> gtk.GtkTreeViewGridLines ---

    @(link_name = "gtk_tree_view_set_grid_lines")
    gtk_tree_view_set_grid_lines :: proc(tree_view: ^GtkTreeView, grid_lines: gtk.GtkTreeViewGridLines) ---

    @(link_name = "gtk_tree_view_set_tooltip_row")
    gtk_tree_view_set_tooltip_row :: proc(tree_view: ^GtkTreeView, tooltip: ^gtk.GtkTooltip, path: ^GtkTreePath) ---

    @(link_name = "gtk_tree_view_set_tooltip_cell")
    gtk_tree_view_set_tooltip_cell :: proc(tree_view: ^GtkTreeView, tooltip: ^gtk.GtkTooltip, path: ^GtkTreePath, column: ^GtkTreeViewColumn, cell: ^GtkCellRenderer) ---

    @(link_name = "gtk_combo_box_new")
    gtk_combo_box_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_combo_box_new_with_entry")
    gtk_combo_box_new_with_entry :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_combo_box_new_with_model")
    gtk_combo_box_new_with_model :: proc(model: ^GtkTreeModel) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_combo_box_new_with_model_and_entry")
    gtk_combo_box_new_with_model_and_entry :: proc(model: ^GtkTreeModel) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_combo_box_set_button_sensitivity")
    gtk_combo_box_set_button_sensitivity :: proc(combo_box: ^GtkComboBox, sensitivity: gtk.GtkSensitivityType) ---

    @(link_name = "gtk_combo_box_get_button_sensitivity")
    gtk_combo_box_get_button_sensitivity :: proc(combo_box: ^GtkComboBox) -> gtk.GtkSensitivityType ---

    @(link_name = "gtk_combo_box_popup_for_device")
    gtk_combo_box_popup_for_device :: proc(combo_box: ^GtkComboBox, device: ^gtk.GdkDevice) ---

    @(link_name = "gtk_combo_box_set_child")
    gtk_combo_box_set_child :: proc(combo_box: ^GtkComboBox, child: ^gtk.GtkWidget) ---

    @(link_name = "gtk_combo_box_get_child")
    gtk_combo_box_get_child :: proc(combo_box: ^GtkComboBox) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_combo_box_text_new")
    gtk_combo_box_text_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_combo_box_text_new_with_entry")
    gtk_combo_box_text_new_with_entry :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_file_chooser_add_filter")
    gtk_file_chooser_add_filter :: proc(chooser: ^GtkFileChooser, filter: ^gtk.GtkFileFilter) ---

    @(link_name = "gtk_file_chooser_remove_filter")
    gtk_file_chooser_remove_filter :: proc(chooser: ^GtkFileChooser, filter: ^gtk.GtkFileFilter) ---

    @(link_name = "gtk_file_chooser_set_filter")
    gtk_file_chooser_set_filter :: proc(chooser: ^GtkFileChooser, filter: ^gtk.GtkFileFilter) ---

    @(link_name = "gtk_file_chooser_get_filter")
    gtk_file_chooser_get_filter :: proc(chooser: ^GtkFileChooser) -> ^gtk.GtkFileFilter ---

    @(link_name = "gtk_file_chooser_dialog_new")
    gtk_file_chooser_dialog_new :: proc(title: cstring, parent: ^gtk.GtkWindow, action: GtkFileChooserAction, first_button_text: cstring, #c_vararg var_args: ..any) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_file_chooser_native_new")
    gtk_file_chooser_native_new :: proc(title: cstring, parent: ^gtk.GtkWindow, action: GtkFileChooserAction, accept_label: cstring, cancel_label: cstring) -> ^GtkFileChooserNative ---

    @(link_name = "gtk_file_chooser_widget_new")
    gtk_file_chooser_widget_new :: proc(action: GtkFileChooserAction) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_font_button_new")
    gtk_font_button_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_font_button_new_with_font")
    gtk_font_button_new_with_font :: proc(fontname: cstring) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_font_chooser_get_font_family")
    gtk_font_chooser_get_font_family :: proc(fontchooser: ^GtkFontChooser) -> ^pango.PangoFontFamily ---

    @(link_name = "gtk_font_chooser_get_font_face")
    gtk_font_chooser_get_font_face :: proc(fontchooser: ^GtkFontChooser) -> ^pango.PangoFontFace ---

    @(link_name = "gtk_font_chooser_get_font_desc")
    gtk_font_chooser_get_font_desc :: proc(fontchooser: ^GtkFontChooser) -> ^pango.PangoFontDescription ---

    @(link_name = "gtk_font_chooser_set_font_desc")
    gtk_font_chooser_set_font_desc :: proc(fontchooser: ^GtkFontChooser, font_desc: ^pango.PangoFontDescription) ---

    @(link_name = "gtk_font_chooser_set_font_map")
    gtk_font_chooser_set_font_map :: proc(fontchooser: ^GtkFontChooser, fontmap: ^pango.PangoFontMap) ---

    @(link_name = "gtk_font_chooser_get_font_map")
    gtk_font_chooser_get_font_map :: proc(fontchooser: ^GtkFontChooser) -> ^pango.PangoFontMap ---

    @(link_name = "gtk_font_chooser_dialog_new")
    gtk_font_chooser_dialog_new :: proc(title: cstring, parent: ^gtk.GtkWindow) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_font_chooser_widget_new")
    gtk_font_chooser_widget_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_icon_view_new")
    gtk_icon_view_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_icon_view_new_with_area")
    gtk_icon_view_new_with_area :: proc(area: ^GtkCellArea) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_icon_view_new_with_model")
    gtk_icon_view_new_with_model :: proc(model: ^GtkTreeModel) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_icon_view_set_item_orientation")
    gtk_icon_view_set_item_orientation :: proc(icon_view: ^GtkIconView, orientation: gtk.GtkOrientation) ---

    @(link_name = "gtk_icon_view_get_item_orientation")
    gtk_icon_view_get_item_orientation :: proc(icon_view: ^GtkIconView) -> gtk.GtkOrientation ---

    @(link_name = "gtk_icon_view_set_selection_mode")
    gtk_icon_view_set_selection_mode :: proc(icon_view: ^GtkIconView, mode: gtk.GtkSelectionMode) ---

    @(link_name = "gtk_icon_view_get_selection_mode")
    gtk_icon_view_get_selection_mode :: proc(icon_view: ^GtkIconView) -> gtk.GtkSelectionMode ---

    @(link_name = "gtk_icon_view_enable_model_drag_source")
    gtk_icon_view_enable_model_drag_source :: proc(icon_view: ^GtkIconView, start_button_mask: gtk.GdkModifierType, formats: [^]gtk.GdkContentFormats, actions: gtk.GdkDragAction) ---

    @(link_name = "gtk_icon_view_enable_model_drag_dest")
    gtk_icon_view_enable_model_drag_dest :: proc(icon_view: ^GtkIconView, formats: [^]gtk.GdkContentFormats, actions: gtk.GdkDragAction) ---

    @(link_name = "gtk_icon_view_create_drag_icon")
    gtk_icon_view_create_drag_icon :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath) -> ^gtk.GdkPaintable ---

    @(link_name = "gtk_icon_view_get_cell_rect")
    gtk_icon_view_get_cell_rect :: proc(icon_view: ^GtkIconView, path: ^GtkTreePath, cell: ^GtkCellRenderer, rect: ^gtk.GdkRectangle) -> glib.gboolean ---

    @(link_name = "gtk_icon_view_set_tooltip_item")
    gtk_icon_view_set_tooltip_item :: proc(icon_view: ^GtkIconView, tooltip: ^gtk.GtkTooltip, path: ^GtkTreePath) ---

    @(link_name = "gtk_icon_view_set_tooltip_cell")
    gtk_icon_view_set_tooltip_cell :: proc(icon_view: ^GtkIconView, tooltip: ^gtk.GtkTooltip, path: ^GtkTreePath, cell: ^GtkCellRenderer) ---

    @(link_name = "gtk_info_bar_new")
    gtk_info_bar_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_info_bar_new_with_buttons")
    gtk_info_bar_new_with_buttons :: proc(first_button_text: cstring, #c_vararg var_args: ..any) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_info_bar_add_action_widget")
    gtk_info_bar_add_action_widget :: proc(info_bar: ^GtkInfoBar, child: ^gtk.GtkWidget, response_id: i32) ---

    @(link_name = "gtk_info_bar_remove_action_widget")
    gtk_info_bar_remove_action_widget :: proc(info_bar: ^GtkInfoBar, widget: ^gtk.GtkWidget) ---

    @(link_name = "gtk_info_bar_add_button")
    gtk_info_bar_add_button :: proc(info_bar: ^GtkInfoBar, button_text: cstring, response_id: i32) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_info_bar_add_child")
    gtk_info_bar_add_child :: proc(info_bar: ^GtkInfoBar, widget: ^gtk.GtkWidget) ---

    @(link_name = "gtk_info_bar_remove_child")
    gtk_info_bar_remove_child :: proc(info_bar: ^GtkInfoBar, widget: ^gtk.GtkWidget) ---

    @(link_name = "gtk_info_bar_set_message_type")
    gtk_info_bar_set_message_type :: proc(info_bar: ^GtkInfoBar, message_type: gtk.GtkMessageType) ---

    @(link_name = "gtk_info_bar_get_message_type")
    gtk_info_bar_get_message_type :: proc(info_bar: ^GtkInfoBar) -> gtk.GtkMessageType ---

    @(link_name = "gtk_lock_button_new")
    gtk_lock_button_new :: proc(permission: ^gio.GPermission) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_message_dialog_new")
    gtk_message_dialog_new :: proc(parent: ^gtk.GtkWindow, flags: GtkDialogFlags, type: gtk.GtkMessageType, buttons: GtkButtonsType, message_format: cstring, #c_vararg var_args: ..any) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_message_dialog_new_with_markup")
    gtk_message_dialog_new_with_markup :: proc(parent: ^gtk.GtkWindow, flags: GtkDialogFlags, type: gtk.GtkMessageType, buttons: GtkButtonsType, message_format: cstring, #c_vararg var_args: ..any) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_message_dialog_get_message_area")
    gtk_message_dialog_get_message_area :: proc(message_dialog: ^GtkMessageDialog) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_paper_size_new_custom")
    gtk_paper_size_new_custom :: proc(name: cstring, display_name: cstring, width: f64, height: f64, unit: gtk.GtkUnit) -> ^GtkPaperSize ---

    @(link_name = "gtk_paper_size_get_width")
    gtk_paper_size_get_width :: proc(size: ^GtkPaperSize, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_paper_size_get_height")
    gtk_paper_size_get_height :: proc(size: ^GtkPaperSize, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_paper_size_set_size")
    gtk_paper_size_set_size :: proc(size: ^GtkPaperSize, width: f64, height: f64, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_paper_size_get_default_top_margin")
    gtk_paper_size_get_default_top_margin :: proc(size: ^GtkPaperSize, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_paper_size_get_default_bottom_margin")
    gtk_paper_size_get_default_bottom_margin :: proc(size: ^GtkPaperSize, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_paper_size_get_default_left_margin")
    gtk_paper_size_get_default_left_margin :: proc(size: ^GtkPaperSize, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_paper_size_get_default_right_margin")
    gtk_paper_size_get_default_right_margin :: proc(size: ^GtkPaperSize, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_page_setup_get_orientation")
    gtk_page_setup_get_orientation :: proc(setup: ^GtkPageSetup) -> gtk.GtkPageOrientation ---

    @(link_name = "gtk_page_setup_set_orientation")
    gtk_page_setup_set_orientation :: proc(setup: ^GtkPageSetup, orientation: gtk.GtkPageOrientation) ---

    @(link_name = "gtk_page_setup_get_top_margin")
    gtk_page_setup_get_top_margin :: proc(setup: ^GtkPageSetup, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_page_setup_set_top_margin")
    gtk_page_setup_set_top_margin :: proc(setup: ^GtkPageSetup, margin: f64, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_page_setup_get_bottom_margin")
    gtk_page_setup_get_bottom_margin :: proc(setup: ^GtkPageSetup, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_page_setup_set_bottom_margin")
    gtk_page_setup_set_bottom_margin :: proc(setup: ^GtkPageSetup, margin: f64, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_page_setup_get_left_margin")
    gtk_page_setup_get_left_margin :: proc(setup: ^GtkPageSetup, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_page_setup_set_left_margin")
    gtk_page_setup_set_left_margin :: proc(setup: ^GtkPageSetup, margin: f64, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_page_setup_get_right_margin")
    gtk_page_setup_get_right_margin :: proc(setup: ^GtkPageSetup, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_page_setup_set_right_margin")
    gtk_page_setup_set_right_margin :: proc(setup: ^GtkPageSetup, margin: f64, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_page_setup_get_paper_width")
    gtk_page_setup_get_paper_width :: proc(setup: ^GtkPageSetup, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_page_setup_get_paper_height")
    gtk_page_setup_get_paper_height :: proc(setup: ^GtkPageSetup, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_page_setup_get_page_width")
    gtk_page_setup_get_page_width :: proc(setup: ^GtkPageSetup, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_page_setup_get_page_height")
    gtk_page_setup_get_page_height :: proc(setup: ^GtkPageSetup, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_print_settings_get_length")
    gtk_print_settings_get_length :: proc(settings: [^]GtkPrintSettings, key: cstring, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_print_settings_set_length")
    gtk_print_settings_set_length :: proc(settings: [^]GtkPrintSettings, key: cstring, value: f64, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_print_settings_get_orientation")
    gtk_print_settings_get_orientation :: proc(settings: [^]GtkPrintSettings) -> gtk.GtkPageOrientation ---

    @(link_name = "gtk_print_settings_set_orientation")
    gtk_print_settings_set_orientation :: proc(settings: [^]GtkPrintSettings, orientation: gtk.GtkPageOrientation) ---

    @(link_name = "gtk_print_settings_get_paper_width")
    gtk_print_settings_get_paper_width :: proc(settings: [^]GtkPrintSettings, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_print_settings_set_paper_width")
    gtk_print_settings_set_paper_width :: proc(settings: [^]GtkPrintSettings, width: f64, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_print_settings_get_paper_height")
    gtk_print_settings_get_paper_height :: proc(settings: [^]GtkPrintSettings, unit: gtk.GtkUnit) -> f64 ---

    @(link_name = "gtk_print_settings_set_paper_height")
    gtk_print_settings_set_paper_height :: proc(settings: [^]GtkPrintSettings, height: f64, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_print_settings_get_duplex")
    gtk_print_settings_get_duplex :: proc(settings: [^]GtkPrintSettings) -> gtk.GtkPrintDuplex ---

    @(link_name = "gtk_print_settings_set_duplex")
    gtk_print_settings_set_duplex :: proc(settings: [^]GtkPrintSettings, duplex: gtk.GtkPrintDuplex) ---

    @(link_name = "gtk_print_settings_get_quality")
    gtk_print_settings_get_quality :: proc(settings: [^]GtkPrintSettings) -> gtk.GtkPrintQuality ---

    @(link_name = "gtk_print_settings_set_quality")
    gtk_print_settings_set_quality :: proc(settings: [^]GtkPrintSettings, quality: gtk.GtkPrintQuality) ---

    @(link_name = "gtk_print_settings_get_number_up_layout")
    gtk_print_settings_get_number_up_layout :: proc(settings: [^]GtkPrintSettings) -> gtk.GtkNumberUpLayout ---

    @(link_name = "gtk_print_settings_set_number_up_layout")
    gtk_print_settings_set_number_up_layout :: proc(settings: [^]GtkPrintSettings, number_up_layout: gtk.GtkNumberUpLayout) ---

    @(link_name = "gtk_print_settings_get_print_pages")
    gtk_print_settings_get_print_pages :: proc(settings: [^]GtkPrintSettings) -> gtk.GtkPrintPages ---

    @(link_name = "gtk_print_settings_set_print_pages")
    gtk_print_settings_set_print_pages :: proc(settings: [^]GtkPrintSettings, pages: gtk.GtkPrintPages) ---

    @(link_name = "gtk_print_settings_get_page_set")
    gtk_print_settings_get_page_set :: proc(settings: [^]GtkPrintSettings) -> gtk.GtkPageSet ---

    @(link_name = "gtk_print_settings_set_page_set")
    gtk_print_settings_set_page_set :: proc(settings: [^]GtkPrintSettings, page_set: gtk.GtkPageSet) ---

    @(link_name = "gtk_print_context_get_cairo_context")
    gtk_print_context_get_cairo_context :: proc(context_p: ^GtkPrintContext) -> ^i32 ---

    @(link_name = "gtk_print_context_get_pango_fontmap")
    gtk_print_context_get_pango_fontmap :: proc(context_p: ^GtkPrintContext) -> ^pango.PangoFontMap ---

    @(link_name = "gtk_print_context_create_pango_context")
    gtk_print_context_create_pango_context :: proc(context_p: ^GtkPrintContext) -> ^pango.PangoContext ---

    @(link_name = "gtk_print_context_create_pango_layout")
    gtk_print_context_create_pango_layout :: proc(context_p: ^GtkPrintContext) -> ^pango.PangoLayout ---

    @(link_name = "gtk_print_context_set_cairo_context")
    gtk_print_context_set_cairo_context :: proc(context_p: ^GtkPrintContext, cr: ^i32, dpi_x: f64, dpi_y: f64) ---

    @(link_name = "gtk_print_operation_set_unit")
    gtk_print_operation_set_unit :: proc(op: ^GtkPrintOperation, unit: gtk.GtkUnit) ---

    @(link_name = "gtk_print_operation_run")
    gtk_print_operation_run :: proc(op: ^GtkPrintOperation, action: GtkPrintOperationAction, parent: ^gtk.GtkWindow, error: ^^glib.GError) -> GtkPrintOperationResult ---

    @(link_name = "gtk_print_run_page_setup_dialog")
    gtk_print_run_page_setup_dialog :: proc(parent: ^gtk.GtkWindow, page_setup: ^GtkPageSetup, settings: [^]GtkPrintSettings) -> ^GtkPageSetup ---

    @(link_name = "gtk_print_run_page_setup_dialog_async")
    gtk_print_run_page_setup_dialog_async :: proc(parent: ^gtk.GtkWindow, page_setup: ^GtkPageSetup, settings: [^]GtkPrintSettings, done_cb: GtkPageSetupDoneFunc, data: glib.gpointer) ---

    @(link_name = "gtk_render_check")
    gtk_render_check :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_option")
    gtk_render_option :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_arrow")
    gtk_render_arrow :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, angle: f64, x: f64, y: f64, size: f64) ---

    @(link_name = "gtk_render_background")
    gtk_render_background :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_frame")
    gtk_render_frame :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_expander")
    gtk_render_expander :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_focus")
    gtk_render_focus :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_layout")
    gtk_render_layout :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, layout: ^pango.PangoLayout) ---

    @(link_name = "gtk_render_line")
    gtk_render_line :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x0: f64, y0: f64, x1: f64, y1: f64) ---

    @(link_name = "gtk_render_handle")
    gtk_render_handle :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_activity")
    gtk_render_activity :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_icon")
    gtk_render_icon :: proc(context_p: ^gtk.GtkStyleContext, cr: ^i32, texture: ^gtk.GdkTexture, x: f64, y: f64) ---

    @(link_name = "gtk_snapshot_render_background")
    gtk_snapshot_render_background :: proc(snapshot: ^gtk.GtkSnapshot, context_p: ^gtk.GtkStyleContext, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_snapshot_render_frame")
    gtk_snapshot_render_frame :: proc(snapshot: ^gtk.GtkSnapshot, context_p: ^gtk.GtkStyleContext, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_snapshot_render_focus")
    gtk_snapshot_render_focus :: proc(snapshot: ^gtk.GtkSnapshot, context_p: ^gtk.GtkStyleContext, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_snapshot_render_layout")
    gtk_snapshot_render_layout :: proc(snapshot: ^gtk.GtkSnapshot, context_p: ^gtk.GtkStyleContext, x: f64, y: f64, layout: ^pango.PangoLayout) ---

    @(link_name = "gtk_snapshot_render_insertion_cursor")
    gtk_snapshot_render_insertion_cursor :: proc(snapshot: ^gtk.GtkSnapshot, context_p: ^gtk.GtkStyleContext, x: f64, y: f64, layout: ^pango.PangoLayout, index: i32, direction: pango.PangoDirection) ---

    @(link_name = "gtk_shortcut_label_new")
    gtk_shortcut_label_new :: proc(accelerator: cstring) -> ^gtk.GtkWidget ---

    @(link_name = "gtk_show_uri_full")
    gtk_show_uri_full :: proc(parent: ^gtk.GtkWindow, uri: cstring, timestamp: glib.guint32, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer) ---

    @(link_name = "gtk_show_uri_full_finish")
    gtk_show_uri_full_finish :: proc(parent: ^gtk.GtkWindow, result: ^gio.GAsyncResult, error: ^^glib.GError) -> glib.gboolean ---

    @(link_name = "gtk_show_uri")
    gtk_show_uri :: proc(parent: ^gtk.GtkWindow, uri: cstring, timestamp: glib.guint32) ---

    @(link_name = "gtk_statusbar_new")
    gtk_statusbar_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "gtk_style_context_add_provider")
    gtk_style_context_add_provider :: proc(context_p: ^gtk.GtkStyleContext, provider: ^gtk.GtkStyleProvider, priority: glib.guint) ---

    @(link_name = "gtk_style_context_remove_provider")
    gtk_style_context_remove_provider :: proc(context_p: ^gtk.GtkStyleContext, provider: ^gtk.GtkStyleProvider) ---

    @(link_name = "gtk_style_context_save")
    gtk_style_context_save :: proc(context_p: ^gtk.GtkStyleContext) ---

    @(link_name = "gtk_style_context_restore")
    gtk_style_context_restore :: proc(context_p: ^gtk.GtkStyleContext) ---

    @(link_name = "gtk_style_context_set_state")
    gtk_style_context_set_state :: proc(context_p: ^gtk.GtkStyleContext, flags: gtk.GtkStateFlags) ---

    @(link_name = "gtk_style_context_get_state")
    gtk_style_context_get_state :: proc(context_p: ^gtk.GtkStyleContext) -> gtk.GtkStateFlags ---

    @(link_name = "gtk_style_context_set_scale")
    gtk_style_context_set_scale :: proc(context_p: ^gtk.GtkStyleContext, scale: i32) ---

    @(link_name = "gtk_style_context_get_scale")
    gtk_style_context_get_scale :: proc(context_p: ^gtk.GtkStyleContext) -> i32 ---

    @(link_name = "gtk_style_context_add_class")
    gtk_style_context_add_class :: proc(context_p: ^gtk.GtkStyleContext, class_name: cstring) ---

    @(link_name = "gtk_style_context_remove_class")
    gtk_style_context_remove_class :: proc(context_p: ^gtk.GtkStyleContext, class_name: cstring) ---

    @(link_name = "gtk_style_context_has_class")
    gtk_style_context_has_class :: proc(context_p: ^gtk.GtkStyleContext, class_name: cstring) -> glib.gboolean ---

    @(link_name = "gtk_style_context_set_display")
    gtk_style_context_set_display :: proc(context_p: ^gtk.GtkStyleContext, display: ^gtk.GdkDisplay) ---

    @(link_name = "gtk_style_context_get_display")
    gtk_style_context_get_display :: proc(context_p: ^gtk.GtkStyleContext) -> ^gtk.GdkDisplay ---

    @(link_name = "gtk_style_context_lookup_color")
    gtk_style_context_lookup_color :: proc(context_p: ^gtk.GtkStyleContext, color_name: cstring, color: ^gtk.GdkRGBA) -> glib.gboolean ---

    @(link_name = "gtk_style_context_get_color")
    gtk_style_context_get_color :: proc(context_p: ^gtk.GtkStyleContext, color: ^gtk.GdkRGBA) ---

    @(link_name = "gtk_style_context_get_border")
    gtk_style_context_get_border :: proc(context_p: ^gtk.GtkStyleContext, border: ^gtk.GtkBorder) ---

    @(link_name = "gtk_style_context_get_padding")
    gtk_style_context_get_padding :: proc(context_p: ^gtk.GtkStyleContext, padding: ^gtk.GtkBorder) ---

    @(link_name = "gtk_style_context_get_margin")
    gtk_style_context_get_margin :: proc(context_p: ^gtk.GtkStyleContext, margin: ^gtk.GtkBorder) ---

    @(link_name = "gtk_style_context_to_string")
    gtk_style_context_to_string :: proc(context_p: ^gtk.GtkStyleContext, flags: GtkStyleContextPrintFlags) -> cstring ---

    @(link_name = "gtk_tree_drag_source_drag_data_get")
    gtk_tree_drag_source_drag_data_get :: proc(drag_source: ^GtkTreeDragSource, path: ^GtkTreePath) -> ^gtk.GdkContentProvider ---

    @(link_name = "gtk_tree_create_row_drag_content")
    gtk_tree_create_row_drag_content :: proc(tree_model: ^GtkTreeModel, path: ^GtkTreePath) -> ^gtk.GdkContentProvider ---

    @(link_name = "gtk_tree_selection_set_mode")
    gtk_tree_selection_set_mode :: proc(selection: ^GtkTreeSelection, type: gtk.GtkSelectionMode) ---

    @(link_name = "gtk_tree_selection_get_mode")
    gtk_tree_selection_get_mode :: proc(selection: ^GtkTreeSelection) -> gtk.GtkSelectionMode ---

    @(link_name = "gtk_volume_button_new")
    gtk_volume_button_new :: proc() -> ^gtk.GtkWidget ---

    @(link_name = "GType")
    GType: i32

    @(link_name = "GtkSourceAnnotation")
    GtkSourceAnnotation: rawptr

    @(link_name = "gtk_source_annotation_get_description")
    annotation_get_description :: proc(self: ^Annotation) -> ^i32 ---

    @(link_name = "GIcon")
    GIcon: rawptr

    @(link_name = "GtkSourceAnnotationStyle")
    GtkSourceAnnotationStyle: rawptr

    @(link_name = "gtk_source_annotations_add_provider")
    annotations_add_provider :: proc(self: ^Annotations, provider: ^AnnotationProvider) -> i32 ---

    @(link_name = "gboolean")
    gboolean: rawptr

    @(link_name = "GtkSourceAnnotationProvider")
    GtkSourceAnnotationProvider: rawptr

    @(link_name = "gtk_source_annotation_provider_populate_hover_async")
    annotation_provider_populate_hover_async :: proc(self: ^AnnotationProvider, annotation: ^Annotation, display: ^HoverDisplay, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer) -> i32 ---

    @(link_name = "gtk_source_annotation_provider_add_annotation")
    annotation_provider_add_annotation :: proc(self: ^AnnotationProvider, annotation: ^Annotation) -> i32 ---

    @(link_name = "gtk_source_annotation_provider_remove_all")
    annotation_provider_remove_all :: proc(self: ^AnnotationProvider) -> i32 ---

    @(link_name = "GtkSourceBuffer")
    GtkSourceBuffer: rawptr

    @(link_name = "gtk_source_buffer_set_highlight_syntax")
    buffer_set_highlight_syntax :: proc(buffer: ^Buffer, highlight: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_buffer_set_highlight_matching_brackets")
    buffer_set_highlight_matching_brackets :: proc(buffer: ^Buffer, highlight: glib.gboolean) -> i32 ---

    @(link_name = "GtkSourceLanguage")
    GtkSourceLanguage: rawptr

    @(link_name = "gtk_source_buffer_set_language")
    buffer_set_language :: proc(buffer: ^Buffer, language: ^Language) -> i32 ---

    @(link_name = "GtkSourceStyleScheme")
    GtkSourceStyleScheme: rawptr

    @(link_name = "gtk_source_buffer_set_style_scheme")
    buffer_set_style_scheme :: proc(buffer: ^Buffer, scheme: ^StyleScheme) -> i32 ---

    @(link_name = "gtk_source_buffer_ensure_highlight")
    buffer_ensure_highlight :: proc(buffer: ^Buffer, start: ^gtk.GtkTextIter, end: ^gtk.GtkTextIter) -> i32 ---

    @(link_name = "GtkSourceMark")
    GtkSourceMark: rawptr

    @(link_name = "GSList")
    GSList: rawptr

    @(link_name = "gtk_source_buffer_remove_source_marks")
    buffer_remove_source_marks :: proc(buffer: ^Buffer, start: ^gtk.GtkTextIter, end: ^gtk.GtkTextIter, category: ^glib.gchar) -> i32 ---

    @(link_name = "gchar")
    gchar: rawptr

    @(link_name = "gtk_source_buffer_change_case")
    buffer_change_case :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "gtk_source_buffer_join_lines")
    buffer_join_lines :: proc(buffer: ^Buffer, start: ^gtk.GtkTextIter, end: ^gtk.GtkTextIter) -> i32 ---

    @(link_name = "gtk_source_buffer_sort_lines")
    buffer_sort_lines :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "gtk_source_buffer_set_implicit_trailing_newline")
    buffer_set_implicit_trailing_newline :: proc(buffer: ^Buffer, implicit_trailing_newline: glib.gboolean) -> i32 ---

    @(link_name = "GtkTextTag")
    GtkTextTag: rawptr

    @(link_name = "gtk_source_buffer_get_markup")
    buffer_get_markup :: proc(buffer: ^Buffer, start: ^gtk.GtkTextIter, end: ^gtk.GtkTextIter) -> ^i32 ---

    @(link_name = "GtkSourceView")
    GtkSourceView: rawptr

    @(link_name = "gtk_source_completion_show")
    completion_show :: proc(self: ^Completion) -> i32 ---

    @(link_name = "gtk_source_completion_hide")
    completion_hide :: proc(self: ^Completion) -> i32 ---

    @(link_name = "gtk_source_completion_add_provider")
    completion_add_provider :: proc(self: ^Completion, provider: ^CompletionProvider) -> i32 ---

    @(link_name = "gtk_source_completion_remove_provider")
    completion_remove_provider :: proc(self: ^Completion, provider: ^CompletionProvider) -> i32 ---

    @(link_name = "gtk_source_completion_block_interactive")
    completion_block_interactive :: proc(self: ^Completion) -> i32 ---

    @(link_name = "gtk_source_completion_unblock_interactive")
    completion_unblock_interactive :: proc(self: ^Completion) -> i32 ---

    @(link_name = "guint")
    guint: rawptr

    @(link_name = "gtk_source_completion_set_page_size")
    completion_set_page_size :: proc(self: ^Completion, page_size: glib.guint) -> i32 ---

    @(link_name = "PangoAttrList")
    PangoAttrList: rawptr

    @(link_name = "GtkSourceCompletionColumn")
    GtkSourceCompletionColumn: rawptr

    @(link_name = "GtkWidget")
    GtkWidget: rawptr

    @(link_name = "gtk_source_completion_cell_set_widget")
    completion_cell_set_widget :: proc(self: ^CompletionCell, child: ^gtk.GtkWidget) -> i32 ---

    @(link_name = "gtk_source_completion_cell_set_markup")
    completion_cell_set_markup :: proc(self: ^CompletionCell, markup: cstring) -> i32 ---

    @(link_name = "gtk_source_completion_cell_set_icon_name")
    completion_cell_set_icon_name :: proc(self: ^CompletionCell, icon_name: cstring) -> i32 ---

    @(link_name = "gtk_source_completion_cell_set_gicon")
    completion_cell_set_gicon :: proc(self: ^CompletionCell, gicon: ^gio.GIcon) -> i32 ---

    @(link_name = "gtk_source_completion_cell_set_paintable")
    completion_cell_set_paintable :: proc(self: ^CompletionCell, paintable: ^gtk.GdkPaintable) -> i32 ---

    @(link_name = "gtk_source_completion_cell_set_text")
    completion_cell_set_text :: proc(self: ^CompletionCell, text: cstring) -> i32 ---

    @(link_name = "gtk_source_completion_cell_set_text_with_attributes")
    completion_cell_set_text_with_attributes :: proc(self: ^CompletionCell, text: cstring, attrs: [^]pango.PangoAttrList) -> i32 ---

    @(link_name = "GtkSourceCompletion")
    GtkSourceCompletion: rawptr

    @(link_name = "GtkSourceCompletionActivation")
    GtkSourceCompletionActivation: rawptr

    @(link_name = "gtk_source_completion_context_get_word")
    completion_context_get_word :: proc(self: ^CompletionContext) -> ^i32 ---

    @(link_name = "gtk_source_completion_context_set_proposals_for_provider")
    completion_context_set_proposals_for_provider :: proc(self: ^CompletionContext, provider: ^CompletionProvider, results: [^]gio.GListModel) -> i32 ---

    @(link_name = "GListModel")
    GListModel: rawptr

    @(link_name = "gtk_source_completion_proposal_get_typed_text")
    completion_proposal_get_typed_text :: proc(proposal: ^CompletionProposal) -> ^i32 ---

    @(link_name = "gtk_source_completion_provider_get_title")
    completion_provider_get_title :: proc(self: ^CompletionProvider) -> ^i32 ---

    @(link_name = "gtk_source_completion_provider_populate_async")
    completion_provider_populate_async :: proc(self: ^CompletionProvider, context_p: ^CompletionContext, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer) -> i32 ---

    @(link_name = "gtk_source_completion_provider_refilter")
    completion_provider_refilter :: proc(self: ^CompletionProvider, context_p: ^CompletionContext, model: ^gio.GListModel) -> i32 ---

    @(link_name = "gtk_source_completion_provider_display")
    completion_provider_display :: proc(self: ^CompletionProvider, context_p: ^CompletionContext, proposal: ^CompletionProposal, cell: ^CompletionCell) -> i32 ---

    @(link_name = "gtk_source_completion_provider_activate")
    completion_provider_activate :: proc(self: ^CompletionProvider, context_p: ^CompletionContext, proposal: ^CompletionProposal) -> i32 ---

    @(link_name = "GPtrArray")
    GPtrArray: rawptr

    @(link_name = "GtkSourceEncoding")
    GtkSourceEncoding: i32

    @(link_name = "gtk_source_encoding_free")
    encoding_free :: proc(enc: ^Encoding) -> i32 ---

    @(link_name = "GtkSourceFile")
    GtkSourceFile: rawptr

    @(link_name = "GFile")
    GFile: rawptr

    @(link_name = "gtk_source_file_set_location")
    file_set_location :: proc(file: ^File, location: ^gio.GFile) -> i32 ---

    @(link_name = "GtkSourceNewlineType")
    GtkSourceNewlineType: rawptr

    @(link_name = "GtkSourceCompressionType")
    GtkSourceCompressionType: rawptr

    @(link_name = "gtk_source_file_set_mount_operation_factory")
    file_set_mount_operation_factory :: proc(file: ^File, callback: MountOperationFactory, user_data: glib.gpointer, notify: glib.GDestroyNotify) -> i32 ---

    @(link_name = "gtk_source_file_check_file_on_disk")
    file_check_file_on_disk :: proc(file: ^File) -> i32 ---

    @(link_name = "GQuark")
    GQuark: rawptr

    @(link_name = "GtkSourceFileLoader")
    GtkSourceFileLoader: rawptr

    @(link_name = "gtk_source_file_loader_set_candidate_encodings")
    file_loader_set_candidate_encodings :: proc(loader: ^FileLoader, candidate_encodings: [^]glib.GSList) -> i32 ---

    @(link_name = "gtk_source_file_loader_set_max_size")
    file_loader_set_max_size :: proc(loader: ^FileLoader, max_size: glib.guint64) -> i32 ---

    @(link_name = "guint64")
    guint64: rawptr

    @(link_name = "GInputStream")
    GInputStream: rawptr

    @(link_name = "gtk_source_file_loader_load_async")
    file_loader_load_async :: proc(loader: ^FileLoader, io_priority: glib.gint, cancellable: ^gio.GCancellable, progress_callback: gio.GFileProgressCallback, progress_callback_data: glib.gpointer, progress_callback_notify: glib.GDestroyNotify, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer) -> i32 ---

    @(link_name = "GtkSourceFileSaver")
    GtkSourceFileSaver: rawptr

    @(link_name = "gtk_source_file_saver_set_encoding")
    file_saver_set_encoding :: proc(saver: ^FileSaver, encoding: ^Encoding) -> i32 ---

    @(link_name = "gtk_source_file_saver_set_newline_type")
    file_saver_set_newline_type :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "gtk_source_file_saver_set_compression_type")
    file_saver_set_compression_type :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "gtk_source_file_saver_set_flags")
    file_saver_set_flags :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "GtkSourceFileSaverFlags")
    GtkSourceFileSaverFlags: rawptr

    @(link_name = "gtk_source_file_saver_save_async")
    file_saver_save_async :: proc(saver: ^FileSaver, io_priority: glib.gint, cancellable: ^gio.GCancellable, progress_callback: gio.GFileProgressCallback, progress_callback_data: glib.gpointer, progress_callback_notify: glib.GDestroyNotify, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer) -> i32 ---

    @(link_name = "gtk_source_gutter_reorder")
    gutter_reorder :: proc(gutter: ^Gutter, renderer: ^GutterRenderer, position: glib.gint) -> i32 ---

    @(link_name = "gtk_source_gutter_remove")
    gutter_remove :: proc(gutter: ^Gutter, renderer: ^GutterRenderer) -> i32 ---

    @(link_name = "gfloat")
    gfloat: rawptr

    @(link_name = "gtk_source_gutter_renderer_set_xalign")
    gutter_renderer_set_xalign :: proc(renderer: ^GutterRenderer, xalign: glib.gfloat) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_set_yalign")
    gutter_renderer_set_yalign :: proc(renderer: ^GutterRenderer, yalign: glib.gfloat) -> i32 ---

    @(link_name = "gint")
    gint: rawptr

    @(link_name = "gtk_source_gutter_renderer_set_xpad")
    gutter_renderer_set_xpad :: proc(renderer: ^GutterRenderer, xpad: glib.gint) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_set_ypad")
    gutter_renderer_set_ypad :: proc(renderer: ^GutterRenderer, ypad: glib.gint) -> i32 ---

    @(link_name = "GtkSourceGutterRendererAlignmentMode")
    GtkSourceGutterRendererAlignmentMode: rawptr

    @(link_name = "gtk_source_gutter_renderer_set_alignment_mode")
    gutter_renderer_set_alignment_mode :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "gtk_source_gutter_renderer_activate")
    gutter_renderer_activate :: proc(renderer: ^GutterRenderer, iter: ^gtk.GtkTextIter, area: ^gtk.GdkRectangle, button: glib.guint, state: gtk.GdkModifierType, n_presses: glib.gint) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_align_cell")
    gutter_renderer_align_cell :: proc(renderer: ^GutterRenderer, line: glib.guint, width: glib.gfloat, height: glib.gfloat, x: ^glib.gfloat, y: ^glib.gfloat) -> i32 ---

    @(link_name = "GtkSourceGutterRenderer")
    GtkSourceGutterRenderer: rawptr

    @(link_name = "gtk_source_gutter_renderer_text_set_markup")
    gutter_renderer_text_set_markup :: proc(renderer: ^GutterRendererText, markup: ^glib.gchar, length: glib.gint) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_text_set_text")
    gutter_renderer_text_set_text :: proc(renderer: ^GutterRendererText, text: ^glib.gchar, length: glib.gint) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_text_measure")
    gutter_renderer_text_measure :: proc(renderer: ^GutterRendererText, text: ^glib.gchar, width: ^glib.gint, height: ^glib.gint) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_text_measure_markup")
    gutter_renderer_text_measure_markup :: proc(renderer: ^GutterRendererText, markup: ^glib.gchar, width: ^glib.gint, height: ^glib.gint) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_set_pixbuf")
    gutter_renderer_pixbuf_set_pixbuf :: proc(renderer: ^GutterRendererPixbuf, pixbuf: ^i32) -> i32 ---

    @(link_name = "GdkPixbuf")
    GdkPixbuf: rawptr

    @(link_name = "gtk_source_gutter_renderer_pixbuf_set_gicon")
    gutter_renderer_pixbuf_set_gicon :: proc(renderer: ^GutterRendererPixbuf, icon: ^gio.GIcon) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_set_icon_name")
    gutter_renderer_pixbuf_set_icon_name :: proc(renderer: ^GutterRendererPixbuf, icon_name: ^glib.gchar) -> i32 ---

    @(link_name = "GdkPaintable")
    GdkPaintable: rawptr

    @(link_name = "gtk_source_gutter_renderer_pixbuf_set_paintable")
    gutter_renderer_pixbuf_set_paintable :: proc(renderer: ^GutterRendererPixbuf, paintable: ^gtk.GdkPaintable) -> i32 ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_overlay_paintable")
    gutter_renderer_pixbuf_overlay_paintable :: proc(renderer: ^GutterRendererPixbuf, paintable: ^gtk.GdkPaintable) -> i32 ---

    @(link_name = "gtk_source_hover_add_provider")
    hover_add_provider :: proc(self: ^Hover, provider: ^HoverProvider) -> i32 ---

    @(link_name = "gtk_source_hover_remove_provider")
    hover_remove_provider :: proc(self: ^Hover, provider: ^HoverProvider) -> i32 ---

    @(link_name = "gtk_source_hover_display_append")
    hover_display_append :: proc(self: ^HoverDisplay, child: ^gtk.GtkWidget) -> i32 ---

    @(link_name = "gtk_source_hover_display_prepend")
    hover_display_prepend :: proc(self: ^HoverDisplay, child: ^gtk.GtkWidget) -> i32 ---

    @(link_name = "gtk_source_hover_display_insert_after")
    hover_display_insert_after :: proc(self: ^HoverDisplay, child: ^gtk.GtkWidget, sibling: ^gtk.GtkWidget) -> i32 ---

    @(link_name = "gtk_source_hover_display_remove")
    hover_display_remove :: proc(self: ^HoverDisplay, child: ^gtk.GtkWidget) -> i32 ---

    @(link_name = "gtk_source_hover_provider_populate_async")
    hover_provider_populate_async :: proc(self: ^HoverProvider, context_p: ^HoverContext, display: ^HoverDisplay, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer) -> i32 ---

    @(link_name = "gtk_source_indenter_indent")
    indenter_indent :: proc(self: ^Indenter, view: ^View, iter: ^gtk.GtkTextIter) -> i32 ---

    @(link_name = "gtk_source_init")
    init :: proc() -> i32 ---

    @(link_name = "gtk_source_finalize")
    finalize :: proc() -> i32 ---

    @(link_name = "GtkSourceLanguageManager")
    GtkSourceLanguageManager: rawptr

    @(link_name = "gtk_source_language_manager_set_search_path")
    language_manager_set_search_path :: proc(lm: ^LanguageManager, dirs: [^]^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_language_manager_append_search_path")
    language_manager_append_search_path :: proc(lm: ^LanguageManager, path: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_language_manager_prepend_search_path")
    language_manager_prepend_search_path :: proc(lm: ^LanguageManager, path: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_gutter_lines_get_iter_at_line")
    gutter_lines_get_iter_at_line :: proc(lines: [^]GutterLines, iter: ^gtk.GtkTextIter, line: glib.guint) -> i32 ---

    @(link_name = "GtkTextView")
    GtkTextView: rawptr

    @(link_name = "GtkTextBuffer")
    GtkTextBuffer: rawptr

    @(link_name = "gtk_source_gutter_lines_add_qclass")
    gutter_lines_add_qclass :: proc(lines: [^]GutterLines, line: glib.guint, qname: glib.GQuark) -> i32 ---

    @(link_name = "gtk_source_gutter_lines_add_class")
    gutter_lines_add_class :: proc(lines: [^]GutterLines, line: glib.guint, name: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_gutter_lines_remove_class")
    gutter_lines_remove_class :: proc(lines: [^]GutterLines, line: glib.guint, name: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_gutter_lines_remove_qclass")
    gutter_lines_remove_qclass :: proc(lines: [^]GutterLines, line: glib.guint, qname: glib.GQuark) -> i32 ---

    @(link_name = "gtk_source_gutter_lines_get_line_yrange")
    gutter_lines_get_line_yrange :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "gtk_source_gutter_lines_get_line_extent")
    gutter_lines_get_line_extent :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "gtk_source_view_set_show_line_numbers")
    view_set_show_line_numbers :: proc(view: ^View, show: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_view_set_tab_width")
    view_set_tab_width :: proc(view: ^View, width: glib.guint) -> i32 ---

    @(link_name = "gtk_source_view_set_indent_width")
    view_set_indent_width :: proc(view: ^View, width: glib.gint) -> i32 ---

    @(link_name = "gtk_source_view_set_auto_indent")
    view_set_auto_indent :: proc(view: ^View, enable: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_view_set_insert_spaces_instead_of_tabs")
    view_set_insert_spaces_instead_of_tabs :: proc(view: ^View, enable: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_view_set_indent_on_tab")
    view_set_indent_on_tab :: proc(view: ^View, enable: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_view_indent_lines")
    view_indent_lines :: proc(view: ^View, start: ^gtk.GtkTextIter, end: ^gtk.GtkTextIter) -> i32 ---

    @(link_name = "gtk_source_view_unindent_lines")
    view_unindent_lines :: proc(view: ^View, start: ^gtk.GtkTextIter, end: ^gtk.GtkTextIter) -> i32 ---

    @(link_name = "gtk_source_view_set_highlight_current_line")
    view_set_highlight_current_line :: proc(view: ^View, highlight: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_view_set_show_right_margin")
    view_set_show_right_margin :: proc(view: ^View, show: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_view_set_right_margin_position")
    view_set_right_margin_position :: proc(view: ^View, pos: glib.guint) -> i32 ---

    @(link_name = "gtk_source_view_set_show_line_marks")
    view_set_show_line_marks :: proc(view: ^View, show: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_view_set_mark_attributes")
    view_set_mark_attributes :: proc(view: ^View, category: ^glib.gchar, attributes: [^]MarkAttributes, priority: glib.gint) -> i32 ---

    @(link_name = "GtkSourceMarkAttributes")
    GtkSourceMarkAttributes: rawptr

    @(link_name = "gtk_source_view_set_smart_backspace")
    view_set_smart_backspace :: proc(view: ^View, smart_backspace: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_view_set_smart_home_end")
    view_set_smart_home_end :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "GtkSourceSmartHomeEndType")
    GtkSourceSmartHomeEndType: rawptr

    @(link_name = "gtk_source_view_set_enable_snippets")
    view_set_enable_snippets :: proc(view: ^View, enable_snippets: glib.gboolean) -> i32 ---

    @(link_name = "GtkSourceHover")
    GtkSourceHover: rawptr

    @(link_name = "GtkSourceIndenter")
    GtkSourceIndenter: rawptr

    @(link_name = "gtk_source_view_set_indenter")
    view_set_indenter :: proc(view: ^View, indenter: ^Indenter) -> i32 ---

    @(link_name = "GtkSourceGutter")
    GtkSourceGutter: rawptr

    @(link_name = "gtk_source_view_set_background_pattern")
    view_set_background_pattern :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "GtkSourceBackgroundPatternType")
    GtkSourceBackgroundPatternType: rawptr

    @(link_name = "GtkSourceSpaceDrawer")
    GtkSourceSpaceDrawer: rawptr

    @(link_name = "GtkSourceAnnotations")
    GtkSourceAnnotations: rawptr

    @(link_name = "gtk_source_view_push_snippet")
    view_push_snippet :: proc(view: ^View, snippet: ^Snippet, location: ^gtk.GtkTextIter) -> i32 ---

    @(link_name = "gtk_source_map_set_view")
    map_set_view :: proc(map_p: ^Map, view: ^View) -> i32 ---

    @(link_name = "gtk_source_mark_attributes_set_background")
    mark_attributes_set_background :: proc(attributes: [^]MarkAttributes, background: ^gtk.GdkRGBA) -> i32 ---

    @(link_name = "gtk_source_mark_attributes_set_icon_name")
    mark_attributes_set_icon_name :: proc(attributes: [^]MarkAttributes, icon_name: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_mark_attributes_set_gicon")
    mark_attributes_set_gicon :: proc(attributes: [^]MarkAttributes, gicon: ^gio.GIcon) -> i32 ---

    @(link_name = "gtk_source_mark_attributes_set_pixbuf")
    mark_attributes_set_pixbuf :: proc(attributes: [^]MarkAttributes, pixbuf: ^i32) -> i32 ---

    @(link_name = "GtkSourcePrintCompositor")
    GtkSourcePrintCompositor: rawptr

    @(link_name = "gtk_source_print_compositor_set_tab_width")
    print_compositor_set_tab_width :: proc(compositor: ^PrintCompositor, width: glib.guint) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_wrap_mode")
    print_compositor_set_wrap_mode :: proc(compositor: ^PrintCompositor, wrap_mode: gtk.GtkWrapMode) -> i32 ---

    @(link_name = "GtkWrapMode")
    GtkWrapMode: rawptr

    @(link_name = "gtk_source_print_compositor_set_highlight_syntax")
    print_compositor_set_highlight_syntax :: proc(compositor: ^PrintCompositor, highlight: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_print_line_numbers")
    print_compositor_set_print_line_numbers :: proc(compositor: ^PrintCompositor, interval: glib.guint) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_body_font_name")
    print_compositor_set_body_font_name :: proc(compositor: ^PrintCompositor, font_name: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_line_numbers_font_name")
    print_compositor_set_line_numbers_font_name :: proc(compositor: ^PrintCompositor, font_name: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_header_font_name")
    print_compositor_set_header_font_name :: proc(compositor: ^PrintCompositor, font_name: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_footer_font_name")
    print_compositor_set_footer_font_name :: proc(compositor: ^PrintCompositor, font_name: ^glib.gchar) -> i32 ---

    @(link_name = "gdouble")
    gdouble: rawptr

    @(link_name = "gtk_source_print_compositor_set_top_margin")
    print_compositor_set_top_margin :: proc(compositor: ^PrintCompositor, margin: glib.gdouble, unit: gtk.GtkUnit) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_bottom_margin")
    print_compositor_set_bottom_margin :: proc(compositor: ^PrintCompositor, margin: glib.gdouble, unit: gtk.GtkUnit) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_left_margin")
    print_compositor_set_left_margin :: proc(compositor: ^PrintCompositor, margin: glib.gdouble, unit: gtk.GtkUnit) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_right_margin")
    print_compositor_set_right_margin :: proc(compositor: ^PrintCompositor, margin: glib.gdouble, unit: gtk.GtkUnit) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_print_header")
    print_compositor_set_print_header :: proc(compositor: ^PrintCompositor, print: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_print_footer")
    print_compositor_set_print_footer :: proc(compositor: ^PrintCompositor, print: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_header_format")
    print_compositor_set_header_format :: proc(compositor: ^PrintCompositor, separator: glib.gboolean, left: ^glib.gchar, center: ^glib.gchar, right: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_print_compositor_set_footer_format")
    print_compositor_set_footer_format :: proc(compositor: ^PrintCompositor, separator: glib.gboolean, left: ^glib.gchar, center: ^glib.gchar, right: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_print_compositor_draw_page")
    print_compositor_draw_page :: proc(compositor: ^PrintCompositor, context_p: ^GtkPrintContext, page_nr: glib.gint) -> i32 ---

    @(link_name = "gtk_source_print_compositor_ignore_tag")
    print_compositor_ignore_tag :: proc(compositor: ^PrintCompositor, tag: ^gtk.GtkTextTag) -> i32 ---

    @(link_name = "GtkSourceRegion")
    GtkSourceRegion: rawptr

    @(link_name = "gtk_source_region_add_subregion")
    region_add_subregion :: proc(region: ^Region, _start: ^gtk.GtkTextIter, _end: ^gtk.GtkTextIter) -> i32 ---

    @(link_name = "gtk_source_region_add_region")
    region_add_region :: proc(region: ^Region, region_to_add: ^Region) -> i32 ---

    @(link_name = "gtk_source_region_subtract_subregion")
    region_subtract_subregion :: proc(region: ^Region, _start: ^gtk.GtkTextIter, _end: ^gtk.GtkTextIter) -> i32 ---

    @(link_name = "gtk_source_region_subtract_region")
    region_subtract_region :: proc(region: ^Region, region_to_subtract: ^Region) -> i32 ---

    @(link_name = "gtk_source_region_get_start_region_iter")
    region_get_start_region_iter :: proc(region: ^Region, iter: ^RegionIter) -> i32 ---

    @(link_name = "gsize")
    gsize: rawptr

    @(link_name = "gtk_source_scheduler_remove")
    scheduler_remove :: proc(handler_id: glib.gsize) -> i32 ---

    @(link_name = "GtkSourceSearchContext")
    GtkSourceSearchContext: rawptr

    @(link_name = "GtkSourceSearchSettings")
    GtkSourceSearchSettings: rawptr

    @(link_name = "gtk_source_search_context_set_highlight")
    search_context_set_highlight :: proc(search: ^SearchContext, highlight: glib.gboolean) -> i32 ---

    @(link_name = "GtkSourceStyle")
    GtkSourceStyle: rawptr

    @(link_name = "gtk_source_search_context_set_match_style")
    search_context_set_match_style :: proc(search: ^SearchContext, match_style: ^Style) -> i32 ---

    @(link_name = "GError")
    GError: rawptr

    @(link_name = "gtk_source_search_context_forward_async")
    search_context_forward_async :: proc(search: ^SearchContext, iter: ^gtk.GtkTextIter, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer) -> i32 ---

    @(link_name = "gtk_source_search_context_backward_async")
    search_context_backward_async :: proc(search: ^SearchContext, iter: ^gtk.GtkTextIter, cancellable: ^gio.GCancellable, callback: gio.GAsyncReadyCallback, user_data: glib.gpointer) -> i32 ---

    @(link_name = "gtk_source_search_settings_set_search_text")
    search_settings_set_search_text :: proc(settings: [^]SearchSettings, search_text: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_search_settings_set_case_sensitive")
    search_settings_set_case_sensitive :: proc(settings: [^]SearchSettings, case_sensitive: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_search_settings_set_at_word_boundaries")
    search_settings_set_at_word_boundaries :: proc(settings: [^]SearchSettings, at_word_boundaries: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_search_settings_set_wrap_around")
    search_settings_set_wrap_around :: proc(settings: [^]SearchSettings, wrap_around: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_search_settings_set_regex_enabled")
    search_settings_set_regex_enabled :: proc(settings: [^]SearchSettings, regex_enabled: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_search_settings_set_visible_only")
    search_settings_set_visible_only :: proc(settings: [^]SearchSettings, visible_only: glib.gboolean) -> i32 ---

    @(link_name = "GtkSourceSnippet")
    GtkSourceSnippet: rawptr

    @(link_name = "gtk_source_snippet_set_name")
    snippet_set_name :: proc(snippet: ^Snippet, name: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_snippet_set_trigger")
    snippet_set_trigger :: proc(snippet: ^Snippet, trigger: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_snippet_set_language_id")
    snippet_set_language_id :: proc(snippet: ^Snippet, language_id: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_snippet_set_description")
    snippet_set_description :: proc(snippet: ^Snippet, description: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_snippet_add_chunk")
    snippet_add_chunk :: proc(snippet: ^Snippet, chunk: ^SnippetChunk) -> i32 ---

    @(link_name = "GtkSourceSnippetChunk")
    GtkSourceSnippetChunk: rawptr

    @(link_name = "GtkSourceSnippetContext")
    GtkSourceSnippetContext: rawptr

    @(link_name = "gtk_source_snippet_chunk_set_context")
    snippet_chunk_set_context :: proc(chunk: ^SnippetChunk, context_p: ^SnippetContext) -> i32 ---

    @(link_name = "gtk_source_snippet_chunk_set_spec")
    snippet_chunk_set_spec :: proc(chunk: ^SnippetChunk, spec: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_snippet_chunk_set_focus_position")
    snippet_chunk_set_focus_position :: proc(chunk: ^SnippetChunk, focus_position: glib.gint) -> i32 ---

    @(link_name = "gtk_source_snippet_chunk_set_text")
    snippet_chunk_set_text :: proc(chunk: ^SnippetChunk, text: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_snippet_chunk_set_text_set")
    snippet_chunk_set_text_set :: proc(chunk: ^SnippetChunk, text_set: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_snippet_chunk_get_tooltip_text")
    snippet_chunk_get_tooltip_text :: proc(chunk: ^SnippetChunk) -> ^i32 ---

    @(link_name = "gtk_source_snippet_chunk_set_tooltip_text")
    snippet_chunk_set_tooltip_text :: proc(chunk: ^SnippetChunk, tooltip_text: cstring) -> i32 ---

    @(link_name = "gtk_source_snippet_context_clear_variables")
    snippet_context_clear_variables :: proc(self: ^SnippetContext) -> i32 ---

    @(link_name = "gtk_source_snippet_context_set_variable")
    snippet_context_set_variable :: proc(self: ^SnippetContext, key: ^glib.gchar, value: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_snippet_context_set_constant")
    snippet_context_set_constant :: proc(self: ^SnippetContext, key: ^glib.gchar, value: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_snippet_context_set_tab_width")
    snippet_context_set_tab_width :: proc(self: ^SnippetContext, tab_width: glib.gint) -> i32 ---

    @(link_name = "gtk_source_snippet_context_set_use_spaces")
    snippet_context_set_use_spaces :: proc(self: ^SnippetContext, use_spaces: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_snippet_context_set_line_prefix")
    snippet_context_set_line_prefix :: proc(self: ^SnippetContext, line_prefix: ^glib.gchar) -> i32 ---

    @(link_name = "GtkSourceSnippetManager")
    GtkSourceSnippetManager: rawptr

    @(link_name = "gtk_source_snippet_manager_set_search_path")
    snippet_manager_set_search_path :: proc(self: ^SnippetManager, dirs: [^]^glib.gchar) -> i32 ---

    @(link_name = "GtkSourceSpaceTypeFlags")
    GtkSourceSpaceTypeFlags: rawptr

    @(link_name = "gtk_source_space_drawer_set_types_for_locations")
    space_drawer_set_types_for_locations :: proc (invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

    @(link_name = "GVariant")
    GVariant: rawptr

    @(link_name = "gtk_source_space_drawer_set_matrix")
    space_drawer_set_matrix :: proc(drawer: ^SpaceDrawer, matrix_p: ^glib.GVariant) -> i32 ---

    @(link_name = "gtk_source_space_drawer_set_enable_matrix")
    space_drawer_set_enable_matrix :: proc(drawer: ^SpaceDrawer, enable_matrix: glib.gboolean) -> i32 ---

    @(link_name = "gtk_source_space_drawer_bind_matrix_setting")
    space_drawer_bind_matrix_setting :: proc(drawer: ^SpaceDrawer, settings: [^]gio.GSettings, key: ^glib.gchar, flags: gio.GSettingsBindFlags) -> i32 ---

    @(link_name = "gtk_source_style_apply")
    style_apply :: proc(style: ^Style, tag: ^gtk.GtkTextTag) -> i32 ---

    @(link_name = "gtk_source_style_scheme_get_metadata")
    style_scheme_get_metadata :: proc(scheme: ^StyleScheme, name: cstring) -> ^i32 ---

    @(link_name = "gtk_source_style_scheme_chooser_set_style_scheme")
    style_scheme_chooser_set_style_scheme :: proc(chooser: ^StyleSchemeChooser, scheme: ^StyleScheme) -> i32 ---

    @(link_name = "GtkSourceStyleSchemeManager")
    GtkSourceStyleSchemeManager: rawptr

    @(link_name = "gtk_source_style_scheme_manager_set_search_path")
    style_scheme_manager_set_search_path :: proc(manager: ^StyleSchemeManager, path: ^^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_style_scheme_manager_append_search_path")
    style_scheme_manager_append_search_path :: proc(manager: ^StyleSchemeManager, path: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_style_scheme_manager_prepend_search_path")
    style_scheme_manager_prepend_search_path :: proc(manager: ^StyleSchemeManager, path: ^glib.gchar) -> i32 ---

    @(link_name = "gtk_source_style_scheme_manager_force_rescan")
    style_scheme_manager_force_rescan :: proc(manager: ^StyleSchemeManager) -> i32 ---

    @(link_name = "gtk_source_style_scheme_preview_set_selected")
    style_scheme_preview_set_selected :: proc(self: ^StyleSchemePreview, selected: glib.gboolean) -> i32 ---

    @(link_name = "GtkIMContext")
    GtkIMContext: rawptr

    @(link_name = "gtk_source_vim_im_context_get_command_text")
    vim_im_context_get_command_text :: proc(self: ^VimIMContext) -> ^i32 ---

    @(link_name = "gtk_source_vim_im_context_get_command_bar_text")
    vim_im_context_get_command_bar_text :: proc(self: ^VimIMContext) -> ^i32 ---

    @(link_name = "gtk_source_vim_im_context_execute_command")
    vim_im_context_execute_command :: proc(self: ^VimIMContext, command: cstring) -> i32 ---

    @(link_name = "GtkSourceCompletionWords")
    GtkSourceCompletionWords: rawptr

    @(link_name = "gtk_source_completion_words_register")
    completion_words_register :: proc(words: [^]CompletionWords, buffer: ^gtk.GtkTextBuffer) -> i32 ---

    @(link_name = "gtk_source_completion_words_unregister")
    completion_words_unregister :: proc(words: [^]CompletionWords, buffer: ^gtk.GtkTextBuffer) -> i32 ---

    @(link_name = "GtkSourceCompletionSnippets")
    GtkSourceCompletionSnippets: rawptr

}

foreign import gtksourceview_runic "system:gtksourceview-5"

