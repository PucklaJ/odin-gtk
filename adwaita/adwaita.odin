#+build linux amd64, linux arm64, windows amd64
package adwaita

import "../glib"
import "../glib/gio"
import "../gtk"
import "../pango"
import gobj "../glib/gobject"

TYPE_BREAKPOINT_CONDITION :: breakpoint_condition_get_type 
TYPE_BREAKPOINT :: breakpoint_get_type
TYPE_ACCENT_COLOR :: accent_color_get_type
TYPE_RESPONSE_APPEARANCE :: response_appearance_get_type
TYPE_ANIMATION_STATE :: animation_state_get_type
TYPE_BANNER_BUTTON_STYLE :: banner_button_style_get_type
TYPE_BREAKPOINT_CONDITION_LENGTH_TYPE :: breakpoint_condition_length_type_get_type
TYPE_BREAKPOINT_CONDITION_RATIO_TYPE :: breakpoint_condition_ratio_type_get_type
TYPE_DIALOG_PRESENTATION_MODE :: dialog_presentation_mode_get_type
TYPE_EASING :: easing_get_type
TYPE_FLAP_FOLD_POLICY :: flap_fold_policy_get_type
TYPE_FLAP_TRANSITION_TYPE :: flap_transition_type_get_type
TYPE_FOLD_THRESHOLD_POLICY :: fold_threshold_policy_get_type
TYPE_CENTERING_POLICY :: centering_policy_get_type
TYPE_INLINE_VIEW_SWITCHER_DISPLAY_MODE :: inline_view_switcher_display_mode_get_type
TYPE_LEAFLET_TRANSITION_TYPE :: leaflet_transition_type_get_type
TYPE_LENGTH_UNIT :: length_unit_get_type
TYPE_NAVIGATION_DIRECTION :: navigation_direction_get_type
TYPE_SQUEEZER_TRANSITION_TYPE :: squeezer_transition_type_get_type
TYPE_COLOR_SCHEME :: color_scheme_get_type
TYPE_TAB_VIEW_SHORTCUTS :: tab_view_shortcuts_get_type
TYPE_TOAST_PRIORITY :: toast_priority_get_type
TYPE_TOOLBAR_STYLE :: toolbar_style_get_type
TYPE_VIEW_SWITCHER_POLICY :: view_switcher_policy_get_type
TYPE_JUSTIFY_MODE :: justify_mode_get_type
TYPE_PACK_DIRECTION :: pack_direction_get_type
TYPE_WRAP_POLICY :: wrap_policy_get_type
TYPE_DIALOG :: dialog_get_type
TYPE_ABOUT_DIALOG :: about_dialog_get_type
TYPE_WINDOW :: window_get_type
TYPE_ABOUT_WINDOW :: about_window_get_type
TYPE_PREFERENCES_ROW :: preferences_row_get_type
TYPE_ACTION_ROW :: action_row_get_type
TYPE_ALERT_DIALOG :: alert_dialog_get_type
TYPE_ANIMATION_TARGET :: animation_target_get_type
TYPE_CALLBACK_ANIMATION_TARGET :: callback_animation_target_get_type
TYPE_PROPERTY_ANIMATION_TARGET :: property_animation_target_get_type
DURATION_INFINITE :: ( 0xffffffff)
TYPE_ANIMATION :: animation_get_type
TYPE_STYLE_MANAGER :: style_manager_get_type
TYPE_APPLICATION :: application_get_type
TYPE_APPLICATION_WINDOW :: application_window_get_type
TYPE_AVATAR :: avatar_get_type
TYPE_BANNER :: banner_get_type
TYPE_BIN :: bin_get_type
TYPE_BOTTOM_SHEET :: bottom_sheet_get_type
TYPE_BREAKPOINT_BIN :: breakpoint_bin_get_type
TYPE_BUTTON_CONTENT :: button_content_get_type
TYPE_BUTTON_ROW :: button_row_get_type
TYPE_SPRING_PARAMS :: spring_params_get_type
TYPE_CAROUSEL :: carousel_get_type
TYPE_CAROUSEL_INDICATOR_DOTS :: carousel_indicator_dots_get_type
TYPE_CAROUSEL_INDICATOR_LINES :: carousel_indicator_lines_get_type
TYPE_CLAMP :: clamp_get_type
TYPE_CLAMP_LAYOUT :: clamp_layout_get_type
TYPE_CLAMP_SCROLLABLE :: clamp_scrollable_get_type
TYPE_COMBO_ROW :: combo_row_get_type
TYPE_ENTRY_ROW :: entry_row_get_type
TYPE_ENUM_LIST_ITEM :: enum_list_item_get_type
TYPE_ENUM_LIST_MODEL :: enum_list_model_get_type
TYPE_EXPANDER_ROW :: expander_row_get_type
TYPE_FLAP :: flap_get_type 
TYPE_HEADER_BAR :: header_bar_get_type
TYPE_VIEW_STACK_PAGE :: view_stack_page_get_type
TYPE_VIEW_STACK :: view_stack_get_type
TYPE_VIEW_STACK_PAGES :: view_stack_pages_get_type 
TYPE_INLINE_VIEW_SWITCHER :: inline_view_switcher_get_type 
TYPE_LAYOUT :: layout_get_type
TYPE_LAYOUT_SLOT :: layout_slot_get_type
TYPE_LEAFLET_PAGE :: leaflet_page_get_type 
TYPE_LEAFLET :: leaflet_get_type
TYPE_MESSAGE_DIALOG :: message_dialog_get_type
TYPE_MULTI_LAYOUT_VIEW :: multi_layout_view_get_type
TYPE_NAVIGATION_PAGE :: navigation_page_get_type
TYPE_NAVIGATION_VIEW :: navigation_view_get_type
TYPE_NAVIGATION_SPLIT_VIEW :: navigation_split_view_get_type
TYPE_OVERLAY_SPLIT_VIEW :: overlay_split_view_get_type 
TYPE_PASSWORD_ENTRY_ROW :: password_entry_row_get_type
TYPE_PREFERENCES_GROUP :: preferences_group_get_type
TYPE_PREFERENCES_PAGE :: preferences_page_get_type
TYPE_TOAST :: toast_get_type
TYPE_PREFERENCES_DIALOG :: preferences_dialog_get_type
TYPE_PREFERENCES_WINDOW :: preferences_window_get_type
TYPE_SPIN_ROW :: spin_row_get_type 
TYPE_SPINNER :: spinner_get_type 
TYPE_SPINNER_PAINTABLE :: spinner_paintable_get_type 
TYPE_SPLIT_BUTTON :: split_button_get_type
TYPE_SPRING_ANIMATION :: spring_animation_get_type
TYPE_SQUEEZER_PAGE :: squeezer_page_get_type 
TYPE_SQUEEZER :: squeezer_get_type 
TYPE_STATUS_PAGE :: status_page_get_type
TYPE_SWIPEABLE :: swipeable_get_type 
TYPE_SWIPE_TRACKER :: swipe_tracker_get_type
TYPE_SWITCH_ROW :: switch_row_get_type 
TYPE_TAB_PAGE :: tab_page_get_type
TYPE_TAB_VIEW :: tab_view_get_type
TYPE_TAB_BAR :: tab_bar_get_type
TYPE_TAB_BUTTON :: tab_button_get_type
TYPE_TAB_OVERVIEW :: tab_overview_get_type
TYPE_TIMED_ANIMATION :: timed_animation_get_type
TYPE_TOAST_OVERLAY :: toast_overlay_get_type
TYPE_TOGGLE :: toggle_get_type 
TYPE_TOGGLE_GROUP :: toggle_group_get_type 
TYPE_TOOLBAR_VIEW :: toolbar_view_get_type
TYPE_VIEW_SWITCHER :: view_switcher_get_type
TYPE_VIEW_SWITCHER_BAR :: view_switcher_bar_get_type
TYPE_VIEW_SWITCHER_TITLE :: view_switcher_title_get_type
TYPE_WINDOW_TITLE :: window_title_get_type
TYPE_WRAP_LAYOUT :: wrap_layout_get_type
TYPE_WRAP_BOX :: wrap_box_get_type

_AdwBreakpointCondition :: struct #packed {}
BreakpointCondition :: _AdwBreakpointCondition
BreakpointCondition_autoptr :: ^BreakpointCondition
BreakpointCondition_listautoptr :: ^glib.List
BreakpointCondition_slistautoptr :: ^glib.SList
BreakpointCondition_queueautoptr :: ^glib.Queue
_AdwBreakpoint :: struct #packed {}
Breakpoint :: _AdwBreakpoint
BreakpointClass :: struct {
    parent_class: gobj.ObjectClass,
}
Breakpoint_autoptr :: ^Breakpoint
Breakpoint_listautoptr :: ^glib.List
Breakpoint_slistautoptr :: ^glib.SList
Breakpoint_queueautoptr :: ^glib.Queue
BreakpointClass_autoptr :: ^BreakpointClass
BreakpointClass_listautoptr :: ^glib.List
BreakpointClass_slistautoptr :: ^glib.SList
BreakpointClass_queueautoptr :: ^glib.Queue
_AdwDialog :: struct {
    parent_instance: gtk.Widget,
}
Dialog :: _AdwDialog
close_attempt_func_ptr_anon_0 :: #type proc "c" (dialog: ^Dialog)
closed_func_ptr_anon_1 :: #type proc "c" (dialog: ^Dialog)
_AdwDialogClass :: struct {
    parent_class: gtk.WidgetClass,
    close_attempt: close_attempt_func_ptr_anon_0,
    closed: closed_func_ptr_anon_1,
    padding: [4]glib.pointer,
}
DialogClass :: _AdwDialogClass
Dialog_autoptr :: ^Dialog
Dialog_listautoptr :: ^glib.List
Dialog_slistautoptr :: ^glib.SList
Dialog_queueautoptr :: ^glib.Queue
DialogClass_autoptr :: ^DialogClass
DialogClass_listautoptr :: ^glib.List
DialogClass_slistautoptr :: ^glib.SList
DialogClass_queueautoptr :: ^glib.Queue
_AdwAboutDialog :: struct #packed {}
AboutDialog :: _AdwAboutDialog
AboutDialogClass :: struct {
    parent_class: DialogClass,
}
AboutDialog_autoptr :: ^AboutDialog
AboutDialog_listautoptr :: ^glib.List
AboutDialog_slistautoptr :: ^glib.SList
AboutDialog_queueautoptr :: ^glib.Queue
AboutDialogClass_autoptr :: ^AboutDialogClass
AboutDialogClass_listautoptr :: ^glib.List
AboutDialogClass_slistautoptr :: ^glib.SList
AboutDialogClass_queueautoptr :: ^glib.Queue
_AdwWindow :: struct {
    parent_instance: gtk.Window,
}
Window :: _AdwWindow
_AdwWindowClass :: struct {
    parent_class: gtk.WindowClass,
    padding: [4]glib.pointer,
}
WindowClass :: _AdwWindowClass
Window_autoptr :: ^Window
Window_listautoptr :: ^glib.List
Window_slistautoptr :: ^glib.SList
Window_queueautoptr :: ^glib.Queue
WindowClass_autoptr :: ^WindowClass
WindowClass_listautoptr :: ^glib.List
WindowClass_slistautoptr :: ^glib.SList
WindowClass_queueautoptr :: ^glib.Queue
_AdwAboutWindow :: struct #packed {}
AboutWindow :: _AdwAboutWindow
AboutWindowClass :: struct {
    parent_class: WindowClass,
}
AboutWindow_autoptr :: ^AboutWindow
AboutWindow_listautoptr :: ^glib.List
AboutWindow_slistautoptr :: ^glib.SList
AboutWindow_queueautoptr :: ^glib.Queue
AboutWindowClass_autoptr :: ^AboutWindowClass
AboutWindowClass_listautoptr :: ^glib.List
AboutWindowClass_slistautoptr :: ^glib.SList
AboutWindowClass_queueautoptr :: ^glib.Queue
_AdwPreferencesRow :: struct {
    parent_instance: gtk.ListBoxRow,
}
PreferencesRow :: _AdwPreferencesRow
_AdwPreferencesRowClass :: struct {
    parent_class: gtk.ListBoxRowClass,
    padding: [4]glib.pointer,
}
PreferencesRowClass :: _AdwPreferencesRowClass
PreferencesRow_autoptr :: ^PreferencesRow
PreferencesRow_listautoptr :: ^glib.List
PreferencesRow_slistautoptr :: ^glib.SList
PreferencesRow_queueautoptr :: ^glib.Queue
PreferencesRowClass_autoptr :: ^PreferencesRowClass
PreferencesRowClass_listautoptr :: ^glib.List
PreferencesRowClass_slistautoptr :: ^glib.SList
PreferencesRowClass_queueautoptr :: ^glib.Queue
_AdwActionRow :: struct {
    parent_instance: PreferencesRow,
}
ActionRow :: _AdwActionRow
activate_func_ptr_anon_2 :: #type proc "c" (self: ^ActionRow)
_AdwActionRowClass :: struct {
    parent_class: PreferencesRowClass,
    activate: activate_func_ptr_anon_2,
    padding: [4]glib.pointer,
}
ActionRowClass :: _AdwActionRowClass
ActionRow_autoptr :: ^ActionRow
ActionRow_listautoptr :: ^glib.List
ActionRow_slistautoptr :: ^glib.SList
ActionRow_queueautoptr :: ^glib.Queue
ActionRowClass_autoptr :: ^ActionRowClass
ActionRowClass_listautoptr :: ^glib.List
ActionRowClass_slistautoptr :: ^glib.SList
ActionRowClass_queueautoptr :: ^glib.Queue
_AdwAlertDialog :: struct {
    parent_instance: Dialog,
}
AlertDialog :: _AdwAlertDialog
response_func_ptr_anon_3 :: #type proc "c" (self: ^AlertDialog, response: cstring)
_AdwAlertDialogClass :: struct {
    parent_class: DialogClass,
    response: response_func_ptr_anon_3,
    padding: [4]glib.pointer,
}
AlertDialogClass :: _AdwAlertDialogClass
AlertDialog_autoptr :: ^AlertDialog
AlertDialog_listautoptr :: ^glib.List
AlertDialog_slistautoptr :: ^glib.SList
AlertDialog_queueautoptr :: ^glib.Queue
AlertDialogClass_autoptr :: ^AlertDialogClass
AlertDialogClass_listautoptr :: ^glib.List
AlertDialogClass_slistautoptr :: ^glib.SList
AlertDialogClass_queueautoptr :: ^glib.Queue
_AdwAnimationTarget :: struct #packed {}
AnimationTarget :: _AdwAnimationTarget
_AdwAnimationTargetClass :: struct #packed {}
AnimationTargetClass :: _AdwAnimationTargetClass
AnimationTarget_autoptr :: ^AnimationTarget
AnimationTarget_listautoptr :: ^glib.List
AnimationTarget_slistautoptr :: ^glib.SList
AnimationTarget_queueautoptr :: ^glib.Queue
AnimationTargetClass_autoptr :: ^AnimationTargetClass
AnimationTargetClass_listautoptr :: ^glib.List
AnimationTargetClass_slistautoptr :: ^glib.SList
AnimationTargetClass_queueautoptr :: ^glib.Queue
AnimationTargetFunc :: #type proc "c" (value: f64, user_data: glib.pointer)
_AdwCallbackAnimationTarget :: struct #packed {}
CallbackAnimationTarget :: _AdwCallbackAnimationTarget
_AdwCallbackAnimationTargetClass :: struct #packed {}
CallbackAnimationTargetClass :: _AdwCallbackAnimationTargetClass
CallbackAnimationTarget_autoptr :: ^CallbackAnimationTarget
CallbackAnimationTarget_listautoptr :: ^glib.List
CallbackAnimationTarget_slistautoptr :: ^glib.SList
CallbackAnimationTarget_queueautoptr :: ^glib.Queue
CallbackAnimationTargetClass_autoptr :: ^CallbackAnimationTargetClass
CallbackAnimationTargetClass_listautoptr :: ^glib.List
CallbackAnimationTargetClass_slistautoptr :: ^glib.SList
CallbackAnimationTargetClass_queueautoptr :: ^glib.Queue
_AdwPropertyAnimationTarget :: struct #packed {}
PropertyAnimationTarget :: _AdwPropertyAnimationTarget
_AdwPropertyAnimationTargetClass :: struct #packed {}
PropertyAnimationTargetClass :: _AdwPropertyAnimationTargetClass
PropertyAnimationTarget_autoptr :: ^PropertyAnimationTarget
PropertyAnimationTarget_listautoptr :: ^glib.List
PropertyAnimationTarget_slistautoptr :: ^glib.SList
PropertyAnimationTarget_queueautoptr :: ^glib.Queue
PropertyAnimationTargetClass_autoptr :: ^PropertyAnimationTargetClass
PropertyAnimationTargetClass_listautoptr :: ^glib.List
PropertyAnimationTargetClass_slistautoptr :: ^glib.SList
PropertyAnimationTargetClass_queueautoptr :: ^glib.Queue
_AdwAnimation :: struct {
    parent_instance: gobj.Object,
}
Animation :: _AdwAnimation
_AdwAnimationClass :: struct #packed {}
AnimationClass :: _AdwAnimationClass
Animation_autoptr :: ^Animation
Animation_listautoptr :: ^glib.List
Animation_slistautoptr :: ^glib.SList
Animation_queueautoptr :: ^glib.Queue
AnimationClass_autoptr :: ^AnimationClass
AnimationClass_listautoptr :: ^glib.List
AnimationClass_slistautoptr :: ^glib.SList
AnimationClass_queueautoptr :: ^glib.Queue
_AdwStyleManager :: struct #packed {}
StyleManager :: _AdwStyleManager
StyleManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
StyleManager_autoptr :: ^StyleManager
StyleManager_listautoptr :: ^glib.List
StyleManager_slistautoptr :: ^glib.SList
StyleManager_queueautoptr :: ^glib.Queue
StyleManagerClass_autoptr :: ^StyleManagerClass
StyleManagerClass_listautoptr :: ^glib.List
StyleManagerClass_slistautoptr :: ^glib.SList
StyleManagerClass_queueautoptr :: ^glib.Queue
_AdwApplication :: struct {
    parent_instance: gtk.Application,
}
Application :: _AdwApplication
_AdwApplicationClass :: struct {
    parent_class: gtk.ApplicationClass,
    padding: [4]glib.pointer,
}
ApplicationClass :: _AdwApplicationClass
Application_autoptr :: ^Application
Application_listautoptr :: ^glib.List
Application_slistautoptr :: ^glib.SList
Application_queueautoptr :: ^glib.Queue
ApplicationClass_autoptr :: ^ApplicationClass
ApplicationClass_listautoptr :: ^glib.List
ApplicationClass_slistautoptr :: ^glib.SList
ApplicationClass_queueautoptr :: ^glib.Queue
_AdwApplicationWindow :: struct {
    parent_instance: gtk.ApplicationWindow,
}
ApplicationWindow :: _AdwApplicationWindow
_AdwApplicationWindowClass :: struct {
    parent_class: gtk.ApplicationWindowClass,
    padding: [4]glib.pointer,
}
ApplicationWindowClass :: _AdwApplicationWindowClass
ApplicationWindow_autoptr :: ^ApplicationWindow
ApplicationWindow_listautoptr :: ^glib.List
ApplicationWindow_slistautoptr :: ^glib.SList
ApplicationWindow_queueautoptr :: ^glib.Queue
ApplicationWindowClass_autoptr :: ^ApplicationWindowClass
ApplicationWindowClass_listautoptr :: ^glib.List
ApplicationWindowClass_slistautoptr :: ^glib.SList
ApplicationWindowClass_queueautoptr :: ^glib.Queue
_AdwAvatar :: struct #packed {}
Avatar :: _AdwAvatar
AvatarClass :: struct {
    parent_class: gtk.WidgetClass,
}
Avatar_autoptr :: ^Avatar
Avatar_listautoptr :: ^glib.List
Avatar_slistautoptr :: ^glib.SList
Avatar_queueautoptr :: ^glib.Queue
AvatarClass_autoptr :: ^AvatarClass
AvatarClass_listautoptr :: ^glib.List
AvatarClass_slistautoptr :: ^glib.SList
AvatarClass_queueautoptr :: ^glib.Queue
_AdwBanner :: struct #packed {}
Banner :: _AdwBanner
BannerClass :: struct {
    parent_class: gtk.WidgetClass,
}
Banner_autoptr :: ^Banner
Banner_listautoptr :: ^glib.List
Banner_slistautoptr :: ^glib.SList
Banner_queueautoptr :: ^glib.Queue
BannerClass_autoptr :: ^BannerClass
BannerClass_listautoptr :: ^glib.List
BannerClass_slistautoptr :: ^glib.SList
BannerClass_queueautoptr :: ^glib.Queue
_AdwBin :: struct {
    parent_instance: gtk.Widget,
}
Bin :: _AdwBin
_AdwBinClass :: struct {
    parent_class: gtk.WidgetClass,
}
BinClass :: _AdwBinClass
Bin_autoptr :: ^Bin
Bin_listautoptr :: ^glib.List
Bin_slistautoptr :: ^glib.SList
Bin_queueautoptr :: ^glib.Queue
BinClass_autoptr :: ^BinClass
BinClass_listautoptr :: ^glib.List
BinClass_slistautoptr :: ^glib.SList
BinClass_queueautoptr :: ^glib.Queue
_AdwBottomSheet :: struct #packed {}
BottomSheet :: _AdwBottomSheet
BottomSheetClass :: struct {
    parent_class: gtk.WidgetClass,
}
BottomSheet_autoptr :: ^BottomSheet
BottomSheet_listautoptr :: ^glib.List
BottomSheet_slistautoptr :: ^glib.SList
BottomSheet_queueautoptr :: ^glib.Queue
BottomSheetClass_autoptr :: ^BottomSheetClass
BottomSheetClass_listautoptr :: ^glib.List
BottomSheetClass_slistautoptr :: ^glib.SList
BottomSheetClass_queueautoptr :: ^glib.Queue
_AdwBreakpointBin :: struct {
    parent_instance: gtk.Widget,
}
BreakpointBin :: _AdwBreakpointBin
_AdwBreakpointBinClass :: struct {
    parent_class: gtk.WidgetClass,
    padding: [4]glib.pointer,
}
BreakpointBinClass :: _AdwBreakpointBinClass
BreakpointBin_autoptr :: ^BreakpointBin
BreakpointBin_listautoptr :: ^glib.List
BreakpointBin_slistautoptr :: ^glib.SList
BreakpointBin_queueautoptr :: ^glib.Queue
BreakpointBinClass_autoptr :: ^BreakpointBinClass
BreakpointBinClass_listautoptr :: ^glib.List
BreakpointBinClass_slistautoptr :: ^glib.SList
BreakpointBinClass_queueautoptr :: ^glib.Queue
_AdwButtonContent :: struct #packed {}
ButtonContent :: _AdwButtonContent
ButtonContentClass :: struct {
    parent_class: gtk.WidgetClass,
}
ButtonContent_autoptr :: ^ButtonContent
ButtonContent_listautoptr :: ^glib.List
ButtonContent_slistautoptr :: ^glib.SList
ButtonContent_queueautoptr :: ^glib.Queue
ButtonContentClass_autoptr :: ^ButtonContentClass
ButtonContentClass_listautoptr :: ^glib.List
ButtonContentClass_slistautoptr :: ^glib.SList
ButtonContentClass_queueautoptr :: ^glib.Queue
_AdwButtonRow :: struct #packed {}
ButtonRow :: _AdwButtonRow
ButtonRowClass :: struct {
    parent_class: PreferencesRowClass,
}
ButtonRow_autoptr :: ^ButtonRow
ButtonRow_listautoptr :: ^glib.List
ButtonRow_slistautoptr :: ^glib.SList
ButtonRow_queueautoptr :: ^glib.Queue
ButtonRowClass_autoptr :: ^ButtonRowClass
ButtonRowClass_listautoptr :: ^glib.List
ButtonRowClass_slistautoptr :: ^glib.SList
ButtonRowClass_queueautoptr :: ^glib.Queue
_AdwSpringParams :: struct #packed {}
SpringParams :: _AdwSpringParams
SpringParams_autoptr :: ^SpringParams
SpringParams_listautoptr :: ^glib.List
SpringParams_slistautoptr :: ^glib.SList
SpringParams_queueautoptr :: ^glib.Queue
_AdwCarousel :: struct #packed {}
Carousel :: _AdwCarousel
CarouselClass :: struct {
    parent_class: gtk.WidgetClass,
}
Carousel_autoptr :: ^Carousel
Carousel_listautoptr :: ^glib.List
Carousel_slistautoptr :: ^glib.SList
Carousel_queueautoptr :: ^glib.Queue
CarouselClass_autoptr :: ^CarouselClass
CarouselClass_listautoptr :: ^glib.List
CarouselClass_slistautoptr :: ^glib.SList
CarouselClass_queueautoptr :: ^glib.Queue
_AdwCarouselIndicatorDots :: struct #packed {}
CarouselIndicatorDots :: _AdwCarouselIndicatorDots
CarouselIndicatorDotsClass :: struct {
    parent_class: gtk.WidgetClass,
}
CarouselIndicatorDots_autoptr :: ^CarouselIndicatorDots
CarouselIndicatorDots_listautoptr :: ^glib.List
CarouselIndicatorDots_slistautoptr :: ^glib.SList
CarouselIndicatorDots_queueautoptr :: ^glib.Queue
CarouselIndicatorDotsClass_autoptr :: ^CarouselIndicatorDotsClass
CarouselIndicatorDotsClass_listautoptr :: ^glib.List
CarouselIndicatorDotsClass_slistautoptr :: ^glib.SList
CarouselIndicatorDotsClass_queueautoptr :: ^glib.Queue
_AdwCarouselIndicatorLines :: struct #packed {}
CarouselIndicatorLines :: _AdwCarouselIndicatorLines
CarouselIndicatorLinesClass :: struct {
    parent_class: gtk.WidgetClass,
}
CarouselIndicatorLines_autoptr :: ^CarouselIndicatorLines
CarouselIndicatorLines_listautoptr :: ^glib.List
CarouselIndicatorLines_slistautoptr :: ^glib.SList
CarouselIndicatorLines_queueautoptr :: ^glib.Queue
CarouselIndicatorLinesClass_autoptr :: ^CarouselIndicatorLinesClass
CarouselIndicatorLinesClass_listautoptr :: ^glib.List
CarouselIndicatorLinesClass_slistautoptr :: ^glib.SList
CarouselIndicatorLinesClass_queueautoptr :: ^glib.Queue
_AdwClamp :: struct #packed {}
Clamp :: _AdwClamp
ClampClass :: struct {
    parent_class: gtk.WidgetClass,
}
Clamp_autoptr :: ^Clamp
Clamp_listautoptr :: ^glib.List
Clamp_slistautoptr :: ^glib.SList
Clamp_queueautoptr :: ^glib.Queue
ClampClass_autoptr :: ^ClampClass
ClampClass_listautoptr :: ^glib.List
ClampClass_slistautoptr :: ^glib.SList
ClampClass_queueautoptr :: ^glib.Queue
_AdwClampLayout :: struct #packed {}
ClampLayout :: _AdwClampLayout
ClampLayoutClass :: struct {
    parent_class: gtk.LayoutManagerClass,
}
ClampLayout_autoptr :: ^ClampLayout
ClampLayout_listautoptr :: ^glib.List
ClampLayout_slistautoptr :: ^glib.SList
ClampLayout_queueautoptr :: ^glib.Queue
ClampLayoutClass_autoptr :: ^ClampLayoutClass
ClampLayoutClass_listautoptr :: ^glib.List
ClampLayoutClass_slistautoptr :: ^glib.SList
ClampLayoutClass_queueautoptr :: ^glib.Queue
_AdwClampScrollable :: struct #packed {}
ClampScrollable :: _AdwClampScrollable
ClampScrollableClass :: struct {
    parent_class: gtk.WidgetClass,
}
ClampScrollable_autoptr :: ^ClampScrollable
ClampScrollable_listautoptr :: ^glib.List
ClampScrollable_slistautoptr :: ^glib.SList
ClampScrollable_queueautoptr :: ^glib.Queue
ClampScrollableClass_autoptr :: ^ClampScrollableClass
ClampScrollableClass_listautoptr :: ^glib.List
ClampScrollableClass_slistautoptr :: ^glib.SList
ClampScrollableClass_queueautoptr :: ^glib.Queue
_AdwComboRow :: struct {
    parent_instance: ActionRow,
}
ComboRow :: _AdwComboRow
_AdwComboRowClass :: struct {
    parent_class: ActionRowClass,
    padding: [4]glib.pointer,
}
ComboRowClass :: _AdwComboRowClass
ComboRow_autoptr :: ^ComboRow
ComboRow_listautoptr :: ^glib.List
ComboRow_slistautoptr :: ^glib.SList
ComboRow_queueautoptr :: ^glib.Queue
ComboRowClass_autoptr :: ^ComboRowClass
ComboRowClass_listautoptr :: ^glib.List
ComboRowClass_slistautoptr :: ^glib.SList
ComboRowClass_queueautoptr :: ^glib.Queue
_AdwEntryRow :: struct {
    parent_instance: PreferencesRow,
}
EntryRow :: _AdwEntryRow
_AdwEntryRowClass :: struct {
    parent_class: PreferencesRowClass,
}
EntryRowClass :: _AdwEntryRowClass
EntryRow_autoptr :: ^EntryRow
EntryRow_listautoptr :: ^glib.List
EntryRow_slistautoptr :: ^glib.SList
EntryRow_queueautoptr :: ^glib.Queue
EntryRowClass_autoptr :: ^EntryRowClass
EntryRowClass_listautoptr :: ^glib.List
EntryRowClass_slistautoptr :: ^glib.SList
EntryRowClass_queueautoptr :: ^glib.Queue
_AdwEnumListItem :: struct #packed {}
EnumListItem :: _AdwEnumListItem
EnumListItemClass :: struct {
    parent_class: gobj.ObjectClass,
}
EnumListItem_autoptr :: ^EnumListItem
EnumListItem_listautoptr :: ^glib.List
EnumListItem_slistautoptr :: ^glib.SList
EnumListItem_queueautoptr :: ^glib.Queue
EnumListItemClass_autoptr :: ^EnumListItemClass
EnumListItemClass_listautoptr :: ^glib.List
EnumListItemClass_slistautoptr :: ^glib.SList
EnumListItemClass_queueautoptr :: ^glib.Queue
_AdwEnumListModel :: struct #packed {}
EnumListModel :: _AdwEnumListModel
EnumListModelClass :: struct {
    parent_class: gobj.ObjectClass,
}
EnumListModel_autoptr :: ^EnumListModel
EnumListModel_listautoptr :: ^glib.List
EnumListModel_slistautoptr :: ^glib.SList
EnumListModel_queueautoptr :: ^glib.Queue
EnumListModelClass_autoptr :: ^EnumListModelClass
EnumListModelClass_listautoptr :: ^glib.List
EnumListModelClass_slistautoptr :: ^glib.SList
EnumListModelClass_queueautoptr :: ^glib.Queue
_AdwExpanderRow :: struct {
    parent_instance: PreferencesRow,
}
ExpanderRow :: _AdwExpanderRow
_AdwExpanderRowClass :: struct {
    parent_class: PreferencesRowClass,
    padding: [4]glib.pointer,
}
ExpanderRowClass :: _AdwExpanderRowClass
ExpanderRow_autoptr :: ^ExpanderRow
ExpanderRow_listautoptr :: ^glib.List
ExpanderRow_slistautoptr :: ^glib.SList
ExpanderRow_queueautoptr :: ^glib.Queue
ExpanderRowClass_autoptr :: ^ExpanderRowClass
ExpanderRowClass_listautoptr :: ^glib.List
ExpanderRowClass_slistautoptr :: ^glib.SList
ExpanderRowClass_queueautoptr :: ^glib.Queue
_AdwFlap :: struct #packed {}
Flap :: _AdwFlap
FlapClass :: struct {
    parent_class: gtk.WidgetClass,
}
Flap_autoptr :: ^Flap
Flap_listautoptr :: ^glib.List
Flap_slistautoptr :: ^glib.SList
Flap_queueautoptr :: ^glib.Queue
FlapClass_autoptr :: ^FlapClass
FlapClass_listautoptr :: ^glib.List
FlapClass_slistautoptr :: ^glib.SList
FlapClass_queueautoptr :: ^glib.Queue
_AdwHeaderBar :: struct #packed {}
HeaderBar :: _AdwHeaderBar
HeaderBarClass :: struct {
    parent_class: gtk.WidgetClass,
}
HeaderBar_autoptr :: ^HeaderBar
HeaderBar_listautoptr :: ^glib.List
HeaderBar_slistautoptr :: ^glib.SList
HeaderBar_queueautoptr :: ^glib.Queue
HeaderBarClass_autoptr :: ^HeaderBarClass
HeaderBarClass_listautoptr :: ^glib.List
HeaderBarClass_slistautoptr :: ^glib.SList
HeaderBarClass_queueautoptr :: ^glib.Queue
_AdwViewStackPage :: struct #packed {}
ViewStackPage :: _AdwViewStackPage
ViewStackPageClass :: struct {
    parent_class: gobj.ObjectClass,
}
ViewStackPage_autoptr :: ^ViewStackPage
ViewStackPage_listautoptr :: ^glib.List
ViewStackPage_slistautoptr :: ^glib.SList
ViewStackPage_queueautoptr :: ^glib.Queue
ViewStackPageClass_autoptr :: ^ViewStackPageClass
ViewStackPageClass_listautoptr :: ^glib.List
ViewStackPageClass_slistautoptr :: ^glib.SList
ViewStackPageClass_queueautoptr :: ^glib.Queue
_AdwViewStack :: struct #packed {}
ViewStack :: _AdwViewStack
ViewStackClass :: struct {
    parent_class: gtk.WidgetClass,
}
ViewStack_autoptr :: ^ViewStack
ViewStack_listautoptr :: ^glib.List
ViewStack_slistautoptr :: ^glib.SList
ViewStack_queueautoptr :: ^glib.Queue
ViewStackClass_autoptr :: ^ViewStackClass
ViewStackClass_listautoptr :: ^glib.List
ViewStackClass_slistautoptr :: ^glib.SList
ViewStackClass_queueautoptr :: ^glib.Queue
_AdwViewStackPages :: struct #packed {}
ViewStackPages :: _AdwViewStackPages
ViewStackPagesClass :: struct {
    parent_class: gobj.ObjectClass,
}
ViewStackPages_autoptr :: ^ViewStackPages
ViewStackPages_listautoptr :: ^glib.List
ViewStackPages_slistautoptr :: ^glib.SList
ViewStackPages_queueautoptr :: ^glib.Queue
ViewStackPagesClass_autoptr :: ^ViewStackPagesClass
ViewStackPagesClass_listautoptr :: ^glib.List
ViewStackPagesClass_slistautoptr :: ^glib.SList
ViewStackPagesClass_queueautoptr :: ^glib.Queue
_AdwInlineViewSwitcher :: struct #packed {}
InlineViewSwitcher :: _AdwInlineViewSwitcher
InlineViewSwitcherClass :: struct {
    parent_class: gtk.WidgetClass,
}
InlineViewSwitcher_autoptr :: ^InlineViewSwitcher
InlineViewSwitcher_listautoptr :: ^glib.List
InlineViewSwitcher_slistautoptr :: ^glib.SList
InlineViewSwitcher_queueautoptr :: ^glib.Queue
InlineViewSwitcherClass_autoptr :: ^InlineViewSwitcherClass
InlineViewSwitcherClass_listautoptr :: ^glib.List
InlineViewSwitcherClass_slistautoptr :: ^glib.SList
InlineViewSwitcherClass_queueautoptr :: ^glib.Queue
_AdwLayout :: struct #packed {}
Layout :: _AdwLayout
LayoutClass :: struct {
    parent_class: gobj.ObjectClass,
}
Layout_autoptr :: ^Layout
Layout_listautoptr :: ^glib.List
Layout_slistautoptr :: ^glib.SList
Layout_queueautoptr :: ^glib.Queue
LayoutClass_autoptr :: ^LayoutClass
LayoutClass_listautoptr :: ^glib.List
LayoutClass_slistautoptr :: ^glib.SList
LayoutClass_queueautoptr :: ^glib.Queue
_AdwLayoutSlot :: struct #packed {}
LayoutSlot :: _AdwLayoutSlot
LayoutSlotClass :: struct {
    parent_class: gtk.WidgetClass,
}
LayoutSlot_autoptr :: ^LayoutSlot
LayoutSlot_listautoptr :: ^glib.List
LayoutSlot_slistautoptr :: ^glib.SList
LayoutSlot_queueautoptr :: ^glib.Queue
LayoutSlotClass_autoptr :: ^LayoutSlotClass
LayoutSlotClass_listautoptr :: ^glib.List
LayoutSlotClass_slistautoptr :: ^glib.SList
LayoutSlotClass_queueautoptr :: ^glib.Queue
_AdwLeafletPage :: struct #packed {}
LeafletPage :: _AdwLeafletPage
LeafletPageClass :: struct {
    parent_class: gobj.ObjectClass,
}
LeafletPage_autoptr :: ^LeafletPage
LeafletPage_listautoptr :: ^glib.List
LeafletPage_slistautoptr :: ^glib.SList
LeafletPage_queueautoptr :: ^glib.Queue
LeafletPageClass_autoptr :: ^LeafletPageClass
LeafletPageClass_listautoptr :: ^glib.List
LeafletPageClass_slistautoptr :: ^glib.SList
LeafletPageClass_queueautoptr :: ^glib.Queue
_AdwLeaflet :: struct #packed {}
Leaflet :: _AdwLeaflet
LeafletClass :: struct {
    parent_class: gtk.WidgetClass,
}
Leaflet_autoptr :: ^Leaflet
Leaflet_listautoptr :: ^glib.List
Leaflet_slistautoptr :: ^glib.SList
Leaflet_queueautoptr :: ^glib.Queue
LeafletClass_autoptr :: ^LeafletClass
LeafletClass_listautoptr :: ^glib.List
LeafletClass_slistautoptr :: ^glib.SList
LeafletClass_queueautoptr :: ^glib.Queue
_AdwMessageDialog :: struct {
    parent_instance: gtk.Window,
}
MessageDialog :: _AdwMessageDialog
response_func_ptr_anon_4 :: #type proc "c" (self: ^MessageDialog, response: cstring)
_AdwMessageDialogClass :: struct {
    parent_class: gtk.WindowClass,
    response: response_func_ptr_anon_4,
    padding: [4]glib.pointer,
}
MessageDialogClass :: _AdwMessageDialogClass
MessageDialog_autoptr :: ^MessageDialog
MessageDialog_listautoptr :: ^glib.List
MessageDialog_slistautoptr :: ^glib.SList
MessageDialog_queueautoptr :: ^glib.Queue
MessageDialogClass_autoptr :: ^MessageDialogClass
MessageDialogClass_listautoptr :: ^glib.List
MessageDialogClass_slistautoptr :: ^glib.SList
MessageDialogClass_queueautoptr :: ^glib.Queue
_AdwMultiLayoutView :: struct #packed {}
MultiLayoutView :: _AdwMultiLayoutView
MultiLayoutViewClass :: struct {
    parent_class: gtk.WidgetClass,
}
MultiLayoutView_autoptr :: ^MultiLayoutView
MultiLayoutView_listautoptr :: ^glib.List
MultiLayoutView_slistautoptr :: ^glib.SList
MultiLayoutView_queueautoptr :: ^glib.Queue
MultiLayoutViewClass_autoptr :: ^MultiLayoutViewClass
MultiLayoutViewClass_listautoptr :: ^glib.List
MultiLayoutViewClass_slistautoptr :: ^glib.SList
MultiLayoutViewClass_queueautoptr :: ^glib.Queue
_AdwNavigationPage :: struct {
    parent_instance: gtk.Widget,
}
NavigationPage :: _AdwNavigationPage
showing_func_ptr_anon_5 :: #type proc "c" (self: ^NavigationPage)
shown_func_ptr_anon_6 :: #type proc "c" (self: ^NavigationPage)
hiding_func_ptr_anon_7 :: #type proc "c" (self: ^NavigationPage)
hidden_func_ptr_anon_8 :: #type proc "c" (self: ^NavigationPage)
_AdwNavigationPageClass :: struct {
    parent_class: gtk.WidgetClass,
    showing: showing_func_ptr_anon_5,
    shown: shown_func_ptr_anon_6,
    hiding: hiding_func_ptr_anon_7,
    hidden: hidden_func_ptr_anon_8,
    padding: [8]glib.pointer,
}
NavigationPageClass :: _AdwNavigationPageClass
NavigationPage_autoptr :: ^NavigationPage
NavigationPage_listautoptr :: ^glib.List
NavigationPage_slistautoptr :: ^glib.SList
NavigationPage_queueautoptr :: ^glib.Queue
NavigationPageClass_autoptr :: ^NavigationPageClass
NavigationPageClass_listautoptr :: ^glib.List
NavigationPageClass_slistautoptr :: ^glib.SList
NavigationPageClass_queueautoptr :: ^glib.Queue
_AdwNavigationView :: struct #packed {}
NavigationView :: _AdwNavigationView
NavigationViewClass :: struct {
    parent_class: gtk.WidgetClass,
}
NavigationView_autoptr :: ^NavigationView
NavigationView_listautoptr :: ^glib.List
NavigationView_slistautoptr :: ^glib.SList
NavigationView_queueautoptr :: ^glib.Queue
NavigationViewClass_autoptr :: ^NavigationViewClass
NavigationViewClass_listautoptr :: ^glib.List
NavigationViewClass_slistautoptr :: ^glib.SList
NavigationViewClass_queueautoptr :: ^glib.Queue
_AdwNavigationSplitView :: struct #packed {}
NavigationSplitView :: _AdwNavigationSplitView
NavigationSplitViewClass :: struct {
    parent_class: gtk.WidgetClass,
}
NavigationSplitView_autoptr :: ^NavigationSplitView
NavigationSplitView_listautoptr :: ^glib.List
NavigationSplitView_slistautoptr :: ^glib.SList
NavigationSplitView_queueautoptr :: ^glib.Queue
NavigationSplitViewClass_autoptr :: ^NavigationSplitViewClass
NavigationSplitViewClass_listautoptr :: ^glib.List
NavigationSplitViewClass_slistautoptr :: ^glib.SList
NavigationSplitViewClass_queueautoptr :: ^glib.Queue
_AdwOverlaySplitView :: struct #packed {}
OverlaySplitView :: _AdwOverlaySplitView
OverlaySplitViewClass :: struct {
    parent_class: gtk.WidgetClass,
}
OverlaySplitView_autoptr :: ^OverlaySplitView
OverlaySplitView_listautoptr :: ^glib.List
OverlaySplitView_slistautoptr :: ^glib.SList
OverlaySplitView_queueautoptr :: ^glib.Queue
OverlaySplitViewClass_autoptr :: ^OverlaySplitViewClass
OverlaySplitViewClass_listautoptr :: ^glib.List
OverlaySplitViewClass_slistautoptr :: ^glib.SList
OverlaySplitViewClass_queueautoptr :: ^glib.Queue
_AdwPasswordEntryRow :: struct #packed {}
PasswordEntryRow :: _AdwPasswordEntryRow
PasswordEntryRowClass :: struct {
    parent_class: EntryRowClass,
}
PasswordEntryRow_autoptr :: ^PasswordEntryRow
PasswordEntryRow_listautoptr :: ^glib.List
PasswordEntryRow_slistautoptr :: ^glib.SList
PasswordEntryRow_queueautoptr :: ^glib.Queue
PasswordEntryRowClass_autoptr :: ^PasswordEntryRowClass
PasswordEntryRowClass_listautoptr :: ^glib.List
PasswordEntryRowClass_slistautoptr :: ^glib.SList
PasswordEntryRowClass_queueautoptr :: ^glib.Queue
_AdwPreferencesGroup :: struct {
    parent_instance: gtk.Widget,
}
PreferencesGroup :: _AdwPreferencesGroup
_AdwPreferencesGroupClass :: struct {
    parent_class: gtk.WidgetClass,
    padding: [4]glib.pointer,
}
PreferencesGroupClass :: _AdwPreferencesGroupClass
PreferencesGroup_autoptr :: ^PreferencesGroup
PreferencesGroup_listautoptr :: ^glib.List
PreferencesGroup_slistautoptr :: ^glib.SList
PreferencesGroup_queueautoptr :: ^glib.Queue
PreferencesGroupClass_autoptr :: ^PreferencesGroupClass
PreferencesGroupClass_listautoptr :: ^glib.List
PreferencesGroupClass_slistautoptr :: ^glib.SList
PreferencesGroupClass_queueautoptr :: ^glib.Queue
_AdwPreferencesPage :: struct {
    parent_instance: gtk.Widget,
}
PreferencesPage :: _AdwPreferencesPage
_AdwPreferencesPageClass :: struct {
    parent_class: gtk.WidgetClass,
    padding: [4]glib.pointer,
}
PreferencesPageClass :: _AdwPreferencesPageClass
PreferencesPage_autoptr :: ^PreferencesPage
PreferencesPage_listautoptr :: ^glib.List
PreferencesPage_slistautoptr :: ^glib.SList
PreferencesPage_queueautoptr :: ^glib.Queue
PreferencesPageClass_autoptr :: ^PreferencesPageClass
PreferencesPageClass_listautoptr :: ^glib.List
PreferencesPageClass_slistautoptr :: ^glib.SList
PreferencesPageClass_queueautoptr :: ^glib.Queue
_AdwToast :: struct #packed {}
Toast :: _AdwToast
ToastClass :: struct {
    parent_class: gobj.ObjectClass,
}
Toast_autoptr :: ^Toast
Toast_listautoptr :: ^glib.List
Toast_slistautoptr :: ^glib.SList
Toast_queueautoptr :: ^glib.Queue
ToastClass_autoptr :: ^ToastClass
ToastClass_listautoptr :: ^glib.List
ToastClass_slistautoptr :: ^glib.SList
ToastClass_queueautoptr :: ^glib.Queue
_AdwPreferencesDialog :: struct {
    parent_instance: Dialog,
}
PreferencesDialog :: _AdwPreferencesDialog
_AdwPreferencesDialogClass :: struct {
    parent_class: DialogClass,
    padding: [4]glib.pointer,
}
PreferencesDialogClass :: _AdwPreferencesDialogClass
PreferencesDialog_autoptr :: ^PreferencesDialog
PreferencesDialog_listautoptr :: ^glib.List
PreferencesDialog_slistautoptr :: ^glib.SList
PreferencesDialog_queueautoptr :: ^glib.Queue
PreferencesDialogClass_autoptr :: ^PreferencesDialogClass
PreferencesDialogClass_listautoptr :: ^glib.List
PreferencesDialogClass_slistautoptr :: ^glib.SList
PreferencesDialogClass_queueautoptr :: ^glib.Queue
_AdwPreferencesWindow :: struct {
    parent_instance: Window,
}
PreferencesWindow :: _AdwPreferencesWindow
_AdwPreferencesWindowClass :: struct {
    parent_class: WindowClass,
    padding: [4]glib.pointer,
}
PreferencesWindowClass :: _AdwPreferencesWindowClass
PreferencesWindow_autoptr :: ^PreferencesWindow
PreferencesWindow_listautoptr :: ^glib.List
PreferencesWindow_slistautoptr :: ^glib.SList
PreferencesWindow_queueautoptr :: ^glib.Queue
PreferencesWindowClass_autoptr :: ^PreferencesWindowClass
PreferencesWindowClass_listautoptr :: ^glib.List
PreferencesWindowClass_slistautoptr :: ^glib.SList
PreferencesWindowClass_queueautoptr :: ^glib.Queue
_AdwSpinRow :: struct #packed {}
SpinRow :: _AdwSpinRow
SpinRowClass :: struct {
    parent_class: ActionRowClass,
}
SpinRow_autoptr :: ^SpinRow
SpinRow_listautoptr :: ^glib.List
SpinRow_slistautoptr :: ^glib.SList
SpinRow_queueautoptr :: ^glib.Queue
SpinRowClass_autoptr :: ^SpinRowClass
SpinRowClass_listautoptr :: ^glib.List
SpinRowClass_slistautoptr :: ^glib.SList
SpinRowClass_queueautoptr :: ^glib.Queue
_AdwSpinner :: struct #packed {}
Spinner :: _AdwSpinner
SpinnerClass :: struct {
    parent_class: gtk.WidgetClass,
}
Spinner_autoptr :: ^Spinner
Spinner_listautoptr :: ^glib.List
Spinner_slistautoptr :: ^glib.SList
Spinner_queueautoptr :: ^glib.Queue
SpinnerClass_autoptr :: ^SpinnerClass
SpinnerClass_listautoptr :: ^glib.List
SpinnerClass_slistautoptr :: ^glib.SList
SpinnerClass_queueautoptr :: ^glib.Queue
_AdwSpinnerPaintable :: struct #packed {}
SpinnerPaintable :: _AdwSpinnerPaintable
SpinnerPaintableClass :: struct {
    parent_class: gobj.ObjectClass,
}
SpinnerPaintable_autoptr :: ^SpinnerPaintable
SpinnerPaintable_listautoptr :: ^glib.List
SpinnerPaintable_slistautoptr :: ^glib.SList
SpinnerPaintable_queueautoptr :: ^glib.Queue
SpinnerPaintableClass_autoptr :: ^SpinnerPaintableClass
SpinnerPaintableClass_listautoptr :: ^glib.List
SpinnerPaintableClass_slistautoptr :: ^glib.SList
SpinnerPaintableClass_queueautoptr :: ^glib.Queue
_AdwSplitButton :: struct #packed {}
SplitButton :: _AdwSplitButton
SplitButtonClass :: struct {
    parent_class: gtk.WidgetClass,
}
SplitButton_autoptr :: ^SplitButton
SplitButton_listautoptr :: ^glib.List
SplitButton_slistautoptr :: ^glib.SList
SplitButton_queueautoptr :: ^glib.Queue
SplitButtonClass_autoptr :: ^SplitButtonClass
SplitButtonClass_listautoptr :: ^glib.List
SplitButtonClass_slistautoptr :: ^glib.SList
SplitButtonClass_queueautoptr :: ^glib.Queue
_AdwSpringAnimation :: struct #packed {}
SpringAnimation :: _AdwSpringAnimation
_AdwSpringAnimationClass :: struct #packed {}
SpringAnimationClass :: _AdwSpringAnimationClass
SpringAnimation_autoptr :: ^SpringAnimation
SpringAnimation_listautoptr :: ^glib.List
SpringAnimation_slistautoptr :: ^glib.SList
SpringAnimation_queueautoptr :: ^glib.Queue
SpringAnimationClass_autoptr :: ^SpringAnimationClass
SpringAnimationClass_listautoptr :: ^glib.List
SpringAnimationClass_slistautoptr :: ^glib.SList
SpringAnimationClass_queueautoptr :: ^glib.Queue
_AdwSqueezerPage :: struct #packed {}
SqueezerPage :: _AdwSqueezerPage
SqueezerPageClass :: struct {
    parent_class: gobj.ObjectClass,
}
SqueezerPage_autoptr :: ^SqueezerPage
SqueezerPage_listautoptr :: ^glib.List
SqueezerPage_slistautoptr :: ^glib.SList
SqueezerPage_queueautoptr :: ^glib.Queue
SqueezerPageClass_autoptr :: ^SqueezerPageClass
SqueezerPageClass_listautoptr :: ^glib.List
SqueezerPageClass_slistautoptr :: ^glib.SList
SqueezerPageClass_queueautoptr :: ^glib.Queue
_AdwSqueezer :: struct #packed {}
Squeezer :: _AdwSqueezer
SqueezerClass :: struct {
    parent_class: gtk.WidgetClass,
}
Squeezer_autoptr :: ^Squeezer
Squeezer_listautoptr :: ^glib.List
Squeezer_slistautoptr :: ^glib.SList
Squeezer_queueautoptr :: ^glib.Queue
SqueezerClass_autoptr :: ^SqueezerClass
SqueezerClass_listautoptr :: ^glib.List
SqueezerClass_slistautoptr :: ^glib.SList
SqueezerClass_queueautoptr :: ^glib.Queue
_AdwStatusPage :: struct #packed {}
StatusPage :: _AdwStatusPage
StatusPageClass :: struct {
    parent_class: gtk.WidgetClass,
}
StatusPage_autoptr :: ^StatusPage
StatusPage_listautoptr :: ^glib.List
StatusPage_slistautoptr :: ^glib.SList
StatusPage_queueautoptr :: ^glib.Queue
StatusPageClass_autoptr :: ^StatusPageClass
StatusPageClass_listautoptr :: ^glib.List
StatusPageClass_slistautoptr :: ^glib.SList
StatusPageClass_queueautoptr :: ^glib.Queue
_AdwSwipeable :: struct #packed {}
Swipeable :: _AdwSwipeable
et_distance_func_ptr_anon_9 :: #type proc "c" (self: ^Swipeable) -> f64
et_snap_points_func_ptr_anon_10 :: #type proc "c" (self: ^Swipeable, n_snap_points: [^]i32) -> ^f64
et_progress_func_ptr_anon_11 :: #type proc "c" (self: ^Swipeable) -> f64
et_cancel_progress_func_ptr_anon_12 :: #type proc "c" (self: ^Swipeable) -> f64
et_swipe_area_func_ptr_anon_13 :: #type proc "c" (self: ^Swipeable, navigation_direction: NavigationDirection, is_drag: glib.boolean, rect: ^gtk.Rectangle)
_AdwSwipeableInterface :: struct {
    parent: gobj.TypeInterface,
    get_distance: et_distance_func_ptr_anon_9,
    get_snap_points: et_snap_points_func_ptr_anon_10,
    get_progress: et_progress_func_ptr_anon_11,
    get_cancel_progress: et_cancel_progress_func_ptr_anon_12,
    get_swipe_area: et_swipe_area_func_ptr_anon_13,
    padding: [4]glib.pointer,
}
SwipeableInterface :: _AdwSwipeableInterface
Swipeable_autoptr :: ^Swipeable
Swipeable_listautoptr :: ^glib.List
Swipeable_slistautoptr :: ^glib.SList
Swipeable_queueautoptr :: ^glib.Queue
_AdwSwipeTracker :: struct #packed {}
SwipeTracker :: _AdwSwipeTracker
SwipeTrackerClass :: struct {
    parent_class: gobj.ObjectClass,
}
SwipeTracker_autoptr :: ^SwipeTracker
SwipeTracker_listautoptr :: ^glib.List
SwipeTracker_slistautoptr :: ^glib.SList
SwipeTracker_queueautoptr :: ^glib.Queue
SwipeTrackerClass_autoptr :: ^SwipeTrackerClass
SwipeTrackerClass_listautoptr :: ^glib.List
SwipeTrackerClass_slistautoptr :: ^glib.SList
SwipeTrackerClass_queueautoptr :: ^glib.Queue
_AdwSwitchRow :: struct #packed {}
SwitchRow :: _AdwSwitchRow
SwitchRowClass :: struct {
    parent_class: ActionRowClass,
}
SwitchRow_autoptr :: ^SwitchRow
SwitchRow_listautoptr :: ^glib.List
SwitchRow_slistautoptr :: ^glib.SList
SwitchRow_queueautoptr :: ^glib.Queue
SwitchRowClass_autoptr :: ^SwitchRowClass
SwitchRowClass_listautoptr :: ^glib.List
SwitchRowClass_slistautoptr :: ^glib.SList
SwitchRowClass_queueautoptr :: ^glib.Queue
_AdwTabPage :: struct #packed {}
TabPage :: _AdwTabPage
TabPageClass :: struct {
    parent_class: gobj.ObjectClass,
}
TabPage_autoptr :: ^TabPage
TabPage_listautoptr :: ^glib.List
TabPage_slistautoptr :: ^glib.SList
TabPage_queueautoptr :: ^glib.Queue
TabPageClass_autoptr :: ^TabPageClass
TabPageClass_listautoptr :: ^glib.List
TabPageClass_slistautoptr :: ^glib.SList
TabPageClass_queueautoptr :: ^glib.Queue
_AdwTabView :: struct #packed {}
TabView :: _AdwTabView
TabViewClass :: struct {
    parent_class: gtk.WidgetClass,
}
TabView_autoptr :: ^TabView
TabView_listautoptr :: ^glib.List
TabView_slistautoptr :: ^glib.SList
TabView_queueautoptr :: ^glib.Queue
TabViewClass_autoptr :: ^TabViewClass
TabViewClass_listautoptr :: ^glib.List
TabViewClass_slistautoptr :: ^glib.SList
TabViewClass_queueautoptr :: ^glib.Queue
_AdwTabBar :: struct #packed {}
TabBar :: _AdwTabBar
TabBarClass :: struct {
    parent_class: gtk.WidgetClass,
}
TabBar_autoptr :: ^TabBar
TabBar_listautoptr :: ^glib.List
TabBar_slistautoptr :: ^glib.SList
TabBar_queueautoptr :: ^glib.Queue
TabBarClass_autoptr :: ^TabBarClass
TabBarClass_listautoptr :: ^glib.List
TabBarClass_slistautoptr :: ^glib.SList
TabBarClass_queueautoptr :: ^glib.Queue
_AdwTabButton :: struct #packed {}
TabButton :: _AdwTabButton
TabButtonClass :: struct {
    parent_class: gtk.WidgetClass,
}
TabButton_autoptr :: ^TabButton
TabButton_listautoptr :: ^glib.List
TabButton_slistautoptr :: ^glib.SList
TabButton_queueautoptr :: ^glib.Queue
TabButtonClass_autoptr :: ^TabButtonClass
TabButtonClass_listautoptr :: ^glib.List
TabButtonClass_slistautoptr :: ^glib.SList
TabButtonClass_queueautoptr :: ^glib.Queue
_AdwTabOverview :: struct #packed {}
TabOverview :: _AdwTabOverview
TabOverviewClass :: struct {
    parent_class: gtk.WidgetClass,
}
TabOverview_autoptr :: ^TabOverview
TabOverview_listautoptr :: ^glib.List
TabOverview_slistautoptr :: ^glib.SList
TabOverview_queueautoptr :: ^glib.Queue
TabOverviewClass_autoptr :: ^TabOverviewClass
TabOverviewClass_listautoptr :: ^glib.List
TabOverviewClass_slistautoptr :: ^glib.SList
TabOverviewClass_queueautoptr :: ^glib.Queue
_AdwTimedAnimation :: struct #packed {}
TimedAnimation :: _AdwTimedAnimation
_AdwTimedAnimationClass :: struct #packed {}
TimedAnimationClass :: _AdwTimedAnimationClass
TimedAnimation_autoptr :: ^TimedAnimation
TimedAnimation_listautoptr :: ^glib.List
TimedAnimation_slistautoptr :: ^glib.SList
TimedAnimation_queueautoptr :: ^glib.Queue
TimedAnimationClass_autoptr :: ^TimedAnimationClass
TimedAnimationClass_listautoptr :: ^glib.List
TimedAnimationClass_slistautoptr :: ^glib.SList
TimedAnimationClass_queueautoptr :: ^glib.Queue
_AdwToastOverlay :: struct #packed {}
ToastOverlay :: _AdwToastOverlay
ToastOverlayClass :: struct {
    parent_class: gtk.WidgetClass,
}
ToastOverlay_autoptr :: ^ToastOverlay
ToastOverlay_listautoptr :: ^glib.List
ToastOverlay_slistautoptr :: ^glib.SList
ToastOverlay_queueautoptr :: ^glib.Queue
ToastOverlayClass_autoptr :: ^ToastOverlayClass
ToastOverlayClass_listautoptr :: ^glib.List
ToastOverlayClass_slistautoptr :: ^glib.SList
ToastOverlayClass_queueautoptr :: ^glib.Queue
_AdwToggle :: struct #packed {}
Toggle :: _AdwToggle
ToggleClass :: struct {
    parent_class: gobj.ObjectClass,
}
Toggle_autoptr :: ^Toggle
Toggle_listautoptr :: ^glib.List
Toggle_slistautoptr :: ^glib.SList
Toggle_queueautoptr :: ^glib.Queue
ToggleClass_autoptr :: ^ToggleClass
ToggleClass_listautoptr :: ^glib.List
ToggleClass_slistautoptr :: ^glib.SList
ToggleClass_queueautoptr :: ^glib.Queue
_AdwToggleGroup :: struct #packed {}
ToggleGroup :: _AdwToggleGroup
ToggleGroupClass :: struct {
    parent_class: gtk.WidgetClass,
}
ToggleGroup_autoptr :: ^ToggleGroup
ToggleGroup_listautoptr :: ^glib.List
ToggleGroup_slistautoptr :: ^glib.SList
ToggleGroup_queueautoptr :: ^glib.Queue
ToggleGroupClass_autoptr :: ^ToggleGroupClass
ToggleGroupClass_listautoptr :: ^glib.List
ToggleGroupClass_slistautoptr :: ^glib.SList
ToggleGroupClass_queueautoptr :: ^glib.Queue
_AdwToolbarView :: struct #packed {}
ToolbarView :: _AdwToolbarView
ToolbarViewClass :: struct {
    parent_class: gtk.WidgetClass,
}
ToolbarView_autoptr :: ^ToolbarView
ToolbarView_listautoptr :: ^glib.List
ToolbarView_slistautoptr :: ^glib.SList
ToolbarView_queueautoptr :: ^glib.Queue
ToolbarViewClass_autoptr :: ^ToolbarViewClass
ToolbarViewClass_listautoptr :: ^glib.List
ToolbarViewClass_slistautoptr :: ^glib.SList
ToolbarViewClass_queueautoptr :: ^glib.Queue
_AdwViewSwitcher :: struct #packed {}
ViewSwitcher :: _AdwViewSwitcher
ViewSwitcherClass :: struct {
    parent_class: gtk.WidgetClass,
}
ViewSwitcher_autoptr :: ^ViewSwitcher
ViewSwitcher_listautoptr :: ^glib.List
ViewSwitcher_slistautoptr :: ^glib.SList
ViewSwitcher_queueautoptr :: ^glib.Queue
ViewSwitcherClass_autoptr :: ^ViewSwitcherClass
ViewSwitcherClass_listautoptr :: ^glib.List
ViewSwitcherClass_slistautoptr :: ^glib.SList
ViewSwitcherClass_queueautoptr :: ^glib.Queue
_AdwViewSwitcherBar :: struct #packed {}
ViewSwitcherBar :: _AdwViewSwitcherBar
ViewSwitcherBarClass :: struct {
    parent_class: gtk.WidgetClass,
}
ViewSwitcherBar_autoptr :: ^ViewSwitcherBar
ViewSwitcherBar_listautoptr :: ^glib.List
ViewSwitcherBar_slistautoptr :: ^glib.SList
ViewSwitcherBar_queueautoptr :: ^glib.Queue
ViewSwitcherBarClass_autoptr :: ^ViewSwitcherBarClass
ViewSwitcherBarClass_listautoptr :: ^glib.List
ViewSwitcherBarClass_slistautoptr :: ^glib.SList
ViewSwitcherBarClass_queueautoptr :: ^glib.Queue
_AdwViewSwitcherTitle :: struct #packed {}
ViewSwitcherTitle :: _AdwViewSwitcherTitle
ViewSwitcherTitleClass :: struct {
    parent_class: gtk.WidgetClass,
}
ViewSwitcherTitle_autoptr :: ^ViewSwitcherTitle
ViewSwitcherTitle_listautoptr :: ^glib.List
ViewSwitcherTitle_slistautoptr :: ^glib.SList
ViewSwitcherTitle_queueautoptr :: ^glib.Queue
ViewSwitcherTitleClass_autoptr :: ^ViewSwitcherTitleClass
ViewSwitcherTitleClass_listautoptr :: ^glib.List
ViewSwitcherTitleClass_slistautoptr :: ^glib.SList
ViewSwitcherTitleClass_queueautoptr :: ^glib.Queue
_AdwWindowTitle :: struct #packed {}
WindowTitle :: _AdwWindowTitle
WindowTitleClass :: struct {
    parent_class: gtk.WidgetClass,
}
WindowTitle_autoptr :: ^WindowTitle
WindowTitle_listautoptr :: ^glib.List
WindowTitle_slistautoptr :: ^glib.SList
WindowTitle_queueautoptr :: ^glib.Queue
WindowTitleClass_autoptr :: ^WindowTitleClass
WindowTitleClass_listautoptr :: ^glib.List
WindowTitleClass_slistautoptr :: ^glib.SList
WindowTitleClass_queueautoptr :: ^glib.Queue
_AdwWrapLayout :: struct #packed {}
WrapLayout :: _AdwWrapLayout
WrapLayoutClass :: struct {
    parent_class: gtk.LayoutManagerClass,
}
WrapLayout_autoptr :: ^WrapLayout
WrapLayout_listautoptr :: ^glib.List
WrapLayout_slistautoptr :: ^glib.SList
WrapLayout_queueautoptr :: ^glib.Queue
WrapLayoutClass_autoptr :: ^WrapLayoutClass
WrapLayoutClass_listautoptr :: ^glib.List
WrapLayoutClass_slistautoptr :: ^glib.SList
WrapLayoutClass_queueautoptr :: ^glib.Queue
_AdwWrapBox :: struct #packed {}
WrapBox :: _AdwWrapBox
WrapBoxClass :: struct {
    parent_class: gtk.WidgetClass,
}
WrapBox_autoptr :: ^WrapBox
WrapBox_listautoptr :: ^glib.List
WrapBox_slistautoptr :: ^glib.SList
WrapBox_queueautoptr :: ^glib.Queue
WrapBoxClass_autoptr :: ^WrapBoxClass
WrapBoxClass_listautoptr :: ^glib.List
WrapBoxClass_slistautoptr :: ^glib.SList
WrapBoxClass_queueautoptr :: ^glib.Queue

@(default_calling_convention = "c")
foreign adwaita_runic {
    @(link_name = "adw_get_major_version")
    get_major_version :: proc() -> glib.uint_ ---

    @(link_name = "adw_get_minor_version")
    get_minor_version :: proc() -> glib.uint_ ---

    @(link_name = "adw_get_micro_version")
    get_micro_version :: proc() -> glib.uint_ ---

    @(link_name = "adw_length_unit_to_px")
    length_unit_to_px :: proc(unit: LengthUnit, value: f64, settings: [^]gtk.Settings) -> f64 ---

    @(link_name = "adw_length_unit_from_px")
    length_unit_from_px :: proc(unit: LengthUnit, value: f64, settings: [^]gtk.Settings) -> f64 ---

    @(link_name = "adw_breakpoint_condition_get_type")
    breakpoint_condition_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_breakpoint_condition_new_length")
    breakpoint_condition_new_length :: proc(type: BreakpointConditionLengthType, value: f64, unit: LengthUnit) -> ^BreakpointCondition ---

    @(link_name = "adw_breakpoint_condition_new_ratio")
    breakpoint_condition_new_ratio :: proc(type: BreakpointConditionRatioType, width: i32, height: i32) -> ^BreakpointCondition ---

    @(link_name = "adw_breakpoint_condition_new_and")
    breakpoint_condition_new_and :: proc(condition_1: ^BreakpointCondition, condition_2: ^BreakpointCondition) -> ^BreakpointCondition ---

    @(link_name = "adw_breakpoint_condition_new_or")
    breakpoint_condition_new_or :: proc(condition_1: ^BreakpointCondition, condition_2: ^BreakpointCondition) -> ^BreakpointCondition ---

    @(link_name = "adw_breakpoint_condition_copy")
    breakpoint_condition_copy :: proc(self: ^BreakpointCondition) -> ^BreakpointCondition ---

    @(link_name = "adw_breakpoint_condition_free")
    breakpoint_condition_free :: proc(self: ^BreakpointCondition) ---

    @(link_name = "adw_breakpoint_condition_parse")
    breakpoint_condition_parse :: proc(str: cstring) -> ^BreakpointCondition ---

    @(link_name = "adw_breakpoint_condition_to_string")
    breakpoint_condition_to_string :: proc(self: ^BreakpointCondition) -> cstring ---

    @(link_name = "adw_breakpoint_get_type")
    breakpoint_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_breakpoint_new")
    breakpoint_new :: proc(condition: ^BreakpointCondition) -> ^Breakpoint ---

    @(link_name = "adw_breakpoint_get_condition")
    breakpoint_get_condition :: proc(self: ^Breakpoint) -> ^BreakpointCondition ---

    @(link_name = "adw_breakpoint_set_condition")
    breakpoint_set_condition :: proc(self: ^Breakpoint, condition: ^BreakpointCondition) ---

    @(link_name = "adw_breakpoint_add_setter")
    breakpoint_add_setter :: proc(self: ^Breakpoint, object: ^gobj.Object, property: cstring, value: ^gobj.Value) ---

    @(link_name = "adw_breakpoint_add_setters")
    breakpoint_add_setters :: proc(self: ^Breakpoint, first_object: ^gobj.Object, first_property: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_breakpoint_add_settersv")
    breakpoint_add_settersv :: proc(self: ^Breakpoint, n_setters: i32, objects: [^]^gobj.Object, names: [^]cstring, values: [^]^gobj.Value) ---

    @(link_name = "adw_breakpoint_add_setters_valist")
    breakpoint_add_setters_valist :: proc(self: ^Breakpoint, first_object: ^gobj.Object, first_property: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_accent_color_get_type")
    accent_color_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_response_appearance_get_type")
    response_appearance_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_animation_state_get_type")
    animation_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_banner_button_style_get_type")
    banner_button_style_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_breakpoint_condition_length_type_get_type")
    breakpoint_condition_length_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_breakpoint_condition_ratio_type_get_type")
    breakpoint_condition_ratio_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_dialog_presentation_mode_get_type")
    dialog_presentation_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_easing_get_type")
    easing_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_flap_fold_policy_get_type")
    flap_fold_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_flap_transition_type_get_type")
    flap_transition_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_fold_threshold_policy_get_type")
    fold_threshold_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_centering_policy_get_type")
    centering_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_inline_view_switcher_display_mode_get_type")
    inline_view_switcher_display_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_leaflet_transition_type_get_type")
    leaflet_transition_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_length_unit_get_type")
    length_unit_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_navigation_direction_get_type")
    navigation_direction_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_squeezer_transition_type_get_type")
    squeezer_transition_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_color_scheme_get_type")
    color_scheme_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_tab_view_shortcuts_get_type")
    tab_view_shortcuts_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_toast_priority_get_type")
    toast_priority_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_toolbar_style_get_type")
    toolbar_style_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_view_switcher_policy_get_type")
    view_switcher_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_justify_mode_get_type")
    justify_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_pack_direction_get_type")
    pack_direction_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_wrap_policy_get_type")
    wrap_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_dialog_get_type")
    dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_dialog_new")
    dialog_new :: proc() -> ^Dialog ---

    @(link_name = "adw_dialog_get_child")
    dialog_get_child :: proc(self: ^Dialog) -> ^gtk.Widget ---

    @(link_name = "adw_dialog_set_child")
    dialog_set_child :: proc(self: ^Dialog, child: ^gtk.Widget) ---

    @(link_name = "adw_dialog_get_title")
    dialog_get_title :: proc(self: ^Dialog) -> cstring ---

    @(link_name = "adw_dialog_set_title")
    dialog_set_title :: proc(self: ^Dialog, title: cstring) ---

    @(link_name = "adw_dialog_get_can_close")
    dialog_get_can_close :: proc(self: ^Dialog) -> glib.boolean ---

    @(link_name = "adw_dialog_set_can_close")
    dialog_set_can_close :: proc(self: ^Dialog, can_close: glib.boolean) ---

    @(link_name = "adw_dialog_get_content_width")
    dialog_get_content_width :: proc(self: ^Dialog) -> i32 ---

    @(link_name = "adw_dialog_set_content_width")
    dialog_set_content_width :: proc(self: ^Dialog, content_width: i32) ---

    @(link_name = "adw_dialog_get_content_height")
    dialog_get_content_height :: proc(self: ^Dialog) -> i32 ---

    @(link_name = "adw_dialog_set_content_height")
    dialog_set_content_height :: proc(self: ^Dialog, content_height: i32) ---

    @(link_name = "adw_dialog_get_follows_content_size")
    dialog_get_follows_content_size :: proc(self: ^Dialog) -> glib.boolean ---

    @(link_name = "adw_dialog_set_follows_content_size")
    dialog_set_follows_content_size :: proc(self: ^Dialog, follows_content_size: glib.boolean) ---

    @(link_name = "adw_dialog_get_presentation_mode")
    dialog_get_presentation_mode :: proc(self: ^Dialog) -> DialogPresentationMode ---

    @(link_name = "adw_dialog_set_presentation_mode")
    dialog_set_presentation_mode :: proc(self: ^Dialog, presentation_mode: DialogPresentationMode) ---

    @(link_name = "adw_dialog_get_focus")
    dialog_get_focus :: proc(self: ^Dialog) -> ^gtk.Widget ---

    @(link_name = "adw_dialog_set_focus")
    dialog_set_focus :: proc(self: ^Dialog, focus: ^gtk.Widget) ---

    @(link_name = "adw_dialog_get_default_widget")
    dialog_get_default_widget :: proc(self: ^Dialog) -> ^gtk.Widget ---

    @(link_name = "adw_dialog_set_default_widget")
    dialog_set_default_widget :: proc(self: ^Dialog, default_widget: ^gtk.Widget) ---

    @(link_name = "adw_dialog_close")
    dialog_close :: proc(self: ^Dialog) -> glib.boolean ---

    @(link_name = "adw_dialog_force_close")
    dialog_force_close :: proc(self: ^Dialog) ---

    @(link_name = "adw_dialog_add_breakpoint")
    dialog_add_breakpoint :: proc(self: ^Dialog, breakpoint: ^Breakpoint) ---

    @(link_name = "adw_dialog_get_current_breakpoint")
    dialog_get_current_breakpoint :: proc(self: ^Dialog) -> ^Breakpoint ---

    @(link_name = "adw_dialog_present")
    dialog_present :: proc(self: ^Dialog, parent: ^gtk.Widget) ---

    @(link_name = "adw_about_dialog_get_type")
    about_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_about_dialog_new")
    about_dialog_new :: proc() -> ^Dialog ---

    @(link_name = "adw_about_dialog_new_from_appdata")
    about_dialog_new_from_appdata :: proc(resource_path: cstring, release_notes_version: cstring) -> ^Dialog ---

    @(link_name = "adw_about_dialog_get_application_name")
    about_dialog_get_application_name :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_application_name")
    about_dialog_set_application_name :: proc(self: ^AboutDialog, application_name: cstring) ---

    @(link_name = "adw_about_dialog_get_application_icon")
    about_dialog_get_application_icon :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_application_icon")
    about_dialog_set_application_icon :: proc(self: ^AboutDialog, application_icon: cstring) ---

    @(link_name = "adw_about_dialog_get_developer_name")
    about_dialog_get_developer_name :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_developer_name")
    about_dialog_set_developer_name :: proc(self: ^AboutDialog, developer_name: cstring) ---

    @(link_name = "adw_about_dialog_get_version")
    about_dialog_get_version :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_version")
    about_dialog_set_version :: proc(self: ^AboutDialog, version: cstring) ---

    @(link_name = "adw_about_dialog_get_release_notes_version")
    about_dialog_get_release_notes_version :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_release_notes_version")
    about_dialog_set_release_notes_version :: proc(self: ^AboutDialog, version: cstring) ---

    @(link_name = "adw_about_dialog_get_release_notes")
    about_dialog_get_release_notes :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_release_notes")
    about_dialog_set_release_notes :: proc(self: ^AboutDialog, release_notes: cstring) ---

    @(link_name = "adw_about_dialog_get_comments")
    about_dialog_get_comments :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_comments")
    about_dialog_set_comments :: proc(self: ^AboutDialog, comments: cstring) ---

    @(link_name = "adw_about_dialog_get_website")
    about_dialog_get_website :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_website")
    about_dialog_set_website :: proc(self: ^AboutDialog, website: cstring) ---

    @(link_name = "adw_about_dialog_get_support_url")
    about_dialog_get_support_url :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_support_url")
    about_dialog_set_support_url :: proc(self: ^AboutDialog, support_url: cstring) ---

    @(link_name = "adw_about_dialog_get_issue_url")
    about_dialog_get_issue_url :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_issue_url")
    about_dialog_set_issue_url :: proc(self: ^AboutDialog, issue_url: cstring) ---

    @(link_name = "adw_about_dialog_add_link")
    about_dialog_add_link :: proc(self: ^AboutDialog, title: cstring, url: cstring) ---

    @(link_name = "adw_about_dialog_get_debug_info")
    about_dialog_get_debug_info :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_debug_info")
    about_dialog_set_debug_info :: proc(self: ^AboutDialog, debug_info: cstring) ---

    @(link_name = "adw_about_dialog_get_debug_info_filename")
    about_dialog_get_debug_info_filename :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_debug_info_filename")
    about_dialog_set_debug_info_filename :: proc(self: ^AboutDialog, filename: cstring) ---

    @(link_name = "adw_about_dialog_get_developers")
    about_dialog_get_developers :: proc(self: ^AboutDialog) -> ^cstring ---

    @(link_name = "adw_about_dialog_set_developers")
    about_dialog_set_developers :: proc(self: ^AboutDialog, developers: [^]cstring) ---

    @(link_name = "adw_about_dialog_get_designers")
    about_dialog_get_designers :: proc(self: ^AboutDialog) -> ^cstring ---

    @(link_name = "adw_about_dialog_set_designers")
    about_dialog_set_designers :: proc(self: ^AboutDialog, designers: [^]cstring) ---

    @(link_name = "adw_about_dialog_get_artists")
    about_dialog_get_artists :: proc(self: ^AboutDialog) -> ^cstring ---

    @(link_name = "adw_about_dialog_set_artists")
    about_dialog_set_artists :: proc(self: ^AboutDialog, artists: [^]cstring) ---

    @(link_name = "adw_about_dialog_get_documenters")
    about_dialog_get_documenters :: proc(self: ^AboutDialog) -> ^cstring ---

    @(link_name = "adw_about_dialog_set_documenters")
    about_dialog_set_documenters :: proc(self: ^AboutDialog, documenters: [^]cstring) ---

    @(link_name = "adw_about_dialog_get_translator_credits")
    about_dialog_get_translator_credits :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_translator_credits")
    about_dialog_set_translator_credits :: proc(self: ^AboutDialog, translator_credits: cstring) ---

    @(link_name = "adw_about_dialog_add_credit_section")
    about_dialog_add_credit_section :: proc(self: ^AboutDialog, name: cstring, people: ^cstring) ---

    @(link_name = "adw_about_dialog_add_acknowledgement_section")
    about_dialog_add_acknowledgement_section :: proc(self: ^AboutDialog, name: cstring, people: ^cstring) ---

    @(link_name = "adw_about_dialog_get_copyright")
    about_dialog_get_copyright :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_copyright")
    about_dialog_set_copyright :: proc(self: ^AboutDialog, copyright: cstring) ---

    @(link_name = "adw_about_dialog_get_license_type")
    about_dialog_get_license_type :: proc(self: ^AboutDialog) -> gtk.License ---

    @(link_name = "adw_about_dialog_set_license_type")
    about_dialog_set_license_type :: proc(self: ^AboutDialog, license_type: gtk.License) ---

    @(link_name = "adw_about_dialog_get_license")
    about_dialog_get_license :: proc(self: ^AboutDialog) -> cstring ---

    @(link_name = "adw_about_dialog_set_license")
    about_dialog_set_license :: proc(self: ^AboutDialog, license: cstring) ---

    @(link_name = "adw_about_dialog_add_legal_section")
    about_dialog_add_legal_section :: proc(self: ^AboutDialog, title: cstring, copyright: cstring, license_type: gtk.License, license: cstring) ---

    @(link_name = "adw_about_dialog_add_other_app")
    about_dialog_add_other_app :: proc(self: ^AboutDialog, appid: cstring, name: cstring, summary: cstring) ---

    @(link_name = "adw_show_about_dialog")
    show_about_dialog :: proc(parent: ^gtk.Widget, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_show_about_dialog_from_appdata")
    show_about_dialog_from_appdata :: proc(parent: ^gtk.Widget, resource_path: cstring, release_notes_version: cstring, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_window_get_type")
    window_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_window_new")
    window_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_window_get_content")
    window_get_content :: proc(self: ^Window) -> ^gtk.Widget ---

    @(link_name = "adw_window_set_content")
    window_set_content :: proc(self: ^Window, content: ^gtk.Widget) ---

    @(link_name = "adw_window_add_breakpoint")
    window_add_breakpoint :: proc(self: ^Window, breakpoint: ^Breakpoint) ---

    @(link_name = "adw_window_get_current_breakpoint")
    window_get_current_breakpoint :: proc(self: ^Window) -> ^Breakpoint ---

    @(link_name = "adw_window_get_dialogs")
    window_get_dialogs :: proc(self: ^Window) -> ^gio.ListModel ---

    @(link_name = "adw_window_get_visible_dialog")
    window_get_visible_dialog :: proc(self: ^Window) -> ^Dialog ---

    @(link_name = "adw_window_get_adaptive_preview")
    window_get_adaptive_preview :: proc(self: ^Window) -> glib.boolean ---

    @(link_name = "adw_window_set_adaptive_preview")
    window_set_adaptive_preview :: proc(self: ^Window, adaptive_preview: glib.boolean) ---

    @(link_name = "adw_about_window_get_type")
    about_window_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_about_window_new")
    about_window_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_about_window_new_from_appdata")
    about_window_new_from_appdata :: proc(resource_path: cstring, release_notes_version: cstring) -> ^gtk.Widget ---

    @(link_name = "adw_about_window_get_application_name")
    about_window_get_application_name :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_application_name")
    about_window_set_application_name :: proc(self: ^AboutWindow, application_name: cstring) ---

    @(link_name = "adw_about_window_get_application_icon")
    about_window_get_application_icon :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_application_icon")
    about_window_set_application_icon :: proc(self: ^AboutWindow, application_icon: cstring) ---

    @(link_name = "adw_about_window_get_developer_name")
    about_window_get_developer_name :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_developer_name")
    about_window_set_developer_name :: proc(self: ^AboutWindow, developer_name: cstring) ---

    @(link_name = "adw_about_window_get_version")
    about_window_get_version :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_version")
    about_window_set_version :: proc(self: ^AboutWindow, version: cstring) ---

    @(link_name = "adw_about_window_get_release_notes_version")
    about_window_get_release_notes_version :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_release_notes_version")
    about_window_set_release_notes_version :: proc(self: ^AboutWindow, version: cstring) ---

    @(link_name = "adw_about_window_get_release_notes")
    about_window_get_release_notes :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_release_notes")
    about_window_set_release_notes :: proc(self: ^AboutWindow, release_notes: cstring) ---

    @(link_name = "adw_about_window_get_comments")
    about_window_get_comments :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_comments")
    about_window_set_comments :: proc(self: ^AboutWindow, comments: cstring) ---

    @(link_name = "adw_about_window_get_website")
    about_window_get_website :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_website")
    about_window_set_website :: proc(self: ^AboutWindow, website: cstring) ---

    @(link_name = "adw_about_window_get_support_url")
    about_window_get_support_url :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_support_url")
    about_window_set_support_url :: proc(self: ^AboutWindow, support_url: cstring) ---

    @(link_name = "adw_about_window_get_issue_url")
    about_window_get_issue_url :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_issue_url")
    about_window_set_issue_url :: proc(self: ^AboutWindow, issue_url: cstring) ---

    @(link_name = "adw_about_window_add_link")
    about_window_add_link :: proc(self: ^AboutWindow, title: cstring, url: cstring) ---

    @(link_name = "adw_about_window_get_debug_info")
    about_window_get_debug_info :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_debug_info")
    about_window_set_debug_info :: proc(self: ^AboutWindow, debug_info: cstring) ---

    @(link_name = "adw_about_window_get_debug_info_filename")
    about_window_get_debug_info_filename :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_debug_info_filename")
    about_window_set_debug_info_filename :: proc(self: ^AboutWindow, filename: cstring) ---

    @(link_name = "adw_about_window_get_developers")
    about_window_get_developers :: proc(self: ^AboutWindow) -> ^cstring ---

    @(link_name = "adw_about_window_set_developers")
    about_window_set_developers :: proc(self: ^AboutWindow, developers: [^]cstring) ---

    @(link_name = "adw_about_window_get_designers")
    about_window_get_designers :: proc(self: ^AboutWindow) -> ^cstring ---

    @(link_name = "adw_about_window_set_designers")
    about_window_set_designers :: proc(self: ^AboutWindow, designers: [^]cstring) ---

    @(link_name = "adw_about_window_get_artists")
    about_window_get_artists :: proc(self: ^AboutWindow) -> ^cstring ---

    @(link_name = "adw_about_window_set_artists")
    about_window_set_artists :: proc(self: ^AboutWindow, artists: [^]cstring) ---

    @(link_name = "adw_about_window_get_documenters")
    about_window_get_documenters :: proc(self: ^AboutWindow) -> ^cstring ---

    @(link_name = "adw_about_window_set_documenters")
    about_window_set_documenters :: proc(self: ^AboutWindow, documenters: [^]cstring) ---

    @(link_name = "adw_about_window_get_translator_credits")
    about_window_get_translator_credits :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_translator_credits")
    about_window_set_translator_credits :: proc(self: ^AboutWindow, translator_credits: cstring) ---

    @(link_name = "adw_about_window_add_credit_section")
    about_window_add_credit_section :: proc(self: ^AboutWindow, name: cstring, people: ^cstring) ---

    @(link_name = "adw_about_window_add_acknowledgement_section")
    about_window_add_acknowledgement_section :: proc(self: ^AboutWindow, name: cstring, people: ^cstring) ---

    @(link_name = "adw_about_window_get_copyright")
    about_window_get_copyright :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_copyright")
    about_window_set_copyright :: proc(self: ^AboutWindow, copyright: cstring) ---

    @(link_name = "adw_about_window_get_license_type")
    about_window_get_license_type :: proc(self: ^AboutWindow) -> gtk.License ---

    @(link_name = "adw_about_window_set_license_type")
    about_window_set_license_type :: proc(self: ^AboutWindow, license_type: gtk.License) ---

    @(link_name = "adw_about_window_get_license")
    about_window_get_license :: proc(self: ^AboutWindow) -> cstring ---

    @(link_name = "adw_about_window_set_license")
    about_window_set_license :: proc(self: ^AboutWindow, license: cstring) ---

    @(link_name = "adw_about_window_add_legal_section")
    about_window_add_legal_section :: proc(self: ^AboutWindow, title: cstring, copyright: cstring, license_type: gtk.License, license: cstring) ---

    @(link_name = "adw_show_about_window")
    show_about_window :: proc(parent: ^gtk.Window, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_show_about_window_from_appdata")
    show_about_window_from_appdata :: proc(parent: ^gtk.Window, resource_path: cstring, release_notes_version: cstring, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_accent_color_to_rgba")
    accent_color_to_rgba :: proc(self: AccentColor, rgba: ^gtk.RGBA) ---

    @(link_name = "adw_accent_color_to_standalone_rgba")
    accent_color_to_standalone_rgba :: proc(self: AccentColor, dark: glib.boolean, rgba: ^gtk.RGBA) ---

    @(link_name = "adw_rgba_to_standalone")
    rgba_to_standalone :: proc(rgba: ^gtk.RGBA, dark: glib.boolean, standalone_rgba: ^gtk.RGBA) ---

    @(link_name = "adw_preferences_row_get_type")
    preferences_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_preferences_row_new")
    preferences_row_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_preferences_row_get_title")
    preferences_row_get_title :: proc(self: ^PreferencesRow) -> cstring ---

    @(link_name = "adw_preferences_row_set_title")
    preferences_row_set_title :: proc(self: ^PreferencesRow, title: cstring) ---

    @(link_name = "adw_preferences_row_get_use_underline")
    preferences_row_get_use_underline :: proc(self: ^PreferencesRow) -> glib.boolean ---

    @(link_name = "adw_preferences_row_set_use_underline")
    preferences_row_set_use_underline :: proc(self: ^PreferencesRow, use_underline: glib.boolean) ---

    @(link_name = "adw_preferences_row_get_title_selectable")
    preferences_row_get_title_selectable :: proc(self: ^PreferencesRow) -> glib.boolean ---

    @(link_name = "adw_preferences_row_set_title_selectable")
    preferences_row_set_title_selectable :: proc(self: ^PreferencesRow, title_selectable: glib.boolean) ---

    @(link_name = "adw_preferences_row_get_use_markup")
    preferences_row_get_use_markup :: proc(self: ^PreferencesRow) -> glib.boolean ---

    @(link_name = "adw_preferences_row_set_use_markup")
    preferences_row_set_use_markup :: proc(self: ^PreferencesRow, use_markup: glib.boolean) ---

    @(link_name = "adw_action_row_get_type")
    action_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_action_row_new")
    action_row_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_action_row_add_prefix")
    action_row_add_prefix :: proc(self: ^ActionRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_action_row_add_suffix")
    action_row_add_suffix :: proc(self: ^ActionRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_action_row_remove")
    action_row_remove :: proc(self: ^ActionRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_action_row_get_subtitle")
    action_row_get_subtitle :: proc(self: ^ActionRow) -> cstring ---

    @(link_name = "adw_action_row_set_subtitle")
    action_row_set_subtitle :: proc(self: ^ActionRow, subtitle: cstring) ---

    @(link_name = "adw_action_row_get_icon_name")
    action_row_get_icon_name :: proc(self: ^ActionRow) -> cstring ---

    @(link_name = "adw_action_row_set_icon_name")
    action_row_set_icon_name :: proc(self: ^ActionRow, icon_name: cstring) ---

    @(link_name = "adw_action_row_get_activatable_widget")
    action_row_get_activatable_widget :: proc(self: ^ActionRow) -> ^gtk.Widget ---

    @(link_name = "adw_action_row_set_activatable_widget")
    action_row_set_activatable_widget :: proc(self: ^ActionRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_action_row_get_title_lines")
    action_row_get_title_lines :: proc(self: ^ActionRow) -> i32 ---

    @(link_name = "adw_action_row_set_title_lines")
    action_row_set_title_lines :: proc(self: ^ActionRow, title_lines: i32) ---

    @(link_name = "adw_action_row_get_subtitle_lines")
    action_row_get_subtitle_lines :: proc(self: ^ActionRow) -> i32 ---

    @(link_name = "adw_action_row_set_subtitle_lines")
    action_row_set_subtitle_lines :: proc(self: ^ActionRow, subtitle_lines: i32) ---

    @(link_name = "adw_action_row_get_subtitle_selectable")
    action_row_get_subtitle_selectable :: proc(self: ^ActionRow) -> glib.boolean ---

    @(link_name = "adw_action_row_set_subtitle_selectable")
    action_row_set_subtitle_selectable :: proc(self: ^ActionRow, subtitle_selectable: glib.boolean) ---

    @(link_name = "adw_action_row_activate")
    action_row_activate :: proc(self: ^ActionRow) ---

    @(link_name = "adw_alert_dialog_get_type")
    alert_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_alert_dialog_new")
    alert_dialog_new :: proc(heading: cstring, body: cstring) -> ^Dialog ---

    @(link_name = "adw_alert_dialog_get_heading")
    alert_dialog_get_heading :: proc(self: ^AlertDialog) -> cstring ---

    @(link_name = "adw_alert_dialog_set_heading")
    alert_dialog_set_heading :: proc(self: ^AlertDialog, heading: cstring) ---

    @(link_name = "adw_alert_dialog_get_heading_use_markup")
    alert_dialog_get_heading_use_markup :: proc(self: ^AlertDialog) -> glib.boolean ---

    @(link_name = "adw_alert_dialog_set_heading_use_markup")
    alert_dialog_set_heading_use_markup :: proc(self: ^AlertDialog, use_markup: glib.boolean) ---

    @(link_name = "adw_alert_dialog_format_heading")
    alert_dialog_format_heading :: proc(self: ^AlertDialog, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_alert_dialog_format_heading_markup")
    alert_dialog_format_heading_markup :: proc(self: ^AlertDialog, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_alert_dialog_get_body")
    alert_dialog_get_body :: proc(self: ^AlertDialog) -> cstring ---

    @(link_name = "adw_alert_dialog_set_body")
    alert_dialog_set_body :: proc(self: ^AlertDialog, body: cstring) ---

    @(link_name = "adw_alert_dialog_get_body_use_markup")
    alert_dialog_get_body_use_markup :: proc(self: ^AlertDialog) -> glib.boolean ---

    @(link_name = "adw_alert_dialog_set_body_use_markup")
    alert_dialog_set_body_use_markup :: proc(self: ^AlertDialog, use_markup: glib.boolean) ---

    @(link_name = "adw_alert_dialog_format_body")
    alert_dialog_format_body :: proc(self: ^AlertDialog, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_alert_dialog_format_body_markup")
    alert_dialog_format_body_markup :: proc(self: ^AlertDialog, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_alert_dialog_get_extra_child")
    alert_dialog_get_extra_child :: proc(self: ^AlertDialog) -> ^gtk.Widget ---

    @(link_name = "adw_alert_dialog_set_extra_child")
    alert_dialog_set_extra_child :: proc(self: ^AlertDialog, child: ^gtk.Widget) ---

    @(link_name = "adw_alert_dialog_get_prefer_wide_layout")
    alert_dialog_get_prefer_wide_layout :: proc(self: ^AlertDialog) -> glib.boolean ---

    @(link_name = "adw_alert_dialog_set_prefer_wide_layout")
    alert_dialog_set_prefer_wide_layout :: proc(self: ^AlertDialog, prefer_wide_layout: glib.boolean) ---

    @(link_name = "adw_alert_dialog_add_response")
    alert_dialog_add_response :: proc(self: ^AlertDialog, id: cstring, label: cstring) ---

    @(link_name = "adw_alert_dialog_add_responses")
    alert_dialog_add_responses :: proc(self: ^AlertDialog, first_id: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_alert_dialog_remove_response")
    alert_dialog_remove_response :: proc(self: ^AlertDialog, id: cstring) ---

    @(link_name = "adw_alert_dialog_get_response_label")
    alert_dialog_get_response_label :: proc(self: ^AlertDialog, response: cstring) -> cstring ---

    @(link_name = "adw_alert_dialog_set_response_label")
    alert_dialog_set_response_label :: proc(self: ^AlertDialog, response: cstring, label: cstring) ---

    @(link_name = "adw_alert_dialog_get_response_appearance")
    alert_dialog_get_response_appearance :: proc(self: ^AlertDialog, response: cstring) -> ResponseAppearance ---

    @(link_name = "adw_alert_dialog_set_response_appearance")
    alert_dialog_set_response_appearance :: proc(self: ^AlertDialog, response: cstring, appearance: ResponseAppearance) ---

    @(link_name = "adw_alert_dialog_get_response_enabled")
    alert_dialog_get_response_enabled :: proc(self: ^AlertDialog, response: cstring) -> glib.boolean ---

    @(link_name = "adw_alert_dialog_set_response_enabled")
    alert_dialog_set_response_enabled :: proc(self: ^AlertDialog, response: cstring, enabled: glib.boolean) ---

    @(link_name = "adw_alert_dialog_get_default_response")
    alert_dialog_get_default_response :: proc(self: ^AlertDialog) -> cstring ---

    @(link_name = "adw_alert_dialog_set_default_response")
    alert_dialog_set_default_response :: proc(self: ^AlertDialog, response: cstring) ---

    @(link_name = "adw_alert_dialog_get_close_response")
    alert_dialog_get_close_response :: proc(self: ^AlertDialog) -> cstring ---

    @(link_name = "adw_alert_dialog_set_close_response")
    alert_dialog_set_close_response :: proc(self: ^AlertDialog, response: cstring) ---

    @(link_name = "adw_alert_dialog_has_response")
    alert_dialog_has_response :: proc(self: ^AlertDialog, response: cstring) -> glib.boolean ---

    @(link_name = "adw_alert_dialog_choose")
    alert_dialog_choose :: proc(self: ^AlertDialog, parent: ^gtk.Widget, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "adw_alert_dialog_choose_finish")
    alert_dialog_choose_finish :: proc(self: ^AlertDialog, result: ^gio.AsyncResult) -> cstring ---

    @(link_name = "adw_animation_target_get_type")
    animation_target_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_callback_animation_target_get_type")
    callback_animation_target_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_callback_animation_target_new")
    callback_animation_target_new :: proc(callback: AnimationTargetFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) -> ^AnimationTarget ---

    @(link_name = "adw_property_animation_target_get_type")
    property_animation_target_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_property_animation_target_new")
    property_animation_target_new :: proc(object: ^gobj.Object, property_name: cstring) -> ^AnimationTarget ---

    @(link_name = "adw_property_animation_target_new_for_pspec")
    property_animation_target_new_for_pspec :: proc(object: ^gobj.Object, pspec: ^gobj.ParamSpec) -> ^AnimationTarget ---

    @(link_name = "adw_property_animation_target_get_object")
    property_animation_target_get_object :: proc(self: ^PropertyAnimationTarget) -> ^gobj.Object ---

    @(link_name = "adw_property_animation_target_get_pspec")
    property_animation_target_get_pspec :: proc(self: ^PropertyAnimationTarget) -> ^gobj.ParamSpec ---

    @(link_name = "adw_animation_get_type")
    animation_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_animation_get_widget")
    animation_get_widget :: proc(self: ^Animation) -> ^gtk.Widget ---

    @(link_name = "adw_animation_get_target")
    animation_get_target :: proc(self: ^Animation) -> ^AnimationTarget ---

    @(link_name = "adw_animation_set_target")
    animation_set_target :: proc(self: ^Animation, target: ^AnimationTarget) ---

    @(link_name = "adw_animation_get_value")
    animation_get_value :: proc(self: ^Animation) -> f64 ---

    @(link_name = "adw_animation_get_state")
    animation_get_state :: proc(self: ^Animation) -> AnimationState ---

    @(link_name = "adw_animation_play")
    animation_play :: proc(self: ^Animation) ---

    @(link_name = "adw_animation_pause")
    animation_pause :: proc(self: ^Animation) ---

    @(link_name = "adw_animation_resume")
    animation_resume :: proc(self: ^Animation) ---

    @(link_name = "adw_animation_reset")
    animation_reset :: proc(self: ^Animation) ---

    @(link_name = "adw_animation_skip")
    animation_skip :: proc(self: ^Animation) ---

    @(link_name = "adw_animation_get_follow_enable_animations_setting")
    animation_get_follow_enable_animations_setting :: proc(self: ^Animation) -> glib.boolean ---

    @(link_name = "adw_animation_set_follow_enable_animations_setting")
    animation_set_follow_enable_animations_setting :: proc(self: ^Animation, setting: glib.boolean) ---

    @(link_name = "adw_lerp")
    lerp :: proc(a: f64, b: f64, t: f64) -> f64 ---

    @(link_name = "adw_get_enable_animations")
    get_enable_animations :: proc(widget: ^gtk.Widget) -> glib.boolean ---

    @(link_name = "adw_style_manager_get_type")
    style_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_style_manager_get_default")
    style_manager_get_default :: proc() -> ^StyleManager ---

    @(link_name = "adw_style_manager_get_for_display")
    style_manager_get_for_display :: proc(display: ^gtk.Display) -> ^StyleManager ---

    @(link_name = "adw_style_manager_get_display")
    style_manager_get_display :: proc(self: ^StyleManager) -> ^gtk.Display ---

    @(link_name = "adw_style_manager_get_color_scheme")
    style_manager_get_color_scheme :: proc(self: ^StyleManager) -> ColorScheme ---

    @(link_name = "adw_style_manager_set_color_scheme")
    style_manager_set_color_scheme :: proc(self: ^StyleManager, color_scheme: ColorScheme) ---

    @(link_name = "adw_style_manager_get_system_supports_color_schemes")
    style_manager_get_system_supports_color_schemes :: proc(self: ^StyleManager) -> glib.boolean ---

    @(link_name = "adw_style_manager_get_dark")
    style_manager_get_dark :: proc(self: ^StyleManager) -> glib.boolean ---

    @(link_name = "adw_style_manager_get_high_contrast")
    style_manager_get_high_contrast :: proc(self: ^StyleManager) -> glib.boolean ---

    @(link_name = "adw_style_manager_get_system_supports_accent_colors")
    style_manager_get_system_supports_accent_colors :: proc(self: ^StyleManager) -> glib.boolean ---

    @(link_name = "adw_style_manager_get_accent_color")
    style_manager_get_accent_color :: proc(self: ^StyleManager) -> AccentColor ---

    @(link_name = "adw_style_manager_get_accent_color_rgba")
    style_manager_get_accent_color_rgba :: proc(self: ^StyleManager) -> ^gtk.RGBA ---

    @(link_name = "adw_style_manager_get_document_font_name")
    style_manager_get_document_font_name :: proc(self: ^StyleManager) -> cstring ---

    @(link_name = "adw_style_manager_get_monospace_font_name")
    style_manager_get_monospace_font_name :: proc(self: ^StyleManager) -> cstring ---

    @(link_name = "adw_application_get_type")
    application_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_application_new")
    application_new :: proc(application_id: cstring, flags: gio.ApplicationFlags) -> ^Application ---

    @(link_name = "adw_application_get_style_manager")
    application_get_style_manager :: proc(self: ^Application) -> ^StyleManager ---

    @(link_name = "adw_application_window_get_type")
    application_window_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_application_window_new")
    application_window_new :: proc(app: ^gtk.Application) -> ^gtk.Widget ---

    @(link_name = "adw_application_window_set_content")
    application_window_set_content :: proc(self: ^ApplicationWindow, content: ^gtk.Widget) ---

    @(link_name = "adw_application_window_get_content")
    application_window_get_content :: proc(self: ^ApplicationWindow) -> ^gtk.Widget ---

    @(link_name = "adw_application_window_add_breakpoint")
    application_window_add_breakpoint :: proc(self: ^ApplicationWindow, breakpoint: ^Breakpoint) ---

    @(link_name = "adw_application_window_get_current_breakpoint")
    application_window_get_current_breakpoint :: proc(self: ^ApplicationWindow) -> ^Breakpoint ---

    @(link_name = "adw_application_window_get_dialogs")
    application_window_get_dialogs :: proc(self: ^ApplicationWindow) -> ^gio.ListModel ---

    @(link_name = "adw_application_window_get_visible_dialog")
    application_window_get_visible_dialog :: proc(self: ^ApplicationWindow) -> ^Dialog ---

    @(link_name = "adw_application_window_get_adaptive_preview")
    application_window_get_adaptive_preview :: proc(self: ^ApplicationWindow) -> glib.boolean ---

    @(link_name = "adw_application_window_set_adaptive_preview")
    application_window_set_adaptive_preview :: proc(self: ^ApplicationWindow, adaptive_preview: glib.boolean) ---

    @(link_name = "adw_avatar_get_type")
    avatar_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_avatar_new")
    avatar_new :: proc(size_p: i32, text: cstring, show_initials: glib.boolean) -> ^gtk.Widget ---

    @(link_name = "adw_avatar_get_icon_name")
    avatar_get_icon_name :: proc(self: ^Avatar) -> cstring ---

    @(link_name = "adw_avatar_set_icon_name")
    avatar_set_icon_name :: proc(self: ^Avatar, icon_name: cstring) ---

    @(link_name = "adw_avatar_get_text")
    avatar_get_text :: proc(self: ^Avatar) -> cstring ---

    @(link_name = "adw_avatar_set_text")
    avatar_set_text :: proc(self: ^Avatar, text: cstring) ---

    @(link_name = "adw_avatar_get_show_initials")
    avatar_get_show_initials :: proc(self: ^Avatar) -> glib.boolean ---

    @(link_name = "adw_avatar_set_show_initials")
    avatar_set_show_initials :: proc(self: ^Avatar, show_initials: glib.boolean) ---

    @(link_name = "adw_avatar_get_custom_image")
    avatar_get_custom_image :: proc(self: ^Avatar) -> ^gtk.Paintable ---

    @(link_name = "adw_avatar_set_custom_image")
    avatar_set_custom_image :: proc(self: ^Avatar, custom_image: ^gtk.Paintable) ---

    @(link_name = "adw_avatar_get_size")
    avatar_get_size :: proc(self: ^Avatar) -> i32 ---

    @(link_name = "adw_avatar_set_size")
    avatar_set_size :: proc(self: ^Avatar, size_p: i32) ---

    @(link_name = "adw_avatar_draw_to_texture")
    avatar_draw_to_texture :: proc(self: ^Avatar, scale_factor: i32) -> ^gtk.Texture ---

    @(link_name = "adw_banner_get_type")
    banner_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_banner_new")
    banner_new :: proc(title: cstring) -> ^gtk.Widget ---

    @(link_name = "adw_banner_get_title")
    banner_get_title :: proc(self: ^Banner) -> cstring ---

    @(link_name = "adw_banner_set_title")
    banner_set_title :: proc(self: ^Banner, title: cstring) ---

    @(link_name = "adw_banner_get_button_label")
    banner_get_button_label :: proc(self: ^Banner) -> cstring ---

    @(link_name = "adw_banner_set_button_label")
    banner_set_button_label :: proc(self: ^Banner, label: cstring) ---

    @(link_name = "adw_banner_get_revealed")
    banner_get_revealed :: proc(self: ^Banner) -> glib.boolean ---

    @(link_name = "adw_banner_set_revealed")
    banner_set_revealed :: proc(self: ^Banner, revealed: glib.boolean) ---

    @(link_name = "adw_banner_get_use_markup")
    banner_get_use_markup :: proc(self: ^Banner) -> glib.boolean ---

    @(link_name = "adw_banner_set_use_markup")
    banner_set_use_markup :: proc(self: ^Banner, use_markup: glib.boolean) ---

    @(link_name = "adw_banner_get_button_style")
    banner_get_button_style :: proc(self: ^Banner) -> BannerButtonStyle ---

    @(link_name = "adw_banner_set_button_style")
    banner_set_button_style :: proc(self: ^Banner, style: BannerButtonStyle) ---

    @(link_name = "adw_bin_get_type")
    bin_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_bin_new")
    bin_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_bin_get_child")
    bin_get_child :: proc(self: ^Bin) -> ^gtk.Widget ---

    @(link_name = "adw_bin_set_child")
    bin_set_child :: proc(self: ^Bin, child: ^gtk.Widget) ---

    @(link_name = "adw_bottom_sheet_get_type")
    bottom_sheet_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_bottom_sheet_new")
    bottom_sheet_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_bottom_sheet_get_content")
    bottom_sheet_get_content :: proc(self: ^BottomSheet) -> ^gtk.Widget ---

    @(link_name = "adw_bottom_sheet_set_content")
    bottom_sheet_set_content :: proc(self: ^BottomSheet, content: ^gtk.Widget) ---

    @(link_name = "adw_bottom_sheet_get_sheet")
    bottom_sheet_get_sheet :: proc(self: ^BottomSheet) -> ^gtk.Widget ---

    @(link_name = "adw_bottom_sheet_set_sheet")
    bottom_sheet_set_sheet :: proc(self: ^BottomSheet, sheet: ^gtk.Widget) ---

    @(link_name = "adw_bottom_sheet_get_bottom_bar")
    bottom_sheet_get_bottom_bar :: proc(self: ^BottomSheet) -> ^gtk.Widget ---

    @(link_name = "adw_bottom_sheet_set_bottom_bar")
    bottom_sheet_set_bottom_bar :: proc(self: ^BottomSheet, bottom_bar: ^gtk.Widget) ---

    @(link_name = "adw_bottom_sheet_get_open")
    bottom_sheet_get_open :: proc(self: ^BottomSheet) -> glib.boolean ---

    @(link_name = "adw_bottom_sheet_set_open")
    bottom_sheet_set_open :: proc(self: ^BottomSheet, open: glib.boolean) ---

    @(link_name = "adw_bottom_sheet_get_align")
    bottom_sheet_get_align :: proc(self: ^BottomSheet) -> f32 ---

    @(link_name = "adw_bottom_sheet_set_align")
    bottom_sheet_set_align :: proc(self: ^BottomSheet, align: f32) ---

    @(link_name = "adw_bottom_sheet_get_full_width")
    bottom_sheet_get_full_width :: proc(self: ^BottomSheet) -> glib.boolean ---

    @(link_name = "adw_bottom_sheet_set_full_width")
    bottom_sheet_set_full_width :: proc(self: ^BottomSheet, full_width: glib.boolean) ---

    @(link_name = "adw_bottom_sheet_get_show_drag_handle")
    bottom_sheet_get_show_drag_handle :: proc(self: ^BottomSheet) -> glib.boolean ---

    @(link_name = "adw_bottom_sheet_set_show_drag_handle")
    bottom_sheet_set_show_drag_handle :: proc(self: ^BottomSheet, show_drag_handle: glib.boolean) ---

    @(link_name = "adw_bottom_sheet_get_modal")
    bottom_sheet_get_modal :: proc(self: ^BottomSheet) -> glib.boolean ---

    @(link_name = "adw_bottom_sheet_set_modal")
    bottom_sheet_set_modal :: proc(self: ^BottomSheet, modal: glib.boolean) ---

    @(link_name = "adw_bottom_sheet_get_can_open")
    bottom_sheet_get_can_open :: proc(self: ^BottomSheet) -> glib.boolean ---

    @(link_name = "adw_bottom_sheet_set_can_open")
    bottom_sheet_set_can_open :: proc(self: ^BottomSheet, can_open: glib.boolean) ---

    @(link_name = "adw_bottom_sheet_get_can_close")
    bottom_sheet_get_can_close :: proc(self: ^BottomSheet) -> glib.boolean ---

    @(link_name = "adw_bottom_sheet_set_can_close")
    bottom_sheet_set_can_close :: proc(self: ^BottomSheet, can_close: glib.boolean) ---

    @(link_name = "adw_bottom_sheet_get_sheet_height")
    bottom_sheet_get_sheet_height :: proc(self: ^BottomSheet) -> i32 ---

    @(link_name = "adw_bottom_sheet_get_bottom_bar_height")
    bottom_sheet_get_bottom_bar_height :: proc(self: ^BottomSheet) -> i32 ---

    @(link_name = "adw_bottom_sheet_get_reveal_bottom_bar")
    bottom_sheet_get_reveal_bottom_bar :: proc(self: ^BottomSheet) -> glib.boolean ---

    @(link_name = "adw_bottom_sheet_set_reveal_bottom_bar")
    bottom_sheet_set_reveal_bottom_bar :: proc(self: ^BottomSheet, reveal: glib.boolean) ---

    @(link_name = "adw_breakpoint_bin_get_type")
    breakpoint_bin_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_breakpoint_bin_new")
    breakpoint_bin_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_breakpoint_bin_get_child")
    breakpoint_bin_get_child :: proc(self: ^BreakpointBin) -> ^gtk.Widget ---

    @(link_name = "adw_breakpoint_bin_set_child")
    breakpoint_bin_set_child :: proc(self: ^BreakpointBin, child: ^gtk.Widget) ---

    @(link_name = "adw_breakpoint_bin_add_breakpoint")
    breakpoint_bin_add_breakpoint :: proc(self: ^BreakpointBin, breakpoint: ^Breakpoint) ---

    @(link_name = "adw_breakpoint_bin_remove_breakpoint")
    breakpoint_bin_remove_breakpoint :: proc(self: ^BreakpointBin, breakpoint: ^Breakpoint) ---

    @(link_name = "adw_breakpoint_bin_get_current_breakpoint")
    breakpoint_bin_get_current_breakpoint :: proc(self: ^BreakpointBin) -> ^Breakpoint ---

    @(link_name = "adw_button_content_get_type")
    button_content_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_button_content_new")
    button_content_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_button_content_get_label")
    button_content_get_label :: proc(self: ^ButtonContent) -> cstring ---

    @(link_name = "adw_button_content_set_label")
    button_content_set_label :: proc(self: ^ButtonContent, label: cstring) ---

    @(link_name = "adw_button_content_get_icon_name")
    button_content_get_icon_name :: proc(self: ^ButtonContent) -> cstring ---

    @(link_name = "adw_button_content_set_icon_name")
    button_content_set_icon_name :: proc(self: ^ButtonContent, icon_name: cstring) ---

    @(link_name = "adw_button_content_get_use_underline")
    button_content_get_use_underline :: proc(self: ^ButtonContent) -> glib.boolean ---

    @(link_name = "adw_button_content_set_use_underline")
    button_content_set_use_underline :: proc(self: ^ButtonContent, use_underline: glib.boolean) ---

    @(link_name = "adw_button_content_get_can_shrink")
    button_content_get_can_shrink :: proc(self: ^ButtonContent) -> glib.boolean ---

    @(link_name = "adw_button_content_set_can_shrink")
    button_content_set_can_shrink :: proc(self: ^ButtonContent, can_shrink: glib.boolean) ---

    @(link_name = "adw_button_row_get_type")
    button_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_button_row_new")
    button_row_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_button_row_get_start_icon_name")
    button_row_get_start_icon_name :: proc(self: ^ButtonRow) -> cstring ---

    @(link_name = "adw_button_row_set_start_icon_name")
    button_row_set_start_icon_name :: proc(self: ^ButtonRow, icon_name: cstring) ---

    @(link_name = "adw_button_row_get_end_icon_name")
    button_row_get_end_icon_name :: proc(self: ^ButtonRow) -> cstring ---

    @(link_name = "adw_button_row_set_end_icon_name")
    button_row_set_end_icon_name :: proc(self: ^ButtonRow, icon_name: cstring) ---

    @(link_name = "adw_spring_params_get_type")
    spring_params_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_spring_params_new")
    spring_params_new :: proc(damping_ratio: f64, mass: f64, stiffness: f64) -> ^SpringParams ---

    @(link_name = "adw_spring_params_new_full")
    spring_params_new_full :: proc(damping: f64, mass: f64, stiffness: f64) -> ^SpringParams ---

    @(link_name = "adw_spring_params_ref")
    spring_params_ref :: proc(self: ^SpringParams) -> ^SpringParams ---

    @(link_name = "adw_spring_params_unref")
    spring_params_unref :: proc(self: ^SpringParams) ---

    @(link_name = "adw_spring_params_get_damping")
    spring_params_get_damping :: proc(self: ^SpringParams) -> f64 ---

    @(link_name = "adw_spring_params_get_damping_ratio")
    spring_params_get_damping_ratio :: proc(self: ^SpringParams) -> f64 ---

    @(link_name = "adw_spring_params_get_mass")
    spring_params_get_mass :: proc(self: ^SpringParams) -> f64 ---

    @(link_name = "adw_spring_params_get_stiffness")
    spring_params_get_stiffness :: proc(self: ^SpringParams) -> f64 ---

    @(link_name = "adw_carousel_get_type")
    carousel_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_carousel_new")
    carousel_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_carousel_prepend")
    carousel_prepend :: proc(self: ^Carousel, child: ^gtk.Widget) ---

    @(link_name = "adw_carousel_append")
    carousel_append :: proc(self: ^Carousel, child: ^gtk.Widget) ---

    @(link_name = "adw_carousel_insert")
    carousel_insert :: proc(self: ^Carousel, child: ^gtk.Widget, position: i32) ---

    @(link_name = "adw_carousel_reorder")
    carousel_reorder :: proc(self: ^Carousel, child: ^gtk.Widget, position: i32) ---

    @(link_name = "adw_carousel_remove")
    carousel_remove :: proc(self: ^Carousel, child: ^gtk.Widget) ---

    @(link_name = "adw_carousel_scroll_to")
    carousel_scroll_to :: proc(self: ^Carousel, widget: ^gtk.Widget, animate: glib.boolean) ---

    @(link_name = "adw_carousel_get_nth_page")
    carousel_get_nth_page :: proc(self: ^Carousel, n: glib.uint_) -> ^gtk.Widget ---

    @(link_name = "adw_carousel_get_n_pages")
    carousel_get_n_pages :: proc(self: ^Carousel) -> glib.uint_ ---

    @(link_name = "adw_carousel_get_position")
    carousel_get_position :: proc(self: ^Carousel) -> f64 ---

    @(link_name = "adw_carousel_get_interactive")
    carousel_get_interactive :: proc(self: ^Carousel) -> glib.boolean ---

    @(link_name = "adw_carousel_set_interactive")
    carousel_set_interactive :: proc(self: ^Carousel, interactive: glib.boolean) ---

    @(link_name = "adw_carousel_get_spacing")
    carousel_get_spacing :: proc(self: ^Carousel) -> glib.uint_ ---

    @(link_name = "adw_carousel_set_spacing")
    carousel_set_spacing :: proc(self: ^Carousel, spacing: glib.uint_) ---

    @(link_name = "adw_carousel_get_scroll_params")
    carousel_get_scroll_params :: proc(self: ^Carousel) -> ^SpringParams ---

    @(link_name = "adw_carousel_set_scroll_params")
    carousel_set_scroll_params :: proc(self: ^Carousel, params: [^]SpringParams) ---

    @(link_name = "adw_carousel_get_allow_mouse_drag")
    carousel_get_allow_mouse_drag :: proc(self: ^Carousel) -> glib.boolean ---

    @(link_name = "adw_carousel_set_allow_mouse_drag")
    carousel_set_allow_mouse_drag :: proc(self: ^Carousel, allow_mouse_drag: glib.boolean) ---

    @(link_name = "adw_carousel_get_allow_scroll_wheel")
    carousel_get_allow_scroll_wheel :: proc(self: ^Carousel) -> glib.boolean ---

    @(link_name = "adw_carousel_set_allow_scroll_wheel")
    carousel_set_allow_scroll_wheel :: proc(self: ^Carousel, allow_scroll_wheel: glib.boolean) ---

    @(link_name = "adw_carousel_get_allow_long_swipes")
    carousel_get_allow_long_swipes :: proc(self: ^Carousel) -> glib.boolean ---

    @(link_name = "adw_carousel_set_allow_long_swipes")
    carousel_set_allow_long_swipes :: proc(self: ^Carousel, allow_long_swipes: glib.boolean) ---

    @(link_name = "adw_carousel_get_reveal_duration")
    carousel_get_reveal_duration :: proc(self: ^Carousel) -> glib.uint_ ---

    @(link_name = "adw_carousel_set_reveal_duration")
    carousel_set_reveal_duration :: proc(self: ^Carousel, reveal_duration: glib.uint_) ---

    @(link_name = "adw_carousel_indicator_dots_get_type")
    carousel_indicator_dots_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_carousel_indicator_dots_new")
    carousel_indicator_dots_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_carousel_indicator_dots_get_carousel")
    carousel_indicator_dots_get_carousel :: proc(self: ^CarouselIndicatorDots) -> ^Carousel ---

    @(link_name = "adw_carousel_indicator_dots_set_carousel")
    carousel_indicator_dots_set_carousel :: proc(self: ^CarouselIndicatorDots, carousel: ^Carousel) ---

    @(link_name = "adw_carousel_indicator_lines_get_type")
    carousel_indicator_lines_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_carousel_indicator_lines_new")
    carousel_indicator_lines_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_carousel_indicator_lines_get_carousel")
    carousel_indicator_lines_get_carousel :: proc(self: ^CarouselIndicatorLines) -> ^Carousel ---

    @(link_name = "adw_carousel_indicator_lines_set_carousel")
    carousel_indicator_lines_set_carousel :: proc(self: ^CarouselIndicatorLines, carousel: ^Carousel) ---

    @(link_name = "adw_clamp_get_type")
    clamp_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_clamp_new")
    clamp_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_clamp_get_child")
    clamp_get_child :: proc(self: ^Clamp) -> ^gtk.Widget ---

    @(link_name = "adw_clamp_set_child")
    clamp_set_child :: proc(self: ^Clamp, child: ^gtk.Widget) ---

    @(link_name = "adw_clamp_get_maximum_size")
    clamp_get_maximum_size :: proc(self: ^Clamp) -> i32 ---

    @(link_name = "adw_clamp_set_maximum_size")
    clamp_set_maximum_size :: proc(self: ^Clamp, maximum_size: i32) ---

    @(link_name = "adw_clamp_get_tightening_threshold")
    clamp_get_tightening_threshold :: proc(self: ^Clamp) -> i32 ---

    @(link_name = "adw_clamp_set_tightening_threshold")
    clamp_set_tightening_threshold :: proc(self: ^Clamp, tightening_threshold: i32) ---

    @(link_name = "adw_clamp_get_unit")
    clamp_get_unit :: proc(self: ^Clamp) -> LengthUnit ---

    @(link_name = "adw_clamp_set_unit")
    clamp_set_unit :: proc(self: ^Clamp, unit: LengthUnit) ---

    @(link_name = "adw_clamp_layout_get_type")
    clamp_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_clamp_layout_new")
    clamp_layout_new :: proc() -> ^gtk.LayoutManager ---

    @(link_name = "adw_clamp_layout_get_maximum_size")
    clamp_layout_get_maximum_size :: proc(self: ^ClampLayout) -> i32 ---

    @(link_name = "adw_clamp_layout_set_maximum_size")
    clamp_layout_set_maximum_size :: proc(self: ^ClampLayout, maximum_size: i32) ---

    @(link_name = "adw_clamp_layout_get_tightening_threshold")
    clamp_layout_get_tightening_threshold :: proc(self: ^ClampLayout) -> i32 ---

    @(link_name = "adw_clamp_layout_set_tightening_threshold")
    clamp_layout_set_tightening_threshold :: proc(self: ^ClampLayout, tightening_threshold: i32) ---

    @(link_name = "adw_clamp_layout_get_unit")
    clamp_layout_get_unit :: proc(self: ^ClampLayout) -> LengthUnit ---

    @(link_name = "adw_clamp_layout_set_unit")
    clamp_layout_set_unit :: proc(self: ^ClampLayout, unit: LengthUnit) ---

    @(link_name = "adw_clamp_scrollable_get_type")
    clamp_scrollable_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_clamp_scrollable_new")
    clamp_scrollable_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_clamp_scrollable_get_child")
    clamp_scrollable_get_child :: proc(self: ^ClampScrollable) -> ^gtk.Widget ---

    @(link_name = "adw_clamp_scrollable_set_child")
    clamp_scrollable_set_child :: proc(self: ^ClampScrollable, child: ^gtk.Widget) ---

    @(link_name = "adw_clamp_scrollable_get_maximum_size")
    clamp_scrollable_get_maximum_size :: proc(self: ^ClampScrollable) -> i32 ---

    @(link_name = "adw_clamp_scrollable_set_maximum_size")
    clamp_scrollable_set_maximum_size :: proc(self: ^ClampScrollable, maximum_size: i32) ---

    @(link_name = "adw_clamp_scrollable_get_tightening_threshold")
    clamp_scrollable_get_tightening_threshold :: proc(self: ^ClampScrollable) -> i32 ---

    @(link_name = "adw_clamp_scrollable_set_tightening_threshold")
    clamp_scrollable_set_tightening_threshold :: proc(self: ^ClampScrollable, tightening_threshold: i32) ---

    @(link_name = "adw_clamp_scrollable_get_unit")
    clamp_scrollable_get_unit :: proc(self: ^ClampScrollable) -> LengthUnit ---

    @(link_name = "adw_clamp_scrollable_set_unit")
    clamp_scrollable_set_unit :: proc(self: ^ClampScrollable, unit: LengthUnit) ---

    @(link_name = "adw_combo_row_get_type")
    combo_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_combo_row_new")
    combo_row_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_combo_row_get_model")
    combo_row_get_model :: proc(self: ^ComboRow) -> ^gio.ListModel ---

    @(link_name = "adw_combo_row_set_model")
    combo_row_set_model :: proc(self: ^ComboRow, model: ^gio.ListModel) ---

    @(link_name = "adw_combo_row_get_selected")
    combo_row_get_selected :: proc(self: ^ComboRow) -> glib.uint_ ---

    @(link_name = "adw_combo_row_set_selected")
    combo_row_set_selected :: proc(self: ^ComboRow, position: glib.uint_) ---

    @(link_name = "adw_combo_row_get_selected_item")
    combo_row_get_selected_item :: proc(self: ^ComboRow) -> glib.pointer ---

    @(link_name = "adw_combo_row_get_factory")
    combo_row_get_factory :: proc(self: ^ComboRow) -> ^gtk.ListItemFactory ---

    @(link_name = "adw_combo_row_set_factory")
    combo_row_set_factory :: proc(self: ^ComboRow, factory: ^gtk.ListItemFactory) ---

    @(link_name = "adw_combo_row_get_header_factory")
    combo_row_get_header_factory :: proc(self: ^ComboRow) -> ^gtk.ListItemFactory ---

    @(link_name = "adw_combo_row_set_header_factory")
    combo_row_set_header_factory :: proc(self: ^ComboRow, factory: ^gtk.ListItemFactory) ---

    @(link_name = "adw_combo_row_get_list_factory")
    combo_row_get_list_factory :: proc(self: ^ComboRow) -> ^gtk.ListItemFactory ---

    @(link_name = "adw_combo_row_set_list_factory")
    combo_row_set_list_factory :: proc(self: ^ComboRow, factory: ^gtk.ListItemFactory) ---

    @(link_name = "adw_combo_row_get_expression")
    combo_row_get_expression :: proc(self: ^ComboRow) -> ^gtk.Expression ---

    @(link_name = "adw_combo_row_set_expression")
    combo_row_set_expression :: proc(self: ^ComboRow, expression: ^gtk.Expression) ---

    @(link_name = "adw_combo_row_get_use_subtitle")
    combo_row_get_use_subtitle :: proc(self: ^ComboRow) -> glib.boolean ---

    @(link_name = "adw_combo_row_set_use_subtitle")
    combo_row_set_use_subtitle :: proc(self: ^ComboRow, use_subtitle: glib.boolean) ---

    @(link_name = "adw_combo_row_get_enable_search")
    combo_row_get_enable_search :: proc(self: ^ComboRow) -> glib.boolean ---

    @(link_name = "adw_combo_row_set_enable_search")
    combo_row_set_enable_search :: proc(self: ^ComboRow, enable_search: glib.boolean) ---

    @(link_name = "adw_combo_row_set_search_match_mode")
    combo_row_set_search_match_mode :: proc(self: ^ComboRow, search_match_mode: gtk.StringFilterMatchMode) ---

    @(link_name = "adw_combo_row_get_search_match_mode")
    combo_row_get_search_match_mode :: proc(self: ^ComboRow) -> gtk.StringFilterMatchMode ---

    @(link_name = "adw_easing_ease")
    easing_ease :: proc(self: Easing, value: f64) -> f64 ---

    @(link_name = "adw_entry_row_get_type")
    entry_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_entry_row_new")
    entry_row_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_entry_row_add_prefix")
    entry_row_add_prefix :: proc(self: ^EntryRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_entry_row_add_suffix")
    entry_row_add_suffix :: proc(self: ^EntryRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_entry_row_remove")
    entry_row_remove :: proc(self: ^EntryRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_entry_row_get_show_apply_button")
    entry_row_get_show_apply_button :: proc(self: ^EntryRow) -> glib.boolean ---

    @(link_name = "adw_entry_row_set_show_apply_button")
    entry_row_set_show_apply_button :: proc(self: ^EntryRow, show_apply_button: glib.boolean) ---

    @(link_name = "adw_entry_row_get_input_hints")
    entry_row_get_input_hints :: proc(self: ^EntryRow) -> gtk.InputHints ---

    @(link_name = "adw_entry_row_set_input_hints")
    entry_row_set_input_hints :: proc(self: ^EntryRow, hints: gtk.InputHints) ---

    @(link_name = "adw_entry_row_get_input_purpose")
    entry_row_get_input_purpose :: proc(self: ^EntryRow) -> gtk.InputPurpose ---

    @(link_name = "adw_entry_row_set_input_purpose")
    entry_row_set_input_purpose :: proc(self: ^EntryRow, purpose: gtk.InputPurpose) ---

    @(link_name = "adw_entry_row_get_enable_emoji_completion")
    entry_row_get_enable_emoji_completion :: proc(self: ^EntryRow) -> glib.boolean ---

    @(link_name = "adw_entry_row_set_enable_emoji_completion")
    entry_row_set_enable_emoji_completion :: proc(self: ^EntryRow, enable_emoji_completion: glib.boolean) ---

    @(link_name = "adw_entry_row_get_attributes")
    entry_row_get_attributes :: proc(self: ^EntryRow) -> ^pango.AttrList ---

    @(link_name = "adw_entry_row_set_attributes")
    entry_row_set_attributes :: proc(self: ^EntryRow, attributes: [^]pango.AttrList) ---

    @(link_name = "adw_entry_row_get_activates_default")
    entry_row_get_activates_default :: proc(self: ^EntryRow) -> glib.boolean ---

    @(link_name = "adw_entry_row_set_activates_default")
    entry_row_set_activates_default :: proc(self: ^EntryRow, activates: glib.boolean) ---

    @(link_name = "adw_entry_row_get_text_length")
    entry_row_get_text_length :: proc(self: ^EntryRow) -> glib.uint_ ---

    @(link_name = "adw_entry_row_get_max_length")
    entry_row_get_max_length :: proc(self: ^EntryRow) -> i32 ---

    @(link_name = "adw_entry_row_set_max_length")
    entry_row_set_max_length :: proc(self: ^EntryRow, max_length: i32) ---

    @(link_name = "adw_entry_row_grab_focus_without_selecting")
    entry_row_grab_focus_without_selecting :: proc(self: ^EntryRow) -> glib.boolean ---

    @(link_name = "adw_enum_list_item_get_type")
    enum_list_item_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_enum_list_item_get_value")
    enum_list_item_get_value :: proc(self: ^EnumListItem) -> i32 ---

    @(link_name = "adw_enum_list_item_get_name")
    enum_list_item_get_name :: proc(self: ^EnumListItem) -> cstring ---

    @(link_name = "adw_enum_list_item_get_nick")
    enum_list_item_get_nick :: proc(self: ^EnumListItem) -> cstring ---

    @(link_name = "adw_enum_list_model_get_type")
    enum_list_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_enum_list_model_new")
    enum_list_model_new :: proc(enum_type: gobj.Type) -> ^EnumListModel ---

    @(link_name = "adw_enum_list_model_get_enum_type")
    enum_list_model_get_enum_type :: proc(self: ^EnumListModel) -> gobj.Type ---

    @(link_name = "adw_enum_list_model_find_position")
    enum_list_model_find_position :: proc(self: ^EnumListModel, value: i32) -> glib.uint_ ---

    @(link_name = "adw_expander_row_get_type")
    expander_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_expander_row_new")
    expander_row_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_expander_row_add_action")
    expander_row_add_action :: proc(self: ^ExpanderRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_expander_row_add_prefix")
    expander_row_add_prefix :: proc(self: ^ExpanderRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_expander_row_add_suffix")
    expander_row_add_suffix :: proc(self: ^ExpanderRow, widget: ^gtk.Widget) ---

    @(link_name = "adw_expander_row_add_row")
    expander_row_add_row :: proc(self: ^ExpanderRow, child: ^gtk.Widget) ---

    @(link_name = "adw_expander_row_remove")
    expander_row_remove :: proc(self: ^ExpanderRow, child: ^gtk.Widget) ---

    @(link_name = "adw_expander_row_get_subtitle")
    expander_row_get_subtitle :: proc(self: ^ExpanderRow) -> cstring ---

    @(link_name = "adw_expander_row_set_subtitle")
    expander_row_set_subtitle :: proc(self: ^ExpanderRow, subtitle: cstring) ---

    @(link_name = "adw_expander_row_get_icon_name")
    expander_row_get_icon_name :: proc(self: ^ExpanderRow) -> cstring ---

    @(link_name = "adw_expander_row_set_icon_name")
    expander_row_set_icon_name :: proc(self: ^ExpanderRow, icon_name: cstring) ---

    @(link_name = "adw_expander_row_get_expanded")
    expander_row_get_expanded :: proc(self: ^ExpanderRow) -> glib.boolean ---

    @(link_name = "adw_expander_row_set_expanded")
    expander_row_set_expanded :: proc(self: ^ExpanderRow, expanded: glib.boolean) ---

    @(link_name = "adw_expander_row_get_enable_expansion")
    expander_row_get_enable_expansion :: proc(self: ^ExpanderRow) -> glib.boolean ---

    @(link_name = "adw_expander_row_set_enable_expansion")
    expander_row_set_enable_expansion :: proc(self: ^ExpanderRow, enable_expansion: glib.boolean) ---

    @(link_name = "adw_expander_row_get_show_enable_switch")
    expander_row_get_show_enable_switch :: proc(self: ^ExpanderRow) -> glib.boolean ---

    @(link_name = "adw_expander_row_set_show_enable_switch")
    expander_row_set_show_enable_switch :: proc(self: ^ExpanderRow, show_enable_switch: glib.boolean) ---

    @(link_name = "adw_expander_row_get_title_lines")
    expander_row_get_title_lines :: proc(self: ^ExpanderRow) -> i32 ---

    @(link_name = "adw_expander_row_set_title_lines")
    expander_row_set_title_lines :: proc(self: ^ExpanderRow, title_lines: i32) ---

    @(link_name = "adw_expander_row_get_subtitle_lines")
    expander_row_get_subtitle_lines :: proc(self: ^ExpanderRow) -> i32 ---

    @(link_name = "adw_expander_row_set_subtitle_lines")
    expander_row_set_subtitle_lines :: proc(self: ^ExpanderRow, subtitle_lines: i32) ---

    @(link_name = "adw_flap_get_type")
    flap_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_flap_new")
    flap_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_flap_get_content")
    flap_get_content :: proc(self: ^Flap) -> ^gtk.Widget ---

    @(link_name = "adw_flap_set_content")
    flap_set_content :: proc(self: ^Flap, content: ^gtk.Widget) ---

    @(link_name = "adw_flap_get_flap")
    flap_get_flap :: proc(self: ^Flap) -> ^gtk.Widget ---

    @(link_name = "adw_flap_set_flap")
    flap_set_flap :: proc(self: ^Flap, flap: ^gtk.Widget) ---

    @(link_name = "adw_flap_get_separator")
    flap_get_separator :: proc(self: ^Flap) -> ^gtk.Widget ---

    @(link_name = "adw_flap_set_separator")
    flap_set_separator :: proc(self: ^Flap, separator: ^gtk.Widget) ---

    @(link_name = "adw_flap_get_flap_position")
    flap_get_flap_position :: proc(self: ^Flap) -> gtk.PackType ---

    @(link_name = "adw_flap_set_flap_position")
    flap_set_flap_position :: proc(self: ^Flap, position: gtk.PackType) ---

    @(link_name = "adw_flap_get_reveal_flap")
    flap_get_reveal_flap :: proc(self: ^Flap) -> glib.boolean ---

    @(link_name = "adw_flap_set_reveal_flap")
    flap_set_reveal_flap :: proc(self: ^Flap, reveal_flap: glib.boolean) ---

    @(link_name = "adw_flap_get_reveal_params")
    flap_get_reveal_params :: proc(self: ^Flap) -> ^SpringParams ---

    @(link_name = "adw_flap_set_reveal_params")
    flap_set_reveal_params :: proc(self: ^Flap, params: [^]SpringParams) ---

    @(link_name = "adw_flap_get_reveal_progress")
    flap_get_reveal_progress :: proc(self: ^Flap) -> f64 ---

    @(link_name = "adw_flap_get_fold_policy")
    flap_get_fold_policy :: proc(self: ^Flap) -> FlapFoldPolicy ---

    @(link_name = "adw_flap_set_fold_policy")
    flap_set_fold_policy :: proc(self: ^Flap, policy: FlapFoldPolicy) ---

    @(link_name = "adw_flap_get_fold_threshold_policy")
    flap_get_fold_threshold_policy :: proc(self: ^Flap) -> FoldThresholdPolicy ---

    @(link_name = "adw_flap_set_fold_threshold_policy")
    flap_set_fold_threshold_policy :: proc(self: ^Flap, policy: FoldThresholdPolicy) ---

    @(link_name = "adw_flap_get_fold_duration")
    flap_get_fold_duration :: proc(self: ^Flap) -> glib.uint_ ---

    @(link_name = "adw_flap_set_fold_duration")
    flap_set_fold_duration :: proc(self: ^Flap, duration: glib.uint_) ---

    @(link_name = "adw_flap_get_folded")
    flap_get_folded :: proc(self: ^Flap) -> glib.boolean ---

    @(link_name = "adw_flap_get_locked")
    flap_get_locked :: proc(self: ^Flap) -> glib.boolean ---

    @(link_name = "adw_flap_set_locked")
    flap_set_locked :: proc(self: ^Flap, locked: glib.boolean) ---

    @(link_name = "adw_flap_get_transition_type")
    flap_get_transition_type :: proc(self: ^Flap) -> FlapTransitionType ---

    @(link_name = "adw_flap_set_transition_type")
    flap_set_transition_type :: proc(self: ^Flap, transition_type: FlapTransitionType) ---

    @(link_name = "adw_flap_get_modal")
    flap_get_modal :: proc(self: ^Flap) -> glib.boolean ---

    @(link_name = "adw_flap_set_modal")
    flap_set_modal :: proc(self: ^Flap, modal: glib.boolean) ---

    @(link_name = "adw_flap_get_swipe_to_open")
    flap_get_swipe_to_open :: proc(self: ^Flap) -> glib.boolean ---

    @(link_name = "adw_flap_set_swipe_to_open")
    flap_set_swipe_to_open :: proc(self: ^Flap, swipe_to_open: glib.boolean) ---

    @(link_name = "adw_flap_get_swipe_to_close")
    flap_get_swipe_to_close :: proc(self: ^Flap) -> glib.boolean ---

    @(link_name = "adw_flap_set_swipe_to_close")
    flap_set_swipe_to_close :: proc(self: ^Flap, swipe_to_close: glib.boolean) ---

    @(link_name = "adw_header_bar_get_type")
    header_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_header_bar_new")
    header_bar_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_header_bar_pack_start")
    header_bar_pack_start :: proc(self: ^HeaderBar, child: ^gtk.Widget) ---

    @(link_name = "adw_header_bar_pack_end")
    header_bar_pack_end :: proc(self: ^HeaderBar, child: ^gtk.Widget) ---

    @(link_name = "adw_header_bar_remove")
    header_bar_remove :: proc(self: ^HeaderBar, child: ^gtk.Widget) ---

    @(link_name = "adw_header_bar_get_title_widget")
    header_bar_get_title_widget :: proc(self: ^HeaderBar) -> ^gtk.Widget ---

    @(link_name = "adw_header_bar_set_title_widget")
    header_bar_set_title_widget :: proc(self: ^HeaderBar, title_widget: ^gtk.Widget) ---

    @(link_name = "adw_header_bar_get_show_start_title_buttons")
    header_bar_get_show_start_title_buttons :: proc(self: ^HeaderBar) -> glib.boolean ---

    @(link_name = "adw_header_bar_set_show_start_title_buttons")
    header_bar_set_show_start_title_buttons :: proc(self: ^HeaderBar, setting: glib.boolean) ---

    @(link_name = "adw_header_bar_get_show_end_title_buttons")
    header_bar_get_show_end_title_buttons :: proc(self: ^HeaderBar) -> glib.boolean ---

    @(link_name = "adw_header_bar_set_show_end_title_buttons")
    header_bar_set_show_end_title_buttons :: proc(self: ^HeaderBar, setting: glib.boolean) ---

    @(link_name = "adw_header_bar_get_show_back_button")
    header_bar_get_show_back_button :: proc(self: ^HeaderBar) -> glib.boolean ---

    @(link_name = "adw_header_bar_set_show_back_button")
    header_bar_set_show_back_button :: proc(self: ^HeaderBar, show_back_button: glib.boolean) ---

    @(link_name = "adw_header_bar_get_decoration_layout")
    header_bar_get_decoration_layout :: proc(self: ^HeaderBar) -> cstring ---

    @(link_name = "adw_header_bar_set_decoration_layout")
    header_bar_set_decoration_layout :: proc(self: ^HeaderBar, layout: cstring) ---

    @(link_name = "adw_header_bar_get_centering_policy")
    header_bar_get_centering_policy :: proc(self: ^HeaderBar) -> CenteringPolicy ---

    @(link_name = "adw_header_bar_set_centering_policy")
    header_bar_set_centering_policy :: proc(self: ^HeaderBar, centering_policy: CenteringPolicy) ---

    @(link_name = "adw_header_bar_get_show_title")
    header_bar_get_show_title :: proc(self: ^HeaderBar) -> glib.boolean ---

    @(link_name = "adw_header_bar_set_show_title")
    header_bar_set_show_title :: proc(self: ^HeaderBar, show_title: glib.boolean) ---

    @(link_name = "adw_view_stack_page_get_type")
    view_stack_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_view_stack_page_get_child")
    view_stack_page_get_child :: proc(self: ^ViewStackPage) -> ^gtk.Widget ---

    @(link_name = "adw_view_stack_page_get_name")
    view_stack_page_get_name :: proc(self: ^ViewStackPage) -> cstring ---

    @(link_name = "adw_view_stack_page_set_name")
    view_stack_page_set_name :: proc(self: ^ViewStackPage, name: cstring) ---

    @(link_name = "adw_view_stack_page_get_title")
    view_stack_page_get_title :: proc(self: ^ViewStackPage) -> cstring ---

    @(link_name = "adw_view_stack_page_set_title")
    view_stack_page_set_title :: proc(self: ^ViewStackPage, title: cstring) ---

    @(link_name = "adw_view_stack_page_get_use_underline")
    view_stack_page_get_use_underline :: proc(self: ^ViewStackPage) -> glib.boolean ---

    @(link_name = "adw_view_stack_page_set_use_underline")
    view_stack_page_set_use_underline :: proc(self: ^ViewStackPage, use_underline: glib.boolean) ---

    @(link_name = "adw_view_stack_page_get_icon_name")
    view_stack_page_get_icon_name :: proc(self: ^ViewStackPage) -> cstring ---

    @(link_name = "adw_view_stack_page_set_icon_name")
    view_stack_page_set_icon_name :: proc(self: ^ViewStackPage, icon_name: cstring) ---

    @(link_name = "adw_view_stack_page_get_needs_attention")
    view_stack_page_get_needs_attention :: proc(self: ^ViewStackPage) -> glib.boolean ---

    @(link_name = "adw_view_stack_page_set_needs_attention")
    view_stack_page_set_needs_attention :: proc(self: ^ViewStackPage, needs_attention: glib.boolean) ---

    @(link_name = "adw_view_stack_page_get_badge_number")
    view_stack_page_get_badge_number :: proc(self: ^ViewStackPage) -> glib.uint_ ---

    @(link_name = "adw_view_stack_page_set_badge_number")
    view_stack_page_set_badge_number :: proc(self: ^ViewStackPage, badge_number: glib.uint_) ---

    @(link_name = "adw_view_stack_page_get_visible")
    view_stack_page_get_visible :: proc(self: ^ViewStackPage) -> glib.boolean ---

    @(link_name = "adw_view_stack_page_set_visible")
    view_stack_page_set_visible :: proc(self: ^ViewStackPage, visible: glib.boolean) ---

    @(link_name = "adw_view_stack_get_type")
    view_stack_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_view_stack_new")
    view_stack_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_view_stack_add")
    view_stack_add :: proc(self: ^ViewStack, child: ^gtk.Widget) -> ^ViewStackPage ---

    @(link_name = "adw_view_stack_add_named")
    view_stack_add_named :: proc(self: ^ViewStack, child: ^gtk.Widget, name: cstring) -> ^ViewStackPage ---

    @(link_name = "adw_view_stack_add_titled")
    view_stack_add_titled :: proc(self: ^ViewStack, child: ^gtk.Widget, name: cstring, title: cstring) -> ^ViewStackPage ---

    @(link_name = "adw_view_stack_add_titled_with_icon")
    view_stack_add_titled_with_icon :: proc(self: ^ViewStack, child: ^gtk.Widget, name: cstring, title: cstring, icon_name: cstring) -> ^ViewStackPage ---

    @(link_name = "adw_view_stack_remove")
    view_stack_remove :: proc(self: ^ViewStack, child: ^gtk.Widget) ---

    @(link_name = "adw_view_stack_get_page")
    view_stack_get_page :: proc(self: ^ViewStack, child: ^gtk.Widget) -> ^ViewStackPage ---

    @(link_name = "adw_view_stack_get_child_by_name")
    view_stack_get_child_by_name :: proc(self: ^ViewStack, name: cstring) -> ^gtk.Widget ---

    @(link_name = "adw_view_stack_get_visible_child")
    view_stack_get_visible_child :: proc(self: ^ViewStack) -> ^gtk.Widget ---

    @(link_name = "adw_view_stack_set_visible_child")
    view_stack_set_visible_child :: proc(self: ^ViewStack, child: ^gtk.Widget) ---

    @(link_name = "adw_view_stack_get_visible_child_name")
    view_stack_get_visible_child_name :: proc(self: ^ViewStack) -> cstring ---

    @(link_name = "adw_view_stack_set_visible_child_name")
    view_stack_set_visible_child_name :: proc(self: ^ViewStack, name: cstring) ---

    @(link_name = "adw_view_stack_get_hhomogeneous")
    view_stack_get_hhomogeneous :: proc(self: ^ViewStack) -> glib.boolean ---

    @(link_name = "adw_view_stack_set_hhomogeneous")
    view_stack_set_hhomogeneous :: proc(self: ^ViewStack, hhomogeneous: glib.boolean) ---

    @(link_name = "adw_view_stack_get_vhomogeneous")
    view_stack_get_vhomogeneous :: proc(self: ^ViewStack) -> glib.boolean ---

    @(link_name = "adw_view_stack_set_vhomogeneous")
    view_stack_set_vhomogeneous :: proc(self: ^ViewStack, vhomogeneous: glib.boolean) ---

    @(link_name = "adw_view_stack_get_enable_transitions")
    view_stack_get_enable_transitions :: proc(self: ^ViewStack) -> glib.boolean ---

    @(link_name = "adw_view_stack_set_enable_transitions")
    view_stack_set_enable_transitions :: proc(self: ^ViewStack, enable_transitions: glib.boolean) ---

    @(link_name = "adw_view_stack_get_transition_duration")
    view_stack_get_transition_duration :: proc(self: ^ViewStack) -> glib.uint_ ---

    @(link_name = "adw_view_stack_set_transition_duration")
    view_stack_set_transition_duration :: proc(self: ^ViewStack, duration: glib.uint_) ---

    @(link_name = "adw_view_stack_get_transition_running")
    view_stack_get_transition_running :: proc(self: ^ViewStack) -> glib.boolean ---

    @(link_name = "adw_view_stack_get_pages")
    view_stack_get_pages :: proc(self: ^ViewStack) -> ^gtk.SelectionModel ---

    @(link_name = "adw_view_stack_pages_get_type")
    view_stack_pages_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_view_stack_pages_get_selected_page")
    view_stack_pages_get_selected_page :: proc(self: ^ViewStackPages) -> ^ViewStackPage ---

    @(link_name = "adw_view_stack_pages_set_selected_page")
    view_stack_pages_set_selected_page :: proc(self: ^ViewStackPages, page: ^ViewStackPage) ---

    @(link_name = "adw_inline_view_switcher_get_type")
    inline_view_switcher_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_inline_view_switcher_new")
    inline_view_switcher_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_inline_view_switcher_get_stack")
    inline_view_switcher_get_stack :: proc(self: ^InlineViewSwitcher) -> ^ViewStack ---

    @(link_name = "adw_inline_view_switcher_set_stack")
    inline_view_switcher_set_stack :: proc(self: ^InlineViewSwitcher, stack: ^ViewStack) ---

    @(link_name = "adw_inline_view_switcher_get_display_mode")
    inline_view_switcher_get_display_mode :: proc(self: ^InlineViewSwitcher) -> InlineViewSwitcherDisplayMode ---

    @(link_name = "adw_inline_view_switcher_set_display_mode")
    inline_view_switcher_set_display_mode :: proc(self: ^InlineViewSwitcher, mode: InlineViewSwitcherDisplayMode) ---

    @(link_name = "adw_inline_view_switcher_get_homogeneous")
    inline_view_switcher_get_homogeneous :: proc(self: ^InlineViewSwitcher) -> glib.boolean ---

    @(link_name = "adw_inline_view_switcher_set_homogeneous")
    inline_view_switcher_set_homogeneous :: proc(self: ^InlineViewSwitcher, homogeneous: glib.boolean) ---

    @(link_name = "adw_inline_view_switcher_get_can_shrink")
    inline_view_switcher_get_can_shrink :: proc(self: ^InlineViewSwitcher) -> glib.boolean ---

    @(link_name = "adw_inline_view_switcher_set_can_shrink")
    inline_view_switcher_set_can_shrink :: proc(self: ^InlineViewSwitcher, can_shrink: glib.boolean) ---

    @(link_name = "adw_layout_get_type")
    layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_layout_new")
    layout_new :: proc(content: ^gtk.Widget) -> ^Layout ---

    @(link_name = "adw_layout_get_content")
    layout_get_content :: proc(self: ^Layout) -> ^gtk.Widget ---

    @(link_name = "adw_layout_get_name")
    layout_get_name :: proc(self: ^Layout) -> cstring ---

    @(link_name = "adw_layout_set_name")
    layout_set_name :: proc(self: ^Layout, name: cstring) ---

    @(link_name = "adw_layout_slot_get_type")
    layout_slot_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_layout_slot_new")
    layout_slot_new :: proc(id: cstring) -> ^gtk.Widget ---

    @(link_name = "adw_layout_slot_get_slot_id")
    layout_slot_get_slot_id :: proc(self: ^LayoutSlot) -> cstring ---

    @(link_name = "adw_leaflet_page_get_type")
    leaflet_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_leaflet_page_get_child")
    leaflet_page_get_child :: proc(self: ^LeafletPage) -> ^gtk.Widget ---

    @(link_name = "adw_leaflet_page_get_name")
    leaflet_page_get_name :: proc(self: ^LeafletPage) -> cstring ---

    @(link_name = "adw_leaflet_page_set_name")
    leaflet_page_set_name :: proc(self: ^LeafletPage, name: cstring) ---

    @(link_name = "adw_leaflet_page_get_navigatable")
    leaflet_page_get_navigatable :: proc(self: ^LeafletPage) -> glib.boolean ---

    @(link_name = "adw_leaflet_page_set_navigatable")
    leaflet_page_set_navigatable :: proc(self: ^LeafletPage, navigatable: glib.boolean) ---

    @(link_name = "adw_leaflet_get_type")
    leaflet_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_leaflet_new")
    leaflet_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_leaflet_append")
    leaflet_append :: proc(self: ^Leaflet, child: ^gtk.Widget) -> ^LeafletPage ---

    @(link_name = "adw_leaflet_prepend")
    leaflet_prepend :: proc(self: ^Leaflet, child: ^gtk.Widget) -> ^LeafletPage ---

    @(link_name = "adw_leaflet_insert_child_after")
    leaflet_insert_child_after :: proc(self: ^Leaflet, child: ^gtk.Widget, sibling: ^gtk.Widget) -> ^LeafletPage ---

    @(link_name = "adw_leaflet_reorder_child_after")
    leaflet_reorder_child_after :: proc(self: ^Leaflet, child: ^gtk.Widget, sibling: ^gtk.Widget) ---

    @(link_name = "adw_leaflet_remove")
    leaflet_remove :: proc(self: ^Leaflet, child: ^gtk.Widget) ---

    @(link_name = "adw_leaflet_get_page")
    leaflet_get_page :: proc(self: ^Leaflet, child: ^gtk.Widget) -> ^LeafletPage ---

    @(link_name = "adw_leaflet_get_can_unfold")
    leaflet_get_can_unfold :: proc(self: ^Leaflet) -> glib.boolean ---

    @(link_name = "adw_leaflet_set_can_unfold")
    leaflet_set_can_unfold :: proc(self: ^Leaflet, can_unfold: glib.boolean) ---

    @(link_name = "adw_leaflet_get_folded")
    leaflet_get_folded :: proc(self: ^Leaflet) -> glib.boolean ---

    @(link_name = "adw_leaflet_get_fold_threshold_policy")
    leaflet_get_fold_threshold_policy :: proc(self: ^Leaflet) -> FoldThresholdPolicy ---

    @(link_name = "adw_leaflet_set_fold_threshold_policy")
    leaflet_set_fold_threshold_policy :: proc(self: ^Leaflet, policy: FoldThresholdPolicy) ---

    @(link_name = "adw_leaflet_get_homogeneous")
    leaflet_get_homogeneous :: proc(self: ^Leaflet) -> glib.boolean ---

    @(link_name = "adw_leaflet_set_homogeneous")
    leaflet_set_homogeneous :: proc(self: ^Leaflet, homogeneous: glib.boolean) ---

    @(link_name = "adw_leaflet_get_visible_child")
    leaflet_get_visible_child :: proc(self: ^Leaflet) -> ^gtk.Widget ---

    @(link_name = "adw_leaflet_set_visible_child")
    leaflet_set_visible_child :: proc(self: ^Leaflet, visible_child: ^gtk.Widget) ---

    @(link_name = "adw_leaflet_get_visible_child_name")
    leaflet_get_visible_child_name :: proc(self: ^Leaflet) -> cstring ---

    @(link_name = "adw_leaflet_set_visible_child_name")
    leaflet_set_visible_child_name :: proc(self: ^Leaflet, name: cstring) ---

    @(link_name = "adw_leaflet_get_transition_type")
    leaflet_get_transition_type :: proc(self: ^Leaflet) -> LeafletTransitionType ---

    @(link_name = "adw_leaflet_set_transition_type")
    leaflet_set_transition_type :: proc(self: ^Leaflet, transition: LeafletTransitionType) ---

    @(link_name = "adw_leaflet_get_mode_transition_duration")
    leaflet_get_mode_transition_duration :: proc(self: ^Leaflet) -> glib.uint_ ---

    @(link_name = "adw_leaflet_set_mode_transition_duration")
    leaflet_set_mode_transition_duration :: proc(self: ^Leaflet, duration: glib.uint_) ---

    @(link_name = "adw_leaflet_get_child_transition_params")
    leaflet_get_child_transition_params :: proc(self: ^Leaflet) -> ^SpringParams ---

    @(link_name = "adw_leaflet_set_child_transition_params")
    leaflet_set_child_transition_params :: proc(self: ^Leaflet, params: [^]SpringParams) ---

    @(link_name = "adw_leaflet_get_child_transition_running")
    leaflet_get_child_transition_running :: proc(self: ^Leaflet) -> glib.boolean ---

    @(link_name = "adw_leaflet_get_can_navigate_back")
    leaflet_get_can_navigate_back :: proc(self: ^Leaflet) -> glib.boolean ---

    @(link_name = "adw_leaflet_set_can_navigate_back")
    leaflet_set_can_navigate_back :: proc(self: ^Leaflet, can_navigate_back: glib.boolean) ---

    @(link_name = "adw_leaflet_get_can_navigate_forward")
    leaflet_get_can_navigate_forward :: proc(self: ^Leaflet) -> glib.boolean ---

    @(link_name = "adw_leaflet_set_can_navigate_forward")
    leaflet_set_can_navigate_forward :: proc(self: ^Leaflet, can_navigate_forward: glib.boolean) ---

    @(link_name = "adw_leaflet_get_adjacent_child")
    leaflet_get_adjacent_child :: proc(self: ^Leaflet, direction: NavigationDirection) -> ^gtk.Widget ---

    @(link_name = "adw_leaflet_navigate")
    leaflet_navigate :: proc(self: ^Leaflet, direction: NavigationDirection) -> glib.boolean ---

    @(link_name = "adw_leaflet_get_child_by_name")
    leaflet_get_child_by_name :: proc(self: ^Leaflet, name: cstring) -> ^gtk.Widget ---

    @(link_name = "adw_leaflet_get_pages")
    leaflet_get_pages :: proc(self: ^Leaflet) -> ^gtk.SelectionModel ---

    @(link_name = "adw_init")
    init :: proc() ---

    @(link_name = "adw_is_initialized")
    is_initialized :: proc() -> glib.boolean ---

    @(link_name = "adw_message_dialog_get_type")
    message_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_message_dialog_new")
    message_dialog_new :: proc(parent: ^gtk.Window, heading: cstring, body: cstring) -> ^gtk.Widget ---

    @(link_name = "adw_message_dialog_get_heading")
    message_dialog_get_heading :: proc(self: ^MessageDialog) -> cstring ---

    @(link_name = "adw_message_dialog_set_heading")
    message_dialog_set_heading :: proc(self: ^MessageDialog, heading: cstring) ---

    @(link_name = "adw_message_dialog_get_heading_use_markup")
    message_dialog_get_heading_use_markup :: proc(self: ^MessageDialog) -> glib.boolean ---

    @(link_name = "adw_message_dialog_set_heading_use_markup")
    message_dialog_set_heading_use_markup :: proc(self: ^MessageDialog, use_markup: glib.boolean) ---

    @(link_name = "adw_message_dialog_format_heading")
    message_dialog_format_heading :: proc(self: ^MessageDialog, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_message_dialog_format_heading_markup")
    message_dialog_format_heading_markup :: proc(self: ^MessageDialog, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_message_dialog_get_body")
    message_dialog_get_body :: proc(self: ^MessageDialog) -> cstring ---

    @(link_name = "adw_message_dialog_set_body")
    message_dialog_set_body :: proc(self: ^MessageDialog, body: cstring) ---

    @(link_name = "adw_message_dialog_get_body_use_markup")
    message_dialog_get_body_use_markup :: proc(self: ^MessageDialog) -> glib.boolean ---

    @(link_name = "adw_message_dialog_set_body_use_markup")
    message_dialog_set_body_use_markup :: proc(self: ^MessageDialog, use_markup: glib.boolean) ---

    @(link_name = "adw_message_dialog_format_body")
    message_dialog_format_body :: proc(self: ^MessageDialog, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_message_dialog_format_body_markup")
    message_dialog_format_body_markup :: proc(self: ^MessageDialog, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_message_dialog_get_extra_child")
    message_dialog_get_extra_child :: proc(self: ^MessageDialog) -> ^gtk.Widget ---

    @(link_name = "adw_message_dialog_set_extra_child")
    message_dialog_set_extra_child :: proc(self: ^MessageDialog, child: ^gtk.Widget) ---

    @(link_name = "adw_message_dialog_add_response")
    message_dialog_add_response :: proc(self: ^MessageDialog, id: cstring, label: cstring) ---

    @(link_name = "adw_message_dialog_remove_response")
    message_dialog_remove_response :: proc(self: ^MessageDialog, id: cstring) ---

    @(link_name = "adw_message_dialog_add_responses")
    message_dialog_add_responses :: proc(self: ^MessageDialog, first_id: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_message_dialog_get_response_label")
    message_dialog_get_response_label :: proc(self: ^MessageDialog, response: cstring) -> cstring ---

    @(link_name = "adw_message_dialog_set_response_label")
    message_dialog_set_response_label :: proc(self: ^MessageDialog, response: cstring, label: cstring) ---

    @(link_name = "adw_message_dialog_get_response_appearance")
    message_dialog_get_response_appearance :: proc(self: ^MessageDialog, response: cstring) -> ResponseAppearance ---

    @(link_name = "adw_message_dialog_set_response_appearance")
    message_dialog_set_response_appearance :: proc(self: ^MessageDialog, response: cstring, appearance: ResponseAppearance) ---

    @(link_name = "adw_message_dialog_get_response_enabled")
    message_dialog_get_response_enabled :: proc(self: ^MessageDialog, response: cstring) -> glib.boolean ---

    @(link_name = "adw_message_dialog_set_response_enabled")
    message_dialog_set_response_enabled :: proc(self: ^MessageDialog, response: cstring, enabled: glib.boolean) ---

    @(link_name = "adw_message_dialog_get_default_response")
    message_dialog_get_default_response :: proc(self: ^MessageDialog) -> cstring ---

    @(link_name = "adw_message_dialog_set_default_response")
    message_dialog_set_default_response :: proc(self: ^MessageDialog, response: cstring) ---

    @(link_name = "adw_message_dialog_get_close_response")
    message_dialog_get_close_response :: proc(self: ^MessageDialog) -> cstring ---

    @(link_name = "adw_message_dialog_set_close_response")
    message_dialog_set_close_response :: proc(self: ^MessageDialog, response: cstring) ---

    @(link_name = "adw_message_dialog_response")
    message_dialog_response :: proc(self: ^MessageDialog, response: cstring) ---

    @(link_name = "adw_message_dialog_has_response")
    message_dialog_has_response :: proc(self: ^MessageDialog, response: cstring) -> glib.boolean ---

    @(link_name = "adw_message_dialog_choose")
    message_dialog_choose :: proc(self: ^MessageDialog, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "adw_message_dialog_choose_finish")
    message_dialog_choose_finish :: proc(self: ^MessageDialog, result: ^gio.AsyncResult) -> cstring ---

    @(link_name = "adw_multi_layout_view_get_type")
    multi_layout_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_multi_layout_view_new")
    multi_layout_view_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_multi_layout_view_get_layout")
    multi_layout_view_get_layout :: proc(self: ^MultiLayoutView) -> ^Layout ---

    @(link_name = "adw_multi_layout_view_set_layout")
    multi_layout_view_set_layout :: proc(self: ^MultiLayoutView, layout: ^Layout) ---

    @(link_name = "adw_multi_layout_view_get_layout_name")
    multi_layout_view_get_layout_name :: proc(self: ^MultiLayoutView) -> cstring ---

    @(link_name = "adw_multi_layout_view_set_layout_name")
    multi_layout_view_set_layout_name :: proc(self: ^MultiLayoutView, name: cstring) ---

    @(link_name = "adw_multi_layout_view_add_layout")
    multi_layout_view_add_layout :: proc(self: ^MultiLayoutView, layout: ^Layout) ---

    @(link_name = "adw_multi_layout_view_remove_layout")
    multi_layout_view_remove_layout :: proc(self: ^MultiLayoutView, layout: ^Layout) ---

    @(link_name = "adw_multi_layout_view_get_layout_by_name")
    multi_layout_view_get_layout_by_name :: proc(self: ^MultiLayoutView, name: cstring) -> ^Layout ---

    @(link_name = "adw_multi_layout_view_get_child")
    multi_layout_view_get_child :: proc(self: ^MultiLayoutView, id: cstring) -> ^gtk.Widget ---

    @(link_name = "adw_multi_layout_view_set_child")
    multi_layout_view_set_child :: proc(self: ^MultiLayoutView, id: cstring, child: ^gtk.Widget) ---

    @(link_name = "adw_navigation_page_get_type")
    navigation_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_navigation_page_new")
    navigation_page_new :: proc(child: ^gtk.Widget, title: cstring) -> ^NavigationPage ---

    @(link_name = "adw_navigation_page_new_with_tag")
    navigation_page_new_with_tag :: proc(child: ^gtk.Widget, title: cstring, tag: cstring) -> ^NavigationPage ---

    @(link_name = "adw_navigation_page_get_child")
    navigation_page_get_child :: proc(self: ^NavigationPage) -> ^gtk.Widget ---

    @(link_name = "adw_navigation_page_set_child")
    navigation_page_set_child :: proc(self: ^NavigationPage, child: ^gtk.Widget) ---

    @(link_name = "adw_navigation_page_get_tag")
    navigation_page_get_tag :: proc(self: ^NavigationPage) -> cstring ---

    @(link_name = "adw_navigation_page_set_tag")
    navigation_page_set_tag :: proc(self: ^NavigationPage, tag: cstring) ---

    @(link_name = "adw_navigation_page_get_title")
    navigation_page_get_title :: proc(self: ^NavigationPage) -> cstring ---

    @(link_name = "adw_navigation_page_set_title")
    navigation_page_set_title :: proc(self: ^NavigationPage, title: cstring) ---

    @(link_name = "adw_navigation_page_get_can_pop")
    navigation_page_get_can_pop :: proc(self: ^NavigationPage) -> glib.boolean ---

    @(link_name = "adw_navigation_page_set_can_pop")
    navigation_page_set_can_pop :: proc(self: ^NavigationPage, can_pop: glib.boolean) ---

    @(link_name = "adw_navigation_view_get_type")
    navigation_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_navigation_view_new")
    navigation_view_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_navigation_view_add")
    navigation_view_add :: proc(self: ^NavigationView, page: ^NavigationPage) ---

    @(link_name = "adw_navigation_view_remove")
    navigation_view_remove :: proc(self: ^NavigationView, page: ^NavigationPage) ---

    @(link_name = "adw_navigation_view_find_page")
    navigation_view_find_page :: proc(self: ^NavigationView, tag: cstring) -> ^NavigationPage ---

    @(link_name = "adw_navigation_view_push")
    navigation_view_push :: proc(self: ^NavigationView, page: ^NavigationPage) ---

    @(link_name = "adw_navigation_view_push_by_tag")
    navigation_view_push_by_tag :: proc(self: ^NavigationView, tag: cstring) ---

    @(link_name = "adw_navigation_view_pop")
    navigation_view_pop :: proc(self: ^NavigationView) -> glib.boolean ---

    @(link_name = "adw_navigation_view_pop_to_page")
    navigation_view_pop_to_page :: proc(self: ^NavigationView, page: ^NavigationPage) -> glib.boolean ---

    @(link_name = "adw_navigation_view_pop_to_tag")
    navigation_view_pop_to_tag :: proc(self: ^NavigationView, tag: cstring) -> glib.boolean ---

    @(link_name = "adw_navigation_view_replace")
    navigation_view_replace :: proc(self: ^NavigationView, pages: [^]^NavigationPage, n_pages: i32) ---

    @(link_name = "adw_navigation_view_replace_with_tags")
    navigation_view_replace_with_tags :: proc(self: ^NavigationView, tags: [^]cstring, n_tags: i32) ---

    @(link_name = "adw_navigation_view_get_visible_page")
    navigation_view_get_visible_page :: proc(self: ^NavigationView) -> ^NavigationPage ---

    @(link_name = "adw_navigation_view_get_visible_page_tag")
    navigation_view_get_visible_page_tag :: proc(self: ^NavigationView) -> cstring ---

    @(link_name = "adw_navigation_view_get_previous_page")
    navigation_view_get_previous_page :: proc(self: ^NavigationView, page: ^NavigationPage) -> ^NavigationPage ---

    @(link_name = "adw_navigation_view_get_hhomogeneous")
    navigation_view_get_hhomogeneous :: proc(self: ^NavigationView) -> glib.boolean ---

    @(link_name = "adw_navigation_view_set_hhomogeneous")
    navigation_view_set_hhomogeneous :: proc(self: ^NavigationView, hhomogeneous: glib.boolean) ---

    @(link_name = "adw_navigation_view_get_vhomogeneous")
    navigation_view_get_vhomogeneous :: proc(self: ^NavigationView) -> glib.boolean ---

    @(link_name = "adw_navigation_view_set_vhomogeneous")
    navigation_view_set_vhomogeneous :: proc(self: ^NavigationView, vhomogeneous: glib.boolean) ---

    @(link_name = "adw_navigation_view_get_animate_transitions")
    navigation_view_get_animate_transitions :: proc(self: ^NavigationView) -> glib.boolean ---

    @(link_name = "adw_navigation_view_set_animate_transitions")
    navigation_view_set_animate_transitions :: proc(self: ^NavigationView, animate_transitions: glib.boolean) ---

    @(link_name = "adw_navigation_view_get_pop_on_escape")
    navigation_view_get_pop_on_escape :: proc(self: ^NavigationView) -> glib.boolean ---

    @(link_name = "adw_navigation_view_set_pop_on_escape")
    navigation_view_set_pop_on_escape :: proc(self: ^NavigationView, pop_on_escape: glib.boolean) ---

    @(link_name = "adw_navigation_view_get_navigation_stack")
    navigation_view_get_navigation_stack :: proc(self: ^NavigationView) -> ^gio.ListModel ---

    @(link_name = "adw_navigation_split_view_get_type")
    navigation_split_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_navigation_split_view_new")
    navigation_split_view_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_navigation_split_view_get_sidebar")
    navigation_split_view_get_sidebar :: proc(self: ^NavigationSplitView) -> ^NavigationPage ---

    @(link_name = "adw_navigation_split_view_set_sidebar")
    navigation_split_view_set_sidebar :: proc(self: ^NavigationSplitView, sidebar: ^NavigationPage) ---

    @(link_name = "adw_navigation_split_view_get_content")
    navigation_split_view_get_content :: proc(self: ^NavigationSplitView) -> ^NavigationPage ---

    @(link_name = "adw_navigation_split_view_set_content")
    navigation_split_view_set_content :: proc(self: ^NavigationSplitView, content: ^NavigationPage) ---

    @(link_name = "adw_navigation_split_view_get_sidebar_position")
    navigation_split_view_get_sidebar_position :: proc(self: ^NavigationSplitView) -> gtk.PackType ---

    @(link_name = "adw_navigation_split_view_set_sidebar_position")
    navigation_split_view_set_sidebar_position :: proc(self: ^NavigationSplitView, position: gtk.PackType) ---

    @(link_name = "adw_navigation_split_view_get_collapsed")
    navigation_split_view_get_collapsed :: proc(self: ^NavigationSplitView) -> glib.boolean ---

    @(link_name = "adw_navigation_split_view_set_collapsed")
    navigation_split_view_set_collapsed :: proc(self: ^NavigationSplitView, collapsed: glib.boolean) ---

    @(link_name = "adw_navigation_split_view_get_show_content")
    navigation_split_view_get_show_content :: proc(self: ^NavigationSplitView) -> glib.boolean ---

    @(link_name = "adw_navigation_split_view_set_show_content")
    navigation_split_view_set_show_content :: proc(self: ^NavigationSplitView, show_content: glib.boolean) ---

    @(link_name = "adw_navigation_split_view_get_min_sidebar_width")
    navigation_split_view_get_min_sidebar_width :: proc(self: ^NavigationSplitView) -> f64 ---

    @(link_name = "adw_navigation_split_view_set_min_sidebar_width")
    navigation_split_view_set_min_sidebar_width :: proc(self: ^NavigationSplitView, width: f64) ---

    @(link_name = "adw_navigation_split_view_get_max_sidebar_width")
    navigation_split_view_get_max_sidebar_width :: proc(self: ^NavigationSplitView) -> f64 ---

    @(link_name = "adw_navigation_split_view_set_max_sidebar_width")
    navigation_split_view_set_max_sidebar_width :: proc(self: ^NavigationSplitView, width: f64) ---

    @(link_name = "adw_navigation_split_view_get_sidebar_width_fraction")
    navigation_split_view_get_sidebar_width_fraction :: proc(self: ^NavigationSplitView) -> f64 ---

    @(link_name = "adw_navigation_split_view_set_sidebar_width_fraction")
    navigation_split_view_set_sidebar_width_fraction :: proc(self: ^NavigationSplitView, fraction: f64) ---

    @(link_name = "adw_navigation_split_view_get_sidebar_width_unit")
    navigation_split_view_get_sidebar_width_unit :: proc(self: ^NavigationSplitView) -> LengthUnit ---

    @(link_name = "adw_navigation_split_view_set_sidebar_width_unit")
    navigation_split_view_set_sidebar_width_unit :: proc(self: ^NavigationSplitView, unit: LengthUnit) ---

    @(link_name = "adw_overlay_split_view_get_type")
    overlay_split_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_overlay_split_view_new")
    overlay_split_view_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_overlay_split_view_get_sidebar")
    overlay_split_view_get_sidebar :: proc(self: ^OverlaySplitView) -> ^gtk.Widget ---

    @(link_name = "adw_overlay_split_view_set_sidebar")
    overlay_split_view_set_sidebar :: proc(self: ^OverlaySplitView, sidebar: ^gtk.Widget) ---

    @(link_name = "adw_overlay_split_view_get_content")
    overlay_split_view_get_content :: proc(self: ^OverlaySplitView) -> ^gtk.Widget ---

    @(link_name = "adw_overlay_split_view_set_content")
    overlay_split_view_set_content :: proc(self: ^OverlaySplitView, content: ^gtk.Widget) ---

    @(link_name = "adw_overlay_split_view_get_collapsed")
    overlay_split_view_get_collapsed :: proc(self: ^OverlaySplitView) -> glib.boolean ---

    @(link_name = "adw_overlay_split_view_set_collapsed")
    overlay_split_view_set_collapsed :: proc(self: ^OverlaySplitView, collapsed: glib.boolean) ---

    @(link_name = "adw_overlay_split_view_get_sidebar_position")
    overlay_split_view_get_sidebar_position :: proc(self: ^OverlaySplitView) -> gtk.PackType ---

    @(link_name = "adw_overlay_split_view_set_sidebar_position")
    overlay_split_view_set_sidebar_position :: proc(self: ^OverlaySplitView, position: gtk.PackType) ---

    @(link_name = "adw_overlay_split_view_get_show_sidebar")
    overlay_split_view_get_show_sidebar :: proc(self: ^OverlaySplitView) -> glib.boolean ---

    @(link_name = "adw_overlay_split_view_set_show_sidebar")
    overlay_split_view_set_show_sidebar :: proc(self: ^OverlaySplitView, show_sidebar: glib.boolean) ---

    @(link_name = "adw_overlay_split_view_get_pin_sidebar")
    overlay_split_view_get_pin_sidebar :: proc(self: ^OverlaySplitView) -> glib.boolean ---

    @(link_name = "adw_overlay_split_view_set_pin_sidebar")
    overlay_split_view_set_pin_sidebar :: proc(self: ^OverlaySplitView, pin_sidebar: glib.boolean) ---

    @(link_name = "adw_overlay_split_view_get_enable_show_gesture")
    overlay_split_view_get_enable_show_gesture :: proc(self: ^OverlaySplitView) -> glib.boolean ---

    @(link_name = "adw_overlay_split_view_set_enable_show_gesture")
    overlay_split_view_set_enable_show_gesture :: proc(self: ^OverlaySplitView, enable_show_gesture: glib.boolean) ---

    @(link_name = "adw_overlay_split_view_get_enable_hide_gesture")
    overlay_split_view_get_enable_hide_gesture :: proc(self: ^OverlaySplitView) -> glib.boolean ---

    @(link_name = "adw_overlay_split_view_set_enable_hide_gesture")
    overlay_split_view_set_enable_hide_gesture :: proc(self: ^OverlaySplitView, enable_hide_gesture: glib.boolean) ---

    @(link_name = "adw_overlay_split_view_get_min_sidebar_width")
    overlay_split_view_get_min_sidebar_width :: proc(self: ^OverlaySplitView) -> f64 ---

    @(link_name = "adw_overlay_split_view_set_min_sidebar_width")
    overlay_split_view_set_min_sidebar_width :: proc(self: ^OverlaySplitView, width: f64) ---

    @(link_name = "adw_overlay_split_view_get_max_sidebar_width")
    overlay_split_view_get_max_sidebar_width :: proc(self: ^OverlaySplitView) -> f64 ---

    @(link_name = "adw_overlay_split_view_set_max_sidebar_width")
    overlay_split_view_set_max_sidebar_width :: proc(self: ^OverlaySplitView, width: f64) ---

    @(link_name = "adw_overlay_split_view_get_sidebar_width_fraction")
    overlay_split_view_get_sidebar_width_fraction :: proc(self: ^OverlaySplitView) -> f64 ---

    @(link_name = "adw_overlay_split_view_set_sidebar_width_fraction")
    overlay_split_view_set_sidebar_width_fraction :: proc(self: ^OverlaySplitView, fraction: f64) ---

    @(link_name = "adw_overlay_split_view_get_sidebar_width_unit")
    overlay_split_view_get_sidebar_width_unit :: proc(self: ^OverlaySplitView) -> LengthUnit ---

    @(link_name = "adw_overlay_split_view_set_sidebar_width_unit")
    overlay_split_view_set_sidebar_width_unit :: proc(self: ^OverlaySplitView, unit: LengthUnit) ---

    @(link_name = "adw_password_entry_row_get_type")
    password_entry_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_password_entry_row_new")
    password_entry_row_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_preferences_group_get_type")
    preferences_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_preferences_group_new")
    preferences_group_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_preferences_group_add")
    preferences_group_add :: proc(self: ^PreferencesGroup, child: ^gtk.Widget) ---

    @(link_name = "adw_preferences_group_remove")
    preferences_group_remove :: proc(self: ^PreferencesGroup, child: ^gtk.Widget) ---

    @(link_name = "adw_preferences_group_get_title")
    preferences_group_get_title :: proc(self: ^PreferencesGroup) -> cstring ---

    @(link_name = "adw_preferences_group_set_title")
    preferences_group_set_title :: proc(self: ^PreferencesGroup, title: cstring) ---

    @(link_name = "adw_preferences_group_get_description")
    preferences_group_get_description :: proc(self: ^PreferencesGroup) -> cstring ---

    @(link_name = "adw_preferences_group_set_description")
    preferences_group_set_description :: proc(self: ^PreferencesGroup, description: cstring) ---

    @(link_name = "adw_preferences_group_get_header_suffix")
    preferences_group_get_header_suffix :: proc(self: ^PreferencesGroup) -> ^gtk.Widget ---

    @(link_name = "adw_preferences_group_set_header_suffix")
    preferences_group_set_header_suffix :: proc(self: ^PreferencesGroup, suffix: ^gtk.Widget) ---

    @(link_name = "adw_preferences_group_get_separate_rows")
    preferences_group_get_separate_rows :: proc(self: ^PreferencesGroup) -> glib.boolean ---

    @(link_name = "adw_preferences_group_set_separate_rows")
    preferences_group_set_separate_rows :: proc(self: ^PreferencesGroup, separate_rows: glib.boolean) ---

    @(link_name = "adw_preferences_page_get_type")
    preferences_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_preferences_page_new")
    preferences_page_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_preferences_page_add")
    preferences_page_add :: proc(self: ^PreferencesPage, group: ^PreferencesGroup) ---

    @(link_name = "adw_preferences_page_remove")
    preferences_page_remove :: proc(self: ^PreferencesPage, group: ^PreferencesGroup) ---

    @(link_name = "adw_preferences_page_get_icon_name")
    preferences_page_get_icon_name :: proc(self: ^PreferencesPage) -> cstring ---

    @(link_name = "adw_preferences_page_set_icon_name")
    preferences_page_set_icon_name :: proc(self: ^PreferencesPage, icon_name: cstring) ---

    @(link_name = "adw_preferences_page_get_title")
    preferences_page_get_title :: proc(self: ^PreferencesPage) -> cstring ---

    @(link_name = "adw_preferences_page_set_title")
    preferences_page_set_title :: proc(self: ^PreferencesPage, title: cstring) ---

    @(link_name = "adw_preferences_page_get_description")
    preferences_page_get_description :: proc(self: ^PreferencesPage) -> cstring ---

    @(link_name = "adw_preferences_page_set_description")
    preferences_page_set_description :: proc(self: ^PreferencesPage, description: cstring) ---

    @(link_name = "adw_preferences_page_get_name")
    preferences_page_get_name :: proc(self: ^PreferencesPage) -> cstring ---

    @(link_name = "adw_preferences_page_set_name")
    preferences_page_set_name :: proc(self: ^PreferencesPage, name: cstring) ---

    @(link_name = "adw_preferences_page_get_use_underline")
    preferences_page_get_use_underline :: proc(self: ^PreferencesPage) -> glib.boolean ---

    @(link_name = "adw_preferences_page_set_use_underline")
    preferences_page_set_use_underline :: proc(self: ^PreferencesPage, use_underline: glib.boolean) ---

    @(link_name = "adw_preferences_page_get_description_centered")
    preferences_page_get_description_centered :: proc(self: ^PreferencesPage) -> glib.boolean ---

    @(link_name = "adw_preferences_page_set_description_centered")
    preferences_page_set_description_centered :: proc(self: ^PreferencesPage, centered: glib.boolean) ---

    @(link_name = "adw_preferences_page_get_banner")
    preferences_page_get_banner :: proc(self: ^PreferencesPage) -> ^Banner ---

    @(link_name = "adw_preferences_page_set_banner")
    preferences_page_set_banner :: proc(self: ^PreferencesPage, banner: ^Banner) ---

    @(link_name = "adw_preferences_page_scroll_to_top")
    preferences_page_scroll_to_top :: proc(self: ^PreferencesPage) ---

    @(link_name = "adw_toast_get_type")
    toast_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_toast_new")
    toast_new :: proc(title: cstring) -> ^Toast ---

    @(link_name = "adw_toast_new_format")
    toast_new_format :: proc(format: cstring, #c_vararg var_args: ..any) -> ^Toast ---

    @(link_name = "adw_toast_get_title")
    toast_get_title :: proc(self: ^Toast) -> cstring ---

    @(link_name = "adw_toast_set_title")
    toast_set_title :: proc(self: ^Toast, title: cstring) ---

    @(link_name = "adw_toast_get_button_label")
    toast_get_button_label :: proc(self: ^Toast) -> cstring ---

    @(link_name = "adw_toast_set_button_label")
    toast_set_button_label :: proc(self: ^Toast, button_label: cstring) ---

    @(link_name = "adw_toast_get_action_name")
    toast_get_action_name :: proc(self: ^Toast) -> cstring ---

    @(link_name = "adw_toast_set_action_name")
    toast_set_action_name :: proc(self: ^Toast, action_name: cstring) ---

    @(link_name = "adw_toast_get_action_target_value")
    toast_get_action_target_value :: proc(self: ^Toast) -> ^glib.Variant ---

    @(link_name = "adw_toast_set_action_target_value")
    toast_set_action_target_value :: proc(self: ^Toast, action_target: ^glib.Variant) ---

    @(link_name = "adw_toast_set_action_target")
    toast_set_action_target :: proc(self: ^Toast, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "adw_toast_set_detailed_action_name")
    toast_set_detailed_action_name :: proc(self: ^Toast, detailed_action_name: cstring) ---

    @(link_name = "adw_toast_get_priority")
    toast_get_priority :: proc(self: ^Toast) -> ToastPriority ---

    @(link_name = "adw_toast_set_priority")
    toast_set_priority :: proc(self: ^Toast, priority: ToastPriority) ---

    @(link_name = "adw_toast_get_timeout")
    toast_get_timeout :: proc(self: ^Toast) -> glib.uint_ ---

    @(link_name = "adw_toast_set_timeout")
    toast_set_timeout :: proc(self: ^Toast, timeout: glib.uint_) ---

    @(link_name = "adw_toast_get_custom_title")
    toast_get_custom_title :: proc(self: ^Toast) -> ^gtk.Widget ---

    @(link_name = "adw_toast_set_custom_title")
    toast_set_custom_title :: proc(self: ^Toast, widget: ^gtk.Widget) ---

    @(link_name = "adw_toast_get_use_markup")
    toast_get_use_markup :: proc(self: ^Toast) -> glib.boolean ---

    @(link_name = "adw_toast_set_use_markup")
    toast_set_use_markup :: proc(self: ^Toast, use_markup: glib.boolean) ---

    @(link_name = "adw_toast_dismiss")
    toast_dismiss :: proc(self: ^Toast) ---

    @(link_name = "adw_preferences_dialog_get_type")
    preferences_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_preferences_dialog_new")
    preferences_dialog_new :: proc() -> ^Dialog ---

    @(link_name = "adw_preferences_dialog_add")
    preferences_dialog_add :: proc(self: ^PreferencesDialog, page: ^PreferencesPage) ---

    @(link_name = "adw_preferences_dialog_remove")
    preferences_dialog_remove :: proc(self: ^PreferencesDialog, page: ^PreferencesPage) ---

    @(link_name = "adw_preferences_dialog_get_visible_page")
    preferences_dialog_get_visible_page :: proc(self: ^PreferencesDialog) -> ^PreferencesPage ---

    @(link_name = "adw_preferences_dialog_set_visible_page")
    preferences_dialog_set_visible_page :: proc(self: ^PreferencesDialog, page: ^PreferencesPage) ---

    @(link_name = "adw_preferences_dialog_get_visible_page_name")
    preferences_dialog_get_visible_page_name :: proc(self: ^PreferencesDialog) -> cstring ---

    @(link_name = "adw_preferences_dialog_set_visible_page_name")
    preferences_dialog_set_visible_page_name :: proc(self: ^PreferencesDialog, name: cstring) ---

    @(link_name = "adw_preferences_dialog_get_search_enabled")
    preferences_dialog_get_search_enabled :: proc(self: ^PreferencesDialog) -> glib.boolean ---

    @(link_name = "adw_preferences_dialog_set_search_enabled")
    preferences_dialog_set_search_enabled :: proc(self: ^PreferencesDialog, search_enabled: glib.boolean) ---

    @(link_name = "adw_preferences_dialog_push_subpage")
    preferences_dialog_push_subpage :: proc(self: ^PreferencesDialog, page: ^NavigationPage) ---

    @(link_name = "adw_preferences_dialog_pop_subpage")
    preferences_dialog_pop_subpage :: proc(self: ^PreferencesDialog) -> glib.boolean ---

    @(link_name = "adw_preferences_dialog_add_toast")
    preferences_dialog_add_toast :: proc(self: ^PreferencesDialog, toast: ^Toast) ---

    @(link_name = "adw_preferences_window_get_type")
    preferences_window_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_preferences_window_new")
    preferences_window_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_preferences_window_add")
    preferences_window_add :: proc(self: ^PreferencesWindow, page: ^PreferencesPage) ---

    @(link_name = "adw_preferences_window_remove")
    preferences_window_remove :: proc(self: ^PreferencesWindow, page: ^PreferencesPage) ---

    @(link_name = "adw_preferences_window_get_visible_page")
    preferences_window_get_visible_page :: proc(self: ^PreferencesWindow) -> ^PreferencesPage ---

    @(link_name = "adw_preferences_window_set_visible_page")
    preferences_window_set_visible_page :: proc(self: ^PreferencesWindow, page: ^PreferencesPage) ---

    @(link_name = "adw_preferences_window_get_visible_page_name")
    preferences_window_get_visible_page_name :: proc(self: ^PreferencesWindow) -> cstring ---

    @(link_name = "adw_preferences_window_set_visible_page_name")
    preferences_window_set_visible_page_name :: proc(self: ^PreferencesWindow, name: cstring) ---

    @(link_name = "adw_preferences_window_get_search_enabled")
    preferences_window_get_search_enabled :: proc(self: ^PreferencesWindow) -> glib.boolean ---

    @(link_name = "adw_preferences_window_set_search_enabled")
    preferences_window_set_search_enabled :: proc(self: ^PreferencesWindow, search_enabled: glib.boolean) ---

    @(link_name = "adw_preferences_window_get_can_navigate_back")
    preferences_window_get_can_navigate_back :: proc(self: ^PreferencesWindow) -> glib.boolean ---

    @(link_name = "adw_preferences_window_set_can_navigate_back")
    preferences_window_set_can_navigate_back :: proc(self: ^PreferencesWindow, can_navigate_back: glib.boolean) ---

    @(link_name = "adw_preferences_window_present_subpage")
    preferences_window_present_subpage :: proc(self: ^PreferencesWindow, subpage: ^gtk.Widget) ---

    @(link_name = "adw_preferences_window_close_subpage")
    preferences_window_close_subpage :: proc(self: ^PreferencesWindow) ---

    @(link_name = "adw_preferences_window_push_subpage")
    preferences_window_push_subpage :: proc(self: ^PreferencesWindow, page: ^NavigationPage) ---

    @(link_name = "adw_preferences_window_pop_subpage")
    preferences_window_pop_subpage :: proc(self: ^PreferencesWindow) -> glib.boolean ---

    @(link_name = "adw_preferences_window_add_toast")
    preferences_window_add_toast :: proc(self: ^PreferencesWindow, toast: ^Toast) ---

    @(link_name = "adw_spin_row_get_type")
    spin_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_spin_row_new")
    spin_row_new :: proc(adjustment: ^gtk.Adjustment, climb_rate: f64, digits: glib.uint_) -> ^gtk.Widget ---

    @(link_name = "adw_spin_row_new_with_range")
    spin_row_new_with_range :: proc(min: f64, max: f64, step: f64) -> ^gtk.Widget ---

    @(link_name = "adw_spin_row_configure")
    spin_row_configure :: proc(self: ^SpinRow, adjustment: ^gtk.Adjustment, climb_rate: f64, digits: glib.uint_) ---

    @(link_name = "adw_spin_row_get_adjustment")
    spin_row_get_adjustment :: proc(self: ^SpinRow) -> ^gtk.Adjustment ---

    @(link_name = "adw_spin_row_set_adjustment")
    spin_row_set_adjustment :: proc(self: ^SpinRow, adjustment: ^gtk.Adjustment) ---

    @(link_name = "adw_spin_row_get_climb_rate")
    spin_row_get_climb_rate :: proc(self: ^SpinRow) -> f64 ---

    @(link_name = "adw_spin_row_set_climb_rate")
    spin_row_set_climb_rate :: proc(self: ^SpinRow, climb_rate: f64) ---

    @(link_name = "adw_spin_row_get_digits")
    spin_row_get_digits :: proc(self: ^SpinRow) -> glib.uint_ ---

    @(link_name = "adw_spin_row_set_digits")
    spin_row_set_digits :: proc(self: ^SpinRow, digits: glib.uint_) ---

    @(link_name = "adw_spin_row_get_numeric")
    spin_row_get_numeric :: proc(self: ^SpinRow) -> glib.boolean ---

    @(link_name = "adw_spin_row_set_numeric")
    spin_row_set_numeric :: proc(self: ^SpinRow, numeric: glib.boolean) ---

    @(link_name = "adw_spin_row_get_snap_to_ticks")
    spin_row_get_snap_to_ticks :: proc(self: ^SpinRow) -> glib.boolean ---

    @(link_name = "adw_spin_row_set_snap_to_ticks")
    spin_row_set_snap_to_ticks :: proc(self: ^SpinRow, snap_to_ticks: glib.boolean) ---

    @(link_name = "adw_spin_row_get_update_policy")
    spin_row_get_update_policy :: proc(self: ^SpinRow) -> gtk.SpinButtonUpdatePolicy ---

    @(link_name = "adw_spin_row_set_update_policy")
    spin_row_set_update_policy :: proc(self: ^SpinRow, policy: gtk.SpinButtonUpdatePolicy) ---

    @(link_name = "adw_spin_row_get_value")
    spin_row_get_value :: proc(self: ^SpinRow) -> f64 ---

    @(link_name = "adw_spin_row_set_value")
    spin_row_set_value :: proc(self: ^SpinRow, value: f64) ---

    @(link_name = "adw_spin_row_get_wrap")
    spin_row_get_wrap :: proc(self: ^SpinRow) -> glib.boolean ---

    @(link_name = "adw_spin_row_set_wrap")
    spin_row_set_wrap :: proc(self: ^SpinRow, wrap: glib.boolean) ---

    @(link_name = "adw_spin_row_update")
    spin_row_update :: proc(self: ^SpinRow) ---

    @(link_name = "adw_spin_row_set_range")
    spin_row_set_range :: proc(self: ^SpinRow, min: f64, max: f64) ---

    @(link_name = "adw_spinner_get_type")
    spinner_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_spinner_new")
    spinner_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_spinner_paintable_get_type")
    spinner_paintable_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_spinner_paintable_new")
    spinner_paintable_new :: proc(widget: ^gtk.Widget) -> ^SpinnerPaintable ---

    @(link_name = "adw_spinner_paintable_get_widget")
    spinner_paintable_get_widget :: proc(self: ^SpinnerPaintable) -> ^gtk.Widget ---

    @(link_name = "adw_spinner_paintable_set_widget")
    spinner_paintable_set_widget :: proc(self: ^SpinnerPaintable, widget: ^gtk.Widget) ---

    @(link_name = "adw_split_button_get_type")
    split_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_split_button_new")
    split_button_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_split_button_get_label")
    split_button_get_label :: proc(self: ^SplitButton) -> cstring ---

    @(link_name = "adw_split_button_set_label")
    split_button_set_label :: proc(self: ^SplitButton, label: cstring) ---

    @(link_name = "adw_split_button_get_use_underline")
    split_button_get_use_underline :: proc(self: ^SplitButton) -> glib.boolean ---

    @(link_name = "adw_split_button_set_use_underline")
    split_button_set_use_underline :: proc(self: ^SplitButton, use_underline: glib.boolean) ---

    @(link_name = "adw_split_button_get_icon_name")
    split_button_get_icon_name :: proc(self: ^SplitButton) -> cstring ---

    @(link_name = "adw_split_button_set_icon_name")
    split_button_set_icon_name :: proc(self: ^SplitButton, icon_name: cstring) ---

    @(link_name = "adw_split_button_get_child")
    split_button_get_child :: proc(self: ^SplitButton) -> ^gtk.Widget ---

    @(link_name = "adw_split_button_set_child")
    split_button_set_child :: proc(self: ^SplitButton, child: ^gtk.Widget) ---

    @(link_name = "adw_split_button_get_can_shrink")
    split_button_get_can_shrink :: proc(self: ^SplitButton) -> glib.boolean ---

    @(link_name = "adw_split_button_set_can_shrink")
    split_button_set_can_shrink :: proc(self: ^SplitButton, can_shrink: glib.boolean) ---

    @(link_name = "adw_split_button_get_menu_model")
    split_button_get_menu_model :: proc(self: ^SplitButton) -> ^gio.MenuModel ---

    @(link_name = "adw_split_button_set_menu_model")
    split_button_set_menu_model :: proc(self: ^SplitButton, menu_model: ^gio.MenuModel) ---

    @(link_name = "adw_split_button_get_popover")
    split_button_get_popover :: proc(self: ^SplitButton) -> ^gtk.Popover ---

    @(link_name = "adw_split_button_set_popover")
    split_button_set_popover :: proc(self: ^SplitButton, popover: ^gtk.Popover) ---

    @(link_name = "adw_split_button_get_direction")
    split_button_get_direction :: proc(self: ^SplitButton) -> gtk.ArrowType ---

    @(link_name = "adw_split_button_set_direction")
    split_button_set_direction :: proc(self: ^SplitButton, direction: gtk.ArrowType) ---

    @(link_name = "adw_split_button_get_dropdown_tooltip")
    split_button_get_dropdown_tooltip :: proc(self: ^SplitButton) -> cstring ---

    @(link_name = "adw_split_button_set_dropdown_tooltip")
    split_button_set_dropdown_tooltip :: proc(self: ^SplitButton, tooltip: cstring) ---

    @(link_name = "adw_split_button_popup")
    split_button_popup :: proc(self: ^SplitButton) ---

    @(link_name = "adw_split_button_popdown")
    split_button_popdown :: proc(self: ^SplitButton) ---

    @(link_name = "adw_spring_animation_get_type")
    spring_animation_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_spring_animation_new")
    spring_animation_new :: proc(widget: ^gtk.Widget, from: f64, to: f64, spring_params: [^]SpringParams, target: ^AnimationTarget) -> ^Animation ---

    @(link_name = "adw_spring_animation_get_value_from")
    spring_animation_get_value_from :: proc(self: ^SpringAnimation) -> f64 ---

    @(link_name = "adw_spring_animation_set_value_from")
    spring_animation_set_value_from :: proc(self: ^SpringAnimation, value: f64) ---

    @(link_name = "adw_spring_animation_get_value_to")
    spring_animation_get_value_to :: proc(self: ^SpringAnimation) -> f64 ---

    @(link_name = "adw_spring_animation_set_value_to")
    spring_animation_set_value_to :: proc(self: ^SpringAnimation, value: f64) ---

    @(link_name = "adw_spring_animation_get_spring_params")
    spring_animation_get_spring_params :: proc(self: ^SpringAnimation) -> ^SpringParams ---

    @(link_name = "adw_spring_animation_set_spring_params")
    spring_animation_set_spring_params :: proc(self: ^SpringAnimation, spring_params: [^]SpringParams) ---

    @(link_name = "adw_spring_animation_get_initial_velocity")
    spring_animation_get_initial_velocity :: proc(self: ^SpringAnimation) -> f64 ---

    @(link_name = "adw_spring_animation_set_initial_velocity")
    spring_animation_set_initial_velocity :: proc(self: ^SpringAnimation, velocity: f64) ---

    @(link_name = "adw_spring_animation_get_epsilon")
    spring_animation_get_epsilon :: proc(self: ^SpringAnimation) -> f64 ---

    @(link_name = "adw_spring_animation_set_epsilon")
    spring_animation_set_epsilon :: proc(self: ^SpringAnimation, epsilon: f64) ---

    @(link_name = "adw_spring_animation_get_clamp")
    spring_animation_get_clamp :: proc(self: ^SpringAnimation) -> glib.boolean ---

    @(link_name = "adw_spring_animation_set_clamp")
    spring_animation_set_clamp :: proc(self: ^SpringAnimation, clamp: glib.boolean) ---

    @(link_name = "adw_spring_animation_get_estimated_duration")
    spring_animation_get_estimated_duration :: proc(self: ^SpringAnimation) -> glib.uint_ ---

    @(link_name = "adw_spring_animation_get_velocity")
    spring_animation_get_velocity :: proc(self: ^SpringAnimation) -> f64 ---

    @(link_name = "adw_spring_animation_calculate_value")
    spring_animation_calculate_value :: proc(self: ^SpringAnimation, time: glib.uint_) -> f64 ---

    @(link_name = "adw_spring_animation_calculate_velocity")
    spring_animation_calculate_velocity :: proc(self: ^SpringAnimation, time: glib.uint_) -> f64 ---

    @(link_name = "adw_squeezer_page_get_type")
    squeezer_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_squeezer_page_get_child")
    squeezer_page_get_child :: proc(self: ^SqueezerPage) -> ^gtk.Widget ---

    @(link_name = "adw_squeezer_page_get_enabled")
    squeezer_page_get_enabled :: proc(self: ^SqueezerPage) -> glib.boolean ---

    @(link_name = "adw_squeezer_page_set_enabled")
    squeezer_page_set_enabled :: proc(self: ^SqueezerPage, enabled: glib.boolean) ---

    @(link_name = "adw_squeezer_get_type")
    squeezer_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_squeezer_new")
    squeezer_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_squeezer_add")
    squeezer_add :: proc(self: ^Squeezer, child: ^gtk.Widget) -> ^SqueezerPage ---

    @(link_name = "adw_squeezer_remove")
    squeezer_remove :: proc(self: ^Squeezer, child: ^gtk.Widget) ---

    @(link_name = "adw_squeezer_get_page")
    squeezer_get_page :: proc(self: ^Squeezer, child: ^gtk.Widget) -> ^SqueezerPage ---

    @(link_name = "adw_squeezer_get_visible_child")
    squeezer_get_visible_child :: proc(self: ^Squeezer) -> ^gtk.Widget ---

    @(link_name = "adw_squeezer_get_homogeneous")
    squeezer_get_homogeneous :: proc(self: ^Squeezer) -> glib.boolean ---

    @(link_name = "adw_squeezer_set_homogeneous")
    squeezer_set_homogeneous :: proc(self: ^Squeezer, homogeneous: glib.boolean) ---

    @(link_name = "adw_squeezer_get_switch_threshold_policy")
    squeezer_get_switch_threshold_policy :: proc(self: ^Squeezer) -> FoldThresholdPolicy ---

    @(link_name = "adw_squeezer_set_switch_threshold_policy")
    squeezer_set_switch_threshold_policy :: proc(self: ^Squeezer, policy: FoldThresholdPolicy) ---

    @(link_name = "adw_squeezer_get_allow_none")
    squeezer_get_allow_none :: proc(self: ^Squeezer) -> glib.boolean ---

    @(link_name = "adw_squeezer_set_allow_none")
    squeezer_set_allow_none :: proc(self: ^Squeezer, allow_none: glib.boolean) ---

    @(link_name = "adw_squeezer_get_transition_duration")
    squeezer_get_transition_duration :: proc(self: ^Squeezer) -> glib.uint_ ---

    @(link_name = "adw_squeezer_set_transition_duration")
    squeezer_set_transition_duration :: proc(self: ^Squeezer, duration: glib.uint_) ---

    @(link_name = "adw_squeezer_get_transition_type")
    squeezer_get_transition_type :: proc(self: ^Squeezer) -> SqueezerTransitionType ---

    @(link_name = "adw_squeezer_set_transition_type")
    squeezer_set_transition_type :: proc(self: ^Squeezer, transition: SqueezerTransitionType) ---

    @(link_name = "adw_squeezer_get_transition_running")
    squeezer_get_transition_running :: proc(self: ^Squeezer) -> glib.boolean ---

    @(link_name = "adw_squeezer_get_interpolate_size")
    squeezer_get_interpolate_size :: proc(self: ^Squeezer) -> glib.boolean ---

    @(link_name = "adw_squeezer_set_interpolate_size")
    squeezer_set_interpolate_size :: proc(self: ^Squeezer, interpolate_size: glib.boolean) ---

    @(link_name = "adw_squeezer_get_xalign")
    squeezer_get_xalign :: proc(self: ^Squeezer) -> f32 ---

    @(link_name = "adw_squeezer_set_xalign")
    squeezer_set_xalign :: proc(self: ^Squeezer, xalign: f32) ---

    @(link_name = "adw_squeezer_get_yalign")
    squeezer_get_yalign :: proc(self: ^Squeezer) -> f32 ---

    @(link_name = "adw_squeezer_set_yalign")
    squeezer_set_yalign :: proc(self: ^Squeezer, yalign: f32) ---

    @(link_name = "adw_squeezer_get_pages")
    squeezer_get_pages :: proc(self: ^Squeezer) -> ^gtk.SelectionModel ---

    @(link_name = "adw_status_page_get_type")
    status_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_status_page_new")
    status_page_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_status_page_get_icon_name")
    status_page_get_icon_name :: proc(self: ^StatusPage) -> cstring ---

    @(link_name = "adw_status_page_set_icon_name")
    status_page_set_icon_name :: proc(self: ^StatusPage, icon_name: cstring) ---

    @(link_name = "adw_status_page_get_paintable")
    status_page_get_paintable :: proc(self: ^StatusPage) -> ^gtk.Paintable ---

    @(link_name = "adw_status_page_set_paintable")
    status_page_set_paintable :: proc(self: ^StatusPage, paintable: ^gtk.Paintable) ---

    @(link_name = "adw_status_page_get_title")
    status_page_get_title :: proc(self: ^StatusPage) -> cstring ---

    @(link_name = "adw_status_page_set_title")
    status_page_set_title :: proc(self: ^StatusPage, title: cstring) ---

    @(link_name = "adw_status_page_get_description")
    status_page_get_description :: proc(self: ^StatusPage) -> cstring ---

    @(link_name = "adw_status_page_set_description")
    status_page_set_description :: proc(self: ^StatusPage, description: cstring) ---

    @(link_name = "adw_status_page_get_child")
    status_page_get_child :: proc(self: ^StatusPage) -> ^gtk.Widget ---

    @(link_name = "adw_status_page_set_child")
    status_page_set_child :: proc(self: ^StatusPage, child: ^gtk.Widget) ---

    @(link_name = "adw_swipeable_get_type")
    swipeable_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_swipeable_get_distance")
    swipeable_get_distance :: proc(self: ^Swipeable) -> f64 ---

    @(link_name = "adw_swipeable_get_snap_points")
    swipeable_get_snap_points :: proc(self: ^Swipeable, n_snap_points: [^]i32) -> ^f64 ---

    @(link_name = "adw_swipeable_get_progress")
    swipeable_get_progress :: proc(self: ^Swipeable) -> f64 ---

    @(link_name = "adw_swipeable_get_cancel_progress")
    swipeable_get_cancel_progress :: proc(self: ^Swipeable) -> f64 ---

    @(link_name = "adw_swipeable_get_swipe_area")
    swipeable_get_swipe_area :: proc(self: ^Swipeable, navigation_direction: NavigationDirection, is_drag: glib.boolean, rect: ^gtk.Rectangle) ---

    @(link_name = "adw_swipe_tracker_get_type")
    swipe_tracker_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_swipe_tracker_new")
    swipe_tracker_new :: proc(swipeable: ^Swipeable) -> ^SwipeTracker ---

    @(link_name = "adw_swipe_tracker_get_swipeable")
    swipe_tracker_get_swipeable :: proc(self: ^SwipeTracker) -> ^Swipeable ---

    @(link_name = "adw_swipe_tracker_get_enabled")
    swipe_tracker_get_enabled :: proc(self: ^SwipeTracker) -> glib.boolean ---

    @(link_name = "adw_swipe_tracker_set_enabled")
    swipe_tracker_set_enabled :: proc(self: ^SwipeTracker, enabled: glib.boolean) ---

    @(link_name = "adw_swipe_tracker_get_reversed")
    swipe_tracker_get_reversed :: proc(self: ^SwipeTracker) -> glib.boolean ---

    @(link_name = "adw_swipe_tracker_set_reversed")
    swipe_tracker_set_reversed :: proc(self: ^SwipeTracker, reversed: glib.boolean) ---

    @(link_name = "adw_swipe_tracker_get_allow_mouse_drag")
    swipe_tracker_get_allow_mouse_drag :: proc(self: ^SwipeTracker) -> glib.boolean ---

    @(link_name = "adw_swipe_tracker_set_allow_mouse_drag")
    swipe_tracker_set_allow_mouse_drag :: proc(self: ^SwipeTracker, allow_mouse_drag: glib.boolean) ---

    @(link_name = "adw_swipe_tracker_get_allow_long_swipes")
    swipe_tracker_get_allow_long_swipes :: proc(self: ^SwipeTracker) -> glib.boolean ---

    @(link_name = "adw_swipe_tracker_set_allow_long_swipes")
    swipe_tracker_set_allow_long_swipes :: proc(self: ^SwipeTracker, allow_long_swipes: glib.boolean) ---

    @(link_name = "adw_swipe_tracker_get_lower_overshoot")
    swipe_tracker_get_lower_overshoot :: proc(self: ^SwipeTracker) -> glib.boolean ---

    @(link_name = "adw_swipe_tracker_set_lower_overshoot")
    swipe_tracker_set_lower_overshoot :: proc(self: ^SwipeTracker, overshoot: glib.boolean) ---

    @(link_name = "adw_swipe_tracker_get_upper_overshoot")
    swipe_tracker_get_upper_overshoot :: proc(self: ^SwipeTracker) -> glib.boolean ---

    @(link_name = "adw_swipe_tracker_set_upper_overshoot")
    swipe_tracker_set_upper_overshoot :: proc(self: ^SwipeTracker, overshoot: glib.boolean) ---

    @(link_name = "adw_swipe_tracker_get_allow_window_handle")
    swipe_tracker_get_allow_window_handle :: proc(self: ^SwipeTracker) -> glib.boolean ---

    @(link_name = "adw_swipe_tracker_set_allow_window_handle")
    swipe_tracker_set_allow_window_handle :: proc(self: ^SwipeTracker, allow_window_handle: glib.boolean) ---

    @(link_name = "adw_swipe_tracker_shift_position")
    swipe_tracker_shift_position :: proc(self: ^SwipeTracker, delta: f64) ---

    @(link_name = "adw_switch_row_get_type")
    switch_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_switch_row_new")
    switch_row_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_switch_row_get_active")
    switch_row_get_active :: proc(self: ^SwitchRow) -> glib.boolean ---

    @(link_name = "adw_switch_row_set_active")
    switch_row_set_active :: proc(self: ^SwitchRow, is_active: glib.boolean) ---

    @(link_name = "adw_tab_page_get_type")
    tab_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_tab_page_get_child")
    tab_page_get_child :: proc(self: ^TabPage) -> ^gtk.Widget ---

    @(link_name = "adw_tab_page_get_parent")
    tab_page_get_parent :: proc(self: ^TabPage) -> ^TabPage ---

    @(link_name = "adw_tab_page_get_selected")
    tab_page_get_selected :: proc(self: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_page_get_pinned")
    tab_page_get_pinned :: proc(self: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_page_get_title")
    tab_page_get_title :: proc(self: ^TabPage) -> cstring ---

    @(link_name = "adw_tab_page_set_title")
    tab_page_set_title :: proc(self: ^TabPage, title: cstring) ---

    @(link_name = "adw_tab_page_get_tooltip")
    tab_page_get_tooltip :: proc(self: ^TabPage) -> cstring ---

    @(link_name = "adw_tab_page_set_tooltip")
    tab_page_set_tooltip :: proc(self: ^TabPage, tooltip: cstring) ---

    @(link_name = "adw_tab_page_get_icon")
    tab_page_get_icon :: proc(self: ^TabPage) -> ^gio.Icon ---

    @(link_name = "adw_tab_page_set_icon")
    tab_page_set_icon :: proc(self: ^TabPage, icon: ^gio.Icon) ---

    @(link_name = "adw_tab_page_get_loading")
    tab_page_get_loading :: proc(self: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_page_set_loading")
    tab_page_set_loading :: proc(self: ^TabPage, loading: glib.boolean) ---

    @(link_name = "adw_tab_page_get_indicator_icon")
    tab_page_get_indicator_icon :: proc(self: ^TabPage) -> ^gio.Icon ---

    @(link_name = "adw_tab_page_set_indicator_icon")
    tab_page_set_indicator_icon :: proc(self: ^TabPage, indicator_icon: ^gio.Icon) ---

    @(link_name = "adw_tab_page_get_indicator_tooltip")
    tab_page_get_indicator_tooltip :: proc(self: ^TabPage) -> cstring ---

    @(link_name = "adw_tab_page_set_indicator_tooltip")
    tab_page_set_indicator_tooltip :: proc(self: ^TabPage, tooltip: cstring) ---

    @(link_name = "adw_tab_page_get_indicator_activatable")
    tab_page_get_indicator_activatable :: proc(self: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_page_set_indicator_activatable")
    tab_page_set_indicator_activatable :: proc(self: ^TabPage, activatable: glib.boolean) ---

    @(link_name = "adw_tab_page_get_needs_attention")
    tab_page_get_needs_attention :: proc(self: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_page_set_needs_attention")
    tab_page_set_needs_attention :: proc(self: ^TabPage, needs_attention: glib.boolean) ---

    @(link_name = "adw_tab_page_get_keyword")
    tab_page_get_keyword :: proc(self: ^TabPage) -> cstring ---

    @(link_name = "adw_tab_page_set_keyword")
    tab_page_set_keyword :: proc(self: ^TabPage, keyword: cstring) ---

    @(link_name = "adw_tab_page_get_thumbnail_xalign")
    tab_page_get_thumbnail_xalign :: proc(self: ^TabPage) -> f32 ---

    @(link_name = "adw_tab_page_set_thumbnail_xalign")
    tab_page_set_thumbnail_xalign :: proc(self: ^TabPage, xalign: f32) ---

    @(link_name = "adw_tab_page_get_thumbnail_yalign")
    tab_page_get_thumbnail_yalign :: proc(self: ^TabPage) -> f32 ---

    @(link_name = "adw_tab_page_set_thumbnail_yalign")
    tab_page_set_thumbnail_yalign :: proc(self: ^TabPage, yalign: f32) ---

    @(link_name = "adw_tab_page_get_live_thumbnail")
    tab_page_get_live_thumbnail :: proc(self: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_page_set_live_thumbnail")
    tab_page_set_live_thumbnail :: proc(self: ^TabPage, live_thumbnail: glib.boolean) ---

    @(link_name = "adw_tab_page_invalidate_thumbnail")
    tab_page_invalidate_thumbnail :: proc(self: ^TabPage) ---

    @(link_name = "adw_tab_view_get_type")
    tab_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_tab_view_new")
    tab_view_new :: proc() -> ^TabView ---

    @(link_name = "adw_tab_view_get_n_pages")
    tab_view_get_n_pages :: proc(self: ^TabView) -> i32 ---

    @(link_name = "adw_tab_view_get_n_pinned_pages")
    tab_view_get_n_pinned_pages :: proc(self: ^TabView) -> i32 ---

    @(link_name = "adw_tab_view_get_is_transferring_page")
    tab_view_get_is_transferring_page :: proc(self: ^TabView) -> glib.boolean ---

    @(link_name = "adw_tab_view_get_selected_page")
    tab_view_get_selected_page :: proc(self: ^TabView) -> ^TabPage ---

    @(link_name = "adw_tab_view_set_selected_page")
    tab_view_set_selected_page :: proc(self: ^TabView, selected_page: ^TabPage) ---

    @(link_name = "adw_tab_view_select_previous_page")
    tab_view_select_previous_page :: proc(self: ^TabView) -> glib.boolean ---

    @(link_name = "adw_tab_view_select_next_page")
    tab_view_select_next_page :: proc(self: ^TabView) -> glib.boolean ---

    @(link_name = "adw_tab_view_get_default_icon")
    tab_view_get_default_icon :: proc(self: ^TabView) -> ^gio.Icon ---

    @(link_name = "adw_tab_view_set_default_icon")
    tab_view_set_default_icon :: proc(self: ^TabView, default_icon: ^gio.Icon) ---

    @(link_name = "adw_tab_view_get_menu_model")
    tab_view_get_menu_model :: proc(self: ^TabView) -> ^gio.MenuModel ---

    @(link_name = "adw_tab_view_set_menu_model")
    tab_view_set_menu_model :: proc(self: ^TabView, menu_model: ^gio.MenuModel) ---

    @(link_name = "adw_tab_view_get_shortcuts")
    tab_view_get_shortcuts :: proc(self: ^TabView) -> TabViewShortcuts ---

    @(link_name = "adw_tab_view_set_shortcuts")
    tab_view_set_shortcuts :: proc(self: ^TabView, shortcuts: TabViewShortcuts) ---

    @(link_name = "adw_tab_view_add_shortcuts")
    tab_view_add_shortcuts :: proc(self: ^TabView, shortcuts: TabViewShortcuts) ---

    @(link_name = "adw_tab_view_remove_shortcuts")
    tab_view_remove_shortcuts :: proc(self: ^TabView, shortcuts: TabViewShortcuts) ---

    @(link_name = "adw_tab_view_set_page_pinned")
    tab_view_set_page_pinned :: proc(self: ^TabView, page: ^TabPage, pinned: glib.boolean) ---

    @(link_name = "adw_tab_view_get_page")
    tab_view_get_page :: proc(self: ^TabView, child: ^gtk.Widget) -> ^TabPage ---

    @(link_name = "adw_tab_view_get_nth_page")
    tab_view_get_nth_page :: proc(self: ^TabView, position: i32) -> ^TabPage ---

    @(link_name = "adw_tab_view_get_page_position")
    tab_view_get_page_position :: proc(self: ^TabView, page: ^TabPage) -> i32 ---

    @(link_name = "adw_tab_view_add_page")
    tab_view_add_page :: proc(self: ^TabView, child: ^gtk.Widget, parent: ^TabPage) -> ^TabPage ---

    @(link_name = "adw_tab_view_insert")
    tab_view_insert :: proc(self: ^TabView, child: ^gtk.Widget, position: i32) -> ^TabPage ---

    @(link_name = "adw_tab_view_prepend")
    tab_view_prepend :: proc(self: ^TabView, child: ^gtk.Widget) -> ^TabPage ---

    @(link_name = "adw_tab_view_append")
    tab_view_append :: proc(self: ^TabView, child: ^gtk.Widget) -> ^TabPage ---

    @(link_name = "adw_tab_view_insert_pinned")
    tab_view_insert_pinned :: proc(self: ^TabView, child: ^gtk.Widget, position: i32) -> ^TabPage ---

    @(link_name = "adw_tab_view_prepend_pinned")
    tab_view_prepend_pinned :: proc(self: ^TabView, child: ^gtk.Widget) -> ^TabPage ---

    @(link_name = "adw_tab_view_append_pinned")
    tab_view_append_pinned :: proc(self: ^TabView, child: ^gtk.Widget) -> ^TabPage ---

    @(link_name = "adw_tab_view_close_page")
    tab_view_close_page :: proc(self: ^TabView, page: ^TabPage) ---

    @(link_name = "adw_tab_view_close_page_finish")
    tab_view_close_page_finish :: proc(self: ^TabView, page: ^TabPage, confirm: glib.boolean) ---

    @(link_name = "adw_tab_view_close_other_pages")
    tab_view_close_other_pages :: proc(self: ^TabView, page: ^TabPage) ---

    @(link_name = "adw_tab_view_close_pages_before")
    tab_view_close_pages_before :: proc(self: ^TabView, page: ^TabPage) ---

    @(link_name = "adw_tab_view_close_pages_after")
    tab_view_close_pages_after :: proc(self: ^TabView, page: ^TabPage) ---

    @(link_name = "adw_tab_view_reorder_page")
    tab_view_reorder_page :: proc(self: ^TabView, page: ^TabPage, position: i32) -> glib.boolean ---

    @(link_name = "adw_tab_view_reorder_backward")
    tab_view_reorder_backward :: proc(self: ^TabView, page: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_view_reorder_forward")
    tab_view_reorder_forward :: proc(self: ^TabView, page: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_view_reorder_first")
    tab_view_reorder_first :: proc(self: ^TabView, page: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_view_reorder_last")
    tab_view_reorder_last :: proc(self: ^TabView, page: ^TabPage) -> glib.boolean ---

    @(link_name = "adw_tab_view_transfer_page")
    tab_view_transfer_page :: proc(self: ^TabView, page: ^TabPage, other_view: ^TabView, position: i32) ---

    @(link_name = "adw_tab_view_get_pages")
    tab_view_get_pages :: proc(self: ^TabView) -> ^gtk.SelectionModel ---

    @(link_name = "adw_tab_view_invalidate_thumbnails")
    tab_view_invalidate_thumbnails :: proc(self: ^TabView) ---

    @(link_name = "adw_tab_bar_get_type")
    tab_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_tab_bar_new")
    tab_bar_new :: proc() -> ^TabBar ---

    @(link_name = "adw_tab_bar_get_view")
    tab_bar_get_view :: proc(self: ^TabBar) -> ^TabView ---

    @(link_name = "adw_tab_bar_set_view")
    tab_bar_set_view :: proc(self: ^TabBar, view: ^TabView) ---

    @(link_name = "adw_tab_bar_get_start_action_widget")
    tab_bar_get_start_action_widget :: proc(self: ^TabBar) -> ^gtk.Widget ---

    @(link_name = "adw_tab_bar_set_start_action_widget")
    tab_bar_set_start_action_widget :: proc(self: ^TabBar, widget: ^gtk.Widget) ---

    @(link_name = "adw_tab_bar_get_end_action_widget")
    tab_bar_get_end_action_widget :: proc(self: ^TabBar) -> ^gtk.Widget ---

    @(link_name = "adw_tab_bar_set_end_action_widget")
    tab_bar_set_end_action_widget :: proc(self: ^TabBar, widget: ^gtk.Widget) ---

    @(link_name = "adw_tab_bar_get_autohide")
    tab_bar_get_autohide :: proc(self: ^TabBar) -> glib.boolean ---

    @(link_name = "adw_tab_bar_set_autohide")
    tab_bar_set_autohide :: proc(self: ^TabBar, autohide: glib.boolean) ---

    @(link_name = "adw_tab_bar_get_tabs_revealed")
    tab_bar_get_tabs_revealed :: proc(self: ^TabBar) -> glib.boolean ---

    @(link_name = "adw_tab_bar_get_expand_tabs")
    tab_bar_get_expand_tabs :: proc(self: ^TabBar) -> glib.boolean ---

    @(link_name = "adw_tab_bar_set_expand_tabs")
    tab_bar_set_expand_tabs :: proc(self: ^TabBar, expand_tabs: glib.boolean) ---

    @(link_name = "adw_tab_bar_get_inverted")
    tab_bar_get_inverted :: proc(self: ^TabBar) -> glib.boolean ---

    @(link_name = "adw_tab_bar_set_inverted")
    tab_bar_set_inverted :: proc(self: ^TabBar, inverted: glib.boolean) ---

    @(link_name = "adw_tab_bar_setup_extra_drop_target")
    tab_bar_setup_extra_drop_target :: proc(self: ^TabBar, actions: gtk.DragAction, types: [^]gobj.Type, n_types: glib.size) ---

    @(link_name = "adw_tab_bar_get_extra_drag_preferred_action")
    tab_bar_get_extra_drag_preferred_action :: proc(self: ^TabBar) -> gtk.DragAction ---

    @(link_name = "adw_tab_bar_get_extra_drag_preload")
    tab_bar_get_extra_drag_preload :: proc(self: ^TabBar) -> glib.boolean ---

    @(link_name = "adw_tab_bar_set_extra_drag_preload")
    tab_bar_set_extra_drag_preload :: proc(self: ^TabBar, preload: glib.boolean) ---

    @(link_name = "adw_tab_bar_get_is_overflowing")
    tab_bar_get_is_overflowing :: proc(self: ^TabBar) -> glib.boolean ---

    @(link_name = "adw_tab_button_get_type")
    tab_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_tab_button_new")
    tab_button_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_tab_button_get_view")
    tab_button_get_view :: proc(self: ^TabButton) -> ^TabView ---

    @(link_name = "adw_tab_button_set_view")
    tab_button_set_view :: proc(self: ^TabButton, view: ^TabView) ---

    @(link_name = "adw_tab_overview_get_type")
    tab_overview_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_tab_overview_new")
    tab_overview_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_tab_overview_get_view")
    tab_overview_get_view :: proc(self: ^TabOverview) -> ^TabView ---

    @(link_name = "adw_tab_overview_set_view")
    tab_overview_set_view :: proc(self: ^TabOverview, view: ^TabView) ---

    @(link_name = "adw_tab_overview_get_child")
    tab_overview_get_child :: proc(self: ^TabOverview) -> ^gtk.Widget ---

    @(link_name = "adw_tab_overview_set_child")
    tab_overview_set_child :: proc(self: ^TabOverview, child: ^gtk.Widget) ---

    @(link_name = "adw_tab_overview_get_open")
    tab_overview_get_open :: proc(self: ^TabOverview) -> glib.boolean ---

    @(link_name = "adw_tab_overview_set_open")
    tab_overview_set_open :: proc(self: ^TabOverview, open: glib.boolean) ---

    @(link_name = "adw_tab_overview_get_inverted")
    tab_overview_get_inverted :: proc(self: ^TabOverview) -> glib.boolean ---

    @(link_name = "adw_tab_overview_set_inverted")
    tab_overview_set_inverted :: proc(self: ^TabOverview, inverted: glib.boolean) ---

    @(link_name = "adw_tab_overview_get_enable_search")
    tab_overview_get_enable_search :: proc(self: ^TabOverview) -> glib.boolean ---

    @(link_name = "adw_tab_overview_set_enable_search")
    tab_overview_set_enable_search :: proc(self: ^TabOverview, enable_search: glib.boolean) ---

    @(link_name = "adw_tab_overview_get_search_active")
    tab_overview_get_search_active :: proc(self: ^TabOverview) -> glib.boolean ---

    @(link_name = "adw_tab_overview_get_enable_new_tab")
    tab_overview_get_enable_new_tab :: proc(self: ^TabOverview) -> glib.boolean ---

    @(link_name = "adw_tab_overview_set_enable_new_tab")
    tab_overview_set_enable_new_tab :: proc(self: ^TabOverview, enable_new_tab: glib.boolean) ---

    @(link_name = "adw_tab_overview_get_secondary_menu")
    tab_overview_get_secondary_menu :: proc(self: ^TabOverview) -> ^gio.MenuModel ---

    @(link_name = "adw_tab_overview_set_secondary_menu")
    tab_overview_set_secondary_menu :: proc(self: ^TabOverview, secondary_menu: ^gio.MenuModel) ---

    @(link_name = "adw_tab_overview_get_show_start_title_buttons")
    tab_overview_get_show_start_title_buttons :: proc(self: ^TabOverview) -> glib.boolean ---

    @(link_name = "adw_tab_overview_set_show_start_title_buttons")
    tab_overview_set_show_start_title_buttons :: proc(self: ^TabOverview, show_start_title_buttons: glib.boolean) ---

    @(link_name = "adw_tab_overview_get_show_end_title_buttons")
    tab_overview_get_show_end_title_buttons :: proc(self: ^TabOverview) -> glib.boolean ---

    @(link_name = "adw_tab_overview_set_show_end_title_buttons")
    tab_overview_set_show_end_title_buttons :: proc(self: ^TabOverview, show_end_title_buttons: glib.boolean) ---

    @(link_name = "adw_tab_overview_setup_extra_drop_target")
    tab_overview_setup_extra_drop_target :: proc(self: ^TabOverview, actions: gtk.DragAction, types: [^]gobj.Type, n_types: glib.size) ---

    @(link_name = "adw_tab_overview_get_extra_drag_preferred_action")
    tab_overview_get_extra_drag_preferred_action :: proc(self: ^TabOverview) -> gtk.DragAction ---

    @(link_name = "adw_tab_overview_get_extra_drag_preload")
    tab_overview_get_extra_drag_preload :: proc(self: ^TabOverview) -> glib.boolean ---

    @(link_name = "adw_tab_overview_set_extra_drag_preload")
    tab_overview_set_extra_drag_preload :: proc(self: ^TabOverview, preload: glib.boolean) ---

    @(link_name = "adw_timed_animation_get_type")
    timed_animation_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_timed_animation_new")
    timed_animation_new :: proc(widget: ^gtk.Widget, from: f64, to: f64, duration: glib.uint_, target: ^AnimationTarget) -> ^Animation ---

    @(link_name = "adw_timed_animation_get_value_from")
    timed_animation_get_value_from :: proc(self: ^TimedAnimation) -> f64 ---

    @(link_name = "adw_timed_animation_set_value_from")
    timed_animation_set_value_from :: proc(self: ^TimedAnimation, value: f64) ---

    @(link_name = "adw_timed_animation_get_value_to")
    timed_animation_get_value_to :: proc(self: ^TimedAnimation) -> f64 ---

    @(link_name = "adw_timed_animation_set_value_to")
    timed_animation_set_value_to :: proc(self: ^TimedAnimation, value: f64) ---

    @(link_name = "adw_timed_animation_get_duration")
    timed_animation_get_duration :: proc(self: ^TimedAnimation) -> glib.uint_ ---

    @(link_name = "adw_timed_animation_set_duration")
    timed_animation_set_duration :: proc(self: ^TimedAnimation, duration: glib.uint_) ---

    @(link_name = "adw_timed_animation_get_easing")
    timed_animation_get_easing :: proc(self: ^TimedAnimation) -> Easing ---

    @(link_name = "adw_timed_animation_set_easing")
    timed_animation_set_easing :: proc(self: ^TimedAnimation, easing: Easing) ---

    @(link_name = "adw_timed_animation_get_repeat_count")
    timed_animation_get_repeat_count :: proc(self: ^TimedAnimation) -> glib.uint_ ---

    @(link_name = "adw_timed_animation_set_repeat_count")
    timed_animation_set_repeat_count :: proc(self: ^TimedAnimation, repeat_count: glib.uint_) ---

    @(link_name = "adw_timed_animation_get_reverse")
    timed_animation_get_reverse :: proc(self: ^TimedAnimation) -> glib.boolean ---

    @(link_name = "adw_timed_animation_set_reverse")
    timed_animation_set_reverse :: proc(self: ^TimedAnimation, reverse: glib.boolean) ---

    @(link_name = "adw_timed_animation_get_alternate")
    timed_animation_get_alternate :: proc(self: ^TimedAnimation) -> glib.boolean ---

    @(link_name = "adw_timed_animation_set_alternate")
    timed_animation_set_alternate :: proc(self: ^TimedAnimation, alternate: glib.boolean) ---

    @(link_name = "adw_toast_overlay_get_type")
    toast_overlay_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_toast_overlay_new")
    toast_overlay_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_toast_overlay_get_child")
    toast_overlay_get_child :: proc(self: ^ToastOverlay) -> ^gtk.Widget ---

    @(link_name = "adw_toast_overlay_set_child")
    toast_overlay_set_child :: proc(self: ^ToastOverlay, child: ^gtk.Widget) ---

    @(link_name = "adw_toast_overlay_add_toast")
    toast_overlay_add_toast :: proc(self: ^ToastOverlay, toast: ^Toast) ---

    @(link_name = "adw_toast_overlay_dismiss_all")
    toast_overlay_dismiss_all :: proc(self: ^ToastOverlay) ---

    @(link_name = "adw_toggle_get_type")
    toggle_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_toggle_new")
    toggle_new :: proc() -> ^Toggle ---

    @(link_name = "adw_toggle_get_name")
    toggle_get_name :: proc(self: ^Toggle) -> cstring ---

    @(link_name = "adw_toggle_set_name")
    toggle_set_name :: proc(self: ^Toggle, name: cstring) ---

    @(link_name = "adw_toggle_get_label")
    toggle_get_label :: proc(self: ^Toggle) -> cstring ---

    @(link_name = "adw_toggle_set_label")
    toggle_set_label :: proc(self: ^Toggle, label: cstring) ---

    @(link_name = "adw_toggle_get_use_underline")
    toggle_get_use_underline :: proc(self: ^Toggle) -> glib.boolean ---

    @(link_name = "adw_toggle_set_use_underline")
    toggle_set_use_underline :: proc(self: ^Toggle, use_underline: glib.boolean) ---

    @(link_name = "adw_toggle_get_icon_name")
    toggle_get_icon_name :: proc(self: ^Toggle) -> cstring ---

    @(link_name = "adw_toggle_set_icon_name")
    toggle_set_icon_name :: proc(self: ^Toggle, icon_name: cstring) ---

    @(link_name = "adw_toggle_get_tooltip")
    toggle_get_tooltip :: proc(self: ^Toggle) -> cstring ---

    @(link_name = "adw_toggle_set_tooltip")
    toggle_set_tooltip :: proc(self: ^Toggle, tooltip: cstring) ---

    @(link_name = "adw_toggle_get_child")
    toggle_get_child :: proc(self: ^Toggle) -> ^gtk.Widget ---

    @(link_name = "adw_toggle_set_child")
    toggle_set_child :: proc(self: ^Toggle, child: ^gtk.Widget) ---

    @(link_name = "adw_toggle_get_enabled")
    toggle_get_enabled :: proc(self: ^Toggle) -> glib.boolean ---

    @(link_name = "adw_toggle_set_enabled")
    toggle_set_enabled :: proc(self: ^Toggle, enabled: glib.boolean) ---

    @(link_name = "adw_toggle_get_index")
    toggle_get_index :: proc(self: ^Toggle) -> glib.uint_ ---

    @(link_name = "adw_toggle_group_get_type")
    toggle_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_toggle_group_new")
    toggle_group_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_toggle_group_add")
    toggle_group_add :: proc(self: ^ToggleGroup, toggle: ^Toggle) ---

    @(link_name = "adw_toggle_group_remove")
    toggle_group_remove :: proc(self: ^ToggleGroup, toggle: ^Toggle) ---

    @(link_name = "adw_toggle_group_remove_all")
    toggle_group_remove_all :: proc(self: ^ToggleGroup) ---

    @(link_name = "adw_toggle_group_get_toggle")
    toggle_group_get_toggle :: proc(self: ^ToggleGroup, index: glib.uint_) -> ^Toggle ---

    @(link_name = "adw_toggle_group_get_toggle_by_name")
    toggle_group_get_toggle_by_name :: proc(self: ^ToggleGroup, name: cstring) -> ^Toggle ---

    @(link_name = "adw_toggle_group_get_n_toggles")
    toggle_group_get_n_toggles :: proc(self: ^ToggleGroup) -> glib.uint_ ---

    @(link_name = "adw_toggle_group_get_active")
    toggle_group_get_active :: proc(self: ^ToggleGroup) -> glib.uint_ ---

    @(link_name = "adw_toggle_group_set_active")
    toggle_group_set_active :: proc(self: ^ToggleGroup, active: glib.uint_) ---

    @(link_name = "adw_toggle_group_get_active_name")
    toggle_group_get_active_name :: proc(self: ^ToggleGroup) -> cstring ---

    @(link_name = "adw_toggle_group_set_active_name")
    toggle_group_set_active_name :: proc(self: ^ToggleGroup, name: cstring) ---

    @(link_name = "adw_toggle_group_get_homogeneous")
    toggle_group_get_homogeneous :: proc(self: ^ToggleGroup) -> glib.boolean ---

    @(link_name = "adw_toggle_group_set_homogeneous")
    toggle_group_set_homogeneous :: proc(self: ^ToggleGroup, homogeneous: glib.boolean) ---

    @(link_name = "adw_toggle_group_get_can_shrink")
    toggle_group_get_can_shrink :: proc(self: ^ToggleGroup) -> glib.boolean ---

    @(link_name = "adw_toggle_group_set_can_shrink")
    toggle_group_set_can_shrink :: proc(self: ^ToggleGroup, can_shrink: glib.boolean) ---

    @(link_name = "adw_toggle_group_get_toggles")
    toggle_group_get_toggles :: proc(self: ^ToggleGroup) -> ^gtk.SelectionModel ---

    @(link_name = "adw_toolbar_view_get_type")
    toolbar_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_toolbar_view_new")
    toolbar_view_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_toolbar_view_get_content")
    toolbar_view_get_content :: proc(self: ^ToolbarView) -> ^gtk.Widget ---

    @(link_name = "adw_toolbar_view_set_content")
    toolbar_view_set_content :: proc(self: ^ToolbarView, content: ^gtk.Widget) ---

    @(link_name = "adw_toolbar_view_add_top_bar")
    toolbar_view_add_top_bar :: proc(self: ^ToolbarView, widget: ^gtk.Widget) ---

    @(link_name = "adw_toolbar_view_add_bottom_bar")
    toolbar_view_add_bottom_bar :: proc(self: ^ToolbarView, widget: ^gtk.Widget) ---

    @(link_name = "adw_toolbar_view_remove")
    toolbar_view_remove :: proc(self: ^ToolbarView, widget: ^gtk.Widget) ---

    @(link_name = "adw_toolbar_view_get_top_bar_style")
    toolbar_view_get_top_bar_style :: proc(self: ^ToolbarView) -> ToolbarStyle ---

    @(link_name = "adw_toolbar_view_set_top_bar_style")
    toolbar_view_set_top_bar_style :: proc(self: ^ToolbarView, style: ToolbarStyle) ---

    @(link_name = "adw_toolbar_view_get_bottom_bar_style")
    toolbar_view_get_bottom_bar_style :: proc(self: ^ToolbarView) -> ToolbarStyle ---

    @(link_name = "adw_toolbar_view_set_bottom_bar_style")
    toolbar_view_set_bottom_bar_style :: proc(self: ^ToolbarView, style: ToolbarStyle) ---

    @(link_name = "adw_toolbar_view_get_reveal_top_bars")
    toolbar_view_get_reveal_top_bars :: proc(self: ^ToolbarView) -> glib.boolean ---

    @(link_name = "adw_toolbar_view_set_reveal_top_bars")
    toolbar_view_set_reveal_top_bars :: proc(self: ^ToolbarView, reveal: glib.boolean) ---

    @(link_name = "adw_toolbar_view_get_reveal_bottom_bars")
    toolbar_view_get_reveal_bottom_bars :: proc(self: ^ToolbarView) -> glib.boolean ---

    @(link_name = "adw_toolbar_view_set_reveal_bottom_bars")
    toolbar_view_set_reveal_bottom_bars :: proc(self: ^ToolbarView, reveal: glib.boolean) ---

    @(link_name = "adw_toolbar_view_get_extend_content_to_top_edge")
    toolbar_view_get_extend_content_to_top_edge :: proc(self: ^ToolbarView) -> glib.boolean ---

    @(link_name = "adw_toolbar_view_set_extend_content_to_top_edge")
    toolbar_view_set_extend_content_to_top_edge :: proc(self: ^ToolbarView, extend: glib.boolean) ---

    @(link_name = "adw_toolbar_view_get_extend_content_to_bottom_edge")
    toolbar_view_get_extend_content_to_bottom_edge :: proc(self: ^ToolbarView) -> glib.boolean ---

    @(link_name = "adw_toolbar_view_set_extend_content_to_bottom_edge")
    toolbar_view_set_extend_content_to_bottom_edge :: proc(self: ^ToolbarView, extend: glib.boolean) ---

    @(link_name = "adw_toolbar_view_get_top_bar_height")
    toolbar_view_get_top_bar_height :: proc(self: ^ToolbarView) -> i32 ---

    @(link_name = "adw_toolbar_view_get_bottom_bar_height")
    toolbar_view_get_bottom_bar_height :: proc(self: ^ToolbarView) -> i32 ---

    @(link_name = "adw_view_switcher_get_type")
    view_switcher_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_view_switcher_new")
    view_switcher_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_view_switcher_get_policy")
    view_switcher_get_policy :: proc(self: ^ViewSwitcher) -> ViewSwitcherPolicy ---

    @(link_name = "adw_view_switcher_set_policy")
    view_switcher_set_policy :: proc(self: ^ViewSwitcher, policy: ViewSwitcherPolicy) ---

    @(link_name = "adw_view_switcher_get_stack")
    view_switcher_get_stack :: proc(self: ^ViewSwitcher) -> ^ViewStack ---

    @(link_name = "adw_view_switcher_set_stack")
    view_switcher_set_stack :: proc(self: ^ViewSwitcher, stack: ^ViewStack) ---

    @(link_name = "adw_view_switcher_bar_get_type")
    view_switcher_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_view_switcher_bar_new")
    view_switcher_bar_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_view_switcher_bar_get_stack")
    view_switcher_bar_get_stack :: proc(self: ^ViewSwitcherBar) -> ^ViewStack ---

    @(link_name = "adw_view_switcher_bar_set_stack")
    view_switcher_bar_set_stack :: proc(self: ^ViewSwitcherBar, stack: ^ViewStack) ---

    @(link_name = "adw_view_switcher_bar_get_reveal")
    view_switcher_bar_get_reveal :: proc(self: ^ViewSwitcherBar) -> glib.boolean ---

    @(link_name = "adw_view_switcher_bar_set_reveal")
    view_switcher_bar_set_reveal :: proc(self: ^ViewSwitcherBar, reveal: glib.boolean) ---

    @(link_name = "adw_view_switcher_title_get_type")
    view_switcher_title_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_view_switcher_title_new")
    view_switcher_title_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_view_switcher_title_get_stack")
    view_switcher_title_get_stack :: proc(self: ^ViewSwitcherTitle) -> ^ViewStack ---

    @(link_name = "adw_view_switcher_title_set_stack")
    view_switcher_title_set_stack :: proc(self: ^ViewSwitcherTitle, stack: ^ViewStack) ---

    @(link_name = "adw_view_switcher_title_get_title")
    view_switcher_title_get_title :: proc(self: ^ViewSwitcherTitle) -> cstring ---

    @(link_name = "adw_view_switcher_title_set_title")
    view_switcher_title_set_title :: proc(self: ^ViewSwitcherTitle, title: cstring) ---

    @(link_name = "adw_view_switcher_title_get_subtitle")
    view_switcher_title_get_subtitle :: proc(self: ^ViewSwitcherTitle) -> cstring ---

    @(link_name = "adw_view_switcher_title_set_subtitle")
    view_switcher_title_set_subtitle :: proc(self: ^ViewSwitcherTitle, subtitle: cstring) ---

    @(link_name = "adw_view_switcher_title_get_view_switcher_enabled")
    view_switcher_title_get_view_switcher_enabled :: proc(self: ^ViewSwitcherTitle) -> glib.boolean ---

    @(link_name = "adw_view_switcher_title_set_view_switcher_enabled")
    view_switcher_title_set_view_switcher_enabled :: proc(self: ^ViewSwitcherTitle, enabled: glib.boolean) ---

    @(link_name = "adw_view_switcher_title_get_title_visible")
    view_switcher_title_get_title_visible :: proc(self: ^ViewSwitcherTitle) -> glib.boolean ---

    @(link_name = "adw_window_title_get_type")
    window_title_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_window_title_new")
    window_title_new :: proc(title: cstring, subtitle: cstring) -> ^gtk.Widget ---

    @(link_name = "adw_window_title_get_title")
    window_title_get_title :: proc(self: ^WindowTitle) -> cstring ---

    @(link_name = "adw_window_title_set_title")
    window_title_set_title :: proc(self: ^WindowTitle, title: cstring) ---

    @(link_name = "adw_window_title_get_subtitle")
    window_title_get_subtitle :: proc(self: ^WindowTitle) -> cstring ---

    @(link_name = "adw_window_title_set_subtitle")
    window_title_set_subtitle :: proc(self: ^WindowTitle, subtitle: cstring) ---

    @(link_name = "adw_wrap_layout_get_type")
    wrap_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_wrap_layout_new")
    wrap_layout_new :: proc() -> ^gtk.LayoutManager ---

    @(link_name = "adw_wrap_layout_get_child_spacing")
    wrap_layout_get_child_spacing :: proc(self: ^WrapLayout) -> i32 ---

    @(link_name = "adw_wrap_layout_set_child_spacing")
    wrap_layout_set_child_spacing :: proc(self: ^WrapLayout, child_spacing: i32) ---

    @(link_name = "adw_wrap_layout_get_child_spacing_unit")
    wrap_layout_get_child_spacing_unit :: proc(self: ^WrapLayout) -> LengthUnit ---

    @(link_name = "adw_wrap_layout_set_child_spacing_unit")
    wrap_layout_set_child_spacing_unit :: proc(self: ^WrapLayout, unit: LengthUnit) ---

    @(link_name = "adw_wrap_layout_get_pack_direction")
    wrap_layout_get_pack_direction :: proc(self: ^WrapLayout) -> PackDirection ---

    @(link_name = "adw_wrap_layout_set_pack_direction")
    wrap_layout_set_pack_direction :: proc(self: ^WrapLayout, pack_direction: PackDirection) ---

    @(link_name = "adw_wrap_layout_get_align")
    wrap_layout_get_align :: proc(self: ^WrapLayout) -> f32 ---

    @(link_name = "adw_wrap_layout_set_align")
    wrap_layout_set_align :: proc(self: ^WrapLayout, align: f32) ---

    @(link_name = "adw_wrap_layout_get_justify")
    wrap_layout_get_justify :: proc(self: ^WrapLayout) -> JustifyMode ---

    @(link_name = "adw_wrap_layout_set_justify")
    wrap_layout_set_justify :: proc(self: ^WrapLayout, justify: JustifyMode) ---

    @(link_name = "adw_wrap_layout_get_justify_last_line")
    wrap_layout_get_justify_last_line :: proc(self: ^WrapLayout) -> glib.boolean ---

    @(link_name = "adw_wrap_layout_set_justify_last_line")
    wrap_layout_set_justify_last_line :: proc(self: ^WrapLayout, justify_last_line: glib.boolean) ---

    @(link_name = "adw_wrap_layout_get_line_spacing")
    wrap_layout_get_line_spacing :: proc(self: ^WrapLayout) -> i32 ---

    @(link_name = "adw_wrap_layout_set_line_spacing")
    wrap_layout_set_line_spacing :: proc(self: ^WrapLayout, line_spacing: i32) ---

    @(link_name = "adw_wrap_layout_get_line_spacing_unit")
    wrap_layout_get_line_spacing_unit :: proc(self: ^WrapLayout) -> LengthUnit ---

    @(link_name = "adw_wrap_layout_set_line_spacing_unit")
    wrap_layout_set_line_spacing_unit :: proc(self: ^WrapLayout, unit: LengthUnit) ---

    @(link_name = "adw_wrap_layout_get_line_homogeneous")
    wrap_layout_get_line_homogeneous :: proc(self: ^WrapLayout) -> glib.boolean ---

    @(link_name = "adw_wrap_layout_set_line_homogeneous")
    wrap_layout_set_line_homogeneous :: proc(self: ^WrapLayout, homogeneous: glib.boolean) ---

    @(link_name = "adw_wrap_layout_get_natural_line_length")
    wrap_layout_get_natural_line_length :: proc(self: ^WrapLayout) -> i32 ---

    @(link_name = "adw_wrap_layout_set_natural_line_length")
    wrap_layout_set_natural_line_length :: proc(self: ^WrapLayout, natural_line_length: i32) ---

    @(link_name = "adw_wrap_layout_get_natural_line_length_unit")
    wrap_layout_get_natural_line_length_unit :: proc(self: ^WrapLayout) -> LengthUnit ---

    @(link_name = "adw_wrap_layout_set_natural_line_length_unit")
    wrap_layout_set_natural_line_length_unit :: proc(self: ^WrapLayout, unit: LengthUnit) ---

    @(link_name = "adw_wrap_layout_get_wrap_reverse")
    wrap_layout_get_wrap_reverse :: proc(self: ^WrapLayout) -> glib.boolean ---

    @(link_name = "adw_wrap_layout_set_wrap_reverse")
    wrap_layout_set_wrap_reverse :: proc(self: ^WrapLayout, wrap_reverse: glib.boolean) ---

    @(link_name = "adw_wrap_layout_get_wrap_policy")
    wrap_layout_get_wrap_policy :: proc(self: ^WrapLayout) -> WrapPolicy ---

    @(link_name = "adw_wrap_layout_set_wrap_policy")
    wrap_layout_set_wrap_policy :: proc(self: ^WrapLayout, wrap_policy: WrapPolicy) ---

    @(link_name = "adw_wrap_box_get_type")
    wrap_box_get_type :: proc() -> gobj.Type ---

    @(link_name = "adw_wrap_box_new")
    wrap_box_new :: proc() -> ^gtk.Widget ---

    @(link_name = "adw_wrap_box_get_child_spacing")
    wrap_box_get_child_spacing :: proc(self: ^WrapBox) -> i32 ---

    @(link_name = "adw_wrap_box_set_child_spacing")
    wrap_box_set_child_spacing :: proc(self: ^WrapBox, child_spacing: i32) ---

    @(link_name = "adw_wrap_box_get_child_spacing_unit")
    wrap_box_get_child_spacing_unit :: proc(self: ^WrapBox) -> LengthUnit ---

    @(link_name = "adw_wrap_box_set_child_spacing_unit")
    wrap_box_set_child_spacing_unit :: proc(self: ^WrapBox, unit: LengthUnit) ---

    @(link_name = "adw_wrap_box_get_pack_direction")
    wrap_box_get_pack_direction :: proc(self: ^WrapBox) -> PackDirection ---

    @(link_name = "adw_wrap_box_set_pack_direction")
    wrap_box_set_pack_direction :: proc(self: ^WrapBox, pack_direction: PackDirection) ---

    @(link_name = "adw_wrap_box_get_align")
    wrap_box_get_align :: proc(self: ^WrapBox) -> f32 ---

    @(link_name = "adw_wrap_box_set_align")
    wrap_box_set_align :: proc(self: ^WrapBox, align: f32) ---

    @(link_name = "adw_wrap_box_get_justify")
    wrap_box_get_justify :: proc(self: ^WrapBox) -> JustifyMode ---

    @(link_name = "adw_wrap_box_set_justify")
    wrap_box_set_justify :: proc(self: ^WrapBox, justify: JustifyMode) ---

    @(link_name = "adw_wrap_box_get_justify_last_line")
    wrap_box_get_justify_last_line :: proc(self: ^WrapBox) -> glib.boolean ---

    @(link_name = "adw_wrap_box_set_justify_last_line")
    wrap_box_set_justify_last_line :: proc(self: ^WrapBox, justify_last_line: glib.boolean) ---

    @(link_name = "adw_wrap_box_get_line_spacing")
    wrap_box_get_line_spacing :: proc(self: ^WrapBox) -> i32 ---

    @(link_name = "adw_wrap_box_set_line_spacing")
    wrap_box_set_line_spacing :: proc(self: ^WrapBox, line_spacing: i32) ---

    @(link_name = "adw_wrap_box_get_line_spacing_unit")
    wrap_box_get_line_spacing_unit :: proc(self: ^WrapBox) -> LengthUnit ---

    @(link_name = "adw_wrap_box_set_line_spacing_unit")
    wrap_box_set_line_spacing_unit :: proc(self: ^WrapBox, unit: LengthUnit) ---

    @(link_name = "adw_wrap_box_get_line_homogeneous")
    wrap_box_get_line_homogeneous :: proc(self: ^WrapBox) -> glib.boolean ---

    @(link_name = "adw_wrap_box_set_line_homogeneous")
    wrap_box_set_line_homogeneous :: proc(self: ^WrapBox, homogeneous: glib.boolean) ---

    @(link_name = "adw_wrap_box_get_natural_line_length")
    wrap_box_get_natural_line_length :: proc(self: ^WrapBox) -> i32 ---

    @(link_name = "adw_wrap_box_set_natural_line_length")
    wrap_box_set_natural_line_length :: proc(self: ^WrapBox, natural_line_length: i32) ---

    @(link_name = "adw_wrap_box_get_natural_line_length_unit")
    wrap_box_get_natural_line_length_unit :: proc(self: ^WrapBox) -> LengthUnit ---

    @(link_name = "adw_wrap_box_set_natural_line_length_unit")
    wrap_box_set_natural_line_length_unit :: proc(self: ^WrapBox, unit: LengthUnit) ---

    @(link_name = "adw_wrap_box_get_wrap_reverse")
    wrap_box_get_wrap_reverse :: proc(self: ^WrapBox) -> glib.boolean ---

    @(link_name = "adw_wrap_box_set_wrap_reverse")
    wrap_box_set_wrap_reverse :: proc(self: ^WrapBox, wrap_reverse: glib.boolean) ---

    @(link_name = "adw_wrap_box_get_wrap_policy")
    wrap_box_get_wrap_policy :: proc(self: ^WrapBox) -> WrapPolicy ---

    @(link_name = "adw_wrap_box_set_wrap_policy")
    wrap_box_set_wrap_policy :: proc(self: ^WrapBox, wrap_policy: WrapPolicy) ---

    @(link_name = "adw_wrap_box_insert_child_after")
    wrap_box_insert_child_after :: proc(self: ^WrapBox, child: ^gtk.Widget, sibling: ^gtk.Widget) ---

    @(link_name = "adw_wrap_box_reorder_child_after")
    wrap_box_reorder_child_after :: proc(self: ^WrapBox, child: ^gtk.Widget, sibling: ^gtk.Widget) ---

    @(link_name = "adw_wrap_box_append")
    wrap_box_append :: proc(self: ^WrapBox, child: ^gtk.Widget) ---

    @(link_name = "adw_wrap_box_prepend")
    wrap_box_prepend :: proc(self: ^WrapBox, child: ^gtk.Widget) ---

    @(link_name = "adw_wrap_box_remove")
    wrap_box_remove :: proc(self: ^WrapBox, child: ^gtk.Widget) ---

    @(link_name = "glib_autoptr_clear_AdwBreakpointCondition_wrapper")
    autoptr_clear_AdwBreakpointCondition :: proc(_ptr: ^BreakpointCondition) ---

    @(link_name = "glib_autoptr_cleanup_AdwBreakpointCondition_wrapper")
    autoptr_cleanup_AdwBreakpointCondition :: proc(_ptr: ^^BreakpointCondition) ---

    @(link_name = "glib_autoptr_destroy_AdwBreakpointCondition_wrapper")
    autoptr_destroy_AdwBreakpointCondition :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBreakpointCondition_wrapper")
    listautoptr_cleanup_AdwBreakpointCondition :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBreakpointCondition_wrapper")
    slistautoptr_cleanup_AdwBreakpointCondition :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBreakpointCondition_wrapper")
    queueautoptr_cleanup_AdwBreakpointCondition :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwBreakpoint_wrapper")
    autoptr_clear_AdwBreakpoint :: proc(_ptr: ^Breakpoint) ---

    @(link_name = "glib_autoptr_cleanup_AdwBreakpoint_wrapper")
    autoptr_cleanup_AdwBreakpoint :: proc(_ptr: ^^Breakpoint) ---

    @(link_name = "glib_autoptr_destroy_AdwBreakpoint_wrapper")
    autoptr_destroy_AdwBreakpoint :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBreakpoint_wrapper")
    listautoptr_cleanup_AdwBreakpoint :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBreakpoint_wrapper")
    slistautoptr_cleanup_AdwBreakpoint :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBreakpoint_wrapper")
    queueautoptr_cleanup_AdwBreakpoint :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwBreakpointClass_wrapper")
    autoptr_clear_AdwBreakpointClass :: proc(_ptr: ^BreakpointClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwBreakpointClass_wrapper")
    autoptr_cleanup_AdwBreakpointClass :: proc(_ptr: ^^BreakpointClass) ---

    @(link_name = "glib_autoptr_destroy_AdwBreakpointClass_wrapper")
    autoptr_destroy_AdwBreakpointClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBreakpointClass_wrapper")
    listautoptr_cleanup_AdwBreakpointClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBreakpointClass_wrapper")
    slistautoptr_cleanup_AdwBreakpointClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBreakpointClass_wrapper")
    queueautoptr_cleanup_AdwBreakpointClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_BREAKPOINT_wrapper")
    BREAKPOINT :: proc(ptr: glib.pointer) -> ^Breakpoint ---

    @(link_name = "ADW_IS_BREAKPOINT_wrapper")
    IS_BREAKPOINT :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwDialog_wrapper")
    autoptr_clear_AdwDialog :: proc(_ptr: ^Dialog) ---

    @(link_name = "glib_autoptr_cleanup_AdwDialog_wrapper")
    autoptr_cleanup_AdwDialog :: proc(_ptr: ^^Dialog) ---

    @(link_name = "glib_autoptr_destroy_AdwDialog_wrapper")
    autoptr_destroy_AdwDialog :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwDialog_wrapper")
    listautoptr_cleanup_AdwDialog :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwDialog_wrapper")
    slistautoptr_cleanup_AdwDialog :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwDialog_wrapper")
    queueautoptr_cleanup_AdwDialog :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwDialogClass_wrapper")
    autoptr_clear_AdwDialogClass :: proc(_ptr: ^DialogClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwDialogClass_wrapper")
    autoptr_cleanup_AdwDialogClass :: proc(_ptr: ^^DialogClass) ---

    @(link_name = "glib_autoptr_destroy_AdwDialogClass_wrapper")
    autoptr_destroy_AdwDialogClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwDialogClass_wrapper")
    listautoptr_cleanup_AdwDialogClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwDialogClass_wrapper")
    slistautoptr_cleanup_AdwDialogClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwDialogClass_wrapper")
    queueautoptr_cleanup_AdwDialogClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_DIALOG_wrapper")
    DIALOG :: proc(ptr: glib.pointer) -> ^Dialog ---

    @(link_name = "ADW_DIALOG_CLASS_wrapper")
    DIALOG_CLASS :: proc(ptr: glib.pointer) -> ^DialogClass ---

    @(link_name = "ADW_IS_DIALOG_wrapper")
    IS_DIALOG :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_DIALOG_CLASS_wrapper")
    IS_DIALOG_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_DIALOG_GET_CLASS_wrapper")
    DIALOG_GET_CLASS :: proc(ptr: glib.pointer) -> ^DialogClass ---

    @(link_name = "glib_autoptr_clear_AdwAboutDialog_wrapper")
    autoptr_clear_AdwAboutDialog :: proc(_ptr: ^AboutDialog) ---

    @(link_name = "glib_autoptr_cleanup_AdwAboutDialog_wrapper")
    autoptr_cleanup_AdwAboutDialog :: proc(_ptr: ^^AboutDialog) ---

    @(link_name = "glib_autoptr_destroy_AdwAboutDialog_wrapper")
    autoptr_destroy_AdwAboutDialog :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAboutDialog_wrapper")
    listautoptr_cleanup_AdwAboutDialog :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAboutDialog_wrapper")
    slistautoptr_cleanup_AdwAboutDialog :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAboutDialog_wrapper")
    queueautoptr_cleanup_AdwAboutDialog :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwAboutDialogClass_wrapper")
    autoptr_clear_AdwAboutDialogClass :: proc(_ptr: ^AboutDialogClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwAboutDialogClass_wrapper")
    autoptr_cleanup_AdwAboutDialogClass :: proc(_ptr: ^^AboutDialogClass) ---

    @(link_name = "glib_autoptr_destroy_AdwAboutDialogClass_wrapper")
    autoptr_destroy_AdwAboutDialogClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAboutDialogClass_wrapper")
    listautoptr_cleanup_AdwAboutDialogClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAboutDialogClass_wrapper")
    slistautoptr_cleanup_AdwAboutDialogClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAboutDialogClass_wrapper")
    queueautoptr_cleanup_AdwAboutDialogClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ABOUT_DIALOG_wrapper")
    ABOUT_DIALOG :: proc(ptr: glib.pointer) -> ^AboutDialog ---

    @(link_name = "ADW_IS_ABOUT_DIALOG_wrapper")
    IS_ABOUT_DIALOG :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwWindow_wrapper")
    autoptr_clear_AdwWindow :: proc(_ptr: ^Window) ---

    @(link_name = "glib_autoptr_cleanup_AdwWindow_wrapper")
    autoptr_cleanup_AdwWindow :: proc(_ptr: ^^Window) ---

    @(link_name = "glib_autoptr_destroy_AdwWindow_wrapper")
    autoptr_destroy_AdwWindow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwWindow_wrapper")
    listautoptr_cleanup_AdwWindow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwWindow_wrapper")
    slistautoptr_cleanup_AdwWindow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwWindow_wrapper")
    queueautoptr_cleanup_AdwWindow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwWindowClass_wrapper")
    autoptr_clear_AdwWindowClass :: proc(_ptr: ^WindowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwWindowClass_wrapper")
    autoptr_cleanup_AdwWindowClass :: proc(_ptr: ^^WindowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwWindowClass_wrapper")
    autoptr_destroy_AdwWindowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwWindowClass_wrapper")
    listautoptr_cleanup_AdwWindowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwWindowClass_wrapper")
    slistautoptr_cleanup_AdwWindowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwWindowClass_wrapper")
    queueautoptr_cleanup_AdwWindowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_WINDOW_wrapper")
    WINDOW :: proc(ptr: glib.pointer) -> ^Window ---

    @(link_name = "ADW_WINDOW_CLASS_wrapper")
    WINDOW_CLASS :: proc(ptr: glib.pointer) -> ^WindowClass ---

    @(link_name = "ADW_IS_WINDOW_wrapper")
    IS_WINDOW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_WINDOW_CLASS_wrapper")
    IS_WINDOW_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_WINDOW_GET_CLASS_wrapper")
    WINDOW_GET_CLASS :: proc(ptr: glib.pointer) -> ^WindowClass ---

    @(link_name = "glib_autoptr_clear_AdwAboutWindow_wrapper")
    autoptr_clear_AdwAboutWindow :: proc(_ptr: ^AboutWindow) ---

    @(link_name = "glib_autoptr_cleanup_AdwAboutWindow_wrapper")
    autoptr_cleanup_AdwAboutWindow :: proc(_ptr: ^^AboutWindow) ---

    @(link_name = "glib_autoptr_destroy_AdwAboutWindow_wrapper")
    autoptr_destroy_AdwAboutWindow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAboutWindow_wrapper")
    listautoptr_cleanup_AdwAboutWindow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAboutWindow_wrapper")
    slistautoptr_cleanup_AdwAboutWindow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAboutWindow_wrapper")
    queueautoptr_cleanup_AdwAboutWindow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwAboutWindowClass_wrapper")
    autoptr_clear_AdwAboutWindowClass :: proc(_ptr: ^AboutWindowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwAboutWindowClass_wrapper")
    autoptr_cleanup_AdwAboutWindowClass :: proc(_ptr: ^^AboutWindowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwAboutWindowClass_wrapper")
    autoptr_destroy_AdwAboutWindowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAboutWindowClass_wrapper")
    listautoptr_cleanup_AdwAboutWindowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAboutWindowClass_wrapper")
    slistautoptr_cleanup_AdwAboutWindowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAboutWindowClass_wrapper")
    queueautoptr_cleanup_AdwAboutWindowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ABOUT_WINDOW_wrapper")
    ABOUT_WINDOW :: proc(ptr: glib.pointer) -> ^AboutWindow ---

    @(link_name = "ADW_IS_ABOUT_WINDOW_wrapper")
    IS_ABOUT_WINDOW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesRow_wrapper")
    autoptr_clear_AdwPreferencesRow :: proc(_ptr: ^PreferencesRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesRow_wrapper")
    autoptr_cleanup_AdwPreferencesRow :: proc(_ptr: ^^PreferencesRow) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesRow_wrapper")
    autoptr_destroy_AdwPreferencesRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesRow_wrapper")
    listautoptr_cleanup_AdwPreferencesRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesRow_wrapper")
    slistautoptr_cleanup_AdwPreferencesRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesRow_wrapper")
    queueautoptr_cleanup_AdwPreferencesRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesRowClass_wrapper")
    autoptr_clear_AdwPreferencesRowClass :: proc(_ptr: ^PreferencesRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesRowClass_wrapper")
    autoptr_cleanup_AdwPreferencesRowClass :: proc(_ptr: ^^PreferencesRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesRowClass_wrapper")
    autoptr_destroy_AdwPreferencesRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesRowClass_wrapper")
    listautoptr_cleanup_AdwPreferencesRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesRowClass_wrapper")
    slistautoptr_cleanup_AdwPreferencesRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesRowClass_wrapper")
    queueautoptr_cleanup_AdwPreferencesRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_PREFERENCES_ROW_wrapper")
    PREFERENCES_ROW :: proc(ptr: glib.pointer) -> ^PreferencesRow ---

    @(link_name = "ADW_PREFERENCES_ROW_CLASS_wrapper")
    PREFERENCES_ROW_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesRowClass ---

    @(link_name = "ADW_IS_PREFERENCES_ROW_wrapper")
    IS_PREFERENCES_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_PREFERENCES_ROW_CLASS_wrapper")
    IS_PREFERENCES_ROW_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_PREFERENCES_ROW_GET_CLASS_wrapper")
    PREFERENCES_ROW_GET_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesRowClass ---

    @(link_name = "glib_autoptr_clear_AdwActionRow_wrapper")
    autoptr_clear_AdwActionRow :: proc(_ptr: ^ActionRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwActionRow_wrapper")
    autoptr_cleanup_AdwActionRow :: proc(_ptr: ^^ActionRow) ---

    @(link_name = "glib_autoptr_destroy_AdwActionRow_wrapper")
    autoptr_destroy_AdwActionRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwActionRow_wrapper")
    listautoptr_cleanup_AdwActionRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwActionRow_wrapper")
    slistautoptr_cleanup_AdwActionRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwActionRow_wrapper")
    queueautoptr_cleanup_AdwActionRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwActionRowClass_wrapper")
    autoptr_clear_AdwActionRowClass :: proc(_ptr: ^ActionRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwActionRowClass_wrapper")
    autoptr_cleanup_AdwActionRowClass :: proc(_ptr: ^^ActionRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwActionRowClass_wrapper")
    autoptr_destroy_AdwActionRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwActionRowClass_wrapper")
    listautoptr_cleanup_AdwActionRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwActionRowClass_wrapper")
    slistautoptr_cleanup_AdwActionRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwActionRowClass_wrapper")
    queueautoptr_cleanup_AdwActionRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ACTION_ROW_wrapper")
    ACTION_ROW :: proc(ptr: glib.pointer) -> ^ActionRow ---

    @(link_name = "ADW_ACTION_ROW_CLASS_wrapper")
    ACTION_ROW_CLASS :: proc(ptr: glib.pointer) -> ^ActionRowClass ---

    @(link_name = "ADW_IS_ACTION_ROW_wrapper")
    IS_ACTION_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_ACTION_ROW_CLASS_wrapper")
    IS_ACTION_ROW_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_ACTION_ROW_GET_CLASS_wrapper")
    ACTION_ROW_GET_CLASS :: proc(ptr: glib.pointer) -> ^ActionRowClass ---

    @(link_name = "glib_autoptr_clear_AdwAlertDialog_wrapper")
    autoptr_clear_AdwAlertDialog :: proc(_ptr: ^AlertDialog) ---

    @(link_name = "glib_autoptr_cleanup_AdwAlertDialog_wrapper")
    autoptr_cleanup_AdwAlertDialog :: proc(_ptr: ^^AlertDialog) ---

    @(link_name = "glib_autoptr_destroy_AdwAlertDialog_wrapper")
    autoptr_destroy_AdwAlertDialog :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAlertDialog_wrapper")
    listautoptr_cleanup_AdwAlertDialog :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAlertDialog_wrapper")
    slistautoptr_cleanup_AdwAlertDialog :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAlertDialog_wrapper")
    queueautoptr_cleanup_AdwAlertDialog :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwAlertDialogClass_wrapper")
    autoptr_clear_AdwAlertDialogClass :: proc(_ptr: ^AlertDialogClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwAlertDialogClass_wrapper")
    autoptr_cleanup_AdwAlertDialogClass :: proc(_ptr: ^^AlertDialogClass) ---

    @(link_name = "glib_autoptr_destroy_AdwAlertDialogClass_wrapper")
    autoptr_destroy_AdwAlertDialogClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAlertDialogClass_wrapper")
    listautoptr_cleanup_AdwAlertDialogClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAlertDialogClass_wrapper")
    slistautoptr_cleanup_AdwAlertDialogClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAlertDialogClass_wrapper")
    queueautoptr_cleanup_AdwAlertDialogClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ALERT_DIALOG_wrapper")
    ALERT_DIALOG :: proc(ptr: glib.pointer) -> ^AlertDialog ---

    @(link_name = "ADW_ALERT_DIALOG_CLASS_wrapper")
    ALERT_DIALOG_CLASS :: proc(ptr: glib.pointer) -> ^AlertDialogClass ---

    @(link_name = "ADW_IS_ALERT_DIALOG_wrapper")
    IS_ALERT_DIALOG :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_ALERT_DIALOG_CLASS_wrapper")
    IS_ALERT_DIALOG_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_ALERT_DIALOG_GET_CLASS_wrapper")
    ALERT_DIALOG_GET_CLASS :: proc(ptr: glib.pointer) -> ^AlertDialogClass ---

    @(link_name = "glib_autoptr_clear_AdwAnimationTarget_wrapper")
    autoptr_clear_AdwAnimationTarget :: proc(_ptr: ^AnimationTarget) ---

    @(link_name = "glib_autoptr_cleanup_AdwAnimationTarget_wrapper")
    autoptr_cleanup_AdwAnimationTarget :: proc(_ptr: ^^AnimationTarget) ---

    @(link_name = "glib_autoptr_destroy_AdwAnimationTarget_wrapper")
    autoptr_destroy_AdwAnimationTarget :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAnimationTarget_wrapper")
    listautoptr_cleanup_AdwAnimationTarget :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAnimationTarget_wrapper")
    slistautoptr_cleanup_AdwAnimationTarget :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAnimationTarget_wrapper")
    queueautoptr_cleanup_AdwAnimationTarget :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwAnimationTargetClass_wrapper")
    autoptr_clear_AdwAnimationTargetClass :: proc(_ptr: ^AnimationTargetClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwAnimationTargetClass_wrapper")
    autoptr_cleanup_AdwAnimationTargetClass :: proc(_ptr: ^^AnimationTargetClass) ---

    @(link_name = "glib_autoptr_destroy_AdwAnimationTargetClass_wrapper")
    autoptr_destroy_AdwAnimationTargetClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAnimationTargetClass_wrapper")
    listautoptr_cleanup_AdwAnimationTargetClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAnimationTargetClass_wrapper")
    slistautoptr_cleanup_AdwAnimationTargetClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAnimationTargetClass_wrapper")
    queueautoptr_cleanup_AdwAnimationTargetClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ANIMATION_TARGET_wrapper")
    ANIMATION_TARGET :: proc(ptr: glib.pointer) -> ^AnimationTarget ---

    @(link_name = "ADW_ANIMATION_TARGET_CLASS_wrapper")
    ANIMATION_TARGET_CLASS :: proc(ptr: glib.pointer) -> ^AnimationTargetClass ---

    @(link_name = "ADW_IS_ANIMATION_TARGET_wrapper")
    IS_ANIMATION_TARGET :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_ANIMATION_TARGET_CLASS_wrapper")
    IS_ANIMATION_TARGET_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_ANIMATION_TARGET_GET_CLASS_wrapper")
    ANIMATION_TARGET_GET_CLASS :: proc(ptr: glib.pointer) -> ^AnimationTargetClass ---

    @(link_name = "glib_autoptr_clear_AdwCallbackAnimationTarget_wrapper")
    autoptr_clear_AdwCallbackAnimationTarget :: proc(_ptr: ^CallbackAnimationTarget) ---

    @(link_name = "glib_autoptr_cleanup_AdwCallbackAnimationTarget_wrapper")
    autoptr_cleanup_AdwCallbackAnimationTarget :: proc(_ptr: ^^CallbackAnimationTarget) ---

    @(link_name = "glib_autoptr_destroy_AdwCallbackAnimationTarget_wrapper")
    autoptr_destroy_AdwCallbackAnimationTarget :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwCallbackAnimationTarget_wrapper")
    listautoptr_cleanup_AdwCallbackAnimationTarget :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwCallbackAnimationTarget_wrapper")
    slistautoptr_cleanup_AdwCallbackAnimationTarget :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwCallbackAnimationTarget_wrapper")
    queueautoptr_cleanup_AdwCallbackAnimationTarget :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwCallbackAnimationTargetClass_wrapper")
    autoptr_clear_AdwCallbackAnimationTargetClass :: proc(_ptr: ^CallbackAnimationTargetClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwCallbackAnimationTargetClass_wrapper")
    autoptr_cleanup_AdwCallbackAnimationTargetClass :: proc(_ptr: ^^CallbackAnimationTargetClass) ---

    @(link_name = "glib_autoptr_destroy_AdwCallbackAnimationTargetClass_wrapper")
    autoptr_destroy_AdwCallbackAnimationTargetClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwCallbackAnimationTargetClass_wrapper")
    listautoptr_cleanup_AdwCallbackAnimationTargetClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwCallbackAnimationTargetClass_wrapper")
    slistautoptr_cleanup_AdwCallbackAnimationTargetClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwCallbackAnimationTargetClass_wrapper")
    queueautoptr_cleanup_AdwCallbackAnimationTargetClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_CALLBACK_ANIMATION_TARGET_wrapper")
    CALLBACK_ANIMATION_TARGET :: proc(ptr: glib.pointer) -> ^CallbackAnimationTarget ---

    @(link_name = "ADW_CALLBACK_ANIMATION_TARGET_CLASS_wrapper")
    CALLBACK_ANIMATION_TARGET_CLASS :: proc(ptr: glib.pointer) -> ^CallbackAnimationTargetClass ---

    @(link_name = "ADW_IS_CALLBACK_ANIMATION_TARGET_wrapper")
    IS_CALLBACK_ANIMATION_TARGET :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_CALLBACK_ANIMATION_TARGET_CLASS_wrapper")
    IS_CALLBACK_ANIMATION_TARGET_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_CALLBACK_ANIMATION_TARGET_GET_CLASS_wrapper")
    CALLBACK_ANIMATION_TARGET_GET_CLASS :: proc(ptr: glib.pointer) -> ^CallbackAnimationTargetClass ---

    @(link_name = "glib_autoptr_clear_AdwPropertyAnimationTarget_wrapper")
    autoptr_clear_AdwPropertyAnimationTarget :: proc(_ptr: ^PropertyAnimationTarget) ---

    @(link_name = "glib_autoptr_cleanup_AdwPropertyAnimationTarget_wrapper")
    autoptr_cleanup_AdwPropertyAnimationTarget :: proc(_ptr: ^^PropertyAnimationTarget) ---

    @(link_name = "glib_autoptr_destroy_AdwPropertyAnimationTarget_wrapper")
    autoptr_destroy_AdwPropertyAnimationTarget :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPropertyAnimationTarget_wrapper")
    listautoptr_cleanup_AdwPropertyAnimationTarget :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPropertyAnimationTarget_wrapper")
    slistautoptr_cleanup_AdwPropertyAnimationTarget :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPropertyAnimationTarget_wrapper")
    queueautoptr_cleanup_AdwPropertyAnimationTarget :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwPropertyAnimationTargetClass_wrapper")
    autoptr_clear_AdwPropertyAnimationTargetClass :: proc(_ptr: ^PropertyAnimationTargetClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwPropertyAnimationTargetClass_wrapper")
    autoptr_cleanup_AdwPropertyAnimationTargetClass :: proc(_ptr: ^^PropertyAnimationTargetClass) ---

    @(link_name = "glib_autoptr_destroy_AdwPropertyAnimationTargetClass_wrapper")
    autoptr_destroy_AdwPropertyAnimationTargetClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPropertyAnimationTargetClass_wrapper")
    listautoptr_cleanup_AdwPropertyAnimationTargetClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPropertyAnimationTargetClass_wrapper")
    slistautoptr_cleanup_AdwPropertyAnimationTargetClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPropertyAnimationTargetClass_wrapper")
    queueautoptr_cleanup_AdwPropertyAnimationTargetClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_PROPERTY_ANIMATION_TARGET_wrapper")
    PROPERTY_ANIMATION_TARGET :: proc(ptr: glib.pointer) -> ^PropertyAnimationTarget ---

    @(link_name = "ADW_PROPERTY_ANIMATION_TARGET_CLASS_wrapper")
    PROPERTY_ANIMATION_TARGET_CLASS :: proc(ptr: glib.pointer) -> ^PropertyAnimationTargetClass ---

    @(link_name = "ADW_IS_PROPERTY_ANIMATION_TARGET_wrapper")
    IS_PROPERTY_ANIMATION_TARGET :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_PROPERTY_ANIMATION_TARGET_CLASS_wrapper")
    IS_PROPERTY_ANIMATION_TARGET_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_PROPERTY_ANIMATION_TARGET_GET_CLASS_wrapper")
    PROPERTY_ANIMATION_TARGET_GET_CLASS :: proc(ptr: glib.pointer) -> ^PropertyAnimationTargetClass ---

    @(link_name = "glib_autoptr_clear_AdwAnimation_wrapper")
    autoptr_clear_AdwAnimation :: proc(_ptr: ^Animation) ---

    @(link_name = "glib_autoptr_cleanup_AdwAnimation_wrapper")
    autoptr_cleanup_AdwAnimation :: proc(_ptr: ^^Animation) ---

    @(link_name = "glib_autoptr_destroy_AdwAnimation_wrapper")
    autoptr_destroy_AdwAnimation :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAnimation_wrapper")
    listautoptr_cleanup_AdwAnimation :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAnimation_wrapper")
    slistautoptr_cleanup_AdwAnimation :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAnimation_wrapper")
    queueautoptr_cleanup_AdwAnimation :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwAnimationClass_wrapper")
    autoptr_clear_AdwAnimationClass :: proc(_ptr: ^AnimationClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwAnimationClass_wrapper")
    autoptr_cleanup_AdwAnimationClass :: proc(_ptr: ^^AnimationClass) ---

    @(link_name = "glib_autoptr_destroy_AdwAnimationClass_wrapper")
    autoptr_destroy_AdwAnimationClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAnimationClass_wrapper")
    listautoptr_cleanup_AdwAnimationClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAnimationClass_wrapper")
    slistautoptr_cleanup_AdwAnimationClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAnimationClass_wrapper")
    queueautoptr_cleanup_AdwAnimationClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ANIMATION_wrapper")
    ANIMATION :: proc(ptr: glib.pointer) -> ^Animation ---

    @(link_name = "ADW_ANIMATION_CLASS_wrapper")
    ANIMATION_CLASS :: proc(ptr: glib.pointer) -> ^AnimationClass ---

    @(link_name = "ADW_IS_ANIMATION_wrapper")
    IS_ANIMATION :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_ANIMATION_CLASS_wrapper")
    IS_ANIMATION_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_ANIMATION_GET_CLASS_wrapper")
    ANIMATION_GET_CLASS :: proc(ptr: glib.pointer) -> ^AnimationClass ---

    @(link_name = "glib_autoptr_clear_AdwStyleManager_wrapper")
    autoptr_clear_AdwStyleManager :: proc(_ptr: ^StyleManager) ---

    @(link_name = "glib_autoptr_cleanup_AdwStyleManager_wrapper")
    autoptr_cleanup_AdwStyleManager :: proc(_ptr: ^^StyleManager) ---

    @(link_name = "glib_autoptr_destroy_AdwStyleManager_wrapper")
    autoptr_destroy_AdwStyleManager :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwStyleManager_wrapper")
    listautoptr_cleanup_AdwStyleManager :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwStyleManager_wrapper")
    slistautoptr_cleanup_AdwStyleManager :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwStyleManager_wrapper")
    queueautoptr_cleanup_AdwStyleManager :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwStyleManagerClass_wrapper")
    autoptr_clear_AdwStyleManagerClass :: proc(_ptr: ^StyleManagerClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwStyleManagerClass_wrapper")
    autoptr_cleanup_AdwStyleManagerClass :: proc(_ptr: ^^StyleManagerClass) ---

    @(link_name = "glib_autoptr_destroy_AdwStyleManagerClass_wrapper")
    autoptr_destroy_AdwStyleManagerClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwStyleManagerClass_wrapper")
    listautoptr_cleanup_AdwStyleManagerClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwStyleManagerClass_wrapper")
    slistautoptr_cleanup_AdwStyleManagerClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwStyleManagerClass_wrapper")
    queueautoptr_cleanup_AdwStyleManagerClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_STYLE_MANAGER_wrapper")
    STYLE_MANAGER :: proc(ptr: glib.pointer) -> ^StyleManager ---

    @(link_name = "ADW_IS_STYLE_MANAGER_wrapper")
    IS_STYLE_MANAGER :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwApplication_wrapper")
    autoptr_clear_AdwApplication :: proc(_ptr: ^Application) ---

    @(link_name = "glib_autoptr_cleanup_AdwApplication_wrapper")
    autoptr_cleanup_AdwApplication :: proc(_ptr: ^^Application) ---

    @(link_name = "glib_autoptr_destroy_AdwApplication_wrapper")
    autoptr_destroy_AdwApplication :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwApplication_wrapper")
    listautoptr_cleanup_AdwApplication :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwApplication_wrapper")
    slistautoptr_cleanup_AdwApplication :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwApplication_wrapper")
    queueautoptr_cleanup_AdwApplication :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwApplicationClass_wrapper")
    autoptr_clear_AdwApplicationClass :: proc(_ptr: ^ApplicationClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwApplicationClass_wrapper")
    autoptr_cleanup_AdwApplicationClass :: proc(_ptr: ^^ApplicationClass) ---

    @(link_name = "glib_autoptr_destroy_AdwApplicationClass_wrapper")
    autoptr_destroy_AdwApplicationClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwApplicationClass_wrapper")
    listautoptr_cleanup_AdwApplicationClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwApplicationClass_wrapper")
    slistautoptr_cleanup_AdwApplicationClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwApplicationClass_wrapper")
    queueautoptr_cleanup_AdwApplicationClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_APPLICATION_wrapper")
    APPLICATION :: proc(ptr: glib.pointer) -> ^Application ---

    @(link_name = "ADW_APPLICATION_CLASS_wrapper")
    APPLICATION_CLASS :: proc(ptr: glib.pointer) -> ^ApplicationClass ---

    @(link_name = "ADW_IS_APPLICATION_wrapper")
    IS_APPLICATION :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_APPLICATION_CLASS_wrapper")
    IS_APPLICATION_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_APPLICATION_GET_CLASS_wrapper")
    APPLICATION_GET_CLASS :: proc(ptr: glib.pointer) -> ^ApplicationClass ---

    @(link_name = "glib_autoptr_clear_AdwApplicationWindow_wrapper")
    autoptr_clear_AdwApplicationWindow :: proc(_ptr: ^ApplicationWindow) ---

    @(link_name = "glib_autoptr_cleanup_AdwApplicationWindow_wrapper")
    autoptr_cleanup_AdwApplicationWindow :: proc(_ptr: ^^ApplicationWindow) ---

    @(link_name = "glib_autoptr_destroy_AdwApplicationWindow_wrapper")
    autoptr_destroy_AdwApplicationWindow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwApplicationWindow_wrapper")
    listautoptr_cleanup_AdwApplicationWindow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwApplicationWindow_wrapper")
    slistautoptr_cleanup_AdwApplicationWindow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwApplicationWindow_wrapper")
    queueautoptr_cleanup_AdwApplicationWindow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwApplicationWindowClass_wrapper")
    autoptr_clear_AdwApplicationWindowClass :: proc(_ptr: ^ApplicationWindowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwApplicationWindowClass_wrapper")
    autoptr_cleanup_AdwApplicationWindowClass :: proc(_ptr: ^^ApplicationWindowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwApplicationWindowClass_wrapper")
    autoptr_destroy_AdwApplicationWindowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwApplicationWindowClass_wrapper")
    listautoptr_cleanup_AdwApplicationWindowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwApplicationWindowClass_wrapper")
    slistautoptr_cleanup_AdwApplicationWindowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwApplicationWindowClass_wrapper")
    queueautoptr_cleanup_AdwApplicationWindowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_APPLICATION_WINDOW_wrapper")
    APPLICATION_WINDOW :: proc(ptr: glib.pointer) -> ^ApplicationWindow ---

    @(link_name = "ADW_APPLICATION_WINDOW_CLASS_wrapper")
    APPLICATION_WINDOW_CLASS :: proc(ptr: glib.pointer) -> ^ApplicationWindowClass ---

    @(link_name = "ADW_IS_APPLICATION_WINDOW_wrapper")
    IS_APPLICATION_WINDOW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_APPLICATION_WINDOW_CLASS_wrapper")
    IS_APPLICATION_WINDOW_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_APPLICATION_WINDOW_GET_CLASS_wrapper")
    APPLICATION_WINDOW_GET_CLASS :: proc(ptr: glib.pointer) -> ^ApplicationWindowClass ---

    @(link_name = "glib_autoptr_clear_AdwAvatar_wrapper")
    autoptr_clear_AdwAvatar :: proc(_ptr: ^Avatar) ---

    @(link_name = "glib_autoptr_cleanup_AdwAvatar_wrapper")
    autoptr_cleanup_AdwAvatar :: proc(_ptr: ^^Avatar) ---

    @(link_name = "glib_autoptr_destroy_AdwAvatar_wrapper")
    autoptr_destroy_AdwAvatar :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAvatar_wrapper")
    listautoptr_cleanup_AdwAvatar :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAvatar_wrapper")
    slistautoptr_cleanup_AdwAvatar :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAvatar_wrapper")
    queueautoptr_cleanup_AdwAvatar :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwAvatarClass_wrapper")
    autoptr_clear_AdwAvatarClass :: proc(_ptr: ^AvatarClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwAvatarClass_wrapper")
    autoptr_cleanup_AdwAvatarClass :: proc(_ptr: ^^AvatarClass) ---

    @(link_name = "glib_autoptr_destroy_AdwAvatarClass_wrapper")
    autoptr_destroy_AdwAvatarClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwAvatarClass_wrapper")
    listautoptr_cleanup_AdwAvatarClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwAvatarClass_wrapper")
    slistautoptr_cleanup_AdwAvatarClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwAvatarClass_wrapper")
    queueautoptr_cleanup_AdwAvatarClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_AVATAR_wrapper")
    AVATAR :: proc(ptr: glib.pointer) -> ^Avatar ---

    @(link_name = "ADW_IS_AVATAR_wrapper")
    IS_AVATAR :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwBanner_wrapper")
    autoptr_clear_AdwBanner :: proc(_ptr: ^Banner) ---

    @(link_name = "glib_autoptr_cleanup_AdwBanner_wrapper")
    autoptr_cleanup_AdwBanner :: proc(_ptr: ^^Banner) ---

    @(link_name = "glib_autoptr_destroy_AdwBanner_wrapper")
    autoptr_destroy_AdwBanner :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBanner_wrapper")
    listautoptr_cleanup_AdwBanner :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBanner_wrapper")
    slistautoptr_cleanup_AdwBanner :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBanner_wrapper")
    queueautoptr_cleanup_AdwBanner :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwBannerClass_wrapper")
    autoptr_clear_AdwBannerClass :: proc(_ptr: ^BannerClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwBannerClass_wrapper")
    autoptr_cleanup_AdwBannerClass :: proc(_ptr: ^^BannerClass) ---

    @(link_name = "glib_autoptr_destroy_AdwBannerClass_wrapper")
    autoptr_destroy_AdwBannerClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBannerClass_wrapper")
    listautoptr_cleanup_AdwBannerClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBannerClass_wrapper")
    slistautoptr_cleanup_AdwBannerClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBannerClass_wrapper")
    queueautoptr_cleanup_AdwBannerClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_BANNER_wrapper")
    BANNER :: proc(ptr: glib.pointer) -> ^Banner ---

    @(link_name = "ADW_IS_BANNER_wrapper")
    IS_BANNER :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwBin_wrapper")
    autoptr_clear_AdwBin :: proc(_ptr: ^Bin) ---

    @(link_name = "glib_autoptr_cleanup_AdwBin_wrapper")
    autoptr_cleanup_AdwBin :: proc(_ptr: ^^Bin) ---

    @(link_name = "glib_autoptr_destroy_AdwBin_wrapper")
    autoptr_destroy_AdwBin :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBin_wrapper")
    listautoptr_cleanup_AdwBin :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBin_wrapper")
    slistautoptr_cleanup_AdwBin :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBin_wrapper")
    queueautoptr_cleanup_AdwBin :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwBinClass_wrapper")
    autoptr_clear_AdwBinClass :: proc(_ptr: ^BinClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwBinClass_wrapper")
    autoptr_cleanup_AdwBinClass :: proc(_ptr: ^^BinClass) ---

    @(link_name = "glib_autoptr_destroy_AdwBinClass_wrapper")
    autoptr_destroy_AdwBinClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBinClass_wrapper")
    listautoptr_cleanup_AdwBinClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBinClass_wrapper")
    slistautoptr_cleanup_AdwBinClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBinClass_wrapper")
    queueautoptr_cleanup_AdwBinClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_BIN_wrapper")
    BIN :: proc(ptr: glib.pointer) -> ^Bin ---

    @(link_name = "ADW_BIN_CLASS_wrapper")
    BIN_CLASS :: proc(ptr: glib.pointer) -> ^BinClass ---

    @(link_name = "ADW_IS_BIN_wrapper")
    IS_BIN :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_BIN_CLASS_wrapper")
    IS_BIN_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_BIN_GET_CLASS_wrapper")
    BIN_GET_CLASS :: proc(ptr: glib.pointer) -> ^BinClass ---

    @(link_name = "glib_autoptr_clear_AdwBottomSheet_wrapper")
    autoptr_clear_AdwBottomSheet :: proc(_ptr: ^BottomSheet) ---

    @(link_name = "glib_autoptr_cleanup_AdwBottomSheet_wrapper")
    autoptr_cleanup_AdwBottomSheet :: proc(_ptr: ^^BottomSheet) ---

    @(link_name = "glib_autoptr_destroy_AdwBottomSheet_wrapper")
    autoptr_destroy_AdwBottomSheet :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBottomSheet_wrapper")
    listautoptr_cleanup_AdwBottomSheet :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBottomSheet_wrapper")
    slistautoptr_cleanup_AdwBottomSheet :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBottomSheet_wrapper")
    queueautoptr_cleanup_AdwBottomSheet :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwBottomSheetClass_wrapper")
    autoptr_clear_AdwBottomSheetClass :: proc(_ptr: ^BottomSheetClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwBottomSheetClass_wrapper")
    autoptr_cleanup_AdwBottomSheetClass :: proc(_ptr: ^^BottomSheetClass) ---

    @(link_name = "glib_autoptr_destroy_AdwBottomSheetClass_wrapper")
    autoptr_destroy_AdwBottomSheetClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBottomSheetClass_wrapper")
    listautoptr_cleanup_AdwBottomSheetClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBottomSheetClass_wrapper")
    slistautoptr_cleanup_AdwBottomSheetClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBottomSheetClass_wrapper")
    queueautoptr_cleanup_AdwBottomSheetClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_BOTTOM_SHEET_wrapper")
    BOTTOM_SHEET :: proc(ptr: glib.pointer) -> ^BottomSheet ---

    @(link_name = "ADW_IS_BOTTOM_SHEET_wrapper")
    IS_BOTTOM_SHEET :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwBreakpointBin_wrapper")
    autoptr_clear_AdwBreakpointBin :: proc(_ptr: ^BreakpointBin) ---

    @(link_name = "glib_autoptr_cleanup_AdwBreakpointBin_wrapper")
    autoptr_cleanup_AdwBreakpointBin :: proc(_ptr: ^^BreakpointBin) ---

    @(link_name = "glib_autoptr_destroy_AdwBreakpointBin_wrapper")
    autoptr_destroy_AdwBreakpointBin :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBreakpointBin_wrapper")
    listautoptr_cleanup_AdwBreakpointBin :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBreakpointBin_wrapper")
    slistautoptr_cleanup_AdwBreakpointBin :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBreakpointBin_wrapper")
    queueautoptr_cleanup_AdwBreakpointBin :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwBreakpointBinClass_wrapper")
    autoptr_clear_AdwBreakpointBinClass :: proc(_ptr: ^BreakpointBinClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwBreakpointBinClass_wrapper")
    autoptr_cleanup_AdwBreakpointBinClass :: proc(_ptr: ^^BreakpointBinClass) ---

    @(link_name = "glib_autoptr_destroy_AdwBreakpointBinClass_wrapper")
    autoptr_destroy_AdwBreakpointBinClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwBreakpointBinClass_wrapper")
    listautoptr_cleanup_AdwBreakpointBinClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwBreakpointBinClass_wrapper")
    slistautoptr_cleanup_AdwBreakpointBinClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwBreakpointBinClass_wrapper")
    queueautoptr_cleanup_AdwBreakpointBinClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_BREAKPOINT_BIN_wrapper")
    BREAKPOINT_BIN :: proc(ptr: glib.pointer) -> ^BreakpointBin ---

    @(link_name = "ADW_BREAKPOINT_BIN_CLASS_wrapper")
    BREAKPOINT_BIN_CLASS :: proc(ptr: glib.pointer) -> ^BreakpointBinClass ---

    @(link_name = "ADW_IS_BREAKPOINT_BIN_wrapper")
    IS_BREAKPOINT_BIN :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_BREAKPOINT_BIN_CLASS_wrapper")
    IS_BREAKPOINT_BIN_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_BREAKPOINT_BIN_GET_CLASS_wrapper")
    BREAKPOINT_BIN_GET_CLASS :: proc(ptr: glib.pointer) -> ^BreakpointBinClass ---

    @(link_name = "glib_autoptr_clear_AdwButtonContent_wrapper")
    autoptr_clear_AdwButtonContent :: proc(_ptr: ^ButtonContent) ---

    @(link_name = "glib_autoptr_cleanup_AdwButtonContent_wrapper")
    autoptr_cleanup_AdwButtonContent :: proc(_ptr: ^^ButtonContent) ---

    @(link_name = "glib_autoptr_destroy_AdwButtonContent_wrapper")
    autoptr_destroy_AdwButtonContent :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwButtonContent_wrapper")
    listautoptr_cleanup_AdwButtonContent :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwButtonContent_wrapper")
    slistautoptr_cleanup_AdwButtonContent :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwButtonContent_wrapper")
    queueautoptr_cleanup_AdwButtonContent :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwButtonContentClass_wrapper")
    autoptr_clear_AdwButtonContentClass :: proc(_ptr: ^ButtonContentClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwButtonContentClass_wrapper")
    autoptr_cleanup_AdwButtonContentClass :: proc(_ptr: ^^ButtonContentClass) ---

    @(link_name = "glib_autoptr_destroy_AdwButtonContentClass_wrapper")
    autoptr_destroy_AdwButtonContentClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwButtonContentClass_wrapper")
    listautoptr_cleanup_AdwButtonContentClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwButtonContentClass_wrapper")
    slistautoptr_cleanup_AdwButtonContentClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwButtonContentClass_wrapper")
    queueautoptr_cleanup_AdwButtonContentClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_BUTTON_CONTENT_wrapper")
    BUTTON_CONTENT :: proc(ptr: glib.pointer) -> ^ButtonContent ---

    @(link_name = "ADW_IS_BUTTON_CONTENT_wrapper")
    IS_BUTTON_CONTENT :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwButtonRow_wrapper")
    autoptr_clear_AdwButtonRow :: proc(_ptr: ^ButtonRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwButtonRow_wrapper")
    autoptr_cleanup_AdwButtonRow :: proc(_ptr: ^^ButtonRow) ---

    @(link_name = "glib_autoptr_destroy_AdwButtonRow_wrapper")
    autoptr_destroy_AdwButtonRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwButtonRow_wrapper")
    listautoptr_cleanup_AdwButtonRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwButtonRow_wrapper")
    slistautoptr_cleanup_AdwButtonRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwButtonRow_wrapper")
    queueautoptr_cleanup_AdwButtonRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwButtonRowClass_wrapper")
    autoptr_clear_AdwButtonRowClass :: proc(_ptr: ^ButtonRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwButtonRowClass_wrapper")
    autoptr_cleanup_AdwButtonRowClass :: proc(_ptr: ^^ButtonRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwButtonRowClass_wrapper")
    autoptr_destroy_AdwButtonRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwButtonRowClass_wrapper")
    listautoptr_cleanup_AdwButtonRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwButtonRowClass_wrapper")
    slistautoptr_cleanup_AdwButtonRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwButtonRowClass_wrapper")
    queueautoptr_cleanup_AdwButtonRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_BUTTON_ROW_wrapper")
    BUTTON_ROW :: proc(ptr: glib.pointer) -> ^ButtonRow ---

    @(link_name = "ADW_IS_BUTTON_ROW_wrapper")
    IS_BUTTON_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwSpringParams_wrapper")
    autoptr_clear_AdwSpringParams :: proc(_ptr: ^SpringParams) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpringParams_wrapper")
    autoptr_cleanup_AdwSpringParams :: proc(_ptr: ^^SpringParams) ---

    @(link_name = "glib_autoptr_destroy_AdwSpringParams_wrapper")
    autoptr_destroy_AdwSpringParams :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpringParams_wrapper")
    listautoptr_cleanup_AdwSpringParams :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpringParams_wrapper")
    slistautoptr_cleanup_AdwSpringParams :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpringParams_wrapper")
    queueautoptr_cleanup_AdwSpringParams :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwCarousel_wrapper")
    autoptr_clear_AdwCarousel :: proc(_ptr: ^Carousel) ---

    @(link_name = "glib_autoptr_cleanup_AdwCarousel_wrapper")
    autoptr_cleanup_AdwCarousel :: proc(_ptr: ^^Carousel) ---

    @(link_name = "glib_autoptr_destroy_AdwCarousel_wrapper")
    autoptr_destroy_AdwCarousel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwCarousel_wrapper")
    listautoptr_cleanup_AdwCarousel :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwCarousel_wrapper")
    slistautoptr_cleanup_AdwCarousel :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwCarousel_wrapper")
    queueautoptr_cleanup_AdwCarousel :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwCarouselClass_wrapper")
    autoptr_clear_AdwCarouselClass :: proc(_ptr: ^CarouselClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwCarouselClass_wrapper")
    autoptr_cleanup_AdwCarouselClass :: proc(_ptr: ^^CarouselClass) ---

    @(link_name = "glib_autoptr_destroy_AdwCarouselClass_wrapper")
    autoptr_destroy_AdwCarouselClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwCarouselClass_wrapper")
    listautoptr_cleanup_AdwCarouselClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwCarouselClass_wrapper")
    slistautoptr_cleanup_AdwCarouselClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwCarouselClass_wrapper")
    queueautoptr_cleanup_AdwCarouselClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_CAROUSEL_wrapper")
    CAROUSEL :: proc(ptr: glib.pointer) -> ^Carousel ---

    @(link_name = "ADW_IS_CAROUSEL_wrapper")
    IS_CAROUSEL :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwCarouselIndicatorDots_wrapper")
    autoptr_clear_AdwCarouselIndicatorDots :: proc(_ptr: ^CarouselIndicatorDots) ---

    @(link_name = "glib_autoptr_cleanup_AdwCarouselIndicatorDots_wrapper")
    autoptr_cleanup_AdwCarouselIndicatorDots :: proc(_ptr: ^^CarouselIndicatorDots) ---

    @(link_name = "glib_autoptr_destroy_AdwCarouselIndicatorDots_wrapper")
    autoptr_destroy_AdwCarouselIndicatorDots :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwCarouselIndicatorDots_wrapper")
    listautoptr_cleanup_AdwCarouselIndicatorDots :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwCarouselIndicatorDots_wrapper")
    slistautoptr_cleanup_AdwCarouselIndicatorDots :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwCarouselIndicatorDots_wrapper")
    queueautoptr_cleanup_AdwCarouselIndicatorDots :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwCarouselIndicatorDotsClass_wrapper")
    autoptr_clear_AdwCarouselIndicatorDotsClass :: proc(_ptr: ^CarouselIndicatorDotsClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwCarouselIndicatorDotsClass_wrapper")
    autoptr_cleanup_AdwCarouselIndicatorDotsClass :: proc(_ptr: ^^CarouselIndicatorDotsClass) ---

    @(link_name = "glib_autoptr_destroy_AdwCarouselIndicatorDotsClass_wrapper")
    autoptr_destroy_AdwCarouselIndicatorDotsClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwCarouselIndicatorDotsClass_wrapper")
    listautoptr_cleanup_AdwCarouselIndicatorDotsClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwCarouselIndicatorDotsClass_wrapper")
    slistautoptr_cleanup_AdwCarouselIndicatorDotsClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwCarouselIndicatorDotsClass_wrapper")
    queueautoptr_cleanup_AdwCarouselIndicatorDotsClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_CAROUSEL_INDICATOR_DOTS_wrapper")
    CAROUSEL_INDICATOR_DOTS :: proc(ptr: glib.pointer) -> ^CarouselIndicatorDots ---

    @(link_name = "ADW_IS_CAROUSEL_INDICATOR_DOTS_wrapper")
    IS_CAROUSEL_INDICATOR_DOTS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwCarouselIndicatorLines_wrapper")
    autoptr_clear_AdwCarouselIndicatorLines :: proc(_ptr: ^CarouselIndicatorLines) ---

    @(link_name = "glib_autoptr_cleanup_AdwCarouselIndicatorLines_wrapper")
    autoptr_cleanup_AdwCarouselIndicatorLines :: proc(_ptr: ^^CarouselIndicatorLines) ---

    @(link_name = "glib_autoptr_destroy_AdwCarouselIndicatorLines_wrapper")
    autoptr_destroy_AdwCarouselIndicatorLines :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwCarouselIndicatorLines_wrapper")
    listautoptr_cleanup_AdwCarouselIndicatorLines :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwCarouselIndicatorLines_wrapper")
    slistautoptr_cleanup_AdwCarouselIndicatorLines :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwCarouselIndicatorLines_wrapper")
    queueautoptr_cleanup_AdwCarouselIndicatorLines :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwCarouselIndicatorLinesClass_wrapper")
    autoptr_clear_AdwCarouselIndicatorLinesClass :: proc(_ptr: ^CarouselIndicatorLinesClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwCarouselIndicatorLinesClass_wrapper")
    autoptr_cleanup_AdwCarouselIndicatorLinesClass :: proc(_ptr: ^^CarouselIndicatorLinesClass) ---

    @(link_name = "glib_autoptr_destroy_AdwCarouselIndicatorLinesClass_wrapper")
    autoptr_destroy_AdwCarouselIndicatorLinesClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwCarouselIndicatorLinesClass_wrapper")
    listautoptr_cleanup_AdwCarouselIndicatorLinesClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwCarouselIndicatorLinesClass_wrapper")
    slistautoptr_cleanup_AdwCarouselIndicatorLinesClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwCarouselIndicatorLinesClass_wrapper")
    queueautoptr_cleanup_AdwCarouselIndicatorLinesClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_CAROUSEL_INDICATOR_LINES_wrapper")
    CAROUSEL_INDICATOR_LINES :: proc(ptr: glib.pointer) -> ^CarouselIndicatorLines ---

    @(link_name = "ADW_IS_CAROUSEL_INDICATOR_LINES_wrapper")
    IS_CAROUSEL_INDICATOR_LINES :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwClamp_wrapper")
    autoptr_clear_AdwClamp :: proc(_ptr: ^Clamp) ---

    @(link_name = "glib_autoptr_cleanup_AdwClamp_wrapper")
    autoptr_cleanup_AdwClamp :: proc(_ptr: ^^Clamp) ---

    @(link_name = "glib_autoptr_destroy_AdwClamp_wrapper")
    autoptr_destroy_AdwClamp :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwClamp_wrapper")
    listautoptr_cleanup_AdwClamp :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwClamp_wrapper")
    slistautoptr_cleanup_AdwClamp :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwClamp_wrapper")
    queueautoptr_cleanup_AdwClamp :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwClampClass_wrapper")
    autoptr_clear_AdwClampClass :: proc(_ptr: ^ClampClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwClampClass_wrapper")
    autoptr_cleanup_AdwClampClass :: proc(_ptr: ^^ClampClass) ---

    @(link_name = "glib_autoptr_destroy_AdwClampClass_wrapper")
    autoptr_destroy_AdwClampClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwClampClass_wrapper")
    listautoptr_cleanup_AdwClampClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwClampClass_wrapper")
    slistautoptr_cleanup_AdwClampClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwClampClass_wrapper")
    queueautoptr_cleanup_AdwClampClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_CLAMP_wrapper")
    CLAMP :: proc(ptr: glib.pointer) -> ^Clamp ---

    @(link_name = "ADW_IS_CLAMP_wrapper")
    IS_CLAMP :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwClampLayout_wrapper")
    autoptr_clear_AdwClampLayout :: proc(_ptr: ^ClampLayout) ---

    @(link_name = "glib_autoptr_cleanup_AdwClampLayout_wrapper")
    autoptr_cleanup_AdwClampLayout :: proc(_ptr: ^^ClampLayout) ---

    @(link_name = "glib_autoptr_destroy_AdwClampLayout_wrapper")
    autoptr_destroy_AdwClampLayout :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwClampLayout_wrapper")
    listautoptr_cleanup_AdwClampLayout :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwClampLayout_wrapper")
    slistautoptr_cleanup_AdwClampLayout :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwClampLayout_wrapper")
    queueautoptr_cleanup_AdwClampLayout :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwClampLayoutClass_wrapper")
    autoptr_clear_AdwClampLayoutClass :: proc(_ptr: ^ClampLayoutClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwClampLayoutClass_wrapper")
    autoptr_cleanup_AdwClampLayoutClass :: proc(_ptr: ^^ClampLayoutClass) ---

    @(link_name = "glib_autoptr_destroy_AdwClampLayoutClass_wrapper")
    autoptr_destroy_AdwClampLayoutClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwClampLayoutClass_wrapper")
    listautoptr_cleanup_AdwClampLayoutClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwClampLayoutClass_wrapper")
    slistautoptr_cleanup_AdwClampLayoutClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwClampLayoutClass_wrapper")
    queueautoptr_cleanup_AdwClampLayoutClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_CLAMP_LAYOUT_wrapper")
    CLAMP_LAYOUT :: proc(ptr: glib.pointer) -> ^ClampLayout ---

    @(link_name = "ADW_IS_CLAMP_LAYOUT_wrapper")
    IS_CLAMP_LAYOUT :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwClampScrollable_wrapper")
    autoptr_clear_AdwClampScrollable :: proc(_ptr: ^ClampScrollable) ---

    @(link_name = "glib_autoptr_cleanup_AdwClampScrollable_wrapper")
    autoptr_cleanup_AdwClampScrollable :: proc(_ptr: ^^ClampScrollable) ---

    @(link_name = "glib_autoptr_destroy_AdwClampScrollable_wrapper")
    autoptr_destroy_AdwClampScrollable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwClampScrollable_wrapper")
    listautoptr_cleanup_AdwClampScrollable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwClampScrollable_wrapper")
    slistautoptr_cleanup_AdwClampScrollable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwClampScrollable_wrapper")
    queueautoptr_cleanup_AdwClampScrollable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwClampScrollableClass_wrapper")
    autoptr_clear_AdwClampScrollableClass :: proc(_ptr: ^ClampScrollableClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwClampScrollableClass_wrapper")
    autoptr_cleanup_AdwClampScrollableClass :: proc(_ptr: ^^ClampScrollableClass) ---

    @(link_name = "glib_autoptr_destroy_AdwClampScrollableClass_wrapper")
    autoptr_destroy_AdwClampScrollableClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwClampScrollableClass_wrapper")
    listautoptr_cleanup_AdwClampScrollableClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwClampScrollableClass_wrapper")
    slistautoptr_cleanup_AdwClampScrollableClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwClampScrollableClass_wrapper")
    queueautoptr_cleanup_AdwClampScrollableClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_CLAMP_SCROLLABLE_wrapper")
    CLAMP_SCROLLABLE :: proc(ptr: glib.pointer) -> ^ClampScrollable ---

    @(link_name = "ADW_IS_CLAMP_SCROLLABLE_wrapper")
    IS_CLAMP_SCROLLABLE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwComboRow_wrapper")
    autoptr_clear_AdwComboRow :: proc(_ptr: ^ComboRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwComboRow_wrapper")
    autoptr_cleanup_AdwComboRow :: proc(_ptr: ^^ComboRow) ---

    @(link_name = "glib_autoptr_destroy_AdwComboRow_wrapper")
    autoptr_destroy_AdwComboRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwComboRow_wrapper")
    listautoptr_cleanup_AdwComboRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwComboRow_wrapper")
    slistautoptr_cleanup_AdwComboRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwComboRow_wrapper")
    queueautoptr_cleanup_AdwComboRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwComboRowClass_wrapper")
    autoptr_clear_AdwComboRowClass :: proc(_ptr: ^ComboRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwComboRowClass_wrapper")
    autoptr_cleanup_AdwComboRowClass :: proc(_ptr: ^^ComboRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwComboRowClass_wrapper")
    autoptr_destroy_AdwComboRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwComboRowClass_wrapper")
    listautoptr_cleanup_AdwComboRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwComboRowClass_wrapper")
    slistautoptr_cleanup_AdwComboRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwComboRowClass_wrapper")
    queueautoptr_cleanup_AdwComboRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_COMBO_ROW_wrapper")
    COMBO_ROW :: proc(ptr: glib.pointer) -> ^ComboRow ---

    @(link_name = "ADW_COMBO_ROW_CLASS_wrapper")
    COMBO_ROW_CLASS :: proc(ptr: glib.pointer) -> ^ComboRowClass ---

    @(link_name = "ADW_IS_COMBO_ROW_wrapper")
    IS_COMBO_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_COMBO_ROW_CLASS_wrapper")
    IS_COMBO_ROW_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_COMBO_ROW_GET_CLASS_wrapper")
    COMBO_ROW_GET_CLASS :: proc(ptr: glib.pointer) -> ^ComboRowClass ---

    @(link_name = "glib_autoptr_clear_AdwEntryRow_wrapper")
    autoptr_clear_AdwEntryRow :: proc(_ptr: ^EntryRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwEntryRow_wrapper")
    autoptr_cleanup_AdwEntryRow :: proc(_ptr: ^^EntryRow) ---

    @(link_name = "glib_autoptr_destroy_AdwEntryRow_wrapper")
    autoptr_destroy_AdwEntryRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwEntryRow_wrapper")
    listautoptr_cleanup_AdwEntryRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwEntryRow_wrapper")
    slistautoptr_cleanup_AdwEntryRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwEntryRow_wrapper")
    queueautoptr_cleanup_AdwEntryRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwEntryRowClass_wrapper")
    autoptr_clear_AdwEntryRowClass :: proc(_ptr: ^EntryRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwEntryRowClass_wrapper")
    autoptr_cleanup_AdwEntryRowClass :: proc(_ptr: ^^EntryRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwEntryRowClass_wrapper")
    autoptr_destroy_AdwEntryRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwEntryRowClass_wrapper")
    listautoptr_cleanup_AdwEntryRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwEntryRowClass_wrapper")
    slistautoptr_cleanup_AdwEntryRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwEntryRowClass_wrapper")
    queueautoptr_cleanup_AdwEntryRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ENTRY_ROW_wrapper")
    ENTRY_ROW :: proc(ptr: glib.pointer) -> ^EntryRow ---

    @(link_name = "ADW_ENTRY_ROW_CLASS_wrapper")
    ENTRY_ROW_CLASS :: proc(ptr: glib.pointer) -> ^EntryRowClass ---

    @(link_name = "ADW_IS_ENTRY_ROW_wrapper")
    IS_ENTRY_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_ENTRY_ROW_CLASS_wrapper")
    IS_ENTRY_ROW_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_ENTRY_ROW_GET_CLASS_wrapper")
    ENTRY_ROW_GET_CLASS :: proc(ptr: glib.pointer) -> ^EntryRowClass ---

    @(link_name = "glib_autoptr_clear_AdwEnumListItem_wrapper")
    autoptr_clear_AdwEnumListItem :: proc(_ptr: ^EnumListItem) ---

    @(link_name = "glib_autoptr_cleanup_AdwEnumListItem_wrapper")
    autoptr_cleanup_AdwEnumListItem :: proc(_ptr: ^^EnumListItem) ---

    @(link_name = "glib_autoptr_destroy_AdwEnumListItem_wrapper")
    autoptr_destroy_AdwEnumListItem :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwEnumListItem_wrapper")
    listautoptr_cleanup_AdwEnumListItem :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwEnumListItem_wrapper")
    slistautoptr_cleanup_AdwEnumListItem :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwEnumListItem_wrapper")
    queueautoptr_cleanup_AdwEnumListItem :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwEnumListItemClass_wrapper")
    autoptr_clear_AdwEnumListItemClass :: proc(_ptr: ^EnumListItemClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwEnumListItemClass_wrapper")
    autoptr_cleanup_AdwEnumListItemClass :: proc(_ptr: ^^EnumListItemClass) ---

    @(link_name = "glib_autoptr_destroy_AdwEnumListItemClass_wrapper")
    autoptr_destroy_AdwEnumListItemClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwEnumListItemClass_wrapper")
    listautoptr_cleanup_AdwEnumListItemClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwEnumListItemClass_wrapper")
    slistautoptr_cleanup_AdwEnumListItemClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwEnumListItemClass_wrapper")
    queueautoptr_cleanup_AdwEnumListItemClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ENUM_LIST_ITEM_wrapper")
    ENUM_LIST_ITEM :: proc(ptr: glib.pointer) -> ^EnumListItem ---

    @(link_name = "ADW_IS_ENUM_LIST_ITEM_wrapper")
    IS_ENUM_LIST_ITEM :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwEnumListModel_wrapper")
    autoptr_clear_AdwEnumListModel :: proc(_ptr: ^EnumListModel) ---

    @(link_name = "glib_autoptr_cleanup_AdwEnumListModel_wrapper")
    autoptr_cleanup_AdwEnumListModel :: proc(_ptr: ^^EnumListModel) ---

    @(link_name = "glib_autoptr_destroy_AdwEnumListModel_wrapper")
    autoptr_destroy_AdwEnumListModel :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwEnumListModel_wrapper")
    listautoptr_cleanup_AdwEnumListModel :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwEnumListModel_wrapper")
    slistautoptr_cleanup_AdwEnumListModel :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwEnumListModel_wrapper")
    queueautoptr_cleanup_AdwEnumListModel :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwEnumListModelClass_wrapper")
    autoptr_clear_AdwEnumListModelClass :: proc(_ptr: ^EnumListModelClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwEnumListModelClass_wrapper")
    autoptr_cleanup_AdwEnumListModelClass :: proc(_ptr: ^^EnumListModelClass) ---

    @(link_name = "glib_autoptr_destroy_AdwEnumListModelClass_wrapper")
    autoptr_destroy_AdwEnumListModelClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwEnumListModelClass_wrapper")
    listautoptr_cleanup_AdwEnumListModelClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwEnumListModelClass_wrapper")
    slistautoptr_cleanup_AdwEnumListModelClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwEnumListModelClass_wrapper")
    queueautoptr_cleanup_AdwEnumListModelClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_ENUM_LIST_MODEL_wrapper")
    ENUM_LIST_MODEL :: proc(ptr: glib.pointer) -> ^EnumListModel ---

    @(link_name = "ADW_IS_ENUM_LIST_MODEL_wrapper")
    IS_ENUM_LIST_MODEL :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwExpanderRow_wrapper")
    autoptr_clear_AdwExpanderRow :: proc(_ptr: ^ExpanderRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwExpanderRow_wrapper")
    autoptr_cleanup_AdwExpanderRow :: proc(_ptr: ^^ExpanderRow) ---

    @(link_name = "glib_autoptr_destroy_AdwExpanderRow_wrapper")
    autoptr_destroy_AdwExpanderRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwExpanderRow_wrapper")
    listautoptr_cleanup_AdwExpanderRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwExpanderRow_wrapper")
    slistautoptr_cleanup_AdwExpanderRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwExpanderRow_wrapper")
    queueautoptr_cleanup_AdwExpanderRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwExpanderRowClass_wrapper")
    autoptr_clear_AdwExpanderRowClass :: proc(_ptr: ^ExpanderRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwExpanderRowClass_wrapper")
    autoptr_cleanup_AdwExpanderRowClass :: proc(_ptr: ^^ExpanderRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwExpanderRowClass_wrapper")
    autoptr_destroy_AdwExpanderRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwExpanderRowClass_wrapper")
    listautoptr_cleanup_AdwExpanderRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwExpanderRowClass_wrapper")
    slistautoptr_cleanup_AdwExpanderRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwExpanderRowClass_wrapper")
    queueautoptr_cleanup_AdwExpanderRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_EXPANDER_ROW_wrapper")
    EXPANDER_ROW :: proc(ptr: glib.pointer) -> ^ExpanderRow ---

    @(link_name = "ADW_EXPANDER_ROW_CLASS_wrapper")
    EXPANDER_ROW_CLASS :: proc(ptr: glib.pointer) -> ^ExpanderRowClass ---

    @(link_name = "ADW_IS_EXPANDER_ROW_wrapper")
    IS_EXPANDER_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_EXPANDER_ROW_CLASS_wrapper")
    IS_EXPANDER_ROW_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_EXPANDER_ROW_GET_CLASS_wrapper")
    EXPANDER_ROW_GET_CLASS :: proc(ptr: glib.pointer) -> ^ExpanderRowClass ---

    @(link_name = "glib_autoptr_clear_AdwFlap_wrapper")
    autoptr_clear_AdwFlap :: proc(_ptr: ^Flap) ---

    @(link_name = "glib_autoptr_cleanup_AdwFlap_wrapper")
    autoptr_cleanup_AdwFlap :: proc(_ptr: ^^Flap) ---

    @(link_name = "glib_autoptr_destroy_AdwFlap_wrapper")
    autoptr_destroy_AdwFlap :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwFlap_wrapper")
    listautoptr_cleanup_AdwFlap :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwFlap_wrapper")
    slistautoptr_cleanup_AdwFlap :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwFlap_wrapper")
    queueautoptr_cleanup_AdwFlap :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwFlapClass_wrapper")
    autoptr_clear_AdwFlapClass :: proc(_ptr: ^FlapClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwFlapClass_wrapper")
    autoptr_cleanup_AdwFlapClass :: proc(_ptr: ^^FlapClass) ---

    @(link_name = "glib_autoptr_destroy_AdwFlapClass_wrapper")
    autoptr_destroy_AdwFlapClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwFlapClass_wrapper")
    listautoptr_cleanup_AdwFlapClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwFlapClass_wrapper")
    slistautoptr_cleanup_AdwFlapClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwFlapClass_wrapper")
    queueautoptr_cleanup_AdwFlapClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_FLAP_wrapper")
    FLAP :: proc(ptr: glib.pointer) -> ^Flap ---

    @(link_name = "ADW_IS_FLAP_wrapper")
    IS_FLAP :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwHeaderBar_wrapper")
    autoptr_clear_AdwHeaderBar :: proc(_ptr: ^HeaderBar) ---

    @(link_name = "glib_autoptr_cleanup_AdwHeaderBar_wrapper")
    autoptr_cleanup_AdwHeaderBar :: proc(_ptr: ^^HeaderBar) ---

    @(link_name = "glib_autoptr_destroy_AdwHeaderBar_wrapper")
    autoptr_destroy_AdwHeaderBar :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwHeaderBar_wrapper")
    listautoptr_cleanup_AdwHeaderBar :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwHeaderBar_wrapper")
    slistautoptr_cleanup_AdwHeaderBar :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwHeaderBar_wrapper")
    queueautoptr_cleanup_AdwHeaderBar :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwHeaderBarClass_wrapper")
    autoptr_clear_AdwHeaderBarClass :: proc(_ptr: ^HeaderBarClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwHeaderBarClass_wrapper")
    autoptr_cleanup_AdwHeaderBarClass :: proc(_ptr: ^^HeaderBarClass) ---

    @(link_name = "glib_autoptr_destroy_AdwHeaderBarClass_wrapper")
    autoptr_destroy_AdwHeaderBarClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwHeaderBarClass_wrapper")
    listautoptr_cleanup_AdwHeaderBarClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwHeaderBarClass_wrapper")
    slistautoptr_cleanup_AdwHeaderBarClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwHeaderBarClass_wrapper")
    queueautoptr_cleanup_AdwHeaderBarClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_HEADER_BAR_wrapper")
    HEADER_BAR :: proc(ptr: glib.pointer) -> ^HeaderBar ---

    @(link_name = "ADW_IS_HEADER_BAR_wrapper")
    IS_HEADER_BAR :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwViewStackPage_wrapper")
    autoptr_clear_AdwViewStackPage :: proc(_ptr: ^ViewStackPage) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewStackPage_wrapper")
    autoptr_cleanup_AdwViewStackPage :: proc(_ptr: ^^ViewStackPage) ---

    @(link_name = "glib_autoptr_destroy_AdwViewStackPage_wrapper")
    autoptr_destroy_AdwViewStackPage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewStackPage_wrapper")
    listautoptr_cleanup_AdwViewStackPage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewStackPage_wrapper")
    slistautoptr_cleanup_AdwViewStackPage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewStackPage_wrapper")
    queueautoptr_cleanup_AdwViewStackPage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwViewStackPageClass_wrapper")
    autoptr_clear_AdwViewStackPageClass :: proc(_ptr: ^ViewStackPageClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewStackPageClass_wrapper")
    autoptr_cleanup_AdwViewStackPageClass :: proc(_ptr: ^^ViewStackPageClass) ---

    @(link_name = "glib_autoptr_destroy_AdwViewStackPageClass_wrapper")
    autoptr_destroy_AdwViewStackPageClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewStackPageClass_wrapper")
    listautoptr_cleanup_AdwViewStackPageClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewStackPageClass_wrapper")
    slistautoptr_cleanup_AdwViewStackPageClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewStackPageClass_wrapper")
    queueautoptr_cleanup_AdwViewStackPageClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_VIEW_STACK_PAGE_wrapper")
    VIEW_STACK_PAGE :: proc(ptr: glib.pointer) -> ^ViewStackPage ---

    @(link_name = "ADW_IS_VIEW_STACK_PAGE_wrapper")
    IS_VIEW_STACK_PAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwViewStack_wrapper")
    autoptr_clear_AdwViewStack :: proc(_ptr: ^ViewStack) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewStack_wrapper")
    autoptr_cleanup_AdwViewStack :: proc(_ptr: ^^ViewStack) ---

    @(link_name = "glib_autoptr_destroy_AdwViewStack_wrapper")
    autoptr_destroy_AdwViewStack :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewStack_wrapper")
    listautoptr_cleanup_AdwViewStack :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewStack_wrapper")
    slistautoptr_cleanup_AdwViewStack :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewStack_wrapper")
    queueautoptr_cleanup_AdwViewStack :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwViewStackClass_wrapper")
    autoptr_clear_AdwViewStackClass :: proc(_ptr: ^ViewStackClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewStackClass_wrapper")
    autoptr_cleanup_AdwViewStackClass :: proc(_ptr: ^^ViewStackClass) ---

    @(link_name = "glib_autoptr_destroy_AdwViewStackClass_wrapper")
    autoptr_destroy_AdwViewStackClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewStackClass_wrapper")
    listautoptr_cleanup_AdwViewStackClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewStackClass_wrapper")
    slistautoptr_cleanup_AdwViewStackClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewStackClass_wrapper")
    queueautoptr_cleanup_AdwViewStackClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_VIEW_STACK_wrapper")
    VIEW_STACK :: proc(ptr: glib.pointer) -> ^ViewStack ---

    @(link_name = "ADW_IS_VIEW_STACK_wrapper")
    IS_VIEW_STACK :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwViewStackPages_wrapper")
    autoptr_clear_AdwViewStackPages :: proc(_ptr: ^ViewStackPages) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewStackPages_wrapper")
    autoptr_cleanup_AdwViewStackPages :: proc(_ptr: ^^ViewStackPages) ---

    @(link_name = "glib_autoptr_destroy_AdwViewStackPages_wrapper")
    autoptr_destroy_AdwViewStackPages :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewStackPages_wrapper")
    listautoptr_cleanup_AdwViewStackPages :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewStackPages_wrapper")
    slistautoptr_cleanup_AdwViewStackPages :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewStackPages_wrapper")
    queueautoptr_cleanup_AdwViewStackPages :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwViewStackPagesClass_wrapper")
    autoptr_clear_AdwViewStackPagesClass :: proc(_ptr: ^ViewStackPagesClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewStackPagesClass_wrapper")
    autoptr_cleanup_AdwViewStackPagesClass :: proc(_ptr: ^^ViewStackPagesClass) ---

    @(link_name = "glib_autoptr_destroy_AdwViewStackPagesClass_wrapper")
    autoptr_destroy_AdwViewStackPagesClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewStackPagesClass_wrapper")
    listautoptr_cleanup_AdwViewStackPagesClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewStackPagesClass_wrapper")
    slistautoptr_cleanup_AdwViewStackPagesClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewStackPagesClass_wrapper")
    queueautoptr_cleanup_AdwViewStackPagesClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_VIEW_STACK_PAGES_wrapper")
    VIEW_STACK_PAGES :: proc(ptr: glib.pointer) -> ^ViewStackPages ---

    @(link_name = "ADW_IS_VIEW_STACK_PAGES_wrapper")
    IS_VIEW_STACK_PAGES :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwInlineViewSwitcher_wrapper")
    autoptr_clear_AdwInlineViewSwitcher :: proc(_ptr: ^InlineViewSwitcher) ---

    @(link_name = "glib_autoptr_cleanup_AdwInlineViewSwitcher_wrapper")
    autoptr_cleanup_AdwInlineViewSwitcher :: proc(_ptr: ^^InlineViewSwitcher) ---

    @(link_name = "glib_autoptr_destroy_AdwInlineViewSwitcher_wrapper")
    autoptr_destroy_AdwInlineViewSwitcher :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwInlineViewSwitcher_wrapper")
    listautoptr_cleanup_AdwInlineViewSwitcher :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwInlineViewSwitcher_wrapper")
    slistautoptr_cleanup_AdwInlineViewSwitcher :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwInlineViewSwitcher_wrapper")
    queueautoptr_cleanup_AdwInlineViewSwitcher :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwInlineViewSwitcherClass_wrapper")
    autoptr_clear_AdwInlineViewSwitcherClass :: proc(_ptr: ^InlineViewSwitcherClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwInlineViewSwitcherClass_wrapper")
    autoptr_cleanup_AdwInlineViewSwitcherClass :: proc(_ptr: ^^InlineViewSwitcherClass) ---

    @(link_name = "glib_autoptr_destroy_AdwInlineViewSwitcherClass_wrapper")
    autoptr_destroy_AdwInlineViewSwitcherClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwInlineViewSwitcherClass_wrapper")
    listautoptr_cleanup_AdwInlineViewSwitcherClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwInlineViewSwitcherClass_wrapper")
    slistautoptr_cleanup_AdwInlineViewSwitcherClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwInlineViewSwitcherClass_wrapper")
    queueautoptr_cleanup_AdwInlineViewSwitcherClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_INLINE_VIEW_SWITCHER_wrapper")
    INLINE_VIEW_SWITCHER :: proc(ptr: glib.pointer) -> ^InlineViewSwitcher ---

    @(link_name = "ADW_IS_INLINE_VIEW_SWITCHER_wrapper")
    IS_INLINE_VIEW_SWITCHER :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwLayout_wrapper")
    autoptr_clear_AdwLayout :: proc(_ptr: ^Layout) ---

    @(link_name = "glib_autoptr_cleanup_AdwLayout_wrapper")
    autoptr_cleanup_AdwLayout :: proc(_ptr: ^^Layout) ---

    @(link_name = "glib_autoptr_destroy_AdwLayout_wrapper")
    autoptr_destroy_AdwLayout :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwLayout_wrapper")
    listautoptr_cleanup_AdwLayout :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwLayout_wrapper")
    slistautoptr_cleanup_AdwLayout :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwLayout_wrapper")
    queueautoptr_cleanup_AdwLayout :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwLayoutClass_wrapper")
    autoptr_clear_AdwLayoutClass :: proc(_ptr: ^LayoutClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwLayoutClass_wrapper")
    autoptr_cleanup_AdwLayoutClass :: proc(_ptr: ^^LayoutClass) ---

    @(link_name = "glib_autoptr_destroy_AdwLayoutClass_wrapper")
    autoptr_destroy_AdwLayoutClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwLayoutClass_wrapper")
    listautoptr_cleanup_AdwLayoutClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwLayoutClass_wrapper")
    slistautoptr_cleanup_AdwLayoutClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwLayoutClass_wrapper")
    queueautoptr_cleanup_AdwLayoutClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_LAYOUT_wrapper")
    LAYOUT :: proc(ptr: glib.pointer) -> ^Layout ---

    @(link_name = "ADW_IS_LAYOUT_wrapper")
    IS_LAYOUT :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwLayoutSlot_wrapper")
    autoptr_clear_AdwLayoutSlot :: proc(_ptr: ^LayoutSlot) ---

    @(link_name = "glib_autoptr_cleanup_AdwLayoutSlot_wrapper")
    autoptr_cleanup_AdwLayoutSlot :: proc(_ptr: ^^LayoutSlot) ---

    @(link_name = "glib_autoptr_destroy_AdwLayoutSlot_wrapper")
    autoptr_destroy_AdwLayoutSlot :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwLayoutSlot_wrapper")
    listautoptr_cleanup_AdwLayoutSlot :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwLayoutSlot_wrapper")
    slistautoptr_cleanup_AdwLayoutSlot :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwLayoutSlot_wrapper")
    queueautoptr_cleanup_AdwLayoutSlot :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwLayoutSlotClass_wrapper")
    autoptr_clear_AdwLayoutSlotClass :: proc(_ptr: ^LayoutSlotClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwLayoutSlotClass_wrapper")
    autoptr_cleanup_AdwLayoutSlotClass :: proc(_ptr: ^^LayoutSlotClass) ---

    @(link_name = "glib_autoptr_destroy_AdwLayoutSlotClass_wrapper")
    autoptr_destroy_AdwLayoutSlotClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwLayoutSlotClass_wrapper")
    listautoptr_cleanup_AdwLayoutSlotClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwLayoutSlotClass_wrapper")
    slistautoptr_cleanup_AdwLayoutSlotClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwLayoutSlotClass_wrapper")
    queueautoptr_cleanup_AdwLayoutSlotClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_LAYOUT_SLOT_wrapper")
    LAYOUT_SLOT :: proc(ptr: glib.pointer) -> ^LayoutSlot ---

    @(link_name = "ADW_IS_LAYOUT_SLOT_wrapper")
    IS_LAYOUT_SLOT :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwLeafletPage_wrapper")
    autoptr_clear_AdwLeafletPage :: proc(_ptr: ^LeafletPage) ---

    @(link_name = "glib_autoptr_cleanup_AdwLeafletPage_wrapper")
    autoptr_cleanup_AdwLeafletPage :: proc(_ptr: ^^LeafletPage) ---

    @(link_name = "glib_autoptr_destroy_AdwLeafletPage_wrapper")
    autoptr_destroy_AdwLeafletPage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwLeafletPage_wrapper")
    listautoptr_cleanup_AdwLeafletPage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwLeafletPage_wrapper")
    slistautoptr_cleanup_AdwLeafletPage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwLeafletPage_wrapper")
    queueautoptr_cleanup_AdwLeafletPage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwLeafletPageClass_wrapper")
    autoptr_clear_AdwLeafletPageClass :: proc(_ptr: ^LeafletPageClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwLeafletPageClass_wrapper")
    autoptr_cleanup_AdwLeafletPageClass :: proc(_ptr: ^^LeafletPageClass) ---

    @(link_name = "glib_autoptr_destroy_AdwLeafletPageClass_wrapper")
    autoptr_destroy_AdwLeafletPageClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwLeafletPageClass_wrapper")
    listautoptr_cleanup_AdwLeafletPageClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwLeafletPageClass_wrapper")
    slistautoptr_cleanup_AdwLeafletPageClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwLeafletPageClass_wrapper")
    queueautoptr_cleanup_AdwLeafletPageClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_LEAFLET_PAGE_wrapper")
    LEAFLET_PAGE :: proc(ptr: glib.pointer) -> ^LeafletPage ---

    @(link_name = "ADW_IS_LEAFLET_PAGE_wrapper")
    IS_LEAFLET_PAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwLeaflet_wrapper")
    autoptr_clear_AdwLeaflet :: proc(_ptr: ^Leaflet) ---

    @(link_name = "glib_autoptr_cleanup_AdwLeaflet_wrapper")
    autoptr_cleanup_AdwLeaflet :: proc(_ptr: ^^Leaflet) ---

    @(link_name = "glib_autoptr_destroy_AdwLeaflet_wrapper")
    autoptr_destroy_AdwLeaflet :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwLeaflet_wrapper")
    listautoptr_cleanup_AdwLeaflet :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwLeaflet_wrapper")
    slistautoptr_cleanup_AdwLeaflet :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwLeaflet_wrapper")
    queueautoptr_cleanup_AdwLeaflet :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwLeafletClass_wrapper")
    autoptr_clear_AdwLeafletClass :: proc(_ptr: ^LeafletClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwLeafletClass_wrapper")
    autoptr_cleanup_AdwLeafletClass :: proc(_ptr: ^^LeafletClass) ---

    @(link_name = "glib_autoptr_destroy_AdwLeafletClass_wrapper")
    autoptr_destroy_AdwLeafletClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwLeafletClass_wrapper")
    listautoptr_cleanup_AdwLeafletClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwLeafletClass_wrapper")
    slistautoptr_cleanup_AdwLeafletClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwLeafletClass_wrapper")
    queueautoptr_cleanup_AdwLeafletClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_LEAFLET_wrapper")
    LEAFLET :: proc(ptr: glib.pointer) -> ^Leaflet ---

    @(link_name = "ADW_IS_LEAFLET_wrapper")
    IS_LEAFLET :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwMessageDialog_wrapper")
    autoptr_clear_AdwMessageDialog :: proc(_ptr: ^MessageDialog) ---

    @(link_name = "glib_autoptr_cleanup_AdwMessageDialog_wrapper")
    autoptr_cleanup_AdwMessageDialog :: proc(_ptr: ^^MessageDialog) ---

    @(link_name = "glib_autoptr_destroy_AdwMessageDialog_wrapper")
    autoptr_destroy_AdwMessageDialog :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwMessageDialog_wrapper")
    listautoptr_cleanup_AdwMessageDialog :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwMessageDialog_wrapper")
    slistautoptr_cleanup_AdwMessageDialog :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwMessageDialog_wrapper")
    queueautoptr_cleanup_AdwMessageDialog :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwMessageDialogClass_wrapper")
    autoptr_clear_AdwMessageDialogClass :: proc(_ptr: ^MessageDialogClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwMessageDialogClass_wrapper")
    autoptr_cleanup_AdwMessageDialogClass :: proc(_ptr: ^^MessageDialogClass) ---

    @(link_name = "glib_autoptr_destroy_AdwMessageDialogClass_wrapper")
    autoptr_destroy_AdwMessageDialogClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwMessageDialogClass_wrapper")
    listautoptr_cleanup_AdwMessageDialogClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwMessageDialogClass_wrapper")
    slistautoptr_cleanup_AdwMessageDialogClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwMessageDialogClass_wrapper")
    queueautoptr_cleanup_AdwMessageDialogClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_MESSAGE_DIALOG_wrapper")
    MESSAGE_DIALOG :: proc(ptr: glib.pointer) -> ^MessageDialog ---

    @(link_name = "ADW_MESSAGE_DIALOG_CLASS_wrapper")
    MESSAGE_DIALOG_CLASS :: proc(ptr: glib.pointer) -> ^MessageDialogClass ---

    @(link_name = "ADW_IS_MESSAGE_DIALOG_wrapper")
    IS_MESSAGE_DIALOG :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_MESSAGE_DIALOG_CLASS_wrapper")
    IS_MESSAGE_DIALOG_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_MESSAGE_DIALOG_GET_CLASS_wrapper")
    MESSAGE_DIALOG_GET_CLASS :: proc(ptr: glib.pointer) -> ^MessageDialogClass ---

    @(link_name = "glib_autoptr_clear_AdwMultiLayoutView_wrapper")
    autoptr_clear_AdwMultiLayoutView :: proc(_ptr: ^MultiLayoutView) ---

    @(link_name = "glib_autoptr_cleanup_AdwMultiLayoutView_wrapper")
    autoptr_cleanup_AdwMultiLayoutView :: proc(_ptr: ^^MultiLayoutView) ---

    @(link_name = "glib_autoptr_destroy_AdwMultiLayoutView_wrapper")
    autoptr_destroy_AdwMultiLayoutView :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwMultiLayoutView_wrapper")
    listautoptr_cleanup_AdwMultiLayoutView :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwMultiLayoutView_wrapper")
    slistautoptr_cleanup_AdwMultiLayoutView :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwMultiLayoutView_wrapper")
    queueautoptr_cleanup_AdwMultiLayoutView :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwMultiLayoutViewClass_wrapper")
    autoptr_clear_AdwMultiLayoutViewClass :: proc(_ptr: ^MultiLayoutViewClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwMultiLayoutViewClass_wrapper")
    autoptr_cleanup_AdwMultiLayoutViewClass :: proc(_ptr: ^^MultiLayoutViewClass) ---

    @(link_name = "glib_autoptr_destroy_AdwMultiLayoutViewClass_wrapper")
    autoptr_destroy_AdwMultiLayoutViewClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwMultiLayoutViewClass_wrapper")
    listautoptr_cleanup_AdwMultiLayoutViewClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwMultiLayoutViewClass_wrapper")
    slistautoptr_cleanup_AdwMultiLayoutViewClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwMultiLayoutViewClass_wrapper")
    queueautoptr_cleanup_AdwMultiLayoutViewClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_MULTI_LAYOUT_VIEW_wrapper")
    MULTI_LAYOUT_VIEW :: proc(ptr: glib.pointer) -> ^MultiLayoutView ---

    @(link_name = "ADW_IS_MULTI_LAYOUT_VIEW_wrapper")
    IS_MULTI_LAYOUT_VIEW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwNavigationPage_wrapper")
    autoptr_clear_AdwNavigationPage :: proc(_ptr: ^NavigationPage) ---

    @(link_name = "glib_autoptr_cleanup_AdwNavigationPage_wrapper")
    autoptr_cleanup_AdwNavigationPage :: proc(_ptr: ^^NavigationPage) ---

    @(link_name = "glib_autoptr_destroy_AdwNavigationPage_wrapper")
    autoptr_destroy_AdwNavigationPage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwNavigationPage_wrapper")
    listautoptr_cleanup_AdwNavigationPage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwNavigationPage_wrapper")
    slistautoptr_cleanup_AdwNavigationPage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwNavigationPage_wrapper")
    queueautoptr_cleanup_AdwNavigationPage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwNavigationPageClass_wrapper")
    autoptr_clear_AdwNavigationPageClass :: proc(_ptr: ^NavigationPageClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwNavigationPageClass_wrapper")
    autoptr_cleanup_AdwNavigationPageClass :: proc(_ptr: ^^NavigationPageClass) ---

    @(link_name = "glib_autoptr_destroy_AdwNavigationPageClass_wrapper")
    autoptr_destroy_AdwNavigationPageClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwNavigationPageClass_wrapper")
    listautoptr_cleanup_AdwNavigationPageClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwNavigationPageClass_wrapper")
    slistautoptr_cleanup_AdwNavigationPageClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwNavigationPageClass_wrapper")
    queueautoptr_cleanup_AdwNavigationPageClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_NAVIGATION_PAGE_wrapper")
    NAVIGATION_PAGE :: proc(ptr: glib.pointer) -> ^NavigationPage ---

    @(link_name = "ADW_NAVIGATION_PAGE_CLASS_wrapper")
    NAVIGATION_PAGE_CLASS :: proc(ptr: glib.pointer) -> ^NavigationPageClass ---

    @(link_name = "ADW_IS_NAVIGATION_PAGE_wrapper")
    IS_NAVIGATION_PAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_NAVIGATION_PAGE_CLASS_wrapper")
    IS_NAVIGATION_PAGE_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_NAVIGATION_PAGE_GET_CLASS_wrapper")
    NAVIGATION_PAGE_GET_CLASS :: proc(ptr: glib.pointer) -> ^NavigationPageClass ---

    @(link_name = "glib_autoptr_clear_AdwNavigationView_wrapper")
    autoptr_clear_AdwNavigationView :: proc(_ptr: ^NavigationView) ---

    @(link_name = "glib_autoptr_cleanup_AdwNavigationView_wrapper")
    autoptr_cleanup_AdwNavigationView :: proc(_ptr: ^^NavigationView) ---

    @(link_name = "glib_autoptr_destroy_AdwNavigationView_wrapper")
    autoptr_destroy_AdwNavigationView :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwNavigationView_wrapper")
    listautoptr_cleanup_AdwNavigationView :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwNavigationView_wrapper")
    slistautoptr_cleanup_AdwNavigationView :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwNavigationView_wrapper")
    queueautoptr_cleanup_AdwNavigationView :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwNavigationViewClass_wrapper")
    autoptr_clear_AdwNavigationViewClass :: proc(_ptr: ^NavigationViewClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwNavigationViewClass_wrapper")
    autoptr_cleanup_AdwNavigationViewClass :: proc(_ptr: ^^NavigationViewClass) ---

    @(link_name = "glib_autoptr_destroy_AdwNavigationViewClass_wrapper")
    autoptr_destroy_AdwNavigationViewClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwNavigationViewClass_wrapper")
    listautoptr_cleanup_AdwNavigationViewClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwNavigationViewClass_wrapper")
    slistautoptr_cleanup_AdwNavigationViewClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwNavigationViewClass_wrapper")
    queueautoptr_cleanup_AdwNavigationViewClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_NAVIGATION_VIEW_wrapper")
    NAVIGATION_VIEW :: proc(ptr: glib.pointer) -> ^NavigationView ---

    @(link_name = "ADW_IS_NAVIGATION_VIEW_wrapper")
    IS_NAVIGATION_VIEW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwNavigationSplitView_wrapper")
    autoptr_clear_AdwNavigationSplitView :: proc(_ptr: ^NavigationSplitView) ---

    @(link_name = "glib_autoptr_cleanup_AdwNavigationSplitView_wrapper")
    autoptr_cleanup_AdwNavigationSplitView :: proc(_ptr: ^^NavigationSplitView) ---

    @(link_name = "glib_autoptr_destroy_AdwNavigationSplitView_wrapper")
    autoptr_destroy_AdwNavigationSplitView :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwNavigationSplitView_wrapper")
    listautoptr_cleanup_AdwNavigationSplitView :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwNavigationSplitView_wrapper")
    slistautoptr_cleanup_AdwNavigationSplitView :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwNavigationSplitView_wrapper")
    queueautoptr_cleanup_AdwNavigationSplitView :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwNavigationSplitViewClass_wrapper")
    autoptr_clear_AdwNavigationSplitViewClass :: proc(_ptr: ^NavigationSplitViewClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwNavigationSplitViewClass_wrapper")
    autoptr_cleanup_AdwNavigationSplitViewClass :: proc(_ptr: ^^NavigationSplitViewClass) ---

    @(link_name = "glib_autoptr_destroy_AdwNavigationSplitViewClass_wrapper")
    autoptr_destroy_AdwNavigationSplitViewClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwNavigationSplitViewClass_wrapper")
    listautoptr_cleanup_AdwNavigationSplitViewClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwNavigationSplitViewClass_wrapper")
    slistautoptr_cleanup_AdwNavigationSplitViewClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwNavigationSplitViewClass_wrapper")
    queueautoptr_cleanup_AdwNavigationSplitViewClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_NAVIGATION_SPLIT_VIEW_wrapper")
    NAVIGATION_SPLIT_VIEW :: proc(ptr: glib.pointer) -> ^NavigationSplitView ---

    @(link_name = "ADW_IS_NAVIGATION_SPLIT_VIEW_wrapper")
    IS_NAVIGATION_SPLIT_VIEW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwOverlaySplitView_wrapper")
    autoptr_clear_AdwOverlaySplitView :: proc(_ptr: ^OverlaySplitView) ---

    @(link_name = "glib_autoptr_cleanup_AdwOverlaySplitView_wrapper")
    autoptr_cleanup_AdwOverlaySplitView :: proc(_ptr: ^^OverlaySplitView) ---

    @(link_name = "glib_autoptr_destroy_AdwOverlaySplitView_wrapper")
    autoptr_destroy_AdwOverlaySplitView :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwOverlaySplitView_wrapper")
    listautoptr_cleanup_AdwOverlaySplitView :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwOverlaySplitView_wrapper")
    slistautoptr_cleanup_AdwOverlaySplitView :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwOverlaySplitView_wrapper")
    queueautoptr_cleanup_AdwOverlaySplitView :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwOverlaySplitViewClass_wrapper")
    autoptr_clear_AdwOverlaySplitViewClass :: proc(_ptr: ^OverlaySplitViewClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwOverlaySplitViewClass_wrapper")
    autoptr_cleanup_AdwOverlaySplitViewClass :: proc(_ptr: ^^OverlaySplitViewClass) ---

    @(link_name = "glib_autoptr_destroy_AdwOverlaySplitViewClass_wrapper")
    autoptr_destroy_AdwOverlaySplitViewClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwOverlaySplitViewClass_wrapper")
    listautoptr_cleanup_AdwOverlaySplitViewClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwOverlaySplitViewClass_wrapper")
    slistautoptr_cleanup_AdwOverlaySplitViewClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwOverlaySplitViewClass_wrapper")
    queueautoptr_cleanup_AdwOverlaySplitViewClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_OVERLAY_SPLIT_VIEW_wrapper")
    OVERLAY_SPLIT_VIEW :: proc(ptr: glib.pointer) -> ^OverlaySplitView ---

    @(link_name = "ADW_IS_OVERLAY_SPLIT_VIEW_wrapper")
    IS_OVERLAY_SPLIT_VIEW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwPasswordEntryRow_wrapper")
    autoptr_clear_AdwPasswordEntryRow :: proc(_ptr: ^PasswordEntryRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwPasswordEntryRow_wrapper")
    autoptr_cleanup_AdwPasswordEntryRow :: proc(_ptr: ^^PasswordEntryRow) ---

    @(link_name = "glib_autoptr_destroy_AdwPasswordEntryRow_wrapper")
    autoptr_destroy_AdwPasswordEntryRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPasswordEntryRow_wrapper")
    listautoptr_cleanup_AdwPasswordEntryRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPasswordEntryRow_wrapper")
    slistautoptr_cleanup_AdwPasswordEntryRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPasswordEntryRow_wrapper")
    queueautoptr_cleanup_AdwPasswordEntryRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwPasswordEntryRowClass_wrapper")
    autoptr_clear_AdwPasswordEntryRowClass :: proc(_ptr: ^PasswordEntryRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwPasswordEntryRowClass_wrapper")
    autoptr_cleanup_AdwPasswordEntryRowClass :: proc(_ptr: ^^PasswordEntryRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwPasswordEntryRowClass_wrapper")
    autoptr_destroy_AdwPasswordEntryRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPasswordEntryRowClass_wrapper")
    listautoptr_cleanup_AdwPasswordEntryRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPasswordEntryRowClass_wrapper")
    slistautoptr_cleanup_AdwPasswordEntryRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPasswordEntryRowClass_wrapper")
    queueautoptr_cleanup_AdwPasswordEntryRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_PASSWORD_ENTRY_ROW_wrapper")
    PASSWORD_ENTRY_ROW :: proc(ptr: glib.pointer) -> ^PasswordEntryRow ---

    @(link_name = "ADW_IS_PASSWORD_ENTRY_ROW_wrapper")
    IS_PASSWORD_ENTRY_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesGroup_wrapper")
    autoptr_clear_AdwPreferencesGroup :: proc(_ptr: ^PreferencesGroup) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesGroup_wrapper")
    autoptr_cleanup_AdwPreferencesGroup :: proc(_ptr: ^^PreferencesGroup) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesGroup_wrapper")
    autoptr_destroy_AdwPreferencesGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesGroup_wrapper")
    listautoptr_cleanup_AdwPreferencesGroup :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesGroup_wrapper")
    slistautoptr_cleanup_AdwPreferencesGroup :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesGroup_wrapper")
    queueautoptr_cleanup_AdwPreferencesGroup :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesGroupClass_wrapper")
    autoptr_clear_AdwPreferencesGroupClass :: proc(_ptr: ^PreferencesGroupClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesGroupClass_wrapper")
    autoptr_cleanup_AdwPreferencesGroupClass :: proc(_ptr: ^^PreferencesGroupClass) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesGroupClass_wrapper")
    autoptr_destroy_AdwPreferencesGroupClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesGroupClass_wrapper")
    listautoptr_cleanup_AdwPreferencesGroupClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesGroupClass_wrapper")
    slistautoptr_cleanup_AdwPreferencesGroupClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesGroupClass_wrapper")
    queueautoptr_cleanup_AdwPreferencesGroupClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_PREFERENCES_GROUP_wrapper")
    PREFERENCES_GROUP :: proc(ptr: glib.pointer) -> ^PreferencesGroup ---

    @(link_name = "ADW_PREFERENCES_GROUP_CLASS_wrapper")
    PREFERENCES_GROUP_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesGroupClass ---

    @(link_name = "ADW_IS_PREFERENCES_GROUP_wrapper")
    IS_PREFERENCES_GROUP :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_PREFERENCES_GROUP_CLASS_wrapper")
    IS_PREFERENCES_GROUP_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_PREFERENCES_GROUP_GET_CLASS_wrapper")
    PREFERENCES_GROUP_GET_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesGroupClass ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesPage_wrapper")
    autoptr_clear_AdwPreferencesPage :: proc(_ptr: ^PreferencesPage) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesPage_wrapper")
    autoptr_cleanup_AdwPreferencesPage :: proc(_ptr: ^^PreferencesPage) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesPage_wrapper")
    autoptr_destroy_AdwPreferencesPage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesPage_wrapper")
    listautoptr_cleanup_AdwPreferencesPage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesPage_wrapper")
    slistautoptr_cleanup_AdwPreferencesPage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesPage_wrapper")
    queueautoptr_cleanup_AdwPreferencesPage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesPageClass_wrapper")
    autoptr_clear_AdwPreferencesPageClass :: proc(_ptr: ^PreferencesPageClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesPageClass_wrapper")
    autoptr_cleanup_AdwPreferencesPageClass :: proc(_ptr: ^^PreferencesPageClass) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesPageClass_wrapper")
    autoptr_destroy_AdwPreferencesPageClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesPageClass_wrapper")
    listautoptr_cleanup_AdwPreferencesPageClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesPageClass_wrapper")
    slistautoptr_cleanup_AdwPreferencesPageClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesPageClass_wrapper")
    queueautoptr_cleanup_AdwPreferencesPageClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_PREFERENCES_PAGE_wrapper")
    PREFERENCES_PAGE :: proc(ptr: glib.pointer) -> ^PreferencesPage ---

    @(link_name = "ADW_PREFERENCES_PAGE_CLASS_wrapper")
    PREFERENCES_PAGE_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesPageClass ---

    @(link_name = "ADW_IS_PREFERENCES_PAGE_wrapper")
    IS_PREFERENCES_PAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_PREFERENCES_PAGE_CLASS_wrapper")
    IS_PREFERENCES_PAGE_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_PREFERENCES_PAGE_GET_CLASS_wrapper")
    PREFERENCES_PAGE_GET_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesPageClass ---

    @(link_name = "glib_autoptr_clear_AdwToast_wrapper")
    autoptr_clear_AdwToast :: proc(_ptr: ^Toast) ---

    @(link_name = "glib_autoptr_cleanup_AdwToast_wrapper")
    autoptr_cleanup_AdwToast :: proc(_ptr: ^^Toast) ---

    @(link_name = "glib_autoptr_destroy_AdwToast_wrapper")
    autoptr_destroy_AdwToast :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToast_wrapper")
    listautoptr_cleanup_AdwToast :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToast_wrapper")
    slistautoptr_cleanup_AdwToast :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToast_wrapper")
    queueautoptr_cleanup_AdwToast :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwToastClass_wrapper")
    autoptr_clear_AdwToastClass :: proc(_ptr: ^ToastClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwToastClass_wrapper")
    autoptr_cleanup_AdwToastClass :: proc(_ptr: ^^ToastClass) ---

    @(link_name = "glib_autoptr_destroy_AdwToastClass_wrapper")
    autoptr_destroy_AdwToastClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToastClass_wrapper")
    listautoptr_cleanup_AdwToastClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToastClass_wrapper")
    slistautoptr_cleanup_AdwToastClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToastClass_wrapper")
    queueautoptr_cleanup_AdwToastClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TOAST_wrapper")
    TOAST :: proc(ptr: glib.pointer) -> ^Toast ---

    @(link_name = "ADW_IS_TOAST_wrapper")
    IS_TOAST :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesDialog_wrapper")
    autoptr_clear_AdwPreferencesDialog :: proc(_ptr: ^PreferencesDialog) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesDialog_wrapper")
    autoptr_cleanup_AdwPreferencesDialog :: proc(_ptr: ^^PreferencesDialog) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesDialog_wrapper")
    autoptr_destroy_AdwPreferencesDialog :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesDialog_wrapper")
    listautoptr_cleanup_AdwPreferencesDialog :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesDialog_wrapper")
    slistautoptr_cleanup_AdwPreferencesDialog :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesDialog_wrapper")
    queueautoptr_cleanup_AdwPreferencesDialog :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesDialogClass_wrapper")
    autoptr_clear_AdwPreferencesDialogClass :: proc(_ptr: ^PreferencesDialogClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesDialogClass_wrapper")
    autoptr_cleanup_AdwPreferencesDialogClass :: proc(_ptr: ^^PreferencesDialogClass) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesDialogClass_wrapper")
    autoptr_destroy_AdwPreferencesDialogClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesDialogClass_wrapper")
    listautoptr_cleanup_AdwPreferencesDialogClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesDialogClass_wrapper")
    slistautoptr_cleanup_AdwPreferencesDialogClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesDialogClass_wrapper")
    queueautoptr_cleanup_AdwPreferencesDialogClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_PREFERENCES_DIALOG_wrapper")
    PREFERENCES_DIALOG :: proc(ptr: glib.pointer) -> ^PreferencesDialog ---

    @(link_name = "ADW_PREFERENCES_DIALOG_CLASS_wrapper")
    PREFERENCES_DIALOG_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesDialogClass ---

    @(link_name = "ADW_IS_PREFERENCES_DIALOG_wrapper")
    IS_PREFERENCES_DIALOG :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_PREFERENCES_DIALOG_CLASS_wrapper")
    IS_PREFERENCES_DIALOG_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_PREFERENCES_DIALOG_GET_CLASS_wrapper")
    PREFERENCES_DIALOG_GET_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesDialogClass ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesWindow_wrapper")
    autoptr_clear_AdwPreferencesWindow :: proc(_ptr: ^PreferencesWindow) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesWindow_wrapper")
    autoptr_cleanup_AdwPreferencesWindow :: proc(_ptr: ^^PreferencesWindow) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesWindow_wrapper")
    autoptr_destroy_AdwPreferencesWindow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesWindow_wrapper")
    listautoptr_cleanup_AdwPreferencesWindow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesWindow_wrapper")
    slistautoptr_cleanup_AdwPreferencesWindow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesWindow_wrapper")
    queueautoptr_cleanup_AdwPreferencesWindow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwPreferencesWindowClass_wrapper")
    autoptr_clear_AdwPreferencesWindowClass :: proc(_ptr: ^PreferencesWindowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwPreferencesWindowClass_wrapper")
    autoptr_cleanup_AdwPreferencesWindowClass :: proc(_ptr: ^^PreferencesWindowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwPreferencesWindowClass_wrapper")
    autoptr_destroy_AdwPreferencesWindowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwPreferencesWindowClass_wrapper")
    listautoptr_cleanup_AdwPreferencesWindowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwPreferencesWindowClass_wrapper")
    slistautoptr_cleanup_AdwPreferencesWindowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwPreferencesWindowClass_wrapper")
    queueautoptr_cleanup_AdwPreferencesWindowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_PREFERENCES_WINDOW_wrapper")
    PREFERENCES_WINDOW :: proc(ptr: glib.pointer) -> ^PreferencesWindow ---

    @(link_name = "ADW_PREFERENCES_WINDOW_CLASS_wrapper")
    PREFERENCES_WINDOW_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesWindowClass ---

    @(link_name = "ADW_IS_PREFERENCES_WINDOW_wrapper")
    IS_PREFERENCES_WINDOW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_PREFERENCES_WINDOW_CLASS_wrapper")
    IS_PREFERENCES_WINDOW_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_PREFERENCES_WINDOW_GET_CLASS_wrapper")
    PREFERENCES_WINDOW_GET_CLASS :: proc(ptr: glib.pointer) -> ^PreferencesWindowClass ---

    @(link_name = "glib_autoptr_clear_AdwSpinRow_wrapper")
    autoptr_clear_AdwSpinRow :: proc(_ptr: ^SpinRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpinRow_wrapper")
    autoptr_cleanup_AdwSpinRow :: proc(_ptr: ^^SpinRow) ---

    @(link_name = "glib_autoptr_destroy_AdwSpinRow_wrapper")
    autoptr_destroy_AdwSpinRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpinRow_wrapper")
    listautoptr_cleanup_AdwSpinRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpinRow_wrapper")
    slistautoptr_cleanup_AdwSpinRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpinRow_wrapper")
    queueautoptr_cleanup_AdwSpinRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSpinRowClass_wrapper")
    autoptr_clear_AdwSpinRowClass :: proc(_ptr: ^SpinRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpinRowClass_wrapper")
    autoptr_cleanup_AdwSpinRowClass :: proc(_ptr: ^^SpinRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSpinRowClass_wrapper")
    autoptr_destroy_AdwSpinRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpinRowClass_wrapper")
    listautoptr_cleanup_AdwSpinRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpinRowClass_wrapper")
    slistautoptr_cleanup_AdwSpinRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpinRowClass_wrapper")
    queueautoptr_cleanup_AdwSpinRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SPIN_ROW_wrapper")
    SPIN_ROW :: proc(ptr: glib.pointer) -> ^SpinRow ---

    @(link_name = "ADW_IS_SPIN_ROW_wrapper")
    IS_SPIN_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwSpinner_wrapper")
    autoptr_clear_AdwSpinner :: proc(_ptr: ^Spinner) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpinner_wrapper")
    autoptr_cleanup_AdwSpinner :: proc(_ptr: ^^Spinner) ---

    @(link_name = "glib_autoptr_destroy_AdwSpinner_wrapper")
    autoptr_destroy_AdwSpinner :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpinner_wrapper")
    listautoptr_cleanup_AdwSpinner :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpinner_wrapper")
    slistautoptr_cleanup_AdwSpinner :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpinner_wrapper")
    queueautoptr_cleanup_AdwSpinner :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSpinnerClass_wrapper")
    autoptr_clear_AdwSpinnerClass :: proc(_ptr: ^SpinnerClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpinnerClass_wrapper")
    autoptr_cleanup_AdwSpinnerClass :: proc(_ptr: ^^SpinnerClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSpinnerClass_wrapper")
    autoptr_destroy_AdwSpinnerClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpinnerClass_wrapper")
    listautoptr_cleanup_AdwSpinnerClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpinnerClass_wrapper")
    slistautoptr_cleanup_AdwSpinnerClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpinnerClass_wrapper")
    queueautoptr_cleanup_AdwSpinnerClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SPINNER_wrapper")
    SPINNER :: proc(ptr: glib.pointer) -> ^Spinner ---

    @(link_name = "ADW_IS_SPINNER_wrapper")
    IS_SPINNER :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwSpinnerPaintable_wrapper")
    autoptr_clear_AdwSpinnerPaintable :: proc(_ptr: ^SpinnerPaintable) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpinnerPaintable_wrapper")
    autoptr_cleanup_AdwSpinnerPaintable :: proc(_ptr: ^^SpinnerPaintable) ---

    @(link_name = "glib_autoptr_destroy_AdwSpinnerPaintable_wrapper")
    autoptr_destroy_AdwSpinnerPaintable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpinnerPaintable_wrapper")
    listautoptr_cleanup_AdwSpinnerPaintable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpinnerPaintable_wrapper")
    slistautoptr_cleanup_AdwSpinnerPaintable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpinnerPaintable_wrapper")
    queueautoptr_cleanup_AdwSpinnerPaintable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSpinnerPaintableClass_wrapper")
    autoptr_clear_AdwSpinnerPaintableClass :: proc(_ptr: ^SpinnerPaintableClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpinnerPaintableClass_wrapper")
    autoptr_cleanup_AdwSpinnerPaintableClass :: proc(_ptr: ^^SpinnerPaintableClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSpinnerPaintableClass_wrapper")
    autoptr_destroy_AdwSpinnerPaintableClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpinnerPaintableClass_wrapper")
    listautoptr_cleanup_AdwSpinnerPaintableClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpinnerPaintableClass_wrapper")
    slistautoptr_cleanup_AdwSpinnerPaintableClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpinnerPaintableClass_wrapper")
    queueautoptr_cleanup_AdwSpinnerPaintableClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SPINNER_PAINTABLE_wrapper")
    SPINNER_PAINTABLE :: proc(ptr: glib.pointer) -> ^SpinnerPaintable ---

    @(link_name = "ADW_IS_SPINNER_PAINTABLE_wrapper")
    IS_SPINNER_PAINTABLE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwSplitButton_wrapper")
    autoptr_clear_AdwSplitButton :: proc(_ptr: ^SplitButton) ---

    @(link_name = "glib_autoptr_cleanup_AdwSplitButton_wrapper")
    autoptr_cleanup_AdwSplitButton :: proc(_ptr: ^^SplitButton) ---

    @(link_name = "glib_autoptr_destroy_AdwSplitButton_wrapper")
    autoptr_destroy_AdwSplitButton :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSplitButton_wrapper")
    listautoptr_cleanup_AdwSplitButton :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSplitButton_wrapper")
    slistautoptr_cleanup_AdwSplitButton :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSplitButton_wrapper")
    queueautoptr_cleanup_AdwSplitButton :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSplitButtonClass_wrapper")
    autoptr_clear_AdwSplitButtonClass :: proc(_ptr: ^SplitButtonClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSplitButtonClass_wrapper")
    autoptr_cleanup_AdwSplitButtonClass :: proc(_ptr: ^^SplitButtonClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSplitButtonClass_wrapper")
    autoptr_destroy_AdwSplitButtonClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSplitButtonClass_wrapper")
    listautoptr_cleanup_AdwSplitButtonClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSplitButtonClass_wrapper")
    slistautoptr_cleanup_AdwSplitButtonClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSplitButtonClass_wrapper")
    queueautoptr_cleanup_AdwSplitButtonClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SPLIT_BUTTON_wrapper")
    SPLIT_BUTTON :: proc(ptr: glib.pointer) -> ^SplitButton ---

    @(link_name = "ADW_IS_SPLIT_BUTTON_wrapper")
    IS_SPLIT_BUTTON :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwSpringAnimation_wrapper")
    autoptr_clear_AdwSpringAnimation :: proc(_ptr: ^SpringAnimation) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpringAnimation_wrapper")
    autoptr_cleanup_AdwSpringAnimation :: proc(_ptr: ^^SpringAnimation) ---

    @(link_name = "glib_autoptr_destroy_AdwSpringAnimation_wrapper")
    autoptr_destroy_AdwSpringAnimation :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpringAnimation_wrapper")
    listautoptr_cleanup_AdwSpringAnimation :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpringAnimation_wrapper")
    slistautoptr_cleanup_AdwSpringAnimation :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpringAnimation_wrapper")
    queueautoptr_cleanup_AdwSpringAnimation :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSpringAnimationClass_wrapper")
    autoptr_clear_AdwSpringAnimationClass :: proc(_ptr: ^SpringAnimationClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSpringAnimationClass_wrapper")
    autoptr_cleanup_AdwSpringAnimationClass :: proc(_ptr: ^^SpringAnimationClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSpringAnimationClass_wrapper")
    autoptr_destroy_AdwSpringAnimationClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSpringAnimationClass_wrapper")
    listautoptr_cleanup_AdwSpringAnimationClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSpringAnimationClass_wrapper")
    slistautoptr_cleanup_AdwSpringAnimationClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSpringAnimationClass_wrapper")
    queueautoptr_cleanup_AdwSpringAnimationClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SPRING_ANIMATION_wrapper")
    SPRING_ANIMATION :: proc(ptr: glib.pointer) -> ^SpringAnimation ---

    @(link_name = "ADW_SPRING_ANIMATION_CLASS_wrapper")
    SPRING_ANIMATION_CLASS :: proc(ptr: glib.pointer) -> ^SpringAnimationClass ---

    @(link_name = "ADW_IS_SPRING_ANIMATION_wrapper")
    IS_SPRING_ANIMATION :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_SPRING_ANIMATION_CLASS_wrapper")
    IS_SPRING_ANIMATION_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_SPRING_ANIMATION_GET_CLASS_wrapper")
    SPRING_ANIMATION_GET_CLASS :: proc(ptr: glib.pointer) -> ^SpringAnimationClass ---

    @(link_name = "glib_autoptr_clear_AdwSqueezerPage_wrapper")
    autoptr_clear_AdwSqueezerPage :: proc(_ptr: ^SqueezerPage) ---

    @(link_name = "glib_autoptr_cleanup_AdwSqueezerPage_wrapper")
    autoptr_cleanup_AdwSqueezerPage :: proc(_ptr: ^^SqueezerPage) ---

    @(link_name = "glib_autoptr_destroy_AdwSqueezerPage_wrapper")
    autoptr_destroy_AdwSqueezerPage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSqueezerPage_wrapper")
    listautoptr_cleanup_AdwSqueezerPage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSqueezerPage_wrapper")
    slistautoptr_cleanup_AdwSqueezerPage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSqueezerPage_wrapper")
    queueautoptr_cleanup_AdwSqueezerPage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSqueezerPageClass_wrapper")
    autoptr_clear_AdwSqueezerPageClass :: proc(_ptr: ^SqueezerPageClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSqueezerPageClass_wrapper")
    autoptr_cleanup_AdwSqueezerPageClass :: proc(_ptr: ^^SqueezerPageClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSqueezerPageClass_wrapper")
    autoptr_destroy_AdwSqueezerPageClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSqueezerPageClass_wrapper")
    listautoptr_cleanup_AdwSqueezerPageClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSqueezerPageClass_wrapper")
    slistautoptr_cleanup_AdwSqueezerPageClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSqueezerPageClass_wrapper")
    queueautoptr_cleanup_AdwSqueezerPageClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SQUEEZER_PAGE_wrapper")
    SQUEEZER_PAGE :: proc(ptr: glib.pointer) -> ^SqueezerPage ---

    @(link_name = "ADW_IS_SQUEEZER_PAGE_wrapper")
    IS_SQUEEZER_PAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwSqueezer_wrapper")
    autoptr_clear_AdwSqueezer :: proc(_ptr: ^Squeezer) ---

    @(link_name = "glib_autoptr_cleanup_AdwSqueezer_wrapper")
    autoptr_cleanup_AdwSqueezer :: proc(_ptr: ^^Squeezer) ---

    @(link_name = "glib_autoptr_destroy_AdwSqueezer_wrapper")
    autoptr_destroy_AdwSqueezer :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSqueezer_wrapper")
    listautoptr_cleanup_AdwSqueezer :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSqueezer_wrapper")
    slistautoptr_cleanup_AdwSqueezer :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSqueezer_wrapper")
    queueautoptr_cleanup_AdwSqueezer :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSqueezerClass_wrapper")
    autoptr_clear_AdwSqueezerClass :: proc(_ptr: ^SqueezerClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSqueezerClass_wrapper")
    autoptr_cleanup_AdwSqueezerClass :: proc(_ptr: ^^SqueezerClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSqueezerClass_wrapper")
    autoptr_destroy_AdwSqueezerClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSqueezerClass_wrapper")
    listautoptr_cleanup_AdwSqueezerClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSqueezerClass_wrapper")
    slistautoptr_cleanup_AdwSqueezerClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSqueezerClass_wrapper")
    queueautoptr_cleanup_AdwSqueezerClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SQUEEZER_wrapper")
    SQUEEZER :: proc(ptr: glib.pointer) -> ^Squeezer ---

    @(link_name = "ADW_IS_SQUEEZER_wrapper")
    IS_SQUEEZER :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwStatusPage_wrapper")
    autoptr_clear_AdwStatusPage :: proc(_ptr: ^StatusPage) ---

    @(link_name = "glib_autoptr_cleanup_AdwStatusPage_wrapper")
    autoptr_cleanup_AdwStatusPage :: proc(_ptr: ^^StatusPage) ---

    @(link_name = "glib_autoptr_destroy_AdwStatusPage_wrapper")
    autoptr_destroy_AdwStatusPage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwStatusPage_wrapper")
    listautoptr_cleanup_AdwStatusPage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwStatusPage_wrapper")
    slistautoptr_cleanup_AdwStatusPage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwStatusPage_wrapper")
    queueautoptr_cleanup_AdwStatusPage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwStatusPageClass_wrapper")
    autoptr_clear_AdwStatusPageClass :: proc(_ptr: ^StatusPageClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwStatusPageClass_wrapper")
    autoptr_cleanup_AdwStatusPageClass :: proc(_ptr: ^^StatusPageClass) ---

    @(link_name = "glib_autoptr_destroy_AdwStatusPageClass_wrapper")
    autoptr_destroy_AdwStatusPageClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwStatusPageClass_wrapper")
    listautoptr_cleanup_AdwStatusPageClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwStatusPageClass_wrapper")
    slistautoptr_cleanup_AdwStatusPageClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwStatusPageClass_wrapper")
    queueautoptr_cleanup_AdwStatusPageClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_STATUS_PAGE_wrapper")
    STATUS_PAGE :: proc(ptr: glib.pointer) -> ^StatusPage ---

    @(link_name = "ADW_IS_STATUS_PAGE_wrapper")
    IS_STATUS_PAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwSwipeable_wrapper")
    autoptr_clear_AdwSwipeable :: proc(_ptr: ^Swipeable) ---

    @(link_name = "glib_autoptr_cleanup_AdwSwipeable_wrapper")
    autoptr_cleanup_AdwSwipeable :: proc(_ptr: ^^Swipeable) ---

    @(link_name = "glib_autoptr_destroy_AdwSwipeable_wrapper")
    autoptr_destroy_AdwSwipeable :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSwipeable_wrapper")
    listautoptr_cleanup_AdwSwipeable :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSwipeable_wrapper")
    slistautoptr_cleanup_AdwSwipeable :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSwipeable_wrapper")
    queueautoptr_cleanup_AdwSwipeable :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SWIPEABLE_wrapper")
    SWIPEABLE :: proc(ptr: glib.pointer) -> ^Swipeable ---

    @(link_name = "ADW_IS_SWIPEABLE_wrapper")
    IS_SWIPEABLE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_SWIPEABLE_GET_IFACE_wrapper")
    SWIPEABLE_GET_IFACE :: proc(ptr: glib.pointer) -> ^SwipeableInterface ---

    @(link_name = "glib_autoptr_clear_AdwSwipeTracker_wrapper")
    autoptr_clear_AdwSwipeTracker :: proc(_ptr: ^SwipeTracker) ---

    @(link_name = "glib_autoptr_cleanup_AdwSwipeTracker_wrapper")
    autoptr_cleanup_AdwSwipeTracker :: proc(_ptr: ^^SwipeTracker) ---

    @(link_name = "glib_autoptr_destroy_AdwSwipeTracker_wrapper")
    autoptr_destroy_AdwSwipeTracker :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSwipeTracker_wrapper")
    listautoptr_cleanup_AdwSwipeTracker :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSwipeTracker_wrapper")
    slistautoptr_cleanup_AdwSwipeTracker :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSwipeTracker_wrapper")
    queueautoptr_cleanup_AdwSwipeTracker :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSwipeTrackerClass_wrapper")
    autoptr_clear_AdwSwipeTrackerClass :: proc(_ptr: ^SwipeTrackerClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSwipeTrackerClass_wrapper")
    autoptr_cleanup_AdwSwipeTrackerClass :: proc(_ptr: ^^SwipeTrackerClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSwipeTrackerClass_wrapper")
    autoptr_destroy_AdwSwipeTrackerClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSwipeTrackerClass_wrapper")
    listautoptr_cleanup_AdwSwipeTrackerClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSwipeTrackerClass_wrapper")
    slistautoptr_cleanup_AdwSwipeTrackerClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSwipeTrackerClass_wrapper")
    queueautoptr_cleanup_AdwSwipeTrackerClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SWIPE_TRACKER_wrapper")
    SWIPE_TRACKER :: proc(ptr: glib.pointer) -> ^SwipeTracker ---

    @(link_name = "ADW_IS_SWIPE_TRACKER_wrapper")
    IS_SWIPE_TRACKER :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwSwitchRow_wrapper")
    autoptr_clear_AdwSwitchRow :: proc(_ptr: ^SwitchRow) ---

    @(link_name = "glib_autoptr_cleanup_AdwSwitchRow_wrapper")
    autoptr_cleanup_AdwSwitchRow :: proc(_ptr: ^^SwitchRow) ---

    @(link_name = "glib_autoptr_destroy_AdwSwitchRow_wrapper")
    autoptr_destroy_AdwSwitchRow :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSwitchRow_wrapper")
    listautoptr_cleanup_AdwSwitchRow :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSwitchRow_wrapper")
    slistautoptr_cleanup_AdwSwitchRow :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSwitchRow_wrapper")
    queueautoptr_cleanup_AdwSwitchRow :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwSwitchRowClass_wrapper")
    autoptr_clear_AdwSwitchRowClass :: proc(_ptr: ^SwitchRowClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwSwitchRowClass_wrapper")
    autoptr_cleanup_AdwSwitchRowClass :: proc(_ptr: ^^SwitchRowClass) ---

    @(link_name = "glib_autoptr_destroy_AdwSwitchRowClass_wrapper")
    autoptr_destroy_AdwSwitchRowClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwSwitchRowClass_wrapper")
    listautoptr_cleanup_AdwSwitchRowClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwSwitchRowClass_wrapper")
    slistautoptr_cleanup_AdwSwitchRowClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwSwitchRowClass_wrapper")
    queueautoptr_cleanup_AdwSwitchRowClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_SWITCH_ROW_wrapper")
    SWITCH_ROW :: proc(ptr: glib.pointer) -> ^SwitchRow ---

    @(link_name = "ADW_IS_SWITCH_ROW_wrapper")
    IS_SWITCH_ROW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwTabPage_wrapper")
    autoptr_clear_AdwTabPage :: proc(_ptr: ^TabPage) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabPage_wrapper")
    autoptr_cleanup_AdwTabPage :: proc(_ptr: ^^TabPage) ---

    @(link_name = "glib_autoptr_destroy_AdwTabPage_wrapper")
    autoptr_destroy_AdwTabPage :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabPage_wrapper")
    listautoptr_cleanup_AdwTabPage :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabPage_wrapper")
    slistautoptr_cleanup_AdwTabPage :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabPage_wrapper")
    queueautoptr_cleanup_AdwTabPage :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwTabPageClass_wrapper")
    autoptr_clear_AdwTabPageClass :: proc(_ptr: ^TabPageClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabPageClass_wrapper")
    autoptr_cleanup_AdwTabPageClass :: proc(_ptr: ^^TabPageClass) ---

    @(link_name = "glib_autoptr_destroy_AdwTabPageClass_wrapper")
    autoptr_destroy_AdwTabPageClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabPageClass_wrapper")
    listautoptr_cleanup_AdwTabPageClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabPageClass_wrapper")
    slistautoptr_cleanup_AdwTabPageClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabPageClass_wrapper")
    queueautoptr_cleanup_AdwTabPageClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TAB_PAGE_wrapper")
    TAB_PAGE :: proc(ptr: glib.pointer) -> ^TabPage ---

    @(link_name = "ADW_IS_TAB_PAGE_wrapper")
    IS_TAB_PAGE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwTabView_wrapper")
    autoptr_clear_AdwTabView :: proc(_ptr: ^TabView) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabView_wrapper")
    autoptr_cleanup_AdwTabView :: proc(_ptr: ^^TabView) ---

    @(link_name = "glib_autoptr_destroy_AdwTabView_wrapper")
    autoptr_destroy_AdwTabView :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabView_wrapper")
    listautoptr_cleanup_AdwTabView :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabView_wrapper")
    slistautoptr_cleanup_AdwTabView :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabView_wrapper")
    queueautoptr_cleanup_AdwTabView :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwTabViewClass_wrapper")
    autoptr_clear_AdwTabViewClass :: proc(_ptr: ^TabViewClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabViewClass_wrapper")
    autoptr_cleanup_AdwTabViewClass :: proc(_ptr: ^^TabViewClass) ---

    @(link_name = "glib_autoptr_destroy_AdwTabViewClass_wrapper")
    autoptr_destroy_AdwTabViewClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabViewClass_wrapper")
    listautoptr_cleanup_AdwTabViewClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabViewClass_wrapper")
    slistautoptr_cleanup_AdwTabViewClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabViewClass_wrapper")
    queueautoptr_cleanup_AdwTabViewClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TAB_VIEW_wrapper")
    TAB_VIEW :: proc(ptr: glib.pointer) -> ^TabView ---

    @(link_name = "ADW_IS_TAB_VIEW_wrapper")
    IS_TAB_VIEW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwTabBar_wrapper")
    autoptr_clear_AdwTabBar :: proc(_ptr: ^TabBar) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabBar_wrapper")
    autoptr_cleanup_AdwTabBar :: proc(_ptr: ^^TabBar) ---

    @(link_name = "glib_autoptr_destroy_AdwTabBar_wrapper")
    autoptr_destroy_AdwTabBar :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabBar_wrapper")
    listautoptr_cleanup_AdwTabBar :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabBar_wrapper")
    slistautoptr_cleanup_AdwTabBar :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabBar_wrapper")
    queueautoptr_cleanup_AdwTabBar :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwTabBarClass_wrapper")
    autoptr_clear_AdwTabBarClass :: proc(_ptr: ^TabBarClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabBarClass_wrapper")
    autoptr_cleanup_AdwTabBarClass :: proc(_ptr: ^^TabBarClass) ---

    @(link_name = "glib_autoptr_destroy_AdwTabBarClass_wrapper")
    autoptr_destroy_AdwTabBarClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabBarClass_wrapper")
    listautoptr_cleanup_AdwTabBarClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabBarClass_wrapper")
    slistautoptr_cleanup_AdwTabBarClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabBarClass_wrapper")
    queueautoptr_cleanup_AdwTabBarClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TAB_BAR_wrapper")
    TAB_BAR :: proc(ptr: glib.pointer) -> ^TabBar ---

    @(link_name = "ADW_IS_TAB_BAR_wrapper")
    IS_TAB_BAR :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwTabButton_wrapper")
    autoptr_clear_AdwTabButton :: proc(_ptr: ^TabButton) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabButton_wrapper")
    autoptr_cleanup_AdwTabButton :: proc(_ptr: ^^TabButton) ---

    @(link_name = "glib_autoptr_destroy_AdwTabButton_wrapper")
    autoptr_destroy_AdwTabButton :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabButton_wrapper")
    listautoptr_cleanup_AdwTabButton :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabButton_wrapper")
    slistautoptr_cleanup_AdwTabButton :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabButton_wrapper")
    queueautoptr_cleanup_AdwTabButton :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwTabButtonClass_wrapper")
    autoptr_clear_AdwTabButtonClass :: proc(_ptr: ^TabButtonClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabButtonClass_wrapper")
    autoptr_cleanup_AdwTabButtonClass :: proc(_ptr: ^^TabButtonClass) ---

    @(link_name = "glib_autoptr_destroy_AdwTabButtonClass_wrapper")
    autoptr_destroy_AdwTabButtonClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabButtonClass_wrapper")
    listautoptr_cleanup_AdwTabButtonClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabButtonClass_wrapper")
    slistautoptr_cleanup_AdwTabButtonClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabButtonClass_wrapper")
    queueautoptr_cleanup_AdwTabButtonClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TAB_BUTTON_wrapper")
    TAB_BUTTON :: proc(ptr: glib.pointer) -> ^TabButton ---

    @(link_name = "ADW_IS_TAB_BUTTON_wrapper")
    IS_TAB_BUTTON :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwTabOverview_wrapper")
    autoptr_clear_AdwTabOverview :: proc(_ptr: ^TabOverview) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabOverview_wrapper")
    autoptr_cleanup_AdwTabOverview :: proc(_ptr: ^^TabOverview) ---

    @(link_name = "glib_autoptr_destroy_AdwTabOverview_wrapper")
    autoptr_destroy_AdwTabOverview :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabOverview_wrapper")
    listautoptr_cleanup_AdwTabOverview :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabOverview_wrapper")
    slistautoptr_cleanup_AdwTabOverview :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabOverview_wrapper")
    queueautoptr_cleanup_AdwTabOverview :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwTabOverviewClass_wrapper")
    autoptr_clear_AdwTabOverviewClass :: proc(_ptr: ^TabOverviewClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwTabOverviewClass_wrapper")
    autoptr_cleanup_AdwTabOverviewClass :: proc(_ptr: ^^TabOverviewClass) ---

    @(link_name = "glib_autoptr_destroy_AdwTabOverviewClass_wrapper")
    autoptr_destroy_AdwTabOverviewClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTabOverviewClass_wrapper")
    listautoptr_cleanup_AdwTabOverviewClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTabOverviewClass_wrapper")
    slistautoptr_cleanup_AdwTabOverviewClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTabOverviewClass_wrapper")
    queueautoptr_cleanup_AdwTabOverviewClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TAB_OVERVIEW_wrapper")
    TAB_OVERVIEW :: proc(ptr: glib.pointer) -> ^TabOverview ---

    @(link_name = "ADW_IS_TAB_OVERVIEW_wrapper")
    IS_TAB_OVERVIEW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwTimedAnimation_wrapper")
    autoptr_clear_AdwTimedAnimation :: proc(_ptr: ^TimedAnimation) ---

    @(link_name = "glib_autoptr_cleanup_AdwTimedAnimation_wrapper")
    autoptr_cleanup_AdwTimedAnimation :: proc(_ptr: ^^TimedAnimation) ---

    @(link_name = "glib_autoptr_destroy_AdwTimedAnimation_wrapper")
    autoptr_destroy_AdwTimedAnimation :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTimedAnimation_wrapper")
    listautoptr_cleanup_AdwTimedAnimation :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTimedAnimation_wrapper")
    slistautoptr_cleanup_AdwTimedAnimation :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTimedAnimation_wrapper")
    queueautoptr_cleanup_AdwTimedAnimation :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwTimedAnimationClass_wrapper")
    autoptr_clear_AdwTimedAnimationClass :: proc(_ptr: ^TimedAnimationClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwTimedAnimationClass_wrapper")
    autoptr_cleanup_AdwTimedAnimationClass :: proc(_ptr: ^^TimedAnimationClass) ---

    @(link_name = "glib_autoptr_destroy_AdwTimedAnimationClass_wrapper")
    autoptr_destroy_AdwTimedAnimationClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwTimedAnimationClass_wrapper")
    listautoptr_cleanup_AdwTimedAnimationClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwTimedAnimationClass_wrapper")
    slistautoptr_cleanup_AdwTimedAnimationClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwTimedAnimationClass_wrapper")
    queueautoptr_cleanup_AdwTimedAnimationClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TIMED_ANIMATION_wrapper")
    TIMED_ANIMATION :: proc(ptr: glib.pointer) -> ^TimedAnimation ---

    @(link_name = "ADW_TIMED_ANIMATION_CLASS_wrapper")
    TIMED_ANIMATION_CLASS :: proc(ptr: glib.pointer) -> ^TimedAnimationClass ---

    @(link_name = "ADW_IS_TIMED_ANIMATION_wrapper")
    IS_TIMED_ANIMATION :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_IS_TIMED_ANIMATION_CLASS_wrapper")
    IS_TIMED_ANIMATION_CLASS :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "ADW_TIMED_ANIMATION_GET_CLASS_wrapper")
    TIMED_ANIMATION_GET_CLASS :: proc(ptr: glib.pointer) -> ^TimedAnimationClass ---

    @(link_name = "glib_autoptr_clear_AdwToastOverlay_wrapper")
    autoptr_clear_AdwToastOverlay :: proc(_ptr: ^ToastOverlay) ---

    @(link_name = "glib_autoptr_cleanup_AdwToastOverlay_wrapper")
    autoptr_cleanup_AdwToastOverlay :: proc(_ptr: ^^ToastOverlay) ---

    @(link_name = "glib_autoptr_destroy_AdwToastOverlay_wrapper")
    autoptr_destroy_AdwToastOverlay :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToastOverlay_wrapper")
    listautoptr_cleanup_AdwToastOverlay :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToastOverlay_wrapper")
    slistautoptr_cleanup_AdwToastOverlay :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToastOverlay_wrapper")
    queueautoptr_cleanup_AdwToastOverlay :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwToastOverlayClass_wrapper")
    autoptr_clear_AdwToastOverlayClass :: proc(_ptr: ^ToastOverlayClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwToastOverlayClass_wrapper")
    autoptr_cleanup_AdwToastOverlayClass :: proc(_ptr: ^^ToastOverlayClass) ---

    @(link_name = "glib_autoptr_destroy_AdwToastOverlayClass_wrapper")
    autoptr_destroy_AdwToastOverlayClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToastOverlayClass_wrapper")
    listautoptr_cleanup_AdwToastOverlayClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToastOverlayClass_wrapper")
    slistautoptr_cleanup_AdwToastOverlayClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToastOverlayClass_wrapper")
    queueautoptr_cleanup_AdwToastOverlayClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TOAST_OVERLAY_wrapper")
    TOAST_OVERLAY :: proc(ptr: glib.pointer) -> ^ToastOverlay ---

    @(link_name = "ADW_IS_TOAST_OVERLAY_wrapper")
    IS_TOAST_OVERLAY :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwToggle_wrapper")
    autoptr_clear_AdwToggle :: proc(_ptr: ^Toggle) ---

    @(link_name = "glib_autoptr_cleanup_AdwToggle_wrapper")
    autoptr_cleanup_AdwToggle :: proc(_ptr: ^^Toggle) ---

    @(link_name = "glib_autoptr_destroy_AdwToggle_wrapper")
    autoptr_destroy_AdwToggle :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToggle_wrapper")
    listautoptr_cleanup_AdwToggle :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToggle_wrapper")
    slistautoptr_cleanup_AdwToggle :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToggle_wrapper")
    queueautoptr_cleanup_AdwToggle :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwToggleClass_wrapper")
    autoptr_clear_AdwToggleClass :: proc(_ptr: ^ToggleClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwToggleClass_wrapper")
    autoptr_cleanup_AdwToggleClass :: proc(_ptr: ^^ToggleClass) ---

    @(link_name = "glib_autoptr_destroy_AdwToggleClass_wrapper")
    autoptr_destroy_AdwToggleClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToggleClass_wrapper")
    listautoptr_cleanup_AdwToggleClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToggleClass_wrapper")
    slistautoptr_cleanup_AdwToggleClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToggleClass_wrapper")
    queueautoptr_cleanup_AdwToggleClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TOGGLE_wrapper")
    TOGGLE :: proc(ptr: glib.pointer) -> ^Toggle ---

    @(link_name = "ADW_IS_TOGGLE_wrapper")
    IS_TOGGLE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwToggleGroup_wrapper")
    autoptr_clear_AdwToggleGroup :: proc(_ptr: ^ToggleGroup) ---

    @(link_name = "glib_autoptr_cleanup_AdwToggleGroup_wrapper")
    autoptr_cleanup_AdwToggleGroup :: proc(_ptr: ^^ToggleGroup) ---

    @(link_name = "glib_autoptr_destroy_AdwToggleGroup_wrapper")
    autoptr_destroy_AdwToggleGroup :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToggleGroup_wrapper")
    listautoptr_cleanup_AdwToggleGroup :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToggleGroup_wrapper")
    slistautoptr_cleanup_AdwToggleGroup :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToggleGroup_wrapper")
    queueautoptr_cleanup_AdwToggleGroup :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwToggleGroupClass_wrapper")
    autoptr_clear_AdwToggleGroupClass :: proc(_ptr: ^ToggleGroupClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwToggleGroupClass_wrapper")
    autoptr_cleanup_AdwToggleGroupClass :: proc(_ptr: ^^ToggleGroupClass) ---

    @(link_name = "glib_autoptr_destroy_AdwToggleGroupClass_wrapper")
    autoptr_destroy_AdwToggleGroupClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToggleGroupClass_wrapper")
    listautoptr_cleanup_AdwToggleGroupClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToggleGroupClass_wrapper")
    slistautoptr_cleanup_AdwToggleGroupClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToggleGroupClass_wrapper")
    queueautoptr_cleanup_AdwToggleGroupClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TOGGLE_GROUP_wrapper")
    TOGGLE_GROUP :: proc(ptr: glib.pointer) -> ^ToggleGroup ---

    @(link_name = "ADW_IS_TOGGLE_GROUP_wrapper")
    IS_TOGGLE_GROUP :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwToolbarView_wrapper")
    autoptr_clear_AdwToolbarView :: proc(_ptr: ^ToolbarView) ---

    @(link_name = "glib_autoptr_cleanup_AdwToolbarView_wrapper")
    autoptr_cleanup_AdwToolbarView :: proc(_ptr: ^^ToolbarView) ---

    @(link_name = "glib_autoptr_destroy_AdwToolbarView_wrapper")
    autoptr_destroy_AdwToolbarView :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToolbarView_wrapper")
    listautoptr_cleanup_AdwToolbarView :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToolbarView_wrapper")
    slistautoptr_cleanup_AdwToolbarView :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToolbarView_wrapper")
    queueautoptr_cleanup_AdwToolbarView :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwToolbarViewClass_wrapper")
    autoptr_clear_AdwToolbarViewClass :: proc(_ptr: ^ToolbarViewClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwToolbarViewClass_wrapper")
    autoptr_cleanup_AdwToolbarViewClass :: proc(_ptr: ^^ToolbarViewClass) ---

    @(link_name = "glib_autoptr_destroy_AdwToolbarViewClass_wrapper")
    autoptr_destroy_AdwToolbarViewClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwToolbarViewClass_wrapper")
    listautoptr_cleanup_AdwToolbarViewClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwToolbarViewClass_wrapper")
    slistautoptr_cleanup_AdwToolbarViewClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwToolbarViewClass_wrapper")
    queueautoptr_cleanup_AdwToolbarViewClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_TOOLBAR_VIEW_wrapper")
    TOOLBAR_VIEW :: proc(ptr: glib.pointer) -> ^ToolbarView ---

    @(link_name = "ADW_IS_TOOLBAR_VIEW_wrapper")
    IS_TOOLBAR_VIEW :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwViewSwitcher_wrapper")
    autoptr_clear_AdwViewSwitcher :: proc(_ptr: ^ViewSwitcher) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewSwitcher_wrapper")
    autoptr_cleanup_AdwViewSwitcher :: proc(_ptr: ^^ViewSwitcher) ---

    @(link_name = "glib_autoptr_destroy_AdwViewSwitcher_wrapper")
    autoptr_destroy_AdwViewSwitcher :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewSwitcher_wrapper")
    listautoptr_cleanup_AdwViewSwitcher :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewSwitcher_wrapper")
    slistautoptr_cleanup_AdwViewSwitcher :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewSwitcher_wrapper")
    queueautoptr_cleanup_AdwViewSwitcher :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwViewSwitcherClass_wrapper")
    autoptr_clear_AdwViewSwitcherClass :: proc(_ptr: ^ViewSwitcherClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewSwitcherClass_wrapper")
    autoptr_cleanup_AdwViewSwitcherClass :: proc(_ptr: ^^ViewSwitcherClass) ---

    @(link_name = "glib_autoptr_destroy_AdwViewSwitcherClass_wrapper")
    autoptr_destroy_AdwViewSwitcherClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewSwitcherClass_wrapper")
    listautoptr_cleanup_AdwViewSwitcherClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewSwitcherClass_wrapper")
    slistautoptr_cleanup_AdwViewSwitcherClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewSwitcherClass_wrapper")
    queueautoptr_cleanup_AdwViewSwitcherClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_VIEW_SWITCHER_wrapper")
    VIEW_SWITCHER :: proc(ptr: glib.pointer) -> ^ViewSwitcher ---

    @(link_name = "ADW_IS_VIEW_SWITCHER_wrapper")
    IS_VIEW_SWITCHER :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwViewSwitcherBar_wrapper")
    autoptr_clear_AdwViewSwitcherBar :: proc(_ptr: ^ViewSwitcherBar) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewSwitcherBar_wrapper")
    autoptr_cleanup_AdwViewSwitcherBar :: proc(_ptr: ^^ViewSwitcherBar) ---

    @(link_name = "glib_autoptr_destroy_AdwViewSwitcherBar_wrapper")
    autoptr_destroy_AdwViewSwitcherBar :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewSwitcherBar_wrapper")
    listautoptr_cleanup_AdwViewSwitcherBar :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewSwitcherBar_wrapper")
    slistautoptr_cleanup_AdwViewSwitcherBar :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewSwitcherBar_wrapper")
    queueautoptr_cleanup_AdwViewSwitcherBar :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwViewSwitcherBarClass_wrapper")
    autoptr_clear_AdwViewSwitcherBarClass :: proc(_ptr: ^ViewSwitcherBarClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewSwitcherBarClass_wrapper")
    autoptr_cleanup_AdwViewSwitcherBarClass :: proc(_ptr: ^^ViewSwitcherBarClass) ---

    @(link_name = "glib_autoptr_destroy_AdwViewSwitcherBarClass_wrapper")
    autoptr_destroy_AdwViewSwitcherBarClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewSwitcherBarClass_wrapper")
    listautoptr_cleanup_AdwViewSwitcherBarClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewSwitcherBarClass_wrapper")
    slistautoptr_cleanup_AdwViewSwitcherBarClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewSwitcherBarClass_wrapper")
    queueautoptr_cleanup_AdwViewSwitcherBarClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_VIEW_SWITCHER_BAR_wrapper")
    VIEW_SWITCHER_BAR :: proc(ptr: glib.pointer) -> ^ViewSwitcherBar ---

    @(link_name = "ADW_IS_VIEW_SWITCHER_BAR_wrapper")
    IS_VIEW_SWITCHER_BAR :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwViewSwitcherTitle_wrapper")
    autoptr_clear_AdwViewSwitcherTitle :: proc(_ptr: ^ViewSwitcherTitle) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewSwitcherTitle_wrapper")
    autoptr_cleanup_AdwViewSwitcherTitle :: proc(_ptr: ^^ViewSwitcherTitle) ---

    @(link_name = "glib_autoptr_destroy_AdwViewSwitcherTitle_wrapper")
    autoptr_destroy_AdwViewSwitcherTitle :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewSwitcherTitle_wrapper")
    listautoptr_cleanup_AdwViewSwitcherTitle :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewSwitcherTitle_wrapper")
    slistautoptr_cleanup_AdwViewSwitcherTitle :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewSwitcherTitle_wrapper")
    queueautoptr_cleanup_AdwViewSwitcherTitle :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwViewSwitcherTitleClass_wrapper")
    autoptr_clear_AdwViewSwitcherTitleClass :: proc(_ptr: ^ViewSwitcherTitleClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwViewSwitcherTitleClass_wrapper")
    autoptr_cleanup_AdwViewSwitcherTitleClass :: proc(_ptr: ^^ViewSwitcherTitleClass) ---

    @(link_name = "glib_autoptr_destroy_AdwViewSwitcherTitleClass_wrapper")
    autoptr_destroy_AdwViewSwitcherTitleClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwViewSwitcherTitleClass_wrapper")
    listautoptr_cleanup_AdwViewSwitcherTitleClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwViewSwitcherTitleClass_wrapper")
    slistautoptr_cleanup_AdwViewSwitcherTitleClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwViewSwitcherTitleClass_wrapper")
    queueautoptr_cleanup_AdwViewSwitcherTitleClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_VIEW_SWITCHER_TITLE_wrapper")
    VIEW_SWITCHER_TITLE :: proc(ptr: glib.pointer) -> ^ViewSwitcherTitle ---

    @(link_name = "ADW_IS_VIEW_SWITCHER_TITLE_wrapper")
    IS_VIEW_SWITCHER_TITLE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwWindowTitle_wrapper")
    autoptr_clear_AdwWindowTitle :: proc(_ptr: ^WindowTitle) ---

    @(link_name = "glib_autoptr_cleanup_AdwWindowTitle_wrapper")
    autoptr_cleanup_AdwWindowTitle :: proc(_ptr: ^^WindowTitle) ---

    @(link_name = "glib_autoptr_destroy_AdwWindowTitle_wrapper")
    autoptr_destroy_AdwWindowTitle :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwWindowTitle_wrapper")
    listautoptr_cleanup_AdwWindowTitle :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwWindowTitle_wrapper")
    slistautoptr_cleanup_AdwWindowTitle :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwWindowTitle_wrapper")
    queueautoptr_cleanup_AdwWindowTitle :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwWindowTitleClass_wrapper")
    autoptr_clear_AdwWindowTitleClass :: proc(_ptr: ^WindowTitleClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwWindowTitleClass_wrapper")
    autoptr_cleanup_AdwWindowTitleClass :: proc(_ptr: ^^WindowTitleClass) ---

    @(link_name = "glib_autoptr_destroy_AdwWindowTitleClass_wrapper")
    autoptr_destroy_AdwWindowTitleClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwWindowTitleClass_wrapper")
    listautoptr_cleanup_AdwWindowTitleClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwWindowTitleClass_wrapper")
    slistautoptr_cleanup_AdwWindowTitleClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwWindowTitleClass_wrapper")
    queueautoptr_cleanup_AdwWindowTitleClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_WINDOW_TITLE_wrapper")
    WINDOW_TITLE :: proc(ptr: glib.pointer) -> ^WindowTitle ---

    @(link_name = "ADW_IS_WINDOW_TITLE_wrapper")
    IS_WINDOW_TITLE :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwWrapLayout_wrapper")
    autoptr_clear_AdwWrapLayout :: proc(_ptr: ^WrapLayout) ---

    @(link_name = "glib_autoptr_cleanup_AdwWrapLayout_wrapper")
    autoptr_cleanup_AdwWrapLayout :: proc(_ptr: ^^WrapLayout) ---

    @(link_name = "glib_autoptr_destroy_AdwWrapLayout_wrapper")
    autoptr_destroy_AdwWrapLayout :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwWrapLayout_wrapper")
    listautoptr_cleanup_AdwWrapLayout :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwWrapLayout_wrapper")
    slistautoptr_cleanup_AdwWrapLayout :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwWrapLayout_wrapper")
    queueautoptr_cleanup_AdwWrapLayout :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwWrapLayoutClass_wrapper")
    autoptr_clear_AdwWrapLayoutClass :: proc(_ptr: ^WrapLayoutClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwWrapLayoutClass_wrapper")
    autoptr_cleanup_AdwWrapLayoutClass :: proc(_ptr: ^^WrapLayoutClass) ---

    @(link_name = "glib_autoptr_destroy_AdwWrapLayoutClass_wrapper")
    autoptr_destroy_AdwWrapLayoutClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwWrapLayoutClass_wrapper")
    listautoptr_cleanup_AdwWrapLayoutClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwWrapLayoutClass_wrapper")
    slistautoptr_cleanup_AdwWrapLayoutClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwWrapLayoutClass_wrapper")
    queueautoptr_cleanup_AdwWrapLayoutClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_WRAP_LAYOUT_wrapper")
    WRAP_LAYOUT :: proc(ptr: glib.pointer) -> ^WrapLayout ---

    @(link_name = "ADW_IS_WRAP_LAYOUT_wrapper")
    IS_WRAP_LAYOUT :: proc(ptr: glib.pointer) -> glib.boolean ---

    @(link_name = "glib_autoptr_clear_AdwWrapBox_wrapper")
    autoptr_clear_AdwWrapBox :: proc(_ptr: ^WrapBox) ---

    @(link_name = "glib_autoptr_cleanup_AdwWrapBox_wrapper")
    autoptr_cleanup_AdwWrapBox :: proc(_ptr: ^^WrapBox) ---

    @(link_name = "glib_autoptr_destroy_AdwWrapBox_wrapper")
    autoptr_destroy_AdwWrapBox :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwWrapBox_wrapper")
    listautoptr_cleanup_AdwWrapBox :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwWrapBox_wrapper")
    slistautoptr_cleanup_AdwWrapBox :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwWrapBox_wrapper")
    queueautoptr_cleanup_AdwWrapBox :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_AdwWrapBoxClass_wrapper")
    autoptr_clear_AdwWrapBoxClass :: proc(_ptr: ^WrapBoxClass) ---

    @(link_name = "glib_autoptr_cleanup_AdwWrapBoxClass_wrapper")
    autoptr_cleanup_AdwWrapBoxClass :: proc(_ptr: ^^WrapBoxClass) ---

    @(link_name = "glib_autoptr_destroy_AdwWrapBoxClass_wrapper")
    autoptr_destroy_AdwWrapBoxClass :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_AdwWrapBoxClass_wrapper")
    listautoptr_cleanup_AdwWrapBoxClass :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_AdwWrapBoxClass_wrapper")
    slistautoptr_cleanup_AdwWrapBoxClass :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_AdwWrapBoxClass_wrapper")
    queueautoptr_cleanup_AdwWrapBoxClass :: proc(_q: ^^glib.Queue) ---

    @(link_name = "ADW_WRAP_BOX_wrapper")
    WRAP_BOX :: proc(ptr: glib.pointer) -> ^WrapBox ---

    @(link_name = "ADW_IS_WRAP_BOX_wrapper")
    IS_WRAP_BOX :: proc(ptr: glib.pointer) -> glib.boolean ---

}

when (ODIN_OS == .Linux) {

LengthUnit :: enum u32 {PX = 0, PT = 1, SP = 2 }
BreakpointConditionLengthType :: enum u32 {MIN_WIDTH = 0, MAX_WIDTH = 1, MIN_HEIGHT = 2, MAX_HEIGHT = 3 }
BreakpointConditionRatioType :: enum u32 {MIN_ASPECT_RATIO = 0, MAX_ASPECT_RATIO = 1 }
DialogPresentationMode :: enum u32 {AUTO = 0, FLOATING = 1, BOTTOM_SHEET = 2 }
AccentColor :: enum u32 {BLUE = 0, TEAL = 1, GREEN = 2, YELLOW = 3, ORANGE = 4, RED = 5, PINK = 6, PURPLE = 7, SLATE = 8 }
ResponseAppearance :: enum u32 {DEFAULT = 0, SUGGESTED = 1, DESTRUCTIVE = 2 }
AnimationState :: enum u32 {IDLE = 0, PAUSED = 1, PLAYING = 2, FINISHED = 3 }
ColorScheme :: enum u32 {DEFAULT = 0, FORCE_LIGHT = 1, PREFER_LIGHT = 2, PREFER_DARK = 3, FORCE_DARK = 4 }
BannerButtonStyle :: enum u32 {BANNER_BUTTON_DEFAULT = 0, BANNER_BUTTON_SUGGESTED = 1 }
Easing :: enum u32 {LINEAR = 0, EASE_IN_QUAD = 1, EASE_OUT_QUAD = 2, EASE_IN_OUT_QUAD = 3, EASE_IN_CUBIC = 4, EASE_OUT_CUBIC = 5, EASE_IN_OUT_CUBIC = 6, EASE_IN_QUART = 7, EASE_OUT_QUART = 8, EASE_IN_OUT_QUART = 9, EASE_IN_QUINT = 10, EASE_OUT_QUINT = 11, EASE_IN_OUT_QUINT = 12, EASE_IN_SINE = 13, EASE_OUT_SINE = 14, EASE_IN_OUT_SINE = 15, EASE_IN_EXPO = 16, EASE_OUT_EXPO = 17, EASE_IN_OUT_EXPO = 18, EASE_IN_CIRC = 19, EASE_OUT_CIRC = 20, EASE_IN_OUT_CIRC = 21, EASE_IN_ELASTIC = 22, EASE_OUT_ELASTIC = 23, EASE_IN_OUT_ELASTIC = 24, EASE_IN_BACK = 25, EASE_OUT_BACK = 26, EASE_IN_OUT_BACK = 27, EASE_IN_BOUNCE = 28, EASE_OUT_BOUNCE = 29, EASE_IN_OUT_BOUNCE = 30, EASE = 31, EASE_IN = 32, EASE_OUT = 33, EASE_IN_OUT = 34 }
FoldThresholdPolicy :: enum u32 {MINIMUM = 0, NATURAL = 1 }
FlapFoldPolicy :: enum u32 {NEVER = 0, ALWAYS = 1, AUTO = 2 }
FlapTransitionType :: enum u32 {OVER = 0, UNDER = 1, SLIDE = 2 }
CenteringPolicy :: enum u32 {LOOSE = 0, STRICT = 1 }
InlineViewSwitcherDisplayMode :: enum u32 {INLINE_VIEW_SWITCHER_LABELS = 0, INLINE_VIEW_SWITCHER_ICONS = 1, INLINE_VIEW_SWITCHER_BOTH = 2 }
NavigationDirection :: enum u32 {BACK = 0, FORWARD = 1 }
LeafletTransitionType :: enum u32 {OVER = 0, UNDER = 1, SLIDE = 2 }
ToastPriority :: enum u32 {NORMAL = 0, HIGH = 1 }
SqueezerTransitionType :: enum u32 {NONE = 0, CROSSFADE = 1 }
TabViewShortcuts :: enum u32 {NONE = 0, CONTROL_TAB = 1, CONTROL_SHIFT_TAB = 2, CONTROL_PAGE_UP = 4, CONTROL_PAGE_DOWN = 8, CONTROL_HOME = 16, CONTROL_END = 32, CONTROL_SHIFT_PAGE_UP = 64, CONTROL_SHIFT_PAGE_DOWN = 128, CONTROL_SHIFT_HOME = 256, CONTROL_SHIFT_END = 512, ALT_DIGITS = 1024, ALT_ZERO = 2048, ALL_SHORTCUTS = 4095 }
ToolbarStyle :: enum u32 {FLAT = 0, RAISED = 1, RAISED_BORDER = 2 }
ViewSwitcherPolicy :: enum u32 {NARROW = 0, WIDE = 1 }
JustifyMode :: enum u32 {JUSTIFY_NONE = 0, JUSTIFY_FILL = 1, JUSTIFY_SPREAD = 2 }
PackDirection :: enum u32 {PACK_START_TO_END = 0, PACK_END_TO_START = 1 }
WrapPolicy :: enum u32 {WRAP_MINIMUM = 0, WRAP_NATURAL = 1 }

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

LengthUnit :: enum i32 {PX = 0, PT = 1, SP = 2 }
BreakpointConditionLengthType :: enum i32 {MIN_WIDTH = 0, MAX_WIDTH = 1, MIN_HEIGHT = 2, MAX_HEIGHT = 3 }
BreakpointConditionRatioType :: enum i32 {MIN_ASPECT_RATIO = 0, MAX_ASPECT_RATIO = 1 }
DialogPresentationMode :: enum i32 {AUTO = 0, FLOATING = 1, BOTTOM_SHEET = 2 }
AccentColor :: enum i32 {BLUE = 0, TEAL = 1, GREEN = 2, YELLOW = 3, ORANGE = 4, RED = 5, PINK = 6, PURPLE = 7, SLATE = 8 }
ResponseAppearance :: enum i32 {DEFAULT = 0, SUGGESTED = 1, DESTRUCTIVE = 2 }
AnimationState :: enum i32 {IDLE = 0, PAUSED = 1, PLAYING = 2, FINISHED = 3 }
ColorScheme :: enum i32 {DEFAULT = 0, FORCE_LIGHT = 1, PREFER_LIGHT = 2, PREFER_DARK = 3, FORCE_DARK = 4 }
BannerButtonStyle :: enum i32 {BANNER_BUTTON_DEFAULT = 0, BANNER_BUTTON_SUGGESTED = 1 }
Easing :: enum i32 {LINEAR = 0, EASE_IN_QUAD = 1, EASE_OUT_QUAD = 2, EASE_IN_OUT_QUAD = 3, EASE_IN_CUBIC = 4, EASE_OUT_CUBIC = 5, EASE_IN_OUT_CUBIC = 6, EASE_IN_QUART = 7, EASE_OUT_QUART = 8, EASE_IN_OUT_QUART = 9, EASE_IN_QUINT = 10, EASE_OUT_QUINT = 11, EASE_IN_OUT_QUINT = 12, EASE_IN_SINE = 13, EASE_OUT_SINE = 14, EASE_IN_OUT_SINE = 15, EASE_IN_EXPO = 16, EASE_OUT_EXPO = 17, EASE_IN_OUT_EXPO = 18, EASE_IN_CIRC = 19, EASE_OUT_CIRC = 20, EASE_IN_OUT_CIRC = 21, EASE_IN_ELASTIC = 22, EASE_OUT_ELASTIC = 23, EASE_IN_OUT_ELASTIC = 24, EASE_IN_BACK = 25, EASE_OUT_BACK = 26, EASE_IN_OUT_BACK = 27, EASE_IN_BOUNCE = 28, EASE_OUT_BOUNCE = 29, EASE_IN_OUT_BOUNCE = 30, EASE = 31, EASE_IN = 32, EASE_OUT = 33, EASE_IN_OUT = 34 }
FoldThresholdPolicy :: enum i32 {MINIMUM = 0, NATURAL = 1 }
FlapFoldPolicy :: enum i32 {NEVER = 0, ALWAYS = 1, AUTO = 2 }
FlapTransitionType :: enum i32 {OVER = 0, UNDER = 1, SLIDE = 2 }
CenteringPolicy :: enum i32 {LOOSE = 0, STRICT = 1 }
InlineViewSwitcherDisplayMode :: enum i32 {INLINE_VIEW_SWITCHER_LABELS = 0, INLINE_VIEW_SWITCHER_ICONS = 1, INLINE_VIEW_SWITCHER_BOTH = 2 }
NavigationDirection :: enum i32 {BACK = 0, FORWARD = 1 }
LeafletTransitionType :: enum i32 {OVER = 0, UNDER = 1, SLIDE = 2 }
ToastPriority :: enum i32 {NORMAL = 0, HIGH = 1 }
SqueezerTransitionType :: enum i32 {NONE = 0, CROSSFADE = 1 }
TabViewShortcuts :: enum i32 {NONE = 0, CONTROL_TAB = 1, CONTROL_SHIFT_TAB = 2, CONTROL_PAGE_UP = 4, CONTROL_PAGE_DOWN = 8, CONTROL_HOME = 16, CONTROL_END = 32, CONTROL_SHIFT_PAGE_UP = 64, CONTROL_SHIFT_PAGE_DOWN = 128, CONTROL_SHIFT_HOME = 256, CONTROL_SHIFT_END = 512, ALT_DIGITS = 1024, ALT_ZERO = 2048, ALL_SHORTCUTS = 4095 }
ToolbarStyle :: enum i32 {FLAT = 0, RAISED = 1, RAISED_BORDER = 2 }
ViewSwitcherPolicy :: enum i32 {NARROW = 0, WIDE = 1 }
JustifyMode :: enum i32 {JUSTIFY_NONE = 0, JUSTIFY_FILL = 1, JUSTIFY_SPREAD = 2 }
PackDirection :: enum i32 {PACK_START_TO_END = 0, PACK_END_TO_START = 1 }
WrapPolicy :: enum i32 {WRAP_MINIMUM = 0, WRAP_NATURAL = 1 }

}

when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {

when #config(ADWAITA_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import adwaita_runic { "../lib/linux/x86_64/libadwaita.a", "../lib/linux/x86_64/libglib-2.0.a", "../lib/linux/x86_64/libadwaita-wrapper.a" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import adwaita_runic { "system:adwaita-1", "system:glib-2.0", "../lib/linux/x86_64/libadwaita-wrapper.a" }
} 
}

}

when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {

when #config(ADWAITA_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import adwaita_runic { "../lib/linux/aarch64/libadwaita.a", "../lib/linux/aarch64/libglib-2.0.a", "../lib/linux/aarch64/libadwaita-wrapper.a" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import adwaita_runic { "system:adwaita-1", "system:glib-2.0", "../lib/linux/aarch64/libadwaita-wrapper.a" }
} 
}

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {
    foreign import adwaita_runic { "../lib/windows/x86_64/adwaita-1.lib", "../lib/windows/x86_64/adwaita-wrapper.lib" }
} 

}

