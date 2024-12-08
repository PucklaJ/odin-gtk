package gtk

import "../cairo"
import "../glib"
import "../glib/gio"
import "../graphene"
import "../pango"
import gdk "../gdk-pixbuf"
import gobj "../glib/gobject"

CssParserError :: enum u32 {CSS_PARSER_ERROR_FAILED = 0, CSS_PARSER_ERROR_SYNTAX = 1, CSS_PARSER_ERROR_IMPORT = 2, CSS_PARSER_ERROR_NAME = 3, CSS_PARSER_ERROR_UNKNOWN_VALUE = 4, }
CssParserWarning :: enum u32 {CSS_PARSER_WARNING_DEPRECATED = 0, CSS_PARSER_WARNING_SYNTAX = 1, CSS_PARSER_WARNING_UNIMPLEMENTED = 2, }
_GtkCssLocation :: struct {
    bytes: glib.size,
    chars: glib.size,
    lines: glib.size,
    line_bytes: glib.size,
    line_chars: glib.size,
}
CssLocation :: _GtkCssLocation
_GtkCssSection :: rawptr
CssSection :: _GtkCssSection
GLAPI :: enum u32 {GL_API_GL = 1, GL_API_GLES = 2, }
Gravity :: enum u32 {GRAVITY_NORTH_WEST = 1, GRAVITY_NORTH = 2, GRAVITY_NORTH_EAST = 3, GRAVITY_WEST = 4, GRAVITY_CENTER = 5, GRAVITY_EAST = 6, GRAVITY_SOUTH_WEST = 7, GRAVITY_SOUTH = 8, GRAVITY_SOUTH_EAST = 9, GRAVITY_STATIC = 10, }
ModifierType :: enum u32 {SHIFT_MASK = 1, LOCK_MASK = 2, CONTROL_MASK = 4, ALT_MASK = 8, BUTTON1_MASK = 256, BUTTON2_MASK = 512, BUTTON3_MASK = 1024, BUTTON4_MASK = 2048, BUTTON5_MASK = 4096, SUPER_MASK = 67108864, HYPER_MASK = 134217728, META_MASK = 268435456, }
GLError :: enum u32 {GL_ERROR_NOT_AVAILABLE = 0, GL_ERROR_UNSUPPORTED_FORMAT = 1, GL_ERROR_UNSUPPORTED_PROFILE = 2, GL_ERROR_COMPILATION_FAILED = 3, GL_ERROR_LINK_FAILED = 4, }
VulkanError :: enum u32 {VULKAN_ERROR_UNSUPPORTED = 0, VULKAN_ERROR_NOT_AVAILABLE = 1, }
AxisUse :: enum u32 {AXIS_IGNORE = 0, AXIS_X = 1, AXIS_Y = 2, AXIS_DELTA_X = 3, AXIS_DELTA_Y = 4, AXIS_PRESSURE = 5, AXIS_XTILT = 6, AXIS_YTILT = 7, AXIS_WHEEL = 8, AXIS_DISTANCE = 9, AXIS_ROTATION = 10, AXIS_SLIDER = 11, AXIS_LAST = 12, }
AxisFlags :: enum u32 {AXIS_FLAG_X = 2, AXIS_FLAG_Y = 4, AXIS_FLAG_DELTA_X = 8, AXIS_FLAG_DELTA_Y = 16, AXIS_FLAG_PRESSURE = 32, AXIS_FLAG_XTILT = 64, AXIS_FLAG_YTILT = 128, AXIS_FLAG_WHEEL = 256, AXIS_FLAG_DISTANCE = 512, AXIS_FLAG_ROTATION = 1024, AXIS_FLAG_SLIDER = 2048, }
DragAction :: enum u32 {ACTION_COPY = 1, ACTION_MOVE = 2, ACTION_LINK = 4, ACTION_ASK = 8, }
MemoryFormat :: enum u32 {MEMORY_B8G8R8A8_PREMULTIPLIED = 0, MEMORY_A8R8G8B8_PREMULTIPLIED = 1, MEMORY_R8G8B8A8_PREMULTIPLIED = 2, MEMORY_B8G8R8A8 = 3, MEMORY_A8R8G8B8 = 4, MEMORY_R8G8B8A8 = 5, MEMORY_A8B8G8R8 = 6, MEMORY_R8G8B8 = 7, MEMORY_B8G8R8 = 8, MEMORY_R16G16B16 = 9, MEMORY_R16G16B16A16_PREMULTIPLIED = 10, MEMORY_R16G16B16A16 = 11, MEMORY_R16G16B16_FLOAT = 12, MEMORY_R16G16B16A16_FLOAT_PREMULTIPLIED = 13, MEMORY_R16G16B16A16_FLOAT = 14, MEMORY_R32G32B32_FLOAT = 15, MEMORY_R32G32B32A32_FLOAT_PREMULTIPLIED = 16, MEMORY_R32G32B32A32_FLOAT = 17, MEMORY_G8A8_PREMULTIPLIED = 18, MEMORY_G8A8 = 19, MEMORY_G8 = 20, MEMORY_G16A16_PREMULTIPLIED = 21, MEMORY_G16A16 = 22, MEMORY_G16 = 23, MEMORY_A8 = 24, MEMORY_A16 = 25, MEMORY_A16_FLOAT = 26, MEMORY_A32_FLOAT = 27, MEMORY_N_FORMATS = 28, }
Rectangle :: cairo.rectangle_int_t
_GdkRGBA :: struct {
    red: f32,
    green: f32,
    blue: f32,
    alpha: f32,
}
RGBA :: _GdkRGBA
_GdkContentFormats :: rawptr
ContentFormats :: _GdkContentFormats
_GdkContentProvider :: struct {
    parent: gobj.Object,
}
ContentProvider :: _GdkContentProvider
_GdkCursor :: rawptr
Cursor :: _GdkCursor
_GdkTexture :: rawptr
Texture :: _GdkTexture
_GdkTextureDownloader :: rawptr
TextureDownloader :: _GdkTextureDownloader
_GdkDevice :: rawptr
Device :: _GdkDevice
_GdkDrag :: rawptr
Drag :: _GdkDrag
_GdkDrop :: rawptr
Drop :: _GdkDrop
_GdkClipboard :: rawptr
Clipboard :: _GdkClipboard
_GdkDisplayManager :: rawptr
DisplayManager :: _GdkDisplayManager
_GdkDisplay :: rawptr
Display :: _GdkDisplay
_GdkSurface :: rawptr
Surface :: _GdkSurface
_GdkAppLaunchContext :: rawptr
AppLaunchContext :: _GdkAppLaunchContext
_GdkSeat :: struct {
    parent_instance: gobj.Object,
}
Seat :: _GdkSeat
_GdkSnapshot :: rawptr
Snapshot :: _GdkSnapshot
_GdkDrawContext :: rawptr
DrawContext :: _GdkDrawContext
_GdkCairoContext :: rawptr
CairoContext :: _GdkCairoContext
_GdkGLContext :: rawptr
GLContext :: _GdkGLContext
_GdkVulkanContext :: rawptr
VulkanContext :: _GdkVulkanContext
_GdkKeymapKey :: struct {
    keycode: glib.uint_,
    group: i32,
    level: i32,
}
KeymapKey :: _GdkKeymapKey
AppLaunchContext_autoptr :: ^AppLaunchContext
AppLaunchContext_listautoptr :: ^glib.List
AppLaunchContext_slistautoptr :: ^glib.SList
AppLaunchContext_queueautoptr :: ^glib.Queue
Clipboard_autoptr :: ^Clipboard
Clipboard_listautoptr :: ^glib.List
Clipboard_slistautoptr :: ^glib.SList
Clipboard_queueautoptr :: ^glib.Queue
_GdkContentDeserializer :: rawptr
ContentDeserializer :: _GdkContentDeserializer
ContentDeserializeFunc :: #type proc "c" (deserializer: ^ContentDeserializer)
_GdkContentFormatsBuilder :: rawptr
ContentFormatsBuilder :: _GdkContentFormatsBuilder
ContentFormats_autoptr :: ^ContentFormats
ContentFormats_listautoptr :: ^glib.List
ContentFormats_slistautoptr :: ^glib.SList
ContentFormats_queueautoptr :: ^glib.Queue
_GdkFileList :: rawptr
FileList :: _GdkFileList
content_changed_func_ptr_anon_0 :: #type proc "c" (provider: ^ContentProvider)
attach_clipboard_func_ptr_anon_1 :: #type proc "c" (provider: ^ContentProvider, clipboard: ^Clipboard)
detach_clipboard_func_ptr_anon_2 :: #type proc "c" (provider: ^ContentProvider, clipboard: ^Clipboard)
ref_formats_func_ptr_anon_3 :: #type proc "c" (provider: ^ContentProvider) -> ^ContentFormats
ref_storable_formats_func_ptr_anon_4 :: #type proc "c" (provider: ^ContentProvider) -> ^ContentFormats
write_mime_type_async_func_ptr_anon_5 :: #type proc "c" (provider: ^ContentProvider, mime_type: cstring, stream: ^gio.OutputStream, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer)
write_mime_type_finish_func_ptr_anon_6 :: #type proc "c" (provider: ^ContentProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean
et_value_func_ptr_anon_7 :: #type proc "c" (provider: ^ContentProvider, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean
_GdkContentProviderClass :: struct {
    parent_class: gobj.ObjectClass,
    content_changed: content_changed_func_ptr_anon_0,
    attach_clipboard: attach_clipboard_func_ptr_anon_1,
    detach_clipboard: detach_clipboard_func_ptr_anon_2,
    ref_formats: ref_formats_func_ptr_anon_3,
    ref_storable_formats: ref_storable_formats_func_ptr_anon_4,
    write_mime_type_async: write_mime_type_async_func_ptr_anon_5,
    write_mime_type_finish: write_mime_type_finish_func_ptr_anon_6,
    get_value: et_value_func_ptr_anon_7,
    padding: [8]glib.pointer,
}
ContentProviderClass :: _GdkContentProviderClass
ContentProvider_autoptr :: ^ContentProvider
ContentProvider_listautoptr :: ^glib.List
ContentProvider_slistautoptr :: ^glib.SList
ContentProvider_queueautoptr :: ^glib.Queue
_GdkContentSerializer :: rawptr
ContentSerializer :: _GdkContentSerializer
ContentSerializeFunc :: #type proc "c" (serializer: ^ContentSerializer)
Cursor_autoptr :: ^Cursor
Cursor_listautoptr :: ^glib.List
Cursor_slistautoptr :: ^glib.SList
Cursor_queueautoptr :: ^glib.Queue
_GdkDeviceTool :: rawptr
DeviceTool :: _GdkDeviceTool
DeviceToolType :: enum u32 {DEVICE_TOOL_TYPE_UNKNOWN = 0, DEVICE_TOOL_TYPE_PEN = 1, DEVICE_TOOL_TYPE_ERASER = 2, DEVICE_TOOL_TYPE_BRUSH = 3, DEVICE_TOOL_TYPE_PENCIL = 4, DEVICE_TOOL_TYPE_AIRBRUSH = 5, DEVICE_TOOL_TYPE_MOUSE = 6, DEVICE_TOOL_TYPE_LENS = 7, }
_GdkTimeCoord :: struct {
    time: glib.uint32,
    flags: AxisFlags,
    axes: [12]f64,
}
TimeCoord :: _GdkTimeCoord
InputSource :: enum u32 {SOURCE_MOUSE = 0, SOURCE_PEN = 1, SOURCE_KEYBOARD = 2, SOURCE_TOUCHSCREEN = 3, SOURCE_TOUCHPAD = 4, SOURCE_TRACKPOINT = 5, SOURCE_TABLET_PAD = 6, }
Device_autoptr :: ^Device
Device_listautoptr :: ^glib.List
Device_slistautoptr :: ^glib.SList
Device_queueautoptr :: ^glib.Queue
_GdkDevicePad :: rawptr
DevicePad :: _GdkDevicePad
_GdkDevicePadInterface :: rawptr
DevicePadInterface :: _GdkDevicePadInterface
DevicePadFeature :: enum u32 {DEVICE_PAD_FEATURE_BUTTON = 0, DEVICE_PAD_FEATURE_RING = 1, DEVICE_PAD_FEATURE_STRIP = 2, }
DragCancelReason :: enum u32 {DRAG_CANCEL_NO_TARGET = 0, DRAG_CANCEL_USER_CANCELLED = 1, DRAG_CANCEL_ERROR = 2, }
Drag_autoptr :: ^Drag
Drag_listautoptr :: ^glib.List
Drag_slistautoptr :: ^glib.SList
Drag_queueautoptr :: ^glib.Queue
_GdkEventSequence :: rawptr
EventSequence :: _GdkEventSequence
_GdkEvent :: rawptr
Event :: _GdkEvent
_GdkButtonEvent :: rawptr
ButtonEvent :: _GdkButtonEvent
_GdkCrossingEvent :: rawptr
CrossingEvent :: _GdkCrossingEvent
_GdkDeleteEvent :: rawptr
DeleteEvent :: _GdkDeleteEvent
_GdkDNDEvent :: rawptr
DNDEvent :: _GdkDNDEvent
_GdkFocusEvent :: rawptr
FocusEvent :: _GdkFocusEvent
_GdkGrabBrokenEvent :: rawptr
GrabBrokenEvent :: _GdkGrabBrokenEvent
_GdkKeyEvent :: rawptr
KeyEvent :: _GdkKeyEvent
_GdkMotionEvent :: rawptr
MotionEvent :: _GdkMotionEvent
_GdkPadEvent :: rawptr
PadEvent :: _GdkPadEvent
_GdkProximityEvent :: rawptr
ProximityEvent :: _GdkProximityEvent
_GdkScrollEvent :: rawptr
ScrollEvent :: _GdkScrollEvent
_GdkTouchEvent :: rawptr
TouchEvent :: _GdkTouchEvent
_GdkTouchpadEvent :: rawptr
TouchpadEvent :: _GdkTouchpadEvent
EventType :: enum u32 {DELETE = 0, MOTION_NOTIFY = 1, BUTTON_PRESS = 2, BUTTON_RELEASE = 3, KEY_PRESS = 4, KEY_RELEASE = 5, ENTER_NOTIFY = 6, LEAVE_NOTIFY = 7, FOCUS_CHANGE = 8, PROXIMITY_IN = 9, PROXIMITY_OUT = 10, DRAG_ENTER = 11, DRAG_LEAVE = 12, DRAG_MOTION = 13, DROP_START = 14, SCROLL = 15, GRAB_BROKEN = 16, TOUCH_BEGIN = 17, TOUCH_UPDATE = 18, TOUCH_END = 19, TOUCH_CANCEL = 20, TOUCHPAD_SWIPE = 21, TOUCHPAD_PINCH = 22, PAD_BUTTON_PRESS = 23, PAD_BUTTON_RELEASE = 24, PAD_RING = 25, PAD_STRIP = 26, PAD_GROUP_MODE = 27, TOUCHPAD_HOLD = 28, EVENT_LAST = 29, }
TouchpadGesturePhase :: enum u32 {TOUCHPAD_GESTURE_PHASE_BEGIN = 0, TOUCHPAD_GESTURE_PHASE_UPDATE = 1, TOUCHPAD_GESTURE_PHASE_END = 2, TOUCHPAD_GESTURE_PHASE_CANCEL = 3, }
ScrollDirection :: enum u32 {SCROLL_UP = 0, SCROLL_DOWN = 1, SCROLL_LEFT = 2, SCROLL_RIGHT = 3, SCROLL_SMOOTH = 4, }
ScrollUnit :: enum u32 {SCROLL_UNIT_WHEEL = 0, SCROLL_UNIT_SURFACE = 1, }
NotifyType :: enum u32 {NOTIFY_ANCESTOR = 0, NOTIFY_VIRTUAL = 1, NOTIFY_INFERIOR = 2, NOTIFY_NONLINEAR = 3, NOTIFY_NONLINEAR_VIRTUAL = 4, NOTIFY_UNKNOWN = 5, }
CrossingMode :: enum u32 {CROSSING_NORMAL = 0, CROSSING_GRAB = 1, CROSSING_UNGRAB = 2, CROSSING_GTK_GRAB = 3, CROSSING_GTK_UNGRAB = 4, CROSSING_STATE_CHANGED = 5, CROSSING_TOUCH_BEGIN = 6, CROSSING_TOUCH_END = 7, CROSSING_DEVICE_SWITCH = 8, }
KeyMatch :: enum u32 {KEY_MATCH_NONE = 0, KEY_MATCH_PARTIAL = 1, KEY_MATCH_EXACT = 2, }
Event_autoptr :: ^Event
Event_listautoptr :: ^glib.List
Event_slistautoptr :: ^glib.SList
Event_queueautoptr :: ^glib.Queue
_GdkFrameTimings :: rawptr
FrameTimings :: _GdkFrameTimings
FrameTimings_autoptr :: ^FrameTimings
FrameTimings_listautoptr :: ^glib.List
FrameTimings_slistautoptr :: ^glib.SList
FrameTimings_queueautoptr :: ^glib.Queue
_GdkFrameClock :: rawptr
FrameClock :: _GdkFrameClock
_GdkFrameClockPrivate :: rawptr
FrameClockPrivate :: _GdkFrameClockPrivate
_GdkFrameClockClass :: rawptr
FrameClockClass :: _GdkFrameClockClass
FrameClockPhase :: enum u32 {FRAME_CLOCK_PHASE_NONE = 0, FRAME_CLOCK_PHASE_FLUSH_EVENTS = 1, FRAME_CLOCK_PHASE_BEFORE_PAINT = 2, FRAME_CLOCK_PHASE_UPDATE = 4, FRAME_CLOCK_PHASE_LAYOUT = 8, FRAME_CLOCK_PHASE_PAINT = 16, FRAME_CLOCK_PHASE_RESUME_EVENTS = 32, FRAME_CLOCK_PHASE_AFTER_PAINT = 64, }
FrameClock_autoptr :: ^FrameClock
FrameClock_listautoptr :: ^glib.List
FrameClock_slistautoptr :: ^glib.SList
FrameClock_queueautoptr :: ^glib.Queue
_GdkMonitor :: rawptr
Monitor :: _GdkMonitor
_GdkMonitorClass :: rawptr
MonitorClass :: _GdkMonitorClass
SubpixelLayout :: enum u32 {SUBPIXEL_LAYOUT_UNKNOWN = 0, SUBPIXEL_LAYOUT_NONE = 1, SUBPIXEL_LAYOUT_HORIZONTAL_RGB = 2, SUBPIXEL_LAYOUT_HORIZONTAL_BGR = 3, SUBPIXEL_LAYOUT_VERTICAL_RGB = 4, SUBPIXEL_LAYOUT_VERTICAL_BGR = 5, }
Monitor_autoptr :: ^Monitor
Monitor_listautoptr :: ^glib.List
Monitor_slistautoptr :: ^glib.SList
Monitor_queueautoptr :: ^glib.Queue
AnchorHints :: enum u32 {ANCHOR_FLIP_X = 1, ANCHOR_FLIP_Y = 2, ANCHOR_SLIDE_X = 4, ANCHOR_SLIDE_Y = 8, ANCHOR_RESIZE_X = 16, ANCHOR_RESIZE_Y = 32, ANCHOR_FLIP = 3, ANCHOR_SLIDE = 12, ANCHOR_RESIZE = 48, }
_GdkPopupLayout :: rawptr
PopupLayout :: _GdkPopupLayout
PopupLayout_autoptr :: ^PopupLayout
PopupLayout_listautoptr :: ^glib.List
PopupLayout_slistautoptr :: ^glib.SList
PopupLayout_queueautoptr :: ^glib.Queue
_GdkSurfaceClass :: rawptr
SurfaceClass :: _GdkSurfaceClass
Surface_autoptr :: ^Surface
Surface_listautoptr :: ^glib.List
Surface_slistautoptr :: ^glib.SList
Surface_queueautoptr :: ^glib.Queue
SeatCapabilities :: enum u32 {SEAT_CAPABILITY_NONE = 0, SEAT_CAPABILITY_POINTER = 1, SEAT_CAPABILITY_TOUCH = 2, SEAT_CAPABILITY_TABLET_STYLUS = 4, SEAT_CAPABILITY_KEYBOARD = 8, SEAT_CAPABILITY_TABLET_PAD = 16, SEAT_CAPABILITY_ALL_POINTING = 7, SEAT_CAPABILITY_ALL = 31, }
Seat_autoptr :: ^Seat
Seat_listautoptr :: ^glib.List
Seat_slistautoptr :: ^glib.SList
Seat_queueautoptr :: ^glib.Queue
Display_autoptr :: ^Display
Display_listautoptr :: ^glib.List
Display_slistautoptr :: ^glib.SList
Display_queueautoptr :: ^glib.Queue
DisplayManager_autoptr :: ^DisplayManager
DisplayManager_listautoptr :: ^glib.List
DisplayManager_slistautoptr :: ^glib.SList
DisplayManager_queueautoptr :: ^glib.Queue
_GdkDragSurface :: rawptr
DragSurface :: _GdkDragSurface
_GdkDragSurfaceInterface :: rawptr
DragSurfaceInterface :: _GdkDragSurfaceInterface
DragSurface_autoptr :: ^DragSurface
DragSurface_listautoptr :: ^glib.List
DragSurface_slistautoptr :: ^glib.SList
DragSurface_queueautoptr :: ^glib.Queue
_GdkDragSurfaceSize :: rawptr
DragSurfaceSize :: _GdkDragSurfaceSize
DrawContext_autoptr :: ^DrawContext
DrawContext_listautoptr :: ^glib.List
DrawContext_slistautoptr :: ^glib.SList
DrawContext_queueautoptr :: ^glib.Queue
Drop_autoptr :: ^Drop
Drop_listautoptr :: ^glib.List
Drop_slistautoptr :: ^glib.SList
Drop_queueautoptr :: ^glib.Queue
GLContext_autoptr :: ^GLContext
GLContext_listautoptr :: ^glib.List
GLContext_slistautoptr :: ^glib.SList
GLContext_queueautoptr :: ^glib.Queue
_GdkTextureClass :: rawptr
TextureClass :: _GdkTextureClass
TextureError :: enum u32 {TEXTURE_ERROR_TOO_LARGE = 0, TEXTURE_ERROR_CORRUPT_IMAGE = 1, TEXTURE_ERROR_UNSUPPORTED_CONTENT = 2, TEXTURE_ERROR_UNSUPPORTED_FORMAT = 3, }
Texture_autoptr :: ^Texture
Texture_listautoptr :: ^glib.List
Texture_slistautoptr :: ^glib.SList
Texture_queueautoptr :: ^glib.Queue
_GdkGLTexture :: rawptr
GLTexture :: _GdkGLTexture
_GdkGLTextureClass :: rawptr
GLTextureClass :: _GdkGLTextureClass
GLTexture_autoptr :: ^GLTexture
GLTexture_listautoptr :: ^glib.List
GLTexture_slistautoptr :: ^glib.SList
GLTexture_queueautoptr :: ^glib.Queue
_GdkGLTextureBuilder :: rawptr
GLTextureBuilder :: _GdkGLTextureBuilder
_GdkGLTextureBuilderClass :: rawptr
GLTextureBuilderClass :: _GdkGLTextureBuilderClass
GLTextureBuilder_autoptr :: ^GLTextureBuilder
GLTextureBuilder_listautoptr :: ^glib.List
GLTextureBuilder_slistautoptr :: ^glib.SList
GLTextureBuilder_queueautoptr :: ^glib.Queue
GLTextureBuilderClass_autoptr :: ^GLTextureBuilderClass
GLTextureBuilderClass_listautoptr :: ^glib.List
GLTextureBuilderClass_slistautoptr :: ^glib.SList
GLTextureBuilderClass_queueautoptr :: ^glib.Queue
_GdkMemoryTexture :: rawptr
MemoryTexture :: _GdkMemoryTexture
_GdkMemoryTextureClass :: rawptr
MemoryTextureClass :: _GdkMemoryTextureClass
MemoryTexture_autoptr :: ^MemoryTexture
MemoryTexture_listautoptr :: ^glib.List
MemoryTexture_slistautoptr :: ^glib.SList
MemoryTexture_queueautoptr :: ^glib.Queue
_GdkPaintable :: rawptr
Paintable :: _GdkPaintable
snapshot_func_ptr_anon_8 :: #type proc "c" (paintable: ^Paintable, snapshot: ^Snapshot, width: f64, height: f64)
et_current_image_func_ptr_anon_9 :: #type proc "c" (paintable: ^Paintable) -> ^Paintable
PaintableFlags :: enum u32 {PAINTABLE_STATIC_SIZE = 1, PAINTABLE_STATIC_CONTENTS = 2, }
et_flags_func_ptr_anon_10 :: #type proc "c" (paintable: ^Paintable) -> PaintableFlags
et_intrinsic_width_func_ptr_anon_11 :: #type proc "c" (paintable: ^Paintable) -> i32
et_intrinsic_height_func_ptr_anon_12 :: #type proc "c" (paintable: ^Paintable) -> i32
et_intrinsic_aspect_ratio_func_ptr_anon_13 :: #type proc "c" (paintable: ^Paintable) -> f64
_GdkPaintableInterface :: struct {
    g_iface: gobj.TypeInterface,
    snapshot: snapshot_func_ptr_anon_8,
    get_current_image: et_current_image_func_ptr_anon_9,
    get_flags: et_flags_func_ptr_anon_10,
    get_intrinsic_width: et_intrinsic_width_func_ptr_anon_11,
    get_intrinsic_height: et_intrinsic_height_func_ptr_anon_12,
    get_intrinsic_aspect_ratio: et_intrinsic_aspect_ratio_func_ptr_anon_13,
}
PaintableInterface :: _GdkPaintableInterface
Paintable_autoptr :: ^Paintable
Paintable_listautoptr :: ^glib.List
Paintable_slistautoptr :: ^glib.SList
Paintable_queueautoptr :: ^glib.Queue
_GdkPopup :: rawptr
Popup :: _GdkPopup
_GdkPopupInterface :: rawptr
PopupInterface :: _GdkPopupInterface
Popup_autoptr :: ^Popup
Popup_listautoptr :: ^glib.List
Popup_slistautoptr :: ^glib.SList
Popup_queueautoptr :: ^glib.Queue
RGBA_autoptr :: ^RGBA
RGBA_listautoptr :: ^glib.List
RGBA_slistautoptr :: ^glib.SList
RGBA_queueautoptr :: ^glib.Queue
_GdkSnapshotClass :: rawptr
SnapshotClass :: _GdkSnapshotClass




TextureDownloader_autoptr :: ^TextureDownloader
TextureDownloader_listautoptr :: ^glib.List
TextureDownloader_slistautoptr :: ^glib.SList
TextureDownloader_queueautoptr :: ^glib.Queue
_GdkToplevelLayout :: rawptr
ToplevelLayout :: _GdkToplevelLayout
ToplevelLayout_autoptr :: ^ToplevelLayout
ToplevelLayout_listautoptr :: ^glib.List
ToplevelLayout_slistautoptr :: ^glib.SList
ToplevelLayout_queueautoptr :: ^glib.Queue
SurfaceEdge :: enum u32 {SURFACE_EDGE_NORTH_WEST = 0, SURFACE_EDGE_NORTH = 1, SURFACE_EDGE_NORTH_EAST = 2, SURFACE_EDGE_WEST = 3, SURFACE_EDGE_EAST = 4, SURFACE_EDGE_SOUTH_WEST = 5, SURFACE_EDGE_SOUTH = 6, SURFACE_EDGE_SOUTH_EAST = 7, }
FullscreenMode :: enum u32 {FULLSCREEN_ON_CURRENT_MONITOR = 0, FULLSCREEN_ON_ALL_MONITORS = 1, }
ToplevelState :: enum u32 {TOPLEVEL_STATE_MINIMIZED = 1, TOPLEVEL_STATE_MAXIMIZED = 2, TOPLEVEL_STATE_STICKY = 4, TOPLEVEL_STATE_FULLSCREEN = 8, TOPLEVEL_STATE_ABOVE = 16, TOPLEVEL_STATE_BELOW = 32, TOPLEVEL_STATE_FOCUSED = 64, TOPLEVEL_STATE_TILED = 128, TOPLEVEL_STATE_TOP_TILED = 256, TOPLEVEL_STATE_TOP_RESIZABLE = 512, TOPLEVEL_STATE_RIGHT_TILED = 1024, TOPLEVEL_STATE_RIGHT_RESIZABLE = 2048, TOPLEVEL_STATE_BOTTOM_TILED = 4096, TOPLEVEL_STATE_BOTTOM_RESIZABLE = 8192, TOPLEVEL_STATE_LEFT_TILED = 16384, TOPLEVEL_STATE_LEFT_RESIZABLE = 32768, TOPLEVEL_STATE_SUSPENDED = 65536, }
TitlebarGesture :: enum u32 {TITLEBAR_GESTURE_DOUBLE_CLICK = 1, TITLEBAR_GESTURE_RIGHT_CLICK = 2, TITLEBAR_GESTURE_MIDDLE_CLICK = 3, }
_GdkToplevel :: rawptr
Toplevel :: _GdkToplevel
_GdkToplevelInterface :: rawptr
ToplevelInterface :: _GdkToplevelInterface
Toplevel_autoptr :: ^Toplevel
Toplevel_listautoptr :: ^glib.List
Toplevel_slistautoptr :: ^glib.SList
Toplevel_queueautoptr :: ^glib.Queue
_GdkToplevelSize :: rawptr
ToplevelSize :: _GdkToplevelSize
VulkanContext_autoptr :: ^VulkanContext
VulkanContext_listautoptr :: ^glib.List
VulkanContext_slistautoptr :: ^glib.SList
VulkanContext_queueautoptr :: ^glib.Queue
RenderNodeType :: enum u32 {NOT_A_RENDER_NODE = 0, CONTAINER_NODE = 1, CAIRO_NODE = 2, COLOR_NODE = 3, LINEAR_GRADIENT_NODE = 4, REPEATING_LINEAR_GRADIENT_NODE = 5, RADIAL_GRADIENT_NODE = 6, REPEATING_RADIAL_GRADIENT_NODE = 7, CONIC_GRADIENT_NODE = 8, BORDER_NODE = 9, TEXTURE_NODE = 10, INSET_SHADOW_NODE = 11, OUTSET_SHADOW_NODE = 12, TRANSFORM_NODE = 13, OPACITY_NODE = 14, COLOR_MATRIX_NODE = 15, REPEAT_NODE = 16, CLIP_NODE = 17, ROUNDED_CLIP_NODE = 18, SHADOW_NODE = 19, BLEND_NODE = 20, CROSS_FADE_NODE = 21, TEXT_NODE = 22, BLUR_NODE = 23, DEBUG_NODE = 24, GL_SHADER_NODE = 25, TEXTURE_SCALE_NODE = 26, MASK_NODE = 27, }
ScalingFilter :: enum u32 {SCALING_FILTER_LINEAR = 0, SCALING_FILTER_NEAREST = 1, SCALING_FILTER_TRILINEAR = 2, }
BlendMode :: enum u32 {BLEND_MODE_DEFAULT = 0, BLEND_MODE_MULTIPLY = 1, BLEND_MODE_SCREEN = 2, BLEND_MODE_OVERLAY = 3, BLEND_MODE_DARKEN = 4, BLEND_MODE_LIGHTEN = 5, BLEND_MODE_COLOR_DODGE = 6, BLEND_MODE_COLOR_BURN = 7, BLEND_MODE_HARD_LIGHT = 8, BLEND_MODE_SOFT_LIGHT = 9, BLEND_MODE_DIFFERENCE = 10, BLEND_MODE_EXCLUSION = 11, BLEND_MODE_COLOR = 12, BLEND_MODE_HUE = 13, BLEND_MODE_SATURATION = 14, BLEND_MODE_LUMINOSITY = 15, }
Corner :: enum u32 {CORNER_TOP_LEFT = 0, CORNER_TOP_RIGHT = 1, CORNER_BOTTOM_RIGHT = 2, CORNER_BOTTOM_LEFT = 3, }
SerializationError :: enum u32 {SERIALIZATION_UNSUPPORTED_FORMAT = 0, SERIALIZATION_UNSUPPORTED_VERSION = 1, SERIALIZATION_INVALID_DATA = 2, }
TransformCategory :: enum u32 {TRANSFORM_CATEGORY_UNKNOWN = 0, TRANSFORM_CATEGORY_ANY = 1, TRANSFORM_CATEGORY_3D = 2, TRANSFORM_CATEGORY_2D = 3, TRANSFORM_CATEGORY_2D_AFFINE = 4, TRANSFORM_CATEGORY_2D_TRANSLATE = 5, TRANSFORM_CATEGORY_IDENTITY = 6, }
GLUniformType :: enum u32 {GL_UNIFORM_TYPE_NONE = 0, GL_UNIFORM_TYPE_FLOAT = 1, GL_UNIFORM_TYPE_INT = 2, GL_UNIFORM_TYPE_UINT = 3, GL_UNIFORM_TYPE_BOOL = 4, GL_UNIFORM_TYPE_VEC2 = 5, GL_UNIFORM_TYPE_VEC3 = 6, GL_UNIFORM_TYPE_VEC4 = 7, }
MaskMode :: enum u32 {MASK_MODE_ALPHA = 0, MASK_MODE_INVERTED_ALPHA = 1, MASK_MODE_LUMINANCE = 2, MASK_MODE_INVERTED_LUMINANCE = 3, }
_GskRenderer :: rawptr
Renderer :: _GskRenderer
_GskTransform :: rawptr
Transform :: _GskTransform
_GskRoundedRect :: struct {
    bounds: graphene.rect_t,
    corner: [4]graphene.size_t,
}
RoundedRect :: _GskRoundedRect
_GskShaderArgsBuilder :: rawptr
ShaderArgsBuilder :: _GskShaderArgsBuilder
_GskGLShader :: rawptr
GLShader :: _GskGLShader
GLShaderClass :: struct {
    parent_class: gobj.ObjectClass,
}
GLShader_autoptr :: ^GLShader
GLShader_listautoptr :: ^glib.List
GLShader_slistautoptr :: ^glib.SList
GLShader_queueautoptr :: ^glib.Queue
GLShaderClass_autoptr :: ^GLShaderClass
GLShaderClass_listautoptr :: ^glib.List
GLShaderClass_slistautoptr :: ^glib.SList
GLShaderClass_queueautoptr :: ^glib.Queue
_GskRenderNode :: rawptr
RenderNode :: _GskRenderNode
_GskColorStop :: struct {
    offset: f32,
    color: RGBA,
}
ColorStop :: _GskColorStop
_GskShadow :: struct {
    color: RGBA,
    dx: f32,
    dy: f32,
    radius: f32,
}
Shadow :: _GskShadow
_GskParseLocation :: struct {
    bytes: glib.size,
    chars: glib.size,
    lines: glib.size,
    line_bytes: glib.size,
    line_chars: glib.size,
}
ParseLocation :: _GskParseLocation
ParseErrorFunc :: #type proc "c" (start: ^ParseLocation, end: ^ParseLocation, error: ^glib.Error, user_data: glib.pointer)
_GskDebugNode :: rawptr
DebugNode :: _GskDebugNode
_GskColorNode :: rawptr
ColorNode :: _GskColorNode
_GskTextureNode :: rawptr
TextureNode :: _GskTextureNode
_GskTextureScaleNode :: rawptr
TextureScaleNode :: _GskTextureScaleNode
_GskLinearGradientNode :: rawptr
LinearGradientNode :: _GskLinearGradientNode
_GskRepeatingLinearGradientNode :: rawptr
RepeatingLinearGradientNode :: _GskRepeatingLinearGradientNode
_GskRadialGradientNode :: rawptr
RadialGradientNode :: _GskRadialGradientNode
_GskRepeatingRadialGradientNode :: rawptr
RepeatingRadialGradientNode :: _GskRepeatingRadialGradientNode
_GskConicGradientNode :: rawptr
ConicGradientNode :: _GskConicGradientNode
_GskBorderNode :: rawptr
BorderNode :: _GskBorderNode
_GskInsetShadowNode :: rawptr
InsetShadowNode :: _GskInsetShadowNode
_GskOutsetShadowNode :: rawptr
OutsetShadowNode :: _GskOutsetShadowNode
_GskCairoNode :: rawptr
CairoNode :: _GskCairoNode
_GskContainerNode :: rawptr
ContainerNode :: _GskContainerNode
_GskTransformNode :: rawptr
TransformNode :: _GskTransformNode
_GskOpacityNode :: rawptr
OpacityNode :: _GskOpacityNode
_GskColorMatrixNode :: rawptr
ColorMatrixNode :: _GskColorMatrixNode
_GskRepeatNode :: rawptr
RepeatNode :: _GskRepeatNode
_GskClipNode :: rawptr
ClipNode :: _GskClipNode
_GskRoundedClipNode :: rawptr
RoundedClipNode :: _GskRoundedClipNode
_GskShadowNode :: rawptr
ShadowNode :: _GskShadowNode
_GskBlendNode :: rawptr
BlendNode :: _GskBlendNode
_GskCrossFadeNode :: rawptr
CrossFadeNode :: _GskCrossFadeNode
_GskTextNode :: rawptr
TextNode :: _GskTextNode
_GskBlurNode :: rawptr
BlurNode :: _GskBlurNode
_GskMaskNode :: rawptr
MaskNode :: _GskMaskNode
_GskGLShaderNode :: rawptr
GLShaderNode :: _GskGLShaderNode
RenderNode_autoptr :: ^RenderNode
RenderNode_listautoptr :: ^glib.List
RenderNode_slistautoptr :: ^glib.SList
RenderNode_queueautoptr :: ^glib.Queue
_GskRendererClass :: rawptr
RendererClass :: _GskRendererClass
Renderer_autoptr :: ^Renderer
Renderer_listautoptr :: ^glib.List
Renderer_slistautoptr :: ^glib.SList
Renderer_queueautoptr :: ^glib.Queue
Transform_autoptr :: ^Transform
Transform_listautoptr :: ^glib.List
Transform_slistautoptr :: ^glib.SList
Transform_queueautoptr :: ^glib.Queue
_GskCairoRenderer :: rawptr
CairoRenderer :: _GskCairoRenderer
_GskCairoRendererClass :: rawptr
CairoRendererClass :: _GskCairoRendererClass
Align :: enum u32 {ALIGN_FILL = 0, ALIGN_START = 1, ALIGN_END = 2, ALIGN_CENTER = 3, ALIGN_BASELINE_FILL = 4, ALIGN_BASELINE = 4, ALIGN_BASELINE_CENTER = 5, }
ArrowType :: enum u32 {ARROW_UP = 0, ARROW_DOWN = 1, ARROW_LEFT = 2, ARROW_RIGHT = 3, ARROW_NONE = 4, }
BaselinePosition :: enum u32 {BASELINE_POSITION_TOP = 0, BASELINE_POSITION_CENTER = 1, BASELINE_POSITION_BOTTOM = 2, }
ContentFit :: enum u32 {CONTENT_FIT_FILL = 0, CONTENT_FIT_CONTAIN = 1, CONTENT_FIT_COVER = 2, CONTENT_FIT_SCALE_DOWN = 3, }
DeleteType :: enum u32 {DELETE_CHARS = 0, DELETE_WORD_ENDS = 1, DELETE_WORDS = 2, DELETE_DISPLAY_LINES = 3, DELETE_DISPLAY_LINE_ENDS = 4, DELETE_PARAGRAPH_ENDS = 5, DELETE_PARAGRAPHS = 6, DELETE_WHITESPACE = 7, }
DirectionType :: enum u32 {DIR_TAB_FORWARD = 0, DIR_TAB_BACKWARD = 1, DIR_UP = 2, DIR_DOWN = 3, DIR_LEFT = 4, DIR_RIGHT = 5, }
IconSize :: enum u32 {ICON_SIZE_INHERIT = 0, ICON_SIZE_NORMAL = 1, ICON_SIZE_LARGE = 2, }
SensitivityType :: enum u32 {SENSITIVITY_AUTO = 0, SENSITIVITY_ON = 1, SENSITIVITY_OFF = 2, }
TextDirection :: enum u32 {TEXT_DIR_NONE = 0, TEXT_DIR_LTR = 1, TEXT_DIR_RTL = 2, }
Justification :: enum u32 {JUSTIFY_LEFT = 0, JUSTIFY_RIGHT = 1, JUSTIFY_CENTER = 2, JUSTIFY_FILL = 3, }
ListTabBehavior :: enum u32 {LIST_TAB_ALL = 0, LIST_TAB_ITEM = 1, LIST_TAB_CELL = 2, }
ListScrollFlags :: enum u32 {LIST_SCROLL_NONE = 0, LIST_SCROLL_FOCUS = 1, LIST_SCROLL_SELECT = 2, }
MessageType :: enum u32 {MESSAGE_INFO = 0, MESSAGE_WARNING = 1, MESSAGE_QUESTION = 2, MESSAGE_ERROR = 3, MESSAGE_OTHER = 4, }
MovementStep :: enum u32 {MOVEMENT_LOGICAL_POSITIONS = 0, MOVEMENT_VISUAL_POSITIONS = 1, MOVEMENT_WORDS = 2, MOVEMENT_DISPLAY_LINES = 3, MOVEMENT_DISPLAY_LINE_ENDS = 4, MOVEMENT_PARAGRAPHS = 5, MOVEMENT_PARAGRAPH_ENDS = 6, MOVEMENT_PAGES = 7, MOVEMENT_BUFFER_ENDS = 8, MOVEMENT_HORIZONTAL_PAGES = 9, }
NaturalWrapMode :: enum u32 {NATURAL_WRAP_INHERIT = 0, NATURAL_WRAP_NONE = 1, NATURAL_WRAP_WORD = 2, }
ScrollStep :: enum u32 {SCROLL_STEPS = 0, SCROLL_PAGES = 1, SCROLL_ENDS = 2, SCROLL_HORIZONTAL_STEPS = 3, SCROLL_HORIZONTAL_PAGES = 4, SCROLL_HORIZONTAL_ENDS = 5, }
Orientation :: enum u32 {ORIENTATION_HORIZONTAL = 0, ORIENTATION_VERTICAL = 1, }
Overflow :: enum u32 {OVERFLOW_VISIBLE = 0, OVERFLOW_HIDDEN = 1, }
PackType :: enum u32 {PACK_START = 0, PACK_END = 1, }
PositionType :: enum u32 {POS_LEFT = 0, POS_RIGHT = 1, POS_TOP = 2, POS_BOTTOM = 3, }
ScrollType :: enum u32 {SCROLL_NONE = 0, SCROLL_JUMP = 1, SCROLL_STEP_BACKWARD = 2, SCROLL_STEP_FORWARD = 3, SCROLL_PAGE_BACKWARD = 4, SCROLL_PAGE_FORWARD = 5, SCROLL_STEP_UP = 6, SCROLL_STEP_DOWN = 7, SCROLL_PAGE_UP = 8, SCROLL_PAGE_DOWN = 9, SCROLL_STEP_LEFT = 10, SCROLL_STEP_RIGHT = 11, SCROLL_PAGE_LEFT = 12, SCROLL_PAGE_RIGHT = 13, SCROLL_START = 14, SCROLL_END = 15, }
SelectionMode :: enum u32 {SELECTION_NONE = 0, SELECTION_SINGLE = 1, SELECTION_BROWSE = 2, SELECTION_MULTIPLE = 3, }
WrapMode :: enum u32 {WRAP_NONE = 0, WRAP_CHAR = 1, WRAP_WORD = 2, WRAP_WORD_CHAR = 3, }
SortType :: enum u32 {SORT_ASCENDING = 0, SORT_DESCENDING = 1, }
PrintPages :: enum u32 {PRINT_PAGES_ALL = 0, PRINT_PAGES_CURRENT = 1, PRINT_PAGES_RANGES = 2, PRINT_PAGES_SELECTION = 3, }
PageSet :: enum u32 {PAGE_SET_ALL = 0, PAGE_SET_EVEN = 1, PAGE_SET_ODD = 2, }
NumberUpLayout :: enum u32 {NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_TOP_TO_BOTTOM = 0, NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_BOTTOM_TO_TOP = 1, NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_TOP_TO_BOTTOM = 2, NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_BOTTOM_TO_TOP = 3, NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_LEFT_TO_RIGHT = 4, NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_RIGHT_TO_LEFT = 5, NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_LEFT_TO_RIGHT = 6, NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_RIGHT_TO_LEFT = 7, }
Ordering :: enum i32 {ORDERING_SMALLER = -1, ORDERING_EQUAL = 0, ORDERING_LARGER = 1, }
PageOrientation :: enum u32 {PAGE_ORIENTATION_PORTRAIT = 0, PAGE_ORIENTATION_LANDSCAPE = 1, PAGE_ORIENTATION_REVERSE_PORTRAIT = 2, PAGE_ORIENTATION_REVERSE_LANDSCAPE = 3, }
PrintQuality :: enum u32 {PRINT_QUALITY_LOW = 0, PRINT_QUALITY_NORMAL = 1, PRINT_QUALITY_HIGH = 2, PRINT_QUALITY_DRAFT = 3, }
PrintDuplex :: enum u32 {PRINT_DUPLEX_SIMPLEX = 0, PRINT_DUPLEX_HORIZONTAL = 1, PRINT_DUPLEX_VERTICAL = 2, }
Unit :: enum u32 {UNIT_NONE = 0, UNIT_POINTS = 1, UNIT_INCH = 2, UNIT_MM = 3, }
TreeViewGridLines :: enum u32 {TREE_VIEW_GRID_LINES_NONE = 0, TREE_VIEW_GRID_LINES_HORIZONTAL = 1, TREE_VIEW_GRID_LINES_VERTICAL = 2, TREE_VIEW_GRID_LINES_BOTH = 3, }
SizeGroupMode :: enum u32 {SIZE_GROUP_NONE = 0, SIZE_GROUP_HORIZONTAL = 1, SIZE_GROUP_VERTICAL = 2, SIZE_GROUP_BOTH = 3, }
SizeRequestMode :: enum u32 {SIZE_REQUEST_HEIGHT_FOR_WIDTH = 0, SIZE_REQUEST_WIDTH_FOR_HEIGHT = 1, SIZE_REQUEST_CONSTANT_SIZE = 2, }
ScrollablePolicy :: enum u32 {SCROLL_MINIMUM = 0, SCROLL_NATURAL = 1, }
StateFlags :: enum u32 {STATE_FLAG_NORMAL = 0, STATE_FLAG_ACTIVE = 1, STATE_FLAG_PRELIGHT = 2, STATE_FLAG_SELECTED = 4, STATE_FLAG_INSENSITIVE = 8, STATE_FLAG_INCONSISTENT = 16, STATE_FLAG_FOCUSED = 32, STATE_FLAG_BACKDROP = 64, STATE_FLAG_DIR_LTR = 128, STATE_FLAG_DIR_RTL = 256, STATE_FLAG_LINK = 512, STATE_FLAG_VISITED = 1024, STATE_FLAG_CHECKED = 2048, STATE_FLAG_DROP_ACTIVE = 4096, STATE_FLAG_FOCUS_VISIBLE = 8192, STATE_FLAG_FOCUS_WITHIN = 16384, }
BorderStyle :: enum u32 {BORDER_STYLE_NONE = 0, BORDER_STYLE_HIDDEN = 1, BORDER_STYLE_SOLID = 2, BORDER_STYLE_INSET = 3, BORDER_STYLE_OUTSET = 4, BORDER_STYLE_DOTTED = 5, BORDER_STYLE_DASHED = 6, BORDER_STYLE_DOUBLE = 7, BORDER_STYLE_GROOVE = 8, BORDER_STYLE_RIDGE = 9, }
LevelBarMode :: enum u32 {LEVEL_BAR_MODE_CONTINUOUS = 0, LEVEL_BAR_MODE_DISCRETE = 1, }
InputPurpose :: enum u32 {INPUT_PURPOSE_FREE_FORM = 0, INPUT_PURPOSE_ALPHA = 1, INPUT_PURPOSE_DIGITS = 2, INPUT_PURPOSE_NUMBER = 3, INPUT_PURPOSE_PHONE = 4, INPUT_PURPOSE_URL = 5, INPUT_PURPOSE_EMAIL = 6, INPUT_PURPOSE_NAME = 7, INPUT_PURPOSE_PASSWORD = 8, INPUT_PURPOSE_PIN = 9, INPUT_PURPOSE_TERMINAL = 10, }
InputHints :: enum u32 {INPUT_HINT_NONE = 0, INPUT_HINT_SPELLCHECK = 1, INPUT_HINT_NO_SPELLCHECK = 2, INPUT_HINT_WORD_COMPLETION = 4, INPUT_HINT_LOWERCASE = 8, INPUT_HINT_UPPERCASE_CHARS = 16, INPUT_HINT_UPPERCASE_WORDS = 32, INPUT_HINT_UPPERCASE_SENTENCES = 64, INPUT_HINT_INHIBIT_OSK = 128, INPUT_HINT_VERTICAL_WRITING = 256, INPUT_HINT_EMOJI = 512, INPUT_HINT_NO_EMOJI = 1024, INPUT_HINT_PRIVATE = 2048, }
PropagationPhase :: enum u32 {PHASE_NONE = 0, PHASE_CAPTURE = 1, PHASE_BUBBLE = 2, PHASE_TARGET = 3, }
PropagationLimit :: enum u32 {LIMIT_NONE = 0, LIMIT_SAME_NATIVE = 1, }
EventSequenceState :: enum u32 {EVENT_SEQUENCE_NONE = 0, EVENT_SEQUENCE_CLAIMED = 1, EVENT_SEQUENCE_DENIED = 2, }
PanDirection :: enum u32 {PAN_DIRECTION_LEFT = 0, PAN_DIRECTION_RIGHT = 1, PAN_DIRECTION_UP = 2, PAN_DIRECTION_DOWN = 3, }
ShortcutScope :: enum u32 {SHORTCUT_SCOPE_LOCAL = 0, SHORTCUT_SCOPE_MANAGED = 1, SHORTCUT_SCOPE_GLOBAL = 2, }
PickFlags :: enum u32 {PICK_DEFAULT = 0, PICK_INSENSITIVE = 1, PICK_NON_TARGETABLE = 2, }
ConstraintRelation :: enum i32 {CONSTRAINT_RELATION_LE = -1, CONSTRAINT_RELATION_EQ = 0, CONSTRAINT_RELATION_GE = 1, }
ConstraintStrength :: enum u32 {CONSTRAINT_STRENGTH_REQUIRED = 1001001000, CONSTRAINT_STRENGTH_STRONG = 1000000000, CONSTRAINT_STRENGTH_MEDIUM = 1000, CONSTRAINT_STRENGTH_WEAK = 1, }
ConstraintAttribute :: enum u32 {CONSTRAINT_ATTRIBUTE_NONE = 0, CONSTRAINT_ATTRIBUTE_LEFT = 1, CONSTRAINT_ATTRIBUTE_RIGHT = 2, CONSTRAINT_ATTRIBUTE_TOP = 3, CONSTRAINT_ATTRIBUTE_BOTTOM = 4, CONSTRAINT_ATTRIBUTE_START = 5, CONSTRAINT_ATTRIBUTE_END = 6, CONSTRAINT_ATTRIBUTE_WIDTH = 7, CONSTRAINT_ATTRIBUTE_HEIGHT = 8, CONSTRAINT_ATTRIBUTE_CENTER_X = 9, CONSTRAINT_ATTRIBUTE_CENTER_Y = 10, CONSTRAINT_ATTRIBUTE_BASELINE = 11, }
ConstraintVflParserError :: enum u32 {CONSTRAINT_VFL_PARSER_ERROR_INVALID_SYMBOL = 0, CONSTRAINT_VFL_PARSER_ERROR_INVALID_ATTRIBUTE = 1, CONSTRAINT_VFL_PARSER_ERROR_INVALID_VIEW = 2, CONSTRAINT_VFL_PARSER_ERROR_INVALID_METRIC = 3, CONSTRAINT_VFL_PARSER_ERROR_INVALID_PRIORITY = 4, CONSTRAINT_VFL_PARSER_ERROR_INVALID_RELATION = 5, }
SystemSetting :: enum u32 {SYSTEM_SETTING_DPI = 0, SYSTEM_SETTING_FONT_NAME = 1, SYSTEM_SETTING_FONT_CONFIG = 2, SYSTEM_SETTING_DISPLAY = 3, SYSTEM_SETTING_ICON_THEME = 4, }
SymbolicColor :: enum u32 {SYMBOLIC_COLOR_FOREGROUND = 0, SYMBOLIC_COLOR_ERROR = 1, SYMBOLIC_COLOR_WARNING = 2, SYMBOLIC_COLOR_SUCCESS = 3, }
AccessibleRole :: enum u32 {ACCESSIBLE_ROLE_ALERT = 0, ACCESSIBLE_ROLE_ALERT_DIALOG = 1, ACCESSIBLE_ROLE_BANNER = 2, ACCESSIBLE_ROLE_BUTTON = 3, ACCESSIBLE_ROLE_CAPTION = 4, ACCESSIBLE_ROLE_CELL = 5, ACCESSIBLE_ROLE_CHECKBOX = 6, ACCESSIBLE_ROLE_COLUMN_HEADER = 7, ACCESSIBLE_ROLE_COMBO_BOX = 8, ACCESSIBLE_ROLE_COMMAND = 9, ACCESSIBLE_ROLE_COMPOSITE = 10, ACCESSIBLE_ROLE_DIALOG = 11, ACCESSIBLE_ROLE_DOCUMENT = 12, ACCESSIBLE_ROLE_FEED = 13, ACCESSIBLE_ROLE_FORM = 14, ACCESSIBLE_ROLE_GENERIC = 15, ACCESSIBLE_ROLE_GRID = 16, ACCESSIBLE_ROLE_GRID_CELL = 17, ACCESSIBLE_ROLE_GROUP = 18, ACCESSIBLE_ROLE_HEADING = 19, ACCESSIBLE_ROLE_IMG = 20, ACCESSIBLE_ROLE_INPUT = 21, ACCESSIBLE_ROLE_LABEL = 22, ACCESSIBLE_ROLE_LANDMARK = 23, ACCESSIBLE_ROLE_LEGEND = 24, ACCESSIBLE_ROLE_LINK = 25, ACCESSIBLE_ROLE_LIST = 26, ACCESSIBLE_ROLE_LIST_BOX = 27, ACCESSIBLE_ROLE_LIST_ITEM = 28, ACCESSIBLE_ROLE_LOG = 29, ACCESSIBLE_ROLE_MAIN = 30, ACCESSIBLE_ROLE_MARQUEE = 31, ACCESSIBLE_ROLE_MATH = 32, ACCESSIBLE_ROLE_METER = 33, ACCESSIBLE_ROLE_MENU = 34, ACCESSIBLE_ROLE_MENU_BAR = 35, ACCESSIBLE_ROLE_MENU_ITEM = 36, ACCESSIBLE_ROLE_MENU_ITEM_CHECKBOX = 37, ACCESSIBLE_ROLE_MENU_ITEM_RADIO = 38, ACCESSIBLE_ROLE_NAVIGATION = 39, ACCESSIBLE_ROLE_NONE = 40, ACCESSIBLE_ROLE_NOTE = 41, ACCESSIBLE_ROLE_OPTION = 42, ACCESSIBLE_ROLE_PRESENTATION = 43, ACCESSIBLE_ROLE_PROGRESS_BAR = 44, ACCESSIBLE_ROLE_RADIO = 45, ACCESSIBLE_ROLE_RADIO_GROUP = 46, ACCESSIBLE_ROLE_RANGE = 47, ACCESSIBLE_ROLE_REGION = 48, ACCESSIBLE_ROLE_ROW = 49, ACCESSIBLE_ROLE_ROW_GROUP = 50, ACCESSIBLE_ROLE_ROW_HEADER = 51, ACCESSIBLE_ROLE_SCROLLBAR = 52, ACCESSIBLE_ROLE_SEARCH = 53, ACCESSIBLE_ROLE_SEARCH_BOX = 54, ACCESSIBLE_ROLE_SECTION = 55, ACCESSIBLE_ROLE_SECTION_HEAD = 56, ACCESSIBLE_ROLE_SELECT = 57, ACCESSIBLE_ROLE_SEPARATOR = 58, ACCESSIBLE_ROLE_SLIDER = 59, ACCESSIBLE_ROLE_SPIN_BUTTON = 60, ACCESSIBLE_ROLE_STATUS = 61, ACCESSIBLE_ROLE_STRUCTURE = 62, ACCESSIBLE_ROLE_SWITCH = 63, ACCESSIBLE_ROLE_TAB = 64, ACCESSIBLE_ROLE_TABLE = 65, ACCESSIBLE_ROLE_TAB_LIST = 66, ACCESSIBLE_ROLE_TAB_PANEL = 67, ACCESSIBLE_ROLE_TEXT_BOX = 68, ACCESSIBLE_ROLE_TIME = 69, ACCESSIBLE_ROLE_TIMER = 70, ACCESSIBLE_ROLE_TOOLBAR = 71, ACCESSIBLE_ROLE_TOOLTIP = 72, ACCESSIBLE_ROLE_TREE = 73, ACCESSIBLE_ROLE_TREE_GRID = 74, ACCESSIBLE_ROLE_TREE_ITEM = 75, ACCESSIBLE_ROLE_WIDGET = 76, ACCESSIBLE_ROLE_WINDOW = 77, ACCESSIBLE_ROLE_TOGGLE_BUTTON = 78, ACCESSIBLE_ROLE_APPLICATION = 79, }
AccessibleState :: enum u32 {ACCESSIBLE_STATE_BUSY = 0, ACCESSIBLE_STATE_CHECKED = 1, ACCESSIBLE_STATE_DISABLED = 2, ACCESSIBLE_STATE_EXPANDED = 3, ACCESSIBLE_STATE_HIDDEN = 4, ACCESSIBLE_STATE_INVALID = 5, ACCESSIBLE_STATE_PRESSED = 6, ACCESSIBLE_STATE_SELECTED = 7, ACCESSIBLE_STATE_VISITED = 8, }
AccessibleProperty :: enum u32 {ACCESSIBLE_PROPERTY_AUTOCOMPLETE = 0, ACCESSIBLE_PROPERTY_DESCRIPTION = 1, ACCESSIBLE_PROPERTY_HAS_POPUP = 2, ACCESSIBLE_PROPERTY_KEY_SHORTCUTS = 3, ACCESSIBLE_PROPERTY_LABEL = 4, ACCESSIBLE_PROPERTY_LEVEL = 5, ACCESSIBLE_PROPERTY_MODAL = 6, ACCESSIBLE_PROPERTY_MULTI_LINE = 7, ACCESSIBLE_PROPERTY_MULTI_SELECTABLE = 8, ACCESSIBLE_PROPERTY_ORIENTATION = 9, ACCESSIBLE_PROPERTY_PLACEHOLDER = 10, ACCESSIBLE_PROPERTY_READ_ONLY = 11, ACCESSIBLE_PROPERTY_REQUIRED = 12, ACCESSIBLE_PROPERTY_ROLE_DESCRIPTION = 13, ACCESSIBLE_PROPERTY_SORT = 14, ACCESSIBLE_PROPERTY_VALUE_MAX = 15, ACCESSIBLE_PROPERTY_VALUE_MIN = 16, ACCESSIBLE_PROPERTY_VALUE_NOW = 17, ACCESSIBLE_PROPERTY_VALUE_TEXT = 18, }
AccessibleRelation :: enum u32 {ACCESSIBLE_RELATION_ACTIVE_DESCENDANT = 0, ACCESSIBLE_RELATION_COL_COUNT = 1, ACCESSIBLE_RELATION_COL_INDEX = 2, ACCESSIBLE_RELATION_COL_INDEX_TEXT = 3, ACCESSIBLE_RELATION_COL_SPAN = 4, ACCESSIBLE_RELATION_CONTROLS = 5, ACCESSIBLE_RELATION_DESCRIBED_BY = 6, ACCESSIBLE_RELATION_DETAILS = 7, ACCESSIBLE_RELATION_ERROR_MESSAGE = 8, ACCESSIBLE_RELATION_FLOW_TO = 9, ACCESSIBLE_RELATION_LABELLED_BY = 10, ACCESSIBLE_RELATION_OWNS = 11, ACCESSIBLE_RELATION_POS_IN_SET = 12, ACCESSIBLE_RELATION_ROW_COUNT = 13, ACCESSIBLE_RELATION_ROW_INDEX = 14, ACCESSIBLE_RELATION_ROW_INDEX_TEXT = 15, ACCESSIBLE_RELATION_ROW_SPAN = 16, ACCESSIBLE_RELATION_SET_SIZE = 17, }
AccessibleTristate :: enum u32 {ACCESSIBLE_TRISTATE_FALSE = 0, ACCESSIBLE_TRISTATE_TRUE = 1, ACCESSIBLE_TRISTATE_MIXED = 2, }
AccessibleInvalidState :: enum u32 {ACCESSIBLE_INVALID_FALSE = 0, ACCESSIBLE_INVALID_TRUE = 1, ACCESSIBLE_INVALID_GRAMMAR = 2, ACCESSIBLE_INVALID_SPELLING = 3, }
AccessibleAutocomplete :: enum u32 {ACCESSIBLE_AUTOCOMPLETE_NONE = 0, ACCESSIBLE_AUTOCOMPLETE_INLINE = 1, ACCESSIBLE_AUTOCOMPLETE_LIST = 2, ACCESSIBLE_AUTOCOMPLETE_BOTH = 3, }
AccessibleSort :: enum u32 {ACCESSIBLE_SORT_NONE = 0, ACCESSIBLE_SORT_ASCENDING = 1, ACCESSIBLE_SORT_DESCENDING = 2, ACCESSIBLE_SORT_OTHER = 3, }
_GtkBorder :: struct {
    left: glib.int16,
    right: glib.int16,
    top: glib.int16,
    bottom: glib.int16,
}
Border :: _GtkBorder
Border_autoptr :: ^Border
Border_listautoptr :: ^glib.List
Border_slistautoptr :: ^glib.SList
Border_queueautoptr :: ^glib.Queue
_GtkAdjustment :: struct {
    parent_instance: gobj.InitiallyUnowned,
}
Adjustment :: _GtkAdjustment
_GtkATContext :: rawptr
ATContext :: _GtkATContext
_GtkBitset :: rawptr
Bitset :: _GtkBitset
_GtkBuilder :: rawptr
Builder :: _GtkBuilder
_GtkBuilderScope :: rawptr
BuilderScope :: _GtkBuilderScope
_GtkCssStyleChange :: rawptr
CssStyleChange :: _GtkCssStyleChange
_GtkEventController :: rawptr
EventController :: _GtkEventController
_GtkGesture :: rawptr
Gesture :: _GtkGesture
_GtkLayoutManager :: struct {
    parent_instance: gobj.Object,
}
LayoutManager :: _GtkLayoutManager
_GtkListItem :: rawptr
ListItem :: _GtkListItem
_GtkListItemFactory :: rawptr
ListItemFactory :: _GtkListItemFactory
_GtkNative :: rawptr
Native :: _GtkNative
_GtkRequisition :: struct {
    width: i32,
    height: i32,
}
Requisition :: _GtkRequisition
_GtkRoot :: rawptr
Root :: _GtkRoot
_GtkScrollInfo :: rawptr
ScrollInfo :: _GtkScrollInfo
_GtkSettings :: rawptr
Settings :: _GtkSettings
_GtkShortcut :: rawptr
Shortcut :: _GtkShortcut
_GtkShortcutAction :: rawptr
ShortcutAction :: _GtkShortcutAction
_GtkShortcutTrigger :: rawptr
ShortcutTrigger :: _GtkShortcutTrigger

_GtkStyleContext :: struct {
    parent_object: gobj.Object,
}
StyleContext :: _GtkStyleContext
_GtkTooltip :: rawptr
Tooltip :: _GtkTooltip
_GtkWidgetPrivate :: rawptr
WidgetPrivate :: _GtkWidgetPrivate
_GtkWidget :: struct {
    parent_instance: gobj.InitiallyUnowned,
    priv: ^WidgetPrivate,
}
Widget :: _GtkWidget
_GtkWindow :: struct {
    parent_instance: Widget,
}
Window :: _GtkWindow
ShortcutClass :: struct {
    parent_class: gobj.ObjectClass,
}
Shortcut_autoptr :: ^Shortcut
Shortcut_listautoptr :: ^glib.List
Shortcut_slistautoptr :: ^glib.SList
Shortcut_queueautoptr :: ^glib.Queue
ShortcutClass_autoptr :: ^ShortcutClass
ShortcutClass_listautoptr :: ^glib.List
ShortcutClass_slistautoptr :: ^glib.SList
ShortcutClass_queueautoptr :: ^glib.Queue
ShortcutFunc :: #type proc "c" (widget: ^Widget, args: [^]glib.Variant, user_data: glib.pointer) -> glib.boolean
ShortcutActionFlags :: enum u32 {SHORTCUT_ACTION_EXCLUSIVE = 1, }
_GtkShortcutActionClass :: rawptr
ShortcutActionClass :: _GtkShortcutActionClass
ShortcutAction_autoptr :: ^ShortcutAction
ShortcutAction_listautoptr :: ^glib.List
ShortcutAction_slistautoptr :: ^glib.SList
ShortcutAction_queueautoptr :: ^glib.Queue
ShortcutActionClass_autoptr :: ^ShortcutActionClass
ShortcutActionClass_listautoptr :: ^glib.List
ShortcutActionClass_slistautoptr :: ^glib.SList
ShortcutActionClass_queueautoptr :: ^glib.Queue
_GtkNothingAction :: rawptr
NothingAction :: _GtkNothingAction
_GtkNothingActionClass :: rawptr
NothingActionClass :: _GtkNothingActionClass
NothingAction_autoptr :: ^NothingAction
NothingAction_listautoptr :: ^glib.List
NothingAction_slistautoptr :: ^glib.SList
NothingAction_queueautoptr :: ^glib.Queue
NothingActionClass_autoptr :: ^NothingActionClass
NothingActionClass_listautoptr :: ^glib.List
NothingActionClass_slistautoptr :: ^glib.SList
NothingActionClass_queueautoptr :: ^glib.Queue
_GtkCallbackAction :: rawptr
CallbackAction :: _GtkCallbackAction
_GtkCallbackActionClass :: rawptr
CallbackActionClass :: _GtkCallbackActionClass
CallbackAction_autoptr :: ^CallbackAction
CallbackAction_listautoptr :: ^glib.List
CallbackAction_slistautoptr :: ^glib.SList
CallbackAction_queueautoptr :: ^glib.Queue
CallbackActionClass_autoptr :: ^CallbackActionClass
CallbackActionClass_listautoptr :: ^glib.List
CallbackActionClass_slistautoptr :: ^glib.SList
CallbackActionClass_queueautoptr :: ^glib.Queue
_GtkMnemonicAction :: rawptr
MnemonicAction :: _GtkMnemonicAction
_GtkMnemonicActionClass :: rawptr
MnemonicActionClass :: _GtkMnemonicActionClass
MnemonicAction_autoptr :: ^MnemonicAction
MnemonicAction_listautoptr :: ^glib.List
MnemonicAction_slistautoptr :: ^glib.SList
MnemonicAction_queueautoptr :: ^glib.Queue
MnemonicActionClass_autoptr :: ^MnemonicActionClass
MnemonicActionClass_listautoptr :: ^glib.List
MnemonicActionClass_slistautoptr :: ^glib.SList
MnemonicActionClass_queueautoptr :: ^glib.Queue
_GtkActivateAction :: rawptr
ActivateAction :: _GtkActivateAction
_GtkActivateActionClass :: rawptr
ActivateActionClass :: _GtkActivateActionClass
ActivateAction_autoptr :: ^ActivateAction
ActivateAction_listautoptr :: ^glib.List
ActivateAction_slistautoptr :: ^glib.SList
ActivateAction_queueautoptr :: ^glib.Queue
ActivateActionClass_autoptr :: ^ActivateActionClass
ActivateActionClass_listautoptr :: ^glib.List
ActivateActionClass_slistautoptr :: ^glib.SList
ActivateActionClass_queueautoptr :: ^glib.Queue
_GtkSignalAction :: rawptr
SignalAction :: _GtkSignalAction
_GtkSignalActionClass :: rawptr
SignalActionClass :: _GtkSignalActionClass
SignalAction_autoptr :: ^SignalAction
SignalAction_listautoptr :: ^glib.List
SignalAction_slistautoptr :: ^glib.SList
SignalAction_queueautoptr :: ^glib.Queue
SignalActionClass_autoptr :: ^SignalActionClass
SignalActionClass_listautoptr :: ^glib.List
SignalActionClass_slistautoptr :: ^glib.SList
SignalActionClass_queueautoptr :: ^glib.Queue
_GtkNamedAction :: rawptr
NamedAction :: _GtkNamedAction
_GtkNamedActionClass :: rawptr
NamedActionClass :: _GtkNamedActionClass
NamedAction_autoptr :: ^NamedAction
NamedAction_listautoptr :: ^glib.List
NamedAction_slistautoptr :: ^glib.SList
NamedAction_queueautoptr :: ^glib.Queue
NamedActionClass_autoptr :: ^NamedActionClass
NamedActionClass_listautoptr :: ^glib.List
NamedActionClass_slistautoptr :: ^glib.SList
NamedActionClass_queueautoptr :: ^glib.Queue
show_func_ptr_anon_14 :: #type proc "c" (widget: ^Widget)
hide_func_ptr_anon_15 :: #type proc "c" (widget: ^Widget)
map_func_ptr_anon_16 :: #type proc "c" (widget: ^Widget)
unmap_func_ptr_anon_17 :: #type proc "c" (widget: ^Widget)
realize_func_ptr_anon_18 :: #type proc "c" (widget: ^Widget)
unrealize_func_ptr_anon_19 :: #type proc "c" (widget: ^Widget)
root_func_ptr_anon_20 :: #type proc "c" (widget: ^Widget)
unroot_func_ptr_anon_21 :: #type proc "c" (widget: ^Widget)
size_allocate_func_ptr_anon_22 :: #type proc "c" (widget: ^Widget, width: i32, height: i32, baseline: i32)
state_flags_changed_func_ptr_anon_23 :: #type proc "c" (widget: ^Widget, previous_state_flags: StateFlags)
direction_changed_func_ptr_anon_24 :: #type proc "c" (widget: ^Widget, previous_direction: TextDirection)
et_request_mode_func_ptr_anon_25 :: #type proc "c" (widget: ^Widget) -> SizeRequestMode
measure_func_ptr_anon_26 :: #type proc "c" (widget: ^Widget, orientation: Orientation, for_size: i32, minimum: ^i32, natural: ^i32, minimum_baseline: ^i32, natural_baseline: ^i32)
mnemonic_activate_func_ptr_anon_27 :: #type proc "c" (widget: ^Widget, group_cycling: glib.boolean) -> glib.boolean
rab_focus_func_ptr_anon_28 :: #type proc "c" (widget: ^Widget) -> glib.boolean
focus_func_ptr_anon_29 :: #type proc "c" (widget: ^Widget, direction: DirectionType) -> glib.boolean
set_focus_child_func_ptr_anon_30 :: #type proc "c" (widget: ^Widget, child: ^Widget)
move_focus_func_ptr_anon_31 :: #type proc "c" (widget: ^Widget, direction: DirectionType)
keynav_failed_func_ptr_anon_32 :: #type proc "c" (widget: ^Widget, direction: DirectionType) -> glib.boolean
query_tooltip_func_ptr_anon_33 :: #type proc "c" (widget: ^Widget, x: i32, y: i32, keyboard_tooltip: glib.boolean, tooltip: ^Tooltip) -> glib.boolean
compute_expand_func_ptr_anon_34 :: #type proc "c" (widget: ^Widget, hexpand_p: ^glib.boolean, vexpand_p: ^glib.boolean)
css_changed_func_ptr_anon_35 :: #type proc "c" (widget: ^Widget, change: ^CssStyleChange)
system_setting_changed_func_ptr_anon_36 :: #type proc "c" (widget: ^Widget, settings: SystemSetting)
snapshot_func_ptr_anon_37 :: #type proc "c" (widget: ^Widget, snapshot: ^Snapshot)
contains_func_ptr_anon_38 :: #type proc "c" (widget: ^Widget, x: f64, y: f64) -> glib.boolean
_GtkWidgetClassPrivate :: rawptr
WidgetClassPrivate :: _GtkWidgetClassPrivate
_GtkWidgetClass :: struct {
    parent_class: gobj.InitiallyUnownedClass,
    show: show_func_ptr_anon_14,
    hide: hide_func_ptr_anon_15,
    map_m: map_func_ptr_anon_16,
    unmap: unmap_func_ptr_anon_17,
    realize: realize_func_ptr_anon_18,
    unrealize: unrealize_func_ptr_anon_19,
    root: root_func_ptr_anon_20,
    unroot: unroot_func_ptr_anon_21,
    size_allocate: size_allocate_func_ptr_anon_22,
    state_flags_changed: state_flags_changed_func_ptr_anon_23,
    direction_changed: direction_changed_func_ptr_anon_24,
    get_request_mode: et_request_mode_func_ptr_anon_25,
    measure: measure_func_ptr_anon_26,
    mnemonic_activate: mnemonic_activate_func_ptr_anon_27,
    grab_focus: rab_focus_func_ptr_anon_28,
    focus: focus_func_ptr_anon_29,
    set_focus_child: set_focus_child_func_ptr_anon_30,
    move_focus: move_focus_func_ptr_anon_31,
    keynav_failed: keynav_failed_func_ptr_anon_32,
    query_tooltip: query_tooltip_func_ptr_anon_33,
    compute_expand: compute_expand_func_ptr_anon_34,
    css_changed: css_changed_func_ptr_anon_35,
    system_setting_changed: system_setting_changed_func_ptr_anon_36,
    snapshot: snapshot_func_ptr_anon_37,
    contains: contains_func_ptr_anon_38,
    priv: ^WidgetClassPrivate,
    padding: [8]glib.pointer,
}
WidgetClass :: _GtkWidgetClass
Allocation :: Rectangle
TickCallback :: #type proc "c" (widget: ^Widget, frame_clock: ^FrameClock, user_data: glib.pointer) -> glib.boolean
WidgetActionActivateFunc :: #type proc "c" (widget: ^Widget, action_name: cstring, parameter: ^glib.Variant)
Widget_autoptr :: ^Widget
Widget_listautoptr :: ^glib.List
Widget_slistautoptr :: ^glib.SList
Widget_queueautoptr :: ^glib.Queue
Requisition_autoptr :: ^Requisition
Requisition_listautoptr :: ^glib.List
Requisition_slistautoptr :: ^glib.SList
Requisition_queueautoptr :: ^glib.Queue
_GtkApplication :: struct {
    parent_instance: gio.Application,
}
Application :: _GtkApplication
window_added_func_ptr_anon_39 :: #type proc "c" (application: ^Application, window: ^Window)
window_removed_func_ptr_anon_40 :: #type proc "c" (application: ^Application, window: ^Window)
_GtkApplicationClass :: struct {
    parent_class: gio.ApplicationClass,
    window_added: window_added_func_ptr_anon_39,
    window_removed: window_removed_func_ptr_anon_40,
    padding: [8]glib.pointer,
}
ApplicationClass :: _GtkApplicationClass
ApplicationInhibitFlags :: enum u32 {APPLICATION_INHIBIT_LOGOUT = 1, APPLICATION_INHIBIT_SWITCH = 2, APPLICATION_INHIBIT_SUSPEND = 4, APPLICATION_INHIBIT_IDLE = 8, }
Application_autoptr :: ^Application
Application_listautoptr :: ^glib.List
Application_slistautoptr :: ^glib.SList
Application_queueautoptr :: ^glib.Queue
activate_focus_func_ptr_anon_41 :: #type proc "c" (window: ^Window)
activate_default_func_ptr_anon_42 :: #type proc "c" (window: ^Window)
keys_changed_func_ptr_anon_43 :: #type proc "c" (window: ^Window)
enable_debugging_func_ptr_anon_44 :: #type proc "c" (window: ^Window, toggle: glib.boolean) -> glib.boolean
close_request_func_ptr_anon_45 :: #type proc "c" (window: ^Window) -> glib.boolean
_GtkWindowClass :: struct {
    parent_class: WidgetClass,
    activate_focus: activate_focus_func_ptr_anon_41,
    activate_default: activate_default_func_ptr_anon_42,
    keys_changed: keys_changed_func_ptr_anon_43,
    enable_debugging: enable_debugging_func_ptr_anon_44,
    close_request: close_request_func_ptr_anon_45,
    padding: [8]glib.pointer,
}
WindowClass :: _GtkWindowClass
_GtkWindowGroupPrivate :: rawptr
WindowGroupPrivate :: _GtkWindowGroupPrivate
_GtkWindowGroup :: struct {
    parent_instance: gobj.Object,
    priv: ^WindowGroupPrivate,
}
WindowGroup :: _GtkWindowGroup
_gtk_reserved1_func_ptr_anon_404 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_405 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_406 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_407 :: #type proc "c" ()
_GtkWindowGroupClass :: struct {
    parent_class: gobj.ObjectClass,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_404,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_405,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_406,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_407,
}
WindowGroupClass :: _GtkWindowGroupClass
Window_autoptr :: ^Window
Window_listautoptr :: ^glib.List
Window_slistautoptr :: ^glib.SList
Window_queueautoptr :: ^glib.Queue
WindowGroup_autoptr :: ^WindowGroup
WindowGroup_listautoptr :: ^glib.List
WindowGroup_slistautoptr :: ^glib.SList
WindowGroup_queueautoptr :: ^glib.Queue
_GtkAboutDialog :: rawptr
AboutDialog :: _GtkAboutDialog
License :: enum u32 {LICENSE_UNKNOWN = 0, LICENSE_CUSTOM = 1, LICENSE_GPL_2_0 = 2, LICENSE_GPL_3_0 = 3, LICENSE_LGPL_2_1 = 4, LICENSE_LGPL_3_0 = 5, LICENSE_BSD = 6, LICENSE_MIT_X11 = 7, LICENSE_ARTISTIC = 8, LICENSE_GPL_2_0_ONLY = 9, LICENSE_GPL_3_0_ONLY = 10, LICENSE_LGPL_2_1_ONLY = 11, LICENSE_LGPL_3_0_ONLY = 12, LICENSE_AGPL_3_0 = 13, LICENSE_AGPL_3_0_ONLY = 14, LICENSE_BSD_3 = 15, LICENSE_APACHE_2_0 = 16, LICENSE_MPL_2_0 = 17, }
AboutDialog_autoptr :: ^AboutDialog
AboutDialog_listautoptr :: ^glib.List
AboutDialog_slistautoptr :: ^glib.SList
AboutDialog_queueautoptr :: ^glib.Queue
_GtkAccessible :: rawptr
Accessible :: _GtkAccessible
et_at_context_func_ptr_anon_46 :: #type proc "c" (self: ^Accessible) -> ^ATContext
AccessiblePlatformState :: enum u32 {ACCESSIBLE_PLATFORM_STATE_FOCUSABLE = 0, ACCESSIBLE_PLATFORM_STATE_FOCUSED = 1, ACCESSIBLE_PLATFORM_STATE_ACTIVE = 2, }
et_platform_state_func_ptr_anon_47 :: #type proc "c" (self: ^Accessible, state: AccessiblePlatformState) -> glib.boolean
et_accessible_parent_func_ptr_anon_48 :: #type proc "c" (self: ^Accessible) -> ^Accessible
et_first_accessible_child_func_ptr_anon_49 :: #type proc "c" (self: ^Accessible) -> ^Accessible
et_next_accessible_sibling_func_ptr_anon_50 :: #type proc "c" (self: ^Accessible) -> ^Accessible
et_bounds_func_ptr_anon_51 :: #type proc "c" (self: ^Accessible, x: ^i32, y: ^i32, width: ^i32, height: ^i32) -> glib.boolean
_GtkAccessibleInterface :: struct {
    g_iface: gobj.TypeInterface,
    get_at_context: et_at_context_func_ptr_anon_46,
    get_platform_state: et_platform_state_func_ptr_anon_47,
    get_accessible_parent: et_accessible_parent_func_ptr_anon_48,
    get_first_accessible_child: et_first_accessible_child_func_ptr_anon_49,
    get_next_accessible_sibling: et_next_accessible_sibling_func_ptr_anon_50,
    get_bounds: et_bounds_func_ptr_anon_51,
}
AccessibleInterface :: _GtkAccessibleInterface
Accessible_autoptr :: ^Accessible
Accessible_listautoptr :: ^glib.List
Accessible_slistautoptr :: ^glib.SList
Accessible_queueautoptr :: ^glib.Queue
_GtkAccessibleRange :: rawptr
AccessibleRange :: _GtkAccessibleRange
set_current_value_func_ptr_anon_52 :: #type proc "c" (self: ^AccessibleRange, value: f64) -> glib.boolean
_GtkAccessibleRangeInterface :: struct {
    g_iface: gobj.TypeInterface,
    set_current_value: set_current_value_func_ptr_anon_52,
}
AccessibleRangeInterface :: _GtkAccessibleRangeInterface
AccessibleRange_autoptr :: ^AccessibleRange
AccessibleRange_listautoptr :: ^glib.List
AccessibleRange_slistautoptr :: ^glib.SList
AccessibleRange_queueautoptr :: ^glib.Queue
_GtkActionable :: rawptr
Actionable :: _GtkActionable
et_action_name_func_ptr_anon_53 :: #type proc "c" (actionable: ^Actionable) -> cstring
set_action_name_func_ptr_anon_54 :: #type proc "c" (actionable: ^Actionable, action_name: cstring)
et_action_target_value_func_ptr_anon_55 :: #type proc "c" (actionable: ^Actionable) -> ^glib.Variant
set_action_target_value_func_ptr_anon_56 :: #type proc "c" (actionable: ^Actionable, target_value: ^glib.Variant)
_GtkActionableInterface :: struct {
    g_iface: gobj.TypeInterface,
    get_action_name: et_action_name_func_ptr_anon_53,
    set_action_name: set_action_name_func_ptr_anon_54,
    get_action_target_value: et_action_target_value_func_ptr_anon_55,
    set_action_target_value: set_action_target_value_func_ptr_anon_56,
}
ActionableInterface :: _GtkActionableInterface
Actionable_autoptr :: ^Actionable
Actionable_listautoptr :: ^glib.List
Actionable_slistautoptr :: ^glib.SList
Actionable_queueautoptr :: ^glib.Queue
_GtkActionBar :: rawptr
ActionBar :: _GtkActionBar
ActionBar_autoptr :: ^ActionBar
ActionBar_listautoptr :: ^glib.List
ActionBar_slistautoptr :: ^glib.SList
ActionBar_queueautoptr :: ^glib.Queue
changed_func_ptr_anon_57 :: #type proc "c" (adjustment: ^Adjustment)
value_changed_func_ptr_anon_58 :: #type proc "c" (adjustment: ^Adjustment)
_gtk_reserved1_func_ptr_anon_59 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_60 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_61 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_62 :: #type proc "c" ()
_GtkAdjustmentClass :: struct {
    parent_class: gobj.InitiallyUnownedClass,
    changed: changed_func_ptr_anon_57,
    value_changed: value_changed_func_ptr_anon_58,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_59,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_60,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_61,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_62,
}
AdjustmentClass :: _GtkAdjustmentClass
Adjustment_autoptr :: ^Adjustment
Adjustment_listautoptr :: ^glib.List
Adjustment_slistautoptr :: ^glib.SList
Adjustment_queueautoptr :: ^glib.Queue
_GtkAlertDialog :: rawptr
AlertDialog :: _GtkAlertDialog
AlertDialogClass :: struct {
    parent_class: gobj.ObjectClass,
}
AlertDialog_autoptr :: ^AlertDialog
AlertDialog_listautoptr :: ^glib.List
AlertDialog_slistautoptr :: ^glib.SList
AlertDialog_queueautoptr :: ^glib.Queue
AlertDialogClass_autoptr :: ^AlertDialogClass
AlertDialogClass_listautoptr :: ^glib.List
AlertDialogClass_slistautoptr :: ^glib.SList
AlertDialogClass_queueautoptr :: ^glib.Queue
_GtkAppChooser :: rawptr
AppChooser :: _GtkAppChooser
AppChooser_autoptr :: ^AppChooser
AppChooser_listautoptr :: ^glib.List
AppChooser_slistautoptr :: ^glib.SList
AppChooser_queueautoptr :: ^glib.Queue
DialogFlags :: enum u32 {DIALOG_MODAL = 1, DIALOG_DESTROY_WITH_PARENT = 2, DIALOG_USE_HEADER_BAR = 4, }
ResponseType :: enum i32 {RESPONSE_NONE = -1, RESPONSE_REJECT = -2, RESPONSE_ACCEPT = -3, RESPONSE_DELETE_EVENT = -4, RESPONSE_OK = -5, RESPONSE_CANCEL = -6, RESPONSE_CLOSE = -7, RESPONSE_YES = -8, RESPONSE_NO = -9, RESPONSE_APPLY = -10, RESPONSE_HELP = -11, }
_GtkDialog :: struct {
    parent_instance: Window,
}
Dialog :: _GtkDialog
response_func_ptr_anon_63 :: #type proc "c" (dialog: ^Dialog, response_id: i32)
close_func_ptr_anon_64 :: #type proc "c" (dialog: ^Dialog)
_GtkDialogClass :: struct {
    parent_class: WindowClass,
    response: response_func_ptr_anon_63,
    close: close_func_ptr_anon_64,
    padding: [8]glib.pointer,
}
DialogClass :: _GtkDialogClass
Dialog_autoptr :: ^Dialog
Dialog_listautoptr :: ^glib.List
Dialog_slistautoptr :: ^glib.SList
Dialog_queueautoptr :: ^glib.Queue
_GtkAppChooserDialog :: rawptr
AppChooserDialog :: _GtkAppChooserDialog
AppChooserDialog_autoptr :: ^AppChooserDialog
AppChooserDialog_listautoptr :: ^glib.List
AppChooserDialog_slistautoptr :: ^glib.SList
AppChooserDialog_queueautoptr :: ^glib.Queue
_GtkAppChooserWidget :: rawptr
AppChooserWidget :: _GtkAppChooserWidget
AppChooserWidget_autoptr :: ^AppChooserWidget
AppChooserWidget_listautoptr :: ^glib.List
AppChooserWidget_slistautoptr :: ^glib.SList
AppChooserWidget_queueautoptr :: ^glib.Queue
_GtkAppChooserButton :: rawptr
AppChooserButton :: _GtkAppChooserButton
AppChooserButton_autoptr :: ^AppChooserButton
AppChooserButton_listautoptr :: ^glib.List
AppChooserButton_slistautoptr :: ^glib.SList
AppChooserButton_queueautoptr :: ^glib.Queue
_GtkShortcutsWindow :: rawptr
ShortcutsWindow :: _GtkShortcutsWindow
ShortcutsWindow_autoptr :: ^ShortcutsWindow
ShortcutsWindow_listautoptr :: ^glib.List
ShortcutsWindow_slistautoptr :: ^glib.SList
ShortcutsWindow_queueautoptr :: ^glib.Queue
_GtkApplicationWindowClass :: struct {
    parent_class: WindowClass,
    padding: [8]glib.pointer,
}
ApplicationWindowClass :: _GtkApplicationWindowClass
_GtkApplicationWindow :: struct {
    parent_instance: Window,
}
ApplicationWindow :: _GtkApplicationWindow
ApplicationWindow_autoptr :: ^ApplicationWindow
ApplicationWindow_listautoptr :: ^glib.List
ApplicationWindow_slistautoptr :: ^glib.SList
ApplicationWindow_queueautoptr :: ^glib.Queue
_GtkAspectFrame :: rawptr
AspectFrame :: _GtkAspectFrame
AspectFrame_autoptr :: ^AspectFrame
AspectFrame_listautoptr :: ^glib.List
AspectFrame_slistautoptr :: ^glib.SList
AspectFrame_queueautoptr :: ^glib.Queue
AssistantPageType :: enum u32 {ASSISTANT_PAGE_CONTENT = 0, ASSISTANT_PAGE_INTRO = 1, ASSISTANT_PAGE_CONFIRM = 2, ASSISTANT_PAGE_SUMMARY = 3, ASSISTANT_PAGE_PROGRESS = 4, ASSISTANT_PAGE_CUSTOM = 5, }
_GtkAssistant :: rawptr
Assistant :: _GtkAssistant
_GtkAssistantPage :: rawptr
AssistantPage :: _GtkAssistantPage
AssistantPageFunc :: #type proc "c" (current_page: i32, data: glib.pointer) -> i32
Assistant_autoptr :: ^Assistant
Assistant_listautoptr :: ^glib.List
Assistant_slistautoptr :: ^glib.SList
Assistant_queueautoptr :: ^glib.Queue
_GtkATContextClass :: rawptr
ATContextClass :: _GtkATContextClass
ATContext_autoptr :: ^ATContext
ATContext_listautoptr :: ^glib.List
ATContext_slistautoptr :: ^glib.SList
ATContext_queueautoptr :: ^glib.Queue
ATContextClass_autoptr :: ^ATContextClass
ATContextClass_listautoptr :: ^glib.List
ATContextClass_slistautoptr :: ^glib.SList
ATContextClass_queueautoptr :: ^glib.Queue
_GtkLayoutChild :: struct {
    parent_instance: gobj.Object,
}
LayoutChild :: _GtkLayoutChild
_GtkLayoutChildClass :: struct {
    parent_class: gobj.ObjectClass,
}
LayoutChildClass :: _GtkLayoutChildClass
LayoutChild_autoptr :: ^LayoutChild
LayoutChild_listautoptr :: ^glib.List
LayoutChild_slistautoptr :: ^glib.SList
LayoutChild_queueautoptr :: ^glib.Queue
LayoutChildClass_autoptr :: ^LayoutChildClass
LayoutChildClass_listautoptr :: ^glib.List
LayoutChildClass_slistautoptr :: ^glib.SList
LayoutChildClass_queueautoptr :: ^glib.Queue
et_request_mode_func_ptr_anon_65 :: #type proc "c" (manager: ^LayoutManager, widget: ^Widget) -> SizeRequestMode
measure_func_ptr_anon_66 :: #type proc "c" (manager: ^LayoutManager, widget: ^Widget, orientation: Orientation, for_size: i32, minimum: ^i32, natural: ^i32, minimum_baseline: ^i32, natural_baseline: ^i32)
allocate_func_ptr_anon_67 :: #type proc "c" (manager: ^LayoutManager, widget: ^Widget, width: i32, height: i32, baseline: i32)
create_layout_child_func_ptr_anon_68 :: #type proc "c" (manager: ^LayoutManager, widget: ^Widget, for_child: ^Widget) -> ^LayoutChild
root_func_ptr_anon_69 :: #type proc "c" (manager: ^LayoutManager)
unroot_func_ptr_anon_70 :: #type proc "c" (manager: ^LayoutManager)
_GtkLayoutManagerClass :: struct {
    parent_class: gobj.ObjectClass,
    get_request_mode: et_request_mode_func_ptr_anon_65,
    measure: measure_func_ptr_anon_66,
    allocate: allocate_func_ptr_anon_67,
    layout_child_type: gobj.Type,
    create_layout_child: create_layout_child_func_ptr_anon_68,
    root: root_func_ptr_anon_69,
    unroot: unroot_func_ptr_anon_70,
    _padding: [16]glib.pointer,
}
LayoutManagerClass :: _GtkLayoutManagerClass
LayoutManager_autoptr :: ^LayoutManager
LayoutManager_listautoptr :: ^glib.List
LayoutManager_slistautoptr :: ^glib.SList
LayoutManager_queueautoptr :: ^glib.Queue
LayoutManagerClass_autoptr :: ^LayoutManagerClass
LayoutManagerClass_listautoptr :: ^glib.List
LayoutManagerClass_slistautoptr :: ^glib.SList
LayoutManagerClass_queueautoptr :: ^glib.Queue
_GtkBinLayout :: rawptr
BinLayout :: _GtkBinLayout
BinLayoutClass :: struct {
    parent_class: LayoutManagerClass,
}
BinLayout_autoptr :: ^BinLayout
BinLayout_listautoptr :: ^glib.List
BinLayout_slistautoptr :: ^glib.SList
BinLayout_queueautoptr :: ^glib.Queue
BinLayoutClass_autoptr :: ^BinLayoutClass
BinLayoutClass_listautoptr :: ^glib.List
BinLayoutClass_slistautoptr :: ^glib.SList
BinLayoutClass_queueautoptr :: ^glib.Queue
Bitset_autoptr :: ^Bitset
Bitset_listautoptr :: ^glib.List
Bitset_slistautoptr :: ^glib.SList
Bitset_queueautoptr :: ^glib.Queue
_GtkBitsetIter :: struct {
    private_data: [10]glib.pointer,
}
BitsetIter :: _GtkBitsetIter
_GtkBookmarkList :: rawptr
BookmarkList :: _GtkBookmarkList
BookmarkListClass :: struct {
    parent_class: gobj.ObjectClass,
}
BookmarkList_autoptr :: ^BookmarkList
BookmarkList_listautoptr :: ^glib.List
BookmarkList_slistautoptr :: ^glib.SList
BookmarkList_queueautoptr :: ^glib.Queue
BookmarkListClass_autoptr :: ^BookmarkListClass
BookmarkListClass_listautoptr :: ^glib.List
BookmarkListClass_slistautoptr :: ^glib.SList
BookmarkListClass_queueautoptr :: ^glib.Queue
_GtkExpression :: rawptr
Expression :: _GtkExpression
_GtkExpressionWatch :: rawptr
ExpressionWatch :: _GtkExpressionWatch
ExpressionNotify :: #type proc "c" (user_data: glib.pointer)
Expression_autoptr :: ^Expression
Expression_listautoptr :: ^glib.List
Expression_slistautoptr :: ^glib.SList
Expression_queueautoptr :: ^glib.Queue
_GtkPropertyExpression :: rawptr
PropertyExpression :: _GtkPropertyExpression
_GtkConstantExpression :: rawptr
ConstantExpression :: _GtkConstantExpression
_GtkObjectExpression :: rawptr
ObjectExpression :: _GtkObjectExpression
_GtkClosureExpression :: rawptr
ClosureExpression :: _GtkClosureExpression
_GtkCClosureExpression :: rawptr
CClosureExpression :: _GtkCClosureExpression
ParamSpecExpression :: struct {
    parent_instance: gobj.ParamSpec,
}
FilterMatch :: enum u32 {FILTER_MATCH_SOME = 0, FILTER_MATCH_NONE = 1, FILTER_MATCH_ALL = 2, }
FilterChange :: enum u32 {FILTER_CHANGE_DIFFERENT = 0, FILTER_CHANGE_LESS_STRICT = 1, FILTER_CHANGE_MORE_STRICT = 2, }
_GtkFilter :: struct {
    parent_instance: gobj.Object,
}
Filter :: _GtkFilter
match_func_ptr_anon_71 :: #type proc "c" (self: ^Filter, item: glib.pointer) -> glib.boolean
et_strictness_func_ptr_anon_72 :: #type proc "c" (self: ^Filter) -> FilterMatch
_gtk_reserved1_func_ptr_anon_73 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_74 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_75 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_76 :: #type proc "c" ()
_gtk_reserved5_func_ptr_anon_77 :: #type proc "c" ()
_gtk_reserved6_func_ptr_anon_78 :: #type proc "c" ()
_gtk_reserved7_func_ptr_anon_79 :: #type proc "c" ()
_gtk_reserved8_func_ptr_anon_80 :: #type proc "c" ()
_GtkFilterClass :: struct {
    parent_class: gobj.ObjectClass,
    match: match_func_ptr_anon_71,
    get_strictness: et_strictness_func_ptr_anon_72,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_73,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_74,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_75,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_76,
    _gtk_reserved5: _gtk_reserved5_func_ptr_anon_77,
    _gtk_reserved6: _gtk_reserved6_func_ptr_anon_78,
    _gtk_reserved7: _gtk_reserved7_func_ptr_anon_79,
    _gtk_reserved8: _gtk_reserved8_func_ptr_anon_80,
}
FilterClass :: _GtkFilterClass
Filter_autoptr :: ^Filter
Filter_listautoptr :: ^glib.List
Filter_slistautoptr :: ^glib.SList
Filter_queueautoptr :: ^glib.Queue
FilterClass_autoptr :: ^FilterClass
FilterClass_listautoptr :: ^glib.List
FilterClass_slistautoptr :: ^glib.SList
FilterClass_queueautoptr :: ^glib.Queue
_GtkBoolFilter :: rawptr
BoolFilter :: _GtkBoolFilter
BoolFilterClass :: struct {
    parent_class: FilterClass,
}
BoolFilter_autoptr :: ^BoolFilter
BoolFilter_listautoptr :: ^glib.List
BoolFilter_slistautoptr :: ^glib.SList
BoolFilter_queueautoptr :: ^glib.Queue
BoolFilterClass_autoptr :: ^BoolFilterClass
BoolFilterClass_listautoptr :: ^glib.List
BoolFilterClass_slistautoptr :: ^glib.SList
BoolFilterClass_queueautoptr :: ^glib.Queue
_GtkBoxLayout :: rawptr
BoxLayout :: _GtkBoxLayout
BoxLayoutClass :: struct {
    parent_class: LayoutManagerClass,
}
BoxLayout_autoptr :: ^BoxLayout
BoxLayout_listautoptr :: ^glib.List
BoxLayout_slistautoptr :: ^glib.SList
BoxLayout_queueautoptr :: ^glib.Queue
BoxLayoutClass_autoptr :: ^BoxLayoutClass
BoxLayoutClass_listautoptr :: ^glib.List
BoxLayoutClass_slistautoptr :: ^glib.SList
BoxLayoutClass_queueautoptr :: ^glib.Queue
_GtkBox :: struct {
    parent_instance: Widget,
}
Box :: _GtkBox
_GtkBoxClass :: struct {
    parent_class: WidgetClass,
    padding: [8]glib.pointer,
}
BoxClass :: _GtkBoxClass
Box_autoptr :: ^Box
Box_listautoptr :: ^glib.List
Box_slistautoptr :: ^glib.SList
Box_queueautoptr :: ^glib.Queue
et_type_from_name_func_ptr_anon_81 :: #type proc "c" (self: ^BuilderScope, builder: ^Builder, type_name: cstring) -> gobj.Type
et_type_from_function_func_ptr_anon_82 :: #type proc "c" (self: ^BuilderScope, builder: ^Builder, function_name: cstring) -> gobj.Type
BuilderClosureFlags :: enum u32 {BUILDER_CLOSURE_SWAPPED = 1, }
create_closure_func_ptr_anon_83 :: #type proc "c" (self: ^BuilderScope, builder: ^Builder, function_name: cstring, flags: BuilderClosureFlags, object: ^gobj.Object, error: ^^glib.Error) -> ^gobj.Closure
_GtkBuilderScopeInterface :: struct {
    g_iface: gobj.TypeInterface,
    get_type_from_name: et_type_from_name_func_ptr_anon_81,
    get_type_from_function: et_type_from_function_func_ptr_anon_82,
    create_closure: create_closure_func_ptr_anon_83,
}
BuilderScopeInterface :: _GtkBuilderScopeInterface
BuilderScope_autoptr :: ^BuilderScope
BuilderScope_listautoptr :: ^glib.List
BuilderScope_slistautoptr :: ^glib.SList
BuilderScope_queueautoptr :: ^glib.Queue
_GtkBuilderCScopeClass :: struct {
    parent_class: gobj.ObjectClass,
}
_GtkBuilderCScope :: struct {
    parent_instance: gobj.Object,
}
BuilderCScope :: _GtkBuilderCScope
BuilderCScopeClass :: _GtkBuilderCScopeClass
BuilderCScope_autoptr :: ^BuilderCScope
BuilderCScope_listautoptr :: ^glib.List
BuilderCScope_slistautoptr :: ^glib.SList
BuilderCScope_queueautoptr :: ^glib.Queue
BuilderCScopeClass_autoptr :: ^BuilderCScopeClass
BuilderCScopeClass_listautoptr :: ^glib.List
BuilderCScopeClass_slistautoptr :: ^glib.SList
BuilderCScopeClass_queueautoptr :: ^glib.Queue
_GtkBuilderClass :: rawptr
BuilderClass :: _GtkBuilderClass
BuilderError :: enum u32 {BUILDER_ERROR_INVALID_TYPE_FUNCTION = 0, BUILDER_ERROR_UNHANDLED_TAG = 1, BUILDER_ERROR_MISSING_ATTRIBUTE = 2, BUILDER_ERROR_INVALID_ATTRIBUTE = 3, BUILDER_ERROR_INVALID_TAG = 4, BUILDER_ERROR_MISSING_PROPERTY_VALUE = 5, BUILDER_ERROR_INVALID_VALUE = 6, BUILDER_ERROR_VERSION_MISMATCH = 7, BUILDER_ERROR_DUPLICATE_ID = 8, BUILDER_ERROR_OBJECT_TYPE_REFUSED = 9, BUILDER_ERROR_TEMPLATE_MISMATCH = 10, BUILDER_ERROR_INVALID_PROPERTY = 11, BUILDER_ERROR_INVALID_SIGNAL = 12, BUILDER_ERROR_INVALID_ID = 13, BUILDER_ERROR_INVALID_FUNCTION = 14, }
Builder_autoptr :: ^Builder
Builder_listautoptr :: ^glib.List
Builder_slistautoptr :: ^glib.SList
Builder_queueautoptr :: ^glib.Queue
_GtkBuildable :: rawptr
Buildable :: _GtkBuildable
set_id_func_ptr_anon_88 :: #type proc "c" (buildable: ^Buildable, id: cstring)
et_id_func_ptr_anon_89 :: #type proc "c" (buildable: ^Buildable) -> cstring
add_child_func_ptr_anon_90 :: #type proc "c" (buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, type: cstring)
set_buildable_property_func_ptr_anon_91 :: #type proc "c" (buildable: ^Buildable, builder: ^Builder, name: cstring, value: ^gobj.Value)
construct_child_func_ptr_anon_92 :: #type proc "c" (buildable: ^Buildable, builder: ^Builder, name: cstring) -> ^gobj.Object
_GtkBuildableParseContext :: rawptr
BuildableParseContext :: _GtkBuildableParseContext
start_element_func_ptr_anon_84 :: #type proc "c" (context_p: ^BuildableParseContext, element_name: cstring, attribute_names: [^]cstring, attribute_values: [^]cstring, user_data: glib.pointer, error: ^^glib.Error)
end_element_func_ptr_anon_85 :: #type proc "c" (context_p: ^BuildableParseContext, element_name: cstring, user_data: glib.pointer, error: ^^glib.Error)
text_func_ptr_anon_86 :: #type proc "c" (context_p: ^BuildableParseContext, text: cstring, text_len: glib.size, user_data: glib.pointer, error: ^^glib.Error)
error_func_ptr_anon_87 :: #type proc "c" (context_p: ^BuildableParseContext, error: ^glib.Error, user_data: glib.pointer)
_GtkBuildableParser :: struct {
    start_element: start_element_func_ptr_anon_84,
    end_element: end_element_func_ptr_anon_85,
    text: text_func_ptr_anon_86,
    error: error_func_ptr_anon_87,
    padding: [4]glib.pointer,
}
BuildableParser :: _GtkBuildableParser
custom_tag_start_func_ptr_anon_93 :: #type proc "c" (buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, parser: ^BuildableParser, data: ^glib.pointer) -> glib.boolean
custom_tag_end_func_ptr_anon_94 :: #type proc "c" (buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, data: glib.pointer)
custom_finished_func_ptr_anon_95 :: #type proc "c" (buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, data: glib.pointer)
parser_finished_func_ptr_anon_96 :: #type proc "c" (buildable: ^Buildable, builder: ^Builder)
et_internal_child_func_ptr_anon_97 :: #type proc "c" (buildable: ^Buildable, builder: ^Builder, childname: cstring) -> ^gobj.Object
_GtkBuildableIface :: struct {
    g_iface: gobj.TypeInterface,
    set_id: set_id_func_ptr_anon_88,
    get_id: et_id_func_ptr_anon_89,
    add_child: add_child_func_ptr_anon_90,
    set_buildable_property: set_buildable_property_func_ptr_anon_91,
    construct_child: construct_child_func_ptr_anon_92,
    custom_tag_start: custom_tag_start_func_ptr_anon_93,
    custom_tag_end: custom_tag_end_func_ptr_anon_94,
    custom_finished: custom_finished_func_ptr_anon_95,
    parser_finished: parser_finished_func_ptr_anon_96,
    get_internal_child: et_internal_child_func_ptr_anon_97,
}
BuildableIface :: _GtkBuildableIface
Buildable_autoptr :: ^Buildable
Buildable_listautoptr :: ^glib.List
Buildable_slistautoptr :: ^glib.SList
Buildable_queueautoptr :: ^glib.Queue
_GtkListItemFactoryClass :: rawptr
ListItemFactoryClass :: _GtkListItemFactoryClass
ListItemFactory_autoptr :: ^ListItemFactory
ListItemFactory_listautoptr :: ^glib.List
ListItemFactory_slistautoptr :: ^glib.SList
ListItemFactory_queueautoptr :: ^glib.Queue
_GtkBuilderListItemFactory :: rawptr
BuilderListItemFactory :: _GtkBuilderListItemFactory
_GtkBuilderListItemFactoryClass :: rawptr
BuilderListItemFactoryClass :: _GtkBuilderListItemFactoryClass
_GtkButton :: struct {
    parent_instance: Widget,
}
Button :: _GtkButton
_GtkButtonPrivate :: rawptr
ButtonPrivate :: _GtkButtonPrivate
clicked_func_ptr_anon_98 :: #type proc "c" (button: ^Button)
activate_func_ptr_anon_99 :: #type proc "c" (button: ^Button)
_GtkButtonClass :: struct {
    parent_class: WidgetClass,
    clicked: clicked_func_ptr_anon_98,
    activate: activate_func_ptr_anon_99,
    padding: [8]glib.pointer,
}
ButtonClass :: _GtkButtonClass
Button_autoptr :: ^Button
Button_listautoptr :: ^glib.List
Button_slistautoptr :: ^glib.SList
Button_queueautoptr :: ^glib.Queue
_GtkCalendar :: rawptr
Calendar :: _GtkCalendar
Calendar_autoptr :: ^Calendar
Calendar_listautoptr :: ^glib.List
Calendar_slistautoptr :: ^glib.SList
Calendar_queueautoptr :: ^glib.Queue
_GtkCellEditable :: rawptr
CellEditable :: _GtkCellEditable
editing_done_func_ptr_anon_100 :: #type proc "c" (cell_editable: ^CellEditable)
remove_widget_func_ptr_anon_101 :: #type proc "c" (cell_editable: ^CellEditable)
start_editing_func_ptr_anon_102 :: #type proc "c" (cell_editable: ^CellEditable, event: ^Event)
_GtkCellEditableIface :: struct {
    g_iface: gobj.TypeInterface,
    editing_done: editing_done_func_ptr_anon_100,
    remove_widget: remove_widget_func_ptr_anon_101,
    start_editing: start_editing_func_ptr_anon_102,
}
CellEditableIface :: _GtkCellEditableIface
CellEditable_autoptr :: ^CellEditable
CellEditable_listautoptr :: ^glib.List
CellEditable_slistautoptr :: ^glib.SList
CellEditable_queueautoptr :: ^glib.Queue
CellRendererState :: enum u32 {CELL_RENDERER_SELECTED = 1, CELL_RENDERER_PRELIT = 2, CELL_RENDERER_INSENSITIVE = 4, CELL_RENDERER_SORTED = 8, CELL_RENDERER_FOCUSED = 16, CELL_RENDERER_EXPANDABLE = 32, CELL_RENDERER_EXPANDED = 64, }
CellRendererMode :: enum u32 {CELL_RENDERER_MODE_INERT = 0, CELL_RENDERER_MODE_ACTIVATABLE = 1, CELL_RENDERER_MODE_EDITABLE = 2, }
_GtkCellRendererPrivate :: rawptr
CellRendererPrivate :: _GtkCellRendererPrivate
_GtkCellRenderer :: struct {
    parent_instance: gobj.InitiallyUnowned,
    priv: ^CellRendererPrivate,
}
CellRenderer :: _GtkCellRenderer
et_request_mode_func_ptr_anon_103 :: #type proc "c" (cell: ^CellRenderer) -> SizeRequestMode
et_preferred_width_func_ptr_anon_104 :: #type proc "c" (cell: ^CellRenderer, widget: ^Widget, minimum_size: ^i32, natural_size: ^i32)
et_preferred_height_for_width_func_ptr_anon_105 :: #type proc "c" (cell: ^CellRenderer, widget: ^Widget, width: i32, minimum_height: ^i32, natural_height: ^i32)
et_preferred_height_func_ptr_anon_106 :: #type proc "c" (cell: ^CellRenderer, widget: ^Widget, minimum_size: ^i32, natural_size: ^i32)
et_preferred_width_for_height_func_ptr_anon_107 :: #type proc "c" (cell: ^CellRenderer, widget: ^Widget, height: i32, minimum_width: ^i32, natural_width: ^i32)
et_aligned_area_func_ptr_anon_108 :: #type proc "c" (cell: ^CellRenderer, widget: ^Widget, flags: CellRendererState, cell_area: ^Rectangle, aligned_area: ^Rectangle)
snapshot_func_ptr_anon_109 :: #type proc "c" (cell: ^CellRenderer, snapshot: ^Snapshot, widget: ^Widget, background_area: ^Rectangle, cell_area: ^Rectangle, flags: CellRendererState)
activate_func_ptr_anon_110 :: #type proc "c" (cell: ^CellRenderer, event: ^Event, widget: ^Widget, path: cstring, background_area: ^Rectangle, cell_area: ^Rectangle, flags: CellRendererState) -> glib.boolean
start_editing_func_ptr_anon_111 :: #type proc "c" (cell: ^CellRenderer, event: ^Event, widget: ^Widget, path: cstring, background_area: ^Rectangle, cell_area: ^Rectangle, flags: CellRendererState) -> ^CellEditable
editing_canceled_func_ptr_anon_112 :: #type proc "c" (cell: ^CellRenderer)
editing_started_func_ptr_anon_113 :: #type proc "c" (cell: ^CellRenderer, editable: ^CellEditable, path: cstring)
_GtkCellRendererClass :: struct {
    parent_class: gobj.InitiallyUnownedClass,
    get_request_mode: et_request_mode_func_ptr_anon_103,
    get_preferred_width: et_preferred_width_func_ptr_anon_104,
    get_preferred_height_for_width: et_preferred_height_for_width_func_ptr_anon_105,
    get_preferred_height: et_preferred_height_func_ptr_anon_106,
    get_preferred_width_for_height: et_preferred_width_for_height_func_ptr_anon_107,
    get_aligned_area: et_aligned_area_func_ptr_anon_108,
    snapshot: snapshot_func_ptr_anon_109,
    activate: activate_func_ptr_anon_110,
    start_editing: start_editing_func_ptr_anon_111,
    editing_canceled: editing_canceled_func_ptr_anon_112,
    editing_started: editing_started_func_ptr_anon_113,
    padding: [8]glib.pointer,
}
CellRendererClass :: _GtkCellRendererClass
_GtkCellRendererClassPrivate :: rawptr
CellRendererClassPrivate :: _GtkCellRendererClassPrivate
CellRenderer_autoptr :: ^CellRenderer
CellRenderer_listautoptr :: ^glib.List
CellRenderer_slistautoptr :: ^glib.SList
CellRenderer_queueautoptr :: ^glib.Queue
_GtkTreeIter :: struct {
    stamp: i32,
    user_data: glib.pointer,
    user_data2: glib.pointer,
    user_data3: glib.pointer,
}
TreeIter :: _GtkTreeIter
_GtkTreePath :: rawptr
TreePath :: _GtkTreePath
_GtkTreeRowReference :: rawptr
TreeRowReference :: _GtkTreeRowReference
_GtkTreeModel :: rawptr
TreeModel :: _GtkTreeModel
row_changed_func_ptr_anon_114 :: #type proc "c" (tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter)
row_inserted_func_ptr_anon_115 :: #type proc "c" (tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter)
row_has_child_toggled_func_ptr_anon_116 :: #type proc "c" (tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter)
row_deleted_func_ptr_anon_117 :: #type proc "c" (tree_model: ^TreeModel, path: ^TreePath)
rows_reordered_func_ptr_anon_118 :: #type proc "c" (tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, new_order: ^i32)
TreeModelFlags :: enum u32 {TREE_MODEL_ITERS_PERSIST = 1, TREE_MODEL_LIST_ONLY = 2, }
et_flags_func_ptr_anon_119 :: #type proc "c" (tree_model: ^TreeModel) -> TreeModelFlags
et_n_columns_func_ptr_anon_120 :: #type proc "c" (tree_model: ^TreeModel) -> i32
et_column_type_func_ptr_anon_121 :: #type proc "c" (tree_model: ^TreeModel, index_: i32) -> gobj.Type
et_iter_func_ptr_anon_122 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter, path: ^TreePath) -> glib.boolean
et_path_func_ptr_anon_123 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter) -> ^TreePath
et_value_func_ptr_anon_124 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter, column: i32, value: ^gobj.Value)
iter_next_func_ptr_anon_125 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
iter_previous_func_ptr_anon_126 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
iter_children_func_ptr_anon_127 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter, parent: ^TreeIter) -> glib.boolean
iter_has_child_func_ptr_anon_128 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
iter_n_children_func_ptr_anon_129 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter) -> i32
iter_nth_child_func_ptr_anon_130 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter, parent: ^TreeIter, n: i32) -> glib.boolean
iter_parent_func_ptr_anon_131 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter, child: ^TreeIter) -> glib.boolean
ref_node_func_ptr_anon_132 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter)
unref_node_func_ptr_anon_133 :: #type proc "c" (tree_model: ^TreeModel, iter: ^TreeIter)
_GtkTreeModelIface :: struct {
    g_iface: gobj.TypeInterface,
    row_changed: row_changed_func_ptr_anon_114,
    row_inserted: row_inserted_func_ptr_anon_115,
    row_has_child_toggled: row_has_child_toggled_func_ptr_anon_116,
    row_deleted: row_deleted_func_ptr_anon_117,
    rows_reordered: rows_reordered_func_ptr_anon_118,
    get_flags: et_flags_func_ptr_anon_119,
    get_n_columns: et_n_columns_func_ptr_anon_120,
    get_column_type: et_column_type_func_ptr_anon_121,
    get_iter: et_iter_func_ptr_anon_122,
    get_path: et_path_func_ptr_anon_123,
    get_value: et_value_func_ptr_anon_124,
    iter_next: iter_next_func_ptr_anon_125,
    iter_previous: iter_previous_func_ptr_anon_126,
    iter_children: iter_children_func_ptr_anon_127,
    iter_has_child: iter_has_child_func_ptr_anon_128,
    iter_n_children: iter_n_children_func_ptr_anon_129,
    iter_nth_child: iter_nth_child_func_ptr_anon_130,
    iter_parent: iter_parent_func_ptr_anon_131,
    ref_node: ref_node_func_ptr_anon_132,
    unref_node: unref_node_func_ptr_anon_133,
}
TreeModelIface :: _GtkTreeModelIface
TreeModelForeachFunc :: #type proc "c" (model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, data: glib.pointer) -> glib.boolean
TreeModel_autoptr :: ^TreeModel
TreeModel_listautoptr :: ^glib.List
TreeModel_slistautoptr :: ^glib.SList
TreeModel_queueautoptr :: ^glib.Queue
TreeIter_autoptr :: ^TreeIter
TreeIter_listautoptr :: ^glib.List
TreeIter_slistautoptr :: ^glib.SList
TreeIter_queueautoptr :: ^glib.Queue
TreePath_autoptr :: ^TreePath
TreePath_listautoptr :: ^glib.List
TreePath_slistautoptr :: ^glib.SList
TreePath_queueautoptr :: ^glib.Queue
TreeRowReference_autoptr :: ^TreeRowReference
TreeRowReference_listautoptr :: ^glib.List
TreeRowReference_slistautoptr :: ^glib.SList
TreeRowReference_queueautoptr :: ^glib.Queue
_GtkCellArea :: struct {
    parent_instance: gobj.InitiallyUnowned,
}
CellArea :: _GtkCellArea
add_func_ptr_anon_134 :: #type proc "c" (area: ^CellArea, renderer: ^CellRenderer)
remove_func_ptr_anon_135 :: #type proc "c" (area: ^CellArea, renderer: ^CellRenderer)
CellCallback :: #type proc "c" (renderer: ^CellRenderer, data: glib.pointer) -> glib.boolean
foreach_func_ptr_anon_136 :: #type proc "c" (area: ^CellArea, callback: CellCallback, callback_data: glib.pointer)
_GtkCellAreaContext :: struct {
    parent_instance: gobj.Object,
}
CellAreaContext :: _GtkCellAreaContext
CellAllocCallback :: #type proc "c" (renderer: ^CellRenderer, cell_area: ^Rectangle, cell_background: ^Rectangle, data: glib.pointer) -> glib.boolean
foreach_alloc_func_ptr_anon_137 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^Rectangle, background_area: ^Rectangle, callback: CellAllocCallback, callback_data: glib.pointer)
event_func_ptr_anon_138 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, event: ^Event, cell_area: ^Rectangle, flags: CellRendererState) -> i32
snapshot_func_ptr_anon_139 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, snapshot: ^Snapshot, background_area: ^Rectangle, cell_area: ^Rectangle, flags: CellRendererState, paint_focus: glib.boolean)
apply_attributes_func_ptr_anon_140 :: #type proc "c" (area: ^CellArea, tree_model: ^TreeModel, iter: ^TreeIter, is_expander: glib.boolean, is_expanded: glib.boolean)
create_context_func_ptr_anon_141 :: #type proc "c" (area: ^CellArea) -> ^CellAreaContext
copy_context_func_ptr_anon_142 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext) -> ^CellAreaContext
et_request_mode_func_ptr_anon_143 :: #type proc "c" (area: ^CellArea) -> SizeRequestMode
et_preferred_width_func_ptr_anon_144 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, minimum_width: ^i32, natural_width: ^i32)
et_preferred_height_for_width_func_ptr_anon_145 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, width: i32, minimum_height: ^i32, natural_height: ^i32)
et_preferred_height_func_ptr_anon_146 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, minimum_height: ^i32, natural_height: ^i32)
et_preferred_width_for_height_func_ptr_anon_147 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, height: i32, minimum_width: ^i32, natural_width: ^i32)
set_cell_property_func_ptr_anon_148 :: #type proc "c" (area: ^CellArea, renderer: ^CellRenderer, property_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec)
et_cell_property_func_ptr_anon_149 :: #type proc "c" (area: ^CellArea, renderer: ^CellRenderer, property_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec)
focus_func_ptr_anon_150 :: #type proc "c" (area: ^CellArea, direction: DirectionType) -> glib.boolean
is_activatable_func_ptr_anon_151 :: #type proc "c" (area: ^CellArea) -> glib.boolean
activate_func_ptr_anon_152 :: #type proc "c" (area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^Rectangle, flags: CellRendererState, edit_only: glib.boolean) -> glib.boolean
_GtkCellAreaClass :: struct {
    parent_class: gobj.InitiallyUnownedClass,
    add: add_func_ptr_anon_134,
    remove: remove_func_ptr_anon_135,
    foreach: foreach_func_ptr_anon_136,
    foreach_alloc: foreach_alloc_func_ptr_anon_137,
    event: event_func_ptr_anon_138,
    snapshot: snapshot_func_ptr_anon_139,
    apply_attributes: apply_attributes_func_ptr_anon_140,
    create_context: create_context_func_ptr_anon_141,
    copy_context: copy_context_func_ptr_anon_142,
    get_request_mode: et_request_mode_func_ptr_anon_143,
    get_preferred_width: et_preferred_width_func_ptr_anon_144,
    get_preferred_height_for_width: et_preferred_height_for_width_func_ptr_anon_145,
    get_preferred_height: et_preferred_height_func_ptr_anon_146,
    get_preferred_width_for_height: et_preferred_width_for_height_func_ptr_anon_147,
    set_cell_property: set_cell_property_func_ptr_anon_148,
    get_cell_property: et_cell_property_func_ptr_anon_149,
    focus: focus_func_ptr_anon_150,
    is_activatable: is_activatable_func_ptr_anon_151,
    activate: activate_func_ptr_anon_152,
    padding: [8]glib.pointer,
}
CellAreaClass :: _GtkCellAreaClass
CellArea_autoptr :: ^CellArea
CellArea_listautoptr :: ^glib.List
CellArea_slistautoptr :: ^glib.SList
CellArea_queueautoptr :: ^glib.Queue
_GtkCellAreaBox :: rawptr
CellAreaBox :: _GtkCellAreaBox
CellAreaBox_autoptr :: ^CellAreaBox
CellAreaBox_listautoptr :: ^glib.List
CellAreaBox_slistautoptr :: ^glib.SList
CellAreaBox_queueautoptr :: ^glib.Queue
_GtkCellAreaContextPrivate :: rawptr
CellAreaContextPrivate :: _GtkCellAreaContextPrivate
allocate_func_ptr_anon_153 :: #type proc "c" (context_p: ^CellAreaContext, width: i32, height: i32)
reset_func_ptr_anon_154 :: #type proc "c" (context_p: ^CellAreaContext)
et_preferred_height_for_width_func_ptr_anon_155 :: #type proc "c" (context_p: ^CellAreaContext, width: i32, minimum_height: ^i32, natural_height: ^i32)
et_preferred_width_for_height_func_ptr_anon_156 :: #type proc "c" (context_p: ^CellAreaContext, height: i32, minimum_width: ^i32, natural_width: ^i32)
_GtkCellAreaContextClass :: struct {
    parent_class: gobj.ObjectClass,
    allocate: allocate_func_ptr_anon_153,
    reset: reset_func_ptr_anon_154,
    get_preferred_height_for_width: et_preferred_height_for_width_func_ptr_anon_155,
    get_preferred_width_for_height: et_preferred_width_for_height_func_ptr_anon_156,
    padding: [8]glib.pointer,
}
CellAreaContextClass :: _GtkCellAreaContextClass
CellAreaContext_autoptr :: ^CellAreaContext
CellAreaContext_listautoptr :: ^glib.List
CellAreaContext_slistautoptr :: ^glib.SList
CellAreaContext_queueautoptr :: ^glib.Queue
_GtkCellLayout :: rawptr
CellLayout :: _GtkCellLayout
pack_start_func_ptr_anon_157 :: #type proc "c" (cell_layout: ^CellLayout, cell: ^CellRenderer, expand: glib.boolean)
pack_end_func_ptr_anon_158 :: #type proc "c" (cell_layout: ^CellLayout, cell: ^CellRenderer, expand: glib.boolean)
clear_func_ptr_anon_159 :: #type proc "c" (cell_layout: ^CellLayout)
add_attribute_func_ptr_anon_160 :: #type proc "c" (cell_layout: ^CellLayout, cell: ^CellRenderer, attribute: cstring, column: i32)
CellLayoutDataFunc :: #type proc "c" (cell_layout: ^CellLayout, cell: ^CellRenderer, tree_model: ^TreeModel, iter: ^TreeIter, data: glib.pointer)
set_cell_data_func_func_ptr_anon_161 :: #type proc "c" (cell_layout: ^CellLayout, cell: ^CellRenderer, func: CellLayoutDataFunc, func_data: glib.pointer, destroy: glib.DestroyNotify)
clear_attributes_func_ptr_anon_162 :: #type proc "c" (cell_layout: ^CellLayout, cell: ^CellRenderer)
reorder_func_ptr_anon_163 :: #type proc "c" (cell_layout: ^CellLayout, cell: ^CellRenderer, position: i32)
et_cells_func_ptr_anon_164 :: #type proc "c" (cell_layout: ^CellLayout) -> ^glib.List
et_area_func_ptr_anon_165 :: #type proc "c" (cell_layout: ^CellLayout) -> ^CellArea
_GtkCellLayoutIface :: struct {
    g_iface: gobj.TypeInterface,
    pack_start: pack_start_func_ptr_anon_157,
    pack_end: pack_end_func_ptr_anon_158,
    clear: clear_func_ptr_anon_159,
    add_attribute: add_attribute_func_ptr_anon_160,
    set_cell_data_func: set_cell_data_func_func_ptr_anon_161,
    clear_attributes: clear_attributes_func_ptr_anon_162,
    reorder: reorder_func_ptr_anon_163,
    get_cells: et_cells_func_ptr_anon_164,
    get_area: et_area_func_ptr_anon_165,
}
CellLayoutIface :: _GtkCellLayoutIface
CellLayout_autoptr :: ^CellLayout
CellLayout_listautoptr :: ^glib.List
CellLayout_slistautoptr :: ^glib.SList
CellLayout_queueautoptr :: ^glib.Queue
_GtkCellRendererText :: struct {
    parent: CellRenderer,
}
CellRendererText :: _GtkCellRendererText
edited_func_ptr_anon_166 :: #type proc "c" (cell_renderer_text: ^CellRendererText, path: cstring, new_text: cstring)
_GtkCellRendererTextClass :: struct {
    parent_class: CellRendererClass,
    edited: edited_func_ptr_anon_166,
    padding: [8]glib.pointer,
}
CellRendererTextClass :: _GtkCellRendererTextClass
CellRendererText_autoptr :: ^CellRendererText
CellRendererText_listautoptr :: ^glib.List
CellRendererText_slistautoptr :: ^glib.SList
CellRendererText_queueautoptr :: ^glib.Queue
_GtkCellRendererAccel :: rawptr
CellRendererAccel :: _GtkCellRendererAccel
CellRendererAccelMode :: enum u32 {CELL_RENDERER_ACCEL_MODE_GTK = 0, CELL_RENDERER_ACCEL_MODE_OTHER = 1, }
CellRendererAccel_autoptr :: ^CellRendererAccel
CellRendererAccel_listautoptr :: ^glib.List
CellRendererAccel_slistautoptr :: ^glib.SList
CellRendererAccel_queueautoptr :: ^glib.Queue
_GtkCellRendererCombo :: rawptr
CellRendererCombo :: _GtkCellRendererCombo
CellRendererCombo_autoptr :: ^CellRendererCombo
CellRendererCombo_listautoptr :: ^glib.List
CellRendererCombo_slistautoptr :: ^glib.SList
CellRendererCombo_queueautoptr :: ^glib.Queue
_GtkCellRendererPixbuf :: rawptr
CellRendererPixbuf :: _GtkCellRendererPixbuf
CellRendererPixbuf_autoptr :: ^CellRendererPixbuf
CellRendererPixbuf_listautoptr :: ^glib.List
CellRendererPixbuf_slistautoptr :: ^glib.SList
CellRendererPixbuf_queueautoptr :: ^glib.Queue
_GtkCellRendererProgress :: rawptr
CellRendererProgress :: _GtkCellRendererProgress
CellRendererProgress_autoptr :: ^CellRendererProgress
CellRendererProgress_listautoptr :: ^glib.List
CellRendererProgress_slistautoptr :: ^glib.SList
CellRendererProgress_queueautoptr :: ^glib.Queue
_GtkCellRendererSpin :: rawptr
CellRendererSpin :: _GtkCellRendererSpin
CellRendererSpin_autoptr :: ^CellRendererSpin
CellRendererSpin_listautoptr :: ^glib.List
CellRendererSpin_slistautoptr :: ^glib.SList
CellRendererSpin_queueautoptr :: ^glib.Queue
_GtkCellRendererSpinner :: rawptr
CellRendererSpinner :: _GtkCellRendererSpinner
CellRendererSpinner_autoptr :: ^CellRendererSpinner
CellRendererSpinner_listautoptr :: ^glib.List
CellRendererSpinner_slistautoptr :: ^glib.SList
CellRendererSpinner_queueautoptr :: ^glib.Queue
_GtkCellRendererToggle :: rawptr
CellRendererToggle :: _GtkCellRendererToggle
CellRendererToggle_autoptr :: ^CellRendererToggle
CellRendererToggle_listautoptr :: ^glib.List
CellRendererToggle_slistautoptr :: ^glib.SList
CellRendererToggle_queueautoptr :: ^glib.Queue
_GtkCellView :: rawptr
CellView :: _GtkCellView
CellView_autoptr :: ^CellView
CellView_listautoptr :: ^glib.List
CellView_slistautoptr :: ^glib.SList
CellView_queueautoptr :: ^glib.Queue
_GtkCenterBox :: rawptr
CenterBox :: _GtkCenterBox
_GtkCenterBoxClass :: rawptr
CenterBoxClass :: _GtkCenterBoxClass
_GtkCenterLayout :: rawptr
CenterLayout :: _GtkCenterLayout
CenterLayoutClass :: struct {
    parent_class: LayoutManagerClass,
}
CenterLayout_autoptr :: ^CenterLayout
CenterLayout_listautoptr :: ^glib.List
CenterLayout_slistautoptr :: ^glib.SList
CenterLayout_queueautoptr :: ^glib.Queue
CenterLayoutClass_autoptr :: ^CenterLayoutClass
CenterLayoutClass_listautoptr :: ^glib.List
CenterLayoutClass_slistautoptr :: ^glib.SList
CenterLayoutClass_queueautoptr :: ^glib.Queue
_GtkToggleButton :: struct {
    button: Button,
}
ToggleButton :: _GtkToggleButton
toggled_func_ptr_anon_167 :: #type proc "c" (toggle_button: ^ToggleButton)
_GtkToggleButtonClass :: struct {
    parent_class: ButtonClass,
    toggled: toggled_func_ptr_anon_167,
    padding: [8]glib.pointer,
}
ToggleButtonClass :: _GtkToggleButtonClass
ToggleButton_autoptr :: ^ToggleButton
ToggleButton_listautoptr :: ^glib.List
ToggleButton_slistautoptr :: ^glib.SList
ToggleButton_queueautoptr :: ^glib.Queue
_GtkCheckButton :: struct {
    parent_instance: Widget,
}
CheckButton :: _GtkCheckButton
toggled_func_ptr_anon_168 :: #type proc "c" (check_button: ^CheckButton)
activate_func_ptr_anon_169 :: #type proc "c" (check_button: ^CheckButton)
_GtkCheckButtonClass :: struct {
    parent_class: WidgetClass,
    toggled: toggled_func_ptr_anon_168,
    activate: activate_func_ptr_anon_169,
    padding: [7]glib.pointer,
}
CheckButtonClass :: _GtkCheckButtonClass
CheckButton_autoptr :: ^CheckButton
CheckButton_listautoptr :: ^glib.List
CheckButton_slistautoptr :: ^glib.SList
CheckButton_queueautoptr :: ^glib.Queue
_GtkColorButton :: rawptr
ColorButton :: _GtkColorButton
ColorButton_autoptr :: ^ColorButton
ColorButton_listautoptr :: ^glib.List
ColorButton_slistautoptr :: ^glib.SList
ColorButton_queueautoptr :: ^glib.Queue
_GtkColorChooser :: rawptr
ColorChooser :: _GtkColorChooser
et_rgba_func_ptr_anon_170 :: #type proc "c" (chooser: ^ColorChooser, color: ^RGBA)
set_rgba_func_ptr_anon_171 :: #type proc "c" (chooser: ^ColorChooser, color: ^RGBA)
add_palette_func_ptr_anon_172 :: #type proc "c" (chooser: ^ColorChooser, orientation: Orientation, colors_per_line: i32, n_colors: i32, colors: [^]RGBA)
color_activated_func_ptr_anon_173 :: #type proc "c" (chooser: ^ColorChooser, color: ^RGBA)
_GtkColorChooserInterface :: struct {
    base_interface: gobj.TypeInterface,
    get_rgba: et_rgba_func_ptr_anon_170,
    set_rgba: set_rgba_func_ptr_anon_171,
    add_palette: add_palette_func_ptr_anon_172,
    color_activated: color_activated_func_ptr_anon_173,
    padding: [12]glib.pointer,
}
ColorChooserInterface :: _GtkColorChooserInterface
ColorChooser_autoptr :: ^ColorChooser
ColorChooser_listautoptr :: ^glib.List
ColorChooser_slistautoptr :: ^glib.SList
ColorChooser_queueautoptr :: ^glib.Queue
_GtkColorChooserDialog :: rawptr
ColorChooserDialog :: _GtkColorChooserDialog
ColorChooserDialog_autoptr :: ^ColorChooserDialog
ColorChooserDialog_listautoptr :: ^glib.List
ColorChooserDialog_slistautoptr :: ^glib.SList
ColorChooserDialog_queueautoptr :: ^glib.Queue
_GtkColorChooserWidget :: rawptr
ColorChooserWidget :: _GtkColorChooserWidget
ColorChooserWidget_autoptr :: ^ColorChooserWidget
ColorChooserWidget_listautoptr :: ^glib.List
ColorChooserWidget_slistautoptr :: ^glib.SList
ColorChooserWidget_queueautoptr :: ^glib.Queue
_GtkColorDialog :: rawptr
ColorDialog :: _GtkColorDialog
ColorDialogClass :: struct {
    parent_class: gobj.ObjectClass,
}
ColorDialog_autoptr :: ^ColorDialog
ColorDialog_listautoptr :: ^glib.List
ColorDialog_slistautoptr :: ^glib.SList
ColorDialog_queueautoptr :: ^glib.Queue
ColorDialogClass_autoptr :: ^ColorDialogClass
ColorDialogClass_listautoptr :: ^glib.List
ColorDialogClass_slistautoptr :: ^glib.SList
ColorDialogClass_queueautoptr :: ^glib.Queue
_GtkColorDialogButton :: rawptr
ColorDialogButton :: _GtkColorDialogButton
ColorDialogButtonClass :: struct {
    parent_class: WidgetClass,
}
ColorDialogButton_autoptr :: ^ColorDialogButton
ColorDialogButton_listautoptr :: ^glib.List
ColorDialogButton_slistautoptr :: ^glib.SList
ColorDialogButton_queueautoptr :: ^glib.Queue
ColorDialogButtonClass_autoptr :: ^ColorDialogButtonClass
ColorDialogButtonClass_listautoptr :: ^glib.List
ColorDialogButtonClass_slistautoptr :: ^glib.SList
ColorDialogButtonClass_queueautoptr :: ^glib.Queue
SorterOrder :: enum u32 {SORTER_ORDER_PARTIAL = 0, SORTER_ORDER_NONE = 1, SORTER_ORDER_TOTAL = 2, }
SorterChange :: enum u32 {SORTER_CHANGE_DIFFERENT = 0, SORTER_CHANGE_INVERTED = 1, SORTER_CHANGE_LESS_STRICT = 2, SORTER_CHANGE_MORE_STRICT = 3, }
_GtkSorter :: struct {
    parent_instance: gobj.Object,
}
Sorter :: _GtkSorter
compare_func_ptr_anon_174 :: #type proc "c" (self: ^Sorter, item1: glib.pointer, item2: glib.pointer) -> Ordering
et_order_func_ptr_anon_175 :: #type proc "c" (self: ^Sorter) -> SorterOrder
_gtk_reserved1_func_ptr_anon_176 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_177 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_178 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_179 :: #type proc "c" ()
_gtk_reserved5_func_ptr_anon_180 :: #type proc "c" ()
_gtk_reserved6_func_ptr_anon_181 :: #type proc "c" ()
_gtk_reserved7_func_ptr_anon_182 :: #type proc "c" ()
_gtk_reserved8_func_ptr_anon_183 :: #type proc "c" ()
_GtkSorterClass :: struct {
    parent_class: gobj.ObjectClass,
    compare: compare_func_ptr_anon_174,
    get_order: et_order_func_ptr_anon_175,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_176,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_177,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_178,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_179,
    _gtk_reserved5: _gtk_reserved5_func_ptr_anon_180,
    _gtk_reserved6: _gtk_reserved6_func_ptr_anon_181,
    _gtk_reserved7: _gtk_reserved7_func_ptr_anon_182,
    _gtk_reserved8: _gtk_reserved8_func_ptr_anon_183,
}
SorterClass :: _GtkSorterClass
Sorter_autoptr :: ^Sorter
Sorter_listautoptr :: ^glib.List
Sorter_slistautoptr :: ^glib.SList
Sorter_queueautoptr :: ^glib.Queue
SorterClass_autoptr :: ^SorterClass
SorterClass_listautoptr :: ^glib.List
SorterClass_slistautoptr :: ^glib.SList
SorterClass_queueautoptr :: ^glib.Queue
_GtkSortListModel :: rawptr
SortListModel :: _GtkSortListModel
SortListModelClass :: struct {
    parent_class: gobj.ObjectClass,
}
SortListModel_autoptr :: ^SortListModel
SortListModel_listautoptr :: ^glib.List
SortListModel_slistautoptr :: ^glib.SList
SortListModel_queueautoptr :: ^glib.Queue
SortListModelClass_autoptr :: ^SortListModelClass
SortListModelClass_listautoptr :: ^glib.List
SortListModelClass_slistautoptr :: ^glib.SList
SortListModelClass_queueautoptr :: ^glib.Queue
_GtkSelectionModel :: rawptr
SelectionModel :: _GtkSelectionModel
is_selected_func_ptr_anon_184 :: #type proc "c" (model: ^SelectionModel, position: glib.uint_) -> glib.boolean
et_selection_in_range_func_ptr_anon_185 :: #type proc "c" (model: ^SelectionModel, position: glib.uint_, n_items: glib.uint_) -> ^Bitset
select_item_func_ptr_anon_186 :: #type proc "c" (model: ^SelectionModel, position: glib.uint_, unselect_rest: glib.boolean) -> glib.boolean
unselect_item_func_ptr_anon_187 :: #type proc "c" (model: ^SelectionModel, position: glib.uint_) -> glib.boolean
select_range_func_ptr_anon_188 :: #type proc "c" (model: ^SelectionModel, position: glib.uint_, n_items: glib.uint_, unselect_rest: glib.boolean) -> glib.boolean
unselect_range_func_ptr_anon_189 :: #type proc "c" (model: ^SelectionModel, position: glib.uint_, n_items: glib.uint_) -> glib.boolean
select_all_func_ptr_anon_190 :: #type proc "c" (model: ^SelectionModel) -> glib.boolean
unselect_all_func_ptr_anon_191 :: #type proc "c" (model: ^SelectionModel) -> glib.boolean
set_selection_func_ptr_anon_192 :: #type proc "c" (model: ^SelectionModel, selected: ^Bitset, mask: ^Bitset) -> glib.boolean
_GtkSelectionModelInterface :: struct {
    g_iface: gobj.TypeInterface,
    is_selected: is_selected_func_ptr_anon_184,
    get_selection_in_range: et_selection_in_range_func_ptr_anon_185,
    select_item: select_item_func_ptr_anon_186,
    unselect_item: unselect_item_func_ptr_anon_187,
    select_range: select_range_func_ptr_anon_188,
    unselect_range: unselect_range_func_ptr_anon_189,
    select_all: select_all_func_ptr_anon_190,
    unselect_all: unselect_all_func_ptr_anon_191,
    set_selection: set_selection_func_ptr_anon_192,
}
SelectionModelInterface :: _GtkSelectionModelInterface
SelectionModel_autoptr :: ^SelectionModel
SelectionModel_listautoptr :: ^glib.List
SelectionModel_slistautoptr :: ^glib.SList
SelectionModel_queueautoptr :: ^glib.Queue
_GtkColumnView :: rawptr
ColumnView :: _GtkColumnView
_GtkColumnViewClass :: rawptr
ColumnViewClass :: _GtkColumnViewClass
_GtkColumnViewColumn :: rawptr
ColumnViewColumn :: _GtkColumnViewColumn
_GtkListItemClass :: rawptr
ListItemClass :: _GtkListItemClass
ListItem_autoptr :: ^ListItem
ListItem_listautoptr :: ^glib.List
ListItem_slistautoptr :: ^glib.SList
ListItem_queueautoptr :: ^glib.Queue
ListItemClass_autoptr :: ^ListItemClass
ListItemClass_listautoptr :: ^glib.List
ListItemClass_slistautoptr :: ^glib.SList
ListItemClass_queueautoptr :: ^glib.Queue
_GtkColumnViewCell :: rawptr
ColumnViewCell :: _GtkColumnViewCell
_GtkColumnViewCellClass :: rawptr
ColumnViewCellClass :: _GtkColumnViewCellClass
ColumnViewCell_autoptr :: ^ColumnViewCell
ColumnViewCell_listautoptr :: ^glib.List
ColumnViewCell_slistautoptr :: ^glib.SList
ColumnViewCell_queueautoptr :: ^glib.Queue
ColumnViewCellClass_autoptr :: ^ColumnViewCellClass
ColumnViewCellClass_listautoptr :: ^glib.List
ColumnViewCellClass_slistautoptr :: ^glib.SList
ColumnViewCellClass_queueautoptr :: ^glib.Queue
ColumnViewColumn_autoptr :: ^ColumnViewColumn
ColumnViewColumn_listautoptr :: ^glib.List
ColumnViewColumn_slistautoptr :: ^glib.SList
ColumnViewColumn_queueautoptr :: ^glib.Queue
_GtkColumnViewColumnClass :: rawptr
ColumnViewColumnClass :: _GtkColumnViewColumnClass
_GtkColumnViewRow :: rawptr
ColumnViewRow :: _GtkColumnViewRow
_GtkColumnViewRowClass :: rawptr
ColumnViewRowClass :: _GtkColumnViewRowClass
ColumnViewRow_autoptr :: ^ColumnViewRow
ColumnViewRow_listautoptr :: ^glib.List
ColumnViewRow_slistautoptr :: ^glib.SList
ColumnViewRow_queueautoptr :: ^glib.Queue
ColumnViewRowClass_autoptr :: ^ColumnViewRowClass
ColumnViewRowClass_listautoptr :: ^glib.List
ColumnViewRowClass_slistautoptr :: ^glib.SList
ColumnViewRowClass_queueautoptr :: ^glib.Queue
_GtkColumnViewSorter :: rawptr
ColumnViewSorter :: _GtkColumnViewSorter
ColumnViewSorterClass :: struct {
    parent_class: SorterClass,
}
ColumnViewSorter_autoptr :: ^ColumnViewSorter
ColumnViewSorter_listautoptr :: ^glib.List
ColumnViewSorter_slistautoptr :: ^glib.SList
ColumnViewSorter_queueautoptr :: ^glib.Queue
ColumnViewSorterClass_autoptr :: ^ColumnViewSorterClass
ColumnViewSorterClass_listautoptr :: ^glib.List
ColumnViewSorterClass_slistautoptr :: ^glib.SList
ColumnViewSorterClass_queueautoptr :: ^glib.Queue
_GtkTreeSortable :: rawptr
TreeSortable :: _GtkTreeSortable
sort_column_changed_func_ptr_anon_193 :: #type proc "c" (sortable: ^TreeSortable)
et_sort_column_id_func_ptr_anon_194 :: #type proc "c" (sortable: ^TreeSortable, sort_column_id: ^i32, order: ^SortType) -> glib.boolean
set_sort_column_id_func_ptr_anon_195 :: #type proc "c" (sortable: ^TreeSortable, sort_column_id: i32, order: SortType)
TreeIterCompareFunc :: #type proc "c" (model: ^TreeModel, a: ^TreeIter, b: ^TreeIter, user_data: glib.pointer) -> i32
set_sort_func_func_ptr_anon_196 :: #type proc "c" (sortable: ^TreeSortable, sort_column_id: i32, sort_func: TreeIterCompareFunc, user_data: glib.pointer, destroy: glib.DestroyNotify)
set_default_sort_func_func_ptr_anon_197 :: #type proc "c" (sortable: ^TreeSortable, sort_func: TreeIterCompareFunc, user_data: glib.pointer, destroy: glib.DestroyNotify)
has_default_sort_func_func_ptr_anon_198 :: #type proc "c" (sortable: ^TreeSortable) -> glib.boolean
_GtkTreeSortableIface :: struct {
    g_iface: gobj.TypeInterface,
    sort_column_changed: sort_column_changed_func_ptr_anon_193,
    get_sort_column_id: et_sort_column_id_func_ptr_anon_194,
    set_sort_column_id: set_sort_column_id_func_ptr_anon_195,
    set_sort_func: set_sort_func_func_ptr_anon_196,
    set_default_sort_func: set_default_sort_func_func_ptr_anon_197,
    has_default_sort_func: has_default_sort_func_func_ptr_anon_198,
}
TreeSortableIface :: _GtkTreeSortableIface
TreeSortable_autoptr :: ^TreeSortable
TreeSortable_listautoptr :: ^glib.List
TreeSortable_slistautoptr :: ^glib.SList
TreeSortable_queueautoptr :: ^glib.Queue
_GtkTreeViewColumn :: rawptr
TreeViewColumn :: _GtkTreeViewColumn
TreeViewColumnSizing :: enum u32 {TREE_VIEW_COLUMN_GROW_ONLY = 0, TREE_VIEW_COLUMN_AUTOSIZE = 1, TREE_VIEW_COLUMN_FIXED = 2, }
TreeCellDataFunc :: #type proc "c" (tree_column: ^TreeViewColumn, cell: ^CellRenderer, tree_model: ^TreeModel, iter: ^TreeIter, data: glib.pointer)
TreeViewColumn_autoptr :: ^TreeViewColumn
TreeViewColumn_listautoptr :: ^glib.List
TreeViewColumn_slistautoptr :: ^glib.SList
TreeViewColumn_queueautoptr :: ^glib.Queue
_GtkEditable :: rawptr
Editable :: _GtkEditable
insert_text_func_ptr_anon_199 :: #type proc "c" (editable: ^Editable, text: cstring, length: i32, position: ^i32)
delete_text_func_ptr_anon_200 :: #type proc "c" (editable: ^Editable, start_pos: i32, end_pos: i32)
changed_func_ptr_anon_201 :: #type proc "c" (editable: ^Editable)
et_text_func_ptr_anon_202 :: #type proc "c" (editable: ^Editable) -> cstring
do_insert_text_func_ptr_anon_203 :: #type proc "c" (editable: ^Editable, text: cstring, length: i32, position: ^i32)
do_delete_text_func_ptr_anon_204 :: #type proc "c" (editable: ^Editable, start_pos: i32, end_pos: i32)
et_selection_bounds_func_ptr_anon_205 :: #type proc "c" (editable: ^Editable, start_pos: [^]i32, end_pos: [^]i32) -> glib.boolean
set_selection_bounds_func_ptr_anon_206 :: #type proc "c" (editable: ^Editable, start_pos: i32, end_pos: i32)
et_delegate_func_ptr_anon_207 :: #type proc "c" (editable: ^Editable) -> ^Editable
_GtkEditableInterface :: struct {
    base_iface: gobj.TypeInterface,
    insert_text: insert_text_func_ptr_anon_199,
    delete_text: delete_text_func_ptr_anon_200,
    changed: changed_func_ptr_anon_201,
    get_text: et_text_func_ptr_anon_202,
    do_insert_text: do_insert_text_func_ptr_anon_203,
    do_delete_text: do_delete_text_func_ptr_anon_204,
    get_selection_bounds: et_selection_bounds_func_ptr_anon_205,
    set_selection_bounds: set_selection_bounds_func_ptr_anon_206,
    get_delegate: et_delegate_func_ptr_anon_207,
}
EditableInterface :: _GtkEditableInterface
EditableProperties :: enum u32 {EDITABLE_PROP_TEXT = 0, EDITABLE_PROP_CURSOR_POSITION = 1, EDITABLE_PROP_SELECTION_BOUND = 2, EDITABLE_PROP_EDITABLE = 3, EDITABLE_PROP_WIDTH_CHARS = 4, EDITABLE_PROP_MAX_WIDTH_CHARS = 5, EDITABLE_PROP_XALIGN = 6, EDITABLE_PROP_ENABLE_UNDO = 7, EDITABLE_NUM_PROPERTIES = 8, }
Editable_autoptr :: ^Editable
Editable_listautoptr :: ^glib.List
Editable_slistautoptr :: ^glib.SList
Editable_queueautoptr :: ^glib.Queue
_GtkIMContext :: struct {
    parent_instance: gobj.Object,
}
IMContext :: _GtkIMContext
preedit_start_func_ptr_anon_208 :: #type proc "c" (context_p: ^IMContext)
preedit_end_func_ptr_anon_209 :: #type proc "c" (context_p: ^IMContext)
preedit_changed_func_ptr_anon_210 :: #type proc "c" (context_p: ^IMContext)
commit_func_ptr_anon_211 :: #type proc "c" (context_p: ^IMContext, str: cstring)
retrieve_surrounding_func_ptr_anon_212 :: #type proc "c" (context_p: ^IMContext) -> glib.boolean
delete_surrounding_func_ptr_anon_213 :: #type proc "c" (context_p: ^IMContext, offset: i32, n_chars: i32) -> glib.boolean
set_client_widget_func_ptr_anon_214 :: #type proc "c" (context_p: ^IMContext, widget: ^Widget)
et_preedit_string_func_ptr_anon_215 :: #type proc "c" (context_p: ^IMContext, str: ^cstring, attrs: [^]^pango.AttrList, cursor_pos: [^]i32)
filter_keypress_func_ptr_anon_216 :: #type proc "c" (context_p: ^IMContext, event: ^Event) -> glib.boolean
focus_in_func_ptr_anon_217 :: #type proc "c" (context_p: ^IMContext)
focus_out_func_ptr_anon_218 :: #type proc "c" (context_p: ^IMContext)
reset_func_ptr_anon_219 :: #type proc "c" (context_p: ^IMContext)
set_cursor_location_func_ptr_anon_220 :: #type proc "c" (context_p: ^IMContext, area: ^Rectangle)
set_use_preedit_func_ptr_anon_221 :: #type proc "c" (context_p: ^IMContext, use_preedit: glib.boolean)
set_surrounding_func_ptr_anon_222 :: #type proc "c" (context_p: ^IMContext, text: cstring, len: i32, cursor_index: i32)
et_surrounding_func_ptr_anon_223 :: #type proc "c" (context_p: ^IMContext, text: ^cstring, cursor_index: ^i32) -> glib.boolean
set_surrounding_with_selection_func_ptr_anon_224 :: #type proc "c" (context_p: ^IMContext, text: cstring, len: i32, cursor_index: i32, anchor_index: i32)
et_surrounding_with_selection_func_ptr_anon_225 :: #type proc "c" (context_p: ^IMContext, text: ^cstring, cursor_index: ^i32, anchor_index: ^i32) -> glib.boolean
activate_osk_func_ptr_anon_226 :: #type proc "c" (context_p: ^IMContext)
_gtk_reserved1_func_ptr_anon_227 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_228 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_229 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_230 :: #type proc "c" ()
_GtkIMContextClass :: struct {
    parent_class: gobj.ObjectClass,
    preedit_start: preedit_start_func_ptr_anon_208,
    preedit_end: preedit_end_func_ptr_anon_209,
    preedit_changed: preedit_changed_func_ptr_anon_210,
    commit: commit_func_ptr_anon_211,
    retrieve_surrounding: retrieve_surrounding_func_ptr_anon_212,
    delete_surrounding: delete_surrounding_func_ptr_anon_213,
    set_client_widget: set_client_widget_func_ptr_anon_214,
    get_preedit_string: et_preedit_string_func_ptr_anon_215,
    filter_keypress: filter_keypress_func_ptr_anon_216,
    focus_in: focus_in_func_ptr_anon_217,
    focus_out: focus_out_func_ptr_anon_218,
    reset: reset_func_ptr_anon_219,
    set_cursor_location: set_cursor_location_func_ptr_anon_220,
    set_use_preedit: set_use_preedit_func_ptr_anon_221,
    set_surrounding: set_surrounding_func_ptr_anon_222,
    get_surrounding: et_surrounding_func_ptr_anon_223,
    set_surrounding_with_selection: set_surrounding_with_selection_func_ptr_anon_224,
    get_surrounding_with_selection: et_surrounding_with_selection_func_ptr_anon_225,
    activate_osk: activate_osk_func_ptr_anon_226,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_227,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_228,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_229,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_230,
}
IMContextClass :: _GtkIMContextClass
IMContext_autoptr :: ^IMContext
IMContext_listautoptr :: ^glib.List
IMContext_slistautoptr :: ^glib.SList
IMContext_queueautoptr :: ^glib.Queue
_GtkEntryBuffer :: struct {
    parent_instance: gobj.Object,
}
EntryBuffer :: _GtkEntryBuffer
inserted_text_func_ptr_anon_231 :: #type proc "c" (buffer: ^EntryBuffer, position: glib.uint_, chars: cstring, n_chars: glib.uint_)
deleted_text_func_ptr_anon_232 :: #type proc "c" (buffer: ^EntryBuffer, position: glib.uint_, n_chars: glib.uint_)
et_text_func_ptr_anon_233 :: #type proc "c" (buffer: ^EntryBuffer, n_bytes: [^]glib.size) -> cstring
et_length_func_ptr_anon_234 :: #type proc "c" (buffer: ^EntryBuffer) -> glib.uint_
insert_text_func_ptr_anon_235 :: #type proc "c" (buffer: ^EntryBuffer, position: glib.uint_, chars: cstring, n_chars: glib.uint_) -> glib.uint_
delete_text_func_ptr_anon_236 :: #type proc "c" (buffer: ^EntryBuffer, position: glib.uint_, n_chars: glib.uint_) -> glib.uint_
_gtk_reserved1_func_ptr_anon_237 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_238 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_239 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_240 :: #type proc "c" ()
_gtk_reserved5_func_ptr_anon_241 :: #type proc "c" ()
_gtk_reserved6_func_ptr_anon_242 :: #type proc "c" ()
_gtk_reserved7_func_ptr_anon_243 :: #type proc "c" ()
_gtk_reserved8_func_ptr_anon_244 :: #type proc "c" ()
_GtkEntryBufferClass :: struct {
    parent_class: gobj.ObjectClass,
    inserted_text: inserted_text_func_ptr_anon_231,
    deleted_text: deleted_text_func_ptr_anon_232,
    get_text: et_text_func_ptr_anon_233,
    get_length: et_length_func_ptr_anon_234,
    insert_text: insert_text_func_ptr_anon_235,
    delete_text: delete_text_func_ptr_anon_236,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_237,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_238,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_239,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_240,
    _gtk_reserved5: _gtk_reserved5_func_ptr_anon_241,
    _gtk_reserved6: _gtk_reserved6_func_ptr_anon_242,
    _gtk_reserved7: _gtk_reserved7_func_ptr_anon_243,
    _gtk_reserved8: _gtk_reserved8_func_ptr_anon_244,
}
EntryBufferClass :: _GtkEntryBufferClass
EntryBuffer_autoptr :: ^EntryBuffer
EntryBuffer_listautoptr :: ^glib.List
EntryBuffer_slistautoptr :: ^glib.SList
EntryBuffer_queueautoptr :: ^glib.Queue
_GtkListStorePrivate :: rawptr
ListStorePrivate :: _GtkListStorePrivate
_GtkListStore :: struct {
    parent: gobj.Object,
    priv: ^ListStorePrivate,
}
ListStore :: _GtkListStore
_GtkListStoreClass :: struct {
    parent_class: gobj.ObjectClass,
    padding: [8]glib.pointer,
}
ListStoreClass :: _GtkListStoreClass
ListStore_autoptr :: ^ListStore
ListStore_listautoptr :: ^glib.List
ListStore_slistautoptr :: ^glib.SList
ListStore_queueautoptr :: ^glib.Queue
TreeModelFilterVisibleFunc :: #type proc "c" (model: ^TreeModel, iter: ^TreeIter, data: glib.pointer) -> glib.boolean
TreeModelFilterModifyFunc :: #type proc "c" (model: ^TreeModel, iter: ^TreeIter, value: ^gobj.Value, column: i32, data: glib.pointer)
_GtkTreeModelFilterPrivate :: rawptr
TreeModelFilterPrivate :: _GtkTreeModelFilterPrivate
_GtkTreeModelFilter :: struct {
    parent: gobj.Object,
    priv: ^TreeModelFilterPrivate,
}
TreeModelFilter :: _GtkTreeModelFilter
visible_func_ptr_anon_245 :: #type proc "c" (self: ^TreeModelFilter, child_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
modify_func_ptr_anon_246 :: #type proc "c" (self: ^TreeModelFilter, child_model: ^TreeModel, iter: ^TreeIter, value: ^gobj.Value, column: i32)
_GtkTreeModelFilterClass :: struct {
    parent_class: gobj.ObjectClass,
    visible: visible_func_ptr_anon_245,
    modify: modify_func_ptr_anon_246,
    padding: [8]glib.pointer,
}
TreeModelFilterClass :: _GtkTreeModelFilterClass
TreeModelFilter_autoptr :: ^TreeModelFilter
TreeModelFilter_listautoptr :: ^glib.List
TreeModelFilter_slistautoptr :: ^glib.SList
TreeModelFilter_queueautoptr :: ^glib.Queue
_GtkEntryCompletion :: rawptr
EntryCompletion :: _GtkEntryCompletion
EntryCompletionMatchFunc :: #type proc "c" (completion: ^EntryCompletion, key: cstring, iter: ^TreeIter, user_data: glib.pointer) -> glib.boolean
EntryCompletion_autoptr :: ^EntryCompletion
EntryCompletion_listautoptr :: ^glib.List
EntryCompletion_slistautoptr :: ^glib.SList
EntryCompletion_queueautoptr :: ^glib.Queue
_GtkImage :: rawptr
Image :: _GtkImage
ImageType :: enum u32 {IMAGE_EMPTY = 0, IMAGE_ICON_NAME = 1, IMAGE_GICON = 2, IMAGE_PAINTABLE = 3, }
Image_autoptr :: ^Image
Image_listautoptr :: ^glib.List
Image_slistautoptr :: ^glib.SList
Image_queueautoptr :: ^glib.Queue
EntryIconPosition :: enum u32 {ENTRY_ICON_PRIMARY = 0, ENTRY_ICON_SECONDARY = 1, }
_GtkEntry :: struct {
    parent_instance: Widget,
}
Entry :: _GtkEntry
activate_func_ptr_anon_247 :: #type proc "c" (entry: ^Entry)
_GtkEntryClass :: struct {
    parent_class: WidgetClass,
    activate: activate_func_ptr_anon_247,
    padding: [8]glib.pointer,
}
EntryClass :: _GtkEntryClass
Entry_autoptr :: ^Entry
Entry_listautoptr :: ^glib.List
Entry_slistautoptr :: ^glib.SList
Entry_queueautoptr :: ^glib.Queue
TreeViewDropPosition :: enum u32 {TREE_VIEW_DROP_BEFORE = 0, TREE_VIEW_DROP_AFTER = 1, TREE_VIEW_DROP_INTO_OR_BEFORE = 2, TREE_VIEW_DROP_INTO_OR_AFTER = 3, }
_GtkTreeView :: struct {
    parent_instance: Widget,
}
TreeView :: _GtkTreeView
row_activated_func_ptr_anon_248 :: #type proc "c" (tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn)
test_expand_row_func_ptr_anon_249 :: #type proc "c" (tree_view: ^TreeView, iter: ^TreeIter, path: ^TreePath) -> glib.boolean
test_collapse_row_func_ptr_anon_250 :: #type proc "c" (tree_view: ^TreeView, iter: ^TreeIter, path: ^TreePath) -> glib.boolean
row_expanded_func_ptr_anon_251 :: #type proc "c" (tree_view: ^TreeView, iter: ^TreeIter, path: ^TreePath)
row_collapsed_func_ptr_anon_252 :: #type proc "c" (tree_view: ^TreeView, iter: ^TreeIter, path: ^TreePath)
columns_changed_func_ptr_anon_253 :: #type proc "c" (tree_view: ^TreeView)
cursor_changed_func_ptr_anon_254 :: #type proc "c" (tree_view: ^TreeView)
move_cursor_func_ptr_anon_255 :: #type proc "c" (tree_view: ^TreeView, step: MovementStep, count: i32, extend: glib.boolean, modify: glib.boolean) -> glib.boolean
select_all_func_ptr_anon_256 :: #type proc "c" (tree_view: ^TreeView) -> glib.boolean
unselect_all_func_ptr_anon_257 :: #type proc "c" (tree_view: ^TreeView) -> glib.boolean
select_cursor_row_func_ptr_anon_258 :: #type proc "c" (tree_view: ^TreeView, start_editing: glib.boolean) -> glib.boolean
toggle_cursor_row_func_ptr_anon_259 :: #type proc "c" (tree_view: ^TreeView) -> glib.boolean
expand_collapse_cursor_row_func_ptr_anon_260 :: #type proc "c" (tree_view: ^TreeView, logical: glib.boolean, expand: glib.boolean, open_all: glib.boolean) -> glib.boolean
select_cursor_parent_func_ptr_anon_261 :: #type proc "c" (tree_view: ^TreeView) -> glib.boolean
start_interactive_search_func_ptr_anon_262 :: #type proc "c" (tree_view: ^TreeView) -> glib.boolean
_GtkTreeViewClass :: struct {
    parent_class: WidgetClass,
    row_activated: row_activated_func_ptr_anon_248,
    test_expand_row: test_expand_row_func_ptr_anon_249,
    test_collapse_row: test_collapse_row_func_ptr_anon_250,
    row_expanded: row_expanded_func_ptr_anon_251,
    row_collapsed: row_collapsed_func_ptr_anon_252,
    columns_changed: columns_changed_func_ptr_anon_253,
    cursor_changed: cursor_changed_func_ptr_anon_254,
    move_cursor: move_cursor_func_ptr_anon_255,
    select_all: select_all_func_ptr_anon_256,
    unselect_all: unselect_all_func_ptr_anon_257,
    select_cursor_row: select_cursor_row_func_ptr_anon_258,
    toggle_cursor_row: toggle_cursor_row_func_ptr_anon_259,
    expand_collapse_cursor_row: expand_collapse_cursor_row_func_ptr_anon_260,
    select_cursor_parent: select_cursor_parent_func_ptr_anon_261,
    start_interactive_search: start_interactive_search_func_ptr_anon_262,
    _reserved: [16]glib.pointer,
}
TreeViewClass :: _GtkTreeViewClass
_GtkTreeSelection :: rawptr
TreeSelection :: _GtkTreeSelection
TreeViewColumnDropFunc :: #type proc "c" (tree_view: ^TreeView, column: ^TreeViewColumn, prev_column: ^TreeViewColumn, next_column: ^TreeViewColumn, data: glib.pointer) -> glib.boolean
TreeViewMappingFunc :: #type proc "c" (tree_view: ^TreeView, path: ^TreePath, user_data: glib.pointer)
TreeViewSearchEqualFunc :: #type proc "c" (model: ^TreeModel, column: i32, key: cstring, iter: ^TreeIter, search_data: glib.pointer) -> glib.boolean
TreeViewRowSeparatorFunc :: #type proc "c" (model: ^TreeModel, iter: ^TreeIter, data: glib.pointer) -> glib.boolean
TreeView_autoptr :: ^TreeView
TreeView_listautoptr :: ^glib.List
TreeView_slistautoptr :: ^glib.SList
TreeView_queueautoptr :: ^glib.Queue
_GtkComboBox :: struct {
    parent_instance: Widget,
}
ComboBox :: _GtkComboBox
changed_func_ptr_anon_263 :: #type proc "c" (combo_box: ^ComboBox)
format_entry_text_func_ptr_anon_264 :: #type proc "c" (combo_box: ^ComboBox, path: cstring) -> cstring
activate_func_ptr_anon_265 :: #type proc "c" (combo_box: ^ComboBox)
_GtkComboBoxClass :: struct {
    parent_class: WidgetClass,
    changed: changed_func_ptr_anon_263,
    format_entry_text: format_entry_text_func_ptr_anon_264,
    activate: activate_func_ptr_anon_265,
    padding: [7]glib.pointer,
}
ComboBoxClass :: _GtkComboBoxClass
ComboBox_autoptr :: ^ComboBox
ComboBox_listautoptr :: ^glib.List
ComboBox_slistautoptr :: ^glib.SList
ComboBox_queueautoptr :: ^glib.Queue
_GtkComboBoxText :: rawptr
ComboBoxText :: _GtkComboBoxText
ComboBoxText_autoptr :: ^ComboBoxText
ComboBoxText_listautoptr :: ^glib.List
ComboBoxText_slistautoptr :: ^glib.SList
ComboBoxText_queueautoptr :: ^glib.Queue
_GtkConstraintTarget :: rawptr
ConstraintTarget :: _GtkConstraintTarget
_GtkConstraintTargetInterface :: rawptr
ConstraintTargetInterface :: _GtkConstraintTargetInterface
ConstraintTarget_autoptr :: ^ConstraintTarget
ConstraintTarget_listautoptr :: ^glib.List
ConstraintTarget_slistautoptr :: ^glib.SList
ConstraintTarget_queueautoptr :: ^glib.Queue
_GtkConstraint :: rawptr
Constraint :: _GtkConstraint
ConstraintClass :: struct {
    parent_class: gobj.ObjectClass,
}
Constraint_autoptr :: ^Constraint
Constraint_listautoptr :: ^glib.List
Constraint_slistautoptr :: ^glib.SList
Constraint_queueautoptr :: ^glib.Queue
ConstraintClass_autoptr :: ^ConstraintClass
ConstraintClass_listautoptr :: ^glib.List
ConstraintClass_slistautoptr :: ^glib.SList
ConstraintClass_queueautoptr :: ^glib.Queue
_GtkConstraintGuide :: rawptr
ConstraintGuide :: _GtkConstraintGuide
ConstraintGuideClass :: struct {
    parent_class: gobj.ObjectClass,
}
ConstraintGuide_autoptr :: ^ConstraintGuide
ConstraintGuide_listautoptr :: ^glib.List
ConstraintGuide_slistautoptr :: ^glib.SList
ConstraintGuide_queueautoptr :: ^glib.Queue
ConstraintGuideClass_autoptr :: ^ConstraintGuideClass
ConstraintGuideClass_listautoptr :: ^glib.List
ConstraintGuideClass_slistautoptr :: ^glib.SList
ConstraintGuideClass_queueautoptr :: ^glib.Queue
_GtkConstraintLayoutChild :: rawptr
ConstraintLayoutChild :: _GtkConstraintLayoutChild
ConstraintLayoutChildClass :: struct {
    parent_class: LayoutChildClass,
}
ConstraintLayoutChild_autoptr :: ^ConstraintLayoutChild
ConstraintLayoutChild_listautoptr :: ^glib.List
ConstraintLayoutChild_slistautoptr :: ^glib.SList
ConstraintLayoutChild_queueautoptr :: ^glib.Queue
ConstraintLayoutChildClass_autoptr :: ^ConstraintLayoutChildClass
ConstraintLayoutChildClass_listautoptr :: ^glib.List
ConstraintLayoutChildClass_slistautoptr :: ^glib.SList
ConstraintLayoutChildClass_queueautoptr :: ^glib.Queue
_GtkConstraintLayout :: rawptr
ConstraintLayout :: _GtkConstraintLayout
ConstraintLayoutClass :: struct {
    parent_class: LayoutManagerClass,
}
ConstraintLayout_autoptr :: ^ConstraintLayout
ConstraintLayout_listautoptr :: ^glib.List
ConstraintLayout_slistautoptr :: ^glib.SList
ConstraintLayout_queueautoptr :: ^glib.Queue
ConstraintLayoutClass_autoptr :: ^ConstraintLayoutClass
ConstraintLayoutClass_listautoptr :: ^glib.List
ConstraintLayoutClass_slistautoptr :: ^glib.SList
ConstraintLayoutClass_queueautoptr :: ^glib.Queue
_GtkCssProvider :: struct {
    parent_instance: gobj.Object,
}
CssProvider :: _GtkCssProvider
_GtkCssProviderClass :: rawptr
CssProviderClass :: _GtkCssProviderClass
_GtkCssProviderPrivate :: rawptr
CssProviderPrivate :: _GtkCssProviderPrivate
CssProvider_autoptr :: ^CssProvider
CssProvider_listautoptr :: ^glib.List
CssProvider_slistautoptr :: ^glib.SList
CssProvider_queueautoptr :: ^glib.Queue
CustomRequestModeFunc :: #type proc "c" (widget: ^Widget) -> SizeRequestMode
CustomMeasureFunc :: #type proc "c" (widget: ^Widget, orientation: Orientation, for_size: i32, minimum: ^i32, natural: ^i32, minimum_baseline: ^i32, natural_baseline: ^i32)
CustomAllocateFunc :: #type proc "c" (widget: ^Widget, width: i32, height: i32, baseline: i32)
_GtkCustomLayout :: rawptr
CustomLayout :: _GtkCustomLayout
CustomLayoutClass :: struct {
    parent_class: LayoutManagerClass,
}
CustomLayout_autoptr :: ^CustomLayout
CustomLayout_listautoptr :: ^glib.List
CustomLayout_slistautoptr :: ^glib.SList
CustomLayout_queueautoptr :: ^glib.Queue
CustomLayoutClass_autoptr :: ^CustomLayoutClass
CustomLayoutClass_listautoptr :: ^glib.List
CustomLayoutClass_slistautoptr :: ^glib.SList
CustomLayoutClass_queueautoptr :: ^glib.Queue
_GtkCustomSorter :: rawptr
CustomSorter :: _GtkCustomSorter
CustomSorterClass :: struct {
    parent_class: SorterClass,
}
CustomSorter_autoptr :: ^CustomSorter
CustomSorter_listautoptr :: ^glib.List
CustomSorter_slistautoptr :: ^glib.SList
CustomSorter_queueautoptr :: ^glib.Queue
CustomSorterClass_autoptr :: ^CustomSorterClass
CustomSorterClass_listautoptr :: ^glib.List
CustomSorterClass_slistautoptr :: ^glib.SList
CustomSorterClass_queueautoptr :: ^glib.Queue
DebugFlags :: enum u32 {DEBUG_TEXT = 1, DEBUG_TREE = 2, DEBUG_KEYBINDINGS = 4, DEBUG_MODULES = 8, DEBUG_GEOMETRY = 16, DEBUG_ICONTHEME = 32, DEBUG_PRINTING = 64, DEBUG_BUILDER = 128, DEBUG_SIZE_REQUEST = 256, DEBUG_NO_CSS_CACHE = 512, DEBUG_INTERACTIVE = 1024, DEBUG_ACTIONS = 4096, DEBUG_LAYOUT = 8192, DEBUG_SNAPSHOT = 16384, DEBUG_CONSTRAINTS = 32768, DEBUG_BUILDER_OBJECTS = 65536, DEBUG_A11Y = 131072, DEBUG_ICONFALLBACK = 262144, DEBUG_INVERT_TEXT_DIR = 524288, }
DialogError :: enum u32 {DIALOG_ERROR_FAILED = 0, DIALOG_ERROR_CANCELLED = 1, DIALOG_ERROR_DISMISSED = 2, }
_GtkDirectoryList :: rawptr
DirectoryList :: _GtkDirectoryList
DirectoryListClass :: struct {
    parent_class: gobj.ObjectClass,
}
DirectoryList_autoptr :: ^DirectoryList
DirectoryList_listautoptr :: ^glib.List
DirectoryList_slistautoptr :: ^glib.SList
DirectoryList_queueautoptr :: ^glib.Queue
DirectoryListClass_autoptr :: ^DirectoryListClass
DirectoryListClass_listautoptr :: ^glib.List
DirectoryListClass_slistautoptr :: ^glib.SList
DirectoryListClass_queueautoptr :: ^glib.Queue
_GtkDragIcon :: rawptr
DragIcon :: _GtkDragIcon
DragIconClass :: struct {
    parent_class: WidgetClass,
}
DragIcon_autoptr :: ^DragIcon
DragIcon_listautoptr :: ^glib.List
DragIcon_slistautoptr :: ^glib.SList
DragIcon_queueautoptr :: ^glib.Queue
DragIconClass_autoptr :: ^DragIconClass
DragIconClass_listautoptr :: ^glib.List
DragIconClass_slistautoptr :: ^glib.SList
DragIconClass_queueautoptr :: ^glib.Queue
_GtkDragSource :: rawptr
DragSource :: _GtkDragSource
_GtkDragSourceClass :: rawptr
DragSourceClass :: _GtkDragSourceClass
_GtkDrawingArea :: struct {
    widget: Widget,
}
DrawingArea :: _GtkDrawingArea
resize_func_ptr_anon_266 :: #type proc "c" (area: ^DrawingArea, width: i32, height: i32)
_GtkDrawingAreaClass :: struct {
    parent_class: WidgetClass,
    resize: resize_func_ptr_anon_266,
    padding: [8]glib.pointer,
}
DrawingAreaClass :: _GtkDrawingAreaClass
DrawingAreaDrawFunc :: #type proc "c" (drawing_area: ^DrawingArea, cr: ^cairo.context_t, width: i32, height: i32, user_data: glib.pointer)
DrawingArea_autoptr :: ^DrawingArea
DrawingArea_listautoptr :: ^glib.List
DrawingArea_slistautoptr :: ^glib.SList
DrawingArea_queueautoptr :: ^glib.Queue
_GtkEventControllerClass :: rawptr
EventControllerClass :: _GtkEventControllerClass
EventController_autoptr :: ^EventController
EventController_listautoptr :: ^glib.List
EventController_slistautoptr :: ^glib.SList
EventController_queueautoptr :: ^glib.Queue
_GtkDropControllerMotion :: rawptr
DropControllerMotion :: _GtkDropControllerMotion
_GtkDropControllerMotionClass :: rawptr
DropControllerMotionClass :: _GtkDropControllerMotionClass
_GtkDropTarget :: rawptr
DropTarget :: _GtkDropTarget
_GtkDropTargetClass :: rawptr
DropTargetClass :: _GtkDropTargetClass
_GtkDropTargetAsync :: rawptr
DropTargetAsync :: _GtkDropTargetAsync
_GtkDropTargetAsyncClass :: rawptr
DropTargetAsyncClass :: _GtkDropTargetAsyncClass
StringFilterMatchMode :: enum u32 {STRING_FILTER_MATCH_MODE_EXACT = 0, STRING_FILTER_MATCH_MODE_SUBSTRING = 1, STRING_FILTER_MATCH_MODE_PREFIX = 2, }
_GtkStringFilter :: rawptr
StringFilter :: _GtkStringFilter
StringFilterClass :: struct {
    parent_class: FilterClass,
}
StringFilter_autoptr :: ^StringFilter
StringFilter_listautoptr :: ^glib.List
StringFilter_slistautoptr :: ^glib.SList
StringFilter_queueautoptr :: ^glib.Queue
StringFilterClass_autoptr :: ^StringFilterClass
StringFilterClass_listautoptr :: ^glib.List
StringFilterClass_slistautoptr :: ^glib.SList
StringFilterClass_queueautoptr :: ^glib.Queue
_GtkDropDown :: rawptr
DropDown :: _GtkDropDown
DropDownClass :: struct {
    parent_class: WidgetClass,
}
DropDown_autoptr :: ^DropDown
DropDown_listautoptr :: ^glib.List
DropDown_slistautoptr :: ^glib.SList
DropDown_queueautoptr :: ^glib.Queue
DropDownClass_autoptr :: ^DropDownClass
DropDownClass_listautoptr :: ^glib.List
DropDownClass_slistautoptr :: ^glib.SList
DropDownClass_queueautoptr :: ^glib.Queue
_GtkEditableLabel :: rawptr
EditableLabel :: _GtkEditableLabel
EditableLabelClass :: struct {
    parent_class: WidgetClass,
}
EditableLabel_autoptr :: ^EditableLabel
EditableLabel_listautoptr :: ^glib.List
EditableLabel_slistautoptr :: ^glib.SList
EditableLabel_queueautoptr :: ^glib.Queue
EditableLabelClass_autoptr :: ^EditableLabelClass
EditableLabelClass_listautoptr :: ^glib.List
EditableLabelClass_slistautoptr :: ^glib.SList
EditableLabelClass_queueautoptr :: ^glib.Queue
_GtkEmojiChooser :: rawptr
EmojiChooser :: _GtkEmojiChooser
_GtkEmojiChooserClass :: rawptr
EmojiChooserClass :: _GtkEmojiChooserClass
_GtkEventControllerFocus :: rawptr
EventControllerFocus :: _GtkEventControllerFocus
_GtkEventControllerFocusClass :: rawptr
EventControllerFocusClass :: _GtkEventControllerFocusClass
_GtkEventControllerKey :: rawptr
EventControllerKey :: _GtkEventControllerKey
_GtkEventControllerKeyClass :: rawptr
EventControllerKeyClass :: _GtkEventControllerKeyClass
_GtkEventControllerLegacy :: rawptr
EventControllerLegacy :: _GtkEventControllerLegacy
_GtkEventControllerLegacyClass :: rawptr
EventControllerLegacyClass :: _GtkEventControllerLegacyClass
_GtkEventControllerMotion :: rawptr
EventControllerMotion :: _GtkEventControllerMotion
_GtkEventControllerMotionClass :: rawptr
EventControllerMotionClass :: _GtkEventControllerMotionClass
_GtkEventControllerScroll :: rawptr
EventControllerScroll :: _GtkEventControllerScroll
_GtkEventControllerScrollClass :: rawptr
EventControllerScrollClass :: _GtkEventControllerScrollClass
EventControllerScrollFlags :: enum u32 {EVENT_CONTROLLER_SCROLL_NONE = 0, EVENT_CONTROLLER_SCROLL_VERTICAL = 1, EVENT_CONTROLLER_SCROLL_HORIZONTAL = 2, EVENT_CONTROLLER_SCROLL_DISCRETE = 4, EVENT_CONTROLLER_SCROLL_KINETIC = 8, EVENT_CONTROLLER_SCROLL_BOTH_AXES = 3, }
_GtkExpander :: rawptr
Expander :: _GtkExpander
Expander_autoptr :: ^Expander
Expander_listautoptr :: ^glib.List
Expander_slistautoptr :: ^glib.SList
Expander_queueautoptr :: ^glib.Queue
_GtkFixed :: struct {
    parent_instance: Widget,
}
Fixed :: _GtkFixed
_GtkFixedClass :: struct {
    parent_class: WidgetClass,
    padding: [8]glib.pointer,
}
FixedClass :: _GtkFixedClass
Fixed_autoptr :: ^Fixed
Fixed_listautoptr :: ^glib.List
Fixed_slistautoptr :: ^glib.SList
Fixed_queueautoptr :: ^glib.Queue
_GtkFixedLayout :: rawptr
FixedLayout :: _GtkFixedLayout
FixedLayoutClass :: struct {
    parent_class: LayoutManagerClass,
}
FixedLayout_autoptr :: ^FixedLayout
FixedLayout_listautoptr :: ^glib.List
FixedLayout_slistautoptr :: ^glib.SList
FixedLayout_queueautoptr :: ^glib.Queue
FixedLayoutClass_autoptr :: ^FixedLayoutClass
FixedLayoutClass_listautoptr :: ^glib.List
FixedLayoutClass_slistautoptr :: ^glib.SList
FixedLayoutClass_queueautoptr :: ^glib.Queue
_GtkFixedLayoutChild :: rawptr
FixedLayoutChild :: _GtkFixedLayoutChild
FixedLayoutChildClass :: struct {
    parent_class: LayoutChildClass,
}
FixedLayoutChild_autoptr :: ^FixedLayoutChild
FixedLayoutChild_listautoptr :: ^glib.List
FixedLayoutChild_slistautoptr :: ^glib.SList
FixedLayoutChild_queueautoptr :: ^glib.Queue
FixedLayoutChildClass_autoptr :: ^FixedLayoutChildClass
FixedLayoutChildClass_listautoptr :: ^glib.List
FixedLayoutChildClass_slistautoptr :: ^glib.SList
FixedLayoutChildClass_queueautoptr :: ^glib.Queue
_GtkFileFilter :: rawptr
FileFilter :: _GtkFileFilter
FileFilter_autoptr :: ^FileFilter
FileFilter_listautoptr :: ^glib.List
FileFilter_slistautoptr :: ^glib.SList
FileFilter_queueautoptr :: ^glib.Queue
_GtkFileChooser :: rawptr
FileChooser :: _GtkFileChooser
FileChooserAction :: enum u32 {FILE_CHOOSER_ACTION_OPEN = 0, FILE_CHOOSER_ACTION_SAVE = 1, FILE_CHOOSER_ACTION_SELECT_FOLDER = 2, }
FileChooserError :: enum u32 {FILE_CHOOSER_ERROR_NONEXISTENT = 0, FILE_CHOOSER_ERROR_BAD_FILENAME = 1, FILE_CHOOSER_ERROR_ALREADY_EXISTS = 2, FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME = 3, }
_GtkFileChooserDialog :: rawptr
FileChooserDialog :: _GtkFileChooserDialog
FileChooserDialog_autoptr :: ^FileChooserDialog
FileChooserDialog_listautoptr :: ^glib.List
FileChooserDialog_slistautoptr :: ^glib.SList
FileChooserDialog_queueautoptr :: ^glib.Queue
_GtkNativeDialog :: struct {
    parent_instance: gobj.Object,
}
NativeDialog :: _GtkNativeDialog
response_func_ptr_anon_267 :: #type proc "c" (self: ^NativeDialog, response_id: i32)
show_func_ptr_anon_268 :: #type proc "c" (self: ^NativeDialog)
hide_func_ptr_anon_269 :: #type proc "c" (self: ^NativeDialog)
_gtk_reserved1_func_ptr_anon_270 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_271 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_272 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_273 :: #type proc "c" ()
_GtkNativeDialogClass :: struct {
    parent_class: gobj.ObjectClass,
    response: response_func_ptr_anon_267,
    show: show_func_ptr_anon_268,
    hide: hide_func_ptr_anon_269,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_270,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_271,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_272,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_273,
}
NativeDialogClass :: _GtkNativeDialogClass
NativeDialog_autoptr :: ^NativeDialog
NativeDialog_listautoptr :: ^glib.List
NativeDialog_slistautoptr :: ^glib.SList
NativeDialog_queueautoptr :: ^glib.Queue
NativeDialogClass_autoptr :: ^NativeDialogClass
NativeDialogClass_listautoptr :: ^glib.List
NativeDialogClass_slistautoptr :: ^glib.SList
NativeDialogClass_queueautoptr :: ^glib.Queue
_GtkFileChooserNative :: rawptr
FileChooserNative :: _GtkFileChooserNative
FileChooserNativeClass :: struct {
    parent_class: NativeDialogClass,
}
FileChooserNative_autoptr :: ^FileChooserNative
FileChooserNative_listautoptr :: ^glib.List
FileChooserNative_slistautoptr :: ^glib.SList
FileChooserNative_queueautoptr :: ^glib.Queue
FileChooserNativeClass_autoptr :: ^FileChooserNativeClass
FileChooserNativeClass_listautoptr :: ^glib.List
FileChooserNativeClass_slistautoptr :: ^glib.SList
FileChooserNativeClass_queueautoptr :: ^glib.Queue
_GtkFileChooserWidget :: rawptr
FileChooserWidget :: _GtkFileChooserWidget
FileChooserWidget_autoptr :: ^FileChooserWidget
FileChooserWidget_listautoptr :: ^glib.List
FileChooserWidget_slistautoptr :: ^glib.SList
FileChooserWidget_queueautoptr :: ^glib.Queue
_GtkFileDialog :: rawptr
FileDialog :: _GtkFileDialog
FileDialogClass :: struct {
    parent_class: gobj.ObjectClass,
}
FileDialog_autoptr :: ^FileDialog
FileDialog_listautoptr :: ^glib.List
FileDialog_slistautoptr :: ^glib.SList
FileDialog_queueautoptr :: ^glib.Queue
FileDialogClass_autoptr :: ^FileDialogClass
FileDialogClass_listautoptr :: ^glib.List
FileDialogClass_slistautoptr :: ^glib.SList
FileDialogClass_queueautoptr :: ^glib.Queue
_GtkFileLauncher :: rawptr
FileLauncher :: _GtkFileLauncher
FileLauncherClass :: struct {
    parent_class: gobj.ObjectClass,
}
FileLauncher_autoptr :: ^FileLauncher
FileLauncher_listautoptr :: ^glib.List
FileLauncher_slistautoptr :: ^glib.SList
FileLauncher_queueautoptr :: ^glib.Queue
FileLauncherClass_autoptr :: ^FileLauncherClass
FileLauncherClass_listautoptr :: ^glib.List
FileLauncherClass_slistautoptr :: ^glib.SList
FileLauncherClass_queueautoptr :: ^glib.Queue
_GtkFilterListModel :: rawptr
FilterListModel :: _GtkFilterListModel
FilterListModelClass :: struct {
    parent_class: gobj.ObjectClass,
}
FilterListModel_autoptr :: ^FilterListModel
FilterListModel_listautoptr :: ^glib.List
FilterListModel_slistautoptr :: ^glib.SList
FilterListModel_queueautoptr :: ^glib.Queue
FilterListModelClass_autoptr :: ^FilterListModelClass
FilterListModelClass_listautoptr :: ^glib.List
FilterListModelClass_slistautoptr :: ^glib.SList
FilterListModelClass_queueautoptr :: ^glib.Queue
CustomFilterFunc :: #type proc "c" (item: glib.pointer, user_data: glib.pointer) -> glib.boolean
_GtkCustomFilter :: rawptr
CustomFilter :: _GtkCustomFilter
CustomFilterClass :: struct {
    parent_class: FilterClass,
}
CustomFilter_autoptr :: ^CustomFilter
CustomFilter_listautoptr :: ^glib.List
CustomFilter_slistautoptr :: ^glib.SList
CustomFilter_queueautoptr :: ^glib.Queue
CustomFilterClass_autoptr :: ^CustomFilterClass
CustomFilterClass_listautoptr :: ^glib.List
CustomFilterClass_slistautoptr :: ^glib.SList
CustomFilterClass_queueautoptr :: ^glib.Queue
_GtkFlattenListModel :: rawptr
FlattenListModel :: _GtkFlattenListModel
FlattenListModelClass :: struct {
    parent_class: gobj.ObjectClass,
}
FlattenListModel_autoptr :: ^FlattenListModel
FlattenListModel_listautoptr :: ^glib.List
FlattenListModel_slistautoptr :: ^glib.SList
FlattenListModel_queueautoptr :: ^glib.Queue
FlattenListModelClass_autoptr :: ^FlattenListModelClass
FlattenListModelClass_listautoptr :: ^glib.List
FlattenListModelClass_slistautoptr :: ^glib.SList
FlattenListModelClass_queueautoptr :: ^glib.Queue
_GtkFlowBox :: rawptr
FlowBox :: _GtkFlowBox
_GtkFlowBoxChild :: struct {
    parent_instance: Widget,
}
FlowBoxChild :: _GtkFlowBoxChild
activate_func_ptr_anon_274 :: #type proc "c" (child: ^FlowBoxChild)
_GtkFlowBoxChildClass :: struct {
    parent_class: WidgetClass,
    activate: activate_func_ptr_anon_274,
    padding: [8]glib.pointer,
}
FlowBoxChildClass :: _GtkFlowBoxChildClass
FlowBoxCreateWidgetFunc :: #type proc "c" (item: glib.pointer, user_data: glib.pointer) -> ^Widget
FlowBoxForeachFunc :: #type proc "c" (box: ^FlowBox, child: ^FlowBoxChild, user_data: glib.pointer)
FlowBoxFilterFunc :: #type proc "c" (child: ^FlowBoxChild, user_data: glib.pointer) -> glib.boolean
FlowBoxSortFunc :: #type proc "c" (child1: ^FlowBoxChild, child2: ^FlowBoxChild, user_data: glib.pointer) -> i32
FlowBox_autoptr :: ^FlowBox
FlowBox_listautoptr :: ^glib.List
FlowBox_slistautoptr :: ^glib.SList
FlowBox_queueautoptr :: ^glib.Queue
FlowBoxChild_autoptr :: ^FlowBoxChild
FlowBoxChild_listautoptr :: ^glib.List
FlowBoxChild_slistautoptr :: ^glib.SList
FlowBoxChild_queueautoptr :: ^glib.Queue
_GtkFontButton :: rawptr
FontButton :: _GtkFontButton
FontButton_autoptr :: ^FontButton
FontButton_listautoptr :: ^glib.List
FontButton_slistautoptr :: ^glib.SList
FontButton_queueautoptr :: ^glib.Queue
FontFilterFunc :: #type proc "c" (family: ^pango.FontFamily, face: ^pango.FontFace, data: glib.pointer) -> glib.boolean
FontChooserLevel :: enum u32 {FONT_CHOOSER_LEVEL_FAMILY = 0, FONT_CHOOSER_LEVEL_STYLE = 1, FONT_CHOOSER_LEVEL_SIZE = 2, FONT_CHOOSER_LEVEL_VARIATIONS = 4, FONT_CHOOSER_LEVEL_FEATURES = 8, }
_GtkFontChooser :: rawptr
FontChooser :: _GtkFontChooser
et_font_family_func_ptr_anon_275 :: #type proc "c" (fontchooser: ^FontChooser) -> ^pango.FontFamily
et_font_face_func_ptr_anon_276 :: #type proc "c" (fontchooser: ^FontChooser) -> ^pango.FontFace
et_font_size_func_ptr_anon_277 :: #type proc "c" (fontchooser: ^FontChooser) -> i32
set_filter_func_func_ptr_anon_278 :: #type proc "c" (fontchooser: ^FontChooser, filter: FontFilterFunc, user_data: glib.pointer, destroy: glib.DestroyNotify)
font_activated_func_ptr_anon_279 :: #type proc "c" (chooser: ^FontChooser, fontname: cstring)
set_font_map_func_ptr_anon_280 :: #type proc "c" (fontchooser: ^FontChooser, fontmap: ^pango.FontMap)
et_font_map_func_ptr_anon_281 :: #type proc "c" (fontchooser: ^FontChooser) -> ^pango.FontMap
_GtkFontChooserIface :: struct {
    base_iface: gobj.TypeInterface,
    get_font_family: et_font_family_func_ptr_anon_275,
    get_font_face: et_font_face_func_ptr_anon_276,
    get_font_size: et_font_size_func_ptr_anon_277,
    set_filter_func: set_filter_func_func_ptr_anon_278,
    font_activated: font_activated_func_ptr_anon_279,
    set_font_map: set_font_map_func_ptr_anon_280,
    get_font_map: et_font_map_func_ptr_anon_281,
    padding: [10]glib.pointer,
}
FontChooserIface :: _GtkFontChooserIface
FontChooser_autoptr :: ^FontChooser
FontChooser_listautoptr :: ^glib.List
FontChooser_slistautoptr :: ^glib.SList
FontChooser_queueautoptr :: ^glib.Queue
_GtkFontChooserDialog :: rawptr
FontChooserDialog :: _GtkFontChooserDialog
FontChooserDialog_autoptr :: ^FontChooserDialog
FontChooserDialog_listautoptr :: ^glib.List
FontChooserDialog_slistautoptr :: ^glib.SList
FontChooserDialog_queueautoptr :: ^glib.Queue
_GtkFontChooserWidget :: rawptr
FontChooserWidget :: _GtkFontChooserWidget
FontChooserWidget_autoptr :: ^FontChooserWidget
FontChooserWidget_listautoptr :: ^glib.List
FontChooserWidget_slistautoptr :: ^glib.SList
FontChooserWidget_queueautoptr :: ^glib.Queue
_GtkFontDialog :: rawptr
FontDialog :: _GtkFontDialog
FontDialogClass :: struct {
    parent_class: gobj.ObjectClass,
}
FontDialog_autoptr :: ^FontDialog
FontDialog_listautoptr :: ^glib.List
FontDialog_slistautoptr :: ^glib.SList
FontDialog_queueautoptr :: ^glib.Queue
FontDialogClass_autoptr :: ^FontDialogClass
FontDialogClass_listautoptr :: ^glib.List
FontDialogClass_slistautoptr :: ^glib.SList
FontDialogClass_queueautoptr :: ^glib.Queue
_GtkFontDialogButton :: rawptr
FontDialogButton :: _GtkFontDialogButton
FontDialogButtonClass :: struct {
    parent_class: WidgetClass,
}
FontDialogButton_autoptr :: ^FontDialogButton
FontDialogButton_listautoptr :: ^glib.List
FontDialogButton_slistautoptr :: ^glib.SList
FontDialogButton_queueautoptr :: ^glib.Queue
FontDialogButtonClass_autoptr :: ^FontDialogButtonClass
FontDialogButtonClass_listautoptr :: ^glib.List
FontDialogButtonClass_slistautoptr :: ^glib.SList
FontDialogButtonClass_queueautoptr :: ^glib.Queue
FontLevel :: enum u32 {FONT_LEVEL_FAMILY = 0, FONT_LEVEL_FACE = 1, FONT_LEVEL_FONT = 2, FONT_LEVEL_FEATURES = 3, }
_GtkFrame :: struct {
    parent_instance: Widget,
}
Frame :: _GtkFrame
compute_child_allocation_func_ptr_anon_282 :: #type proc "c" (frame: ^Frame, allocation: ^Allocation)
_GtkFrameClass :: struct {
    parent_class: WidgetClass,
    compute_child_allocation: compute_child_allocation_func_ptr_anon_282,
    padding: [8]glib.pointer,
}
FrameClass :: _GtkFrameClass
Frame_autoptr :: ^Frame
Frame_listautoptr :: ^glib.List
Frame_slistautoptr :: ^glib.SList
Frame_queueautoptr :: ^glib.Queue
_GtkGestureClass :: rawptr
GestureClass :: _GtkGestureClass
Gesture_autoptr :: ^Gesture
Gesture_listautoptr :: ^glib.List
Gesture_slistautoptr :: ^glib.SList
Gesture_queueautoptr :: ^glib.Queue
_GtkGestureSingle :: rawptr
GestureSingle :: _GtkGestureSingle
_GtkGestureSingleClass :: rawptr
GestureSingleClass :: _GtkGestureSingleClass
GestureSingle_autoptr :: ^GestureSingle
GestureSingle_listautoptr :: ^glib.List
GestureSingle_slistautoptr :: ^glib.SList
GestureSingle_queueautoptr :: ^glib.Queue
_GtkGestureClick :: rawptr
GestureClick :: _GtkGestureClick
_GtkGestureClickClass :: rawptr
GestureClickClass :: _GtkGestureClickClass
GestureClick_autoptr :: ^GestureClick
GestureClick_listautoptr :: ^glib.List
GestureClick_slistautoptr :: ^glib.SList
GestureClick_queueautoptr :: ^glib.Queue
_GtkGestureDrag :: rawptr
GestureDrag :: _GtkGestureDrag
_GtkGestureDragClass :: rawptr
GestureDragClass :: _GtkGestureDragClass
GestureDrag_autoptr :: ^GestureDrag
GestureDrag_listautoptr :: ^glib.List
GestureDrag_slistautoptr :: ^glib.SList
GestureDrag_queueautoptr :: ^glib.Queue
_GtkGestureLongPress :: rawptr
GestureLongPress :: _GtkGestureLongPress
_GtkGestureLongPressClass :: rawptr
GestureLongPressClass :: _GtkGestureLongPressClass
GestureLongPress_autoptr :: ^GestureLongPress
GestureLongPress_listautoptr :: ^glib.List
GestureLongPress_slistautoptr :: ^glib.SList
GestureLongPress_queueautoptr :: ^glib.Queue
_GtkGesturePan :: rawptr
GesturePan :: _GtkGesturePan
_GtkGesturePanClass :: rawptr
GesturePanClass :: _GtkGesturePanClass
GesturePan_autoptr :: ^GesturePan
GesturePan_listautoptr :: ^glib.List
GesturePan_slistautoptr :: ^glib.SList
GesturePan_queueautoptr :: ^glib.Queue
_GtkGestureRotate :: rawptr
GestureRotate :: _GtkGestureRotate
_GtkGestureRotateClass :: rawptr
GestureRotateClass :: _GtkGestureRotateClass
GestureRotate_autoptr :: ^GestureRotate
GestureRotate_listautoptr :: ^glib.List
GestureRotate_slistautoptr :: ^glib.SList
GestureRotate_queueautoptr :: ^glib.Queue
_GtkGestureStylus :: rawptr
GestureStylus :: _GtkGestureStylus
_GtkGestureStylusClass :: rawptr
GestureStylusClass :: _GtkGestureStylusClass
_GtkGestureSwipe :: rawptr
GestureSwipe :: _GtkGestureSwipe
_GtkGestureSwipeClass :: rawptr
GestureSwipeClass :: _GtkGestureSwipeClass
GestureSwipe_autoptr :: ^GestureSwipe
GestureSwipe_listautoptr :: ^glib.List
GestureSwipe_slistautoptr :: ^glib.SList
GestureSwipe_queueautoptr :: ^glib.Queue
_GtkGestureZoom :: rawptr
GestureZoom :: _GtkGestureZoom
_GtkGestureZoomClass :: rawptr
GestureZoomClass :: _GtkGestureZoomClass
GestureZoom_autoptr :: ^GestureZoom
GestureZoom_listautoptr :: ^glib.List
GestureZoom_slistautoptr :: ^glib.SList
GestureZoom_queueautoptr :: ^glib.Queue
_GtkGLArea :: struct {
    parent_instance: Widget,
}
GLArea :: _GtkGLArea
render_func_ptr_anon_283 :: #type proc "c" (area: ^GLArea, context_p: ^GLContext) -> glib.boolean
resize_func_ptr_anon_284 :: #type proc "c" (area: ^GLArea, width: i32, height: i32)
create_context_func_ptr_anon_285 :: #type proc "c" (area: ^GLArea) -> ^GLContext
_GtkGLAreaClass :: struct {
    parent_class: WidgetClass,
    render: render_func_ptr_anon_283,
    resize: resize_func_ptr_anon_284,
    create_context: create_context_func_ptr_anon_285,
    _padding: [8]glib.pointer,
}
GLAreaClass :: _GtkGLAreaClass
GLArea_autoptr :: ^GLArea
GLArea_listautoptr :: ^glib.List
GLArea_slistautoptr :: ^glib.SList
GLArea_queueautoptr :: ^glib.Queue
_GtkGrid :: struct {
    parent_instance: Widget,
}
Grid :: _GtkGrid
_GtkGridClass :: struct {
    parent_class: WidgetClass,
    padding: [8]glib.pointer,
}
GridClass :: _GtkGridClass
Grid_autoptr :: ^Grid
Grid_listautoptr :: ^glib.List
Grid_slistautoptr :: ^glib.SList
Grid_queueautoptr :: ^glib.Queue
_GtkGridLayout :: rawptr
GridLayout :: _GtkGridLayout
GridLayoutClass :: struct {
    parent_class: LayoutManagerClass,
}
GridLayout_autoptr :: ^GridLayout
GridLayout_listautoptr :: ^glib.List
GridLayout_slistautoptr :: ^glib.SList
GridLayout_queueautoptr :: ^glib.Queue
GridLayoutClass_autoptr :: ^GridLayoutClass
GridLayoutClass_listautoptr :: ^glib.List
GridLayoutClass_slistautoptr :: ^glib.SList
GridLayoutClass_queueautoptr :: ^glib.Queue
_GtkGridLayoutChild :: rawptr
GridLayoutChild :: _GtkGridLayoutChild
GridLayoutChildClass :: struct {
    parent_class: LayoutChildClass,
}
GridLayoutChild_autoptr :: ^GridLayoutChild
GridLayoutChild_listautoptr :: ^glib.List
GridLayoutChild_slistautoptr :: ^glib.SList
GridLayoutChild_queueautoptr :: ^glib.Queue
GridLayoutChildClass_autoptr :: ^GridLayoutChildClass
GridLayoutChildClass_listautoptr :: ^glib.List
GridLayoutChildClass_slistautoptr :: ^glib.SList
GridLayoutChildClass_queueautoptr :: ^glib.Queue
_GtkListBase :: rawptr
ListBase :: _GtkListBase
_GtkListBaseClass :: rawptr
ListBaseClass :: _GtkListBaseClass
_GtkGridView :: rawptr
GridView :: _GtkGridView
_GtkGridViewClass :: rawptr
GridViewClass :: _GtkGridViewClass
GridView_autoptr :: ^GridView
GridView_listautoptr :: ^glib.List
GridView_slistautoptr :: ^glib.SList
GridView_queueautoptr :: ^glib.Queue
_GtkHeaderBar :: rawptr
HeaderBar :: _GtkHeaderBar
HeaderBar_autoptr :: ^HeaderBar
HeaderBar_listautoptr :: ^glib.List
HeaderBar_slistautoptr :: ^glib.SList
HeaderBar_queueautoptr :: ^glib.Queue
_GtkIconPaintable :: rawptr
IconPaintable :: _GtkIconPaintable
_GtkIconTheme :: rawptr
IconTheme :: _GtkIconTheme
IconLookupFlags :: enum u32 {ICON_LOOKUP_FORCE_REGULAR = 1, ICON_LOOKUP_FORCE_SYMBOLIC = 2, ICON_LOOKUP_PRELOAD = 4, }
IconThemeError :: enum u32 {ICON_THEME_NOT_FOUND = 0, ICON_THEME_FAILED = 1, }
IconPaintable_autoptr :: ^IconPaintable
IconPaintable_listautoptr :: ^glib.List
IconPaintable_slistautoptr :: ^glib.SList
IconPaintable_queueautoptr :: ^glib.Queue
IconTheme_autoptr :: ^IconTheme
IconTheme_listautoptr :: ^glib.List
IconTheme_slistautoptr :: ^glib.SList
IconTheme_queueautoptr :: ^glib.Queue
Tooltip_autoptr :: ^Tooltip
Tooltip_listautoptr :: ^glib.List
Tooltip_slistautoptr :: ^glib.SList
Tooltip_queueautoptr :: ^glib.Queue
_GtkIconView :: rawptr
IconView :: _GtkIconView
IconViewForeachFunc :: #type proc "c" (icon_view: ^IconView, path: ^TreePath, data: glib.pointer)
IconViewDropPosition :: enum u32 {ICON_VIEW_NO_DROP = 0, ICON_VIEW_DROP_INTO = 1, ICON_VIEW_DROP_LEFT = 2, ICON_VIEW_DROP_RIGHT = 3, ICON_VIEW_DROP_ABOVE = 4, ICON_VIEW_DROP_BELOW = 5, }
IconView_autoptr :: ^IconView
IconView_listautoptr :: ^glib.List
IconView_slistautoptr :: ^glib.SList
IconView_queueautoptr :: ^glib.Queue
_GtkIMContextSimplePrivate :: rawptr
IMContextSimplePrivate :: _GtkIMContextSimplePrivate
_GtkIMContextSimple :: struct {
    object: IMContext,
    priv: ^IMContextSimplePrivate,
}
IMContextSimple :: _GtkIMContextSimple
_GtkIMContextSimpleClass :: struct {
    parent_class: IMContextClass,
}
IMContextSimpleClass :: _GtkIMContextSimpleClass
IMContextSimple_autoptr :: ^IMContextSimple
IMContextSimple_listautoptr :: ^glib.List
IMContextSimple_slistautoptr :: ^glib.SList
IMContextSimple_queueautoptr :: ^glib.Queue
_GtkIMMulticontextPrivate :: rawptr
IMMulticontextPrivate :: _GtkIMMulticontextPrivate
_GtkIMMulticontext :: struct {
    object: IMContext,
    priv: ^IMMulticontextPrivate,
}
IMMulticontext :: _GtkIMMulticontext
_gtk_reserved1_func_ptr_anon_286 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_287 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_288 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_289 :: #type proc "c" ()
_GtkIMMulticontextClass :: struct {
    parent_class: IMContextClass,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_286,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_287,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_288,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_289,
}
IMMulticontextClass :: _GtkIMMulticontextClass
IMMulticontext_autoptr :: ^IMMulticontext
IMMulticontext_listautoptr :: ^glib.List
IMMulticontext_slistautoptr :: ^glib.SList
IMMulticontext_queueautoptr :: ^glib.Queue
_GtkInfoBar :: rawptr
InfoBar :: _GtkInfoBar
InfoBar_autoptr :: ^InfoBar
InfoBar_listautoptr :: ^glib.List
InfoBar_slistautoptr :: ^glib.SList
InfoBar_queueautoptr :: ^glib.Queue
InscriptionOverflow :: enum u32 {INSCRIPTION_OVERFLOW_CLIP = 0, INSCRIPTION_OVERFLOW_ELLIPSIZE_START = 1, INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE = 2, INSCRIPTION_OVERFLOW_ELLIPSIZE_END = 3, }
_GtkInscription :: rawptr
Inscription :: _GtkInscription
InscriptionClass :: struct {
    parent_class: WidgetClass,
}
Inscription_autoptr :: ^Inscription
Inscription_listautoptr :: ^glib.List
Inscription_slistautoptr :: ^glib.SList
Inscription_queueautoptr :: ^glib.Queue
InscriptionClass_autoptr :: ^InscriptionClass
InscriptionClass_listautoptr :: ^glib.List
InscriptionClass_slistautoptr :: ^glib.SList
InscriptionClass_queueautoptr :: ^glib.Queue
_GtkLabel :: rawptr
Label :: _GtkLabel
Label_autoptr :: ^Label
Label_listautoptr :: ^glib.List
Label_slistautoptr :: ^glib.SList
Label_queueautoptr :: ^glib.Queue
_GtkLevelBar :: rawptr
LevelBar :: _GtkLevelBar
LevelBar_autoptr :: ^LevelBar
LevelBar_listautoptr :: ^glib.List
LevelBar_slistautoptr :: ^glib.SList
LevelBar_queueautoptr :: ^glib.Queue
_GtkLinkButton :: rawptr
LinkButton :: _GtkLinkButton
LinkButton_autoptr :: ^LinkButton
LinkButton_listautoptr :: ^glib.List
LinkButton_slistautoptr :: ^glib.SList
LinkButton_queueautoptr :: ^glib.Queue
_GtkListBox :: rawptr
ListBox :: _GtkListBox
_GtkListBoxRow :: struct {
    parent_instance: Widget,
}
ListBoxRow :: _GtkListBoxRow
activate_func_ptr_anon_290 :: #type proc "c" (row: ^ListBoxRow)
_GtkListBoxRowClass :: struct {
    parent_class: WidgetClass,
    activate: activate_func_ptr_anon_290,
    padding: [8]glib.pointer,
}
ListBoxRowClass :: _GtkListBoxRowClass
ListBoxFilterFunc :: #type proc "c" (row: ^ListBoxRow, user_data: glib.pointer) -> glib.boolean
ListBoxSortFunc :: #type proc "c" (row1: ^ListBoxRow, row2: ^ListBoxRow, user_data: glib.pointer) -> i32
ListBoxUpdateHeaderFunc :: #type proc "c" (row: ^ListBoxRow, before: ^ListBoxRow, user_data: glib.pointer)
ListBoxCreateWidgetFunc :: #type proc "c" (item: glib.pointer, user_data: glib.pointer) -> ^Widget
ListBoxForeachFunc :: #type proc "c" (box: ^ListBox, row: ^ListBoxRow, user_data: glib.pointer)
ListBox_autoptr :: ^ListBox
ListBox_listautoptr :: ^glib.List
ListBox_slistautoptr :: ^glib.SList
ListBox_queueautoptr :: ^glib.Queue
ListBoxRow_autoptr :: ^ListBoxRow
ListBoxRow_listautoptr :: ^glib.List
ListBoxRow_slistautoptr :: ^glib.SList
ListBoxRow_queueautoptr :: ^glib.Queue
_GtkListHeader :: rawptr
ListHeader :: _GtkListHeader
_GtkListHeaderClass :: rawptr
ListHeaderClass :: _GtkListHeaderClass
ListHeader_autoptr :: ^ListHeader
ListHeader_listautoptr :: ^glib.List
ListHeader_slistautoptr :: ^glib.SList
ListHeader_queueautoptr :: ^glib.Queue
ListHeaderClass_autoptr :: ^ListHeaderClass
ListHeaderClass_listautoptr :: ^glib.List
ListHeaderClass_slistautoptr :: ^glib.SList
ListHeaderClass_queueautoptr :: ^glib.Queue
_GtkListView :: rawptr
ListView :: _GtkListView
_GtkListViewClass :: rawptr
ListViewClass :: _GtkListViewClass
ListView_autoptr :: ^ListView
ListView_listautoptr :: ^glib.List
ListView_slistautoptr :: ^glib.SList
ListView_queueautoptr :: ^glib.Queue
_GtkLockButton :: rawptr
LockButton :: _GtkLockButton
LockButton_autoptr :: ^LockButton
LockButton_listautoptr :: ^glib.List
LockButton_slistautoptr :: ^glib.SList
LockButton_queueautoptr :: ^glib.Queue
_GtkMapListModel :: rawptr
MapListModel :: _GtkMapListModel
MapListModelClass :: struct {
    parent_class: gobj.ObjectClass,
}
MapListModel_autoptr :: ^MapListModel
MapListModel_listautoptr :: ^glib.List
MapListModel_slistautoptr :: ^glib.SList
MapListModel_queueautoptr :: ^glib.Queue
MapListModelClass_autoptr :: ^MapListModelClass
MapListModelClass_listautoptr :: ^glib.List
MapListModelClass_slistautoptr :: ^glib.SList
MapListModelClass_queueautoptr :: ^glib.Queue
MapListModelMapFunc :: #type proc "c" (item: glib.pointer, user_data: glib.pointer) -> glib.pointer
_GtkMediaStream :: struct {
    parent_instance: gobj.Object,
}
MediaStream :: _GtkMediaStream
play_func_ptr_anon_291 :: #type proc "c" (self: ^MediaStream) -> glib.boolean
pause_func_ptr_anon_292 :: #type proc "c" (self: ^MediaStream)
seek_func_ptr_anon_293 :: #type proc "c" (self: ^MediaStream, timestamp: glib.int64)
update_audio_func_ptr_anon_294 :: #type proc "c" (self: ^MediaStream, muted: glib.boolean, volume: f64)
realize_func_ptr_anon_295 :: #type proc "c" (self: ^MediaStream, surface: ^Surface)
unrealize_func_ptr_anon_296 :: #type proc "c" (self: ^MediaStream, surface: ^Surface)
_gtk_reserved1_func_ptr_anon_297 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_298 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_299 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_300 :: #type proc "c" ()
_gtk_reserved5_func_ptr_anon_301 :: #type proc "c" ()
_gtk_reserved6_func_ptr_anon_302 :: #type proc "c" ()
_gtk_reserved7_func_ptr_anon_303 :: #type proc "c" ()
_gtk_reserved8_func_ptr_anon_304 :: #type proc "c" ()
_GtkMediaStreamClass :: struct {
    parent_class: gobj.ObjectClass,
    play: play_func_ptr_anon_291,
    pause: pause_func_ptr_anon_292,
    seek: seek_func_ptr_anon_293,
    update_audio: update_audio_func_ptr_anon_294,
    realize: realize_func_ptr_anon_295,
    unrealize: unrealize_func_ptr_anon_296,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_297,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_298,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_299,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_300,
    _gtk_reserved5: _gtk_reserved5_func_ptr_anon_301,
    _gtk_reserved6: _gtk_reserved6_func_ptr_anon_302,
    _gtk_reserved7: _gtk_reserved7_func_ptr_anon_303,
    _gtk_reserved8: _gtk_reserved8_func_ptr_anon_304,
}
MediaStreamClass :: _GtkMediaStreamClass
MediaStream_autoptr :: ^MediaStream
MediaStream_listautoptr :: ^glib.List
MediaStream_slistautoptr :: ^glib.SList
MediaStream_queueautoptr :: ^glib.Queue
MediaStreamClass_autoptr :: ^MediaStreamClass
MediaStreamClass_listautoptr :: ^glib.List
MediaStreamClass_slistautoptr :: ^glib.SList
MediaStreamClass_queueautoptr :: ^glib.Queue
_GtkMediaControls :: rawptr
MediaControls :: _GtkMediaControls
MediaControlsClass :: struct {
    parent_class: WidgetClass,
}
MediaControls_autoptr :: ^MediaControls
MediaControls_listautoptr :: ^glib.List
MediaControls_slistautoptr :: ^glib.SList
MediaControls_queueautoptr :: ^glib.Queue
MediaControlsClass_autoptr :: ^MediaControlsClass
MediaControlsClass_listautoptr :: ^glib.List
MediaControlsClass_slistautoptr :: ^glib.SList
MediaControlsClass_queueautoptr :: ^glib.Queue
_GtkMediaFile :: struct {
    parent_instance: MediaStream,
}
MediaFile :: _GtkMediaFile
open_func_ptr_anon_305 :: #type proc "c" (self: ^MediaFile)
close_func_ptr_anon_306 :: #type proc "c" (self: ^MediaFile)
_gtk_reserved1_func_ptr_anon_307 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_308 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_309 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_310 :: #type proc "c" ()
_GtkMediaFileClass :: struct {
    parent_class: MediaStreamClass,
    open: open_func_ptr_anon_305,
    close: close_func_ptr_anon_306,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_307,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_308,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_309,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_310,
}
MediaFileClass :: _GtkMediaFileClass
MediaFile_autoptr :: ^MediaFile
MediaFile_listautoptr :: ^glib.List
MediaFile_slistautoptr :: ^glib.SList
MediaFile_queueautoptr :: ^glib.Queue
MediaFileClass_autoptr :: ^MediaFileClass
MediaFileClass_listautoptr :: ^glib.List
MediaFileClass_slistautoptr :: ^glib.SList
MediaFileClass_queueautoptr :: ^glib.Queue
_GtkPopover :: struct {
    parent: Widget,
}
Popover :: _GtkPopover
closed_func_ptr_anon_311 :: #type proc "c" (popover: ^Popover)
activate_default_func_ptr_anon_312 :: #type proc "c" (popover: ^Popover)
_GtkPopoverClass :: struct {
    parent_class: WidgetClass,
    closed: closed_func_ptr_anon_311,
    activate_default: activate_default_func_ptr_anon_312,
    reserved: [8]glib.pointer,
}
PopoverClass :: _GtkPopoverClass
Popover_autoptr :: ^Popover
Popover_listautoptr :: ^glib.List
Popover_slistautoptr :: ^glib.SList
Popover_queueautoptr :: ^glib.Queue
_GtkMenuButton :: rawptr
MenuButton :: _GtkMenuButton
MenuButtonCreatePopupFunc :: #type proc "c" (menu_button: ^MenuButton, user_data: glib.pointer)
MenuButton_autoptr :: ^MenuButton
MenuButton_listautoptr :: ^glib.List
MenuButton_slistautoptr :: ^glib.SList
MenuButton_queueautoptr :: ^glib.Queue
_GtkMessageDialog :: struct {
    parent_instance: Dialog,
}
MessageDialog :: _GtkMessageDialog
_GtkMessageDialogClass :: rawptr
MessageDialogClass :: _GtkMessageDialogClass
ButtonsType :: enum u32 {BUTTONS_NONE = 0, BUTTONS_OK = 1, BUTTONS_CLOSE = 2, BUTTONS_CANCEL = 3, BUTTONS_YES_NO = 4, BUTTONS_OK_CANCEL = 5, }
MessageDialog_autoptr :: ^MessageDialog
MessageDialog_listautoptr :: ^glib.List
MessageDialog_slistautoptr :: ^glib.SList
MessageDialog_queueautoptr :: ^glib.Queue
_GtkMountOperationPrivate :: rawptr
MountOperationPrivate :: _GtkMountOperationPrivate
_GtkMountOperation :: struct {
    parent_instance: gio.MountOperation,
    priv: ^MountOperationPrivate,
}
MountOperation :: _GtkMountOperation
_gtk_reserved1_func_ptr_anon_313 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_314 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_315 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_316 :: #type proc "c" ()
_GtkMountOperationClass :: struct {
    parent_class: gio.MountOperationClass,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_313,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_314,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_315,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_316,
}
MountOperationClass :: _GtkMountOperationClass
MountOperation_autoptr :: ^MountOperation
MountOperation_listautoptr :: ^glib.List
MountOperation_slistautoptr :: ^glib.SList
MountOperation_queueautoptr :: ^glib.Queue
_GtkMultiFilter :: rawptr
MultiFilter :: _GtkMultiFilter
_GtkMultiFilterClass :: rawptr
MultiFilterClass :: _GtkMultiFilterClass
MultiFilter_autoptr :: ^MultiFilter
MultiFilter_listautoptr :: ^glib.List
MultiFilter_slistautoptr :: ^glib.SList
MultiFilter_queueautoptr :: ^glib.Queue
MultiFilterClass_autoptr :: ^MultiFilterClass
MultiFilterClass_listautoptr :: ^glib.List
MultiFilterClass_slistautoptr :: ^glib.SList
MultiFilterClass_queueautoptr :: ^glib.Queue
_GtkAnyFilter :: rawptr
AnyFilter :: _GtkAnyFilter
_GtkAnyFilterClass :: rawptr
AnyFilterClass :: _GtkAnyFilterClass
AnyFilter_autoptr :: ^AnyFilter
AnyFilter_listautoptr :: ^glib.List
AnyFilter_slistautoptr :: ^glib.SList
AnyFilter_queueautoptr :: ^glib.Queue
AnyFilterClass_autoptr :: ^AnyFilterClass
AnyFilterClass_listautoptr :: ^glib.List
AnyFilterClass_slistautoptr :: ^glib.SList
AnyFilterClass_queueautoptr :: ^glib.Queue
_GtkEveryFilter :: rawptr
EveryFilter :: _GtkEveryFilter
_GtkEveryFilterClass :: rawptr
EveryFilterClass :: _GtkEveryFilterClass
EveryFilter_autoptr :: ^EveryFilter
EveryFilter_listautoptr :: ^glib.List
EveryFilter_slistautoptr :: ^glib.SList
EveryFilter_queueautoptr :: ^glib.Queue
EveryFilterClass_autoptr :: ^EveryFilterClass
EveryFilterClass_listautoptr :: ^glib.List
EveryFilterClass_slistautoptr :: ^glib.SList
EveryFilterClass_queueautoptr :: ^glib.Queue
_GtkMultiSelection :: rawptr
MultiSelection :: _GtkMultiSelection
MultiSelectionClass :: struct {
    parent_class: gobj.ObjectClass,
}
MultiSelection_autoptr :: ^MultiSelection
MultiSelection_listautoptr :: ^glib.List
MultiSelection_slistautoptr :: ^glib.SList
MultiSelection_queueautoptr :: ^glib.Queue
MultiSelectionClass_autoptr :: ^MultiSelectionClass
MultiSelectionClass_listautoptr :: ^glib.List
MultiSelectionClass_slistautoptr :: ^glib.SList
MultiSelectionClass_queueautoptr :: ^glib.Queue
_GtkMultiSorter :: rawptr
MultiSorter :: _GtkMultiSorter
MultiSorterClass :: struct {
    parent_class: SorterClass,
}
MultiSorter_autoptr :: ^MultiSorter
MultiSorter_listautoptr :: ^glib.List
MultiSorter_slistautoptr :: ^glib.SList
MultiSorter_queueautoptr :: ^glib.Queue
MultiSorterClass_autoptr :: ^MultiSorterClass
MultiSorterClass_listautoptr :: ^glib.List
MultiSorterClass_slistautoptr :: ^glib.SList
MultiSorterClass_queueautoptr :: ^glib.Queue
_GtkNativeInterface :: rawptr
NativeInterface :: _GtkNativeInterface
Native_autoptr :: ^Native
Native_listautoptr :: ^glib.List
Native_slistautoptr :: ^glib.SList
Native_queueautoptr :: ^glib.Queue
_GtkNoSelection :: rawptr
NoSelection :: _GtkNoSelection
NoSelectionClass :: struct {
    parent_class: gobj.ObjectClass,
}
NoSelection_autoptr :: ^NoSelection
NoSelection_listautoptr :: ^glib.List
NoSelection_slistautoptr :: ^glib.SList
NoSelection_queueautoptr :: ^glib.Queue
NoSelectionClass_autoptr :: ^NoSelectionClass
NoSelectionClass_listautoptr :: ^glib.List
NoSelectionClass_slistautoptr :: ^glib.SList
NoSelectionClass_queueautoptr :: ^glib.Queue
_GtkNotebookPage :: rawptr
NotebookPage :: _GtkNotebookPage
NotebookTab :: enum u32 {NOTEBOOK_TAB_FIRST = 0, NOTEBOOK_TAB_LAST = 1, }
_GtkNotebook :: rawptr
Notebook :: _GtkNotebook
Notebook_autoptr :: ^Notebook
Notebook_listautoptr :: ^glib.List
Notebook_slistautoptr :: ^glib.SList
Notebook_queueautoptr :: ^glib.Queue
_GtkNumericSorter :: rawptr
NumericSorter :: _GtkNumericSorter
NumericSorterClass :: struct {
    parent_class: SorterClass,
}
NumericSorter_autoptr :: ^NumericSorter
NumericSorter_listautoptr :: ^glib.List
NumericSorter_slistautoptr :: ^glib.SList
NumericSorter_queueautoptr :: ^glib.Queue
NumericSorterClass_autoptr :: ^NumericSorterClass
NumericSorterClass_listautoptr :: ^glib.List
NumericSorterClass_slistautoptr :: ^glib.SList
NumericSorterClass_queueautoptr :: ^glib.Queue
_GtkOrientable :: rawptr
Orientable :: _GtkOrientable
_GtkOrientableIface :: struct {
    base_iface: gobj.TypeInterface,
}
OrientableIface :: _GtkOrientableIface
Orientable_autoptr :: ^Orientable
Orientable_listautoptr :: ^glib.List
Orientable_slistautoptr :: ^glib.SList
Orientable_queueautoptr :: ^glib.Queue
_GtkOverlay :: rawptr
Overlay :: _GtkOverlay
Overlay_autoptr :: ^Overlay
Overlay_listautoptr :: ^glib.List
Overlay_slistautoptr :: ^glib.SList
Overlay_queueautoptr :: ^glib.Queue
_GtkOverlayLayout :: rawptr
OverlayLayout :: _GtkOverlayLayout
OverlayLayoutClass :: struct {
    parent_class: LayoutManagerClass,
}
OverlayLayout_autoptr :: ^OverlayLayout
OverlayLayout_listautoptr :: ^glib.List
OverlayLayout_slistautoptr :: ^glib.SList
OverlayLayout_queueautoptr :: ^glib.Queue
OverlayLayoutClass_autoptr :: ^OverlayLayoutClass
OverlayLayoutClass_listautoptr :: ^glib.List
OverlayLayoutClass_slistautoptr :: ^glib.SList
OverlayLayoutClass_queueautoptr :: ^glib.Queue
_GtkOverlayLayoutChild :: rawptr
OverlayLayoutChild :: _GtkOverlayLayoutChild
OverlayLayoutChildClass :: struct {
    parent_class: LayoutChildClass,
}
OverlayLayoutChild_autoptr :: ^OverlayLayoutChild
OverlayLayoutChild_listautoptr :: ^glib.List
OverlayLayoutChild_slistautoptr :: ^glib.SList
OverlayLayoutChild_queueautoptr :: ^glib.Queue
OverlayLayoutChildClass_autoptr :: ^OverlayLayoutChildClass
OverlayLayoutChildClass_listautoptr :: ^glib.List
OverlayLayoutChildClass_slistautoptr :: ^glib.SList
OverlayLayoutChildClass_queueautoptr :: ^glib.Queue
_GtkPadController :: rawptr
PadController :: _GtkPadController
_GtkPadControllerClass :: rawptr
PadControllerClass :: _GtkPadControllerClass
PadActionType :: enum u32 {PAD_ACTION_BUTTON = 0, PAD_ACTION_RING = 1, PAD_ACTION_STRIP = 2, }
_GtkPadActionEntry :: struct {
    type: PadActionType,
    index: i32,
    mode: i32,
    label: cstring,
    action_name: cstring,
}
PadActionEntry :: _GtkPadActionEntry
_GtkPaperSize :: rawptr
PaperSize :: _GtkPaperSize
PaperSize_autoptr :: ^PaperSize
PaperSize_listautoptr :: ^glib.List
PaperSize_slistautoptr :: ^glib.SList
PaperSize_queueautoptr :: ^glib.Queue
_GtkPageSetup :: rawptr
PageSetup :: _GtkPageSetup
PageSetup_autoptr :: ^PageSetup
PageSetup_listautoptr :: ^glib.List
PageSetup_slistautoptr :: ^glib.SList
PageSetup_queueautoptr :: ^glib.Queue
_GtkPaned :: rawptr
Paned :: _GtkPaned
Paned_autoptr :: ^Paned
Paned_listautoptr :: ^glib.List
Paned_slistautoptr :: ^glib.SList
Paned_queueautoptr :: ^glib.Queue
_GtkPasswordEntry :: rawptr
PasswordEntry :: _GtkPasswordEntry
_GtkPasswordEntryClass :: rawptr
PasswordEntryClass :: _GtkPasswordEntryClass
_GtkPasswordEntryBuffer :: rawptr
PasswordEntryBuffer :: _GtkPasswordEntryBuffer
PasswordEntryBufferClass :: struct {
    parent_class: EntryBufferClass,
}
PasswordEntryBuffer_autoptr :: ^PasswordEntryBuffer
PasswordEntryBuffer_listautoptr :: ^glib.List
PasswordEntryBuffer_slistautoptr :: ^glib.SList
PasswordEntryBuffer_queueautoptr :: ^glib.Queue
PasswordEntryBufferClass_autoptr :: ^PasswordEntryBufferClass
PasswordEntryBufferClass_listautoptr :: ^glib.List
PasswordEntryBufferClass_slistautoptr :: ^glib.SList
PasswordEntryBufferClass_queueautoptr :: ^glib.Queue
_GtkPicture :: rawptr
Picture :: _GtkPicture
PictureClass :: struct {
    parent_class: WidgetClass,
}
Picture_autoptr :: ^Picture
Picture_listautoptr :: ^glib.List
Picture_slistautoptr :: ^glib.SList
Picture_queueautoptr :: ^glib.Queue
PictureClass_autoptr :: ^PictureClass
PictureClass_listautoptr :: ^glib.List
PictureClass_slistautoptr :: ^glib.SList
PictureClass_queueautoptr :: ^glib.Queue
_GtkPopoverMenu :: rawptr
PopoverMenu :: _GtkPopoverMenu
PopoverMenuFlags :: enum u32 {POPOVER_MENU_NESTED = 1, }
PopoverMenu_autoptr :: ^PopoverMenu
PopoverMenu_listautoptr :: ^glib.List
PopoverMenu_slistautoptr :: ^glib.SList
PopoverMenu_queueautoptr :: ^glib.Queue
_GtkPopoverMenuBar :: rawptr
PopoverMenuBar :: _GtkPopoverMenuBar
PopoverMenuBar_autoptr :: ^PopoverMenuBar
PopoverMenuBar_listautoptr :: ^glib.List
PopoverMenuBar_slistautoptr :: ^glib.SList
PopoverMenuBar_queueautoptr :: ^glib.Queue
_GtkPrintContext :: rawptr
PrintContext :: _GtkPrintContext
PrintContext_autoptr :: ^PrintContext
PrintContext_listautoptr :: ^glib.List
PrintContext_slistautoptr :: ^glib.SList
PrintContext_queueautoptr :: ^glib.Queue
_GtkPrintSettings :: rawptr
PrintSettings :: _GtkPrintSettings
PrintSettingsFunc :: #type proc "c" (key: cstring, value: cstring, user_data: glib.pointer)
_GtkPageRange :: struct {
    start: i32,
    end: i32,
}
PageRange :: _GtkPageRange
PrintSettings_autoptr :: ^PrintSettings
PrintSettings_listautoptr :: ^glib.List
PrintSettings_slistautoptr :: ^glib.SList
PrintSettings_queueautoptr :: ^glib.Queue
_GtkPrintOperationPreview :: rawptr
PrintOperationPreview :: _GtkPrintOperationPreview
ready_func_ptr_anon_317 :: #type proc "c" (preview: ^PrintOperationPreview, context_p: ^PrintContext)
ot_page_size_func_ptr_anon_318 :: #type proc "c" (preview: ^PrintOperationPreview, context_p: ^PrintContext, page_setup: ^PageSetup)
render_page_func_ptr_anon_319 :: #type proc "c" (preview: ^PrintOperationPreview, page_nr: i32)
is_selected_func_ptr_anon_320 :: #type proc "c" (preview: ^PrintOperationPreview, page_nr: i32) -> glib.boolean
end_preview_func_ptr_anon_321 :: #type proc "c" (preview: ^PrintOperationPreview)
_gtk_reserved1_func_ptr_anon_322 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_323 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_324 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_325 :: #type proc "c" ()
_gtk_reserved5_func_ptr_anon_326 :: #type proc "c" ()
_gtk_reserved6_func_ptr_anon_327 :: #type proc "c" ()
_gtk_reserved7_func_ptr_anon_328 :: #type proc "c" ()
_gtk_reserved8_func_ptr_anon_329 :: #type proc "c" ()
_GtkPrintOperationPreviewIface :: struct {
    g_iface: gobj.TypeInterface,
    ready: ready_func_ptr_anon_317,
    got_page_size: ot_page_size_func_ptr_anon_318,
    render_page: render_page_func_ptr_anon_319,
    is_selected: is_selected_func_ptr_anon_320,
    end_preview: end_preview_func_ptr_anon_321,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_322,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_323,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_324,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_325,
    _gtk_reserved5: _gtk_reserved5_func_ptr_anon_326,
    _gtk_reserved6: _gtk_reserved6_func_ptr_anon_327,
    _gtk_reserved7: _gtk_reserved7_func_ptr_anon_328,
    _gtk_reserved8: _gtk_reserved8_func_ptr_anon_329,
}
PrintOperationPreviewIface :: _GtkPrintOperationPreviewIface
PrintOperationPreview_autoptr :: ^PrintOperationPreview
PrintOperationPreview_listautoptr :: ^glib.List
PrintOperationPreview_slistautoptr :: ^glib.SList
PrintOperationPreview_queueautoptr :: ^glib.Queue
_GtkPrintOperationPrivate :: rawptr
PrintOperationPrivate :: _GtkPrintOperationPrivate
_GtkPrintOperation :: struct {
    parent_instance: gobj.Object,
    priv: ^PrintOperationPrivate,
}
PrintOperation :: _GtkPrintOperation
PrintOperationResult :: enum u32 {PRINT_OPERATION_RESULT_ERROR = 0, PRINT_OPERATION_RESULT_APPLY = 1, PRINT_OPERATION_RESULT_CANCEL = 2, PRINT_OPERATION_RESULT_IN_PROGRESS = 3, }
done_func_ptr_anon_330 :: #type proc "c" (operation: ^PrintOperation, result: PrintOperationResult)
begin_print_func_ptr_anon_331 :: #type proc "c" (operation: ^PrintOperation, context_p: ^PrintContext)
paginate_func_ptr_anon_332 :: #type proc "c" (operation: ^PrintOperation, context_p: ^PrintContext) -> glib.boolean
request_page_setup_func_ptr_anon_333 :: #type proc "c" (operation: ^PrintOperation, context_p: ^PrintContext, page_nr: i32, setup: ^PageSetup)
draw_page_func_ptr_anon_334 :: #type proc "c" (operation: ^PrintOperation, context_p: ^PrintContext, page_nr: i32)
end_print_func_ptr_anon_335 :: #type proc "c" (operation: ^PrintOperation, context_p: ^PrintContext)
status_changed_func_ptr_anon_336 :: #type proc "c" (operation: ^PrintOperation)
create_custom_widget_func_ptr_anon_337 :: #type proc "c" (operation: ^PrintOperation) -> ^Widget
custom_widget_apply_func_ptr_anon_338 :: #type proc "c" (operation: ^PrintOperation, widget: ^Widget)
preview_func_ptr_anon_339 :: #type proc "c" (operation: ^PrintOperation, preview: ^PrintOperationPreview, context_p: ^PrintContext, parent: ^Window) -> glib.boolean
update_custom_widget_func_ptr_anon_340 :: #type proc "c" (operation: ^PrintOperation, widget: ^Widget, setup: ^PageSetup, settings: [^]PrintSettings)
_GtkPrintOperationClass :: struct {
    parent_class: gobj.ObjectClass,
    done: done_func_ptr_anon_330,
    begin_print: begin_print_func_ptr_anon_331,
    paginate: paginate_func_ptr_anon_332,
    request_page_setup: request_page_setup_func_ptr_anon_333,
    draw_page: draw_page_func_ptr_anon_334,
    end_print: end_print_func_ptr_anon_335,
    status_changed: status_changed_func_ptr_anon_336,
    create_custom_widget: create_custom_widget_func_ptr_anon_337,
    custom_widget_apply: custom_widget_apply_func_ptr_anon_338,
    preview: preview_func_ptr_anon_339,
    update_custom_widget: update_custom_widget_func_ptr_anon_340,
    padding: [8]glib.pointer,
}
PrintOperationClass :: _GtkPrintOperationClass
PrintStatus :: enum u32 {PRINT_STATUS_INITIAL = 0, PRINT_STATUS_PREPARING = 1, PRINT_STATUS_GENERATING_DATA = 2, PRINT_STATUS_SENDING_DATA = 3, PRINT_STATUS_PENDING = 4, PRINT_STATUS_PENDING_ISSUE = 5, PRINT_STATUS_PRINTING = 6, PRINT_STATUS_FINISHED = 7, PRINT_STATUS_FINISHED_ABORTED = 8, }
PrintOperationAction :: enum u32 {PRINT_OPERATION_ACTION_PRINT_DIALOG = 0, PRINT_OPERATION_ACTION_PRINT = 1, PRINT_OPERATION_ACTION_PREVIEW = 2, PRINT_OPERATION_ACTION_EXPORT = 3, }
PrintError :: enum u32 {PRINT_ERROR_GENERAL = 0, PRINT_ERROR_INTERNAL_ERROR = 1, PRINT_ERROR_NOMEM = 2, PRINT_ERROR_INVALID_FILE = 3, }
PageSetupDoneFunc :: #type proc "c" (page_setup: ^PageSetup, data: glib.pointer)
PrintOperation_autoptr :: ^PrintOperation
PrintOperation_listautoptr :: ^glib.List
PrintOperation_slistautoptr :: ^glib.SList
PrintOperation_queueautoptr :: ^glib.Queue
_GtkProgressBar :: rawptr
ProgressBar :: _GtkProgressBar
ProgressBar_autoptr :: ^ProgressBar
ProgressBar_listautoptr :: ^glib.List
ProgressBar_slistautoptr :: ^glib.SList
ProgressBar_queueautoptr :: ^glib.Queue
_GtkRange :: struct {
    parent_instance: Widget,
}
Range :: _GtkRange
value_changed_func_ptr_anon_341 :: #type proc "c" (range: ^Range)
adjust_bounds_func_ptr_anon_342 :: #type proc "c" (range: ^Range, new_value: f64)
move_slider_func_ptr_anon_343 :: #type proc "c" (range: ^Range, scroll: ScrollType)
et_range_border_func_ptr_anon_344 :: #type proc "c" (range: ^Range, border_: ^Border)
change_value_func_ptr_anon_345 :: #type proc "c" (range: ^Range, scroll: ScrollType, new_value: f64) -> glib.boolean
_GtkRangeClass :: struct {
    parent_class: WidgetClass,
    value_changed: value_changed_func_ptr_anon_341,
    adjust_bounds: adjust_bounds_func_ptr_anon_342,
    move_slider: move_slider_func_ptr_anon_343,
    get_range_border: et_range_border_func_ptr_anon_344,
    change_value: change_value_func_ptr_anon_345,
    padding: [8]glib.pointer,
}
RangeClass :: _GtkRangeClass
Range_autoptr :: ^Range
Range_listautoptr :: ^glib.List
Range_slistautoptr :: ^glib.SList
Range_queueautoptr :: ^glib.Queue
_GtkRecentInfo :: rawptr
RecentInfo :: _GtkRecentInfo
_GtkRecentData :: struct {
    display_name: cstring,
    description: cstring,
    mime_type: cstring,
    app_name: cstring,
    app_exec: cstring,
    groups: [^]cstring,
    is_private: glib.boolean,
}
RecentData :: _GtkRecentData
_GtkRecentManagerPrivate :: rawptr
RecentManagerPrivate :: _GtkRecentManagerPrivate
_GtkRecentManager :: struct {
    parent_instance: gobj.Object,
    priv: ^RecentManagerPrivate,
}
RecentManager :: _GtkRecentManager
changed_func_ptr_anon_346 :: #type proc "c" (manager: ^RecentManager)
_gtk_recent1_func_ptr_anon_347 :: #type proc "c" ()
_gtk_recent2_func_ptr_anon_348 :: #type proc "c" ()
_gtk_recent3_func_ptr_anon_349 :: #type proc "c" ()
_gtk_recent4_func_ptr_anon_350 :: #type proc "c" ()
_GtkRecentManagerClass :: struct {
    parent_class: gobj.ObjectClass,
    changed: changed_func_ptr_anon_346,
    _gtk_recent1: _gtk_recent1_func_ptr_anon_347,
    _gtk_recent2: _gtk_recent2_func_ptr_anon_348,
    _gtk_recent3: _gtk_recent3_func_ptr_anon_349,
    _gtk_recent4: _gtk_recent4_func_ptr_anon_350,
}
RecentManagerClass :: _GtkRecentManagerClass
RecentManagerError :: enum u32 {RECENT_MANAGER_ERROR_NOT_FOUND = 0, RECENT_MANAGER_ERROR_INVALID_URI = 1, RECENT_MANAGER_ERROR_INVALID_ENCODING = 2, RECENT_MANAGER_ERROR_NOT_REGISTERED = 3, RECENT_MANAGER_ERROR_READ = 4, RECENT_MANAGER_ERROR_WRITE = 5, RECENT_MANAGER_ERROR_UNKNOWN = 6, }
RecentManager_autoptr :: ^RecentManager
RecentManager_listautoptr :: ^glib.List
RecentManager_slistautoptr :: ^glib.SList
RecentManager_queueautoptr :: ^glib.Queue
RecentInfo_autoptr :: ^RecentInfo
RecentInfo_listautoptr :: ^glib.List
RecentInfo_slistautoptr :: ^glib.SList
RecentInfo_queueautoptr :: ^glib.Queue
_GtkSnapshotClass :: rawptr

Snapshot_autoptr :: ^Snapshot
Snapshot_listautoptr :: ^glib.List
Snapshot_slistautoptr :: ^glib.SList
Snapshot_queueautoptr :: ^glib.Queue
_GtkRevealer :: rawptr
Revealer :: _GtkRevealer
RevealerTransitionType :: enum u32 {REVEALER_TRANSITION_TYPE_NONE = 0, REVEALER_TRANSITION_TYPE_CROSSFADE = 1, REVEALER_TRANSITION_TYPE_SLIDE_RIGHT = 2, REVEALER_TRANSITION_TYPE_SLIDE_LEFT = 3, REVEALER_TRANSITION_TYPE_SLIDE_UP = 4, REVEALER_TRANSITION_TYPE_SLIDE_DOWN = 5, REVEALER_TRANSITION_TYPE_SWING_RIGHT = 6, REVEALER_TRANSITION_TYPE_SWING_LEFT = 7, REVEALER_TRANSITION_TYPE_SWING_UP = 8, REVEALER_TRANSITION_TYPE_SWING_DOWN = 9, }
Revealer_autoptr :: ^Revealer
Revealer_listautoptr :: ^glib.List
Revealer_slistautoptr :: ^glib.SList
Revealer_queueautoptr :: ^glib.Queue
_GtkRootInterface :: rawptr
RootInterface :: _GtkRootInterface
Root_autoptr :: ^Root
Root_listautoptr :: ^glib.List
Root_slistautoptr :: ^glib.SList
Root_queueautoptr :: ^glib.Queue
_GtkScale :: struct {
    parent_instance: Range,
}
Scale :: _GtkScale
et_layout_offsets_func_ptr_anon_351 :: #type proc "c" (scale: ^Scale, x: ^i32, y: ^i32)
_GtkScaleClass :: struct {
    parent_class: RangeClass,
    get_layout_offsets: et_layout_offsets_func_ptr_anon_351,
    padding: [8]glib.pointer,
}
ScaleClass :: _GtkScaleClass
ScaleFormatValueFunc :: #type proc "c" (scale: ^Scale, value: f64, user_data: glib.pointer) -> cstring
Scale_autoptr :: ^Scale
Scale_listautoptr :: ^glib.List
Scale_slistautoptr :: ^glib.SList
Scale_queueautoptr :: ^glib.Queue
_GtkScaleButton :: struct {
    parent_instance: Widget,
}
ScaleButton :: _GtkScaleButton
value_changed_func_ptr_anon_352 :: #type proc "c" (button: ^ScaleButton, value: f64)
_GtkScaleButtonClass :: struct {
    parent_class: WidgetClass,
    value_changed: value_changed_func_ptr_anon_352,
    padding: [8]glib.pointer,
}
ScaleButtonClass :: _GtkScaleButtonClass
ScaleButton_autoptr :: ^ScaleButton
ScaleButton_listautoptr :: ^glib.List
ScaleButton_slistautoptr :: ^glib.SList
ScaleButton_queueautoptr :: ^glib.Queue
_GtkScrollable :: rawptr
Scrollable :: _GtkScrollable
et_border_func_ptr_anon_353 :: #type proc "c" (scrollable: ^Scrollable, border: ^Border) -> glib.boolean
_GtkScrollableInterface :: struct {
    base_iface: gobj.TypeInterface,
    get_border: et_border_func_ptr_anon_353,
}
ScrollableInterface :: _GtkScrollableInterface
Scrollable_autoptr :: ^Scrollable
Scrollable_listautoptr :: ^glib.List
Scrollable_slistautoptr :: ^glib.SList
Scrollable_queueautoptr :: ^glib.Queue
_GtkScrollbar :: rawptr
Scrollbar :: _GtkScrollbar
Scrollbar_autoptr :: ^Scrollbar
Scrollbar_listautoptr :: ^glib.List
Scrollbar_slistautoptr :: ^glib.SList
Scrollbar_queueautoptr :: ^glib.Queue
ScrollInfo_autoptr :: ^ScrollInfo
ScrollInfo_listautoptr :: ^glib.List
ScrollInfo_slistautoptr :: ^glib.SList
ScrollInfo_queueautoptr :: ^glib.Queue
_GtkScrolledWindow :: rawptr
ScrolledWindow :: _GtkScrolledWindow
CornerType :: enum u32 {CORNER_TOP_LEFT = 0, CORNER_BOTTOM_LEFT = 1, CORNER_TOP_RIGHT = 2, CORNER_BOTTOM_RIGHT = 3, }
PolicyType :: enum u32 {POLICY_ALWAYS = 0, POLICY_AUTOMATIC = 1, POLICY_NEVER = 2, POLICY_EXTERNAL = 3, }
ScrolledWindow_autoptr :: ^ScrolledWindow
ScrolledWindow_listautoptr :: ^glib.List
ScrolledWindow_slistautoptr :: ^glib.SList
ScrolledWindow_queueautoptr :: ^glib.Queue
_GtkSearchBar :: rawptr
SearchBar :: _GtkSearchBar
SearchBar_autoptr :: ^SearchBar
SearchBar_listautoptr :: ^glib.List
SearchBar_slistautoptr :: ^glib.SList
SearchBar_queueautoptr :: ^glib.Queue
_GtkSearchEntry :: rawptr
SearchEntry :: _GtkSearchEntry
SearchEntry_autoptr :: ^SearchEntry
SearchEntry_listautoptr :: ^glib.List
SearchEntry_slistautoptr :: ^glib.SList
SearchEntry_queueautoptr :: ^glib.Queue
_GtkSectionModel :: rawptr
SectionModel :: _GtkSectionModel
et_section_func_ptr_anon_354 :: #type proc "c" (self: ^SectionModel, position: glib.uint_, out_start: ^glib.uint_, out_end: ^glib.uint_)
_GtkSectionModelInterface :: struct {
    g_iface: gobj.TypeInterface,
    get_section: et_section_func_ptr_anon_354,
}
SectionModelInterface :: _GtkSectionModelInterface
SectionModel_autoptr :: ^SectionModel
SectionModel_listautoptr :: ^glib.List
SectionModel_slistautoptr :: ^glib.SList
SectionModel_queueautoptr :: ^glib.Queue
_GtkSelectionFilterModel :: rawptr
SelectionFilterModel :: _GtkSelectionFilterModel
SelectionFilterModelClass :: struct {
    parent_class: gobj.ObjectClass,
}
SelectionFilterModel_autoptr :: ^SelectionFilterModel
SelectionFilterModel_listautoptr :: ^glib.List
SelectionFilterModel_slistautoptr :: ^glib.SList
SelectionFilterModel_queueautoptr :: ^glib.Queue
SelectionFilterModelClass_autoptr :: ^SelectionFilterModelClass
SelectionFilterModelClass_listautoptr :: ^glib.List
SelectionFilterModelClass_slistautoptr :: ^glib.SList
SelectionFilterModelClass_queueautoptr :: ^glib.Queue
_GtkSeparator :: rawptr
Separator :: _GtkSeparator
Separator_autoptr :: ^Separator
Separator_listautoptr :: ^glib.List
Separator_slistautoptr :: ^glib.SList
Separator_queueautoptr :: ^glib.Queue
Settings_autoptr :: ^Settings
Settings_listautoptr :: ^glib.List
Settings_slistautoptr :: ^glib.SList
Settings_queueautoptr :: ^glib.Queue
_GtkShortcutController :: rawptr
ShortcutController :: _GtkShortcutController
_GtkShortcutControllerClass :: rawptr
ShortcutControllerClass :: _GtkShortcutControllerClass
_GtkShortcutLabel :: rawptr
ShortcutLabel :: _GtkShortcutLabel
_GtkShortcutLabelClass :: rawptr
ShortcutLabelClass :: _GtkShortcutLabelClass
_GtkShortcutManager :: rawptr
ShortcutManager :: _GtkShortcutManager
add_controller_func_ptr_anon_355 :: #type proc "c" (self: ^ShortcutManager, controller: ^ShortcutController)
remove_controller_func_ptr_anon_356 :: #type proc "c" (self: ^ShortcutManager, controller: ^ShortcutController)
_GtkShortcutManagerInterface :: struct {
    g_iface: gobj.TypeInterface,
    add_controller: add_controller_func_ptr_anon_355,
    remove_controller: remove_controller_func_ptr_anon_356,
}
ShortcutManagerInterface :: _GtkShortcutManagerInterface
ShortcutManager_autoptr :: ^ShortcutManager
ShortcutManager_listautoptr :: ^glib.List
ShortcutManager_slistautoptr :: ^glib.SList
ShortcutManager_queueautoptr :: ^glib.Queue
_GtkShortcutsGroup :: rawptr
ShortcutsGroup :: _GtkShortcutsGroup
_GtkShortcutsGroupClass :: rawptr
ShortcutsGroupClass :: _GtkShortcutsGroupClass
_GtkShortcutsSection :: rawptr
ShortcutsSection :: _GtkShortcutsSection
_GtkShortcutsSectionClass :: rawptr
ShortcutsSectionClass :: _GtkShortcutsSectionClass
_GtkShortcutsShortcut :: rawptr
ShortcutsShortcut :: _GtkShortcutsShortcut
_GtkShortcutsShortcutClass :: rawptr
ShortcutsShortcutClass :: _GtkShortcutsShortcutClass
ShortcutType :: enum u32 {SHORTCUT_ACCELERATOR = 0, SHORTCUT_GESTURE_PINCH = 1, SHORTCUT_GESTURE_STRETCH = 2, SHORTCUT_GESTURE_ROTATE_CLOCKWISE = 3, SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE = 4, SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT = 5, SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT = 6, SHORTCUT_GESTURE = 7, SHORTCUT_GESTURE_SWIPE_LEFT = 8, SHORTCUT_GESTURE_SWIPE_RIGHT = 9, }
_GtkShortcutTriggerClass :: rawptr
ShortcutTriggerClass :: _GtkShortcutTriggerClass
ShortcutTrigger_autoptr :: ^ShortcutTrigger
ShortcutTrigger_listautoptr :: ^glib.List
ShortcutTrigger_slistautoptr :: ^glib.SList
ShortcutTrigger_queueautoptr :: ^glib.Queue
ShortcutTriggerClass_autoptr :: ^ShortcutTriggerClass
ShortcutTriggerClass_listautoptr :: ^glib.List
ShortcutTriggerClass_slistautoptr :: ^glib.SList
ShortcutTriggerClass_queueautoptr :: ^glib.Queue
_GtkNeverTrigger :: rawptr
NeverTrigger :: _GtkNeverTrigger
_GtkNeverTriggerClass :: rawptr
NeverTriggerClass :: _GtkNeverTriggerClass
NeverTrigger_autoptr :: ^NeverTrigger
NeverTrigger_listautoptr :: ^glib.List
NeverTrigger_slistautoptr :: ^glib.SList
NeverTrigger_queueautoptr :: ^glib.Queue
NeverTriggerClass_autoptr :: ^NeverTriggerClass
NeverTriggerClass_listautoptr :: ^glib.List
NeverTriggerClass_slistautoptr :: ^glib.SList
NeverTriggerClass_queueautoptr :: ^glib.Queue
_GtkKeyvalTrigger :: rawptr
KeyvalTrigger :: _GtkKeyvalTrigger
_GtkKeyvalTriggerClass :: rawptr
KeyvalTriggerClass :: _GtkKeyvalTriggerClass
KeyvalTrigger_autoptr :: ^KeyvalTrigger
KeyvalTrigger_listautoptr :: ^glib.List
KeyvalTrigger_slistautoptr :: ^glib.SList
KeyvalTrigger_queueautoptr :: ^glib.Queue
KeyvalTriggerClass_autoptr :: ^KeyvalTriggerClass
KeyvalTriggerClass_listautoptr :: ^glib.List
KeyvalTriggerClass_slistautoptr :: ^glib.SList
KeyvalTriggerClass_queueautoptr :: ^glib.Queue
_GtkMnemonicTrigger :: rawptr
MnemonicTrigger :: _GtkMnemonicTrigger
_GtkMnemonicTriggerClass :: rawptr
MnemonicTriggerClass :: _GtkMnemonicTriggerClass
MnemonicTrigger_autoptr :: ^MnemonicTrigger
MnemonicTrigger_listautoptr :: ^glib.List
MnemonicTrigger_slistautoptr :: ^glib.SList
MnemonicTrigger_queueautoptr :: ^glib.Queue
MnemonicTriggerClass_autoptr :: ^MnemonicTriggerClass
MnemonicTriggerClass_listautoptr :: ^glib.List
MnemonicTriggerClass_slistautoptr :: ^glib.SList
MnemonicTriggerClass_queueautoptr :: ^glib.Queue
_GtkAlternativeTrigger :: rawptr
AlternativeTrigger :: _GtkAlternativeTrigger
_GtkAlternativeTriggerClass :: rawptr
AlternativeTriggerClass :: _GtkAlternativeTriggerClass
AlternativeTrigger_autoptr :: ^AlternativeTrigger
AlternativeTrigger_listautoptr :: ^glib.List
AlternativeTrigger_slistautoptr :: ^glib.SList
AlternativeTrigger_queueautoptr :: ^glib.Queue
AlternativeTriggerClass_autoptr :: ^AlternativeTriggerClass
AlternativeTriggerClass_listautoptr :: ^glib.List
AlternativeTriggerClass_slistautoptr :: ^glib.SList
AlternativeTriggerClass_queueautoptr :: ^glib.Queue
_GtkSignalListItemFactory :: rawptr
SignalListItemFactory :: _GtkSignalListItemFactory
_GtkSignalListItemFactoryClass :: rawptr
SignalListItemFactoryClass :: _GtkSignalListItemFactoryClass
_GtkSingleSelection :: rawptr
SingleSelection :: _GtkSingleSelection
SingleSelectionClass :: struct {
    parent_class: gobj.ObjectClass,
}
SingleSelection_autoptr :: ^SingleSelection
SingleSelection_listautoptr :: ^glib.List
SingleSelection_slistautoptr :: ^glib.SList
SingleSelection_queueautoptr :: ^glib.Queue
SingleSelectionClass_autoptr :: ^SingleSelectionClass
SingleSelectionClass_listautoptr :: ^glib.List
SingleSelectionClass_slistautoptr :: ^glib.SList
SingleSelectionClass_queueautoptr :: ^glib.Queue
_GtkSliceListModel :: rawptr
SliceListModel :: _GtkSliceListModel
SliceListModelClass :: struct {
    parent_class: gobj.ObjectClass,
}
SliceListModel_autoptr :: ^SliceListModel
SliceListModel_listautoptr :: ^glib.List
SliceListModel_slistautoptr :: ^glib.SList
SliceListModel_queueautoptr :: ^glib.Queue
SliceListModelClass_autoptr :: ^SliceListModelClass
SliceListModelClass_listautoptr :: ^glib.List
SliceListModelClass_slistautoptr :: ^glib.SList
SliceListModelClass_queueautoptr :: ^glib.Queue
_GtkStack :: rawptr
Stack :: _GtkStack
_GtkStackPage :: rawptr
StackPage :: _GtkStackPage
StackTransitionType :: enum u32 {STACK_TRANSITION_TYPE_NONE = 0, STACK_TRANSITION_TYPE_CROSSFADE = 1, STACK_TRANSITION_TYPE_SLIDE_RIGHT = 2, STACK_TRANSITION_TYPE_SLIDE_LEFT = 3, STACK_TRANSITION_TYPE_SLIDE_UP = 4, STACK_TRANSITION_TYPE_SLIDE_DOWN = 5, STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT = 6, STACK_TRANSITION_TYPE_SLIDE_UP_DOWN = 7, STACK_TRANSITION_TYPE_OVER_UP = 8, STACK_TRANSITION_TYPE_OVER_DOWN = 9, STACK_TRANSITION_TYPE_OVER_LEFT = 10, STACK_TRANSITION_TYPE_OVER_RIGHT = 11, STACK_TRANSITION_TYPE_UNDER_UP = 12, STACK_TRANSITION_TYPE_UNDER_DOWN = 13, STACK_TRANSITION_TYPE_UNDER_LEFT = 14, STACK_TRANSITION_TYPE_UNDER_RIGHT = 15, STACK_TRANSITION_TYPE_OVER_UP_DOWN = 16, STACK_TRANSITION_TYPE_OVER_DOWN_UP = 17, STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT = 18, STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT = 19, STACK_TRANSITION_TYPE_ROTATE_LEFT = 20, STACK_TRANSITION_TYPE_ROTATE_RIGHT = 21, STACK_TRANSITION_TYPE_ROTATE_LEFT_RIGHT = 22, }
Stack_autoptr :: ^Stack
Stack_listautoptr :: ^glib.List
Stack_slistautoptr :: ^glib.SList
Stack_queueautoptr :: ^glib.Queue
_GtkStackSidebar :: rawptr
StackSidebar :: _GtkStackSidebar
StackSidebar_autoptr :: ^StackSidebar
StackSidebar_listautoptr :: ^glib.List
StackSidebar_slistautoptr :: ^glib.SList
StackSidebar_queueautoptr :: ^glib.Queue
_GtkSizeGroup :: struct {
    parent_instance: gobj.Object,
}
SizeGroup :: _GtkSizeGroup
SizeGroup_autoptr :: ^SizeGroup
SizeGroup_listautoptr :: ^glib.List
SizeGroup_slistautoptr :: ^glib.SList
SizeGroup_queueautoptr :: ^glib.Queue
_GtkRequestedSize :: struct {
    data: glib.pointer,
    minimum_size: i32,
    natural_size: i32,
}
RequestedSize :: _GtkRequestedSize
SpinButtonUpdatePolicy :: enum u32 {UPDATE_ALWAYS = 0, UPDATE_IF_VALID = 1, }
SpinType :: enum u32 {SPIN_STEP_FORWARD = 0, SPIN_STEP_BACKWARD = 1, SPIN_PAGE_FORWARD = 2, SPIN_PAGE_BACKWARD = 3, SPIN_HOME = 4, SPIN_END = 5, SPIN_USER_DEFINED = 6, }
_GtkSpinButton :: rawptr
SpinButton :: _GtkSpinButton
SpinButton_autoptr :: ^SpinButton
SpinButton_listautoptr :: ^glib.List
SpinButton_slistautoptr :: ^glib.SList
SpinButton_queueautoptr :: ^glib.Queue
_GtkSpinner :: rawptr
Spinner :: _GtkSpinner
Spinner_autoptr :: ^Spinner
Spinner_listautoptr :: ^glib.List
Spinner_slistautoptr :: ^glib.SList
Spinner_queueautoptr :: ^glib.Queue
_GtkStackSwitcher :: rawptr
StackSwitcher :: _GtkStackSwitcher
StackSwitcher_autoptr :: ^StackSwitcher
StackSwitcher_listautoptr :: ^glib.List
StackSwitcher_slistautoptr :: ^glib.SList
StackSwitcher_queueautoptr :: ^glib.Queue
_GtkStatusbar :: rawptr
Statusbar :: _GtkStatusbar
Statusbar_autoptr :: ^Statusbar
Statusbar_listautoptr :: ^glib.List
Statusbar_slistautoptr :: ^glib.SList
Statusbar_queueautoptr :: ^glib.Queue
_GtkStringObject :: rawptr
StringObject :: _GtkStringObject
StringObjectClass :: struct {
    parent_class: gobj.ObjectClass,
}
StringObject_autoptr :: ^StringObject
StringObject_listautoptr :: ^glib.List
StringObject_slistautoptr :: ^glib.SList
StringObject_queueautoptr :: ^glib.Queue
StringObjectClass_autoptr :: ^StringObjectClass
StringObjectClass_listautoptr :: ^glib.List
StringObjectClass_slistautoptr :: ^glib.SList
StringObjectClass_queueautoptr :: ^glib.Queue
_GtkStringList :: rawptr
StringList :: _GtkStringList
StringListClass :: struct {
    parent_class: gobj.ObjectClass,
}
StringList_autoptr :: ^StringList
StringList_listautoptr :: ^glib.List
StringList_slistautoptr :: ^glib.SList
StringList_queueautoptr :: ^glib.Queue
StringListClass_autoptr :: ^StringListClass
StringListClass_listautoptr :: ^glib.List
StringListClass_slistautoptr :: ^glib.SList
StringListClass_queueautoptr :: ^glib.Queue
_GtkStringSorter :: rawptr
StringSorter :: _GtkStringSorter
StringSorterClass :: struct {
    parent_class: SorterClass,
}
StringSorter_autoptr :: ^StringSorter
StringSorter_listautoptr :: ^glib.List
StringSorter_slistautoptr :: ^glib.SList
StringSorter_queueautoptr :: ^glib.Queue
StringSorterClass_autoptr :: ^StringSorterClass
StringSorterClass_listautoptr :: ^glib.List
StringSorterClass_slistautoptr :: ^glib.SList
StringSorterClass_queueautoptr :: ^glib.Queue
Collation :: enum u32 {COLLATION_NONE = 0, COLLATION_UNICODE = 1, COLLATION_FILENAME = 2, }
_GtkStyleProvider :: rawptr
StyleProvider :: _GtkStyleProvider
StyleProvider_autoptr :: ^StyleProvider
StyleProvider_listautoptr :: ^glib.List
StyleProvider_slistautoptr :: ^glib.SList
StyleProvider_queueautoptr :: ^glib.Queue
changed_func_ptr_anon_357 :: #type proc "c" (context_p: ^StyleContext)
_gtk_reserved1_func_ptr_anon_358 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_359 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_360 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_361 :: #type proc "c" ()
_GtkStyleContextClass :: struct {
    parent_class: gobj.ObjectClass,
    changed: changed_func_ptr_anon_357,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_358,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_359,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_360,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_361,
}
StyleContextClass :: _GtkStyleContextClass
StyleContextPrintFlags :: enum u32 {STYLE_CONTEXT_PRINT_NONE = 0, STYLE_CONTEXT_PRINT_RECURSE = 1, STYLE_CONTEXT_PRINT_SHOW_STYLE = 2, STYLE_CONTEXT_PRINT_SHOW_CHANGE = 4, }
StyleContext_autoptr :: ^StyleContext
StyleContext_listautoptr :: ^glib.List
StyleContext_slistautoptr :: ^glib.SList
StyleContext_queueautoptr :: ^glib.Queue
_GtkSwitch :: rawptr
Switch :: _GtkSwitch
Switch_autoptr :: ^Switch
Switch_listautoptr :: ^glib.List
Switch_slistautoptr :: ^glib.SList
Switch_queueautoptr :: ^glib.Queue
_GtkSymbolicPaintable :: rawptr
SymbolicPaintable :: _GtkSymbolicPaintable
snapshot_symbolic_func_ptr_anon_362 :: #type proc "c" (paintable: ^SymbolicPaintable, snapshot: ^Snapshot, width: f64, height: f64, colors: [^]RGBA, n_colors: glib.size)
_GtkSymbolicPaintableInterface :: struct {
    g_iface: gobj.TypeInterface,
    snapshot_symbolic: snapshot_symbolic_func_ptr_anon_362,
}
SymbolicPaintableInterface :: _GtkSymbolicPaintableInterface
SymbolicPaintable_autoptr :: ^SymbolicPaintable
SymbolicPaintable_listautoptr :: ^glib.List
SymbolicPaintable_slistautoptr :: ^glib.SList
SymbolicPaintable_queueautoptr :: ^glib.Queue
_GtkText :: struct {
    parent_instance: Widget,
}
Text :: _GtkText
_GtkTextIter :: struct {
    dummy1: glib.pointer,
    dummy2: glib.pointer,
    dummy3: i32,
    dummy4: i32,
    dummy5: i32,
    dummy6: i32,
    dummy7: i32,
    dummy8: i32,
    dummy9: glib.pointer,
    dummy10: glib.pointer,
    dummy11: i32,
    dummy12: i32,
    dummy13: i32,
    dummy14: glib.pointer,
}
TextIter :: _GtkTextIter
_GtkTextTagTable :: rawptr
TextTagTable :: _GtkTextTagTable
_GtkTextTagPrivate :: rawptr
TextTagPrivate :: _GtkTextTagPrivate
_GtkTextTag :: struct {
    parent_instance: gobj.Object,
    priv: ^TextTagPrivate,
}
TextTag :: _GtkTextTag
_GtkTextTagClass :: struct {
    parent_class: gobj.ObjectClass,
    padding: [8]glib.pointer,
}
TextTagClass :: _GtkTextTagClass
TextTag_autoptr :: ^TextTag
TextTag_listautoptr :: ^glib.List
TextTag_slistautoptr :: ^glib.SList
TextTag_queueautoptr :: ^glib.Queue
TextTagTableForeach :: #type proc "c" (tag: ^TextTag, data: glib.pointer)
TextTagTable_autoptr :: ^TextTagTable
TextTagTable_listautoptr :: ^glib.List
TextTagTable_slistautoptr :: ^glib.SList
TextTagTable_queueautoptr :: ^glib.Queue
_GtkTextChildAnchor :: struct {
    parent_instance: gobj.Object,
    segment: glib.pointer,
}
TextChildAnchor :: _GtkTextChildAnchor
_gtk_reserved1_func_ptr_anon_363 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_364 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_365 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_366 :: #type proc "c" ()
_GtkTextChildAnchorClass :: struct {
    parent_class: gobj.ObjectClass,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_363,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_364,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_365,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_366,
}
TextChildAnchorClass :: _GtkTextChildAnchorClass
TextChildAnchor_autoptr :: ^TextChildAnchor
TextChildAnchor_listautoptr :: ^glib.List
TextChildAnchor_slistautoptr :: ^glib.SList
TextChildAnchor_queueautoptr :: ^glib.Queue
TextSearchFlags :: enum u32 {TEXT_SEARCH_VISIBLE_ONLY = 1, TEXT_SEARCH_TEXT_ONLY = 2, TEXT_SEARCH_CASE_INSENSITIVE = 4, }
_GtkTextBufferPrivate :: rawptr
TextBufferPrivate :: _GtkTextBufferPrivate
_GtkTextBuffer :: struct {
    parent_instance: gobj.Object,
    priv: ^TextBufferPrivate,
}
TextBuffer :: _GtkTextBuffer
TextCharPredicate :: #type proc "c" (ch: glib.unichar, user_data: glib.pointer) -> glib.boolean
TextIter_autoptr :: ^TextIter
TextIter_listautoptr :: ^glib.List
TextIter_slistautoptr :: ^glib.SList
TextIter_queueautoptr :: ^glib.Queue
_GtkTextMark :: struct {
    parent_instance: gobj.Object,
    segment: glib.pointer,
}
TextMark :: _GtkTextMark
_GtkTextMarkClass :: struct {
    parent_class: gobj.ObjectClass,
    padding: [8]glib.pointer,
}
TextMarkClass :: _GtkTextMarkClass
TextMark_autoptr :: ^TextMark
TextMark_listautoptr :: ^glib.List
TextMark_slistautoptr :: ^glib.SList
TextMark_queueautoptr :: ^glib.Queue
insert_text_func_ptr_anon_367 :: #type proc "c" (buffer: ^TextBuffer, pos: [^]TextIter, new_text: cstring, new_text_length: i32)
insert_paintable_func_ptr_anon_368 :: #type proc "c" (buffer: ^TextBuffer, iter: ^TextIter, paintable: ^Paintable)
insert_child_anchor_func_ptr_anon_369 :: #type proc "c" (buffer: ^TextBuffer, iter: ^TextIter, anchor: ^TextChildAnchor)
delete_range_func_ptr_anon_370 :: #type proc "c" (buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter)
changed_func_ptr_anon_371 :: #type proc "c" (buffer: ^TextBuffer)
modified_changed_func_ptr_anon_372 :: #type proc "c" (buffer: ^TextBuffer)
mark_set_func_ptr_anon_373 :: #type proc "c" (buffer: ^TextBuffer, location: ^TextIter, mark: ^TextMark)
mark_deleted_func_ptr_anon_374 :: #type proc "c" (buffer: ^TextBuffer, mark: ^TextMark)
apply_tag_func_ptr_anon_375 :: #type proc "c" (buffer: ^TextBuffer, tag: ^TextTag, start: ^TextIter, end: ^TextIter)
remove_tag_func_ptr_anon_376 :: #type proc "c" (buffer: ^TextBuffer, tag: ^TextTag, start: ^TextIter, end: ^TextIter)
begin_user_action_func_ptr_anon_377 :: #type proc "c" (buffer: ^TextBuffer)
end_user_action_func_ptr_anon_378 :: #type proc "c" (buffer: ^TextBuffer)
paste_done_func_ptr_anon_379 :: #type proc "c" (buffer: ^TextBuffer, clipboard: ^Clipboard)
undo_func_ptr_anon_380 :: #type proc "c" (buffer: ^TextBuffer)
redo_func_ptr_anon_381 :: #type proc "c" (buffer: ^TextBuffer)
_gtk_reserved1_func_ptr_anon_382 :: #type proc "c" ()
_gtk_reserved2_func_ptr_anon_383 :: #type proc "c" ()
_gtk_reserved3_func_ptr_anon_384 :: #type proc "c" ()
_gtk_reserved4_func_ptr_anon_385 :: #type proc "c" ()
_GtkTextBufferClass :: struct {
    parent_class: gobj.ObjectClass,
    insert_text: insert_text_func_ptr_anon_367,
    insert_paintable: insert_paintable_func_ptr_anon_368,
    insert_child_anchor: insert_child_anchor_func_ptr_anon_369,
    delete_range: delete_range_func_ptr_anon_370,
    changed: changed_func_ptr_anon_371,
    modified_changed: modified_changed_func_ptr_anon_372,
    mark_set: mark_set_func_ptr_anon_373,
    mark_deleted: mark_deleted_func_ptr_anon_374,
    apply_tag: apply_tag_func_ptr_anon_375,
    remove_tag: remove_tag_func_ptr_anon_376,
    begin_user_action: begin_user_action_func_ptr_anon_377,
    end_user_action: end_user_action_func_ptr_anon_378,
    paste_done: paste_done_func_ptr_anon_379,
    undo: undo_func_ptr_anon_380,
    redo: redo_func_ptr_anon_381,
    _gtk_reserved1: _gtk_reserved1_func_ptr_anon_382,
    _gtk_reserved2: _gtk_reserved2_func_ptr_anon_383,
    _gtk_reserved3: _gtk_reserved3_func_ptr_anon_384,
    _gtk_reserved4: _gtk_reserved4_func_ptr_anon_385,
}
TextBufferClass :: _GtkTextBufferClass
TextBuffer_autoptr :: ^TextBuffer
TextBuffer_listautoptr :: ^glib.List
TextBuffer_slistautoptr :: ^glib.SList
TextBuffer_queueautoptr :: ^glib.Queue
TextWindowType :: enum u32 {TEXT_WINDOW_WIDGET = 1, TEXT_WINDOW_TEXT = 2, TEXT_WINDOW_LEFT = 3, TEXT_WINDOW_RIGHT = 4, TEXT_WINDOW_TOP = 5, TEXT_WINDOW_BOTTOM = 6, }
TextViewLayer :: enum u32 {TEXT_VIEW_LAYER_BELOW_TEXT = 0, TEXT_VIEW_LAYER_ABOVE_TEXT = 1, }
TextExtendSelection :: enum u32 {TEXT_EXTEND_SELECTION_WORD = 0, TEXT_EXTEND_SELECTION_LINE = 1, }
_GtkTextViewPrivate :: rawptr
TextViewPrivate :: _GtkTextViewPrivate
_GtkTextView :: struct {
    parent_instance: Widget,
    priv: ^TextViewPrivate,
}
TextView :: _GtkTextView
move_cursor_func_ptr_anon_386 :: #type proc "c" (text_view: ^TextView, step: MovementStep, count: i32, extend_selection: glib.boolean)
set_anchor_func_ptr_anon_387 :: #type proc "c" (text_view: ^TextView)
insert_at_cursor_func_ptr_anon_388 :: #type proc "c" (text_view: ^TextView, str: cstring)
delete_from_cursor_func_ptr_anon_389 :: #type proc "c" (text_view: ^TextView, type: DeleteType, count: i32)
backspace_func_ptr_anon_390 :: #type proc "c" (text_view: ^TextView)
cut_clipboard_func_ptr_anon_391 :: #type proc "c" (text_view: ^TextView)
copy_clipboard_func_ptr_anon_392 :: #type proc "c" (text_view: ^TextView)
paste_clipboard_func_ptr_anon_393 :: #type proc "c" (text_view: ^TextView)
toggle_overwrite_func_ptr_anon_394 :: #type proc "c" (text_view: ^TextView)
create_buffer_func_ptr_anon_395 :: #type proc "c" (text_view: ^TextView) -> ^TextBuffer
snapshot_layer_func_ptr_anon_396 :: #type proc "c" (text_view: ^TextView, layer: TextViewLayer, snapshot: ^Snapshot)
extend_selection_func_ptr_anon_397 :: #type proc "c" (text_view: ^TextView, granularity: TextExtendSelection, location: ^TextIter, start: ^TextIter, end: ^TextIter) -> glib.boolean
insert_emoji_func_ptr_anon_398 :: #type proc "c" (text_view: ^TextView)
_GtkTextViewClass :: struct {
    parent_class: WidgetClass,
    move_cursor: move_cursor_func_ptr_anon_386,
    set_anchor: set_anchor_func_ptr_anon_387,
    insert_at_cursor: insert_at_cursor_func_ptr_anon_388,
    delete_from_cursor: delete_from_cursor_func_ptr_anon_389,
    backspace: backspace_func_ptr_anon_390,
    cut_clipboard: cut_clipboard_func_ptr_anon_391,
    copy_clipboard: copy_clipboard_func_ptr_anon_392,
    paste_clipboard: paste_clipboard_func_ptr_anon_393,
    toggle_overwrite: toggle_overwrite_func_ptr_anon_394,
    create_buffer: create_buffer_func_ptr_anon_395,
    snapshot_layer: snapshot_layer_func_ptr_anon_396,
    extend_selection: extend_selection_func_ptr_anon_397,
    insert_emoji: insert_emoji_func_ptr_anon_398,
    padding: [8]glib.pointer,
}
TextViewClass :: _GtkTextViewClass
TextView_autoptr :: ^TextView
TextView_listautoptr :: ^glib.List
TextView_slistautoptr :: ^glib.SList
TextView_queueautoptr :: ^glib.Queue
_GtkTreeDragSource :: rawptr
TreeDragSource :: _GtkTreeDragSource
row_draggable_func_ptr_anon_399 :: #type proc "c" (drag_source: ^TreeDragSource, path: ^TreePath) -> glib.boolean
drag_data_get_func_ptr_anon_400 :: #type proc "c" (drag_source: ^TreeDragSource, path: ^TreePath) -> ^ContentProvider
drag_data_delete_func_ptr_anon_401 :: #type proc "c" (drag_source: ^TreeDragSource, path: ^TreePath) -> glib.boolean
_GtkTreeDragSourceIface :: struct {
    g_iface: gobj.TypeInterface,
    row_draggable: row_draggable_func_ptr_anon_399,
    drag_data_get: drag_data_get_func_ptr_anon_400,
    drag_data_delete: drag_data_delete_func_ptr_anon_401,
}
TreeDragSourceIface :: _GtkTreeDragSourceIface
_GtkTreeDragDest :: rawptr
TreeDragDest :: _GtkTreeDragDest
drag_data_received_func_ptr_anon_402 :: #type proc "c" (drag_dest: ^TreeDragDest, dest: ^TreePath, value: ^gobj.Value) -> glib.boolean
row_drop_possible_func_ptr_anon_403 :: #type proc "c" (drag_dest: ^TreeDragDest, dest_path: ^TreePath, value: ^gobj.Value) -> glib.boolean
_GtkTreeDragDestIface :: struct {
    g_iface: gobj.TypeInterface,
    drag_data_received: drag_data_received_func_ptr_anon_402,
    row_drop_possible: row_drop_possible_func_ptr_anon_403,
}
TreeDragDestIface :: _GtkTreeDragDestIface
TreeDragDest_autoptr :: ^TreeDragDest
TreeDragDest_listautoptr :: ^glib.List
TreeDragDest_slistautoptr :: ^glib.SList
TreeDragDest_queueautoptr :: ^glib.Queue
TreeDragSource_autoptr :: ^TreeDragSource
TreeDragSource_listautoptr :: ^glib.List
TreeDragSource_slistautoptr :: ^glib.SList
TreeDragSource_queueautoptr :: ^glib.Queue
_GtkTreeListModel :: rawptr
TreeListModel :: _GtkTreeListModel
TreeListModelClass :: struct {
    parent_class: gobj.ObjectClass,
}
TreeListModel_autoptr :: ^TreeListModel
TreeListModel_listautoptr :: ^glib.List
TreeListModel_slistautoptr :: ^glib.SList
TreeListModel_queueautoptr :: ^glib.Queue
TreeListModelClass_autoptr :: ^TreeListModelClass
TreeListModelClass_listautoptr :: ^glib.List
TreeListModelClass_slistautoptr :: ^glib.SList
TreeListModelClass_queueautoptr :: ^glib.Queue
_GtkTreeListRow :: rawptr
TreeListRow :: _GtkTreeListRow
TreeListRowClass :: struct {
    parent_class: gobj.ObjectClass,
}
TreeListRow_autoptr :: ^TreeListRow
TreeListRow_listautoptr :: ^glib.List
TreeListRow_slistautoptr :: ^glib.SList
TreeListRow_queueautoptr :: ^glib.Queue
TreeListRowClass_autoptr :: ^TreeListRowClass
TreeListRowClass_listautoptr :: ^glib.List
TreeListRowClass_slistautoptr :: ^glib.SList
TreeListRowClass_queueautoptr :: ^glib.Queue
TreeListModelCreateModelFunc :: #type proc "c" (item: glib.pointer, user_data: glib.pointer) -> ^gio.ListModel
_GtkTreeExpander :: rawptr
TreeExpander :: _GtkTreeExpander
TreeExpanderClass :: struct {
    parent_class: WidgetClass,
}
TreeExpander_autoptr :: ^TreeExpander
TreeExpander_listautoptr :: ^glib.List
TreeExpander_slistautoptr :: ^glib.SList
TreeExpander_queueautoptr :: ^glib.Queue
TreeExpanderClass_autoptr :: ^TreeExpanderClass
TreeExpanderClass_listautoptr :: ^glib.List
TreeExpanderClass_slistautoptr :: ^glib.SList
TreeExpanderClass_queueautoptr :: ^glib.Queue
_GtkTreeListRowSorter :: rawptr
TreeListRowSorter :: _GtkTreeListRowSorter
TreeListRowSorterClass :: struct {
    parent_class: SorterClass,
}
TreeListRowSorter_autoptr :: ^TreeListRowSorter
TreeListRowSorter_listautoptr :: ^glib.List
TreeListRowSorter_slistautoptr :: ^glib.SList
TreeListRowSorter_queueautoptr :: ^glib.Queue
TreeListRowSorterClass_autoptr :: ^TreeListRowSorterClass
TreeListRowSorterClass_listautoptr :: ^glib.List
TreeListRowSorterClass_slistautoptr :: ^glib.SList
TreeListRowSorterClass_queueautoptr :: ^glib.Queue
_GtkTreeModelSortPrivate :: rawptr
TreeModelSortPrivate :: _GtkTreeModelSortPrivate
_GtkTreeModelSort :: struct {
    parent: gobj.Object,
    priv: ^TreeModelSortPrivate,
}
TreeModelSort :: _GtkTreeModelSort
_GtkTreeModelSortClass :: struct {
    parent_class: gobj.ObjectClass,
    padding: [8]glib.pointer,
}
TreeModelSortClass :: _GtkTreeModelSortClass
TreeModelSort_autoptr :: ^TreeModelSort
TreeModelSort_listautoptr :: ^glib.List
TreeModelSort_slistautoptr :: ^glib.SList
TreeModelSort_queueautoptr :: ^glib.Queue
TreeSelectionFunc :: #type proc "c" (selection: ^TreeSelection, model: ^TreeModel, path: ^TreePath, path_currently_selected: glib.boolean, data: glib.pointer) -> glib.boolean
TreeSelectionForeachFunc :: #type proc "c" (model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, data: glib.pointer)
TreeSelection_autoptr :: ^TreeSelection
TreeSelection_listautoptr :: ^glib.List
TreeSelection_slistautoptr :: ^glib.SList
TreeSelection_queueautoptr :: ^glib.Queue
_GtkTreeStorePrivate :: rawptr
TreeStorePrivate :: _GtkTreeStorePrivate
_GtkTreeStore :: struct {
    parent: gobj.Object,
    priv: ^TreeStorePrivate,
}
TreeStore :: _GtkTreeStore
_GtkTreeStoreClass :: struct {
    parent_class: gobj.ObjectClass,
    padding: [8]glib.pointer,
}
TreeStoreClass :: _GtkTreeStoreClass
TreeStore_autoptr :: ^TreeStore
TreeStore_listautoptr :: ^glib.List
TreeStore_slistautoptr :: ^glib.SList
TreeStore_queueautoptr :: ^glib.Queue
_GtkUriLauncher :: rawptr
UriLauncher :: _GtkUriLauncher
UriLauncherClass :: struct {
    parent_class: gobj.ObjectClass,
}
UriLauncher_autoptr :: ^UriLauncher
UriLauncher_listautoptr :: ^glib.List
UriLauncher_slistautoptr :: ^glib.SList
UriLauncher_queueautoptr :: ^glib.Queue
UriLauncherClass_autoptr :: ^UriLauncherClass
UriLauncherClass_listautoptr :: ^glib.List
UriLauncherClass_slistautoptr :: ^glib.SList
UriLauncherClass_queueautoptr :: ^glib.Queue
_GtkVideo :: rawptr
Video :: _GtkVideo
VideoClass :: struct {
    parent_class: WidgetClass,
}
Video_autoptr :: ^Video
Video_listautoptr :: ^glib.List
Video_slistautoptr :: ^glib.SList
Video_queueautoptr :: ^glib.Queue
VideoClass_autoptr :: ^VideoClass
VideoClass_listautoptr :: ^glib.List
VideoClass_slistautoptr :: ^glib.SList
VideoClass_queueautoptr :: ^glib.Queue
_GtkViewport :: rawptr
Viewport :: _GtkViewport
Viewport_autoptr :: ^Viewport
Viewport_listautoptr :: ^glib.List
Viewport_slistautoptr :: ^glib.SList
Viewport_queueautoptr :: ^glib.Queue
_GtkVolumeButton :: struct {
    parent: ScaleButton,
}
VolumeButton :: _GtkVolumeButton
VolumeButton_autoptr :: ^VolumeButton
VolumeButton_listautoptr :: ^glib.List
VolumeButton_slistautoptr :: ^glib.SList
VolumeButton_queueautoptr :: ^glib.Queue
_GtkWidgetPaintable :: rawptr
WidgetPaintable :: _GtkWidgetPaintable
WidgetPaintableClass :: struct {
    parent_class: gobj.ObjectClass,
}
WidgetPaintable_autoptr :: ^WidgetPaintable
WidgetPaintable_listautoptr :: ^glib.List
WidgetPaintable_slistautoptr :: ^glib.SList
WidgetPaintable_queueautoptr :: ^glib.Queue
WidgetPaintableClass_autoptr :: ^WidgetPaintableClass
WidgetPaintableClass_listautoptr :: ^glib.List
WidgetPaintableClass_slistautoptr :: ^glib.SList
WidgetPaintableClass_queueautoptr :: ^glib.Queue
_GtkWindowControls :: rawptr
WindowControls :: _GtkWindowControls
WindowControlsClass :: struct {
    parent_class: WidgetClass,
}
WindowControls_autoptr :: ^WindowControls
WindowControls_listautoptr :: ^glib.List
WindowControls_slistautoptr :: ^glib.SList
WindowControls_queueautoptr :: ^glib.Queue
WindowControlsClass_autoptr :: ^WindowControlsClass
WindowControlsClass_listautoptr :: ^glib.List
WindowControlsClass_slistautoptr :: ^glib.SList
WindowControlsClass_queueautoptr :: ^glib.Queue
_GtkWindowHandle :: rawptr
WindowHandle :: _GtkWindowHandle
WindowHandleClass :: struct {
    parent_class: WidgetClass,
}
WindowHandle_autoptr :: ^WindowHandle
WindowHandle_listautoptr :: ^glib.List
WindowHandle_slistautoptr :: ^glib.SList
WindowHandle_queueautoptr :: ^glib.Queue
WindowHandleClass_autoptr :: ^WindowHandleClass
WindowHandleClass_listautoptr :: ^glib.List
WindowHandleClass_slistautoptr :: ^glib.SList
WindowHandleClass_queueautoptr :: ^glib.Queue

foreign import gtk_runic "system:gtk-4"

@(default_calling_convention = "c")
foreign gtk_runic {
    @(link_name = "g_unicode_type_get_type")
    g_unicode_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_unicode_break_type_get_type")
    g_unicode_break_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_unicode_script_get_type")
    g_unicode_script_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_normalize_mode_get_type")
    g_normalize_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_css_parser_error_get_type")
    css_parser_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_css_parser_warning_get_type")
    css_parser_warning_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_css_parser_error_quark")
    css_parser_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_css_parser_warning_quark")
    css_parser_warning_quark :: proc() -> glib.Quark ---

    @(link_name = "g_app_info_create_flags_get_type")
    g_app_info_create_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_converter_flags_get_type")
    g_converter_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_converter_result_get_type")
    g_converter_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_data_stream_byte_order_get_type")
    g_data_stream_byte_order_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_data_stream_newline_type_get_type")
    g_data_stream_newline_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_attribute_type_get_type")
    g_file_attribute_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_attribute_info_flags_get_type")
    g_file_attribute_info_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_attribute_status_get_type")
    g_file_attribute_status_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_query_info_flags_get_type")
    g_file_query_info_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_create_flags_get_type")
    g_file_create_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_measure_flags_get_type")
    g_file_measure_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_mount_mount_flags_get_type")
    g_mount_mount_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_mount_unmount_flags_get_type")
    g_mount_unmount_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_drive_start_flags_get_type")
    g_drive_start_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_drive_start_stop_type_get_type")
    g_drive_start_stop_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_copy_flags_get_type")
    g_file_copy_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_monitor_flags_get_type")
    g_file_monitor_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_type_get_type")
    g_file_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_filesystem_preview_type_get_type")
    g_filesystem_preview_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_file_monitor_event_get_type")
    g_file_monitor_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_error_enum_get_type")
    g_io_error_enum_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_ask_password_flags_get_type")
    g_ask_password_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_password_save_get_type")
    g_password_save_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_mount_operation_result_get_type")
    g_mount_operation_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_output_stream_splice_flags_get_type")
    g_output_stream_splice_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_stream_splice_flags_get_type")
    g_io_stream_splice_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_emblem_origin_get_type")
    g_emblem_origin_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resolver_error_get_type")
    g_resolver_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resolver_record_type_get_type")
    g_resolver_record_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resource_error_get_type")
    g_resource_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resource_flags_get_type")
    g_resource_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resource_lookup_flags_get_type")
    g_resource_lookup_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_family_get_type")
    g_socket_family_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_type_get_type")
    g_socket_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_msg_flags_get_type")
    g_socket_msg_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_protocol_get_type")
    g_socket_protocol_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_zlib_compressor_format_get_type")
    g_zlib_compressor_format_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_unix_socket_address_type_get_type")
    g_unix_socket_address_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_bus_type_get_type")
    g_bus_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_bus_name_owner_flags_get_type")
    g_bus_name_owner_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_bus_name_watcher_flags_get_type")
    g_bus_name_watcher_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_proxy_flags_get_type")
    g_dbus_proxy_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_error_get_type")
    g_dbus_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_connection_flags_get_type")
    g_dbus_connection_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_capability_flags_get_type")
    g_dbus_capability_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_call_flags_get_type")
    g_dbus_call_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_type_get_type")
    g_dbus_message_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_flags_get_type")
    g_dbus_message_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_header_field_get_type")
    g_dbus_message_header_field_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_property_info_flags_get_type")
    g_dbus_property_info_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_subtree_flags_get_type")
    g_dbus_subtree_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_server_flags_get_type")
    g_dbus_server_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_signal_flags_get_type")
    g_dbus_signal_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_send_message_flags_get_type")
    g_dbus_send_message_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_credentials_type_get_type")
    g_credentials_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_message_byte_order_get_type")
    g_dbus_message_byte_order_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_application_flags_get_type")
    g_application_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_error_get_type")
    g_tls_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_certificate_flags_get_type")
    g_tls_certificate_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_authentication_mode_get_type")
    g_tls_authentication_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_channel_binding_type_get_type")
    g_tls_channel_binding_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_channel_binding_error_get_type")
    g_tls_channel_binding_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_rehandshake_mode_get_type")
    g_tls_rehandshake_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_password_flags_get_type")
    g_tls_password_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_interaction_result_get_type")
    g_tls_interaction_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_interface_skeleton_flags_get_type")
    g_dbus_interface_skeleton_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_dbus_object_manager_client_flags_get_type")
    g_dbus_object_manager_client_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_database_verify_flags_get_type")
    g_tls_database_verify_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_database_lookup_flags_get_type")
    g_tls_database_lookup_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_certificate_request_flags_get_type")
    g_tls_certificate_request_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_tls_protocol_version_get_type")
    g_tls_protocol_version_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_io_module_scope_flags_get_type")
    g_io_module_scope_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_client_event_get_type")
    g_socket_client_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_socket_listener_event_get_type")
    g_socket_listener_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_test_dbus_flags_get_type")
    g_test_dbus_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_subprocess_flags_get_type")
    g_subprocess_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_notification_priority_get_type")
    g_notification_priority_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_network_connectivity_get_type")
    g_network_connectivity_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_pollable_return_get_type")
    g_pollable_return_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_memory_monitor_warning_level_get_type")
    g_memory_monitor_warning_level_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_resolver_name_lookup_flags_get_type")
    g_resolver_name_lookup_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "g_settings_bind_flags_get_type")
    g_settings_bind_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_css_section_get_type")
    css_section_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_css_section_new")
    css_section_new :: proc(file: ^gio.File, start: ^CssLocation, end: ^CssLocation) -> ^CssSection ---

    @(link_name = "gtk_css_section_ref")
    css_section_ref :: proc(section: ^CssSection) -> ^CssSection ---

    @(link_name = "gtk_css_section_unref")
    css_section_unref :: proc(section: ^CssSection) ---

    @(link_name = "gtk_css_section_print")
    css_section_print :: proc(section: ^CssSection, string_p: ^glib.String) ---

    @(link_name = "gtk_css_section_to_string")
    css_section_to_string :: proc(section: ^CssSection) -> cstring ---

    @(link_name = "gtk_css_section_get_parent")
    css_section_get_parent :: proc(section: ^CssSection) -> ^CssSection ---

    @(link_name = "gtk_css_section_get_file")
    css_section_get_file :: proc(section: ^CssSection) -> ^gio.File ---

    @(link_name = "gtk_css_section_get_start_location")
    css_section_get_start_location :: proc(section: ^CssSection) -> ^CssLocation ---

    @(link_name = "gtk_css_section_get_end_location")
    css_section_get_end_location :: proc(section: ^CssSection) -> ^CssLocation ---

    @(link_name = "gdk_app_launch_context_get_type")
    gdk_app_launch_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_app_launch_context_get_display")
    gdk_app_launch_context_get_display :: proc(context_p: ^AppLaunchContext) -> ^Display ---

    @(link_name = "gdk_app_launch_context_set_desktop")
    gdk_app_launch_context_set_desktop :: proc(context_p: ^AppLaunchContext, desktop: i32) ---

    @(link_name = "gdk_app_launch_context_set_timestamp")
    gdk_app_launch_context_set_timestamp :: proc(context_p: ^AppLaunchContext, timestamp: glib.uint32) ---

    @(link_name = "gdk_app_launch_context_set_icon")
    gdk_app_launch_context_set_icon :: proc(context_p: ^AppLaunchContext, icon: ^gio.Icon) ---

    @(link_name = "gdk_app_launch_context_set_icon_name")
    gdk_app_launch_context_set_icon_name :: proc(context_p: ^AppLaunchContext, icon_name: cstring) ---

    @(link_name = "gdk_pixbuf_get_from_surface")
    gdk_pixbuf_get_from_surface :: proc(surface: ^cairo.surface_t, src_x: i32, src_y: i32, width: i32, height: i32) -> ^gdk.Pixbuf ---

    @(link_name = "gdk_pixbuf_get_from_texture")
    gdk_pixbuf_get_from_texture :: proc(texture: ^Texture) -> ^gdk.Pixbuf ---

    @(link_name = "gdk_cairo_set_source_rgba")
    gdk_cairo_set_source_rgba :: proc(cr: ^cairo.context_t, rgba: ^RGBA) ---

    @(link_name = "gdk_cairo_set_source_pixbuf")
    gdk_cairo_set_source_pixbuf :: proc(cr: ^cairo.context_t, pixbuf: ^gdk.Pixbuf, pixbuf_x: f64, pixbuf_y: f64) ---

    @(link_name = "gdk_cairo_rectangle")
    gdk_cairo_rectangle :: proc(cr: ^cairo.context_t, rectangle: ^Rectangle) ---

    @(link_name = "gdk_cairo_region")
    gdk_cairo_region :: proc(cr: ^cairo.context_t, region: ^cairo.region_t) ---

    @(link_name = "gdk_cairo_region_create_from_surface")
    gdk_cairo_region_create_from_surface :: proc(surface: ^cairo.surface_t) -> ^cairo.region_t ---

    @(link_name = "gdk_cairo_draw_from_gl")
    gdk_cairo_draw_from_gl :: proc(cr: ^cairo.context_t, surface: ^Surface, source: i32, source_type: i32, buffer_scale: i32, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "gdk_cairo_context_get_type")
    gdk_cairo_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_cairo_context_cairo_create")
    gdk_cairo_context_cairo_create :: proc(self: ^CairoContext) -> ^cairo.context_t ---

    @(link_name = "gdk_clipboard_get_type")
    gdk_clipboard_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_clipboard_get_display")
    gdk_clipboard_get_display :: proc(clipboard: ^Clipboard) -> ^Display ---

    @(link_name = "gdk_clipboard_get_formats")
    gdk_clipboard_get_formats :: proc(clipboard: ^Clipboard) -> ^ContentFormats ---

    @(link_name = "gdk_clipboard_is_local")
    gdk_clipboard_is_local :: proc(clipboard: ^Clipboard) -> glib.boolean ---

    @(link_name = "gdk_clipboard_get_content")
    gdk_clipboard_get_content :: proc(clipboard: ^Clipboard) -> ^ContentProvider ---

    @(link_name = "gdk_clipboard_store_async")
    gdk_clipboard_store_async :: proc(clipboard: ^Clipboard, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_clipboard_store_finish")
    gdk_clipboard_store_finish :: proc(clipboard: ^Clipboard, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_clipboard_read_async")
    gdk_clipboard_read_async :: proc(clipboard: ^Clipboard, mime_types: [^]cstring, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_clipboard_read_finish")
    gdk_clipboard_read_finish :: proc(clipboard: ^Clipboard, result: ^gio.AsyncResult, out_mime_type: ^cstring, error: ^^glib.Error) -> ^gio.InputStream ---

    @(link_name = "gdk_clipboard_read_value_async")
    gdk_clipboard_read_value_async :: proc(clipboard: ^Clipboard, type: gobj.Type, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_clipboard_read_value_finish")
    gdk_clipboard_read_value_finish :: proc(clipboard: ^Clipboard, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gobj.Value ---

    @(link_name = "gdk_clipboard_read_texture_async")
    gdk_clipboard_read_texture_async :: proc(clipboard: ^Clipboard, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_clipboard_read_texture_finish")
    gdk_clipboard_read_texture_finish :: proc(clipboard: ^Clipboard, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^Texture ---

    @(link_name = "gdk_clipboard_read_text_async")
    gdk_clipboard_read_text_async :: proc(clipboard: ^Clipboard, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_clipboard_read_text_finish")
    gdk_clipboard_read_text_finish :: proc(clipboard: ^Clipboard, result: ^gio.AsyncResult, error: ^^glib.Error) -> cstring ---

    @(link_name = "gdk_clipboard_set_content")
    gdk_clipboard_set_content :: proc(clipboard: ^Clipboard, provider: ^ContentProvider) -> glib.boolean ---

    @(link_name = "gdk_clipboard_set")
    gdk_clipboard_set :: proc(clipboard: ^Clipboard, type: gobj.Type, #c_vararg var_args: ..any) ---

    @(link_name = "gdk_clipboard_set_valist")
    gdk_clipboard_set_valist :: proc(clipboard: ^Clipboard, type: gobj.Type, #c_vararg var_args: ..any) ---

    @(link_name = "gdk_clipboard_set_value")
    gdk_clipboard_set_value :: proc(clipboard: ^Clipboard, value: ^gobj.Value) ---

    @(link_name = "gdk_clipboard_set_text")
    gdk_clipboard_set_text :: proc(clipboard: ^Clipboard, text: cstring) ---

    @(link_name = "gdk_clipboard_set_texture")
    gdk_clipboard_set_texture :: proc(clipboard: ^Clipboard, texture: ^Texture) ---

    @(link_name = "gdk_content_deserializer_get_type")
    gdk_content_deserializer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_content_deserializer_get_mime_type")
    gdk_content_deserializer_get_mime_type :: proc(deserializer: ^ContentDeserializer) -> cstring ---

    @(link_name = "gdk_content_deserializer_get_gtype")
    gdk_content_deserializer_get_gtype :: proc(deserializer: ^ContentDeserializer) -> gobj.Type ---

    @(link_name = "gdk_content_deserializer_get_value")
    gdk_content_deserializer_get_value :: proc(deserializer: ^ContentDeserializer) -> ^gobj.Value ---

    @(link_name = "gdk_content_deserializer_get_input_stream")
    gdk_content_deserializer_get_input_stream :: proc(deserializer: ^ContentDeserializer) -> ^gio.InputStream ---

    @(link_name = "gdk_content_deserializer_get_priority")
    gdk_content_deserializer_get_priority :: proc(deserializer: ^ContentDeserializer) -> i32 ---

    @(link_name = "gdk_content_deserializer_get_cancellable")
    gdk_content_deserializer_get_cancellable :: proc(deserializer: ^ContentDeserializer) -> ^gio.Cancellable ---

    @(link_name = "gdk_content_deserializer_get_user_data")
    gdk_content_deserializer_get_user_data :: proc(deserializer: ^ContentDeserializer) -> glib.pointer ---

    @(link_name = "gdk_content_deserializer_set_task_data")
    gdk_content_deserializer_set_task_data :: proc(deserializer: ^ContentDeserializer, data: glib.pointer, notify: glib.DestroyNotify) ---

    @(link_name = "gdk_content_deserializer_get_task_data")
    gdk_content_deserializer_get_task_data :: proc(deserializer: ^ContentDeserializer) -> glib.pointer ---

    @(link_name = "gdk_content_deserializer_return_success")
    gdk_content_deserializer_return_success :: proc(deserializer: ^ContentDeserializer) ---

    @(link_name = "gdk_content_deserializer_return_error")
    gdk_content_deserializer_return_error :: proc(deserializer: ^ContentDeserializer, error: ^glib.Error) ---

    @(link_name = "gdk_content_formats_union_deserialize_gtypes")
    gdk_content_formats_union_deserialize_gtypes :: proc(formats: [^]ContentFormats) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_union_deserialize_mime_types")
    gdk_content_formats_union_deserialize_mime_types :: proc(formats: [^]ContentFormats) -> ^ContentFormats ---

    @(link_name = "gdk_content_register_deserializer")
    gdk_content_register_deserializer :: proc(mime_type: cstring, type: gobj.Type, deserialize: ContentDeserializeFunc, data: glib.pointer, notify: glib.DestroyNotify) ---

    @(link_name = "gdk_content_deserialize_async")
    gdk_content_deserialize_async :: proc(stream: ^gio.InputStream, mime_type: cstring, type: gobj.Type, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_content_deserialize_finish")
    gdk_content_deserialize_finish :: proc(result: ^gio.AsyncResult, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_intern_mime_type")
    gdk_intern_mime_type :: proc(string_p: cstring) -> cstring ---

    @(link_name = "gdk_content_formats_get_type")
    gdk_content_formats_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_content_formats_new")
    gdk_content_formats_new :: proc(mime_types: [^]cstring, n_mime_types: glib.uint_) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_new_for_gtype")
    gdk_content_formats_new_for_gtype :: proc(type: gobj.Type) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_parse")
    gdk_content_formats_parse :: proc(string_p: cstring) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_ref")
    gdk_content_formats_ref :: proc(formats: [^]ContentFormats) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_unref")
    gdk_content_formats_unref :: proc(formats: [^]ContentFormats) ---

    @(link_name = "gdk_content_formats_print")
    gdk_content_formats_print :: proc(formats: [^]ContentFormats, string_p: ^glib.String) ---

    @(link_name = "gdk_content_formats_to_string")
    gdk_content_formats_to_string :: proc(formats: [^]ContentFormats) -> cstring ---

    @(link_name = "gdk_content_formats_get_gtypes")
    gdk_content_formats_get_gtypes :: proc(formats: [^]ContentFormats, n_gtypes: [^]glib.size) -> ^gobj.Type ---

    @(link_name = "gdk_content_formats_get_mime_types")
    gdk_content_formats_get_mime_types :: proc(formats: [^]ContentFormats, n_mime_types: [^]glib.size) -> ^cstring ---

    @(link_name = "gdk_content_formats_union")
    gdk_content_formats_union :: proc(first: ^ContentFormats, second: ^ContentFormats) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_match")
    gdk_content_formats_match :: proc(first: ^ContentFormats, second: ^ContentFormats) -> glib.boolean ---

    @(link_name = "gdk_content_formats_match_gtype")
    gdk_content_formats_match_gtype :: proc(first: ^ContentFormats, second: ^ContentFormats) -> gobj.Type ---

    @(link_name = "gdk_content_formats_match_mime_type")
    gdk_content_formats_match_mime_type :: proc(first: ^ContentFormats, second: ^ContentFormats) -> cstring ---

    @(link_name = "gdk_content_formats_contain_gtype")
    gdk_content_formats_contain_gtype :: proc(formats: [^]ContentFormats, type: gobj.Type) -> glib.boolean ---

    @(link_name = "gdk_content_formats_contain_mime_type")
    gdk_content_formats_contain_mime_type :: proc(formats: [^]ContentFormats, mime_type: cstring) -> glib.boolean ---

    @(link_name = "gdk_content_formats_builder_get_type")
    gdk_content_formats_builder_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_content_formats_builder_new")
    gdk_content_formats_builder_new :: proc() -> ^ContentFormatsBuilder ---

    @(link_name = "gdk_content_formats_builder_ref")
    gdk_content_formats_builder_ref :: proc(builder: ^ContentFormatsBuilder) -> ^ContentFormatsBuilder ---

    @(link_name = "gdk_content_formats_builder_unref")
    gdk_content_formats_builder_unref :: proc(builder: ^ContentFormatsBuilder) ---

    @(link_name = "gdk_content_formats_builder_free_to_formats")
    gdk_content_formats_builder_free_to_formats :: proc(builder: ^ContentFormatsBuilder) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_builder_to_formats")
    gdk_content_formats_builder_to_formats :: proc(builder: ^ContentFormatsBuilder) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_builder_add_formats")
    gdk_content_formats_builder_add_formats :: proc(builder: ^ContentFormatsBuilder, formats: [^]ContentFormats) ---

    @(link_name = "gdk_content_formats_builder_add_mime_type")
    gdk_content_formats_builder_add_mime_type :: proc(builder: ^ContentFormatsBuilder, mime_type: cstring) ---

    @(link_name = "gdk_content_formats_builder_add_gtype")
    gdk_content_formats_builder_add_gtype :: proc(builder: ^ContentFormatsBuilder, type: gobj.Type) ---

    @(link_name = "gdk_file_list_get_type")
    gdk_file_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_file_list_get_files")
    gdk_file_list_get_files :: proc(file_list: ^FileList) -> ^glib.SList ---

    @(link_name = "gdk_file_list_new_from_list")
    gdk_file_list_new_from_list :: proc(files: [^]glib.SList) -> ^FileList ---

    @(link_name = "gdk_file_list_new_from_array")
    gdk_file_list_new_from_array :: proc(files: [^]^gio.File, n_files: glib.size) -> ^FileList ---

    @(link_name = "gdk_content_provider_get_type")
    gdk_content_provider_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_content_provider_ref_formats")
    gdk_content_provider_ref_formats :: proc(provider: ^ContentProvider) -> ^ContentFormats ---

    @(link_name = "gdk_content_provider_ref_storable_formats")
    gdk_content_provider_ref_storable_formats :: proc(provider: ^ContentProvider) -> ^ContentFormats ---

    @(link_name = "gdk_content_provider_content_changed")
    gdk_content_provider_content_changed :: proc(provider: ^ContentProvider) ---

    @(link_name = "gdk_content_provider_write_mime_type_async")
    gdk_content_provider_write_mime_type_async :: proc(provider: ^ContentProvider, mime_type: cstring, stream: ^gio.OutputStream, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_content_provider_write_mime_type_finish")
    gdk_content_provider_write_mime_type_finish :: proc(provider: ^ContentProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_content_provider_get_value")
    gdk_content_provider_get_value :: proc(provider: ^ContentProvider, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_content_provider_new_for_value")
    gdk_content_provider_new_for_value :: proc(value: ^gobj.Value) -> ^ContentProvider ---

    @(link_name = "gdk_content_provider_new_typed")
    gdk_content_provider_new_typed :: proc(type: gobj.Type, #c_vararg var_args: ..any) -> ^ContentProvider ---

    @(link_name = "gdk_content_provider_new_union")
    gdk_content_provider_new_union :: proc(providers: [^]^ContentProvider, n_providers: glib.size) -> ^ContentProvider ---

    @(link_name = "gdk_content_provider_new_for_bytes")
    gdk_content_provider_new_for_bytes :: proc(mime_type: cstring, bytes: [^]glib.Bytes) -> ^ContentProvider ---

    @(link_name = "gdk_content_serializer_get_type")
    gdk_content_serializer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_content_serializer_get_mime_type")
    gdk_content_serializer_get_mime_type :: proc(serializer: ^ContentSerializer) -> cstring ---

    @(link_name = "gdk_content_serializer_get_gtype")
    gdk_content_serializer_get_gtype :: proc(serializer: ^ContentSerializer) -> gobj.Type ---

    @(link_name = "gdk_content_serializer_get_value")
    gdk_content_serializer_get_value :: proc(serializer: ^ContentSerializer) -> ^gobj.Value ---

    @(link_name = "gdk_content_serializer_get_output_stream")
    gdk_content_serializer_get_output_stream :: proc(serializer: ^ContentSerializer) -> ^gio.OutputStream ---

    @(link_name = "gdk_content_serializer_get_priority")
    gdk_content_serializer_get_priority :: proc(serializer: ^ContentSerializer) -> i32 ---

    @(link_name = "gdk_content_serializer_get_cancellable")
    gdk_content_serializer_get_cancellable :: proc(serializer: ^ContentSerializer) -> ^gio.Cancellable ---

    @(link_name = "gdk_content_serializer_get_user_data")
    gdk_content_serializer_get_user_data :: proc(serializer: ^ContentSerializer) -> glib.pointer ---

    @(link_name = "gdk_content_serializer_set_task_data")
    gdk_content_serializer_set_task_data :: proc(serializer: ^ContentSerializer, data: glib.pointer, notify: glib.DestroyNotify) ---

    @(link_name = "gdk_content_serializer_get_task_data")
    gdk_content_serializer_get_task_data :: proc(serializer: ^ContentSerializer) -> glib.pointer ---

    @(link_name = "gdk_content_serializer_return_success")
    gdk_content_serializer_return_success :: proc(serializer: ^ContentSerializer) ---

    @(link_name = "gdk_content_serializer_return_error")
    gdk_content_serializer_return_error :: proc(serializer: ^ContentSerializer, error: ^glib.Error) ---

    @(link_name = "gdk_content_formats_union_serialize_gtypes")
    gdk_content_formats_union_serialize_gtypes :: proc(formats: [^]ContentFormats) -> ^ContentFormats ---

    @(link_name = "gdk_content_formats_union_serialize_mime_types")
    gdk_content_formats_union_serialize_mime_types :: proc(formats: [^]ContentFormats) -> ^ContentFormats ---

    @(link_name = "gdk_content_register_serializer")
    gdk_content_register_serializer :: proc(type: gobj.Type, mime_type: cstring, serialize: ContentSerializeFunc, data: glib.pointer, notify: glib.DestroyNotify) ---

    @(link_name = "gdk_content_serialize_async")
    gdk_content_serialize_async :: proc(stream: ^gio.OutputStream, mime_type: cstring, value: ^gobj.Value, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_content_serialize_finish")
    gdk_content_serialize_finish :: proc(result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_cursor_get_type")
    gdk_cursor_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_cursor_new_from_texture")
    gdk_cursor_new_from_texture :: proc(texture: ^Texture, hotspot_x: i32, hotspot_y: i32, fallback: ^Cursor) -> ^Cursor ---

    @(link_name = "gdk_cursor_new_from_name")
    gdk_cursor_new_from_name :: proc(name: cstring, fallback: ^Cursor) -> ^Cursor ---

    @(link_name = "gdk_cursor_get_fallback")
    gdk_cursor_get_fallback :: proc(cursor: ^Cursor) -> ^Cursor ---

    @(link_name = "gdk_cursor_get_name")
    gdk_cursor_get_name :: proc(cursor: ^Cursor) -> cstring ---

    @(link_name = "gdk_cursor_get_texture")
    gdk_cursor_get_texture :: proc(cursor: ^Cursor) -> ^Texture ---

    @(link_name = "gdk_cursor_get_hotspot_x")
    gdk_cursor_get_hotspot_x :: proc(cursor: ^Cursor) -> i32 ---

    @(link_name = "gdk_cursor_get_hotspot_y")
    gdk_cursor_get_hotspot_y :: proc(cursor: ^Cursor) -> i32 ---

    @(link_name = "gdk_device_tool_get_type")
    gdk_device_tool_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_device_tool_get_serial")
    gdk_device_tool_get_serial :: proc(tool: ^DeviceTool) -> glib.uint64 ---

    @(link_name = "gdk_device_tool_get_hardware_id")
    gdk_device_tool_get_hardware_id :: proc(tool: ^DeviceTool) -> glib.uint64 ---

    @(link_name = "gdk_device_tool_get_tool_type")
    gdk_device_tool_get_tool_type :: proc(tool: ^DeviceTool) -> DeviceToolType ---

    @(link_name = "gdk_device_tool_get_axes")
    gdk_device_tool_get_axes :: proc(tool: ^DeviceTool) -> AxisFlags ---

    @(link_name = "gdk_device_get_type")
    gdk_device_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_device_get_name")
    gdk_device_get_name :: proc(device: ^Device) -> cstring ---

    @(link_name = "gdk_device_get_vendor_id")
    gdk_device_get_vendor_id :: proc(device: ^Device) -> cstring ---

    @(link_name = "gdk_device_get_product_id")
    gdk_device_get_product_id :: proc(device: ^Device) -> cstring ---

    @(link_name = "gdk_device_get_display")
    gdk_device_get_display :: proc(device: ^Device) -> ^Display ---

    @(link_name = "gdk_device_get_seat")
    gdk_device_get_seat :: proc(device: ^Device) -> ^Seat ---

    @(link_name = "gdk_device_get_device_tool")
    gdk_device_get_device_tool :: proc(device: ^Device) -> ^DeviceTool ---

    @(link_name = "gdk_device_get_source")
    gdk_device_get_source :: proc(device: ^Device) -> InputSource ---

    @(link_name = "gdk_device_get_has_cursor")
    gdk_device_get_has_cursor :: proc(device: ^Device) -> glib.boolean ---

    @(link_name = "gdk_device_get_num_touches")
    gdk_device_get_num_touches :: proc(device: ^Device) -> glib.uint_ ---

    @(link_name = "gdk_device_get_modifier_state")
    gdk_device_get_modifier_state :: proc(device: ^Device) -> ModifierType ---

    @(link_name = "gdk_device_get_direction")
    gdk_device_get_direction :: proc(device: ^Device) -> pango.Direction ---

    @(link_name = "gdk_device_has_bidi_layouts")
    gdk_device_has_bidi_layouts :: proc(device: ^Device) -> glib.boolean ---

    @(link_name = "gdk_device_get_caps_lock_state")
    gdk_device_get_caps_lock_state :: proc(device: ^Device) -> glib.boolean ---

    @(link_name = "gdk_device_get_num_lock_state")
    gdk_device_get_num_lock_state :: proc(device: ^Device) -> glib.boolean ---

    @(link_name = "gdk_device_get_scroll_lock_state")
    gdk_device_get_scroll_lock_state :: proc(device: ^Device) -> glib.boolean ---

    @(link_name = "gdk_device_get_surface_at_position")
    gdk_device_get_surface_at_position :: proc(device: ^Device, win_x: ^f64, win_y: ^f64) -> ^Surface ---

    @(link_name = "gdk_device_get_timestamp")
    gdk_device_get_timestamp :: proc(device: ^Device) -> glib.uint32 ---

    @(link_name = "gdk_device_pad_get_type")
    gdk_device_pad_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_device_pad_get_n_groups")
    gdk_device_pad_get_n_groups :: proc(pad: ^DevicePad) -> i32 ---

    @(link_name = "gdk_device_pad_get_group_n_modes")
    gdk_device_pad_get_group_n_modes :: proc(pad: ^DevicePad, group_idx: i32) -> i32 ---

    @(link_name = "gdk_device_pad_get_n_features")
    gdk_device_pad_get_n_features :: proc(pad: ^DevicePad, feature: DevicePadFeature) -> i32 ---

    @(link_name = "gdk_device_pad_get_feature_group")
    gdk_device_pad_get_feature_group :: proc(pad: ^DevicePad, feature: DevicePadFeature, feature_idx: i32) -> i32 ---

    @(link_name = "gdk_drag_get_type")
    gdk_drag_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_drag_get_display")
    gdk_drag_get_display :: proc(drag: ^Drag) -> ^Display ---

    @(link_name = "gdk_drag_get_device")
    gdk_drag_get_device :: proc(drag: ^Drag) -> ^Device ---

    @(link_name = "gdk_drag_get_formats")
    gdk_drag_get_formats :: proc(drag: ^Drag) -> ^ContentFormats ---

    @(link_name = "gdk_drag_get_actions")
    gdk_drag_get_actions :: proc(drag: ^Drag) -> DragAction ---

    @(link_name = "gdk_drag_get_selected_action")
    gdk_drag_get_selected_action :: proc(drag: ^Drag) -> DragAction ---

    @(link_name = "gdk_drag_action_is_unique")
    gdk_drag_action_is_unique :: proc(action: DragAction) -> glib.boolean ---

    @(link_name = "gdk_drag_begin")
    gdk_drag_begin :: proc(surface: ^Surface, device: ^Device, content: ^ContentProvider, actions: DragAction, dx: f64, dy: f64) -> ^Drag ---

    @(link_name = "gdk_drag_drop_done")
    gdk_drag_drop_done :: proc(drag: ^Drag, success: glib.boolean) ---

    @(link_name = "gdk_drag_get_drag_surface")
    gdk_drag_get_drag_surface :: proc(drag: ^Drag) -> ^Surface ---

    @(link_name = "gdk_drag_set_hotspot")
    gdk_drag_set_hotspot :: proc(drag: ^Drag, hot_x: i32, hot_y: i32) ---

    @(link_name = "gdk_drag_get_content")
    gdk_drag_get_content :: proc(drag: ^Drag) -> ^ContentProvider ---

    @(link_name = "gdk_drag_get_surface")
    gdk_drag_get_surface :: proc(drag: ^Drag) -> ^Surface ---

    @(link_name = "gdk_event_get_type")
    gdk_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_event_sequence_get_type")
    gdk_event_sequence_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_event_ref")
    gdk_event_ref :: proc(event: ^Event) -> ^Event ---

    @(link_name = "gdk_event_unref")
    gdk_event_unref :: proc(event: ^Event) ---

    @(link_name = "gdk_event_get_event_type")
    gdk_event_get_event_type :: proc(event: ^Event) -> EventType ---

    @(link_name = "gdk_event_get_surface")
    gdk_event_get_surface :: proc(event: ^Event) -> ^Surface ---

    @(link_name = "gdk_event_get_seat")
    gdk_event_get_seat :: proc(event: ^Event) -> ^Seat ---

    @(link_name = "gdk_event_get_device")
    gdk_event_get_device :: proc(event: ^Event) -> ^Device ---

    @(link_name = "gdk_event_get_device_tool")
    gdk_event_get_device_tool :: proc(event: ^Event) -> ^DeviceTool ---

    @(link_name = "gdk_event_get_time")
    gdk_event_get_time :: proc(event: ^Event) -> glib.uint32 ---

    @(link_name = "gdk_event_get_display")
    gdk_event_get_display :: proc(event: ^Event) -> ^Display ---

    @(link_name = "gdk_event_get_event_sequence")
    gdk_event_get_event_sequence :: proc(event: ^Event) -> ^EventSequence ---

    @(link_name = "gdk_event_get_modifier_state")
    gdk_event_get_modifier_state :: proc(event: ^Event) -> ModifierType ---

    @(link_name = "gdk_event_get_position")
    gdk_event_get_position :: proc(event: ^Event, x: ^f64, y: ^f64) -> glib.boolean ---

    @(link_name = "gdk_event_get_axes")
    gdk_event_get_axes :: proc(event: ^Event, axes: [^]^f64, n_axes: [^]glib.uint_) -> glib.boolean ---

    @(link_name = "gdk_event_get_axis")
    gdk_event_get_axis :: proc(event: ^Event, axis_use: AxisUse, value: ^f64) -> glib.boolean ---

    @(link_name = "gdk_event_get_history")
    gdk_event_get_history :: proc(event: ^Event, out_n_coords: [^]glib.uint_) -> ^TimeCoord ---

    @(link_name = "gdk_event_get_pointer_emulated")
    gdk_event_get_pointer_emulated :: proc(event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_button_event_get_type")
    gdk_button_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_button_event_get_button")
    gdk_button_event_get_button :: proc(event: ^Event) -> glib.uint_ ---

    @(link_name = "gdk_scroll_event_get_type")
    gdk_scroll_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_scroll_event_get_direction")
    gdk_scroll_event_get_direction :: proc(event: ^Event) -> ScrollDirection ---

    @(link_name = "gdk_scroll_event_get_deltas")
    gdk_scroll_event_get_deltas :: proc(event: ^Event, delta_x: ^f64, delta_y: ^f64) ---

    @(link_name = "gdk_scroll_event_get_unit")
    gdk_scroll_event_get_unit :: proc(event: ^Event) -> ScrollUnit ---

    @(link_name = "gdk_scroll_event_is_stop")
    gdk_scroll_event_is_stop :: proc(event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_key_event_get_type")
    gdk_key_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_key_event_get_keyval")
    gdk_key_event_get_keyval :: proc(event: ^Event) -> glib.uint_ ---

    @(link_name = "gdk_key_event_get_keycode")
    gdk_key_event_get_keycode :: proc(event: ^Event) -> glib.uint_ ---

    @(link_name = "gdk_key_event_get_consumed_modifiers")
    gdk_key_event_get_consumed_modifiers :: proc(event: ^Event) -> ModifierType ---

    @(link_name = "gdk_key_event_get_layout")
    gdk_key_event_get_layout :: proc(event: ^Event) -> glib.uint_ ---

    @(link_name = "gdk_key_event_get_level")
    gdk_key_event_get_level :: proc(event: ^Event) -> glib.uint_ ---

    @(link_name = "gdk_key_event_is_modifier")
    gdk_key_event_is_modifier :: proc(event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_focus_event_get_type")
    gdk_focus_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_focus_event_get_in")
    gdk_focus_event_get_in :: proc(event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_touch_event_get_type")
    gdk_touch_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_touch_event_get_emulating_pointer")
    gdk_touch_event_get_emulating_pointer :: proc(event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_crossing_event_get_type")
    gdk_crossing_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_crossing_event_get_mode")
    gdk_crossing_event_get_mode :: proc(event: ^Event) -> CrossingMode ---

    @(link_name = "gdk_crossing_event_get_detail")
    gdk_crossing_event_get_detail :: proc(event: ^Event) -> NotifyType ---

    @(link_name = "gdk_crossing_event_get_focus")
    gdk_crossing_event_get_focus :: proc(event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_touchpad_event_get_type")
    gdk_touchpad_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_touchpad_event_get_gesture_phase")
    gdk_touchpad_event_get_gesture_phase :: proc(event: ^Event) -> TouchpadGesturePhase ---

    @(link_name = "gdk_touchpad_event_get_n_fingers")
    gdk_touchpad_event_get_n_fingers :: proc(event: ^Event) -> glib.uint_ ---

    @(link_name = "gdk_touchpad_event_get_deltas")
    gdk_touchpad_event_get_deltas :: proc(event: ^Event, dx: ^f64, dy: ^f64) ---

    @(link_name = "gdk_touchpad_event_get_pinch_angle_delta")
    gdk_touchpad_event_get_pinch_angle_delta :: proc(event: ^Event) -> f64 ---

    @(link_name = "gdk_touchpad_event_get_pinch_scale")
    gdk_touchpad_event_get_pinch_scale :: proc(event: ^Event) -> f64 ---

    @(link_name = "gdk_pad_event_get_type")
    gdk_pad_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pad_event_get_button")
    gdk_pad_event_get_button :: proc(event: ^Event) -> glib.uint_ ---

    @(link_name = "gdk_pad_event_get_axis_value")
    gdk_pad_event_get_axis_value :: proc(event: ^Event, index: ^glib.uint_, value: ^f64) ---

    @(link_name = "gdk_pad_event_get_group_mode")
    gdk_pad_event_get_group_mode :: proc(event: ^Event, group: ^glib.uint_, mode: ^glib.uint_) ---

    @(link_name = "gdk_dnd_event_get_type")
    gdk_dnd_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_dnd_event_get_drop")
    gdk_dnd_event_get_drop :: proc(event: ^Event) -> ^Drop ---

    @(link_name = "gdk_grab_broken_event_get_type")
    gdk_grab_broken_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_grab_broken_event_get_grab_surface")
    gdk_grab_broken_event_get_grab_surface :: proc(event: ^Event) -> ^Surface ---

    @(link_name = "gdk_grab_broken_event_get_implicit")
    gdk_grab_broken_event_get_implicit :: proc(event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_motion_event_get_type")
    gdk_motion_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_delete_event_get_type")
    gdk_delete_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_proximity_event_get_type")
    gdk_proximity_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_event_triggers_context_menu")
    gdk_event_triggers_context_menu :: proc(event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_events_get_distance")
    gdk_events_get_distance :: proc(event1: ^Event, event2: ^Event, distance: ^f64) -> glib.boolean ---

    @(link_name = "gdk_events_get_angle")
    gdk_events_get_angle :: proc(event1: ^Event, event2: ^Event, angle: ^f64) -> glib.boolean ---

    @(link_name = "gdk_events_get_center")
    gdk_events_get_center :: proc(event1: ^Event, event2: ^Event, x: ^f64, y: ^f64) -> glib.boolean ---

    @(link_name = "gdk_key_event_matches")
    gdk_key_event_matches :: proc(event: ^Event, keyval: glib.uint_, modifiers: ModifierType) -> KeyMatch ---

    @(link_name = "gdk_key_event_get_match")
    gdk_key_event_get_match :: proc(event: ^Event, keyval: ^glib.uint_, modifiers: [^]ModifierType) -> glib.boolean ---

    @(link_name = "gdk_frame_timings_get_type")
    gdk_frame_timings_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_frame_timings_ref")
    gdk_frame_timings_ref :: proc(timings: [^]FrameTimings) -> ^FrameTimings ---

    @(link_name = "gdk_frame_timings_unref")
    gdk_frame_timings_unref :: proc(timings: [^]FrameTimings) ---

    @(link_name = "gdk_frame_timings_get_frame_counter")
    gdk_frame_timings_get_frame_counter :: proc(timings: [^]FrameTimings) -> glib.int64 ---

    @(link_name = "gdk_frame_timings_get_complete")
    gdk_frame_timings_get_complete :: proc(timings: [^]FrameTimings) -> glib.boolean ---

    @(link_name = "gdk_frame_timings_get_frame_time")
    gdk_frame_timings_get_frame_time :: proc(timings: [^]FrameTimings) -> glib.int64 ---

    @(link_name = "gdk_frame_timings_get_presentation_time")
    gdk_frame_timings_get_presentation_time :: proc(timings: [^]FrameTimings) -> glib.int64 ---

    @(link_name = "gdk_frame_timings_get_refresh_interval")
    gdk_frame_timings_get_refresh_interval :: proc(timings: [^]FrameTimings) -> glib.int64 ---

    @(link_name = "gdk_frame_timings_get_predicted_presentation_time")
    gdk_frame_timings_get_predicted_presentation_time :: proc(timings: [^]FrameTimings) -> glib.int64 ---

    @(link_name = "gdk_frame_clock_get_type")
    gdk_frame_clock_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_frame_clock_get_frame_time")
    gdk_frame_clock_get_frame_time :: proc(frame_clock: ^FrameClock) -> glib.int64 ---

    @(link_name = "gdk_frame_clock_request_phase")
    gdk_frame_clock_request_phase :: proc(frame_clock: ^FrameClock, phase: FrameClockPhase) ---

    @(link_name = "gdk_frame_clock_begin_updating")
    gdk_frame_clock_begin_updating :: proc(frame_clock: ^FrameClock) ---

    @(link_name = "gdk_frame_clock_end_updating")
    gdk_frame_clock_end_updating :: proc(frame_clock: ^FrameClock) ---

    @(link_name = "gdk_frame_clock_get_frame_counter")
    gdk_frame_clock_get_frame_counter :: proc(frame_clock: ^FrameClock) -> glib.int64 ---

    @(link_name = "gdk_frame_clock_get_history_start")
    gdk_frame_clock_get_history_start :: proc(frame_clock: ^FrameClock) -> glib.int64 ---

    @(link_name = "gdk_frame_clock_get_timings")
    gdk_frame_clock_get_timings :: proc(frame_clock: ^FrameClock, frame_counter: glib.int64) -> ^FrameTimings ---

    @(link_name = "gdk_frame_clock_get_current_timings")
    gdk_frame_clock_get_current_timings :: proc(frame_clock: ^FrameClock) -> ^FrameTimings ---

    @(link_name = "gdk_frame_clock_get_refresh_info")
    gdk_frame_clock_get_refresh_info :: proc(frame_clock: ^FrameClock, base_time: glib.int64, refresh_interval_return: ^glib.int64, presentation_time_return: ^glib.int64) ---

    @(link_name = "gdk_frame_clock_get_fps")
    gdk_frame_clock_get_fps :: proc(frame_clock: ^FrameClock) -> f64 ---

    @(link_name = "gdk_monitor_get_type")
    gdk_monitor_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_monitor_get_display")
    gdk_monitor_get_display :: proc(monitor: ^Monitor) -> ^Display ---

    @(link_name = "gdk_monitor_get_geometry")
    gdk_monitor_get_geometry :: proc(monitor: ^Monitor, geometry: ^Rectangle) ---

    @(link_name = "gdk_monitor_get_width_mm")
    gdk_monitor_get_width_mm :: proc(monitor: ^Monitor) -> i32 ---

    @(link_name = "gdk_monitor_get_height_mm")
    gdk_monitor_get_height_mm :: proc(monitor: ^Monitor) -> i32 ---

    @(link_name = "gdk_monitor_get_manufacturer")
    gdk_monitor_get_manufacturer :: proc(monitor: ^Monitor) -> cstring ---

    @(link_name = "gdk_monitor_get_model")
    gdk_monitor_get_model :: proc(monitor: ^Monitor) -> cstring ---

    @(link_name = "gdk_monitor_get_connector")
    gdk_monitor_get_connector :: proc(monitor: ^Monitor) -> cstring ---

    @(link_name = "gdk_monitor_get_scale_factor")
    gdk_monitor_get_scale_factor :: proc(monitor: ^Monitor) -> i32 ---

    @(link_name = "gdk_monitor_get_refresh_rate")
    gdk_monitor_get_refresh_rate :: proc(monitor: ^Monitor) -> i32 ---

    @(link_name = "gdk_monitor_get_subpixel_layout")
    gdk_monitor_get_subpixel_layout :: proc(monitor: ^Monitor) -> SubpixelLayout ---

    @(link_name = "gdk_monitor_is_valid")
    gdk_monitor_is_valid :: proc(monitor: ^Monitor) -> glib.boolean ---

    @(link_name = "gdk_monitor_get_description")
    gdk_monitor_get_description :: proc(monitor: ^Monitor) -> cstring ---

    @(link_name = "gdk_popup_layout_get_type")
    gdk_popup_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_popup_layout_new")
    gdk_popup_layout_new :: proc(anchor_rect: ^Rectangle, rect_anchor: Gravity, surface_anchor: Gravity) -> ^PopupLayout ---

    @(link_name = "gdk_popup_layout_ref")
    gdk_popup_layout_ref :: proc(layout: ^PopupLayout) -> ^PopupLayout ---

    @(link_name = "gdk_popup_layout_unref")
    gdk_popup_layout_unref :: proc(layout: ^PopupLayout) ---

    @(link_name = "gdk_popup_layout_copy")
    gdk_popup_layout_copy :: proc(layout: ^PopupLayout) -> ^PopupLayout ---

    @(link_name = "gdk_popup_layout_equal")
    gdk_popup_layout_equal :: proc(layout: ^PopupLayout, other: ^PopupLayout) -> glib.boolean ---

    @(link_name = "gdk_popup_layout_set_anchor_rect")
    gdk_popup_layout_set_anchor_rect :: proc(layout: ^PopupLayout, anchor_rect: ^Rectangle) ---

    @(link_name = "gdk_popup_layout_get_anchor_rect")
    gdk_popup_layout_get_anchor_rect :: proc(layout: ^PopupLayout) -> ^Rectangle ---

    @(link_name = "gdk_popup_layout_set_rect_anchor")
    gdk_popup_layout_set_rect_anchor :: proc(layout: ^PopupLayout, anchor: Gravity) ---

    @(link_name = "gdk_popup_layout_get_rect_anchor")
    gdk_popup_layout_get_rect_anchor :: proc(layout: ^PopupLayout) -> Gravity ---

    @(link_name = "gdk_popup_layout_set_surface_anchor")
    gdk_popup_layout_set_surface_anchor :: proc(layout: ^PopupLayout, anchor: Gravity) ---

    @(link_name = "gdk_popup_layout_get_surface_anchor")
    gdk_popup_layout_get_surface_anchor :: proc(layout: ^PopupLayout) -> Gravity ---

    @(link_name = "gdk_popup_layout_set_anchor_hints")
    gdk_popup_layout_set_anchor_hints :: proc(layout: ^PopupLayout, anchor_hints: AnchorHints) ---

    @(link_name = "gdk_popup_layout_get_anchor_hints")
    gdk_popup_layout_get_anchor_hints :: proc(layout: ^PopupLayout) -> AnchorHints ---

    @(link_name = "gdk_popup_layout_set_offset")
    gdk_popup_layout_set_offset :: proc(layout: ^PopupLayout, dx: i32, dy: i32) ---

    @(link_name = "gdk_popup_layout_get_offset")
    gdk_popup_layout_get_offset :: proc(layout: ^PopupLayout, dx: ^i32, dy: ^i32) ---

    @(link_name = "gdk_popup_layout_set_shadow_width")
    gdk_popup_layout_set_shadow_width :: proc(layout: ^PopupLayout, left: i32, right: i32, top: i32, bottom: i32) ---

    @(link_name = "gdk_popup_layout_get_shadow_width")
    gdk_popup_layout_get_shadow_width :: proc(layout: ^PopupLayout, left: ^i32, right: ^i32, top: ^i32, bottom: ^i32) ---

    @(link_name = "gdk_surface_get_type")
    gdk_surface_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_surface_new_toplevel")
    gdk_surface_new_toplevel :: proc(display: ^Display) -> ^Surface ---

    @(link_name = "gdk_surface_new_popup")
    gdk_surface_new_popup :: proc(parent: ^Surface, autohide: glib.boolean) -> ^Surface ---

    @(link_name = "gdk_surface_destroy")
    gdk_surface_destroy :: proc(surface: ^Surface) ---

    @(link_name = "gdk_surface_is_destroyed")
    gdk_surface_is_destroyed :: proc(surface: ^Surface) -> glib.boolean ---

    @(link_name = "gdk_surface_get_display")
    gdk_surface_get_display :: proc(surface: ^Surface) -> ^Display ---

    @(link_name = "gdk_surface_hide")
    gdk_surface_hide :: proc(surface: ^Surface) ---

    @(link_name = "gdk_surface_set_input_region")
    gdk_surface_set_input_region :: proc(surface: ^Surface, region: ^cairo.region_t) ---

    @(link_name = "gdk_surface_get_mapped")
    gdk_surface_get_mapped :: proc(surface: ^Surface) -> glib.boolean ---

    @(link_name = "gdk_surface_set_cursor")
    gdk_surface_set_cursor :: proc(surface: ^Surface, cursor: ^Cursor) ---

    @(link_name = "gdk_surface_get_cursor")
    gdk_surface_get_cursor :: proc(surface: ^Surface) -> ^Cursor ---

    @(link_name = "gdk_surface_set_device_cursor")
    gdk_surface_set_device_cursor :: proc(surface: ^Surface, device: ^Device, cursor: ^Cursor) ---

    @(link_name = "gdk_surface_get_device_cursor")
    gdk_surface_get_device_cursor :: proc(surface: ^Surface, device: ^Device) -> ^Cursor ---

    @(link_name = "gdk_surface_get_width")
    gdk_surface_get_width :: proc(surface: ^Surface) -> i32 ---

    @(link_name = "gdk_surface_get_height")
    gdk_surface_get_height :: proc(surface: ^Surface) -> i32 ---

    @(link_name = "gdk_surface_translate_coordinates")
    gdk_surface_translate_coordinates :: proc(from: ^Surface, to: ^Surface, x: ^f64, y: ^f64) -> glib.boolean ---

    @(link_name = "gdk_surface_get_scale_factor")
    gdk_surface_get_scale_factor :: proc(surface: ^Surface) -> i32 ---

    @(link_name = "gdk_surface_get_scale")
    gdk_surface_get_scale :: proc(surface: ^Surface) -> f64 ---

    @(link_name = "gdk_surface_get_device_position")
    gdk_surface_get_device_position :: proc(surface: ^Surface, device: ^Device, x: ^f64, y: ^f64, mask: ^ModifierType) -> glib.boolean ---

    @(link_name = "gdk_surface_create_similar_surface")
    gdk_surface_create_similar_surface :: proc(surface: ^Surface, content: cairo.content_t, width: i32, height: i32) -> ^cairo.surface_t ---

    @(link_name = "gdk_surface_beep")
    gdk_surface_beep :: proc(surface: ^Surface) ---

    @(link_name = "gdk_surface_queue_render")
    gdk_surface_queue_render :: proc(surface: ^Surface) ---

    @(link_name = "gdk_surface_request_layout")
    gdk_surface_request_layout :: proc(surface: ^Surface) ---

    @(link_name = "gdk_surface_get_frame_clock")
    gdk_surface_get_frame_clock :: proc(surface: ^Surface) -> ^FrameClock ---

    @(link_name = "gdk_surface_set_opaque_region")
    gdk_surface_set_opaque_region :: proc(surface: ^Surface, region: ^cairo.region_t) ---

    @(link_name = "gdk_surface_create_cairo_context")
    gdk_surface_create_cairo_context :: proc(surface: ^Surface) -> ^CairoContext ---

    @(link_name = "gdk_surface_create_gl_context")
    gdk_surface_create_gl_context :: proc(surface: ^Surface, error: ^^glib.Error) -> ^GLContext ---

    @(link_name = "gdk_surface_create_vulkan_context")
    gdk_surface_create_vulkan_context :: proc(surface: ^Surface, error: ^^glib.Error) -> ^VulkanContext ---

    @(link_name = "gdk_seat_get_type")
    gdk_seat_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_seat_get_display")
    gdk_seat_get_display :: proc(seat: ^Seat) -> ^Display ---

    @(link_name = "gdk_seat_get_capabilities")
    gdk_seat_get_capabilities :: proc(seat: ^Seat) -> SeatCapabilities ---

    @(link_name = "gdk_seat_get_devices")
    gdk_seat_get_devices :: proc(seat: ^Seat, capabilities: SeatCapabilities) -> ^glib.List ---

    @(link_name = "gdk_seat_get_tools")
    gdk_seat_get_tools :: proc(seat: ^Seat) -> ^glib.List ---

    @(link_name = "gdk_seat_get_pointer")
    gdk_seat_get_pointer :: proc(seat: ^Seat) -> ^Device ---

    @(link_name = "gdk_seat_get_keyboard")
    gdk_seat_get_keyboard :: proc(seat: ^Seat) -> ^Device ---

    @(link_name = "gdk_display_get_type")
    gdk_display_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_display_open")
    gdk_display_open :: proc(display_name: cstring) -> ^Display ---

    @(link_name = "gdk_display_get_name")
    gdk_display_get_name :: proc(display: ^Display) -> cstring ---

    @(link_name = "gdk_display_device_is_grabbed")
    gdk_display_device_is_grabbed :: proc(display: ^Display, device: ^Device) -> glib.boolean ---

    @(link_name = "gdk_display_beep")
    gdk_display_beep :: proc(display: ^Display) ---

    @(link_name = "gdk_display_sync")
    gdk_display_sync :: proc(display: ^Display) ---

    @(link_name = "gdk_display_flush")
    gdk_display_flush :: proc(display: ^Display) ---

    @(link_name = "gdk_display_close")
    gdk_display_close :: proc(display: ^Display) ---

    @(link_name = "gdk_display_is_closed")
    gdk_display_is_closed :: proc(display: ^Display) -> glib.boolean ---

    @(link_name = "gdk_display_is_composited")
    gdk_display_is_composited :: proc(display: ^Display) -> glib.boolean ---

    @(link_name = "gdk_display_is_rgba")
    gdk_display_is_rgba :: proc(display: ^Display) -> glib.boolean ---

    @(link_name = "gdk_display_supports_input_shapes")
    gdk_display_supports_input_shapes :: proc(display: ^Display) -> glib.boolean ---

    @(link_name = "gdk_display_prepare_gl")
    gdk_display_prepare_gl :: proc(self: ^Display, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_display_create_gl_context")
    gdk_display_create_gl_context :: proc(self: ^Display, error: ^^glib.Error) -> ^GLContext ---

    @(link_name = "gdk_display_get_default")
    gdk_display_get_default :: proc() -> ^Display ---

    @(link_name = "gdk_display_get_clipboard")
    gdk_display_get_clipboard :: proc(display: ^Display) -> ^Clipboard ---

    @(link_name = "gdk_display_get_primary_clipboard")
    gdk_display_get_primary_clipboard :: proc(display: ^Display) -> ^Clipboard ---

    @(link_name = "gdk_display_notify_startup_complete")
    gdk_display_notify_startup_complete :: proc(display: ^Display, startup_id: cstring) ---

    @(link_name = "gdk_display_get_startup_notification_id")
    gdk_display_get_startup_notification_id :: proc(display: ^Display) -> cstring ---

    @(link_name = "gdk_display_get_app_launch_context")
    gdk_display_get_app_launch_context :: proc(display: ^Display) -> ^AppLaunchContext ---

    @(link_name = "gdk_display_get_default_seat")
    gdk_display_get_default_seat :: proc(display: ^Display) -> ^Seat ---

    @(link_name = "gdk_display_list_seats")
    gdk_display_list_seats :: proc(display: ^Display) -> ^glib.List ---

    @(link_name = "gdk_display_get_monitors")
    gdk_display_get_monitors :: proc(self: ^Display) -> ^gio.ListModel ---

    @(link_name = "gdk_display_get_monitor_at_surface")
    gdk_display_get_monitor_at_surface :: proc(display: ^Display, surface: ^Surface) -> ^Monitor ---

    @(link_name = "gdk_display_put_event")
    gdk_display_put_event :: proc(display: ^Display, event: ^Event) ---

    @(link_name = "gdk_display_map_keyval")
    gdk_display_map_keyval :: proc(display: ^Display, keyval: glib.uint_, keys: [^]^KeymapKey, n_keys: [^]i32) -> glib.boolean ---

    @(link_name = "gdk_display_map_keycode")
    gdk_display_map_keycode :: proc(display: ^Display, keycode: glib.uint_, keys: [^]^KeymapKey, keyvals: [^]^glib.uint_, n_entries: [^]i32) -> glib.boolean ---

    @(link_name = "gdk_display_translate_key")
    gdk_display_translate_key :: proc(display: ^Display, keycode: glib.uint_, state: ModifierType, group: i32, keyval: ^glib.uint_, effective_group: ^i32, level: ^i32, consumed: ^ModifierType) -> glib.boolean ---

    @(link_name = "gdk_display_get_setting")
    gdk_display_get_setting :: proc(display: ^Display, name: cstring, value: ^gobj.Value) -> glib.boolean ---

    @(link_name = "gdk_display_manager_get_type")
    gdk_display_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_display_manager_get")
    gdk_display_manager_get :: proc() -> ^DisplayManager ---

    @(link_name = "gdk_display_manager_get_default_display")
    gdk_display_manager_get_default_display :: proc(manager: ^DisplayManager) -> ^Display ---

    @(link_name = "gdk_display_manager_set_default_display")
    gdk_display_manager_set_default_display :: proc(manager: ^DisplayManager, display: ^Display) ---

    @(link_name = "gdk_display_manager_list_displays")
    gdk_display_manager_list_displays :: proc(manager: ^DisplayManager) -> ^glib.SList ---

    @(link_name = "gdk_display_manager_open_display")
    gdk_display_manager_open_display :: proc(manager: ^DisplayManager, name: cstring) -> ^Display ---

    @(link_name = "gdk_set_allowed_backends")
    gdk_set_allowed_backends :: proc(backends: cstring) ---

    @(link_name = "gdk_drag_surface_get_type")
    gdk_drag_surface_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_drag_surface_present")
    gdk_drag_surface_present :: proc(drag_surface: ^DragSurface, width: i32, height: i32) -> glib.boolean ---

    @(link_name = "gdk_drag_surface_size_get_type")
    gdk_drag_surface_size_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_drag_surface_size_set_size")
    gdk_drag_surface_size_set_size :: proc(size_p: ^DragSurfaceSize, width: i32, height: i32) ---

    @(link_name = "gdk_draw_context_get_type")
    gdk_draw_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_draw_context_get_display")
    gdk_draw_context_get_display :: proc(context_p: ^DrawContext) -> ^Display ---

    @(link_name = "gdk_draw_context_get_surface")
    gdk_draw_context_get_surface :: proc(context_p: ^DrawContext) -> ^Surface ---

    @(link_name = "gdk_draw_context_begin_frame")
    gdk_draw_context_begin_frame :: proc(context_p: ^DrawContext, region: ^cairo.region_t) ---

    @(link_name = "gdk_draw_context_end_frame")
    gdk_draw_context_end_frame :: proc(context_p: ^DrawContext) ---

    @(link_name = "gdk_draw_context_is_in_frame")
    gdk_draw_context_is_in_frame :: proc(context_p: ^DrawContext) -> glib.boolean ---

    @(link_name = "gdk_draw_context_get_frame_region")
    gdk_draw_context_get_frame_region :: proc(context_p: ^DrawContext) -> ^cairo.region_t ---

    @(link_name = "gdk_drop_get_type")
    gdk_drop_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_drop_get_display")
    gdk_drop_get_display :: proc(self: ^Drop) -> ^Display ---

    @(link_name = "gdk_drop_get_device")
    gdk_drop_get_device :: proc(self: ^Drop) -> ^Device ---

    @(link_name = "gdk_drop_get_surface")
    gdk_drop_get_surface :: proc(self: ^Drop) -> ^Surface ---

    @(link_name = "gdk_drop_get_formats")
    gdk_drop_get_formats :: proc(self: ^Drop) -> ^ContentFormats ---

    @(link_name = "gdk_drop_get_actions")
    gdk_drop_get_actions :: proc(self: ^Drop) -> DragAction ---

    @(link_name = "gdk_drop_get_drag")
    gdk_drop_get_drag :: proc(self: ^Drop) -> ^Drag ---

    @(link_name = "gdk_drop_status")
    gdk_drop_status :: proc(self: ^Drop, actions: DragAction, preferred: DragAction) ---

    @(link_name = "gdk_drop_finish")
    gdk_drop_finish :: proc(self: ^Drop, action: DragAction) ---

    @(link_name = "gdk_drop_read_async")
    gdk_drop_read_async :: proc(self: ^Drop, mime_types: [^]cstring, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_drop_read_finish")
    gdk_drop_read_finish :: proc(self: ^Drop, result: ^gio.AsyncResult, out_mime_type: ^cstring, error: ^^glib.Error) -> ^gio.InputStream ---

    @(link_name = "gdk_drop_read_value_async")
    gdk_drop_read_value_async :: proc(self: ^Drop, type: gobj.Type, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_drop_read_value_finish")
    gdk_drop_read_value_finish :: proc(self: ^Drop, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gobj.Value ---

    @(link_name = "gdk_input_source_get_type")
    gdk_input_source_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_device_pad_feature_get_type")
    gdk_device_pad_feature_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_device_tool_type_get_type")
    gdk_device_tool_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_drag_cancel_reason_get_type")
    gdk_drag_cancel_reason_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_gl_api_get_type")
    gdk_gl_api_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_gravity_get_type")
    gdk_gravity_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_modifier_type_get_type")
    gdk_modifier_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_gl_error_get_type")
    gdk_gl_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_vulkan_error_get_type")
    gdk_vulkan_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_axis_use_get_type")
    gdk_axis_use_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_axis_flags_get_type")
    gdk_axis_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_drag_action_get_type")
    gdk_drag_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_memory_format_get_type")
    gdk_memory_format_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_event_type_get_type")
    gdk_event_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_touchpad_gesture_phase_get_type")
    gdk_touchpad_gesture_phase_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_scroll_direction_get_type")
    gdk_scroll_direction_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_scroll_unit_get_type")
    gdk_scroll_unit_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_notify_type_get_type")
    gdk_notify_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_crossing_mode_get_type")
    gdk_crossing_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_key_match_get_type")
    gdk_key_match_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_frame_clock_phase_get_type")
    gdk_frame_clock_phase_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_subpixel_layout_get_type")
    gdk_subpixel_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_paintable_flags_get_type")
    gdk_paintable_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_anchor_hints_get_type")
    gdk_anchor_hints_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_seat_capabilities_get_type")
    gdk_seat_capabilities_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_texture_error_get_type")
    gdk_texture_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_surface_edge_get_type")
    gdk_surface_edge_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_fullscreen_mode_get_type")
    gdk_fullscreen_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_toplevel_state_get_type")
    gdk_toplevel_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_titlebar_gesture_get_type")
    gdk_titlebar_gesture_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_gl_error_quark")
    gdk_gl_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gdk_gl_context_get_type")
    gdk_gl_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_gl_context_get_display")
    gdk_gl_context_get_display :: proc(context_p: ^GLContext) -> ^Display ---

    @(link_name = "gdk_gl_context_get_surface")
    gdk_gl_context_get_surface :: proc(context_p: ^GLContext) -> ^Surface ---

    @(link_name = "gdk_gl_context_get_shared_context")
    gdk_gl_context_get_shared_context :: proc(context_p: ^GLContext) -> ^GLContext ---

    @(link_name = "gdk_gl_context_get_version")
    gdk_gl_context_get_version :: proc(context_p: ^GLContext, major: ^i32, minor: ^i32) ---

    @(link_name = "gdk_gl_context_is_legacy")
    gdk_gl_context_is_legacy :: proc(context_p: ^GLContext) -> glib.boolean ---

    @(link_name = "gdk_gl_context_is_shared")
    gdk_gl_context_is_shared :: proc(self: ^GLContext, other: ^GLContext) -> glib.boolean ---

    @(link_name = "gdk_gl_context_set_required_version")
    gdk_gl_context_set_required_version :: proc(context_p: ^GLContext, major: i32, minor: i32) ---

    @(link_name = "gdk_gl_context_get_required_version")
    gdk_gl_context_get_required_version :: proc(context_p: ^GLContext, major: ^i32, minor: ^i32) ---

    @(link_name = "gdk_gl_context_set_debug_enabled")
    gdk_gl_context_set_debug_enabled :: proc(context_p: ^GLContext, enabled: glib.boolean) ---

    @(link_name = "gdk_gl_context_get_debug_enabled")
    gdk_gl_context_get_debug_enabled :: proc(context_p: ^GLContext) -> glib.boolean ---

    @(link_name = "gdk_gl_context_set_forward_compatible")
    gdk_gl_context_set_forward_compatible :: proc(context_p: ^GLContext, compatible: glib.boolean) ---

    @(link_name = "gdk_gl_context_get_forward_compatible")
    gdk_gl_context_get_forward_compatible :: proc(context_p: ^GLContext) -> glib.boolean ---

    @(link_name = "gdk_gl_context_set_allowed_apis")
    gdk_gl_context_set_allowed_apis :: proc(self: ^GLContext, apis: GLAPI) ---

    @(link_name = "gdk_gl_context_get_allowed_apis")
    gdk_gl_context_get_allowed_apis :: proc(self: ^GLContext) -> GLAPI ---

    @(link_name = "gdk_gl_context_get_api")
    gdk_gl_context_get_api :: proc(self: ^GLContext) -> GLAPI ---

    @(link_name = "gdk_gl_context_set_use_es")
    gdk_gl_context_set_use_es :: proc(context_p: ^GLContext, use_es: i32) ---

    @(link_name = "gdk_gl_context_get_use_es")
    gdk_gl_context_get_use_es :: proc(context_p: ^GLContext) -> glib.boolean ---

    @(link_name = "gdk_gl_context_realize")
    gdk_gl_context_realize :: proc(context_p: ^GLContext, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_gl_context_make_current")
    gdk_gl_context_make_current :: proc(context_p: ^GLContext) ---

    @(link_name = "gdk_gl_context_get_current")
    gdk_gl_context_get_current :: proc() -> ^GLContext ---

    @(link_name = "gdk_gl_context_clear_current")
    gdk_gl_context_clear_current :: proc() ---

    @(link_name = "gdk_texture_error_quark")
    gdk_texture_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gdk_texture_get_type")
    gdk_texture_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_texture_new_for_pixbuf")
    gdk_texture_new_for_pixbuf :: proc(pixbuf: ^gdk.Pixbuf) -> ^Texture ---

    @(link_name = "gdk_texture_new_from_resource")
    gdk_texture_new_from_resource :: proc(resource_path: cstring) -> ^Texture ---

    @(link_name = "gdk_texture_new_from_file")
    gdk_texture_new_from_file :: proc(file: ^gio.File, error: ^^glib.Error) -> ^Texture ---

    @(link_name = "gdk_texture_new_from_filename")
    gdk_texture_new_from_filename :: proc(path: cstring, error: ^^glib.Error) -> ^Texture ---

    @(link_name = "gdk_texture_new_from_bytes")
    gdk_texture_new_from_bytes :: proc(bytes: [^]glib.Bytes, error: ^^glib.Error) -> ^Texture ---

    @(link_name = "gdk_texture_get_width")
    gdk_texture_get_width :: proc(texture: ^Texture) -> i32 ---

    @(link_name = "gdk_texture_get_height")
    gdk_texture_get_height :: proc(texture: ^Texture) -> i32 ---

    @(link_name = "gdk_texture_get_format")
    gdk_texture_get_format :: proc(self: ^Texture) -> MemoryFormat ---

    @(link_name = "gdk_texture_download")
    gdk_texture_download :: proc(texture: ^Texture, data: ^glib.uchar, stride: glib.size) ---

    @(link_name = "gdk_texture_save_to_png")
    gdk_texture_save_to_png :: proc(texture: ^Texture, filename: cstring) -> glib.boolean ---

    @(link_name = "gdk_texture_save_to_png_bytes")
    gdk_texture_save_to_png_bytes :: proc(texture: ^Texture) -> ^glib.Bytes ---

    @(link_name = "gdk_texture_save_to_tiff")
    gdk_texture_save_to_tiff :: proc(texture: ^Texture, filename: cstring) -> glib.boolean ---

    @(link_name = "gdk_texture_save_to_tiff_bytes")
    gdk_texture_save_to_tiff_bytes :: proc(texture: ^Texture) -> ^glib.Bytes ---

    @(link_name = "gdk_gl_texture_get_type")
    gdk_gl_texture_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_gl_texture_new")
    gdk_gl_texture_new :: proc(context_p: ^GLContext, id: glib.uint_, width: i32, height: i32, destroy: glib.DestroyNotify, data: glib.pointer) -> ^Texture ---

    @(link_name = "gdk_gl_texture_release")
    gdk_gl_texture_release :: proc(self: ^GLTexture) ---

    @(link_name = "gdk_gl_texture_builder_get_type")
    gdk_gl_texture_builder_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_gl_texture_builder_new")
    gdk_gl_texture_builder_new :: proc() -> ^GLTextureBuilder ---

    @(link_name = "gdk_gl_texture_builder_get_context")
    gdk_gl_texture_builder_get_context :: proc(self: ^GLTextureBuilder) -> ^GLContext ---

    @(link_name = "gdk_gl_texture_builder_set_context")
    gdk_gl_texture_builder_set_context :: proc(self: ^GLTextureBuilder, context_p: ^GLContext) ---

    @(link_name = "gdk_gl_texture_builder_get_id")
    gdk_gl_texture_builder_get_id :: proc(self: ^GLTextureBuilder) -> glib.uint_ ---

    @(link_name = "gdk_gl_texture_builder_set_id")
    gdk_gl_texture_builder_set_id :: proc(self: ^GLTextureBuilder, id: glib.uint_) ---

    @(link_name = "gdk_gl_texture_builder_get_width")
    gdk_gl_texture_builder_get_width :: proc(self: ^GLTextureBuilder) -> i32 ---

    @(link_name = "gdk_gl_texture_builder_set_width")
    gdk_gl_texture_builder_set_width :: proc(self: ^GLTextureBuilder, width: i32) ---

    @(link_name = "gdk_gl_texture_builder_get_height")
    gdk_gl_texture_builder_get_height :: proc(self: ^GLTextureBuilder) -> i32 ---

    @(link_name = "gdk_gl_texture_builder_set_height")
    gdk_gl_texture_builder_set_height :: proc(self: ^GLTextureBuilder, height: i32) ---

    @(link_name = "gdk_gl_texture_builder_get_format")
    gdk_gl_texture_builder_get_format :: proc(self: ^GLTextureBuilder) -> MemoryFormat ---

    @(link_name = "gdk_gl_texture_builder_set_format")
    gdk_gl_texture_builder_set_format :: proc(self: ^GLTextureBuilder, format: MemoryFormat) ---

    @(link_name = "gdk_gl_texture_builder_get_has_mipmap")
    gdk_gl_texture_builder_get_has_mipmap :: proc(self: ^GLTextureBuilder) -> glib.boolean ---

    @(link_name = "gdk_gl_texture_builder_set_has_mipmap")
    gdk_gl_texture_builder_set_has_mipmap :: proc(self: ^GLTextureBuilder, has_mipmap: glib.boolean) ---

    @(link_name = "gdk_gl_texture_builder_get_sync")
    gdk_gl_texture_builder_get_sync :: proc(self: ^GLTextureBuilder) -> glib.pointer ---

    @(link_name = "gdk_gl_texture_builder_set_sync")
    gdk_gl_texture_builder_set_sync :: proc(self: ^GLTextureBuilder, sync: glib.pointer) ---

    @(link_name = "gdk_gl_texture_builder_get_update_texture")
    gdk_gl_texture_builder_get_update_texture :: proc(self: ^GLTextureBuilder) -> ^Texture ---

    @(link_name = "gdk_gl_texture_builder_set_update_texture")
    gdk_gl_texture_builder_set_update_texture :: proc(self: ^GLTextureBuilder, texture: ^Texture) ---

    @(link_name = "gdk_gl_texture_builder_get_update_region")
    gdk_gl_texture_builder_get_update_region :: proc(self: ^GLTextureBuilder) -> ^cairo.region_t ---

    @(link_name = "gdk_gl_texture_builder_set_update_region")
    gdk_gl_texture_builder_set_update_region :: proc(self: ^GLTextureBuilder, region: ^cairo.region_t) ---

    @(link_name = "gdk_gl_texture_builder_build")
    gdk_gl_texture_builder_build :: proc(self: ^GLTextureBuilder, destroy: glib.DestroyNotify, data: glib.pointer) -> ^Texture ---

    @(link_name = "gdk_keyval_name")
    gdk_keyval_name :: proc(keyval: glib.uint_) -> cstring ---

    @(link_name = "gdk_keyval_from_name")
    gdk_keyval_from_name :: proc(keyval_name: cstring) -> glib.uint_ ---

    @(link_name = "gdk_keyval_convert_case")
    gdk_keyval_convert_case :: proc(symbol: glib.uint_, lower: ^glib.uint_, upper: ^glib.uint_) ---

    @(link_name = "gdk_keyval_to_upper")
    gdk_keyval_to_upper :: proc(keyval: glib.uint_) -> glib.uint_ ---

    @(link_name = "gdk_keyval_to_lower")
    gdk_keyval_to_lower :: proc(keyval: glib.uint_) -> glib.uint_ ---

    @(link_name = "gdk_keyval_is_upper")
    gdk_keyval_is_upper :: proc(keyval: glib.uint_) -> glib.boolean ---

    @(link_name = "gdk_keyval_is_lower")
    gdk_keyval_is_lower :: proc(keyval: glib.uint_) -> glib.boolean ---

    @(link_name = "gdk_keyval_to_unicode")
    gdk_keyval_to_unicode :: proc(keyval: glib.uint_) -> glib.uint32 ---

    @(link_name = "gdk_unicode_to_keyval")
    gdk_unicode_to_keyval :: proc(wc: glib.uint32) -> glib.uint_ ---

    @(link_name = "gdk_memory_texture_get_type")
    gdk_memory_texture_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_memory_texture_new")
    gdk_memory_texture_new :: proc(width: i32, height: i32, format: MemoryFormat, bytes: [^]glib.Bytes, stride: glib.size) -> ^Texture ---

    @(link_name = "gdk_paintable_get_type")
    gdk_paintable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_paintable_snapshot")
    gdk_paintable_snapshot :: proc(paintable: ^Paintable, snapshot: ^Snapshot, width: f64, height: f64) ---

    @(link_name = "gdk_paintable_get_current_image")
    gdk_paintable_get_current_image :: proc(paintable: ^Paintable) -> ^Paintable ---

    @(link_name = "gdk_paintable_get_flags")
    gdk_paintable_get_flags :: proc(paintable: ^Paintable) -> PaintableFlags ---

    @(link_name = "gdk_paintable_get_intrinsic_width")
    gdk_paintable_get_intrinsic_width :: proc(paintable: ^Paintable) -> i32 ---

    @(link_name = "gdk_paintable_get_intrinsic_height")
    gdk_paintable_get_intrinsic_height :: proc(paintable: ^Paintable) -> i32 ---

    @(link_name = "gdk_paintable_get_intrinsic_aspect_ratio")
    gdk_paintable_get_intrinsic_aspect_ratio :: proc(paintable: ^Paintable) -> f64 ---

    @(link_name = "gdk_paintable_compute_concrete_size")
    gdk_paintable_compute_concrete_size :: proc(paintable: ^Paintable, specified_width: f64, specified_height: f64, default_width: f64, default_height: f64, concrete_width: ^f64, concrete_height: ^f64) ---

    @(link_name = "gdk_paintable_invalidate_contents")
    gdk_paintable_invalidate_contents :: proc(paintable: ^Paintable) ---

    @(link_name = "gdk_paintable_invalidate_size")
    gdk_paintable_invalidate_size :: proc(paintable: ^Paintable) ---

    @(link_name = "gdk_paintable_new_empty")
    gdk_paintable_new_empty :: proc(intrinsic_width: i32, intrinsic_height: i32) -> ^Paintable ---

    @(link_name = "gdk_pango_layout_line_get_clip_region")
    gdk_pango_layout_line_get_clip_region :: proc(line: ^pango.LayoutLine, x_origin: i32, y_origin: i32, index_ranges: [^]i32, n_ranges: i32) -> ^cairo.region_t ---

    @(link_name = "gdk_pango_layout_get_clip_region")
    gdk_pango_layout_get_clip_region :: proc(layout: ^pango.Layout, x_origin: i32, y_origin: i32, index_ranges: [^]i32, n_ranges: i32) -> ^cairo.region_t ---

    @(link_name = "gdk_popup_get_type")
    gdk_popup_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_popup_present")
    gdk_popup_present :: proc(popup: ^Popup, width: i32, height: i32, layout: ^PopupLayout) -> glib.boolean ---

    @(link_name = "gdk_popup_get_surface_anchor")
    gdk_popup_get_surface_anchor :: proc(popup: ^Popup) -> Gravity ---

    @(link_name = "gdk_popup_get_rect_anchor")
    gdk_popup_get_rect_anchor :: proc(popup: ^Popup) -> Gravity ---

    @(link_name = "gdk_popup_get_parent")
    gdk_popup_get_parent :: proc(popup: ^Popup) -> ^Surface ---

    @(link_name = "gdk_popup_get_position_x")
    gdk_popup_get_position_x :: proc(popup: ^Popup) -> i32 ---

    @(link_name = "gdk_popup_get_position_y")
    gdk_popup_get_position_y :: proc(popup: ^Popup) -> i32 ---

    @(link_name = "gdk_popup_get_autohide")
    gdk_popup_get_autohide :: proc(popup: ^Popup) -> glib.boolean ---

    @(link_name = "gdk_rectangle_intersect")
    gdk_rectangle_intersect :: proc(src1: ^Rectangle, src2: ^Rectangle, dest: ^Rectangle) -> glib.boolean ---

    @(link_name = "gdk_rectangle_union")
    gdk_rectangle_union :: proc(src1: ^Rectangle, src2: ^Rectangle, dest: ^Rectangle) ---

    @(link_name = "gdk_rectangle_equal")
    gdk_rectangle_equal :: proc(rect1: ^Rectangle, rect2: ^Rectangle) -> glib.boolean ---

    @(link_name = "gdk_rectangle_contains_point")
    gdk_rectangle_contains_point :: proc(rect: ^Rectangle, x: i32, y: i32) -> glib.boolean ---

    @(link_name = "gdk_rectangle_get_type")
    gdk_rectangle_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_rgba_get_type")
    gdk_rgba_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_rgba_copy")
    gdk_rgba_copy :: proc(rgba: ^RGBA) -> ^RGBA ---

    @(link_name = "gdk_rgba_free")
    gdk_rgba_free :: proc(rgba: ^RGBA) ---

    @(link_name = "gdk_rgba_is_clear")
    gdk_rgba_is_clear :: proc(rgba: ^RGBA) -> glib.boolean ---

    @(link_name = "gdk_rgba_is_opaque")
    gdk_rgba_is_opaque :: proc(rgba: ^RGBA) -> glib.boolean ---

    @(link_name = "gdk_rgba_hash")
    gdk_rgba_hash :: proc(p: glib.constpointer) -> glib.uint_ ---

    @(link_name = "gdk_rgba_equal")
    gdk_rgba_equal :: proc(p1: glib.constpointer, p2: glib.constpointer) -> glib.boolean ---

    @(link_name = "gdk_rgba_parse")
    gdk_rgba_parse :: proc(rgba: ^RGBA, spec: cstring) -> glib.boolean ---

    @(link_name = "gdk_rgba_to_string")
    gdk_rgba_to_string :: proc(rgba: ^RGBA) -> cstring ---

    @(link_name = "gdk_snapshot_get_type")
    gdk_snapshot_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_texture_downloader_get_type")
    gdk_texture_downloader_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_texture_downloader_new")
    gdk_texture_downloader_new :: proc(texture: ^Texture) -> ^TextureDownloader ---

    @(link_name = "gdk_texture_downloader_copy")
    gdk_texture_downloader_copy :: proc(self: ^TextureDownloader) -> ^TextureDownloader ---

    @(link_name = "gdk_texture_downloader_free")
    gdk_texture_downloader_free :: proc(self: ^TextureDownloader) ---

    @(link_name = "gdk_texture_downloader_set_texture")
    gdk_texture_downloader_set_texture :: proc(self: ^TextureDownloader, texture: ^Texture) ---

    @(link_name = "gdk_texture_downloader_get_texture")
    gdk_texture_downloader_get_texture :: proc(self: ^TextureDownloader) -> ^Texture ---

    @(link_name = "gdk_texture_downloader_set_format")
    gdk_texture_downloader_set_format :: proc(self: ^TextureDownloader, format: MemoryFormat) ---

    @(link_name = "gdk_texture_downloader_get_format")
    gdk_texture_downloader_get_format :: proc(self: ^TextureDownloader) -> MemoryFormat ---

    @(link_name = "gdk_texture_downloader_download_into")
    gdk_texture_downloader_download_into :: proc(self: ^TextureDownloader, data: ^glib.uchar, stride: glib.size) ---

    @(link_name = "gdk_texture_downloader_download_bytes")
    gdk_texture_downloader_download_bytes :: proc(self: ^TextureDownloader, out_stride: ^glib.size) -> ^glib.Bytes ---

    @(link_name = "gdk_toplevel_layout_get_type")
    gdk_toplevel_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_toplevel_layout_new")
    gdk_toplevel_layout_new :: proc() -> ^ToplevelLayout ---

    @(link_name = "gdk_toplevel_layout_ref")
    gdk_toplevel_layout_ref :: proc(layout: ^ToplevelLayout) -> ^ToplevelLayout ---

    @(link_name = "gdk_toplevel_layout_unref")
    gdk_toplevel_layout_unref :: proc(layout: ^ToplevelLayout) ---

    @(link_name = "gdk_toplevel_layout_copy")
    gdk_toplevel_layout_copy :: proc(layout: ^ToplevelLayout) -> ^ToplevelLayout ---

    @(link_name = "gdk_toplevel_layout_equal")
    gdk_toplevel_layout_equal :: proc(layout: ^ToplevelLayout, other: ^ToplevelLayout) -> glib.boolean ---

    @(link_name = "gdk_toplevel_layout_set_maximized")
    gdk_toplevel_layout_set_maximized :: proc(layout: ^ToplevelLayout, maximized: glib.boolean) ---

    @(link_name = "gdk_toplevel_layout_set_fullscreen")
    gdk_toplevel_layout_set_fullscreen :: proc(layout: ^ToplevelLayout, fullscreen: glib.boolean, monitor: ^Monitor) ---

    @(link_name = "gdk_toplevel_layout_get_maximized")
    gdk_toplevel_layout_get_maximized :: proc(layout: ^ToplevelLayout, maximized: ^glib.boolean) -> glib.boolean ---

    @(link_name = "gdk_toplevel_layout_get_fullscreen")
    gdk_toplevel_layout_get_fullscreen :: proc(layout: ^ToplevelLayout, fullscreen: ^glib.boolean) -> glib.boolean ---

    @(link_name = "gdk_toplevel_layout_get_fullscreen_monitor")
    gdk_toplevel_layout_get_fullscreen_monitor :: proc(layout: ^ToplevelLayout) -> ^Monitor ---

    @(link_name = "gdk_toplevel_layout_set_resizable")
    gdk_toplevel_layout_set_resizable :: proc(layout: ^ToplevelLayout, resizable: glib.boolean) ---

    @(link_name = "gdk_toplevel_layout_get_resizable")
    gdk_toplevel_layout_get_resizable :: proc(layout: ^ToplevelLayout) -> glib.boolean ---

    @(link_name = "gdk_toplevel_get_type")
    gdk_toplevel_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_toplevel_present")
    gdk_toplevel_present :: proc(toplevel: ^Toplevel, layout: ^ToplevelLayout) ---

    @(link_name = "gdk_toplevel_minimize")
    gdk_toplevel_minimize :: proc(toplevel: ^Toplevel) -> glib.boolean ---

    @(link_name = "gdk_toplevel_lower")
    gdk_toplevel_lower :: proc(toplevel: ^Toplevel) -> glib.boolean ---

    @(link_name = "gdk_toplevel_focus")
    gdk_toplevel_focus :: proc(toplevel: ^Toplevel, timestamp: glib.uint32) ---

    @(link_name = "gdk_toplevel_get_state")
    gdk_toplevel_get_state :: proc(toplevel: ^Toplevel) -> ToplevelState ---

    @(link_name = "gdk_toplevel_set_title")
    gdk_toplevel_set_title :: proc(toplevel: ^Toplevel, title: cstring) ---

    @(link_name = "gdk_toplevel_set_startup_id")
    gdk_toplevel_set_startup_id :: proc(toplevel: ^Toplevel, startup_id: cstring) ---

    @(link_name = "gdk_toplevel_set_transient_for")
    gdk_toplevel_set_transient_for :: proc(toplevel: ^Toplevel, parent: ^Surface) ---

    @(link_name = "gdk_toplevel_set_modal")
    gdk_toplevel_set_modal :: proc(toplevel: ^Toplevel, modal: glib.boolean) ---

    @(link_name = "gdk_toplevel_set_icon_list")
    gdk_toplevel_set_icon_list :: proc(toplevel: ^Toplevel, surfaces: [^]glib.List) ---

    @(link_name = "gdk_toplevel_show_window_menu")
    gdk_toplevel_show_window_menu :: proc(toplevel: ^Toplevel, event: ^Event) -> glib.boolean ---

    @(link_name = "gdk_toplevel_set_decorated")
    gdk_toplevel_set_decorated :: proc(toplevel: ^Toplevel, decorated: glib.boolean) ---

    @(link_name = "gdk_toplevel_set_deletable")
    gdk_toplevel_set_deletable :: proc(toplevel: ^Toplevel, deletable: glib.boolean) ---

    @(link_name = "gdk_toplevel_supports_edge_constraints")
    gdk_toplevel_supports_edge_constraints :: proc(toplevel: ^Toplevel) -> glib.boolean ---

    @(link_name = "gdk_toplevel_inhibit_system_shortcuts")
    gdk_toplevel_inhibit_system_shortcuts :: proc(toplevel: ^Toplevel, event: ^Event) ---

    @(link_name = "gdk_toplevel_restore_system_shortcuts")
    gdk_toplevel_restore_system_shortcuts :: proc(toplevel: ^Toplevel) ---

    @(link_name = "gdk_toplevel_begin_resize")
    gdk_toplevel_begin_resize :: proc(toplevel: ^Toplevel, edge: SurfaceEdge, device: ^Device, button: i32, x: f64, y: f64, timestamp: glib.uint32) ---

    @(link_name = "gdk_toplevel_begin_move")
    gdk_toplevel_begin_move :: proc(toplevel: ^Toplevel, device: ^Device, button: i32, x: f64, y: f64, timestamp: glib.uint32) ---

    @(link_name = "gdk_toplevel_titlebar_gesture")
    gdk_toplevel_titlebar_gesture :: proc(toplevel: ^Toplevel, gesture: TitlebarGesture) -> glib.boolean ---

    @(link_name = "gdk_toplevel_size_get_type")
    gdk_toplevel_size_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_toplevel_size_get_bounds")
    gdk_toplevel_size_get_bounds :: proc(size_p: ^ToplevelSize, bounds_width: ^i32, bounds_height: ^i32) ---

    @(link_name = "gdk_toplevel_size_set_size")
    gdk_toplevel_size_set_size :: proc(size_p: ^ToplevelSize, width: i32, height: i32) ---

    @(link_name = "gdk_toplevel_size_set_min_size")
    gdk_toplevel_size_set_min_size :: proc(size_p: ^ToplevelSize, min_width: i32, min_height: i32) ---

    @(link_name = "gdk_toplevel_size_set_shadow_width")
    gdk_toplevel_size_set_shadow_width :: proc(size_p: ^ToplevelSize, left: i32, right: i32, top: i32, bottom: i32) ---

    @(link_name = "gdk_vulkan_error_quark")
    gdk_vulkan_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gdk_vulkan_context_get_type")
    gdk_vulkan_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_rounded_rect_init")
    gsk_rounded_rect_init :: proc(self: ^RoundedRect, bounds: [^]graphene.rect_t, top_left: ^graphene.size_t, top_right: ^graphene.size_t, bottom_right: ^graphene.size_t, bottom_left: ^graphene.size_t) -> ^RoundedRect ---

    @(link_name = "gsk_rounded_rect_init_copy")
    gsk_rounded_rect_init_copy :: proc(self: ^RoundedRect, src: ^RoundedRect) -> ^RoundedRect ---

    @(link_name = "gsk_rounded_rect_init_from_rect")
    gsk_rounded_rect_init_from_rect :: proc(self: ^RoundedRect, bounds: [^]graphene.rect_t, radius: f32) -> ^RoundedRect ---

    @(link_name = "gsk_rounded_rect_normalize")
    gsk_rounded_rect_normalize :: proc(self: ^RoundedRect) -> ^RoundedRect ---

    @(link_name = "gsk_rounded_rect_offset")
    gsk_rounded_rect_offset :: proc(self: ^RoundedRect, dx: f32, dy: f32) -> ^RoundedRect ---

    @(link_name = "gsk_rounded_rect_shrink")
    gsk_rounded_rect_shrink :: proc(self: ^RoundedRect, top: f32, right: f32, bottom: f32, left: f32) -> ^RoundedRect ---

    @(link_name = "gsk_rounded_rect_is_rectilinear")
    gsk_rounded_rect_is_rectilinear :: proc(self: ^RoundedRect) -> glib.boolean ---

    @(link_name = "gsk_rounded_rect_contains_point")
    gsk_rounded_rect_contains_point :: proc(self: ^RoundedRect, point: ^graphene.point_t) -> glib.boolean ---

    @(link_name = "gsk_rounded_rect_contains_rect")
    gsk_rounded_rect_contains_rect :: proc(self: ^RoundedRect, rect: ^graphene.rect_t) -> glib.boolean ---

    @(link_name = "gsk_rounded_rect_intersects_rect")
    gsk_rounded_rect_intersects_rect :: proc(self: ^RoundedRect, rect: ^graphene.rect_t) -> glib.boolean ---

    @(link_name = "gsk_gl_shader_get_type")
    gsk_gl_shader_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_gl_shader_new_from_bytes")
    gsk_gl_shader_new_from_bytes :: proc(sourcecode: ^glib.Bytes) -> ^GLShader ---

    @(link_name = "gsk_gl_shader_new_from_resource")
    gsk_gl_shader_new_from_resource :: proc(resource_path: cstring) -> ^GLShader ---

    @(link_name = "gsk_gl_shader_compile")
    gsk_gl_shader_compile :: proc(shader: ^GLShader, renderer: ^Renderer, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gsk_gl_shader_get_source")
    gsk_gl_shader_get_source :: proc(shader: ^GLShader) -> ^glib.Bytes ---

    @(link_name = "gsk_gl_shader_get_resource")
    gsk_gl_shader_get_resource :: proc(shader: ^GLShader) -> cstring ---

    @(link_name = "gsk_gl_shader_get_n_textures")
    gsk_gl_shader_get_n_textures :: proc(shader: ^GLShader) -> i32 ---

    @(link_name = "gsk_gl_shader_get_n_uniforms")
    gsk_gl_shader_get_n_uniforms :: proc(shader: ^GLShader) -> i32 ---

    @(link_name = "gsk_gl_shader_get_uniform_name")
    gsk_gl_shader_get_uniform_name :: proc(shader: ^GLShader, idx: i32) -> cstring ---

    @(link_name = "gsk_gl_shader_find_uniform_by_name")
    gsk_gl_shader_find_uniform_by_name :: proc(shader: ^GLShader, name: cstring) -> i32 ---

    @(link_name = "gsk_gl_shader_get_uniform_type")
    gsk_gl_shader_get_uniform_type :: proc(shader: ^GLShader, idx: i32) -> GLUniformType ---

    @(link_name = "gsk_gl_shader_get_uniform_offset")
    gsk_gl_shader_get_uniform_offset :: proc(shader: ^GLShader, idx: i32) -> i32 ---

    @(link_name = "gsk_gl_shader_get_args_size")
    gsk_gl_shader_get_args_size :: proc(shader: ^GLShader) -> glib.size ---

    @(link_name = "gsk_gl_shader_format_args_va")
    gsk_gl_shader_format_args_va :: proc(shader: ^GLShader, #c_vararg var_args: ..any) -> ^glib.Bytes ---

    @(link_name = "gsk_gl_shader_format_args")
    gsk_gl_shader_format_args :: proc(shader: ^GLShader, #c_vararg var_args: ..any) -> ^glib.Bytes ---

    @(link_name = "gsk_gl_shader_get_arg_float")
    gsk_gl_shader_get_arg_float :: proc(shader: ^GLShader, args: [^]glib.Bytes, idx: i32) -> f32 ---

    @(link_name = "gsk_gl_shader_get_arg_int")
    gsk_gl_shader_get_arg_int :: proc(shader: ^GLShader, args: [^]glib.Bytes, idx: i32) -> glib.int32 ---

    @(link_name = "gsk_gl_shader_get_arg_uint")
    gsk_gl_shader_get_arg_uint :: proc(shader: ^GLShader, args: [^]glib.Bytes, idx: i32) -> glib.uint32 ---

    @(link_name = "gsk_gl_shader_get_arg_bool")
    gsk_gl_shader_get_arg_bool :: proc(shader: ^GLShader, args: [^]glib.Bytes, idx: i32) -> glib.boolean ---

    @(link_name = "gsk_gl_shader_get_arg_vec2")
    gsk_gl_shader_get_arg_vec2 :: proc(shader: ^GLShader, args: [^]glib.Bytes, idx: i32, out_value: ^graphene.vec2_t) ---

    @(link_name = "gsk_gl_shader_get_arg_vec3")
    gsk_gl_shader_get_arg_vec3 :: proc(shader: ^GLShader, args: [^]glib.Bytes, idx: i32, out_value: ^graphene.vec3_t) ---

    @(link_name = "gsk_gl_shader_get_arg_vec4")
    gsk_gl_shader_get_arg_vec4 :: proc(shader: ^GLShader, args: [^]glib.Bytes, idx: i32, out_value: ^graphene.vec4_t) ---

    @(link_name = "gsk_shader_args_builder_get_type")
    gsk_shader_args_builder_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_shader_args_builder_new")
    gsk_shader_args_builder_new :: proc(shader: ^GLShader, initial_values: [^]glib.Bytes) -> ^ShaderArgsBuilder ---

    @(link_name = "gsk_shader_args_builder_to_args")
    gsk_shader_args_builder_to_args :: proc(builder: ^ShaderArgsBuilder) -> ^glib.Bytes ---

    @(link_name = "gsk_shader_args_builder_free_to_args")
    gsk_shader_args_builder_free_to_args :: proc(builder: ^ShaderArgsBuilder) -> ^glib.Bytes ---

    @(link_name = "gsk_shader_args_builder_ref")
    gsk_shader_args_builder_ref :: proc(builder: ^ShaderArgsBuilder) -> ^ShaderArgsBuilder ---

    @(link_name = "gsk_shader_args_builder_unref")
    gsk_shader_args_builder_unref :: proc(builder: ^ShaderArgsBuilder) ---

    @(link_name = "gsk_shader_args_builder_set_float")
    gsk_shader_args_builder_set_float :: proc(builder: ^ShaderArgsBuilder, idx: i32, value: f32) ---

    @(link_name = "gsk_shader_args_builder_set_int")
    gsk_shader_args_builder_set_int :: proc(builder: ^ShaderArgsBuilder, idx: i32, value: glib.int32) ---

    @(link_name = "gsk_shader_args_builder_set_uint")
    gsk_shader_args_builder_set_uint :: proc(builder: ^ShaderArgsBuilder, idx: i32, value: glib.uint32) ---

    @(link_name = "gsk_shader_args_builder_set_bool")
    gsk_shader_args_builder_set_bool :: proc(builder: ^ShaderArgsBuilder, idx: i32, value: glib.boolean) ---

    @(link_name = "gsk_shader_args_builder_set_vec2")
    gsk_shader_args_builder_set_vec2 :: proc(builder: ^ShaderArgsBuilder, idx: i32, value: ^graphene.vec2_t) ---

    @(link_name = "gsk_shader_args_builder_set_vec3")
    gsk_shader_args_builder_set_vec3 :: proc(builder: ^ShaderArgsBuilder, idx: i32, value: ^graphene.vec3_t) ---

    @(link_name = "gsk_shader_args_builder_set_vec4")
    gsk_shader_args_builder_set_vec4 :: proc(builder: ^ShaderArgsBuilder, idx: i32, value: ^graphene.vec4_t) ---

    @(link_name = "gsk_render_node_get_type")
    gsk_render_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_serialization_error_quark")
    gsk_serialization_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gsk_render_node_ref")
    gsk_render_node_ref :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_render_node_unref")
    gsk_render_node_unref :: proc(node: ^RenderNode) ---

    @(link_name = "gsk_render_node_get_node_type")
    gsk_render_node_get_node_type :: proc(node: ^RenderNode) -> RenderNodeType ---

    @(link_name = "gsk_render_node_get_bounds")
    gsk_render_node_get_bounds :: proc(node: ^RenderNode, bounds: [^]graphene.rect_t) ---

    @(link_name = "gsk_render_node_draw")
    gsk_render_node_draw :: proc(node: ^RenderNode, cr: ^cairo.context_t) ---

    @(link_name = "gsk_render_node_serialize")
    gsk_render_node_serialize :: proc(node: ^RenderNode) -> ^glib.Bytes ---

    @(link_name = "gsk_render_node_write_to_file")
    gsk_render_node_write_to_file :: proc(node: ^RenderNode, filename: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gsk_render_node_deserialize")
    gsk_render_node_deserialize :: proc(bytes: [^]glib.Bytes, error_func: ParseErrorFunc, user_data: glib.pointer) -> ^RenderNode ---

    @(link_name = "gsk_debug_node_get_type")
    gsk_debug_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_debug_node_new")
    gsk_debug_node_new :: proc(child: ^RenderNode, message: cstring) -> ^RenderNode ---

    @(link_name = "gsk_debug_node_get_child")
    gsk_debug_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_debug_node_get_message")
    gsk_debug_node_get_message :: proc(node: ^RenderNode) -> cstring ---

    @(link_name = "gsk_color_node_get_type")
    gsk_color_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_color_node_new")
    gsk_color_node_new :: proc(rgba: ^RGBA, bounds: [^]graphene.rect_t) -> ^RenderNode ---

    @(link_name = "gsk_color_node_get_color")
    gsk_color_node_get_color :: proc(node: ^RenderNode) -> ^RGBA ---

    @(link_name = "gsk_texture_node_get_type")
    gsk_texture_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_texture_node_new")
    gsk_texture_node_new :: proc(texture: ^Texture, bounds: [^]graphene.rect_t) -> ^RenderNode ---

    @(link_name = "gsk_texture_node_get_texture")
    gsk_texture_node_get_texture :: proc(node: ^RenderNode) -> ^Texture ---

    @(link_name = "gsk_texture_scale_node_get_type")
    gsk_texture_scale_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_texture_scale_node_new")
    gsk_texture_scale_node_new :: proc(texture: ^Texture, bounds: [^]graphene.rect_t, filter: ScalingFilter) -> ^RenderNode ---

    @(link_name = "gsk_texture_scale_node_get_texture")
    gsk_texture_scale_node_get_texture :: proc(node: ^RenderNode) -> ^Texture ---

    @(link_name = "gsk_texture_scale_node_get_filter")
    gsk_texture_scale_node_get_filter :: proc(node: ^RenderNode) -> ScalingFilter ---

    @(link_name = "gsk_linear_gradient_node_get_type")
    gsk_linear_gradient_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_linear_gradient_node_new")
    gsk_linear_gradient_node_new :: proc(bounds: [^]graphene.rect_t, start: ^graphene.point_t, end: ^graphene.point_t, color_stops: [^]ColorStop, n_color_stops: glib.size) -> ^RenderNode ---

    @(link_name = "gsk_linear_gradient_node_get_start")
    gsk_linear_gradient_node_get_start :: proc(node: ^RenderNode) -> ^graphene.point_t ---

    @(link_name = "gsk_linear_gradient_node_get_end")
    gsk_linear_gradient_node_get_end :: proc(node: ^RenderNode) -> ^graphene.point_t ---

    @(link_name = "gsk_linear_gradient_node_get_n_color_stops")
    gsk_linear_gradient_node_get_n_color_stops :: proc(node: ^RenderNode) -> glib.size ---

    @(link_name = "gsk_linear_gradient_node_get_color_stops")
    gsk_linear_gradient_node_get_color_stops :: proc(node: ^RenderNode, n_stops: [^]glib.size) -> ^ColorStop ---

    @(link_name = "gsk_repeating_linear_gradient_node_get_type")
    gsk_repeating_linear_gradient_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_repeating_linear_gradient_node_new")
    gsk_repeating_linear_gradient_node_new :: proc(bounds: [^]graphene.rect_t, start: ^graphene.point_t, end: ^graphene.point_t, color_stops: [^]ColorStop, n_color_stops: glib.size) -> ^RenderNode ---

    @(link_name = "gsk_conic_gradient_node_get_type")
    gsk_conic_gradient_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_conic_gradient_node_new")
    gsk_conic_gradient_node_new :: proc(bounds: [^]graphene.rect_t, center: ^graphene.point_t, rotation: f32, color_stops: [^]ColorStop, n_color_stops: glib.size) -> ^RenderNode ---

    @(link_name = "gsk_conic_gradient_node_get_center")
    gsk_conic_gradient_node_get_center :: proc(node: ^RenderNode) -> ^graphene.point_t ---

    @(link_name = "gsk_conic_gradient_node_get_rotation")
    gsk_conic_gradient_node_get_rotation :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_conic_gradient_node_get_angle")
    gsk_conic_gradient_node_get_angle :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_conic_gradient_node_get_n_color_stops")
    gsk_conic_gradient_node_get_n_color_stops :: proc(node: ^RenderNode) -> glib.size ---

    @(link_name = "gsk_conic_gradient_node_get_color_stops")
    gsk_conic_gradient_node_get_color_stops :: proc(node: ^RenderNode, n_stops: [^]glib.size) -> ^ColorStop ---

    @(link_name = "gsk_radial_gradient_node_get_type")
    gsk_radial_gradient_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_radial_gradient_node_new")
    gsk_radial_gradient_node_new :: proc(bounds: [^]graphene.rect_t, center: ^graphene.point_t, hradius: f32, vradius: f32, start: f32, end: f32, color_stops: [^]ColorStop, n_color_stops: glib.size) -> ^RenderNode ---

    @(link_name = "gsk_radial_gradient_node_get_n_color_stops")
    gsk_radial_gradient_node_get_n_color_stops :: proc(node: ^RenderNode) -> glib.size ---

    @(link_name = "gsk_radial_gradient_node_get_color_stops")
    gsk_radial_gradient_node_get_color_stops :: proc(node: ^RenderNode, n_stops: [^]glib.size) -> ^ColorStop ---

    @(link_name = "gsk_radial_gradient_node_get_center")
    gsk_radial_gradient_node_get_center :: proc(node: ^RenderNode) -> ^graphene.point_t ---

    @(link_name = "gsk_radial_gradient_node_get_hradius")
    gsk_radial_gradient_node_get_hradius :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_radial_gradient_node_get_vradius")
    gsk_radial_gradient_node_get_vradius :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_radial_gradient_node_get_start")
    gsk_radial_gradient_node_get_start :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_radial_gradient_node_get_end")
    gsk_radial_gradient_node_get_end :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_repeating_radial_gradient_node_get_type")
    gsk_repeating_radial_gradient_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_repeating_radial_gradient_node_new")
    gsk_repeating_radial_gradient_node_new :: proc(bounds: [^]graphene.rect_t, center: ^graphene.point_t, hradius: f32, vradius: f32, start: f32, end: f32, color_stops: [^]ColorStop, n_color_stops: glib.size) -> ^RenderNode ---

    @(link_name = "gsk_border_node_get_type")
    gsk_border_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_border_node_new")
    gsk_border_node_new :: proc(outline: ^RoundedRect, border_width: [4]f32, border_color: [4]RGBA) -> ^RenderNode ---

    @(link_name = "gsk_border_node_get_outline")
    gsk_border_node_get_outline :: proc(node: ^RenderNode) -> ^RoundedRect ---

    @(link_name = "gsk_border_node_get_widths")
    gsk_border_node_get_widths :: proc(node: ^RenderNode) -> ^f32 ---

    @(link_name = "gsk_border_node_get_colors")
    gsk_border_node_get_colors :: proc(node: ^RenderNode) -> ^RGBA ---

    @(link_name = "gsk_inset_shadow_node_get_type")
    gsk_inset_shadow_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_inset_shadow_node_new")
    gsk_inset_shadow_node_new :: proc(outline: ^RoundedRect, color: ^RGBA, dx: f32, dy: f32, spread: f32, blur_radius: f32) -> ^RenderNode ---

    @(link_name = "gsk_inset_shadow_node_get_outline")
    gsk_inset_shadow_node_get_outline :: proc(node: ^RenderNode) -> ^RoundedRect ---

    @(link_name = "gsk_inset_shadow_node_get_color")
    gsk_inset_shadow_node_get_color :: proc(node: ^RenderNode) -> ^RGBA ---

    @(link_name = "gsk_inset_shadow_node_get_dx")
    gsk_inset_shadow_node_get_dx :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_inset_shadow_node_get_dy")
    gsk_inset_shadow_node_get_dy :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_inset_shadow_node_get_spread")
    gsk_inset_shadow_node_get_spread :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_inset_shadow_node_get_blur_radius")
    gsk_inset_shadow_node_get_blur_radius :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_outset_shadow_node_get_type")
    gsk_outset_shadow_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_outset_shadow_node_new")
    gsk_outset_shadow_node_new :: proc(outline: ^RoundedRect, color: ^RGBA, dx: f32, dy: f32, spread: f32, blur_radius: f32) -> ^RenderNode ---

    @(link_name = "gsk_outset_shadow_node_get_outline")
    gsk_outset_shadow_node_get_outline :: proc(node: ^RenderNode) -> ^RoundedRect ---

    @(link_name = "gsk_outset_shadow_node_get_color")
    gsk_outset_shadow_node_get_color :: proc(node: ^RenderNode) -> ^RGBA ---

    @(link_name = "gsk_outset_shadow_node_get_dx")
    gsk_outset_shadow_node_get_dx :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_outset_shadow_node_get_dy")
    gsk_outset_shadow_node_get_dy :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_outset_shadow_node_get_spread")
    gsk_outset_shadow_node_get_spread :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_outset_shadow_node_get_blur_radius")
    gsk_outset_shadow_node_get_blur_radius :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_cairo_node_get_type")
    gsk_cairo_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_cairo_node_new")
    gsk_cairo_node_new :: proc(bounds: [^]graphene.rect_t) -> ^RenderNode ---

    @(link_name = "gsk_cairo_node_get_draw_context")
    gsk_cairo_node_get_draw_context :: proc(node: ^RenderNode) -> ^cairo.context_t ---

    @(link_name = "gsk_cairo_node_get_surface")
    gsk_cairo_node_get_surface :: proc(node: ^RenderNode) -> ^cairo.surface_t ---

    @(link_name = "gsk_container_node_get_type")
    gsk_container_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_container_node_new")
    gsk_container_node_new :: proc(children: ^^RenderNode, n_children: glib.uint_) -> ^RenderNode ---

    @(link_name = "gsk_container_node_get_n_children")
    gsk_container_node_get_n_children :: proc(node: ^RenderNode) -> glib.uint_ ---

    @(link_name = "gsk_container_node_get_child")
    gsk_container_node_get_child :: proc(node: ^RenderNode, idx: glib.uint_) -> ^RenderNode ---

    @(link_name = "gsk_transform_node_get_type")
    gsk_transform_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_transform_node_new")
    gsk_transform_node_new :: proc(child: ^RenderNode, transform: ^Transform) -> ^RenderNode ---

    @(link_name = "gsk_transform_node_get_child")
    gsk_transform_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_transform_node_get_transform")
    gsk_transform_node_get_transform :: proc(node: ^RenderNode) -> ^Transform ---

    @(link_name = "gsk_opacity_node_get_type")
    gsk_opacity_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_opacity_node_new")
    gsk_opacity_node_new :: proc(child: ^RenderNode, opacity: f32) -> ^RenderNode ---

    @(link_name = "gsk_opacity_node_get_child")
    gsk_opacity_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_opacity_node_get_opacity")
    gsk_opacity_node_get_opacity :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_color_matrix_node_get_type")
    gsk_color_matrix_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_color_matrix_node_new")
    gsk_color_matrix_node_new :: proc(child: ^RenderNode, color_matrix: ^graphene.matrix_t, color_offset: ^graphene.vec4_t) -> ^RenderNode ---

    @(link_name = "gsk_color_matrix_node_get_child")
    gsk_color_matrix_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_color_matrix_node_get_color_matrix")
    gsk_color_matrix_node_get_color_matrix :: proc(node: ^RenderNode) -> ^graphene.matrix_t ---

    @(link_name = "gsk_color_matrix_node_get_color_offset")
    gsk_color_matrix_node_get_color_offset :: proc(node: ^RenderNode) -> ^graphene.vec4_t ---

    @(link_name = "gsk_repeat_node_get_type")
    gsk_repeat_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_repeat_node_new")
    gsk_repeat_node_new :: proc(bounds: [^]graphene.rect_t, child: ^RenderNode, child_bounds: [^]graphene.rect_t) -> ^RenderNode ---

    @(link_name = "gsk_repeat_node_get_child")
    gsk_repeat_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_repeat_node_get_child_bounds")
    gsk_repeat_node_get_child_bounds :: proc(node: ^RenderNode) -> ^graphene.rect_t ---

    @(link_name = "gsk_clip_node_get_type")
    gsk_clip_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_clip_node_new")
    gsk_clip_node_new :: proc(child: ^RenderNode, clip: ^graphene.rect_t) -> ^RenderNode ---

    @(link_name = "gsk_clip_node_get_child")
    gsk_clip_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_clip_node_get_clip")
    gsk_clip_node_get_clip :: proc(node: ^RenderNode) -> ^graphene.rect_t ---

    @(link_name = "gsk_rounded_clip_node_get_type")
    gsk_rounded_clip_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_rounded_clip_node_new")
    gsk_rounded_clip_node_new :: proc(child: ^RenderNode, clip: ^RoundedRect) -> ^RenderNode ---

    @(link_name = "gsk_rounded_clip_node_get_child")
    gsk_rounded_clip_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_rounded_clip_node_get_clip")
    gsk_rounded_clip_node_get_clip :: proc(node: ^RenderNode) -> ^RoundedRect ---

    @(link_name = "gsk_shadow_node_get_type")
    gsk_shadow_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_shadow_node_new")
    gsk_shadow_node_new :: proc(child: ^RenderNode, shadows: [^]Shadow, n_shadows: glib.size) -> ^RenderNode ---

    @(link_name = "gsk_shadow_node_get_child")
    gsk_shadow_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_shadow_node_get_shadow")
    gsk_shadow_node_get_shadow :: proc(node: ^RenderNode, i: glib.size) -> ^Shadow ---

    @(link_name = "gsk_shadow_node_get_n_shadows")
    gsk_shadow_node_get_n_shadows :: proc(node: ^RenderNode) -> glib.size ---

    @(link_name = "gsk_blend_node_get_type")
    gsk_blend_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_blend_node_new")
    gsk_blend_node_new :: proc(bottom: ^RenderNode, top: ^RenderNode, blend_mode: BlendMode) -> ^RenderNode ---

    @(link_name = "gsk_blend_node_get_bottom_child")
    gsk_blend_node_get_bottom_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_blend_node_get_top_child")
    gsk_blend_node_get_top_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_blend_node_get_blend_mode")
    gsk_blend_node_get_blend_mode :: proc(node: ^RenderNode) -> BlendMode ---

    @(link_name = "gsk_cross_fade_node_get_type")
    gsk_cross_fade_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_cross_fade_node_new")
    gsk_cross_fade_node_new :: proc(start: ^RenderNode, end: ^RenderNode, progress: f32) -> ^RenderNode ---

    @(link_name = "gsk_cross_fade_node_get_start_child")
    gsk_cross_fade_node_get_start_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_cross_fade_node_get_end_child")
    gsk_cross_fade_node_get_end_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_cross_fade_node_get_progress")
    gsk_cross_fade_node_get_progress :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_text_node_get_type")
    gsk_text_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_text_node_new")
    gsk_text_node_new :: proc(font: ^pango.Font, glyphs: [^]pango.GlyphString, color: ^RGBA, offset: ^graphene.point_t) -> ^RenderNode ---

    @(link_name = "gsk_text_node_get_font")
    gsk_text_node_get_font :: proc(node: ^RenderNode) -> ^pango.Font ---

    @(link_name = "gsk_text_node_has_color_glyphs")
    gsk_text_node_has_color_glyphs :: proc(node: ^RenderNode) -> glib.boolean ---

    @(link_name = "gsk_text_node_get_num_glyphs")
    gsk_text_node_get_num_glyphs :: proc(node: ^RenderNode) -> glib.uint_ ---

    @(link_name = "gsk_text_node_get_glyphs")
    gsk_text_node_get_glyphs :: proc(node: ^RenderNode, n_glyphs: [^]glib.uint_) -> ^pango.GlyphInfo ---

    @(link_name = "gsk_text_node_get_color")
    gsk_text_node_get_color :: proc(node: ^RenderNode) -> ^RGBA ---

    @(link_name = "gsk_text_node_get_offset")
    gsk_text_node_get_offset :: proc(node: ^RenderNode) -> ^graphene.point_t ---

    @(link_name = "gsk_blur_node_get_type")
    gsk_blur_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_blur_node_new")
    gsk_blur_node_new :: proc(child: ^RenderNode, radius: f32) -> ^RenderNode ---

    @(link_name = "gsk_blur_node_get_child")
    gsk_blur_node_get_child :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_blur_node_get_radius")
    gsk_blur_node_get_radius :: proc(node: ^RenderNode) -> f32 ---

    @(link_name = "gsk_mask_node_get_type")
    gsk_mask_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_mask_node_new")
    gsk_mask_node_new :: proc(source: ^RenderNode, mask: ^RenderNode, mask_mode: MaskMode) -> ^RenderNode ---

    @(link_name = "gsk_mask_node_get_source")
    gsk_mask_node_get_source :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_mask_node_get_mask")
    gsk_mask_node_get_mask :: proc(node: ^RenderNode) -> ^RenderNode ---

    @(link_name = "gsk_mask_node_get_mask_mode")
    gsk_mask_node_get_mask_mode :: proc(node: ^RenderNode) -> MaskMode ---

    @(link_name = "gsk_gl_shader_node_get_type")
    gsk_gl_shader_node_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_gl_shader_node_new")
    gsk_gl_shader_node_new :: proc(shader: ^GLShader, bounds: [^]graphene.rect_t, args: [^]glib.Bytes, children: ^^RenderNode, n_children: glib.uint_) -> ^RenderNode ---

    @(link_name = "gsk_gl_shader_node_get_n_children")
    gsk_gl_shader_node_get_n_children :: proc(node: ^RenderNode) -> glib.uint_ ---

    @(link_name = "gsk_gl_shader_node_get_child")
    gsk_gl_shader_node_get_child :: proc(node: ^RenderNode, idx: glib.uint_) -> ^RenderNode ---

    @(link_name = "gsk_gl_shader_node_get_args")
    gsk_gl_shader_node_get_args :: proc(node: ^RenderNode) -> ^glib.Bytes ---

    @(link_name = "gsk_gl_shader_node_get_shader")
    gsk_gl_shader_node_get_shader :: proc(node: ^RenderNode) -> ^GLShader ---

    @(link_name = "gsk_value_set_render_node")
    gsk_value_set_render_node :: proc(value: ^gobj.Value, node: ^RenderNode) ---

    @(link_name = "gsk_value_take_render_node")
    gsk_value_take_render_node :: proc(value: ^gobj.Value, node: ^RenderNode) ---

    @(link_name = "gsk_value_get_render_node")
    gsk_value_get_render_node :: proc(value: ^gobj.Value) -> ^RenderNode ---

    @(link_name = "gsk_value_dup_render_node")
    gsk_value_dup_render_node :: proc(value: ^gobj.Value) -> ^RenderNode ---

    @(link_name = "gsk_renderer_get_type")
    gsk_renderer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_renderer_new_for_surface")
    gsk_renderer_new_for_surface :: proc(surface: ^Surface) -> ^Renderer ---

    @(link_name = "gsk_renderer_get_surface")
    gsk_renderer_get_surface :: proc(renderer: ^Renderer) -> ^Surface ---

    @(link_name = "gsk_renderer_realize")
    gsk_renderer_realize :: proc(renderer: ^Renderer, surface: ^Surface, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gsk_renderer_unrealize")
    gsk_renderer_unrealize :: proc(renderer: ^Renderer) ---

    @(link_name = "gsk_renderer_is_realized")
    gsk_renderer_is_realized :: proc(renderer: ^Renderer) -> glib.boolean ---

    @(link_name = "gsk_renderer_render_texture")
    gsk_renderer_render_texture :: proc(renderer: ^Renderer, root: ^RenderNode, viewport: ^graphene.rect_t) -> ^Texture ---

    @(link_name = "gsk_renderer_render")
    gsk_renderer_render :: proc(renderer: ^Renderer, root: ^RenderNode, region: ^cairo.region_t) ---

    @(link_name = "gsk_transform_get_type")
    gsk_transform_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_transform_ref")
    gsk_transform_ref :: proc(self: ^Transform) -> ^Transform ---

    @(link_name = "gsk_transform_unref")
    gsk_transform_unref :: proc(self: ^Transform) ---

    @(link_name = "gsk_transform_print")
    gsk_transform_print :: proc(self: ^Transform, string_p: ^glib.String) ---

    @(link_name = "gsk_transform_to_string")
    gsk_transform_to_string :: proc(self: ^Transform) -> cstring ---

    @(link_name = "gsk_transform_parse")
    gsk_transform_parse :: proc(string_p: cstring, out_transform: ^^Transform) -> glib.boolean ---

    @(link_name = "gsk_transform_to_matrix")
    gsk_transform_to_matrix :: proc(self: ^Transform, out_matrix: ^graphene.matrix_t) ---

    @(link_name = "gsk_transform_to_2d")
    gsk_transform_to_2d :: proc(self: ^Transform, out_xx: ^f32, out_yx: ^f32, out_xy: ^f32, out_yy: ^f32, out_dx: ^f32, out_dy: ^f32) ---

    @(link_name = "gsk_transform_to_2d_components")
    gsk_transform_to_2d_components :: proc(self: ^Transform, out_skew_x: ^f32, out_skew_y: ^f32, out_scale_x: ^f32, out_scale_y: ^f32, out_angle: ^f32, out_dx: ^f32, out_dy: ^f32) ---

    @(link_name = "gsk_transform_to_affine")
    gsk_transform_to_affine :: proc(self: ^Transform, out_scale_x: ^f32, out_scale_y: ^f32, out_dx: ^f32, out_dy: ^f32) ---

    @(link_name = "gsk_transform_to_translate")
    gsk_transform_to_translate :: proc(self: ^Transform, out_dx: ^f32, out_dy: ^f32) ---

    @(link_name = "gsk_transform_get_category")
    gsk_transform_get_category :: proc(self: ^Transform) -> TransformCategory ---

    @(link_name = "gsk_transform_equal")
    gsk_transform_equal :: proc(first: ^Transform, second: ^Transform) -> glib.boolean ---

    @(link_name = "gsk_transform_new")
    gsk_transform_new :: proc() -> ^Transform ---

    @(link_name = "gsk_transform_transform")
    gsk_transform_transform :: proc(next: ^Transform, other: ^Transform) -> ^Transform ---

    @(link_name = "gsk_transform_invert")
    gsk_transform_invert :: proc(self: ^Transform) -> ^Transform ---

    @(link_name = "gsk_transform_matrix")
    gsk_transform_matrix :: proc(next: ^Transform, matrix_p: ^graphene.matrix_t) -> ^Transform ---

    @(link_name = "gsk_transform_translate")
    gsk_transform_translate :: proc(next: ^Transform, point: ^graphene.point_t) -> ^Transform ---

    @(link_name = "gsk_transform_translate_3d")
    gsk_transform_translate_3d :: proc(next: ^Transform, point: ^graphene.point3d_t) -> ^Transform ---

    @(link_name = "gsk_transform_skew")
    gsk_transform_skew :: proc(next: ^Transform, skew_x: f32, skew_y: f32) -> ^Transform ---

    @(link_name = "gsk_transform_rotate")
    gsk_transform_rotate :: proc(next: ^Transform, angle: f32) -> ^Transform ---

    @(link_name = "gsk_transform_rotate_3d")
    gsk_transform_rotate_3d :: proc(next: ^Transform, angle: f32, axis: [^]graphene.vec3_t) -> ^Transform ---

    @(link_name = "gsk_transform_scale")
    gsk_transform_scale :: proc(next: ^Transform, factor_x: f32, factor_y: f32) -> ^Transform ---

    @(link_name = "gsk_transform_scale_3d")
    gsk_transform_scale_3d :: proc(next: ^Transform, factor_x: f32, factor_y: f32, factor_z: f32) -> ^Transform ---

    @(link_name = "gsk_transform_perspective")
    gsk_transform_perspective :: proc(next: ^Transform, depth: f32) -> ^Transform ---

    @(link_name = "gsk_transform_transform_bounds")
    gsk_transform_transform_bounds :: proc(self: ^Transform, rect: ^graphene.rect_t, out_rect: ^graphene.rect_t) ---

    @(link_name = "gsk_transform_transform_point")
    gsk_transform_transform_point :: proc(self: ^Transform, point: ^graphene.point_t, out_point: ^graphene.point_t) ---

    @(link_name = "gsk_cairo_renderer_get_type")
    gsk_cairo_renderer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_cairo_renderer_new")
    gsk_cairo_renderer_new :: proc() -> ^Renderer ---

    @(link_name = "gsk_render_node_type_get_type")
    gsk_render_node_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_scaling_filter_get_type")
    gsk_scaling_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_blend_mode_get_type")
    gsk_blend_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_corner_get_type")
    gsk_corner_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_serialization_error_get_type")
    gsk_serialization_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_transform_category_get_type")
    gsk_transform_category_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_gl_uniform_type_get_type")
    gsk_gl_uniform_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gsk_mask_mode_get_type")
    gsk_mask_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accelerator_valid")
    accelerator_valid :: proc(keyval: glib.uint_, modifiers: ModifierType) -> glib.boolean ---

    @(link_name = "gtk_accelerator_parse")
    accelerator_parse :: proc(accelerator: cstring, accelerator_key: ^glib.uint_, accelerator_mods: [^]ModifierType) -> glib.boolean ---

    @(link_name = "gtk_accelerator_parse_with_keycode")
    accelerator_parse_with_keycode :: proc(accelerator: cstring, display: ^Display, accelerator_key: ^glib.uint_, accelerator_codes: [^]^glib.uint_, accelerator_mods: [^]ModifierType) -> glib.boolean ---

    @(link_name = "gtk_accelerator_name")
    accelerator_name :: proc(accelerator_key: glib.uint_, accelerator_mods: ModifierType) -> cstring ---

    @(link_name = "gtk_accelerator_name_with_keycode")
    accelerator_name_with_keycode :: proc(display: ^Display, accelerator_key: glib.uint_, keycode: glib.uint_, accelerator_mods: ModifierType) -> cstring ---

    @(link_name = "gtk_accelerator_get_label")
    accelerator_get_label :: proc(accelerator_key: glib.uint_, accelerator_mods: ModifierType) -> cstring ---

    @(link_name = "gtk_accelerator_get_label_with_keycode")
    accelerator_get_label_with_keycode :: proc(display: ^Display, accelerator_key: glib.uint_, keycode: glib.uint_, accelerator_mods: ModifierType) -> cstring ---

    @(link_name = "gtk_accelerator_get_default_mod_mask")
    accelerator_get_default_mod_mask :: proc() -> ModifierType ---

    @(link_name = "gtk_border_get_type")
    border_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_border_new")
    border_new :: proc() -> ^Border ---

    @(link_name = "gtk_border_copy")
    border_copy :: proc(border_: ^Border) -> ^Border ---

    @(link_name = "gtk_border_free")
    border_free :: proc(border_: ^Border) ---

    @(link_name = "gtk_shortcut_get_type")
    shortcut_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_new")
    shortcut_new :: proc(trigger: ^ShortcutTrigger, action: ^ShortcutAction) -> ^Shortcut ---

    @(link_name = "gtk_shortcut_new_with_arguments")
    shortcut_new_with_arguments :: proc(trigger: ^ShortcutTrigger, action: ^ShortcutAction, format_string: cstring, #c_vararg var_args: ..any) -> ^Shortcut ---

    @(link_name = "gtk_shortcut_get_trigger")
    shortcut_get_trigger :: proc(self: ^Shortcut) -> ^ShortcutTrigger ---

    @(link_name = "gtk_shortcut_set_trigger")
    shortcut_set_trigger :: proc(self: ^Shortcut, trigger: ^ShortcutTrigger) ---

    @(link_name = "gtk_shortcut_get_action")
    shortcut_get_action :: proc(self: ^Shortcut) -> ^ShortcutAction ---

    @(link_name = "gtk_shortcut_set_action")
    shortcut_set_action :: proc(self: ^Shortcut, action: ^ShortcutAction) ---

    @(link_name = "gtk_shortcut_get_arguments")
    shortcut_get_arguments :: proc(self: ^Shortcut) -> ^glib.Variant ---

    @(link_name = "gtk_shortcut_set_arguments")
    shortcut_set_arguments :: proc(self: ^Shortcut, args: [^]glib.Variant) ---

    @(link_name = "gtk_shortcut_action_get_type")
    shortcut_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_action_to_string")
    shortcut_action_to_string :: proc(self: ^ShortcutAction) -> cstring ---

    @(link_name = "gtk_shortcut_action_parse_string")
    shortcut_action_parse_string :: proc(string_p: cstring) -> ^ShortcutAction ---

    @(link_name = "gtk_shortcut_action_print")
    shortcut_action_print :: proc(self: ^ShortcutAction, string_p: ^glib.String) ---

    @(link_name = "gtk_shortcut_action_activate")
    shortcut_action_activate :: proc(self: ^ShortcutAction, flags: ShortcutActionFlags, widget: ^Widget, args: [^]glib.Variant) -> glib.boolean ---

    @(link_name = "gtk_nothing_action_get_type")
    nothing_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_nothing_action_get")
    nothing_action_get :: proc() -> ^ShortcutAction ---

    @(link_name = "gtk_callback_action_get_type")
    callback_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_callback_action_new")
    callback_action_new :: proc(callback: ShortcutFunc, data: glib.pointer, destroy: glib.DestroyNotify) -> ^ShortcutAction ---

    @(link_name = "gtk_mnemonic_action_get_type")
    mnemonic_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_mnemonic_action_get")
    mnemonic_action_get :: proc() -> ^ShortcutAction ---

    @(link_name = "gtk_activate_action_get_type")
    activate_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_activate_action_get")
    activate_action_get :: proc() -> ^ShortcutAction ---

    @(link_name = "gtk_signal_action_get_type")
    signal_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_signal_action_new")
    signal_action_new :: proc(signal_name: cstring) -> ^ShortcutAction ---

    @(link_name = "gtk_signal_action_get_signal_name")
    signal_action_get_signal_name :: proc(self: ^SignalAction) -> cstring ---

    @(link_name = "gtk_named_action_get_type")
    named_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_named_action_new")
    named_action_new :: proc(name: cstring) -> ^ShortcutAction ---

    @(link_name = "gtk_named_action_get_action_name")
    named_action_get_action_name :: proc(self: ^NamedAction) -> cstring ---

    @(link_name = "gtk_widget_get_type")
    widget_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_widget_unparent")
    widget_unparent :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_show")
    widget_show :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_hide")
    widget_hide :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_map")
    widget_map :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_unmap")
    widget_unmap :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_realize")
    widget_realize :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_unrealize")
    widget_unrealize :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_queue_draw")
    widget_queue_draw :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_queue_resize")
    widget_queue_resize :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_queue_allocate")
    widget_queue_allocate :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_get_frame_clock")
    widget_get_frame_clock :: proc(widget: ^Widget) -> ^FrameClock ---

    @(link_name = "gtk_widget_size_allocate")
    widget_size_allocate :: proc(widget: ^Widget, allocation: ^Allocation, baseline: i32) ---

    @(link_name = "gtk_widget_allocate")
    widget_allocate :: proc(widget: ^Widget, width: i32, height: i32, baseline: i32, transform: ^Transform) ---

    @(link_name = "gtk_widget_get_request_mode")
    widget_get_request_mode :: proc(widget: ^Widget) -> SizeRequestMode ---

    @(link_name = "gtk_widget_measure")
    widget_measure :: proc(widget: ^Widget, orientation: Orientation, for_size: i32, minimum: ^i32, natural: ^i32, minimum_baseline: ^i32, natural_baseline: ^i32) ---

    @(link_name = "gtk_widget_get_preferred_size")
    widget_get_preferred_size :: proc(widget: ^Widget, minimum_size: ^Requisition, natural_size: ^Requisition) ---

    @(link_name = "gtk_widget_set_layout_manager")
    widget_set_layout_manager :: proc(widget: ^Widget, layout_manager: ^LayoutManager) ---

    @(link_name = "gtk_widget_get_layout_manager")
    widget_get_layout_manager :: proc(widget: ^Widget) -> ^LayoutManager ---

    @(link_name = "gtk_widget_class_set_layout_manager_type")
    widget_class_set_layout_manager_type :: proc(widget_class: [^]WidgetClass, type: gobj.Type) ---

    @(link_name = "gtk_widget_class_get_layout_manager_type")
    widget_class_get_layout_manager_type :: proc(widget_class: [^]WidgetClass) -> gobj.Type ---

    @(link_name = "gtk_widget_class_add_binding")
    widget_class_add_binding :: proc(widget_class: [^]WidgetClass, keyval: glib.uint_, mods: ModifierType, callback: ShortcutFunc, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_widget_class_add_binding_signal")
    widget_class_add_binding_signal :: proc(widget_class: [^]WidgetClass, keyval: glib.uint_, mods: ModifierType, signal: cstring, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_widget_class_add_binding_action")
    widget_class_add_binding_action :: proc(widget_class: [^]WidgetClass, keyval: glib.uint_, mods: ModifierType, action_name: cstring, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_widget_class_add_shortcut")
    widget_class_add_shortcut :: proc(widget_class: [^]WidgetClass, shortcut: ^Shortcut) ---

    @(link_name = "gtk_widget_class_set_activate_signal")
    widget_class_set_activate_signal :: proc(widget_class: [^]WidgetClass, signal_id: glib.uint_) ---

    @(link_name = "gtk_widget_class_set_activate_signal_from_name")
    widget_class_set_activate_signal_from_name :: proc(widget_class: [^]WidgetClass, signal_name: cstring) ---

    @(link_name = "gtk_widget_class_get_activate_signal")
    widget_class_get_activate_signal :: proc(widget_class: [^]WidgetClass) -> glib.uint_ ---

    @(link_name = "gtk_widget_mnemonic_activate")
    widget_mnemonic_activate :: proc(widget: ^Widget, group_cycling: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_widget_activate")
    widget_activate :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_can_focus")
    widget_set_can_focus :: proc(widget: ^Widget, can_focus: glib.boolean) ---

    @(link_name = "gtk_widget_get_can_focus")
    widget_get_can_focus :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_focusable")
    widget_set_focusable :: proc(widget: ^Widget, focusable: glib.boolean) ---

    @(link_name = "gtk_widget_get_focusable")
    widget_get_focusable :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_has_focus")
    widget_has_focus :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_is_focus")
    widget_is_focus :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_has_visible_focus")
    widget_has_visible_focus :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_grab_focus")
    widget_grab_focus :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_focus_on_click")
    widget_set_focus_on_click :: proc(widget: ^Widget, focus_on_click: glib.boolean) ---

    @(link_name = "gtk_widget_get_focus_on_click")
    widget_get_focus_on_click :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_can_target")
    widget_set_can_target :: proc(widget: ^Widget, can_target: glib.boolean) ---

    @(link_name = "gtk_widget_get_can_target")
    widget_get_can_target :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_has_default")
    widget_has_default :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_receives_default")
    widget_set_receives_default :: proc(widget: ^Widget, receives_default: glib.boolean) ---

    @(link_name = "gtk_widget_get_receives_default")
    widget_get_receives_default :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_name")
    widget_set_name :: proc(widget: ^Widget, name: cstring) ---

    @(link_name = "gtk_widget_get_name")
    widget_get_name :: proc(widget: ^Widget) -> cstring ---

    @(link_name = "gtk_widget_set_state_flags")
    widget_set_state_flags :: proc(widget: ^Widget, flags: StateFlags, clear: glib.boolean) ---

    @(link_name = "gtk_widget_unset_state_flags")
    widget_unset_state_flags :: proc(widget: ^Widget, flags: StateFlags) ---

    @(link_name = "gtk_widget_get_state_flags")
    widget_get_state_flags :: proc(widget: ^Widget) -> StateFlags ---

    @(link_name = "gtk_widget_set_sensitive")
    widget_set_sensitive :: proc(widget: ^Widget, sensitive: glib.boolean) ---

    @(link_name = "gtk_widget_get_sensitive")
    widget_get_sensitive :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_is_sensitive")
    widget_is_sensitive :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_visible")
    widget_set_visible :: proc(widget: ^Widget, visible: glib.boolean) ---

    @(link_name = "gtk_widget_get_visible")
    widget_get_visible :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_is_visible")
    widget_is_visible :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_is_drawable")
    widget_is_drawable :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_get_realized")
    widget_get_realized :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_get_mapped")
    widget_get_mapped :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_parent")
    widget_set_parent :: proc(widget: ^Widget, parent: ^Widget) ---

    @(link_name = "gtk_widget_get_parent")
    widget_get_parent :: proc(widget: ^Widget) -> ^Widget ---

    @(link_name = "gtk_widget_get_root")
    widget_get_root :: proc(widget: ^Widget) -> ^Root ---

    @(link_name = "gtk_widget_get_native")
    widget_get_native :: proc(widget: ^Widget) -> ^Native ---

    @(link_name = "gtk_widget_set_child_visible")
    widget_set_child_visible :: proc(widget: ^Widget, child_visible: glib.boolean) ---

    @(link_name = "gtk_widget_get_child_visible")
    widget_get_child_visible :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_get_allocated_width")
    widget_get_allocated_width :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_get_allocated_height")
    widget_get_allocated_height :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_get_allocated_baseline")
    widget_get_allocated_baseline :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_get_allocation")
    widget_get_allocation :: proc(widget: ^Widget, allocation: ^Allocation) ---

    @(link_name = "gtk_widget_compute_transform")
    widget_compute_transform :: proc(widget: ^Widget, target: ^Widget, out_transform: ^graphene.matrix_t) -> glib.boolean ---

    @(link_name = "gtk_widget_compute_bounds")
    widget_compute_bounds :: proc(widget: ^Widget, target: ^Widget, out_bounds: [^]graphene.rect_t) -> glib.boolean ---

    @(link_name = "gtk_widget_compute_point")
    widget_compute_point :: proc(widget: ^Widget, target: ^Widget, point: ^graphene.point_t, out_point: ^graphene.point_t) -> glib.boolean ---

    @(link_name = "gtk_widget_get_width")
    widget_get_width :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_get_height")
    widget_get_height :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_get_baseline")
    widget_get_baseline :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_get_size")
    widget_get_size :: proc(widget: ^Widget, orientation: Orientation) -> i32 ---

    @(link_name = "gtk_widget_child_focus")
    widget_child_focus :: proc(widget: ^Widget, direction: DirectionType) -> glib.boolean ---

    @(link_name = "gtk_widget_keynav_failed")
    widget_keynav_failed :: proc(widget: ^Widget, direction: DirectionType) -> glib.boolean ---

    @(link_name = "gtk_widget_error_bell")
    widget_error_bell :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_set_size_request")
    widget_set_size_request :: proc(widget: ^Widget, width: i32, height: i32) ---

    @(link_name = "gtk_widget_get_size_request")
    widget_get_size_request :: proc(widget: ^Widget, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_widget_set_opacity")
    widget_set_opacity :: proc(widget: ^Widget, opacity: f64) ---

    @(link_name = "gtk_widget_get_opacity")
    widget_get_opacity :: proc(widget: ^Widget) -> f64 ---

    @(link_name = "gtk_widget_set_overflow")
    widget_set_overflow :: proc(widget: ^Widget, overflow: Overflow) ---

    @(link_name = "gtk_widget_get_overflow")
    widget_get_overflow :: proc(widget: ^Widget) -> Overflow ---

    @(link_name = "gtk_widget_get_ancestor")
    widget_get_ancestor :: proc(widget: ^Widget, widget_type: gobj.Type) -> ^Widget ---

    @(link_name = "gtk_widget_get_scale_factor")
    widget_get_scale_factor :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_get_display")
    widget_get_display :: proc(widget: ^Widget) -> ^Display ---

    @(link_name = "gtk_widget_get_settings")
    widget_get_settings :: proc(widget: ^Widget) -> ^Settings ---

    @(link_name = "gtk_widget_get_clipboard")
    widget_get_clipboard :: proc(widget: ^Widget) -> ^Clipboard ---

    @(link_name = "gtk_widget_get_primary_clipboard")
    widget_get_primary_clipboard :: proc(widget: ^Widget) -> ^Clipboard ---

    @(link_name = "gtk_widget_get_hexpand")
    widget_get_hexpand :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_hexpand")
    widget_set_hexpand :: proc(widget: ^Widget, expand: glib.boolean) ---

    @(link_name = "gtk_widget_get_hexpand_set")
    widget_get_hexpand_set :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_hexpand_set")
    widget_set_hexpand_set :: proc(widget: ^Widget, set: glib.boolean) ---

    @(link_name = "gtk_widget_get_vexpand")
    widget_get_vexpand :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_vexpand")
    widget_set_vexpand :: proc(widget: ^Widget, expand: glib.boolean) ---

    @(link_name = "gtk_widget_get_vexpand_set")
    widget_get_vexpand_set :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_set_vexpand_set")
    widget_set_vexpand_set :: proc(widget: ^Widget, set: glib.boolean) ---

    @(link_name = "gtk_widget_compute_expand")
    widget_compute_expand :: proc(widget: ^Widget, orientation: Orientation) -> glib.boolean ---

    @(link_name = "gtk_widget_get_halign")
    widget_get_halign :: proc(widget: ^Widget) -> Align ---

    @(link_name = "gtk_widget_set_halign")
    widget_set_halign :: proc(widget: ^Widget, align: Align) ---

    @(link_name = "gtk_widget_get_valign")
    widget_get_valign :: proc(widget: ^Widget) -> Align ---

    @(link_name = "gtk_widget_set_valign")
    widget_set_valign :: proc(widget: ^Widget, align: Align) ---

    @(link_name = "gtk_widget_get_margin_start")
    widget_get_margin_start :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_set_margin_start")
    widget_set_margin_start :: proc(widget: ^Widget, margin: i32) ---

    @(link_name = "gtk_widget_get_margin_end")
    widget_get_margin_end :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_set_margin_end")
    widget_set_margin_end :: proc(widget: ^Widget, margin: i32) ---

    @(link_name = "gtk_widget_get_margin_top")
    widget_get_margin_top :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_set_margin_top")
    widget_set_margin_top :: proc(widget: ^Widget, margin: i32) ---

    @(link_name = "gtk_widget_get_margin_bottom")
    widget_get_margin_bottom :: proc(widget: ^Widget) -> i32 ---

    @(link_name = "gtk_widget_set_margin_bottom")
    widget_set_margin_bottom :: proc(widget: ^Widget, margin: i32) ---

    @(link_name = "gtk_widget_is_ancestor")
    widget_is_ancestor :: proc(widget: ^Widget, ancestor: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_translate_coordinates")
    widget_translate_coordinates :: proc(src_widget: ^Widget, dest_widget: ^Widget, src_x: f64, src_y: f64, dest_x: ^f64, dest_y: ^f64) -> glib.boolean ---

    @(link_name = "gtk_widget_contains")
    widget_contains :: proc(widget: ^Widget, x: f64, y: f64) -> glib.boolean ---

    @(link_name = "gtk_widget_pick")
    widget_pick :: proc(widget: ^Widget, x: f64, y: f64, flags: PickFlags) -> ^Widget ---

    @(link_name = "gtk_widget_add_controller")
    widget_add_controller :: proc(widget: ^Widget, controller: ^EventController) ---

    @(link_name = "gtk_widget_remove_controller")
    widget_remove_controller :: proc(widget: ^Widget, controller: ^EventController) ---

    @(link_name = "gtk_widget_create_pango_context")
    widget_create_pango_context :: proc(widget: ^Widget) -> ^pango.Context ---

    @(link_name = "gtk_widget_get_pango_context")
    widget_get_pango_context :: proc(widget: ^Widget) -> ^pango.Context ---

    @(link_name = "gtk_widget_set_font_options")
    widget_set_font_options :: proc(widget: ^Widget, options: [^]cairo.font_options_t) ---

    @(link_name = "gtk_widget_get_font_options")
    widget_get_font_options :: proc(widget: ^Widget) -> ^cairo.font_options_t ---

    @(link_name = "gtk_widget_create_pango_layout")
    widget_create_pango_layout :: proc(widget: ^Widget, text: cstring) -> ^pango.Layout ---

    @(link_name = "gtk_widget_set_direction")
    widget_set_direction :: proc(widget: ^Widget, dir: TextDirection) ---

    @(link_name = "gtk_widget_get_direction")
    widget_get_direction :: proc(widget: ^Widget) -> TextDirection ---

    @(link_name = "gtk_widget_set_default_direction")
    widget_set_default_direction :: proc(dir: TextDirection) ---

    @(link_name = "gtk_widget_get_default_direction")
    widget_get_default_direction :: proc() -> TextDirection ---

    @(link_name = "gtk_widget_set_cursor")
    widget_set_cursor :: proc(widget: ^Widget, cursor: ^Cursor) ---

    @(link_name = "gtk_widget_set_cursor_from_name")
    widget_set_cursor_from_name :: proc(widget: ^Widget, name: cstring) ---

    @(link_name = "gtk_widget_get_cursor")
    widget_get_cursor :: proc(widget: ^Widget) -> ^Cursor ---

    @(link_name = "gtk_widget_list_mnemonic_labels")
    widget_list_mnemonic_labels :: proc(widget: ^Widget) -> ^glib.List ---

    @(link_name = "gtk_widget_add_mnemonic_label")
    widget_add_mnemonic_label :: proc(widget: ^Widget, label: ^Widget) ---

    @(link_name = "gtk_widget_remove_mnemonic_label")
    widget_remove_mnemonic_label :: proc(widget: ^Widget, label: ^Widget) ---

    @(link_name = "gtk_widget_trigger_tooltip_query")
    widget_trigger_tooltip_query :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_set_tooltip_text")
    widget_set_tooltip_text :: proc(widget: ^Widget, text: cstring) ---

    @(link_name = "gtk_widget_get_tooltip_text")
    widget_get_tooltip_text :: proc(widget: ^Widget) -> cstring ---

    @(link_name = "gtk_widget_set_tooltip_markup")
    widget_set_tooltip_markup :: proc(widget: ^Widget, markup: cstring) ---

    @(link_name = "gtk_widget_get_tooltip_markup")
    widget_get_tooltip_markup :: proc(widget: ^Widget) -> cstring ---

    @(link_name = "gtk_widget_set_has_tooltip")
    widget_set_has_tooltip :: proc(widget: ^Widget, has_tooltip: glib.boolean) ---

    @(link_name = "gtk_widget_get_has_tooltip")
    widget_get_has_tooltip :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_requisition_get_type")
    requisition_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_requisition_new")
    requisition_new :: proc() -> ^Requisition ---

    @(link_name = "gtk_requisition_copy")
    requisition_copy :: proc(requisition: ^Requisition) -> ^Requisition ---

    @(link_name = "gtk_requisition_free")
    requisition_free :: proc(requisition: ^Requisition) ---

    @(link_name = "gtk_widget_in_destruction")
    widget_in_destruction :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_get_style_context")
    widget_get_style_context :: proc(widget: ^Widget) -> ^StyleContext ---

    @(link_name = "gtk_widget_class_set_css_name")
    widget_class_set_css_name :: proc(widget_class: [^]WidgetClass, name: cstring) ---

    @(link_name = "gtk_widget_class_get_css_name")
    widget_class_get_css_name :: proc(widget_class: [^]WidgetClass) -> cstring ---

    @(link_name = "gtk_widget_add_tick_callback")
    widget_add_tick_callback :: proc(widget: ^Widget, callback: TickCallback, user_data: glib.pointer, notify: glib.DestroyNotify) -> glib.uint_ ---

    @(link_name = "gtk_widget_remove_tick_callback")
    widget_remove_tick_callback :: proc(widget: ^Widget, id: glib.uint_) ---

    @(link_name = "gtk_widget_init_template")
    widget_init_template :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_get_template_child")
    widget_get_template_child :: proc(widget: ^Widget, widget_type: gobj.Type, name: cstring) -> ^gobj.Object ---

    @(link_name = "gtk_widget_dispose_template")
    widget_dispose_template :: proc(widget: ^Widget, widget_type: gobj.Type) ---

    @(link_name = "gtk_widget_class_set_template")
    widget_class_set_template :: proc(widget_class: [^]WidgetClass, template_bytes: [^]glib.Bytes) ---

    @(link_name = "gtk_widget_class_set_template_from_resource")
    widget_class_set_template_from_resource :: proc(widget_class: [^]WidgetClass, resource_name: cstring) ---

    @(link_name = "gtk_widget_class_bind_template_callback_full")
    widget_class_bind_template_callback_full :: proc(widget_class: [^]WidgetClass, callback_name: cstring, callback_symbol: gobj.Callback) ---

    @(link_name = "gtk_widget_class_set_template_scope")
    widget_class_set_template_scope :: proc(widget_class: [^]WidgetClass, scope: ^BuilderScope) ---

    @(link_name = "gtk_widget_class_bind_template_child_full")
    widget_class_bind_template_child_full :: proc(widget_class: [^]WidgetClass, name: cstring, internal_child: glib.boolean, struct_offset: glib.ssize) ---

    @(link_name = "gtk_widget_insert_action_group")
    widget_insert_action_group :: proc(widget: ^Widget, name: cstring, group: ^gio.ActionGroup) ---

    @(link_name = "gtk_widget_activate_action")
    widget_activate_action :: proc(widget: ^Widget, name: cstring, format_string: cstring, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "gtk_widget_activate_action_variant")
    widget_activate_action_variant :: proc(widget: ^Widget, name: cstring, args: [^]glib.Variant) -> glib.boolean ---

    @(link_name = "gtk_widget_activate_default")
    widget_activate_default :: proc(widget: ^Widget) ---

    @(link_name = "gtk_widget_set_font_map")
    widget_set_font_map :: proc(widget: ^Widget, font_map: ^pango.FontMap) ---

    @(link_name = "gtk_widget_get_font_map")
    widget_get_font_map :: proc(widget: ^Widget) -> ^pango.FontMap ---

    @(link_name = "gtk_widget_get_first_child")
    widget_get_first_child :: proc(widget: ^Widget) -> ^Widget ---

    @(link_name = "gtk_widget_get_last_child")
    widget_get_last_child :: proc(widget: ^Widget) -> ^Widget ---

    @(link_name = "gtk_widget_get_next_sibling")
    widget_get_next_sibling :: proc(widget: ^Widget) -> ^Widget ---

    @(link_name = "gtk_widget_get_prev_sibling")
    widget_get_prev_sibling :: proc(widget: ^Widget) -> ^Widget ---

    @(link_name = "gtk_widget_observe_children")
    widget_observe_children :: proc(widget: ^Widget) -> ^gio.ListModel ---

    @(link_name = "gtk_widget_observe_controllers")
    widget_observe_controllers :: proc(widget: ^Widget) -> ^gio.ListModel ---

    @(link_name = "gtk_widget_insert_after")
    widget_insert_after :: proc(widget: ^Widget, parent: ^Widget, previous_sibling: ^Widget) ---

    @(link_name = "gtk_widget_insert_before")
    widget_insert_before :: proc(widget: ^Widget, parent: ^Widget, next_sibling: ^Widget) ---

    @(link_name = "gtk_widget_set_focus_child")
    widget_set_focus_child :: proc(widget: ^Widget, child: ^Widget) ---

    @(link_name = "gtk_widget_get_focus_child")
    widget_get_focus_child :: proc(widget: ^Widget) -> ^Widget ---

    @(link_name = "gtk_widget_snapshot_child")
    widget_snapshot_child :: proc(widget: ^Widget, child: ^Widget, snapshot: ^Snapshot) ---

    @(link_name = "gtk_widget_should_layout")
    widget_should_layout :: proc(widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_widget_get_css_name")
    widget_get_css_name :: proc(self: ^Widget) -> cstring ---

    @(link_name = "gtk_widget_add_css_class")
    widget_add_css_class :: proc(widget: ^Widget, css_class: cstring) ---

    @(link_name = "gtk_widget_remove_css_class")
    widget_remove_css_class :: proc(widget: ^Widget, css_class: cstring) ---

    @(link_name = "gtk_widget_has_css_class")
    widget_has_css_class :: proc(widget: ^Widget, css_class: cstring) -> glib.boolean ---

    @(link_name = "gtk_widget_get_css_classes")
    widget_get_css_classes :: proc(widget: ^Widget) -> ^cstring ---

    @(link_name = "gtk_widget_set_css_classes")
    widget_set_css_classes :: proc(widget: ^Widget, classes: [^]cstring) ---

    @(link_name = "gtk_widget_get_color")
    widget_get_color :: proc(widget: ^Widget, color: ^RGBA) ---

    @(link_name = "gtk_widget_class_install_action")
    widget_class_install_action :: proc(widget_class: [^]WidgetClass, action_name: cstring, parameter_type: cstring, activate: WidgetActionActivateFunc) ---

    @(link_name = "gtk_widget_class_install_property_action")
    widget_class_install_property_action :: proc(widget_class: [^]WidgetClass, action_name: cstring, property_name: cstring) ---

    @(link_name = "gtk_widget_class_query_action")
    widget_class_query_action :: proc(widget_class: [^]WidgetClass, index_: glib.uint_, owner: ^gobj.Type, action_name: ^cstring, parameter_type: ^^glib.VariantType, property_name: ^cstring) -> glib.boolean ---

    @(link_name = "gtk_widget_action_set_enabled")
    widget_action_set_enabled :: proc(widget: ^Widget, action_name: cstring, enabled: glib.boolean) ---

    @(link_name = "gtk_widget_class_set_accessible_role")
    widget_class_set_accessible_role :: proc(widget_class: [^]WidgetClass, accessible_role: AccessibleRole) ---

    @(link_name = "gtk_widget_class_get_accessible_role")
    widget_class_get_accessible_role :: proc(widget_class: [^]WidgetClass) -> AccessibleRole ---

    @(link_name = "gtk_application_get_type")
    application_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_application_new")
    application_new :: proc(application_id: cstring, flags: gio.ApplicationFlags) -> ^Application ---

    @(link_name = "gtk_application_add_window")
    application_add_window :: proc(application: ^Application, window: ^Window) ---

    @(link_name = "gtk_application_remove_window")
    application_remove_window :: proc(application: ^Application, window: ^Window) ---

    @(link_name = "gtk_application_get_windows")
    application_get_windows :: proc(application: ^Application) -> ^glib.List ---

    @(link_name = "gtk_application_get_menubar")
    application_get_menubar :: proc(application: ^Application) -> ^gio.MenuModel ---

    @(link_name = "gtk_application_set_menubar")
    application_set_menubar :: proc(application: ^Application, menubar: ^gio.MenuModel) ---

    @(link_name = "gtk_application_inhibit")
    application_inhibit :: proc(application: ^Application, window: ^Window, flags: ApplicationInhibitFlags, reason: cstring) -> glib.uint_ ---

    @(link_name = "gtk_application_uninhibit")
    application_uninhibit :: proc(application: ^Application, cookie: glib.uint_) ---

    @(link_name = "gtk_application_get_window_by_id")
    application_get_window_by_id :: proc(application: ^Application, id: glib.uint_) -> ^Window ---

    @(link_name = "gtk_application_get_active_window")
    application_get_active_window :: proc(application: ^Application) -> ^Window ---

    @(link_name = "gtk_application_list_action_descriptions")
    application_list_action_descriptions :: proc(application: ^Application) -> ^cstring ---

    @(link_name = "gtk_application_get_accels_for_action")
    application_get_accels_for_action :: proc(application: ^Application, detailed_action_name: cstring) -> ^cstring ---

    @(link_name = "gtk_application_get_actions_for_accel")
    application_get_actions_for_accel :: proc(application: ^Application, accel: cstring) -> ^cstring ---

    @(link_name = "gtk_application_set_accels_for_action")
    application_set_accels_for_action :: proc(application: ^Application, detailed_action_name: cstring, accels: [^]cstring) ---

    @(link_name = "gtk_application_get_menu_by_id")
    application_get_menu_by_id :: proc(application: ^Application, id: cstring) -> ^gio.Menu ---

    @(link_name = "gtk_window_get_type")
    window_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_window_new")
    window_new :: proc() -> ^Widget ---

    @(link_name = "gtk_window_set_title")
    window_set_title :: proc(window: ^Window, title: cstring) ---

    @(link_name = "gtk_window_get_title")
    window_get_title :: proc(window: ^Window) -> cstring ---

    @(link_name = "gtk_window_set_startup_id")
    window_set_startup_id :: proc(window: ^Window, startup_id: cstring) ---

    @(link_name = "gtk_window_set_focus")
    window_set_focus :: proc(window: ^Window, focus: [^]Widget) ---

    @(link_name = "gtk_window_get_focus")
    window_get_focus :: proc(window: ^Window) -> ^Widget ---

    @(link_name = "gtk_window_set_default_widget")
    window_set_default_widget :: proc(window: ^Window, default_widget: ^Widget) ---

    @(link_name = "gtk_window_get_default_widget")
    window_get_default_widget :: proc(window: ^Window) -> ^Widget ---

    @(link_name = "gtk_window_set_transient_for")
    window_set_transient_for :: proc(window: ^Window, parent: ^Window) ---

    @(link_name = "gtk_window_get_transient_for")
    window_get_transient_for :: proc(window: ^Window) -> ^Window ---

    @(link_name = "gtk_window_set_destroy_with_parent")
    window_set_destroy_with_parent :: proc(window: ^Window, setting: glib.boolean) ---

    @(link_name = "gtk_window_get_destroy_with_parent")
    window_get_destroy_with_parent :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_set_hide_on_close")
    window_set_hide_on_close :: proc(window: ^Window, setting: glib.boolean) ---

    @(link_name = "gtk_window_get_hide_on_close")
    window_get_hide_on_close :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_set_mnemonics_visible")
    window_set_mnemonics_visible :: proc(window: ^Window, setting: glib.boolean) ---

    @(link_name = "gtk_window_get_mnemonics_visible")
    window_get_mnemonics_visible :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_set_focus_visible")
    window_set_focus_visible :: proc(window: ^Window, setting: glib.boolean) ---

    @(link_name = "gtk_window_get_focus_visible")
    window_get_focus_visible :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_set_resizable")
    window_set_resizable :: proc(window: ^Window, resizable: glib.boolean) ---

    @(link_name = "gtk_window_get_resizable")
    window_get_resizable :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_set_display")
    window_set_display :: proc(window: ^Window, display: ^Display) ---

    @(link_name = "gtk_window_is_active")
    window_is_active :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_set_decorated")
    window_set_decorated :: proc(window: ^Window, setting: glib.boolean) ---

    @(link_name = "gtk_window_get_decorated")
    window_get_decorated :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_set_deletable")
    window_set_deletable :: proc(window: ^Window, setting: glib.boolean) ---

    @(link_name = "gtk_window_get_deletable")
    window_get_deletable :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_set_icon_name")
    window_set_icon_name :: proc(window: ^Window, name: cstring) ---

    @(link_name = "gtk_window_get_icon_name")
    window_get_icon_name :: proc(window: ^Window) -> cstring ---

    @(link_name = "gtk_window_set_default_icon_name")
    window_set_default_icon_name :: proc(name: cstring) ---

    @(link_name = "gtk_window_get_default_icon_name")
    window_get_default_icon_name :: proc() -> cstring ---

    @(link_name = "gtk_window_set_auto_startup_notification")
    window_set_auto_startup_notification :: proc(setting: glib.boolean) ---

    @(link_name = "gtk_window_set_modal")
    window_set_modal :: proc(window: ^Window, modal: glib.boolean) ---

    @(link_name = "gtk_window_get_modal")
    window_get_modal :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_get_toplevels")
    window_get_toplevels :: proc() -> ^gio.ListModel ---

    @(link_name = "gtk_window_list_toplevels")
    window_list_toplevels :: proc() -> ^glib.List ---

    @(link_name = "gtk_window_present")
    window_present :: proc(window: ^Window) ---

    @(link_name = "gtk_window_present_with_time")
    window_present_with_time :: proc(window: ^Window, timestamp: glib.uint32) ---

    @(link_name = "gtk_window_minimize")
    window_minimize :: proc(window: ^Window) ---

    @(link_name = "gtk_window_unminimize")
    window_unminimize :: proc(window: ^Window) ---

    @(link_name = "gtk_window_maximize")
    window_maximize :: proc(window: ^Window) ---

    @(link_name = "gtk_window_unmaximize")
    window_unmaximize :: proc(window: ^Window) ---

    @(link_name = "gtk_window_fullscreen")
    window_fullscreen :: proc(window: ^Window) ---

    @(link_name = "gtk_window_unfullscreen")
    window_unfullscreen :: proc(window: ^Window) ---

    @(link_name = "gtk_window_fullscreen_on_monitor")
    window_fullscreen_on_monitor :: proc(window: ^Window, monitor: ^Monitor) ---

    @(link_name = "gtk_window_close")
    window_close :: proc(window: ^Window) ---

    @(link_name = "gtk_window_set_default_size")
    window_set_default_size :: proc(window: ^Window, width: i32, height: i32) ---

    @(link_name = "gtk_window_get_default_size")
    window_get_default_size :: proc(window: ^Window, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_window_get_group")
    window_get_group :: proc(window: ^Window) -> ^WindowGroup ---

    @(link_name = "gtk_window_has_group")
    window_has_group :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_get_application")
    window_get_application :: proc(window: ^Window) -> ^Application ---

    @(link_name = "gtk_window_set_application")
    window_set_application :: proc(window: ^Window, application: ^Application) ---

    @(link_name = "gtk_window_set_child")
    window_set_child :: proc(window: ^Window, child: ^Widget) ---

    @(link_name = "gtk_window_get_child")
    window_get_child :: proc(window: ^Window) -> ^Widget ---

    @(link_name = "gtk_window_set_titlebar")
    window_set_titlebar :: proc(window: ^Window, titlebar: ^Widget) ---

    @(link_name = "gtk_window_get_titlebar")
    window_get_titlebar :: proc(window: ^Window) -> ^Widget ---

    @(link_name = "gtk_window_is_maximized")
    window_is_maximized :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_is_fullscreen")
    window_is_fullscreen :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_is_suspended")
    window_is_suspended :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_window_destroy")
    window_destroy :: proc(window: ^Window) ---

    @(link_name = "gtk_window_set_interactive_debugging")
    window_set_interactive_debugging :: proc(enable: glib.boolean) ---

    @(link_name = "gtk_window_set_handle_menubar_accel")
    window_set_handle_menubar_accel :: proc(window: ^Window, handle_menubar_accel: glib.boolean) ---

    @(link_name = "gtk_window_get_handle_menubar_accel")
    window_get_handle_menubar_accel :: proc(window: ^Window) -> glib.boolean ---

    @(link_name = "gtk_about_dialog_get_type")
    about_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_about_dialog_new")
    about_dialog_new :: proc() -> ^Widget ---

    @(link_name = "gtk_show_about_dialog")
    show_about_dialog :: proc(parent: ^Window, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_about_dialog_get_program_name")
    about_dialog_get_program_name :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_program_name")
    about_dialog_set_program_name :: proc(about: ^AboutDialog, name: cstring) ---

    @(link_name = "gtk_about_dialog_get_version")
    about_dialog_get_version :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_version")
    about_dialog_set_version :: proc(about: ^AboutDialog, version: cstring) ---

    @(link_name = "gtk_about_dialog_get_copyright")
    about_dialog_get_copyright :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_copyright")
    about_dialog_set_copyright :: proc(about: ^AboutDialog, copyright: cstring) ---

    @(link_name = "gtk_about_dialog_get_comments")
    about_dialog_get_comments :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_comments")
    about_dialog_set_comments :: proc(about: ^AboutDialog, comments: cstring) ---

    @(link_name = "gtk_about_dialog_get_license")
    about_dialog_get_license :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_license")
    about_dialog_set_license :: proc(about: ^AboutDialog, license: cstring) ---

    @(link_name = "gtk_about_dialog_set_license_type")
    about_dialog_set_license_type :: proc(about: ^AboutDialog, license_type: License) ---

    @(link_name = "gtk_about_dialog_get_license_type")
    about_dialog_get_license_type :: proc(about: ^AboutDialog) -> License ---

    @(link_name = "gtk_about_dialog_get_wrap_license")
    about_dialog_get_wrap_license :: proc(about: ^AboutDialog) -> glib.boolean ---

    @(link_name = "gtk_about_dialog_set_wrap_license")
    about_dialog_set_wrap_license :: proc(about: ^AboutDialog, wrap_license: glib.boolean) ---

    @(link_name = "gtk_about_dialog_get_system_information")
    about_dialog_get_system_information :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_system_information")
    about_dialog_set_system_information :: proc(about: ^AboutDialog, system_information: cstring) ---

    @(link_name = "gtk_about_dialog_get_website")
    about_dialog_get_website :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_website")
    about_dialog_set_website :: proc(about: ^AboutDialog, website: cstring) ---

    @(link_name = "gtk_about_dialog_get_website_label")
    about_dialog_get_website_label :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_website_label")
    about_dialog_set_website_label :: proc(about: ^AboutDialog, website_label: cstring) ---

    @(link_name = "gtk_about_dialog_get_authors")
    about_dialog_get_authors :: proc(about: ^AboutDialog) -> ^cstring ---

    @(link_name = "gtk_about_dialog_set_authors")
    about_dialog_set_authors :: proc(about: ^AboutDialog, authors: [^]cstring) ---

    @(link_name = "gtk_about_dialog_get_documenters")
    about_dialog_get_documenters :: proc(about: ^AboutDialog) -> ^cstring ---

    @(link_name = "gtk_about_dialog_set_documenters")
    about_dialog_set_documenters :: proc(about: ^AboutDialog, documenters: [^]cstring) ---

    @(link_name = "gtk_about_dialog_get_artists")
    about_dialog_get_artists :: proc(about: ^AboutDialog) -> ^cstring ---

    @(link_name = "gtk_about_dialog_set_artists")
    about_dialog_set_artists :: proc(about: ^AboutDialog, artists: [^]cstring) ---

    @(link_name = "gtk_about_dialog_get_translator_credits")
    about_dialog_get_translator_credits :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_translator_credits")
    about_dialog_set_translator_credits :: proc(about: ^AboutDialog, translator_credits: cstring) ---

    @(link_name = "gtk_about_dialog_get_logo")
    about_dialog_get_logo :: proc(about: ^AboutDialog) -> ^Paintable ---

    @(link_name = "gtk_about_dialog_set_logo")
    about_dialog_set_logo :: proc(about: ^AboutDialog, logo: ^Paintable) ---

    @(link_name = "gtk_about_dialog_get_logo_icon_name")
    about_dialog_get_logo_icon_name :: proc(about: ^AboutDialog) -> cstring ---

    @(link_name = "gtk_about_dialog_set_logo_icon_name")
    about_dialog_set_logo_icon_name :: proc(about: ^AboutDialog, icon_name: cstring) ---

    @(link_name = "gtk_about_dialog_add_credit_section")
    about_dialog_add_credit_section :: proc(about: ^AboutDialog, section_name: cstring, people: ^cstring) ---

    @(link_name = "gtk_accessible_get_type")
    accessible_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_get_at_context")
    accessible_get_at_context :: proc(self: ^Accessible) -> ^ATContext ---

    @(link_name = "gtk_accessible_get_platform_state")
    accessible_get_platform_state :: proc(self: ^Accessible, state: AccessiblePlatformState) -> glib.boolean ---

    @(link_name = "gtk_accessible_get_accessible_parent")
    accessible_get_accessible_parent :: proc(self: ^Accessible) -> ^Accessible ---

    @(link_name = "gtk_accessible_set_accessible_parent")
    accessible_set_accessible_parent :: proc(self: ^Accessible, parent: ^Accessible, next_sibling: ^Accessible) ---

    @(link_name = "gtk_accessible_get_first_accessible_child")
    accessible_get_first_accessible_child :: proc(self: ^Accessible) -> ^Accessible ---

    @(link_name = "gtk_accessible_get_next_accessible_sibling")
    accessible_get_next_accessible_sibling :: proc(self: ^Accessible) -> ^Accessible ---

    @(link_name = "gtk_accessible_update_next_accessible_sibling")
    accessible_update_next_accessible_sibling :: proc(self: ^Accessible, new_sibling: ^Accessible) ---

    @(link_name = "gtk_accessible_get_bounds")
    accessible_get_bounds :: proc(self: ^Accessible, x: ^i32, y: ^i32, width: ^i32, height: ^i32) -> glib.boolean ---

    @(link_name = "gtk_accessible_get_accessible_role")
    accessible_get_accessible_role :: proc(self: ^Accessible) -> AccessibleRole ---

    @(link_name = "gtk_accessible_update_state")
    accessible_update_state :: proc(self: ^Accessible, first_state: AccessibleState, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_accessible_update_property")
    accessible_update_property :: proc(self: ^Accessible, first_property: AccessibleProperty, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_accessible_update_relation")
    accessible_update_relation :: proc(self: ^Accessible, first_relation: AccessibleRelation, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_accessible_update_state_value")
    accessible_update_state_value :: proc(self: ^Accessible, n_states: i32, states: [^]AccessibleState, values: [^]gobj.Value) ---

    @(link_name = "gtk_accessible_update_property_value")
    accessible_update_property_value :: proc(self: ^Accessible, n_properties: i32, properties: [^]AccessibleProperty, values: [^]gobj.Value) ---

    @(link_name = "gtk_accessible_update_relation_value")
    accessible_update_relation_value :: proc(self: ^Accessible, n_relations: i32, relations: [^]AccessibleRelation, values: [^]gobj.Value) ---

    @(link_name = "gtk_accessible_reset_state")
    accessible_reset_state :: proc(self: ^Accessible, state: AccessibleState) ---

    @(link_name = "gtk_accessible_reset_property")
    accessible_reset_property :: proc(self: ^Accessible, property: AccessibleProperty) ---

    @(link_name = "gtk_accessible_reset_relation")
    accessible_reset_relation :: proc(self: ^Accessible, relation: AccessibleRelation) ---

    @(link_name = "gtk_accessible_state_init_value")
    accessible_state_init_value :: proc(state: AccessibleState, value: ^gobj.Value) ---

    @(link_name = "gtk_accessible_property_init_value")
    accessible_property_init_value :: proc(property: AccessibleProperty, value: ^gobj.Value) ---

    @(link_name = "gtk_accessible_relation_init_value")
    accessible_relation_init_value :: proc(relation: AccessibleRelation, value: ^gobj.Value) ---

    @(link_name = "gtk_accessible_range_get_type")
    accessible_range_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_actionable_get_type")
    actionable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_actionable_get_action_name")
    actionable_get_action_name :: proc(actionable: ^Actionable) -> cstring ---

    @(link_name = "gtk_actionable_set_action_name")
    actionable_set_action_name :: proc(actionable: ^Actionable, action_name: cstring) ---

    @(link_name = "gtk_actionable_get_action_target_value")
    actionable_get_action_target_value :: proc(actionable: ^Actionable) -> ^glib.Variant ---

    @(link_name = "gtk_actionable_set_action_target_value")
    actionable_set_action_target_value :: proc(actionable: ^Actionable, target_value: ^glib.Variant) ---

    @(link_name = "gtk_actionable_set_action_target")
    actionable_set_action_target :: proc(actionable: ^Actionable, format_string: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_actionable_set_detailed_action_name")
    actionable_set_detailed_action_name :: proc(actionable: ^Actionable, detailed_action_name: cstring) ---

    @(link_name = "gtk_action_bar_get_type")
    action_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_action_bar_new")
    action_bar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_action_bar_get_center_widget")
    action_bar_get_center_widget :: proc(action_bar: ^ActionBar) -> ^Widget ---

    @(link_name = "gtk_action_bar_set_center_widget")
    action_bar_set_center_widget :: proc(action_bar: ^ActionBar, center_widget: ^Widget) ---

    @(link_name = "gtk_action_bar_pack_start")
    action_bar_pack_start :: proc(action_bar: ^ActionBar, child: ^Widget) ---

    @(link_name = "gtk_action_bar_pack_end")
    action_bar_pack_end :: proc(action_bar: ^ActionBar, child: ^Widget) ---

    @(link_name = "gtk_action_bar_remove")
    action_bar_remove :: proc(action_bar: ^ActionBar, child: ^Widget) ---

    @(link_name = "gtk_action_bar_set_revealed")
    action_bar_set_revealed :: proc(action_bar: ^ActionBar, revealed: glib.boolean) ---

    @(link_name = "gtk_action_bar_get_revealed")
    action_bar_get_revealed :: proc(action_bar: ^ActionBar) -> glib.boolean ---

    @(link_name = "gtk_adjustment_get_type")
    adjustment_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_adjustment_new")
    adjustment_new :: proc(value: f64, lower: f64, upper: f64, step_increment: f64, page_increment: f64, page_size: f64) -> ^Adjustment ---

    @(link_name = "gtk_adjustment_clamp_page")
    adjustment_clamp_page :: proc(adjustment: ^Adjustment, lower: f64, upper: f64) ---

    @(link_name = "gtk_adjustment_get_value")
    adjustment_get_value :: proc(adjustment: ^Adjustment) -> f64 ---

    @(link_name = "gtk_adjustment_set_value")
    adjustment_set_value :: proc(adjustment: ^Adjustment, value: f64) ---

    @(link_name = "gtk_adjustment_get_lower")
    adjustment_get_lower :: proc(adjustment: ^Adjustment) -> f64 ---

    @(link_name = "gtk_adjustment_set_lower")
    adjustment_set_lower :: proc(adjustment: ^Adjustment, lower: f64) ---

    @(link_name = "gtk_adjustment_get_upper")
    adjustment_get_upper :: proc(adjustment: ^Adjustment) -> f64 ---

    @(link_name = "gtk_adjustment_set_upper")
    adjustment_set_upper :: proc(adjustment: ^Adjustment, upper: f64) ---

    @(link_name = "gtk_adjustment_get_step_increment")
    adjustment_get_step_increment :: proc(adjustment: ^Adjustment) -> f64 ---

    @(link_name = "gtk_adjustment_set_step_increment")
    adjustment_set_step_increment :: proc(adjustment: ^Adjustment, step_increment: f64) ---

    @(link_name = "gtk_adjustment_get_page_increment")
    adjustment_get_page_increment :: proc(adjustment: ^Adjustment) -> f64 ---

    @(link_name = "gtk_adjustment_set_page_increment")
    adjustment_set_page_increment :: proc(adjustment: ^Adjustment, page_increment: f64) ---

    @(link_name = "gtk_adjustment_get_page_size")
    adjustment_get_page_size :: proc(adjustment: ^Adjustment) -> f64 ---

    @(link_name = "gtk_adjustment_set_page_size")
    adjustment_set_page_size :: proc(adjustment: ^Adjustment, page_size: f64) ---

    @(link_name = "gtk_adjustment_configure")
    adjustment_configure :: proc(adjustment: ^Adjustment, value: f64, lower: f64, upper: f64, step_increment: f64, page_increment: f64, page_size: f64) ---

    @(link_name = "gtk_adjustment_get_minimum_increment")
    adjustment_get_minimum_increment :: proc(adjustment: ^Adjustment) -> f64 ---

    @(link_name = "gtk_alert_dialog_get_type")
    alert_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_alert_dialog_new")
    alert_dialog_new :: proc(format: cstring, #c_vararg var_args: ..any) -> ^AlertDialog ---

    @(link_name = "gtk_alert_dialog_get_modal")
    alert_dialog_get_modal :: proc(self: ^AlertDialog) -> glib.boolean ---

    @(link_name = "gtk_alert_dialog_set_modal")
    alert_dialog_set_modal :: proc(self: ^AlertDialog, modal: glib.boolean) ---

    @(link_name = "gtk_alert_dialog_get_message")
    alert_dialog_get_message :: proc(self: ^AlertDialog) -> cstring ---

    @(link_name = "gtk_alert_dialog_set_message")
    alert_dialog_set_message :: proc(self: ^AlertDialog, message: cstring) ---

    @(link_name = "gtk_alert_dialog_get_detail")
    alert_dialog_get_detail :: proc(self: ^AlertDialog) -> cstring ---

    @(link_name = "gtk_alert_dialog_set_detail")
    alert_dialog_set_detail :: proc(self: ^AlertDialog, detail: cstring) ---

    @(link_name = "gtk_alert_dialog_get_buttons")
    alert_dialog_get_buttons :: proc(self: ^AlertDialog) -> ^cstring ---

    @(link_name = "gtk_alert_dialog_set_buttons")
    alert_dialog_set_buttons :: proc(self: ^AlertDialog, labels: [^]cstring) ---

    @(link_name = "gtk_alert_dialog_get_cancel_button")
    alert_dialog_get_cancel_button :: proc(self: ^AlertDialog) -> i32 ---

    @(link_name = "gtk_alert_dialog_set_cancel_button")
    alert_dialog_set_cancel_button :: proc(self: ^AlertDialog, button: i32) ---

    @(link_name = "gtk_alert_dialog_get_default_button")
    alert_dialog_get_default_button :: proc(self: ^AlertDialog) -> i32 ---

    @(link_name = "gtk_alert_dialog_set_default_button")
    alert_dialog_set_default_button :: proc(self: ^AlertDialog, button: i32) ---

    @(link_name = "gtk_alert_dialog_choose")
    alert_dialog_choose :: proc(self: ^AlertDialog, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_alert_dialog_choose_finish")
    alert_dialog_choose_finish :: proc(self: ^AlertDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> i32 ---

    @(link_name = "gtk_alert_dialog_show")
    alert_dialog_show :: proc(self: ^AlertDialog, parent: ^Window) ---

    @(link_name = "gtk_app_chooser_get_type")
    app_chooser_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_app_chooser_get_app_info")
    app_chooser_get_app_info :: proc(self: ^AppChooser) -> ^gio.AppInfo ---

    @(link_name = "gtk_app_chooser_get_content_type")
    app_chooser_get_content_type :: proc(self: ^AppChooser) -> cstring ---

    @(link_name = "gtk_app_chooser_refresh")
    app_chooser_refresh :: proc(self: ^AppChooser) ---

    @(link_name = "gtk_dialog_get_type")
    dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_dialog_new")
    dialog_new :: proc() -> ^Widget ---

    @(link_name = "gtk_dialog_new_with_buttons")
    dialog_new_with_buttons :: proc(title: cstring, parent: ^Window, flags: DialogFlags, first_button_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---

    @(link_name = "gtk_dialog_add_action_widget")
    dialog_add_action_widget :: proc(dialog: ^Dialog, child: ^Widget, response_id: i32) ---

    @(link_name = "gtk_dialog_add_button")
    dialog_add_button :: proc(dialog: ^Dialog, button_text: cstring, response_id: i32) -> ^Widget ---

    @(link_name = "gtk_dialog_add_buttons")
    dialog_add_buttons :: proc(dialog: ^Dialog, first_button_text: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_dialog_set_response_sensitive")
    dialog_set_response_sensitive :: proc(dialog: ^Dialog, response_id: i32, setting: glib.boolean) ---

    @(link_name = "gtk_dialog_set_default_response")
    dialog_set_default_response :: proc(dialog: ^Dialog, response_id: i32) ---

    @(link_name = "gtk_dialog_get_widget_for_response")
    dialog_get_widget_for_response :: proc(dialog: ^Dialog, response_id: i32) -> ^Widget ---

    @(link_name = "gtk_dialog_get_response_for_widget")
    dialog_get_response_for_widget :: proc(dialog: ^Dialog, widget: ^Widget) -> i32 ---

    @(link_name = "gtk_dialog_response")
    dialog_response :: proc(dialog: ^Dialog, response_id: i32) ---

    @(link_name = "gtk_dialog_get_content_area")
    dialog_get_content_area :: proc(dialog: ^Dialog) -> ^Widget ---

    @(link_name = "gtk_dialog_get_header_bar")
    dialog_get_header_bar :: proc(dialog: ^Dialog) -> ^Widget ---

    @(link_name = "gtk_app_chooser_dialog_get_type")
    app_chooser_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_app_chooser_dialog_new")
    app_chooser_dialog_new :: proc(parent: ^Window, flags: DialogFlags, file: ^gio.File) -> ^Widget ---

    @(link_name = "gtk_app_chooser_dialog_new_for_content_type")
    app_chooser_dialog_new_for_content_type :: proc(parent: ^Window, flags: DialogFlags, content_type: cstring) -> ^Widget ---

    @(link_name = "gtk_app_chooser_dialog_get_widget")
    app_chooser_dialog_get_widget :: proc(self: ^AppChooserDialog) -> ^Widget ---

    @(link_name = "gtk_app_chooser_dialog_set_heading")
    app_chooser_dialog_set_heading :: proc(self: ^AppChooserDialog, heading: cstring) ---

    @(link_name = "gtk_app_chooser_dialog_get_heading")
    app_chooser_dialog_get_heading :: proc(self: ^AppChooserDialog) -> cstring ---

    @(link_name = "gtk_app_chooser_widget_get_type")
    app_chooser_widget_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_app_chooser_widget_new")
    app_chooser_widget_new :: proc(content_type: cstring) -> ^Widget ---

    @(link_name = "gtk_app_chooser_widget_set_show_default")
    app_chooser_widget_set_show_default :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_default")
    app_chooser_widget_get_show_default :: proc(self: ^AppChooserWidget) -> glib.boolean ---

    @(link_name = "gtk_app_chooser_widget_set_show_recommended")
    app_chooser_widget_set_show_recommended :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_recommended")
    app_chooser_widget_get_show_recommended :: proc(self: ^AppChooserWidget) -> glib.boolean ---

    @(link_name = "gtk_app_chooser_widget_set_show_fallback")
    app_chooser_widget_set_show_fallback :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_fallback")
    app_chooser_widget_get_show_fallback :: proc(self: ^AppChooserWidget) -> glib.boolean ---

    @(link_name = "gtk_app_chooser_widget_set_show_other")
    app_chooser_widget_set_show_other :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_other")
    app_chooser_widget_get_show_other :: proc(self: ^AppChooserWidget) -> glib.boolean ---

    @(link_name = "gtk_app_chooser_widget_set_show_all")
    app_chooser_widget_set_show_all :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---

    @(link_name = "gtk_app_chooser_widget_get_show_all")
    app_chooser_widget_get_show_all :: proc(self: ^AppChooserWidget) -> glib.boolean ---

    @(link_name = "gtk_app_chooser_widget_set_default_text")
    app_chooser_widget_set_default_text :: proc(self: ^AppChooserWidget, text: cstring) ---

    @(link_name = "gtk_app_chooser_widget_get_default_text")
    app_chooser_widget_get_default_text :: proc(self: ^AppChooserWidget) -> cstring ---

    @(link_name = "gtk_app_chooser_button_get_type")
    app_chooser_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_app_chooser_button_new")
    app_chooser_button_new :: proc(content_type: cstring) -> ^Widget ---

    @(link_name = "gtk_app_chooser_button_append_separator")
    app_chooser_button_append_separator :: proc(self: ^AppChooserButton) ---

    @(link_name = "gtk_app_chooser_button_append_custom_item")
    app_chooser_button_append_custom_item :: proc(self: ^AppChooserButton, name: cstring, label: cstring, icon: ^gio.Icon) ---

    @(link_name = "gtk_app_chooser_button_set_active_custom_item")
    app_chooser_button_set_active_custom_item :: proc(self: ^AppChooserButton, name: cstring) ---

    @(link_name = "gtk_app_chooser_button_set_show_dialog_item")
    app_chooser_button_set_show_dialog_item :: proc(self: ^AppChooserButton, setting: glib.boolean) ---

    @(link_name = "gtk_app_chooser_button_get_show_dialog_item")
    app_chooser_button_get_show_dialog_item :: proc(self: ^AppChooserButton) -> glib.boolean ---

    @(link_name = "gtk_app_chooser_button_set_heading")
    app_chooser_button_set_heading :: proc(self: ^AppChooserButton, heading: cstring) ---

    @(link_name = "gtk_app_chooser_button_get_heading")
    app_chooser_button_get_heading :: proc(self: ^AppChooserButton) -> cstring ---

    @(link_name = "gtk_app_chooser_button_set_show_default_item")
    app_chooser_button_set_show_default_item :: proc(self: ^AppChooserButton, setting: glib.boolean) ---

    @(link_name = "gtk_app_chooser_button_get_show_default_item")
    app_chooser_button_get_show_default_item :: proc(self: ^AppChooserButton) -> glib.boolean ---

    @(link_name = "gtk_app_chooser_button_get_modal")
    app_chooser_button_get_modal :: proc(self: ^AppChooserButton) -> glib.boolean ---

    @(link_name = "gtk_app_chooser_button_set_modal")
    app_chooser_button_set_modal :: proc(self: ^AppChooserButton, modal: glib.boolean) ---

    @(link_name = "gtk_shortcuts_window_get_type")
    shortcuts_window_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_application_window_get_type")
    application_window_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_application_window_new")
    application_window_new :: proc(application: ^Application) -> ^Widget ---

    @(link_name = "gtk_application_window_set_show_menubar")
    application_window_set_show_menubar :: proc(window: ^ApplicationWindow, show_menubar: glib.boolean) ---

    @(link_name = "gtk_application_window_get_show_menubar")
    application_window_get_show_menubar :: proc(window: ^ApplicationWindow) -> glib.boolean ---

    @(link_name = "gtk_application_window_get_id")
    application_window_get_id :: proc(window: ^ApplicationWindow) -> glib.uint_ ---

    @(link_name = "gtk_application_window_set_help_overlay")
    application_window_set_help_overlay :: proc(window: ^ApplicationWindow, help_overlay: ^ShortcutsWindow) ---

    @(link_name = "gtk_application_window_get_help_overlay")
    application_window_get_help_overlay :: proc(window: ^ApplicationWindow) -> ^ShortcutsWindow ---

    @(link_name = "gtk_aspect_frame_get_type")
    aspect_frame_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_aspect_frame_new")
    aspect_frame_new :: proc(xalign: f32, yalign: f32, ratio: f32, obey_child: glib.boolean) -> ^Widget ---

    @(link_name = "gtk_aspect_frame_set_xalign")
    aspect_frame_set_xalign :: proc(self: ^AspectFrame, xalign: f32) ---

    @(link_name = "gtk_aspect_frame_get_xalign")
    aspect_frame_get_xalign :: proc(self: ^AspectFrame) -> f32 ---

    @(link_name = "gtk_aspect_frame_set_yalign")
    aspect_frame_set_yalign :: proc(self: ^AspectFrame, yalign: f32) ---

    @(link_name = "gtk_aspect_frame_get_yalign")
    aspect_frame_get_yalign :: proc(self: ^AspectFrame) -> f32 ---

    @(link_name = "gtk_aspect_frame_set_ratio")
    aspect_frame_set_ratio :: proc(self: ^AspectFrame, ratio: f32) ---

    @(link_name = "gtk_aspect_frame_get_ratio")
    aspect_frame_get_ratio :: proc(self: ^AspectFrame) -> f32 ---

    @(link_name = "gtk_aspect_frame_set_obey_child")
    aspect_frame_set_obey_child :: proc(self: ^AspectFrame, obey_child: glib.boolean) ---

    @(link_name = "gtk_aspect_frame_get_obey_child")
    aspect_frame_get_obey_child :: proc(self: ^AspectFrame) -> glib.boolean ---

    @(link_name = "gtk_aspect_frame_set_child")
    aspect_frame_set_child :: proc(self: ^AspectFrame, child: ^Widget) ---

    @(link_name = "gtk_aspect_frame_get_child")
    aspect_frame_get_child :: proc(self: ^AspectFrame) -> ^Widget ---

    @(link_name = "gtk_assistant_page_get_type")
    assistant_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_assistant_get_type")
    assistant_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_assistant_new")
    assistant_new :: proc() -> ^Widget ---

    @(link_name = "gtk_assistant_next_page")
    assistant_next_page :: proc(assistant: ^Assistant) ---

    @(link_name = "gtk_assistant_previous_page")
    assistant_previous_page :: proc(assistant: ^Assistant) ---

    @(link_name = "gtk_assistant_get_current_page")
    assistant_get_current_page :: proc(assistant: ^Assistant) -> i32 ---

    @(link_name = "gtk_assistant_set_current_page")
    assistant_set_current_page :: proc(assistant: ^Assistant, page_num: i32) ---

    @(link_name = "gtk_assistant_get_n_pages")
    assistant_get_n_pages :: proc(assistant: ^Assistant) -> i32 ---

    @(link_name = "gtk_assistant_get_nth_page")
    assistant_get_nth_page :: proc(assistant: ^Assistant, page_num: i32) -> ^Widget ---

    @(link_name = "gtk_assistant_prepend_page")
    assistant_prepend_page :: proc(assistant: ^Assistant, page: ^Widget) -> i32 ---

    @(link_name = "gtk_assistant_append_page")
    assistant_append_page :: proc(assistant: ^Assistant, page: ^Widget) -> i32 ---

    @(link_name = "gtk_assistant_insert_page")
    assistant_insert_page :: proc(assistant: ^Assistant, page: ^Widget, position: i32) -> i32 ---

    @(link_name = "gtk_assistant_remove_page")
    assistant_remove_page :: proc(assistant: ^Assistant, page_num: i32) ---

    @(link_name = "gtk_assistant_set_forward_page_func")
    assistant_set_forward_page_func :: proc(assistant: ^Assistant, page_func: AssistantPageFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_assistant_set_page_type")
    assistant_set_page_type :: proc(assistant: ^Assistant, page: ^Widget, type: AssistantPageType) ---

    @(link_name = "gtk_assistant_get_page_type")
    assistant_get_page_type :: proc(assistant: ^Assistant, page: ^Widget) -> AssistantPageType ---

    @(link_name = "gtk_assistant_set_page_title")
    assistant_set_page_title :: proc(assistant: ^Assistant, page: ^Widget, title: cstring) ---

    @(link_name = "gtk_assistant_get_page_title")
    assistant_get_page_title :: proc(assistant: ^Assistant, page: ^Widget) -> cstring ---

    @(link_name = "gtk_assistant_set_page_complete")
    assistant_set_page_complete :: proc(assistant: ^Assistant, page: ^Widget, complete: glib.boolean) ---

    @(link_name = "gtk_assistant_get_page_complete")
    assistant_get_page_complete :: proc(assistant: ^Assistant, page: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_assistant_add_action_widget")
    assistant_add_action_widget :: proc(assistant: ^Assistant, child: ^Widget) ---

    @(link_name = "gtk_assistant_remove_action_widget")
    assistant_remove_action_widget :: proc(assistant: ^Assistant, child: ^Widget) ---

    @(link_name = "gtk_assistant_update_buttons_state")
    assistant_update_buttons_state :: proc(assistant: ^Assistant) ---

    @(link_name = "gtk_assistant_commit")
    assistant_commit :: proc(assistant: ^Assistant) ---

    @(link_name = "gtk_assistant_get_page")
    assistant_get_page :: proc(assistant: ^Assistant, child: ^Widget) -> ^AssistantPage ---

    @(link_name = "gtk_assistant_page_get_child")
    assistant_page_get_child :: proc(page: ^AssistantPage) -> ^Widget ---

    @(link_name = "gtk_assistant_get_pages")
    assistant_get_pages :: proc(assistant: ^Assistant) -> ^gio.ListModel ---

    @(link_name = "gtk_at_context_get_type")
    at_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_at_context_get_accessible")
    at_context_get_accessible :: proc(self: ^ATContext) -> ^Accessible ---

    @(link_name = "gtk_at_context_get_accessible_role")
    at_context_get_accessible_role :: proc(self: ^ATContext) -> AccessibleRole ---

    @(link_name = "gtk_at_context_create")
    at_context_create :: proc(accessible_role: AccessibleRole, accessible: ^Accessible, display: ^Display) -> ^ATContext ---

    @(link_name = "gtk_layout_child_get_type")
    layout_child_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_layout_child_get_layout_manager")
    layout_child_get_layout_manager :: proc(layout_child: ^LayoutChild) -> ^LayoutManager ---

    @(link_name = "gtk_layout_child_get_child_widget")
    layout_child_get_child_widget :: proc(layout_child: ^LayoutChild) -> ^Widget ---

    @(link_name = "gtk_layout_manager_get_type")
    layout_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_layout_manager_measure")
    layout_manager_measure :: proc(manager: ^LayoutManager, widget: ^Widget, orientation: Orientation, for_size: i32, minimum: ^i32, natural: ^i32, minimum_baseline: ^i32, natural_baseline: ^i32) ---

    @(link_name = "gtk_layout_manager_allocate")
    layout_manager_allocate :: proc(manager: ^LayoutManager, widget: ^Widget, width: i32, height: i32, baseline: i32) ---

    @(link_name = "gtk_layout_manager_get_request_mode")
    layout_manager_get_request_mode :: proc(manager: ^LayoutManager) -> SizeRequestMode ---

    @(link_name = "gtk_layout_manager_get_widget")
    layout_manager_get_widget :: proc(manager: ^LayoutManager) -> ^Widget ---

    @(link_name = "gtk_layout_manager_layout_changed")
    layout_manager_layout_changed :: proc(manager: ^LayoutManager) ---

    @(link_name = "gtk_layout_manager_get_layout_child")
    layout_manager_get_layout_child :: proc(manager: ^LayoutManager, child: ^Widget) -> ^LayoutChild ---

    @(link_name = "gtk_bin_layout_get_type")
    bin_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_bin_layout_new")
    bin_layout_new :: proc() -> ^LayoutManager ---

    @(link_name = "gtk_bitset_get_type")
    bitset_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_bitset_ref")
    bitset_ref :: proc(self: ^Bitset) -> ^Bitset ---

    @(link_name = "gtk_bitset_unref")
    bitset_unref :: proc(self: ^Bitset) ---

    @(link_name = "gtk_bitset_contains")
    bitset_contains :: proc(self: ^Bitset, value: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_bitset_is_empty")
    bitset_is_empty :: proc(self: ^Bitset) -> glib.boolean ---

    @(link_name = "gtk_bitset_equals")
    bitset_equals :: proc(self: ^Bitset, other: ^Bitset) -> glib.boolean ---

    @(link_name = "gtk_bitset_get_size")
    bitset_get_size :: proc(self: ^Bitset) -> glib.uint64 ---

    @(link_name = "gtk_bitset_get_size_in_range")
    bitset_get_size_in_range :: proc(self: ^Bitset, first: glib.uint_, last: glib.uint_) -> glib.uint64 ---

    @(link_name = "gtk_bitset_get_nth")
    bitset_get_nth :: proc(self: ^Bitset, nth: glib.uint_) -> glib.uint_ ---

    @(link_name = "gtk_bitset_get_minimum")
    bitset_get_minimum :: proc(self: ^Bitset) -> glib.uint_ ---

    @(link_name = "gtk_bitset_get_maximum")
    bitset_get_maximum :: proc(self: ^Bitset) -> glib.uint_ ---

    @(link_name = "gtk_bitset_new_empty")
    bitset_new_empty :: proc() -> ^Bitset ---

    @(link_name = "gtk_bitset_copy")
    bitset_copy :: proc(self: ^Bitset) -> ^Bitset ---

    @(link_name = "gtk_bitset_new_range")
    bitset_new_range :: proc(start: glib.uint_, n_items: glib.uint_) -> ^Bitset ---

    @(link_name = "gtk_bitset_remove_all")
    bitset_remove_all :: proc(self: ^Bitset) ---

    @(link_name = "gtk_bitset_add")
    bitset_add :: proc(self: ^Bitset, value: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_bitset_remove")
    bitset_remove :: proc(self: ^Bitset, value: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_bitset_add_range")
    bitset_add_range :: proc(self: ^Bitset, start: glib.uint_, n_items: glib.uint_) ---

    @(link_name = "gtk_bitset_remove_range")
    bitset_remove_range :: proc(self: ^Bitset, start: glib.uint_, n_items: glib.uint_) ---

    @(link_name = "gtk_bitset_add_range_closed")
    bitset_add_range_closed :: proc(self: ^Bitset, first: glib.uint_, last: glib.uint_) ---

    @(link_name = "gtk_bitset_remove_range_closed")
    bitset_remove_range_closed :: proc(self: ^Bitset, first: glib.uint_, last: glib.uint_) ---

    @(link_name = "gtk_bitset_add_rectangle")
    bitset_add_rectangle :: proc(self: ^Bitset, start: glib.uint_, width: glib.uint_, height: glib.uint_, stride: glib.uint_) ---

    @(link_name = "gtk_bitset_remove_rectangle")
    bitset_remove_rectangle :: proc(self: ^Bitset, start: glib.uint_, width: glib.uint_, height: glib.uint_, stride: glib.uint_) ---

    @(link_name = "gtk_bitset_union")
    bitset_union :: proc(self: ^Bitset, other: ^Bitset) ---

    @(link_name = "gtk_bitset_intersect")
    bitset_intersect :: proc(self: ^Bitset, other: ^Bitset) ---

    @(link_name = "gtk_bitset_subtract")
    bitset_subtract :: proc(self: ^Bitset, other: ^Bitset) ---

    @(link_name = "gtk_bitset_difference")
    bitset_difference :: proc(self: ^Bitset, other: ^Bitset) ---

    @(link_name = "gtk_bitset_shift_left")
    bitset_shift_left :: proc(self: ^Bitset, amount: glib.uint_) ---

    @(link_name = "gtk_bitset_shift_right")
    bitset_shift_right :: proc(self: ^Bitset, amount: glib.uint_) ---

    @(link_name = "gtk_bitset_splice")
    bitset_splice :: proc(self: ^Bitset, position: glib.uint_, removed: glib.uint_, added: glib.uint_) ---

    @(link_name = "gtk_bitset_iter_get_type")
    bitset_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_bitset_iter_init_first")
    bitset_iter_init_first :: proc(iter: ^BitsetIter, set: ^Bitset, value: ^glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_bitset_iter_init_last")
    bitset_iter_init_last :: proc(iter: ^BitsetIter, set: ^Bitset, value: ^glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_bitset_iter_init_at")
    bitset_iter_init_at :: proc(iter: ^BitsetIter, set: ^Bitset, target: glib.uint_, value: ^glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_bitset_iter_next")
    bitset_iter_next :: proc(iter: ^BitsetIter, value: ^glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_bitset_iter_previous")
    bitset_iter_previous :: proc(iter: ^BitsetIter, value: ^glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_bitset_iter_get_value")
    bitset_iter_get_value :: proc(iter: ^BitsetIter) -> glib.uint_ ---

    @(link_name = "gtk_bitset_iter_is_valid")
    bitset_iter_is_valid :: proc(iter: ^BitsetIter) -> glib.boolean ---

    @(link_name = "gtk_bookmark_list_get_type")
    bookmark_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_bookmark_list_new")
    bookmark_list_new :: proc(filename: cstring, attributes: cstring) -> ^BookmarkList ---

    @(link_name = "gtk_bookmark_list_get_filename")
    bookmark_list_get_filename :: proc(self: ^BookmarkList) -> cstring ---

    @(link_name = "gtk_bookmark_list_set_attributes")
    bookmark_list_set_attributes :: proc(self: ^BookmarkList, attributes: cstring) ---

    @(link_name = "gtk_bookmark_list_get_attributes")
    bookmark_list_get_attributes :: proc(self: ^BookmarkList) -> cstring ---

    @(link_name = "gtk_bookmark_list_set_io_priority")
    bookmark_list_set_io_priority :: proc(self: ^BookmarkList, io_priority: i32) ---

    @(link_name = "gtk_bookmark_list_get_io_priority")
    bookmark_list_get_io_priority :: proc(self: ^BookmarkList) -> i32 ---

    @(link_name = "gtk_bookmark_list_is_loading")
    bookmark_list_is_loading :: proc(self: ^BookmarkList) -> glib.boolean ---

    @(link_name = "gtk_expression_get_type")
    expression_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_expression_ref")
    expression_ref :: proc(self: ^Expression) -> ^Expression ---

    @(link_name = "gtk_expression_unref")
    expression_unref :: proc(self: ^Expression) ---

    @(link_name = "gtk_expression_get_value_type")
    expression_get_value_type :: proc(self: ^Expression) -> gobj.Type ---

    @(link_name = "gtk_expression_is_static")
    expression_is_static :: proc(self: ^Expression) -> glib.boolean ---

    @(link_name = "gtk_expression_evaluate")
    expression_evaluate :: proc(self: ^Expression, this_: glib.pointer, value: ^gobj.Value) -> glib.boolean ---

    @(link_name = "gtk_expression_watch")
    expression_watch :: proc(self: ^Expression, this_: glib.pointer, notify: ExpressionNotify, user_data: glib.pointer, user_destroy: glib.DestroyNotify) -> ^ExpressionWatch ---

    @(link_name = "gtk_expression_bind")
    expression_bind :: proc(self: ^Expression, target: glib.pointer, property: cstring, this_: glib.pointer) -> ^ExpressionWatch ---

    @(link_name = "gtk_expression_watch_get_type")
    expression_watch_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_expression_watch_ref")
    expression_watch_ref :: proc(watch: ^ExpressionWatch) -> ^ExpressionWatch ---

    @(link_name = "gtk_expression_watch_unref")
    expression_watch_unref :: proc(watch: ^ExpressionWatch) ---

    @(link_name = "gtk_expression_watch_evaluate")
    expression_watch_evaluate :: proc(watch: ^ExpressionWatch, value: ^gobj.Value) -> glib.boolean ---

    @(link_name = "gtk_expression_watch_unwatch")
    expression_watch_unwatch :: proc(watch: ^ExpressionWatch) ---

    @(link_name = "gtk_property_expression_get_type")
    property_expression_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_property_expression_new")
    property_expression_new :: proc(this_type: gobj.Type, expression: ^Expression, property_name: cstring) -> ^Expression ---

    @(link_name = "gtk_property_expression_new_for_pspec")
    property_expression_new_for_pspec :: proc(expression: ^Expression, pspec: ^gobj.ParamSpec) -> ^Expression ---

    @(link_name = "gtk_property_expression_get_expression")
    property_expression_get_expression :: proc(expression: ^Expression) -> ^Expression ---

    @(link_name = "gtk_property_expression_get_pspec")
    property_expression_get_pspec :: proc(expression: ^Expression) -> ^gobj.ParamSpec ---

    @(link_name = "gtk_constant_expression_get_type")
    constant_expression_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constant_expression_new")
    constant_expression_new :: proc(value_type: gobj.Type, #c_vararg var_args: ..any) -> ^Expression ---

    @(link_name = "gtk_constant_expression_new_for_value")
    constant_expression_new_for_value :: proc(value: ^gobj.Value) -> ^Expression ---

    @(link_name = "gtk_constant_expression_get_value")
    constant_expression_get_value :: proc(expression: ^Expression) -> ^gobj.Value ---

    @(link_name = "gtk_object_expression_get_type")
    object_expression_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_object_expression_new")
    object_expression_new :: proc(object: ^gobj.Object) -> ^Expression ---

    @(link_name = "gtk_object_expression_get_object")
    object_expression_get_object :: proc(expression: ^Expression) -> ^gobj.Object ---

    @(link_name = "gtk_closure_expression_get_type")
    closure_expression_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_closure_expression_new")
    closure_expression_new :: proc(value_type: gobj.Type, closure: ^gobj.Closure, n_params: glib.uint_, params: [^]^Expression) -> ^Expression ---

    @(link_name = "gtk_cclosure_expression_get_type")
    cclosure_expression_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cclosure_expression_new")
    cclosure_expression_new :: proc(value_type: gobj.Type, marshal: gobj.ClosureMarshal, n_params: glib.uint_, params: [^]^Expression, callback_func: gobj.Callback, user_data: glib.pointer, user_destroy: gobj.ClosureNotify) -> ^Expression ---

    @(link_name = "gtk_value_set_expression")
    value_set_expression :: proc(value: ^gobj.Value, expression: ^Expression) ---

    @(link_name = "gtk_value_take_expression")
    value_take_expression :: proc(value: ^gobj.Value, expression: ^Expression) ---

    @(link_name = "gtk_value_get_expression")
    value_get_expression :: proc(value: ^gobj.Value) -> ^Expression ---

    @(link_name = "gtk_value_dup_expression")
    value_dup_expression :: proc(value: ^gobj.Value) -> ^Expression ---

    @(link_name = "gtk_param_expression_get_type")
    param_expression_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_param_spec_expression")
    param_spec_expression :: proc(name: cstring, nick: cstring, blurb: cstring, flags: gobj.ParamFlags) -> ^gobj.ParamSpec ---

    @(link_name = "gtk_filter_get_type")
    filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_filter_match")
    filter_match :: proc(self: ^Filter, item: glib.pointer) -> glib.boolean ---

    @(link_name = "gtk_filter_get_strictness")
    filter_get_strictness :: proc(self: ^Filter) -> FilterMatch ---

    @(link_name = "gtk_filter_changed")
    filter_changed :: proc(self: ^Filter, change: FilterChange) ---

    @(link_name = "gtk_bool_filter_get_type")
    bool_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_bool_filter_new")
    bool_filter_new :: proc(expression: ^Expression) -> ^BoolFilter ---

    @(link_name = "gtk_bool_filter_get_expression")
    bool_filter_get_expression :: proc(self: ^BoolFilter) -> ^Expression ---

    @(link_name = "gtk_bool_filter_set_expression")
    bool_filter_set_expression :: proc(self: ^BoolFilter, expression: ^Expression) ---

    @(link_name = "gtk_bool_filter_get_invert")
    bool_filter_get_invert :: proc(self: ^BoolFilter) -> glib.boolean ---

    @(link_name = "gtk_bool_filter_set_invert")
    bool_filter_set_invert :: proc(self: ^BoolFilter, invert: glib.boolean) ---

    @(link_name = "gtk_box_layout_get_type")
    box_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_box_layout_new")
    box_layout_new :: proc(orientation: Orientation) -> ^LayoutManager ---

    @(link_name = "gtk_box_layout_set_homogeneous")
    box_layout_set_homogeneous :: proc(box_layout: ^BoxLayout, homogeneous: glib.boolean) ---

    @(link_name = "gtk_box_layout_get_homogeneous")
    box_layout_get_homogeneous :: proc(box_layout: ^BoxLayout) -> glib.boolean ---

    @(link_name = "gtk_box_layout_set_spacing")
    box_layout_set_spacing :: proc(box_layout: ^BoxLayout, spacing: glib.uint_) ---

    @(link_name = "gtk_box_layout_get_spacing")
    box_layout_get_spacing :: proc(box_layout: ^BoxLayout) -> glib.uint_ ---

    @(link_name = "gtk_box_layout_set_baseline_position")
    box_layout_set_baseline_position :: proc(box_layout: ^BoxLayout, position: BaselinePosition) ---

    @(link_name = "gtk_box_layout_get_baseline_position")
    box_layout_get_baseline_position :: proc(box_layout: ^BoxLayout) -> BaselinePosition ---

    @(link_name = "gtk_box_layout_set_baseline_child")
    box_layout_set_baseline_child :: proc(box_layout: ^BoxLayout, child: i32) ---

    @(link_name = "gtk_box_layout_get_baseline_child")
    box_layout_get_baseline_child :: proc(box_layout: ^BoxLayout) -> i32 ---

    @(link_name = "gtk_box_get_type")
    box_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_box_new")
    box_new :: proc(orientation: Orientation, spacing: i32) -> ^Widget ---

    @(link_name = "gtk_box_set_homogeneous")
    box_set_homogeneous :: proc(box: ^Box, homogeneous: glib.boolean) ---

    @(link_name = "gtk_box_get_homogeneous")
    box_get_homogeneous :: proc(box: ^Box) -> glib.boolean ---

    @(link_name = "gtk_box_set_spacing")
    box_set_spacing :: proc(box: ^Box, spacing: i32) ---

    @(link_name = "gtk_box_get_spacing")
    box_get_spacing :: proc(box: ^Box) -> i32 ---

    @(link_name = "gtk_box_set_baseline_position")
    box_set_baseline_position :: proc(box: ^Box, position: BaselinePosition) ---

    @(link_name = "gtk_box_get_baseline_position")
    box_get_baseline_position :: proc(box: ^Box) -> BaselinePosition ---

    @(link_name = "gtk_box_set_baseline_child")
    box_set_baseline_child :: proc(box: ^Box, child: i32) ---

    @(link_name = "gtk_box_get_baseline_child")
    box_get_baseline_child :: proc(box: ^Box) -> i32 ---

    @(link_name = "gtk_box_append")
    box_append :: proc(box: ^Box, child: ^Widget) ---

    @(link_name = "gtk_box_prepend")
    box_prepend :: proc(box: ^Box, child: ^Widget) ---

    @(link_name = "gtk_box_remove")
    box_remove :: proc(box: ^Box, child: ^Widget) ---

    @(link_name = "gtk_box_insert_child_after")
    box_insert_child_after :: proc(box: ^Box, child: ^Widget, sibling: ^Widget) ---

    @(link_name = "gtk_box_reorder_child_after")
    box_reorder_child_after :: proc(box: ^Box, child: ^Widget, sibling: ^Widget) ---

    @(link_name = "gtk_builder_scope_get_type")
    builder_scope_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_builder_cscope_get_type")
    builder_cscope_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_builder_cscope_new")
    builder_cscope_new :: proc() -> ^BuilderScope ---

    @(link_name = "gtk_builder_cscope_add_callback_symbol")
    builder_cscope_add_callback_symbol :: proc(self: ^BuilderCScope, callback_name: cstring, callback_symbol: gobj.Callback) ---

    @(link_name = "gtk_builder_cscope_add_callback_symbols")
    builder_cscope_add_callback_symbols :: proc(self: ^BuilderCScope, first_callback_name: cstring, first_callback_symbol: gobj.Callback, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_builder_cscope_lookup_callback_symbol")
    builder_cscope_lookup_callback_symbol :: proc(self: ^BuilderCScope, callback_name: cstring) -> gobj.Callback ---

    @(link_name = "gtk_builder_error_quark")
    builder_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_builder_get_type")
    builder_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_builder_new")
    builder_new :: proc() -> ^Builder ---

    @(link_name = "gtk_builder_add_from_file")
    builder_add_from_file :: proc(builder: ^Builder, filename: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_builder_add_from_resource")
    builder_add_from_resource :: proc(builder: ^Builder, resource_path: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_builder_add_from_string")
    builder_add_from_string :: proc(builder: ^Builder, buffer: cstring, length: glib.ssize, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_builder_add_objects_from_file")
    builder_add_objects_from_file :: proc(builder: ^Builder, filename: cstring, object_ids: [^]cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_builder_add_objects_from_resource")
    builder_add_objects_from_resource :: proc(builder: ^Builder, resource_path: cstring, object_ids: [^]cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_builder_add_objects_from_string")
    builder_add_objects_from_string :: proc(builder: ^Builder, buffer: cstring, length: glib.ssize, object_ids: [^]cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_builder_get_object")
    builder_get_object :: proc(builder: ^Builder, name: cstring) -> ^gobj.Object ---

    @(link_name = "gtk_builder_get_objects")
    builder_get_objects :: proc(builder: ^Builder) -> ^glib.SList ---

    @(link_name = "gtk_builder_expose_object")
    builder_expose_object :: proc(builder: ^Builder, name: cstring, object: ^gobj.Object) ---

    @(link_name = "gtk_builder_get_current_object")
    builder_get_current_object :: proc(builder: ^Builder) -> ^gobj.Object ---

    @(link_name = "gtk_builder_set_current_object")
    builder_set_current_object :: proc(builder: ^Builder, current_object: ^gobj.Object) ---

    @(link_name = "gtk_builder_set_translation_domain")
    builder_set_translation_domain :: proc(builder: ^Builder, domain: cstring) ---

    @(link_name = "gtk_builder_get_translation_domain")
    builder_get_translation_domain :: proc(builder: ^Builder) -> cstring ---

    @(link_name = "gtk_builder_get_scope")
    builder_get_scope :: proc(builder: ^Builder) -> ^BuilderScope ---

    @(link_name = "gtk_builder_set_scope")
    builder_set_scope :: proc(builder: ^Builder, scope: ^BuilderScope) ---

    @(link_name = "gtk_builder_get_type_from_name")
    builder_get_type_from_name :: proc(builder: ^Builder, type_name: cstring) -> gobj.Type ---

    @(link_name = "gtk_builder_value_from_string")
    builder_value_from_string :: proc(builder: ^Builder, pspec: ^gobj.ParamSpec, string_p: cstring, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_builder_value_from_string_type")
    builder_value_from_string_type :: proc(builder: ^Builder, type: gobj.Type, string_p: cstring, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_builder_new_from_file")
    builder_new_from_file :: proc(filename: cstring) -> ^Builder ---

    @(link_name = "gtk_builder_new_from_resource")
    builder_new_from_resource :: proc(resource_path: cstring) -> ^Builder ---

    @(link_name = "gtk_builder_new_from_string")
    builder_new_from_string :: proc(string_p: cstring, length: glib.ssize) -> ^Builder ---

    @(link_name = "gtk_builder_create_closure")
    builder_create_closure :: proc(builder: ^Builder, function_name: cstring, flags: BuilderClosureFlags, object: ^gobj.Object, error: ^^glib.Error) -> ^gobj.Closure ---

    @(link_name = "gtk_builder_extend_with_template")
    builder_extend_with_template :: proc(builder: ^Builder, object: ^gobj.Object, template_type: gobj.Type, buffer: cstring, length: glib.ssize, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_buildable_get_type")
    buildable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_buildable_get_buildable_id")
    buildable_get_buildable_id :: proc(buildable: ^Buildable) -> cstring ---

    @(link_name = "gtk_buildable_parse_context_push")
    buildable_parse_context_push :: proc(context_p: ^BuildableParseContext, parser: ^BuildableParser, user_data: glib.pointer) ---

    @(link_name = "gtk_buildable_parse_context_pop")
    buildable_parse_context_pop :: proc(context_p: ^BuildableParseContext) -> glib.pointer ---

    @(link_name = "gtk_buildable_parse_context_get_element")
    buildable_parse_context_get_element :: proc(context_p: ^BuildableParseContext) -> cstring ---

    @(link_name = "gtk_buildable_parse_context_get_element_stack")
    buildable_parse_context_get_element_stack :: proc(context_p: ^BuildableParseContext) -> ^glib.PtrArray ---

    @(link_name = "gtk_buildable_parse_context_get_position")
    buildable_parse_context_get_position :: proc(context_p: ^BuildableParseContext, line_number: ^i32, char_number: ^i32) ---

    @(link_name = "gtk_list_item_factory_get_type")
    list_item_factory_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_builder_list_item_factory_get_type")
    builder_list_item_factory_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_builder_list_item_factory_new_from_bytes")
    builder_list_item_factory_new_from_bytes :: proc(scope: ^BuilderScope, bytes: [^]glib.Bytes) -> ^ListItemFactory ---

    @(link_name = "gtk_builder_list_item_factory_new_from_resource")
    builder_list_item_factory_new_from_resource :: proc(scope: ^BuilderScope, resource_path: cstring) -> ^ListItemFactory ---

    @(link_name = "gtk_builder_list_item_factory_get_bytes")
    builder_list_item_factory_get_bytes :: proc(self: ^BuilderListItemFactory) -> ^glib.Bytes ---

    @(link_name = "gtk_builder_list_item_factory_get_resource")
    builder_list_item_factory_get_resource :: proc(self: ^BuilderListItemFactory) -> cstring ---

    @(link_name = "gtk_builder_list_item_factory_get_scope")
    builder_list_item_factory_get_scope :: proc(self: ^BuilderListItemFactory) -> ^BuilderScope ---

    @(link_name = "gtk_button_get_type")
    button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_button_new")
    button_new :: proc() -> ^Widget ---

    @(link_name = "gtk_button_new_with_label")
    button_new_with_label :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_button_new_from_icon_name")
    button_new_from_icon_name :: proc(icon_name: cstring) -> ^Widget ---

    @(link_name = "gtk_button_new_with_mnemonic")
    button_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_button_set_has_frame")
    button_set_has_frame :: proc(button: ^Button, has_frame: glib.boolean) ---

    @(link_name = "gtk_button_get_has_frame")
    button_get_has_frame :: proc(button: ^Button) -> glib.boolean ---

    @(link_name = "gtk_button_set_label")
    button_set_label :: proc(button: ^Button, label: cstring) ---

    @(link_name = "gtk_button_get_label")
    button_get_label :: proc(button: ^Button) -> cstring ---

    @(link_name = "gtk_button_set_use_underline")
    button_set_use_underline :: proc(button: ^Button, use_underline: glib.boolean) ---

    @(link_name = "gtk_button_get_use_underline")
    button_get_use_underline :: proc(button: ^Button) -> glib.boolean ---

    @(link_name = "gtk_button_set_icon_name")
    button_set_icon_name :: proc(button: ^Button, icon_name: cstring) ---

    @(link_name = "gtk_button_get_icon_name")
    button_get_icon_name :: proc(button: ^Button) -> cstring ---

    @(link_name = "gtk_button_set_child")
    button_set_child :: proc(button: ^Button, child: ^Widget) ---

    @(link_name = "gtk_button_get_child")
    button_get_child :: proc(button: ^Button) -> ^Widget ---

    @(link_name = "gtk_button_set_can_shrink")
    button_set_can_shrink :: proc(button: ^Button, can_shrink: glib.boolean) ---

    @(link_name = "gtk_button_get_can_shrink")
    button_get_can_shrink :: proc(button: ^Button) -> glib.boolean ---

    @(link_name = "gtk_calendar_get_type")
    calendar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_calendar_new")
    calendar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_calendar_select_day")
    calendar_select_day :: proc(self: ^Calendar, date: ^glib.DateTime) ---

    @(link_name = "gtk_calendar_mark_day")
    calendar_mark_day :: proc(calendar: ^Calendar, day: glib.uint_) ---

    @(link_name = "gtk_calendar_unmark_day")
    calendar_unmark_day :: proc(calendar: ^Calendar, day: glib.uint_) ---

    @(link_name = "gtk_calendar_clear_marks")
    calendar_clear_marks :: proc(calendar: ^Calendar) ---

    @(link_name = "gtk_calendar_set_show_week_numbers")
    calendar_set_show_week_numbers :: proc(self: ^Calendar, value: glib.boolean) ---

    @(link_name = "gtk_calendar_get_show_week_numbers")
    calendar_get_show_week_numbers :: proc(self: ^Calendar) -> glib.boolean ---

    @(link_name = "gtk_calendar_set_show_heading")
    calendar_set_show_heading :: proc(self: ^Calendar, value: glib.boolean) ---

    @(link_name = "gtk_calendar_get_show_heading")
    calendar_get_show_heading :: proc(self: ^Calendar) -> glib.boolean ---

    @(link_name = "gtk_calendar_set_show_day_names")
    calendar_set_show_day_names :: proc(self: ^Calendar, value: glib.boolean) ---

    @(link_name = "gtk_calendar_get_show_day_names")
    calendar_get_show_day_names :: proc(self: ^Calendar) -> glib.boolean ---

    @(link_name = "gtk_calendar_get_date")
    calendar_get_date :: proc(self: ^Calendar) -> ^glib.DateTime ---

    @(link_name = "gtk_calendar_get_day_is_marked")
    calendar_get_day_is_marked :: proc(calendar: ^Calendar, day: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_cell_editable_get_type")
    cell_editable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_editable_start_editing")
    cell_editable_start_editing :: proc(cell_editable: ^CellEditable, event: ^Event) ---

    @(link_name = "gtk_cell_editable_editing_done")
    cell_editable_editing_done :: proc(cell_editable: ^CellEditable) ---

    @(link_name = "gtk_cell_editable_remove_widget")
    cell_editable_remove_widget :: proc(cell_editable: ^CellEditable) ---

    @(link_name = "gtk_cell_renderer_get_type")
    cell_renderer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_get_request_mode")
    cell_renderer_get_request_mode :: proc(cell: ^CellRenderer) -> SizeRequestMode ---

    @(link_name = "gtk_cell_renderer_get_preferred_width")
    cell_renderer_get_preferred_width :: proc(cell: ^CellRenderer, widget: ^Widget, minimum_size: ^i32, natural_size: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_preferred_height_for_width")
    cell_renderer_get_preferred_height_for_width :: proc(cell: ^CellRenderer, widget: ^Widget, width: i32, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_preferred_height")
    cell_renderer_get_preferred_height :: proc(cell: ^CellRenderer, widget: ^Widget, minimum_size: ^i32, natural_size: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_preferred_width_for_height")
    cell_renderer_get_preferred_width_for_height :: proc(cell: ^CellRenderer, widget: ^Widget, height: i32, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_preferred_size")
    cell_renderer_get_preferred_size :: proc(cell: ^CellRenderer, widget: ^Widget, minimum_size: ^Requisition, natural_size: ^Requisition) ---

    @(link_name = "gtk_cell_renderer_get_aligned_area")
    cell_renderer_get_aligned_area :: proc(cell: ^CellRenderer, widget: ^Widget, flags: CellRendererState, cell_area: ^Rectangle, aligned_area: ^Rectangle) ---

    @(link_name = "gtk_cell_renderer_snapshot")
    cell_renderer_snapshot :: proc(cell: ^CellRenderer, snapshot: ^Snapshot, widget: ^Widget, background_area: ^Rectangle, cell_area: ^Rectangle, flags: CellRendererState) ---

    @(link_name = "gtk_cell_renderer_activate")
    cell_renderer_activate :: proc(cell: ^CellRenderer, event: ^Event, widget: ^Widget, path: cstring, background_area: ^Rectangle, cell_area: ^Rectangle, flags: CellRendererState) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_start_editing")
    cell_renderer_start_editing :: proc(cell: ^CellRenderer, event: ^Event, widget: ^Widget, path: cstring, background_area: ^Rectangle, cell_area: ^Rectangle, flags: CellRendererState) -> ^CellEditable ---

    @(link_name = "gtk_cell_renderer_set_fixed_size")
    cell_renderer_set_fixed_size :: proc(cell: ^CellRenderer, width: i32, height: i32) ---

    @(link_name = "gtk_cell_renderer_get_fixed_size")
    cell_renderer_get_fixed_size :: proc(cell: ^CellRenderer, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_cell_renderer_set_alignment")
    cell_renderer_set_alignment :: proc(cell: ^CellRenderer, xalign: f32, yalign: f32) ---

    @(link_name = "gtk_cell_renderer_get_alignment")
    cell_renderer_get_alignment :: proc(cell: ^CellRenderer, xalign: ^f32, yalign: ^f32) ---

    @(link_name = "gtk_cell_renderer_set_padding")
    cell_renderer_set_padding :: proc(cell: ^CellRenderer, xpad: i32, ypad: i32) ---

    @(link_name = "gtk_cell_renderer_get_padding")
    cell_renderer_get_padding :: proc(cell: ^CellRenderer, xpad: ^i32, ypad: ^i32) ---

    @(link_name = "gtk_cell_renderer_set_visible")
    cell_renderer_set_visible :: proc(cell: ^CellRenderer, visible: glib.boolean) ---

    @(link_name = "gtk_cell_renderer_get_visible")
    cell_renderer_get_visible :: proc(cell: ^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_set_sensitive")
    cell_renderer_set_sensitive :: proc(cell: ^CellRenderer, sensitive: glib.boolean) ---

    @(link_name = "gtk_cell_renderer_get_sensitive")
    cell_renderer_get_sensitive :: proc(cell: ^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_is_activatable")
    cell_renderer_is_activatable :: proc(cell: ^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_set_is_expander")
    cell_renderer_set_is_expander :: proc(cell: ^CellRenderer, is_expander: glib.boolean) ---

    @(link_name = "gtk_cell_renderer_get_is_expander")
    cell_renderer_get_is_expander :: proc(cell: ^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_set_is_expanded")
    cell_renderer_set_is_expanded :: proc(cell: ^CellRenderer, is_expanded: glib.boolean) ---

    @(link_name = "gtk_cell_renderer_get_is_expanded")
    cell_renderer_get_is_expanded :: proc(cell: ^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_stop_editing")
    cell_renderer_stop_editing :: proc(cell: ^CellRenderer, canceled: glib.boolean) ---

    @(link_name = "_gtk_cell_renderer_calc_offset")
    _gtk_cell_renderer_calc_offset :: proc(cell: ^CellRenderer, cell_area: ^Rectangle, direction: TextDirection, width: i32, height: i32, x_offset: ^i32, y_offset: ^i32) ---

    @(link_name = "gtk_cell_renderer_get_state")
    cell_renderer_get_state :: proc(cell: ^CellRenderer, widget: ^Widget, cell_state: CellRendererState) -> StateFlags ---

    @(link_name = "gtk_tree_path_new")
    tree_path_new :: proc() -> ^TreePath ---

    @(link_name = "gtk_tree_path_new_from_string")
    tree_path_new_from_string :: proc(path: cstring) -> ^TreePath ---

    @(link_name = "gtk_tree_path_new_from_indices")
    tree_path_new_from_indices :: proc(first_index: i32, #c_vararg var_args: ..any) -> ^TreePath ---

    @(link_name = "gtk_tree_path_new_from_indicesv")
    tree_path_new_from_indicesv :: proc(indices: [^]i32, length: glib.size) -> ^TreePath ---

    @(link_name = "gtk_tree_path_to_string")
    tree_path_to_string :: proc(path: ^TreePath) -> cstring ---

    @(link_name = "gtk_tree_path_new_first")
    tree_path_new_first :: proc() -> ^TreePath ---

    @(link_name = "gtk_tree_path_append_index")
    tree_path_append_index :: proc(path: ^TreePath, index_: i32) ---

    @(link_name = "gtk_tree_path_prepend_index")
    tree_path_prepend_index :: proc(path: ^TreePath, index_: i32) ---

    @(link_name = "gtk_tree_path_get_depth")
    tree_path_get_depth :: proc(path: ^TreePath) -> i32 ---

    @(link_name = "gtk_tree_path_get_indices")
    tree_path_get_indices :: proc(path: ^TreePath) -> ^i32 ---

    @(link_name = "gtk_tree_path_get_indices_with_depth")
    tree_path_get_indices_with_depth :: proc(path: ^TreePath, depth: ^i32) -> ^i32 ---

    @(link_name = "gtk_tree_path_free")
    tree_path_free :: proc(path: ^TreePath) ---

    @(link_name = "gtk_tree_path_copy")
    tree_path_copy :: proc(path: ^TreePath) -> ^TreePath ---

    @(link_name = "gtk_tree_path_get_type")
    tree_path_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_path_compare")
    tree_path_compare :: proc(a: ^TreePath, b: ^TreePath) -> i32 ---

    @(link_name = "gtk_tree_path_next")
    tree_path_next :: proc(path: ^TreePath) ---

    @(link_name = "gtk_tree_path_prev")
    tree_path_prev :: proc(path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_path_up")
    tree_path_up :: proc(path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_path_down")
    tree_path_down :: proc(path: ^TreePath) ---

    @(link_name = "gtk_tree_path_is_ancestor")
    tree_path_is_ancestor :: proc(path: ^TreePath, descendant: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_path_is_descendant")
    tree_path_is_descendant :: proc(path: ^TreePath, ancestor: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_row_reference_get_type")
    tree_row_reference_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_row_reference_new")
    tree_row_reference_new :: proc(model: ^TreeModel, path: ^TreePath) -> ^TreeRowReference ---

    @(link_name = "gtk_tree_row_reference_new_proxy")
    tree_row_reference_new_proxy :: proc(proxy: ^gobj.Object, model: ^TreeModel, path: ^TreePath) -> ^TreeRowReference ---

    @(link_name = "gtk_tree_row_reference_get_path")
    tree_row_reference_get_path :: proc(reference: ^TreeRowReference) -> ^TreePath ---

    @(link_name = "gtk_tree_row_reference_get_model")
    tree_row_reference_get_model :: proc(reference: ^TreeRowReference) -> ^TreeModel ---

    @(link_name = "gtk_tree_row_reference_valid")
    tree_row_reference_valid :: proc(reference: ^TreeRowReference) -> glib.boolean ---

    @(link_name = "gtk_tree_row_reference_copy")
    tree_row_reference_copy :: proc(reference: ^TreeRowReference) -> ^TreeRowReference ---

    @(link_name = "gtk_tree_row_reference_free")
    tree_row_reference_free :: proc(reference: ^TreeRowReference) ---

    @(link_name = "gtk_tree_row_reference_inserted")
    tree_row_reference_inserted :: proc(proxy: ^gobj.Object, path: ^TreePath) ---

    @(link_name = "gtk_tree_row_reference_deleted")
    tree_row_reference_deleted :: proc(proxy: ^gobj.Object, path: ^TreePath) ---

    @(link_name = "gtk_tree_row_reference_reordered")
    tree_row_reference_reordered :: proc(proxy: ^gobj.Object, path: ^TreePath, iter: ^TreeIter, new_order: ^i32) ---

    @(link_name = "gtk_tree_iter_copy")
    tree_iter_copy :: proc(iter: ^TreeIter) -> ^TreeIter ---

    @(link_name = "gtk_tree_iter_free")
    tree_iter_free :: proc(iter: ^TreeIter) ---

    @(link_name = "gtk_tree_iter_get_type")
    tree_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_model_get_type")
    tree_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_model_get_flags")
    tree_model_get_flags :: proc(tree_model: ^TreeModel) -> TreeModelFlags ---

    @(link_name = "gtk_tree_model_get_n_columns")
    tree_model_get_n_columns :: proc(tree_model: ^TreeModel) -> i32 ---

    @(link_name = "gtk_tree_model_get_column_type")
    tree_model_get_column_type :: proc(tree_model: ^TreeModel, index_: i32) -> gobj.Type ---

    @(link_name = "gtk_tree_model_get_iter")
    tree_model_get_iter :: proc(tree_model: ^TreeModel, iter: ^TreeIter, path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_model_get_iter_from_string")
    tree_model_get_iter_from_string :: proc(tree_model: ^TreeModel, iter: ^TreeIter, path_string: cstring) -> glib.boolean ---

    @(link_name = "gtk_tree_model_get_string_from_iter")
    tree_model_get_string_from_iter :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> cstring ---

    @(link_name = "gtk_tree_model_get_iter_first")
    tree_model_get_iter_first :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_model_get_path")
    tree_model_get_path :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> ^TreePath ---

    @(link_name = "gtk_tree_model_get_value")
    tree_model_get_value :: proc(tree_model: ^TreeModel, iter: ^TreeIter, column: i32, value: ^gobj.Value) ---

    @(link_name = "gtk_tree_model_iter_previous")
    tree_model_iter_previous :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_model_iter_next")
    tree_model_iter_next :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_model_iter_children")
    tree_model_iter_children :: proc(tree_model: ^TreeModel, iter: ^TreeIter, parent: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_model_iter_has_child")
    tree_model_iter_has_child :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_model_iter_n_children")
    tree_model_iter_n_children :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> i32 ---

    @(link_name = "gtk_tree_model_iter_nth_child")
    tree_model_iter_nth_child :: proc(tree_model: ^TreeModel, iter: ^TreeIter, parent: ^TreeIter, n: i32) -> glib.boolean ---

    @(link_name = "gtk_tree_model_iter_parent")
    tree_model_iter_parent :: proc(tree_model: ^TreeModel, iter: ^TreeIter, child: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_model_ref_node")
    tree_model_ref_node :: proc(tree_model: ^TreeModel, iter: ^TreeIter) ---

    @(link_name = "gtk_tree_model_unref_node")
    tree_model_unref_node :: proc(tree_model: ^TreeModel, iter: ^TreeIter) ---

    @(link_name = "gtk_tree_model_get")
    tree_model_get :: proc(tree_model: ^TreeModel, iter: ^TreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_model_get_valist")
    tree_model_get_valist :: proc(tree_model: ^TreeModel, iter: ^TreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_model_foreach")
    tree_model_foreach :: proc(model: ^TreeModel, func: TreeModelForeachFunc, user_data: glib.pointer) ---

    @(link_name = "gtk_tree_model_row_changed")
    tree_model_row_changed :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter) ---

    @(link_name = "gtk_tree_model_row_inserted")
    tree_model_row_inserted :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter) ---

    @(link_name = "gtk_tree_model_row_has_child_toggled")
    tree_model_row_has_child_toggled :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter) ---

    @(link_name = "gtk_tree_model_row_deleted")
    tree_model_row_deleted :: proc(tree_model: ^TreeModel, path: ^TreePath) ---

    @(link_name = "gtk_tree_model_rows_reordered")
    tree_model_rows_reordered :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, new_order: ^i32) ---

    @(link_name = "gtk_tree_model_rows_reordered_with_length")
    tree_model_rows_reordered_with_length :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, new_order: ^i32, length: i32) ---

    @(link_name = "gtk_cell_area_get_type")
    cell_area_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_area_add")
    cell_area_add :: proc(area: ^CellArea, renderer: ^CellRenderer) ---

    @(link_name = "gtk_cell_area_remove")
    cell_area_remove :: proc(area: ^CellArea, renderer: ^CellRenderer) ---

    @(link_name = "gtk_cell_area_has_renderer")
    cell_area_has_renderer :: proc(area: ^CellArea, renderer: ^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_cell_area_foreach")
    cell_area_foreach :: proc(area: ^CellArea, callback: CellCallback, callback_data: glib.pointer) ---

    @(link_name = "gtk_cell_area_foreach_alloc")
    cell_area_foreach_alloc :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^Rectangle, background_area: ^Rectangle, callback: CellAllocCallback, callback_data: glib.pointer) ---

    @(link_name = "gtk_cell_area_event")
    cell_area_event :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, event: ^Event, cell_area: ^Rectangle, flags: CellRendererState) -> i32 ---

    @(link_name = "gtk_cell_area_snapshot")
    cell_area_snapshot :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, snapshot: ^Snapshot, background_area: ^Rectangle, cell_area: ^Rectangle, flags: CellRendererState, paint_focus: glib.boolean) ---

    @(link_name = "gtk_cell_area_get_cell_allocation")
    cell_area_get_cell_allocation :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, renderer: ^CellRenderer, cell_area: ^Rectangle, allocation: ^Rectangle) ---

    @(link_name = "gtk_cell_area_get_cell_at_position")
    cell_area_get_cell_at_position :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^Rectangle, x: i32, y: i32, alloc_area: ^Rectangle) -> ^CellRenderer ---

    @(link_name = "gtk_cell_area_create_context")
    cell_area_create_context :: proc(area: ^CellArea) -> ^CellAreaContext ---

    @(link_name = "gtk_cell_area_copy_context")
    cell_area_copy_context :: proc(area: ^CellArea, context_p: ^CellAreaContext) -> ^CellAreaContext ---

    @(link_name = "gtk_cell_area_get_request_mode")
    cell_area_get_request_mode :: proc(area: ^CellArea) -> SizeRequestMode ---

    @(link_name = "gtk_cell_area_get_preferred_width")
    cell_area_get_preferred_width :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_area_get_preferred_height_for_width")
    cell_area_get_preferred_height_for_width :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, width: i32, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_area_get_preferred_height")
    cell_area_get_preferred_height :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_area_get_preferred_width_for_height")
    cell_area_get_preferred_width_for_height :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, height: i32, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_area_get_current_path_string")
    cell_area_get_current_path_string :: proc(area: ^CellArea) -> cstring ---

    @(link_name = "gtk_cell_area_apply_attributes")
    cell_area_apply_attributes :: proc(area: ^CellArea, tree_model: ^TreeModel, iter: ^TreeIter, is_expander: glib.boolean, is_expanded: glib.boolean) ---

    @(link_name = "gtk_cell_area_attribute_connect")
    cell_area_attribute_connect :: proc(area: ^CellArea, renderer: ^CellRenderer, attribute: cstring, column: i32) ---

    @(link_name = "gtk_cell_area_attribute_disconnect")
    cell_area_attribute_disconnect :: proc(area: ^CellArea, renderer: ^CellRenderer, attribute: cstring) ---

    @(link_name = "gtk_cell_area_attribute_get_column")
    cell_area_attribute_get_column :: proc(area: ^CellArea, renderer: ^CellRenderer, attribute: cstring) -> i32 ---

    @(link_name = "gtk_cell_area_class_install_cell_property")
    cell_area_class_install_cell_property :: proc(aclass: [^]CellAreaClass, property_id: glib.uint_, pspec: ^gobj.ParamSpec) ---

    @(link_name = "gtk_cell_area_class_find_cell_property")
    cell_area_class_find_cell_property :: proc(aclass: [^]CellAreaClass, property_name: cstring) -> ^gobj.ParamSpec ---

    @(link_name = "gtk_cell_area_class_list_cell_properties")
    cell_area_class_list_cell_properties :: proc(aclass: [^]CellAreaClass, n_properties: [^]glib.uint_) -> ^^gobj.ParamSpec ---

    @(link_name = "gtk_cell_area_add_with_properties")
    cell_area_add_with_properties :: proc(area: ^CellArea, renderer: ^CellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_set")
    cell_area_cell_set :: proc(area: ^CellArea, renderer: ^CellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_get")
    cell_area_cell_get :: proc(area: ^CellArea, renderer: ^CellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_set_valist")
    cell_area_cell_set_valist :: proc(area: ^CellArea, renderer: ^CellRenderer, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_get_valist")
    cell_area_cell_get_valist :: proc(area: ^CellArea, renderer: ^CellRenderer, first_property_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_area_cell_set_property")
    cell_area_cell_set_property :: proc(area: ^CellArea, renderer: ^CellRenderer, property_name: cstring, value: ^gobj.Value) ---

    @(link_name = "gtk_cell_area_cell_get_property")
    cell_area_cell_get_property :: proc(area: ^CellArea, renderer: ^CellRenderer, property_name: cstring, value: ^gobj.Value) ---

    @(link_name = "gtk_cell_area_is_activatable")
    cell_area_is_activatable :: proc(area: ^CellArea) -> glib.boolean ---

    @(link_name = "gtk_cell_area_activate")
    cell_area_activate :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^Rectangle, flags: CellRendererState, edit_only: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_cell_area_focus")
    cell_area_focus :: proc(area: ^CellArea, direction: DirectionType) -> glib.boolean ---

    @(link_name = "gtk_cell_area_set_focus_cell")
    cell_area_set_focus_cell :: proc(area: ^CellArea, renderer: ^CellRenderer) ---

    @(link_name = "gtk_cell_area_get_focus_cell")
    cell_area_get_focus_cell :: proc(area: ^CellArea) -> ^CellRenderer ---

    @(link_name = "gtk_cell_area_add_focus_sibling")
    cell_area_add_focus_sibling :: proc(area: ^CellArea, renderer: ^CellRenderer, sibling: ^CellRenderer) ---

    @(link_name = "gtk_cell_area_remove_focus_sibling")
    cell_area_remove_focus_sibling :: proc(area: ^CellArea, renderer: ^CellRenderer, sibling: ^CellRenderer) ---

    @(link_name = "gtk_cell_area_is_focus_sibling")
    cell_area_is_focus_sibling :: proc(area: ^CellArea, renderer: ^CellRenderer, sibling: ^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_cell_area_get_focus_siblings")
    cell_area_get_focus_siblings :: proc(area: ^CellArea, renderer: ^CellRenderer) -> ^glib.List ---

    @(link_name = "gtk_cell_area_get_focus_from_sibling")
    cell_area_get_focus_from_sibling :: proc(area: ^CellArea, renderer: ^CellRenderer) -> ^CellRenderer ---

    @(link_name = "gtk_cell_area_get_edited_cell")
    cell_area_get_edited_cell :: proc(area: ^CellArea) -> ^CellRenderer ---

    @(link_name = "gtk_cell_area_get_edit_widget")
    cell_area_get_edit_widget :: proc(area: ^CellArea) -> ^CellEditable ---

    @(link_name = "gtk_cell_area_activate_cell")
    cell_area_activate_cell :: proc(area: ^CellArea, widget: ^Widget, renderer: ^CellRenderer, event: ^Event, cell_area: ^Rectangle, flags: CellRendererState) -> glib.boolean ---

    @(link_name = "gtk_cell_area_stop_editing")
    cell_area_stop_editing :: proc(area: ^CellArea, canceled: glib.boolean) ---

    @(link_name = "gtk_cell_area_inner_cell_area")
    cell_area_inner_cell_area :: proc(area: ^CellArea, widget: ^Widget, cell_area: ^Rectangle, inner_area: ^Rectangle) ---

    @(link_name = "gtk_cell_area_request_renderer")
    cell_area_request_renderer :: proc(area: ^CellArea, renderer: ^CellRenderer, orientation: Orientation, widget: ^Widget, for_size: i32, minimum_size: ^i32, natural_size: ^i32) ---

    @(link_name = "_gtk_cell_area_set_cell_data_func_with_proxy")
    _gtk_cell_area_set_cell_data_func_with_proxy :: proc(area: ^CellArea, cell: ^CellRenderer, func: glib.Func, func_data: glib.pointer, destroy: glib.DestroyNotify, proxy: glib.pointer) ---

    @(link_name = "gtk_cell_area_box_get_type")
    cell_area_box_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_area_box_new")
    cell_area_box_new :: proc() -> ^CellArea ---

    @(link_name = "gtk_cell_area_box_pack_start")
    cell_area_box_pack_start :: proc(box: ^CellAreaBox, renderer: ^CellRenderer, expand: glib.boolean, align: glib.boolean, fixed: glib.boolean) ---

    @(link_name = "gtk_cell_area_box_pack_end")
    cell_area_box_pack_end :: proc(box: ^CellAreaBox, renderer: ^CellRenderer, expand: glib.boolean, align: glib.boolean, fixed: glib.boolean) ---

    @(link_name = "gtk_cell_area_box_get_spacing")
    cell_area_box_get_spacing :: proc(box: ^CellAreaBox) -> i32 ---

    @(link_name = "gtk_cell_area_box_set_spacing")
    cell_area_box_set_spacing :: proc(box: ^CellAreaBox, spacing: i32) ---

    @(link_name = "_gtk_cell_area_box_group_visible")
    _gtk_cell_area_box_group_visible :: proc(box: ^CellAreaBox, group_idx: i32) -> glib.boolean ---

    @(link_name = "gtk_cell_area_context_get_type")
    cell_area_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_area_context_get_area")
    cell_area_context_get_area :: proc(context_p: ^CellAreaContext) -> ^CellArea ---

    @(link_name = "gtk_cell_area_context_allocate")
    cell_area_context_allocate :: proc(context_p: ^CellAreaContext, width: i32, height: i32) ---

    @(link_name = "gtk_cell_area_context_reset")
    cell_area_context_reset :: proc(context_p: ^CellAreaContext) ---

    @(link_name = "gtk_cell_area_context_get_preferred_width")
    cell_area_context_get_preferred_width :: proc(context_p: ^CellAreaContext, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_area_context_get_preferred_height")
    cell_area_context_get_preferred_height :: proc(context_p: ^CellAreaContext, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_area_context_get_preferred_height_for_width")
    cell_area_context_get_preferred_height_for_width :: proc(context_p: ^CellAreaContext, width: i32, minimum_height: ^i32, natural_height: ^i32) ---

    @(link_name = "gtk_cell_area_context_get_preferred_width_for_height")
    cell_area_context_get_preferred_width_for_height :: proc(context_p: ^CellAreaContext, height: i32, minimum_width: ^i32, natural_width: ^i32) ---

    @(link_name = "gtk_cell_area_context_get_allocation")
    cell_area_context_get_allocation :: proc(context_p: ^CellAreaContext, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_cell_area_context_push_preferred_width")
    cell_area_context_push_preferred_width :: proc(context_p: ^CellAreaContext, minimum_width: i32, natural_width: i32) ---

    @(link_name = "gtk_cell_area_context_push_preferred_height")
    cell_area_context_push_preferred_height :: proc(context_p: ^CellAreaContext, minimum_height: i32, natural_height: i32) ---

    @(link_name = "gtk_cell_layout_get_type")
    cell_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_layout_pack_start")
    cell_layout_pack_start :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, expand: glib.boolean) ---

    @(link_name = "gtk_cell_layout_pack_end")
    cell_layout_pack_end :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, expand: glib.boolean) ---

    @(link_name = "gtk_cell_layout_get_cells")
    cell_layout_get_cells :: proc(cell_layout: ^CellLayout) -> ^glib.List ---

    @(link_name = "gtk_cell_layout_clear")
    cell_layout_clear :: proc(cell_layout: ^CellLayout) ---

    @(link_name = "gtk_cell_layout_set_attributes")
    cell_layout_set_attributes :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_cell_layout_add_attribute")
    cell_layout_add_attribute :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, attribute: cstring, column: i32) ---

    @(link_name = "gtk_cell_layout_set_cell_data_func")
    cell_layout_set_cell_data_func :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, func: CellLayoutDataFunc, func_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_cell_layout_clear_attributes")
    cell_layout_clear_attributes :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer) ---

    @(link_name = "gtk_cell_layout_reorder")
    cell_layout_reorder :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, position: i32) ---

    @(link_name = "gtk_cell_layout_get_area")
    cell_layout_get_area :: proc(cell_layout: ^CellLayout) -> ^CellArea ---

    @(link_name = "_gtk_cell_layout_buildable_custom_tag_start")
    _gtk_cell_layout_buildable_custom_tag_start :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, parser: ^BuildableParser, data: ^glib.pointer) -> glib.boolean ---

    @(link_name = "_gtk_cell_layout_buildable_custom_tag_end")
    _gtk_cell_layout_buildable_custom_tag_end :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, data: ^glib.pointer) -> glib.boolean ---

    @(link_name = "_gtk_cell_layout_buildable_add_child")
    _gtk_cell_layout_buildable_add_child :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, type: cstring) ---

    @(link_name = "gtk_cell_renderer_text_get_type")
    cell_renderer_text_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_text_new")
    cell_renderer_text_new :: proc() -> ^CellRenderer ---

    @(link_name = "gtk_cell_renderer_text_set_fixed_height_from_font")
    cell_renderer_text_set_fixed_height_from_font :: proc(renderer: ^CellRendererText, number_of_rows: i32) ---

    @(link_name = "gtk_cell_renderer_accel_get_type")
    cell_renderer_accel_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_accel_new")
    cell_renderer_accel_new :: proc() -> ^CellRenderer ---

    @(link_name = "gtk_cell_renderer_combo_get_type")
    cell_renderer_combo_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_combo_new")
    cell_renderer_combo_new :: proc() -> ^CellRenderer ---

    @(link_name = "gtk_cell_renderer_pixbuf_get_type")
    cell_renderer_pixbuf_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_pixbuf_new")
    cell_renderer_pixbuf_new :: proc() -> ^CellRenderer ---

    @(link_name = "gtk_cell_renderer_progress_get_type")
    cell_renderer_progress_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_progress_new")
    cell_renderer_progress_new :: proc() -> ^CellRenderer ---

    @(link_name = "gtk_cell_renderer_spin_get_type")
    cell_renderer_spin_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_spin_new")
    cell_renderer_spin_new :: proc() -> ^CellRenderer ---

    @(link_name = "gtk_cell_renderer_spinner_get_type")
    cell_renderer_spinner_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_spinner_new")
    cell_renderer_spinner_new :: proc() -> ^CellRenderer ---

    @(link_name = "gtk_cell_renderer_toggle_get_type")
    cell_renderer_toggle_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_toggle_new")
    cell_renderer_toggle_new :: proc() -> ^CellRenderer ---

    @(link_name = "gtk_cell_renderer_toggle_get_radio")
    cell_renderer_toggle_get_radio :: proc(toggle: ^CellRendererToggle) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_toggle_set_radio")
    cell_renderer_toggle_set_radio :: proc(toggle: ^CellRendererToggle, radio: glib.boolean) ---

    @(link_name = "gtk_cell_renderer_toggle_get_active")
    cell_renderer_toggle_get_active :: proc(toggle: ^CellRendererToggle) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_toggle_set_active")
    cell_renderer_toggle_set_active :: proc(toggle: ^CellRendererToggle, setting: glib.boolean) ---

    @(link_name = "gtk_cell_renderer_toggle_get_activatable")
    cell_renderer_toggle_get_activatable :: proc(toggle: ^CellRendererToggle) -> glib.boolean ---

    @(link_name = "gtk_cell_renderer_toggle_set_activatable")
    cell_renderer_toggle_set_activatable :: proc(toggle: ^CellRendererToggle, setting: glib.boolean) ---

    @(link_name = "gtk_cell_view_get_type")
    cell_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_view_new")
    cell_view_new :: proc() -> ^Widget ---

    @(link_name = "gtk_cell_view_new_with_context")
    cell_view_new_with_context :: proc(area: ^CellArea, context_p: ^CellAreaContext) -> ^Widget ---

    @(link_name = "gtk_cell_view_new_with_text")
    cell_view_new_with_text :: proc(text: cstring) -> ^Widget ---

    @(link_name = "gtk_cell_view_new_with_markup")
    cell_view_new_with_markup :: proc(markup: cstring) -> ^Widget ---

    @(link_name = "gtk_cell_view_new_with_texture")
    cell_view_new_with_texture :: proc(texture: ^Texture) -> ^Widget ---

    @(link_name = "gtk_cell_view_set_model")
    cell_view_set_model :: proc(cell_view: ^CellView, model: ^TreeModel) ---

    @(link_name = "gtk_cell_view_get_model")
    cell_view_get_model :: proc(cell_view: ^CellView) -> ^TreeModel ---

    @(link_name = "gtk_cell_view_set_displayed_row")
    cell_view_set_displayed_row :: proc(cell_view: ^CellView, path: ^TreePath) ---

    @(link_name = "gtk_cell_view_get_displayed_row")
    cell_view_get_displayed_row :: proc(cell_view: ^CellView) -> ^TreePath ---

    @(link_name = "gtk_cell_view_get_draw_sensitive")
    cell_view_get_draw_sensitive :: proc(cell_view: ^CellView) -> glib.boolean ---

    @(link_name = "gtk_cell_view_set_draw_sensitive")
    cell_view_set_draw_sensitive :: proc(cell_view: ^CellView, draw_sensitive: glib.boolean) ---

    @(link_name = "gtk_cell_view_get_fit_model")
    cell_view_get_fit_model :: proc(cell_view: ^CellView) -> glib.boolean ---

    @(link_name = "gtk_cell_view_set_fit_model")
    cell_view_set_fit_model :: proc(cell_view: ^CellView, fit_model: glib.boolean) ---

    @(link_name = "gtk_center_box_get_type")
    center_box_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_center_box_new")
    center_box_new :: proc() -> ^Widget ---

    @(link_name = "gtk_center_box_set_start_widget")
    center_box_set_start_widget :: proc(self: ^CenterBox, child: ^Widget) ---

    @(link_name = "gtk_center_box_set_center_widget")
    center_box_set_center_widget :: proc(self: ^CenterBox, child: ^Widget) ---

    @(link_name = "gtk_center_box_set_end_widget")
    center_box_set_end_widget :: proc(self: ^CenterBox, child: ^Widget) ---

    @(link_name = "gtk_center_box_get_start_widget")
    center_box_get_start_widget :: proc(self: ^CenterBox) -> ^Widget ---

    @(link_name = "gtk_center_box_get_center_widget")
    center_box_get_center_widget :: proc(self: ^CenterBox) -> ^Widget ---

    @(link_name = "gtk_center_box_get_end_widget")
    center_box_get_end_widget :: proc(self: ^CenterBox) -> ^Widget ---

    @(link_name = "gtk_center_box_set_baseline_position")
    center_box_set_baseline_position :: proc(self: ^CenterBox, position: BaselinePosition) ---

    @(link_name = "gtk_center_box_get_baseline_position")
    center_box_get_baseline_position :: proc(self: ^CenterBox) -> BaselinePosition ---

    @(link_name = "gtk_center_box_set_shrink_center_last")
    center_box_set_shrink_center_last :: proc(self: ^CenterBox, shrink_center_last: glib.boolean) ---

    @(link_name = "gtk_center_box_get_shrink_center_last")
    center_box_get_shrink_center_last :: proc(self: ^CenterBox) -> glib.boolean ---

    @(link_name = "gtk_center_layout_get_type")
    center_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_center_layout_new")
    center_layout_new :: proc() -> ^LayoutManager ---

    @(link_name = "gtk_center_layout_set_orientation")
    center_layout_set_orientation :: proc(self: ^CenterLayout, orientation: Orientation) ---

    @(link_name = "gtk_center_layout_get_orientation")
    center_layout_get_orientation :: proc(self: ^CenterLayout) -> Orientation ---

    @(link_name = "gtk_center_layout_set_baseline_position")
    center_layout_set_baseline_position :: proc(self: ^CenterLayout, baseline_position: BaselinePosition) ---

    @(link_name = "gtk_center_layout_get_baseline_position")
    center_layout_get_baseline_position :: proc(self: ^CenterLayout) -> BaselinePosition ---

    @(link_name = "gtk_center_layout_set_start_widget")
    center_layout_set_start_widget :: proc(self: ^CenterLayout, widget: ^Widget) ---

    @(link_name = "gtk_center_layout_get_start_widget")
    center_layout_get_start_widget :: proc(self: ^CenterLayout) -> ^Widget ---

    @(link_name = "gtk_center_layout_set_center_widget")
    center_layout_set_center_widget :: proc(self: ^CenterLayout, widget: ^Widget) ---

    @(link_name = "gtk_center_layout_get_center_widget")
    center_layout_get_center_widget :: proc(self: ^CenterLayout) -> ^Widget ---

    @(link_name = "gtk_center_layout_set_end_widget")
    center_layout_set_end_widget :: proc(self: ^CenterLayout, widget: ^Widget) ---

    @(link_name = "gtk_center_layout_get_end_widget")
    center_layout_get_end_widget :: proc(self: ^CenterLayout) -> ^Widget ---

    @(link_name = "gtk_center_layout_set_shrink_center_last")
    center_layout_set_shrink_center_last :: proc(self: ^CenterLayout, shrink_center_last: glib.boolean) ---

    @(link_name = "gtk_center_layout_get_shrink_center_last")
    center_layout_get_shrink_center_last :: proc(self: ^CenterLayout) -> glib.boolean ---

    @(link_name = "gtk_toggle_button_get_type")
    toggle_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_toggle_button_new")
    toggle_button_new :: proc() -> ^Widget ---

    @(link_name = "gtk_toggle_button_new_with_label")
    toggle_button_new_with_label :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_toggle_button_new_with_mnemonic")
    toggle_button_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_toggle_button_set_active")
    toggle_button_set_active :: proc(toggle_button: ^ToggleButton, is_active: glib.boolean) ---

    @(link_name = "gtk_toggle_button_get_active")
    toggle_button_get_active :: proc(toggle_button: ^ToggleButton) -> glib.boolean ---

    @(link_name = "gtk_toggle_button_toggled")
    toggle_button_toggled :: proc(toggle_button: ^ToggleButton) ---

    @(link_name = "gtk_toggle_button_set_group")
    toggle_button_set_group :: proc(toggle_button: ^ToggleButton, group: ^ToggleButton) ---

    @(link_name = "gtk_check_button_get_type")
    check_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_check_button_new")
    check_button_new :: proc() -> ^Widget ---

    @(link_name = "gtk_check_button_new_with_label")
    check_button_new_with_label :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_check_button_new_with_mnemonic")
    check_button_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_check_button_set_inconsistent")
    check_button_set_inconsistent :: proc(check_button: ^CheckButton, inconsistent: glib.boolean) ---

    @(link_name = "gtk_check_button_get_inconsistent")
    check_button_get_inconsistent :: proc(check_button: ^CheckButton) -> glib.boolean ---

    @(link_name = "gtk_check_button_get_active")
    check_button_get_active :: proc(self: ^CheckButton) -> glib.boolean ---

    @(link_name = "gtk_check_button_set_active")
    check_button_set_active :: proc(self: ^CheckButton, setting: glib.boolean) ---

    @(link_name = "gtk_check_button_get_label")
    check_button_get_label :: proc(self: ^CheckButton) -> cstring ---

    @(link_name = "gtk_check_button_set_label")
    check_button_set_label :: proc(self: ^CheckButton, label: cstring) ---

    @(link_name = "gtk_check_button_set_group")
    check_button_set_group :: proc(self: ^CheckButton, group: ^CheckButton) ---

    @(link_name = "gtk_check_button_get_use_underline")
    check_button_get_use_underline :: proc(self: ^CheckButton) -> glib.boolean ---

    @(link_name = "gtk_check_button_set_use_underline")
    check_button_set_use_underline :: proc(self: ^CheckButton, setting: glib.boolean) ---

    @(link_name = "gtk_check_button_get_child")
    check_button_get_child :: proc(button: ^CheckButton) -> ^Widget ---

    @(link_name = "gtk_check_button_set_child")
    check_button_set_child :: proc(button: ^CheckButton, child: ^Widget) ---

    @(link_name = "gtk_color_button_get_type")
    color_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_color_button_new")
    color_button_new :: proc() -> ^Widget ---

    @(link_name = "gtk_color_button_new_with_rgba")
    color_button_new_with_rgba :: proc(rgba: ^RGBA) -> ^Widget ---

    @(link_name = "gtk_color_button_set_title")
    color_button_set_title :: proc(button: ^ColorButton, title: cstring) ---

    @(link_name = "gtk_color_button_get_title")
    color_button_get_title :: proc(button: ^ColorButton) -> cstring ---

    @(link_name = "gtk_color_button_get_modal")
    color_button_get_modal :: proc(button: ^ColorButton) -> glib.boolean ---

    @(link_name = "gtk_color_button_set_modal")
    color_button_set_modal :: proc(button: ^ColorButton, modal: glib.boolean) ---

    @(link_name = "gtk_color_chooser_get_type")
    color_chooser_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_color_chooser_get_rgba")
    color_chooser_get_rgba :: proc(chooser: ^ColorChooser, color: ^RGBA) ---

    @(link_name = "gtk_color_chooser_set_rgba")
    color_chooser_set_rgba :: proc(chooser: ^ColorChooser, color: ^RGBA) ---

    @(link_name = "gtk_color_chooser_get_use_alpha")
    color_chooser_get_use_alpha :: proc(chooser: ^ColorChooser) -> glib.boolean ---

    @(link_name = "gtk_color_chooser_set_use_alpha")
    color_chooser_set_use_alpha :: proc(chooser: ^ColorChooser, use_alpha: glib.boolean) ---

    @(link_name = "gtk_color_chooser_add_palette")
    color_chooser_add_palette :: proc(chooser: ^ColorChooser, orientation: Orientation, colors_per_line: i32, n_colors: i32, colors: [^]RGBA) ---

    @(link_name = "gtk_color_chooser_dialog_get_type")
    color_chooser_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_color_chooser_dialog_new")
    color_chooser_dialog_new :: proc(title: cstring, parent: ^Window) -> ^Widget ---

    @(link_name = "gtk_color_chooser_widget_get_type")
    color_chooser_widget_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_color_chooser_widget_new")
    color_chooser_widget_new :: proc() -> ^Widget ---

    @(link_name = "gtk_color_dialog_get_type")
    color_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_color_dialog_new")
    color_dialog_new :: proc() -> ^ColorDialog ---

    @(link_name = "gtk_color_dialog_get_title")
    color_dialog_get_title :: proc(self: ^ColorDialog) -> cstring ---

    @(link_name = "gtk_color_dialog_set_title")
    color_dialog_set_title :: proc(self: ^ColorDialog, title: cstring) ---

    @(link_name = "gtk_color_dialog_get_modal")
    color_dialog_get_modal :: proc(self: ^ColorDialog) -> glib.boolean ---

    @(link_name = "gtk_color_dialog_set_modal")
    color_dialog_set_modal :: proc(self: ^ColorDialog, modal: glib.boolean) ---

    @(link_name = "gtk_color_dialog_get_with_alpha")
    color_dialog_get_with_alpha :: proc(self: ^ColorDialog) -> glib.boolean ---

    @(link_name = "gtk_color_dialog_set_with_alpha")
    color_dialog_set_with_alpha :: proc(self: ^ColorDialog, with_alpha: glib.boolean) ---

    @(link_name = "gtk_color_dialog_choose_rgba")
    color_dialog_choose_rgba :: proc(self: ^ColorDialog, parent: ^Window, initial_color: ^RGBA, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_color_dialog_choose_rgba_finish")
    color_dialog_choose_rgba_finish :: proc(self: ^ColorDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^RGBA ---

    @(link_name = "gtk_color_dialog_button_get_type")
    color_dialog_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_color_dialog_button_new")
    color_dialog_button_new :: proc(dialog: ^ColorDialog) -> ^Widget ---

    @(link_name = "gtk_color_dialog_button_get_dialog")
    color_dialog_button_get_dialog :: proc(self: ^ColorDialogButton) -> ^ColorDialog ---

    @(link_name = "gtk_color_dialog_button_set_dialog")
    color_dialog_button_set_dialog :: proc(self: ^ColorDialogButton, dialog: ^ColorDialog) ---

    @(link_name = "gtk_color_dialog_button_get_rgba")
    color_dialog_button_get_rgba :: proc(self: ^ColorDialogButton) -> ^RGBA ---

    @(link_name = "gtk_color_dialog_button_set_rgba")
    color_dialog_button_set_rgba :: proc(self: ^ColorDialogButton, color: ^RGBA) ---

    @(link_name = "gtk_hsv_to_rgb")
    hsv_to_rgb :: proc(h: f32, s: f32, v: f32, r: ^f32, g: ^f32, b: ^f32) ---

    @(link_name = "gtk_rgb_to_hsv")
    rgb_to_hsv :: proc(r: f32, g: f32, b: f32, h: ^f32, s: ^f32, v: ^f32) ---

    @(link_name = "gtk_sorter_get_type")
    sorter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_sorter_compare")
    sorter_compare :: proc(self: ^Sorter, item1: glib.pointer, item2: glib.pointer) -> Ordering ---

    @(link_name = "gtk_sorter_get_order")
    sorter_get_order :: proc(self: ^Sorter) -> SorterOrder ---

    @(link_name = "gtk_sorter_changed")
    sorter_changed :: proc(self: ^Sorter, change: SorterChange) ---

    @(link_name = "gtk_sort_list_model_get_type")
    sort_list_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_sort_list_model_new")
    sort_list_model_new :: proc(model: ^gio.ListModel, sorter: ^Sorter) -> ^SortListModel ---

    @(link_name = "gtk_sort_list_model_set_sorter")
    sort_list_model_set_sorter :: proc(self: ^SortListModel, sorter: ^Sorter) ---

    @(link_name = "gtk_sort_list_model_get_sorter")
    sort_list_model_get_sorter :: proc(self: ^SortListModel) -> ^Sorter ---

    @(link_name = "gtk_sort_list_model_set_section_sorter")
    sort_list_model_set_section_sorter :: proc(self: ^SortListModel, sorter: ^Sorter) ---

    @(link_name = "gtk_sort_list_model_get_section_sorter")
    sort_list_model_get_section_sorter :: proc(self: ^SortListModel) -> ^Sorter ---

    @(link_name = "gtk_sort_list_model_set_model")
    sort_list_model_set_model :: proc(self: ^SortListModel, model: ^gio.ListModel) ---

    @(link_name = "gtk_sort_list_model_get_model")
    sort_list_model_get_model :: proc(self: ^SortListModel) -> ^gio.ListModel ---

    @(link_name = "gtk_sort_list_model_set_incremental")
    sort_list_model_set_incremental :: proc(self: ^SortListModel, incremental: glib.boolean) ---

    @(link_name = "gtk_sort_list_model_get_incremental")
    sort_list_model_get_incremental :: proc(self: ^SortListModel) -> glib.boolean ---

    @(link_name = "gtk_sort_list_model_get_pending")
    sort_list_model_get_pending :: proc(self: ^SortListModel) -> glib.uint_ ---

    @(link_name = "gtk_selection_model_get_type")
    selection_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_selection_model_is_selected")
    selection_model_is_selected :: proc(model: ^SelectionModel, position: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_selection_model_get_selection")
    selection_model_get_selection :: proc(model: ^SelectionModel) -> ^Bitset ---

    @(link_name = "gtk_selection_model_get_selection_in_range")
    selection_model_get_selection_in_range :: proc(model: ^SelectionModel, position: glib.uint_, n_items: glib.uint_) -> ^Bitset ---

    @(link_name = "gtk_selection_model_select_item")
    selection_model_select_item :: proc(model: ^SelectionModel, position: glib.uint_, unselect_rest: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_selection_model_unselect_item")
    selection_model_unselect_item :: proc(model: ^SelectionModel, position: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_selection_model_select_range")
    selection_model_select_range :: proc(model: ^SelectionModel, position: glib.uint_, n_items: glib.uint_, unselect_rest: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_selection_model_unselect_range")
    selection_model_unselect_range :: proc(model: ^SelectionModel, position: glib.uint_, n_items: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_selection_model_select_all")
    selection_model_select_all :: proc(model: ^SelectionModel) -> glib.boolean ---

    @(link_name = "gtk_selection_model_unselect_all")
    selection_model_unselect_all :: proc(model: ^SelectionModel) -> glib.boolean ---

    @(link_name = "gtk_selection_model_set_selection")
    selection_model_set_selection :: proc(model: ^SelectionModel, selected: ^Bitset, mask: ^Bitset) -> glib.boolean ---

    @(link_name = "gtk_selection_model_selection_changed")
    selection_model_selection_changed :: proc(model: ^SelectionModel, position: glib.uint_, n_items: glib.uint_) ---

    @(link_name = "gtk_column_view_get_type")
    column_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_column_view_new")
    column_view_new :: proc(model: ^SelectionModel) -> ^Widget ---

    @(link_name = "gtk_column_view_get_columns")
    column_view_get_columns :: proc(self: ^ColumnView) -> ^gio.ListModel ---

    @(link_name = "gtk_column_view_append_column")
    column_view_append_column :: proc(self: ^ColumnView, column: ^ColumnViewColumn) ---

    @(link_name = "gtk_column_view_remove_column")
    column_view_remove_column :: proc(self: ^ColumnView, column: ^ColumnViewColumn) ---

    @(link_name = "gtk_column_view_insert_column")
    column_view_insert_column :: proc(self: ^ColumnView, position: glib.uint_, column: ^ColumnViewColumn) ---

    @(link_name = "gtk_column_view_get_model")
    column_view_get_model :: proc(self: ^ColumnView) -> ^SelectionModel ---

    @(link_name = "gtk_column_view_set_model")
    column_view_set_model :: proc(self: ^ColumnView, model: ^SelectionModel) ---

    @(link_name = "gtk_column_view_get_show_row_separators")
    column_view_get_show_row_separators :: proc(self: ^ColumnView) -> glib.boolean ---

    @(link_name = "gtk_column_view_set_show_row_separators")
    column_view_set_show_row_separators :: proc(self: ^ColumnView, show_row_separators: glib.boolean) ---

    @(link_name = "gtk_column_view_get_show_column_separators")
    column_view_get_show_column_separators :: proc(self: ^ColumnView) -> glib.boolean ---

    @(link_name = "gtk_column_view_set_show_column_separators")
    column_view_set_show_column_separators :: proc(self: ^ColumnView, show_column_separators: glib.boolean) ---

    @(link_name = "gtk_column_view_get_sorter")
    column_view_get_sorter :: proc(self: ^ColumnView) -> ^Sorter ---

    @(link_name = "gtk_column_view_sort_by_column")
    column_view_sort_by_column :: proc(self: ^ColumnView, column: ^ColumnViewColumn, direction: SortType) ---

    @(link_name = "gtk_column_view_set_single_click_activate")
    column_view_set_single_click_activate :: proc(self: ^ColumnView, single_click_activate: glib.boolean) ---

    @(link_name = "gtk_column_view_get_single_click_activate")
    column_view_get_single_click_activate :: proc(self: ^ColumnView) -> glib.boolean ---

    @(link_name = "gtk_column_view_set_reorderable")
    column_view_set_reorderable :: proc(self: ^ColumnView, reorderable: glib.boolean) ---

    @(link_name = "gtk_column_view_get_reorderable")
    column_view_get_reorderable :: proc(self: ^ColumnView) -> glib.boolean ---

    @(link_name = "gtk_column_view_set_enable_rubberband")
    column_view_set_enable_rubberband :: proc(self: ^ColumnView, enable_rubberband: glib.boolean) ---

    @(link_name = "gtk_column_view_get_enable_rubberband")
    column_view_get_enable_rubberband :: proc(self: ^ColumnView) -> glib.boolean ---

    @(link_name = "gtk_column_view_set_tab_behavior")
    column_view_set_tab_behavior :: proc(self: ^ColumnView, tab_behavior: ListTabBehavior) ---

    @(link_name = "gtk_column_view_get_tab_behavior")
    column_view_get_tab_behavior :: proc(self: ^ColumnView) -> ListTabBehavior ---

    @(link_name = "gtk_column_view_set_row_factory")
    column_view_set_row_factory :: proc(self: ^ColumnView, factory: ^ListItemFactory) ---

    @(link_name = "gtk_column_view_get_row_factory")
    column_view_get_row_factory :: proc(self: ^ColumnView) -> ^ListItemFactory ---

    @(link_name = "gtk_column_view_set_header_factory")
    column_view_set_header_factory :: proc(self: ^ColumnView, factory: ^ListItemFactory) ---

    @(link_name = "gtk_column_view_get_header_factory")
    column_view_get_header_factory :: proc(self: ^ColumnView) -> ^ListItemFactory ---

    @(link_name = "gtk_column_view_scroll_to")
    column_view_scroll_to :: proc(self: ^ColumnView, pos: glib.uint_, column: ^ColumnViewColumn, flags: ListScrollFlags, scroll: ^ScrollInfo) ---

    @(link_name = "gtk_list_item_get_type")
    list_item_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_list_item_get_item")
    list_item_get_item :: proc(self: ^ListItem) -> glib.pointer ---

    @(link_name = "gtk_list_item_get_position")
    list_item_get_position :: proc(self: ^ListItem) -> glib.uint_ ---

    @(link_name = "gtk_list_item_get_selected")
    list_item_get_selected :: proc(self: ^ListItem) -> glib.boolean ---

    @(link_name = "gtk_list_item_get_selectable")
    list_item_get_selectable :: proc(self: ^ListItem) -> glib.boolean ---

    @(link_name = "gtk_list_item_set_selectable")
    list_item_set_selectable :: proc(self: ^ListItem, selectable: glib.boolean) ---

    @(link_name = "gtk_list_item_get_activatable")
    list_item_get_activatable :: proc(self: ^ListItem) -> glib.boolean ---

    @(link_name = "gtk_list_item_set_activatable")
    list_item_set_activatable :: proc(self: ^ListItem, activatable: glib.boolean) ---

    @(link_name = "gtk_list_item_get_focusable")
    list_item_get_focusable :: proc(self: ^ListItem) -> glib.boolean ---

    @(link_name = "gtk_list_item_set_focusable")
    list_item_set_focusable :: proc(self: ^ListItem, focusable: glib.boolean) ---

    @(link_name = "gtk_list_item_set_child")
    list_item_set_child :: proc(self: ^ListItem, child: ^Widget) ---

    @(link_name = "gtk_list_item_get_child")
    list_item_get_child :: proc(self: ^ListItem) -> ^Widget ---

    @(link_name = "gtk_list_item_set_accessible_description")
    list_item_set_accessible_description :: proc(self: ^ListItem, description: cstring) ---

    @(link_name = "gtk_list_item_get_accessible_description")
    list_item_get_accessible_description :: proc(self: ^ListItem) -> cstring ---

    @(link_name = "gtk_list_item_set_accessible_label")
    list_item_set_accessible_label :: proc(self: ^ListItem, label: cstring) ---

    @(link_name = "gtk_list_item_get_accessible_label")
    list_item_get_accessible_label :: proc(self: ^ListItem) -> cstring ---

    @(link_name = "gtk_column_view_cell_get_type")
    column_view_cell_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_column_view_cell_get_item")
    column_view_cell_get_item :: proc(self: ^ColumnViewCell) -> glib.pointer ---

    @(link_name = "gtk_column_view_cell_get_position")
    column_view_cell_get_position :: proc(self: ^ColumnViewCell) -> glib.uint_ ---

    @(link_name = "gtk_column_view_cell_get_selected")
    column_view_cell_get_selected :: proc(self: ^ColumnViewCell) -> glib.boolean ---

    @(link_name = "gtk_column_view_cell_get_focusable")
    column_view_cell_get_focusable :: proc(self: ^ColumnViewCell) -> glib.boolean ---

    @(link_name = "gtk_column_view_cell_set_focusable")
    column_view_cell_set_focusable :: proc(self: ^ColumnViewCell, focusable: glib.boolean) ---

    @(link_name = "gtk_column_view_cell_set_child")
    column_view_cell_set_child :: proc(self: ^ColumnViewCell, child: ^Widget) ---

    @(link_name = "gtk_column_view_cell_get_child")
    column_view_cell_get_child :: proc(self: ^ColumnViewCell) -> ^Widget ---

    @(link_name = "gtk_column_view_column_get_type")
    column_view_column_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_column_view_column_new")
    column_view_column_new :: proc(title: cstring, factory: ^ListItemFactory) -> ^ColumnViewColumn ---

    @(link_name = "gtk_column_view_column_get_column_view")
    column_view_column_get_column_view :: proc(self: ^ColumnViewColumn) -> ^ColumnView ---

    @(link_name = "gtk_column_view_column_set_factory")
    column_view_column_set_factory :: proc(self: ^ColumnViewColumn, factory: ^ListItemFactory) ---

    @(link_name = "gtk_column_view_column_get_factory")
    column_view_column_get_factory :: proc(self: ^ColumnViewColumn) -> ^ListItemFactory ---

    @(link_name = "gtk_column_view_column_set_title")
    column_view_column_set_title :: proc(self: ^ColumnViewColumn, title: cstring) ---

    @(link_name = "gtk_column_view_column_get_title")
    column_view_column_get_title :: proc(self: ^ColumnViewColumn) -> cstring ---

    @(link_name = "gtk_column_view_column_set_sorter")
    column_view_column_set_sorter :: proc(self: ^ColumnViewColumn, sorter: ^Sorter) ---

    @(link_name = "gtk_column_view_column_get_sorter")
    column_view_column_get_sorter :: proc(self: ^ColumnViewColumn) -> ^Sorter ---

    @(link_name = "gtk_column_view_column_set_visible")
    column_view_column_set_visible :: proc(self: ^ColumnViewColumn, visible: glib.boolean) ---

    @(link_name = "gtk_column_view_column_get_visible")
    column_view_column_get_visible :: proc(self: ^ColumnViewColumn) -> glib.boolean ---

    @(link_name = "gtk_column_view_column_set_header_menu")
    column_view_column_set_header_menu :: proc(self: ^ColumnViewColumn, menu: ^gio.MenuModel) ---

    @(link_name = "gtk_column_view_column_get_header_menu")
    column_view_column_get_header_menu :: proc(self: ^ColumnViewColumn) -> ^gio.MenuModel ---

    @(link_name = "gtk_column_view_column_set_fixed_width")
    column_view_column_set_fixed_width :: proc(self: ^ColumnViewColumn, fixed_width: i32) ---

    @(link_name = "gtk_column_view_column_get_fixed_width")
    column_view_column_get_fixed_width :: proc(self: ^ColumnViewColumn) -> i32 ---

    @(link_name = "gtk_column_view_column_set_resizable")
    column_view_column_set_resizable :: proc(self: ^ColumnViewColumn, resizable: glib.boolean) ---

    @(link_name = "gtk_column_view_column_get_resizable")
    column_view_column_get_resizable :: proc(self: ^ColumnViewColumn) -> glib.boolean ---

    @(link_name = "gtk_column_view_column_set_expand")
    column_view_column_set_expand :: proc(self: ^ColumnViewColumn, expand: glib.boolean) ---

    @(link_name = "gtk_column_view_column_get_expand")
    column_view_column_get_expand :: proc(self: ^ColumnViewColumn) -> glib.boolean ---

    @(link_name = "gtk_column_view_column_set_id")
    column_view_column_set_id :: proc(self: ^ColumnViewColumn, id: cstring) ---

    @(link_name = "gtk_column_view_column_get_id")
    column_view_column_get_id :: proc(self: ^ColumnViewColumn) -> cstring ---

    @(link_name = "gtk_column_view_row_get_type")
    column_view_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_column_view_row_get_item")
    column_view_row_get_item :: proc(self: ^ColumnViewRow) -> glib.pointer ---

    @(link_name = "gtk_column_view_row_get_position")
    column_view_row_get_position :: proc(self: ^ColumnViewRow) -> glib.uint_ ---

    @(link_name = "gtk_column_view_row_get_selected")
    column_view_row_get_selected :: proc(self: ^ColumnViewRow) -> glib.boolean ---

    @(link_name = "gtk_column_view_row_get_selectable")
    column_view_row_get_selectable :: proc(self: ^ColumnViewRow) -> glib.boolean ---

    @(link_name = "gtk_column_view_row_set_selectable")
    column_view_row_set_selectable :: proc(self: ^ColumnViewRow, selectable: glib.boolean) ---

    @(link_name = "gtk_column_view_row_get_activatable")
    column_view_row_get_activatable :: proc(self: ^ColumnViewRow) -> glib.boolean ---

    @(link_name = "gtk_column_view_row_set_activatable")
    column_view_row_set_activatable :: proc(self: ^ColumnViewRow, activatable: glib.boolean) ---

    @(link_name = "gtk_column_view_row_get_focusable")
    column_view_row_get_focusable :: proc(self: ^ColumnViewRow) -> glib.boolean ---

    @(link_name = "gtk_column_view_row_set_focusable")
    column_view_row_set_focusable :: proc(self: ^ColumnViewRow, focusable: glib.boolean) ---

    @(link_name = "gtk_column_view_row_get_accessible_description")
    column_view_row_get_accessible_description :: proc(self: ^ColumnViewRow) -> cstring ---

    @(link_name = "gtk_column_view_row_set_accessible_description")
    column_view_row_set_accessible_description :: proc(self: ^ColumnViewRow, description: cstring) ---

    @(link_name = "gtk_column_view_row_get_accessible_label")
    column_view_row_get_accessible_label :: proc(self: ^ColumnViewRow) -> cstring ---

    @(link_name = "gtk_column_view_row_set_accessible_label")
    column_view_row_set_accessible_label :: proc(self: ^ColumnViewRow, label: cstring) ---

    @(link_name = "gtk_column_view_sorter_get_type")
    column_view_sorter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_column_view_sorter_get_primary_sort_column")
    column_view_sorter_get_primary_sort_column :: proc(self: ^ColumnViewSorter) -> ^ColumnViewColumn ---

    @(link_name = "gtk_column_view_sorter_get_primary_sort_order")
    column_view_sorter_get_primary_sort_order :: proc(self: ^ColumnViewSorter) -> SortType ---

    @(link_name = "gtk_column_view_sorter_get_n_sort_columns")
    column_view_sorter_get_n_sort_columns :: proc(self: ^ColumnViewSorter) -> glib.uint_ ---

    @(link_name = "gtk_column_view_sorter_get_nth_sort_column")
    column_view_sorter_get_nth_sort_column :: proc(self: ^ColumnViewSorter, position: glib.uint_, sort_order: ^SortType) -> ^ColumnViewColumn ---

    @(link_name = "gtk_tree_sortable_get_type")
    tree_sortable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_sortable_sort_column_changed")
    tree_sortable_sort_column_changed :: proc(sortable: ^TreeSortable) ---

    @(link_name = "gtk_tree_sortable_get_sort_column_id")
    tree_sortable_get_sort_column_id :: proc(sortable: ^TreeSortable, sort_column_id: ^i32, order: ^SortType) -> glib.boolean ---

    @(link_name = "gtk_tree_sortable_set_sort_column_id")
    tree_sortable_set_sort_column_id :: proc(sortable: ^TreeSortable, sort_column_id: i32, order: SortType) ---

    @(link_name = "gtk_tree_sortable_set_sort_func")
    tree_sortable_set_sort_func :: proc(sortable: ^TreeSortable, sort_column_id: i32, sort_func: TreeIterCompareFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_sortable_set_default_sort_func")
    tree_sortable_set_default_sort_func :: proc(sortable: ^TreeSortable, sort_func: TreeIterCompareFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_sortable_has_default_sort_func")
    tree_sortable_has_default_sort_func :: proc(sortable: ^TreeSortable) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_get_type")
    tree_view_column_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_view_column_new")
    tree_view_column_new :: proc() -> ^TreeViewColumn ---

    @(link_name = "gtk_tree_view_column_new_with_area")
    tree_view_column_new_with_area :: proc(area: ^CellArea) -> ^TreeViewColumn ---

    @(link_name = "gtk_tree_view_column_new_with_attributes")
    tree_view_column_new_with_attributes :: proc(title: cstring, cell: ^CellRenderer, #c_vararg var_args: ..any) -> ^TreeViewColumn ---

    @(link_name = "gtk_tree_view_column_pack_start")
    tree_view_column_pack_start :: proc(tree_column: ^TreeViewColumn, cell: ^CellRenderer, expand: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_pack_end")
    tree_view_column_pack_end :: proc(tree_column: ^TreeViewColumn, cell: ^CellRenderer, expand: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_clear")
    tree_view_column_clear :: proc(tree_column: ^TreeViewColumn) ---

    @(link_name = "gtk_tree_view_column_add_attribute")
    tree_view_column_add_attribute :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer, attribute: cstring, column: i32) ---

    @(link_name = "gtk_tree_view_column_set_attributes")
    tree_view_column_set_attributes :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_view_column_set_cell_data_func")
    tree_view_column_set_cell_data_func :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer, func: TreeCellDataFunc, func_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_view_column_clear_attributes")
    tree_view_column_clear_attributes :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer) ---

    @(link_name = "gtk_tree_view_column_set_spacing")
    tree_view_column_set_spacing :: proc(tree_column: ^TreeViewColumn, spacing: i32) ---

    @(link_name = "gtk_tree_view_column_get_spacing")
    tree_view_column_get_spacing :: proc(tree_column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_set_visible")
    tree_view_column_set_visible :: proc(tree_column: ^TreeViewColumn, visible: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_get_visible")
    tree_view_column_get_visible :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_set_resizable")
    tree_view_column_set_resizable :: proc(tree_column: ^TreeViewColumn, resizable: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_get_resizable")
    tree_view_column_get_resizable :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_set_sizing")
    tree_view_column_set_sizing :: proc(tree_column: ^TreeViewColumn, type: TreeViewColumnSizing) ---

    @(link_name = "gtk_tree_view_column_get_sizing")
    tree_view_column_get_sizing :: proc(tree_column: ^TreeViewColumn) -> TreeViewColumnSizing ---

    @(link_name = "gtk_tree_view_column_get_x_offset")
    tree_view_column_get_x_offset :: proc(tree_column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_get_width")
    tree_view_column_get_width :: proc(tree_column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_get_fixed_width")
    tree_view_column_get_fixed_width :: proc(tree_column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_set_fixed_width")
    tree_view_column_set_fixed_width :: proc(tree_column: ^TreeViewColumn, fixed_width: i32) ---

    @(link_name = "gtk_tree_view_column_set_min_width")
    tree_view_column_set_min_width :: proc(tree_column: ^TreeViewColumn, min_width: i32) ---

    @(link_name = "gtk_tree_view_column_get_min_width")
    tree_view_column_get_min_width :: proc(tree_column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_set_max_width")
    tree_view_column_set_max_width :: proc(tree_column: ^TreeViewColumn, max_width: i32) ---

    @(link_name = "gtk_tree_view_column_get_max_width")
    tree_view_column_get_max_width :: proc(tree_column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_clicked")
    tree_view_column_clicked :: proc(tree_column: ^TreeViewColumn) ---

    @(link_name = "gtk_tree_view_column_set_title")
    tree_view_column_set_title :: proc(tree_column: ^TreeViewColumn, title: cstring) ---

    @(link_name = "gtk_tree_view_column_get_title")
    tree_view_column_get_title :: proc(tree_column: ^TreeViewColumn) -> cstring ---

    @(link_name = "gtk_tree_view_column_set_expand")
    tree_view_column_set_expand :: proc(tree_column: ^TreeViewColumn, expand: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_get_expand")
    tree_view_column_get_expand :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_set_clickable")
    tree_view_column_set_clickable :: proc(tree_column: ^TreeViewColumn, clickable: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_get_clickable")
    tree_view_column_get_clickable :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_set_widget")
    tree_view_column_set_widget :: proc(tree_column: ^TreeViewColumn, widget: ^Widget) ---

    @(link_name = "gtk_tree_view_column_get_widget")
    tree_view_column_get_widget :: proc(tree_column: ^TreeViewColumn) -> ^Widget ---

    @(link_name = "gtk_tree_view_column_set_alignment")
    tree_view_column_set_alignment :: proc(tree_column: ^TreeViewColumn, xalign: f32) ---

    @(link_name = "gtk_tree_view_column_get_alignment")
    tree_view_column_get_alignment :: proc(tree_column: ^TreeViewColumn) -> f32 ---

    @(link_name = "gtk_tree_view_column_set_reorderable")
    tree_view_column_set_reorderable :: proc(tree_column: ^TreeViewColumn, reorderable: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_get_reorderable")
    tree_view_column_get_reorderable :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_set_sort_column_id")
    tree_view_column_set_sort_column_id :: proc(tree_column: ^TreeViewColumn, sort_column_id: i32) ---

    @(link_name = "gtk_tree_view_column_get_sort_column_id")
    tree_view_column_get_sort_column_id :: proc(tree_column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_column_set_sort_indicator")
    tree_view_column_set_sort_indicator :: proc(tree_column: ^TreeViewColumn, setting: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_get_sort_indicator")
    tree_view_column_get_sort_indicator :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_set_sort_order")
    tree_view_column_set_sort_order :: proc(tree_column: ^TreeViewColumn, order: SortType) ---

    @(link_name = "gtk_tree_view_column_get_sort_order")
    tree_view_column_get_sort_order :: proc(tree_column: ^TreeViewColumn) -> SortType ---

    @(link_name = "gtk_tree_view_column_cell_set_cell_data")
    tree_view_column_cell_set_cell_data :: proc(tree_column: ^TreeViewColumn, tree_model: ^TreeModel, iter: ^TreeIter, is_expander: glib.boolean, is_expanded: glib.boolean) ---

    @(link_name = "gtk_tree_view_column_cell_get_size")
    tree_view_column_cell_get_size :: proc(tree_column: ^TreeViewColumn, x_offset: ^i32, y_offset: ^i32, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_tree_view_column_cell_is_visible")
    tree_view_column_cell_is_visible :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_focus_cell")
    tree_view_column_focus_cell :: proc(tree_column: ^TreeViewColumn, cell: ^CellRenderer) ---

    @(link_name = "gtk_tree_view_column_cell_get_position")
    tree_view_column_cell_get_position :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer, x_offset: ^i32, width: ^i32) -> glib.boolean ---

    @(link_name = "gtk_tree_view_column_queue_resize")
    tree_view_column_queue_resize :: proc(tree_column: ^TreeViewColumn) ---

    @(link_name = "gtk_tree_view_column_get_tree_view")
    tree_view_column_get_tree_view :: proc(tree_column: ^TreeViewColumn) -> ^Widget ---

    @(link_name = "gtk_tree_view_column_get_button")
    tree_view_column_get_button :: proc(tree_column: ^TreeViewColumn) -> ^Widget ---

    @(link_name = "gtk_editable_get_type")
    editable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_editable_get_text")
    editable_get_text :: proc(editable: ^Editable) -> cstring ---

    @(link_name = "gtk_editable_set_text")
    editable_set_text :: proc(editable: ^Editable, text: cstring) ---

    @(link_name = "gtk_editable_get_chars")
    editable_get_chars :: proc(editable: ^Editable, start_pos: i32, end_pos: i32) -> cstring ---

    @(link_name = "gtk_editable_insert_text")
    editable_insert_text :: proc(editable: ^Editable, text: cstring, length: i32, position: ^i32) ---

    @(link_name = "gtk_editable_delete_text")
    editable_delete_text :: proc(editable: ^Editable, start_pos: i32, end_pos: i32) ---

    @(link_name = "gtk_editable_get_selection_bounds")
    editable_get_selection_bounds :: proc(editable: ^Editable, start_pos: [^]i32, end_pos: [^]i32) -> glib.boolean ---

    @(link_name = "gtk_editable_delete_selection")
    editable_delete_selection :: proc(editable: ^Editable) ---

    @(link_name = "gtk_editable_select_region")
    editable_select_region :: proc(editable: ^Editable, start_pos: i32, end_pos: i32) ---

    @(link_name = "gtk_editable_set_position")
    editable_set_position :: proc(editable: ^Editable, position: i32) ---

    @(link_name = "gtk_editable_get_position")
    editable_get_position :: proc(editable: ^Editable) -> i32 ---

    @(link_name = "gtk_editable_get_editable")
    editable_get_editable :: proc(editable: ^Editable) -> glib.boolean ---

    @(link_name = "gtk_editable_set_editable")
    editable_set_editable :: proc(editable: ^Editable, is_editable: glib.boolean) ---

    @(link_name = "gtk_editable_get_alignment")
    editable_get_alignment :: proc(editable: ^Editable) -> f32 ---

    @(link_name = "gtk_editable_set_alignment")
    editable_set_alignment :: proc(editable: ^Editable, xalign: f32) ---

    @(link_name = "gtk_editable_get_width_chars")
    editable_get_width_chars :: proc(editable: ^Editable) -> i32 ---

    @(link_name = "gtk_editable_set_width_chars")
    editable_set_width_chars :: proc(editable: ^Editable, n_chars: i32) ---

    @(link_name = "gtk_editable_get_max_width_chars")
    editable_get_max_width_chars :: proc(editable: ^Editable) -> i32 ---

    @(link_name = "gtk_editable_set_max_width_chars")
    editable_set_max_width_chars :: proc(editable: ^Editable, n_chars: i32) ---

    @(link_name = "gtk_editable_get_enable_undo")
    editable_get_enable_undo :: proc(editable: ^Editable) -> glib.boolean ---

    @(link_name = "gtk_editable_set_enable_undo")
    editable_set_enable_undo :: proc(editable: ^Editable, enable_undo: glib.boolean) ---

    @(link_name = "gtk_editable_install_properties")
    editable_install_properties :: proc(object_class: [^]gobj.ObjectClass, first_prop: glib.uint_) -> glib.uint_ ---

    @(link_name = "gtk_editable_get_delegate")
    editable_get_delegate :: proc(editable: ^Editable) -> ^Editable ---

    @(link_name = "gtk_editable_init_delegate")
    editable_init_delegate :: proc(editable: ^Editable) ---

    @(link_name = "gtk_editable_finish_delegate")
    editable_finish_delegate :: proc(editable: ^Editable) ---

    @(link_name = "gtk_editable_delegate_set_property")
    editable_delegate_set_property :: proc(object: ^gobj.Object, prop_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec) -> glib.boolean ---

    @(link_name = "gtk_editable_delegate_get_property")
    editable_delegate_get_property :: proc(object: ^gobj.Object, prop_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec) -> glib.boolean ---

    @(link_name = "gtk_editable_delegate_get_accessible_platform_state")
    editable_delegate_get_accessible_platform_state :: proc(editable: ^Editable, state: AccessiblePlatformState) -> glib.boolean ---

    @(link_name = "gtk_im_context_get_type")
    im_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_im_context_set_client_widget")
    im_context_set_client_widget :: proc(context_p: ^IMContext, widget: ^Widget) ---

    @(link_name = "gtk_im_context_get_preedit_string")
    im_context_get_preedit_string :: proc(context_p: ^IMContext, str: ^cstring, attrs: [^]^pango.AttrList, cursor_pos: [^]i32) ---

    @(link_name = "gtk_im_context_filter_keypress")
    im_context_filter_keypress :: proc(context_p: ^IMContext, event: ^Event) -> glib.boolean ---

    @(link_name = "gtk_im_context_filter_key")
    im_context_filter_key :: proc(context_p: ^IMContext, press: glib.boolean, surface: ^Surface, device: ^Device, time: glib.uint32, keycode: glib.uint_, state: ModifierType, group: i32) -> glib.boolean ---

    @(link_name = "gtk_im_context_focus_in")
    im_context_focus_in :: proc(context_p: ^IMContext) ---

    @(link_name = "gtk_im_context_focus_out")
    im_context_focus_out :: proc(context_p: ^IMContext) ---

    @(link_name = "gtk_im_context_reset")
    im_context_reset :: proc(context_p: ^IMContext) ---

    @(link_name = "gtk_im_context_set_cursor_location")
    im_context_set_cursor_location :: proc(context_p: ^IMContext, area: ^Rectangle) ---

    @(link_name = "gtk_im_context_set_use_preedit")
    im_context_set_use_preedit :: proc(context_p: ^IMContext, use_preedit: glib.boolean) ---

    @(link_name = "gtk_im_context_set_surrounding")
    im_context_set_surrounding :: proc(context_p: ^IMContext, text: cstring, len: i32, cursor_index: i32) ---

    @(link_name = "gtk_im_context_get_surrounding")
    im_context_get_surrounding :: proc(context_p: ^IMContext, text: ^cstring, cursor_index: ^i32) -> glib.boolean ---

    @(link_name = "gtk_im_context_set_surrounding_with_selection")
    im_context_set_surrounding_with_selection :: proc(context_p: ^IMContext, text: cstring, len: i32, cursor_index: i32, anchor_index: i32) ---

    @(link_name = "gtk_im_context_get_surrounding_with_selection")
    im_context_get_surrounding_with_selection :: proc(context_p: ^IMContext, text: ^cstring, cursor_index: ^i32, anchor_index: ^i32) -> glib.boolean ---

    @(link_name = "gtk_im_context_delete_surrounding")
    im_context_delete_surrounding :: proc(context_p: ^IMContext, offset: i32, n_chars: i32) -> glib.boolean ---

    @(link_name = "gtk_entry_buffer_get_type")
    entry_buffer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_entry_buffer_new")
    entry_buffer_new :: proc(initial_chars: cstring, n_initial_chars: i32) -> ^EntryBuffer ---

    @(link_name = "gtk_entry_buffer_get_bytes")
    entry_buffer_get_bytes :: proc(buffer: ^EntryBuffer) -> glib.size ---

    @(link_name = "gtk_entry_buffer_get_length")
    entry_buffer_get_length :: proc(buffer: ^EntryBuffer) -> glib.uint_ ---

    @(link_name = "gtk_entry_buffer_get_text")
    entry_buffer_get_text :: proc(buffer: ^EntryBuffer) -> cstring ---

    @(link_name = "gtk_entry_buffer_set_text")
    entry_buffer_set_text :: proc(buffer: ^EntryBuffer, chars: cstring, n_chars: i32) ---

    @(link_name = "gtk_entry_buffer_set_max_length")
    entry_buffer_set_max_length :: proc(buffer: ^EntryBuffer, max_length: i32) ---

    @(link_name = "gtk_entry_buffer_get_max_length")
    entry_buffer_get_max_length :: proc(buffer: ^EntryBuffer) -> i32 ---

    @(link_name = "gtk_entry_buffer_insert_text")
    entry_buffer_insert_text :: proc(buffer: ^EntryBuffer, position: glib.uint_, chars: cstring, n_chars: i32) -> glib.uint_ ---

    @(link_name = "gtk_entry_buffer_delete_text")
    entry_buffer_delete_text :: proc(buffer: ^EntryBuffer, position: glib.uint_, n_chars: i32) -> glib.uint_ ---

    @(link_name = "gtk_entry_buffer_emit_inserted_text")
    entry_buffer_emit_inserted_text :: proc(buffer: ^EntryBuffer, position: glib.uint_, chars: cstring, n_chars: glib.uint_) ---

    @(link_name = "gtk_entry_buffer_emit_deleted_text")
    entry_buffer_emit_deleted_text :: proc(buffer: ^EntryBuffer, position: glib.uint_, n_chars: glib.uint_) ---

    @(link_name = "gtk_list_store_get_type")
    list_store_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_list_store_new")
    list_store_new :: proc(n_columns: i32, #c_vararg var_args: ..any) -> ^ListStore ---

    @(link_name = "gtk_list_store_newv")
    list_store_newv :: proc(n_columns: i32, types: [^]gobj.Type) -> ^ListStore ---

    @(link_name = "gtk_list_store_set_column_types")
    list_store_set_column_types :: proc(list_store: ^ListStore, n_columns: i32, types: [^]gobj.Type) ---

    @(link_name = "gtk_list_store_set_value")
    list_store_set_value :: proc(list_store: ^ListStore, iter: ^TreeIter, column: i32, value: ^gobj.Value) ---

    @(link_name = "gtk_list_store_set")
    list_store_set :: proc(list_store: ^ListStore, iter: ^TreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_list_store_set_valuesv")
    list_store_set_valuesv :: proc(list_store: ^ListStore, iter: ^TreeIter, columns: [^]i32, values: [^]gobj.Value, n_values: i32) ---

    @(link_name = "gtk_list_store_set_valist")
    list_store_set_valist :: proc(list_store: ^ListStore, iter: ^TreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_list_store_remove")
    list_store_remove :: proc(list_store: ^ListStore, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_list_store_insert")
    list_store_insert :: proc(list_store: ^ListStore, iter: ^TreeIter, position: i32) ---

    @(link_name = "gtk_list_store_insert_before")
    list_store_insert_before :: proc(list_store: ^ListStore, iter: ^TreeIter, sibling: ^TreeIter) ---

    @(link_name = "gtk_list_store_insert_after")
    list_store_insert_after :: proc(list_store: ^ListStore, iter: ^TreeIter, sibling: ^TreeIter) ---

    @(link_name = "gtk_list_store_insert_with_values")
    list_store_insert_with_values :: proc(list_store: ^ListStore, iter: ^TreeIter, position: i32, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_list_store_insert_with_valuesv")
    list_store_insert_with_valuesv :: proc(list_store: ^ListStore, iter: ^TreeIter, position: i32, columns: [^]i32, values: [^]gobj.Value, n_values: i32) ---

    @(link_name = "gtk_list_store_prepend")
    list_store_prepend :: proc(list_store: ^ListStore, iter: ^TreeIter) ---

    @(link_name = "gtk_list_store_append")
    list_store_append :: proc(list_store: ^ListStore, iter: ^TreeIter) ---

    @(link_name = "gtk_list_store_clear")
    list_store_clear :: proc(list_store: ^ListStore) ---

    @(link_name = "gtk_list_store_iter_is_valid")
    list_store_iter_is_valid :: proc(list_store: ^ListStore, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_list_store_reorder")
    list_store_reorder :: proc(store: ^ListStore, new_order: ^i32) ---

    @(link_name = "gtk_list_store_swap")
    list_store_swap :: proc(store: ^ListStore, a: ^TreeIter, b: ^TreeIter) ---

    @(link_name = "gtk_list_store_move_after")
    list_store_move_after :: proc(store: ^ListStore, iter: ^TreeIter, position: ^TreeIter) ---

    @(link_name = "gtk_list_store_move_before")
    list_store_move_before :: proc(store: ^ListStore, iter: ^TreeIter, position: ^TreeIter) ---

    @(link_name = "gtk_tree_model_filter_get_type")
    tree_model_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_model_filter_new")
    tree_model_filter_new :: proc(child_model: ^TreeModel, root: ^TreePath) -> ^TreeModel ---

    @(link_name = "gtk_tree_model_filter_set_visible_func")
    tree_model_filter_set_visible_func :: proc(filter: ^TreeModelFilter, func: TreeModelFilterVisibleFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_model_filter_set_modify_func")
    tree_model_filter_set_modify_func :: proc(filter: ^TreeModelFilter, n_columns: i32, types: [^]gobj.Type, func: TreeModelFilterModifyFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_model_filter_set_visible_column")
    tree_model_filter_set_visible_column :: proc(filter: ^TreeModelFilter, column: i32) ---

    @(link_name = "gtk_tree_model_filter_get_model")
    tree_model_filter_get_model :: proc(filter: ^TreeModelFilter) -> ^TreeModel ---

    @(link_name = "gtk_tree_model_filter_convert_child_iter_to_iter")
    tree_model_filter_convert_child_iter_to_iter :: proc(filter: ^TreeModelFilter, filter_iter: ^TreeIter, child_iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_model_filter_convert_iter_to_child_iter")
    tree_model_filter_convert_iter_to_child_iter :: proc(filter: ^TreeModelFilter, child_iter: ^TreeIter, filter_iter: ^TreeIter) ---

    @(link_name = "gtk_tree_model_filter_convert_child_path_to_path")
    tree_model_filter_convert_child_path_to_path :: proc(filter: ^TreeModelFilter, child_path: ^TreePath) -> ^TreePath ---

    @(link_name = "gtk_tree_model_filter_convert_path_to_child_path")
    tree_model_filter_convert_path_to_child_path :: proc(filter: ^TreeModelFilter, filter_path: ^TreePath) -> ^TreePath ---

    @(link_name = "gtk_tree_model_filter_refilter")
    tree_model_filter_refilter :: proc(filter: ^TreeModelFilter) ---

    @(link_name = "gtk_tree_model_filter_clear_cache")
    tree_model_filter_clear_cache :: proc(filter: ^TreeModelFilter) ---

    @(link_name = "gtk_entry_completion_get_type")
    entry_completion_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_entry_completion_new")
    entry_completion_new :: proc() -> ^EntryCompletion ---

    @(link_name = "gtk_entry_completion_new_with_area")
    entry_completion_new_with_area :: proc(area: ^CellArea) -> ^EntryCompletion ---

    @(link_name = "gtk_entry_completion_get_entry")
    entry_completion_get_entry :: proc(completion: ^EntryCompletion) -> ^Widget ---

    @(link_name = "gtk_entry_completion_set_model")
    entry_completion_set_model :: proc(completion: ^EntryCompletion, model: ^TreeModel) ---

    @(link_name = "gtk_entry_completion_get_model")
    entry_completion_get_model :: proc(completion: ^EntryCompletion) -> ^TreeModel ---

    @(link_name = "gtk_entry_completion_set_match_func")
    entry_completion_set_match_func :: proc(completion: ^EntryCompletion, func: EntryCompletionMatchFunc, func_data: glib.pointer, func_notify: glib.DestroyNotify) ---

    @(link_name = "gtk_entry_completion_set_minimum_key_length")
    entry_completion_set_minimum_key_length :: proc(completion: ^EntryCompletion, length: i32) ---

    @(link_name = "gtk_entry_completion_get_minimum_key_length")
    entry_completion_get_minimum_key_length :: proc(completion: ^EntryCompletion) -> i32 ---

    @(link_name = "gtk_entry_completion_compute_prefix")
    entry_completion_compute_prefix :: proc(completion: ^EntryCompletion, key: cstring) -> cstring ---

    @(link_name = "gtk_entry_completion_complete")
    entry_completion_complete :: proc(completion: ^EntryCompletion) ---

    @(link_name = "gtk_entry_completion_insert_prefix")
    entry_completion_insert_prefix :: proc(completion: ^EntryCompletion) ---

    @(link_name = "gtk_entry_completion_set_inline_completion")
    entry_completion_set_inline_completion :: proc(completion: ^EntryCompletion, inline_completion: glib.boolean) ---

    @(link_name = "gtk_entry_completion_get_inline_completion")
    entry_completion_get_inline_completion :: proc(completion: ^EntryCompletion) -> glib.boolean ---

    @(link_name = "gtk_entry_completion_set_inline_selection")
    entry_completion_set_inline_selection :: proc(completion: ^EntryCompletion, inline_selection: glib.boolean) ---

    @(link_name = "gtk_entry_completion_get_inline_selection")
    entry_completion_get_inline_selection :: proc(completion: ^EntryCompletion) -> glib.boolean ---

    @(link_name = "gtk_entry_completion_set_popup_completion")
    entry_completion_set_popup_completion :: proc(completion: ^EntryCompletion, popup_completion: glib.boolean) ---

    @(link_name = "gtk_entry_completion_get_popup_completion")
    entry_completion_get_popup_completion :: proc(completion: ^EntryCompletion) -> glib.boolean ---

    @(link_name = "gtk_entry_completion_set_popup_set_width")
    entry_completion_set_popup_set_width :: proc(completion: ^EntryCompletion, popup_set_width: glib.boolean) ---

    @(link_name = "gtk_entry_completion_get_popup_set_width")
    entry_completion_get_popup_set_width :: proc(completion: ^EntryCompletion) -> glib.boolean ---

    @(link_name = "gtk_entry_completion_set_popup_single_match")
    entry_completion_set_popup_single_match :: proc(completion: ^EntryCompletion, popup_single_match: glib.boolean) ---

    @(link_name = "gtk_entry_completion_get_popup_single_match")
    entry_completion_get_popup_single_match :: proc(completion: ^EntryCompletion) -> glib.boolean ---

    @(link_name = "gtk_entry_completion_get_completion_prefix")
    entry_completion_get_completion_prefix :: proc(completion: ^EntryCompletion) -> cstring ---

    @(link_name = "gtk_entry_completion_set_text_column")
    entry_completion_set_text_column :: proc(completion: ^EntryCompletion, column: i32) ---

    @(link_name = "gtk_entry_completion_get_text_column")
    entry_completion_get_text_column :: proc(completion: ^EntryCompletion) -> i32 ---

    @(link_name = "gtk_image_get_type")
    image_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_image_new")
    image_new :: proc() -> ^Widget ---

    @(link_name = "gtk_image_new_from_file")
    image_new_from_file :: proc(filename: cstring) -> ^Widget ---

    @(link_name = "gtk_image_new_from_resource")
    image_new_from_resource :: proc(resource_path: cstring) -> ^Widget ---

    @(link_name = "gtk_image_new_from_pixbuf")
    image_new_from_pixbuf :: proc(pixbuf: ^gdk.Pixbuf) -> ^Widget ---

    @(link_name = "gtk_image_new_from_paintable")
    image_new_from_paintable :: proc(paintable: ^Paintable) -> ^Widget ---

    @(link_name = "gtk_image_new_from_icon_name")
    image_new_from_icon_name :: proc(icon_name: cstring) -> ^Widget ---

    @(link_name = "gtk_image_new_from_gicon")
    image_new_from_gicon :: proc(icon: ^gio.Icon) -> ^Widget ---

    @(link_name = "gtk_image_clear")
    image_clear :: proc(image: ^Image) ---

    @(link_name = "gtk_image_set_from_file")
    image_set_from_file :: proc(image: ^Image, filename: cstring) ---

    @(link_name = "gtk_image_set_from_resource")
    image_set_from_resource :: proc(image: ^Image, resource_path: cstring) ---

    @(link_name = "gtk_image_set_from_pixbuf")
    image_set_from_pixbuf :: proc(image: ^Image, pixbuf: ^gdk.Pixbuf) ---

    @(link_name = "gtk_image_set_from_paintable")
    image_set_from_paintable :: proc(image: ^Image, paintable: ^Paintable) ---

    @(link_name = "gtk_image_set_from_icon_name")
    image_set_from_icon_name :: proc(image: ^Image, icon_name: cstring) ---

    @(link_name = "gtk_image_set_from_gicon")
    image_set_from_gicon :: proc(image: ^Image, icon: ^gio.Icon) ---

    @(link_name = "gtk_image_set_pixel_size")
    image_set_pixel_size :: proc(image: ^Image, pixel_size: i32) ---

    @(link_name = "gtk_image_set_icon_size")
    image_set_icon_size :: proc(image: ^Image, icon_size: IconSize) ---

    @(link_name = "gtk_image_get_storage_type")
    image_get_storage_type :: proc(image: ^Image) -> ImageType ---

    @(link_name = "gtk_image_get_paintable")
    image_get_paintable :: proc(image: ^Image) -> ^Paintable ---

    @(link_name = "gtk_image_get_icon_name")
    image_get_icon_name :: proc(image: ^Image) -> cstring ---

    @(link_name = "gtk_image_get_gicon")
    image_get_gicon :: proc(image: ^Image) -> ^gio.Icon ---

    @(link_name = "gtk_image_get_pixel_size")
    image_get_pixel_size :: proc(image: ^Image) -> i32 ---

    @(link_name = "gtk_image_get_icon_size")
    image_get_icon_size :: proc(image: ^Image) -> IconSize ---

    @(link_name = "gtk_entry_get_type")
    entry_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_entry_new")
    entry_new :: proc() -> ^Widget ---

    @(link_name = "gtk_entry_new_with_buffer")
    entry_new_with_buffer :: proc(buffer: ^EntryBuffer) -> ^Widget ---

    @(link_name = "gtk_entry_get_buffer")
    entry_get_buffer :: proc(entry: ^Entry) -> ^EntryBuffer ---

    @(link_name = "gtk_entry_set_buffer")
    entry_set_buffer :: proc(entry: ^Entry, buffer: ^EntryBuffer) ---

    @(link_name = "gtk_entry_set_visibility")
    entry_set_visibility :: proc(entry: ^Entry, visible: glib.boolean) ---

    @(link_name = "gtk_entry_get_visibility")
    entry_get_visibility :: proc(entry: ^Entry) -> glib.boolean ---

    @(link_name = "gtk_entry_set_invisible_char")
    entry_set_invisible_char :: proc(entry: ^Entry, ch: glib.unichar) ---

    @(link_name = "gtk_entry_get_invisible_char")
    entry_get_invisible_char :: proc(entry: ^Entry) -> glib.unichar ---

    @(link_name = "gtk_entry_unset_invisible_char")
    entry_unset_invisible_char :: proc(entry: ^Entry) ---

    @(link_name = "gtk_entry_set_has_frame")
    entry_set_has_frame :: proc(entry: ^Entry, setting: glib.boolean) ---

    @(link_name = "gtk_entry_get_has_frame")
    entry_get_has_frame :: proc(entry: ^Entry) -> glib.boolean ---

    @(link_name = "gtk_entry_set_overwrite_mode")
    entry_set_overwrite_mode :: proc(entry: ^Entry, overwrite: glib.boolean) ---

    @(link_name = "gtk_entry_get_overwrite_mode")
    entry_get_overwrite_mode :: proc(entry: ^Entry) -> glib.boolean ---

    @(link_name = "gtk_entry_set_max_length")
    entry_set_max_length :: proc(entry: ^Entry, max: i32) ---

    @(link_name = "gtk_entry_get_max_length")
    entry_get_max_length :: proc(entry: ^Entry) -> i32 ---

    @(link_name = "gtk_entry_get_text_length")
    entry_get_text_length :: proc(entry: ^Entry) -> glib.uint16 ---

    @(link_name = "gtk_entry_set_activates_default")
    entry_set_activates_default :: proc(entry: ^Entry, setting: glib.boolean) ---

    @(link_name = "gtk_entry_get_activates_default")
    entry_get_activates_default :: proc(entry: ^Entry) -> glib.boolean ---

    @(link_name = "gtk_entry_set_alignment")
    entry_set_alignment :: proc(entry: ^Entry, xalign: f32) ---

    @(link_name = "gtk_entry_get_alignment")
    entry_get_alignment :: proc(entry: ^Entry) -> f32 ---

    @(link_name = "gtk_entry_set_completion")
    entry_set_completion :: proc(entry: ^Entry, completion: ^EntryCompletion) ---

    @(link_name = "gtk_entry_get_completion")
    entry_get_completion :: proc(entry: ^Entry) -> ^EntryCompletion ---

    @(link_name = "gtk_entry_set_progress_fraction")
    entry_set_progress_fraction :: proc(entry: ^Entry, fraction: f64) ---

    @(link_name = "gtk_entry_get_progress_fraction")
    entry_get_progress_fraction :: proc(entry: ^Entry) -> f64 ---

    @(link_name = "gtk_entry_set_progress_pulse_step")
    entry_set_progress_pulse_step :: proc(entry: ^Entry, fraction: f64) ---

    @(link_name = "gtk_entry_get_progress_pulse_step")
    entry_get_progress_pulse_step :: proc(entry: ^Entry) -> f64 ---

    @(link_name = "gtk_entry_progress_pulse")
    entry_progress_pulse :: proc(entry: ^Entry) ---

    @(link_name = "gtk_entry_get_placeholder_text")
    entry_get_placeholder_text :: proc(entry: ^Entry) -> cstring ---

    @(link_name = "gtk_entry_set_placeholder_text")
    entry_set_placeholder_text :: proc(entry: ^Entry, text: cstring) ---

    @(link_name = "gtk_entry_set_icon_from_paintable")
    entry_set_icon_from_paintable :: proc(entry: ^Entry, icon_pos: EntryIconPosition, paintable: ^Paintable) ---

    @(link_name = "gtk_entry_set_icon_from_icon_name")
    entry_set_icon_from_icon_name :: proc(entry: ^Entry, icon_pos: EntryIconPosition, icon_name: cstring) ---

    @(link_name = "gtk_entry_set_icon_from_gicon")
    entry_set_icon_from_gicon :: proc(entry: ^Entry, icon_pos: EntryIconPosition, icon: ^gio.Icon) ---

    @(link_name = "gtk_entry_get_icon_storage_type")
    entry_get_icon_storage_type :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> ImageType ---

    @(link_name = "gtk_entry_get_icon_paintable")
    entry_get_icon_paintable :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> ^Paintable ---

    @(link_name = "gtk_entry_get_icon_name")
    entry_get_icon_name :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> cstring ---

    @(link_name = "gtk_entry_get_icon_gicon")
    entry_get_icon_gicon :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> ^gio.Icon ---

    @(link_name = "gtk_entry_set_icon_activatable")
    entry_set_icon_activatable :: proc(entry: ^Entry, icon_pos: EntryIconPosition, activatable: glib.boolean) ---

    @(link_name = "gtk_entry_get_icon_activatable")
    entry_get_icon_activatable :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> glib.boolean ---

    @(link_name = "gtk_entry_set_icon_sensitive")
    entry_set_icon_sensitive :: proc(entry: ^Entry, icon_pos: EntryIconPosition, sensitive: glib.boolean) ---

    @(link_name = "gtk_entry_get_icon_sensitive")
    entry_get_icon_sensitive :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> glib.boolean ---

    @(link_name = "gtk_entry_get_icon_at_pos")
    entry_get_icon_at_pos :: proc(entry: ^Entry, x: i32, y: i32) -> i32 ---

    @(link_name = "gtk_entry_set_icon_tooltip_text")
    entry_set_icon_tooltip_text :: proc(entry: ^Entry, icon_pos: EntryIconPosition, tooltip: cstring) ---

    @(link_name = "gtk_entry_get_icon_tooltip_text")
    entry_get_icon_tooltip_text :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> cstring ---

    @(link_name = "gtk_entry_set_icon_tooltip_markup")
    entry_set_icon_tooltip_markup :: proc(entry: ^Entry, icon_pos: EntryIconPosition, tooltip: cstring) ---

    @(link_name = "gtk_entry_get_icon_tooltip_markup")
    entry_get_icon_tooltip_markup :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> cstring ---

    @(link_name = "gtk_entry_set_icon_drag_source")
    entry_set_icon_drag_source :: proc(entry: ^Entry, icon_pos: EntryIconPosition, provider: ^ContentProvider, actions: DragAction) ---

    @(link_name = "gtk_entry_get_current_icon_drag_source")
    entry_get_current_icon_drag_source :: proc(entry: ^Entry) -> i32 ---

    @(link_name = "gtk_entry_get_icon_area")
    entry_get_icon_area :: proc(entry: ^Entry, icon_pos: EntryIconPosition, icon_area: ^Rectangle) ---

    @(link_name = "gtk_entry_reset_im_context")
    entry_reset_im_context :: proc(entry: ^Entry) ---

    @(link_name = "gtk_entry_set_input_purpose")
    entry_set_input_purpose :: proc(entry: ^Entry, purpose: InputPurpose) ---

    @(link_name = "gtk_entry_get_input_purpose")
    entry_get_input_purpose :: proc(entry: ^Entry) -> InputPurpose ---

    @(link_name = "gtk_entry_set_input_hints")
    entry_set_input_hints :: proc(entry: ^Entry, hints: InputHints) ---

    @(link_name = "gtk_entry_get_input_hints")
    entry_get_input_hints :: proc(entry: ^Entry) -> InputHints ---

    @(link_name = "gtk_entry_set_attributes")
    entry_set_attributes :: proc(entry: ^Entry, attrs: [^]pango.AttrList) ---

    @(link_name = "gtk_entry_get_attributes")
    entry_get_attributes :: proc(entry: ^Entry) -> ^pango.AttrList ---

    @(link_name = "gtk_entry_set_tabs")
    entry_set_tabs :: proc(entry: ^Entry, tabs: [^]pango.TabArray) ---

    @(link_name = "gtk_entry_get_tabs")
    entry_get_tabs :: proc(entry: ^Entry) -> ^pango.TabArray ---

    @(link_name = "gtk_entry_grab_focus_without_selecting")
    entry_grab_focus_without_selecting :: proc(entry: ^Entry) -> glib.boolean ---

    @(link_name = "gtk_entry_set_extra_menu")
    entry_set_extra_menu :: proc(entry: ^Entry, model: ^gio.MenuModel) ---

    @(link_name = "gtk_entry_get_extra_menu")
    entry_get_extra_menu :: proc(entry: ^Entry) -> ^gio.MenuModel ---

    @(link_name = "gtk_tree_view_get_type")
    tree_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_view_new")
    tree_view_new :: proc() -> ^Widget ---

    @(link_name = "gtk_tree_view_new_with_model")
    tree_view_new_with_model :: proc(model: ^TreeModel) -> ^Widget ---

    @(link_name = "gtk_tree_view_get_model")
    tree_view_get_model :: proc(tree_view: ^TreeView) -> ^TreeModel ---

    @(link_name = "gtk_tree_view_set_model")
    tree_view_set_model :: proc(tree_view: ^TreeView, model: ^TreeModel) ---

    @(link_name = "gtk_tree_view_get_selection")
    tree_view_get_selection :: proc(tree_view: ^TreeView) -> ^TreeSelection ---

    @(link_name = "gtk_tree_view_get_headers_visible")
    tree_view_get_headers_visible :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_headers_visible")
    tree_view_set_headers_visible :: proc(tree_view: ^TreeView, headers_visible: glib.boolean) ---

    @(link_name = "gtk_tree_view_columns_autosize")
    tree_view_columns_autosize :: proc(tree_view: ^TreeView) ---

    @(link_name = "gtk_tree_view_get_headers_clickable")
    tree_view_get_headers_clickable :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_headers_clickable")
    tree_view_set_headers_clickable :: proc(tree_view: ^TreeView, setting: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_activate_on_single_click")
    tree_view_get_activate_on_single_click :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_activate_on_single_click")
    tree_view_set_activate_on_single_click :: proc(tree_view: ^TreeView, single: glib.boolean) ---

    @(link_name = "gtk_tree_view_append_column")
    tree_view_append_column :: proc(tree_view: ^TreeView, column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_remove_column")
    tree_view_remove_column :: proc(tree_view: ^TreeView, column: ^TreeViewColumn) -> i32 ---

    @(link_name = "gtk_tree_view_insert_column")
    tree_view_insert_column :: proc(tree_view: ^TreeView, column: ^TreeViewColumn, position: i32) -> i32 ---

    @(link_name = "gtk_tree_view_insert_column_with_attributes")
    tree_view_insert_column_with_attributes :: proc(tree_view: ^TreeView, position: i32, title: cstring, cell: ^CellRenderer, #c_vararg var_args: ..any) -> i32 ---

    @(link_name = "gtk_tree_view_insert_column_with_data_func")
    tree_view_insert_column_with_data_func :: proc(tree_view: ^TreeView, position: i32, title: cstring, cell: ^CellRenderer, func: TreeCellDataFunc, data: glib.pointer, dnotify: glib.DestroyNotify) -> i32 ---

    @(link_name = "gtk_tree_view_get_n_columns")
    tree_view_get_n_columns :: proc(tree_view: ^TreeView) -> glib.uint_ ---

    @(link_name = "gtk_tree_view_get_column")
    tree_view_get_column :: proc(tree_view: ^TreeView, n: i32) -> ^TreeViewColumn ---

    @(link_name = "gtk_tree_view_get_columns")
    tree_view_get_columns :: proc(tree_view: ^TreeView) -> ^glib.List ---

    @(link_name = "gtk_tree_view_move_column_after")
    tree_view_move_column_after :: proc(tree_view: ^TreeView, column: ^TreeViewColumn, base_column: ^TreeViewColumn) ---

    @(link_name = "gtk_tree_view_set_expander_column")
    tree_view_set_expander_column :: proc(tree_view: ^TreeView, column: ^TreeViewColumn) ---

    @(link_name = "gtk_tree_view_get_expander_column")
    tree_view_get_expander_column :: proc(tree_view: ^TreeView) -> ^TreeViewColumn ---

    @(link_name = "gtk_tree_view_set_column_drag_function")
    tree_view_set_column_drag_function :: proc(tree_view: ^TreeView, func: TreeViewColumnDropFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_view_scroll_to_point")
    tree_view_scroll_to_point :: proc(tree_view: ^TreeView, tree_x: i32, tree_y: i32) ---

    @(link_name = "gtk_tree_view_scroll_to_cell")
    tree_view_scroll_to_cell :: proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn, use_align: glib.boolean, row_align: f32, col_align: f32) ---

    @(link_name = "gtk_tree_view_row_activated")
    tree_view_row_activated :: proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn) ---

    @(link_name = "gtk_tree_view_expand_all")
    tree_view_expand_all :: proc(tree_view: ^TreeView) ---

    @(link_name = "gtk_tree_view_collapse_all")
    tree_view_collapse_all :: proc(tree_view: ^TreeView) ---

    @(link_name = "gtk_tree_view_expand_to_path")
    tree_view_expand_to_path :: proc(tree_view: ^TreeView, path: ^TreePath) ---

    @(link_name = "gtk_tree_view_expand_row")
    tree_view_expand_row :: proc(tree_view: ^TreeView, path: ^TreePath, open_all: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_tree_view_collapse_row")
    tree_view_collapse_row :: proc(tree_view: ^TreeView, path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_view_map_expanded_rows")
    tree_view_map_expanded_rows :: proc(tree_view: ^TreeView, func: TreeViewMappingFunc, data: glib.pointer) ---

    @(link_name = "gtk_tree_view_row_expanded")
    tree_view_row_expanded :: proc(tree_view: ^TreeView, path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_reorderable")
    tree_view_set_reorderable :: proc(tree_view: ^TreeView, reorderable: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_reorderable")
    tree_view_get_reorderable :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_cursor")
    tree_view_set_cursor :: proc(tree_view: ^TreeView, path: ^TreePath, focus_column: ^TreeViewColumn, start_editing: glib.boolean) ---

    @(link_name = "gtk_tree_view_set_cursor_on_cell")
    tree_view_set_cursor_on_cell :: proc(tree_view: ^TreeView, path: ^TreePath, focus_column: ^TreeViewColumn, focus_cell: ^CellRenderer, start_editing: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_cursor")
    tree_view_get_cursor :: proc(tree_view: ^TreeView, path: ^^TreePath, focus_column: ^^TreeViewColumn) ---

    @(link_name = "gtk_tree_view_get_path_at_pos")
    tree_view_get_path_at_pos :: proc(tree_view: ^TreeView, x: i32, y: i32, path: ^^TreePath, column: ^^TreeViewColumn, cell_x: ^i32, cell_y: ^i32) -> glib.boolean ---

    @(link_name = "gtk_tree_view_get_cell_area")
    tree_view_get_cell_area :: proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn, rect: ^Rectangle) ---

    @(link_name = "gtk_tree_view_get_background_area")
    tree_view_get_background_area :: proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn, rect: ^Rectangle) ---

    @(link_name = "gtk_tree_view_get_visible_rect")
    tree_view_get_visible_rect :: proc(tree_view: ^TreeView, visible_rect: ^Rectangle) ---

    @(link_name = "gtk_tree_view_get_visible_range")
    tree_view_get_visible_range :: proc(tree_view: ^TreeView, start_path: ^^TreePath, end_path: ^^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_view_is_blank_at_pos")
    tree_view_is_blank_at_pos :: proc(tree_view: ^TreeView, x: i32, y: i32, path: ^^TreePath, column: ^^TreeViewColumn, cell_x: ^i32, cell_y: ^i32) -> glib.boolean ---

    @(link_name = "gtk_tree_view_enable_model_drag_source")
    tree_view_enable_model_drag_source :: proc(tree_view: ^TreeView, start_button_mask: ModifierType, formats: [^]ContentFormats, actions: DragAction) ---

    @(link_name = "gtk_tree_view_enable_model_drag_dest")
    tree_view_enable_model_drag_dest :: proc(tree_view: ^TreeView, formats: [^]ContentFormats, actions: DragAction) ---

    @(link_name = "gtk_tree_view_unset_rows_drag_source")
    tree_view_unset_rows_drag_source :: proc(tree_view: ^TreeView) ---

    @(link_name = "gtk_tree_view_unset_rows_drag_dest")
    tree_view_unset_rows_drag_dest :: proc(tree_view: ^TreeView) ---

    @(link_name = "gtk_tree_view_set_drag_dest_row")
    tree_view_set_drag_dest_row :: proc(tree_view: ^TreeView, path: ^TreePath, pos: TreeViewDropPosition) ---

    @(link_name = "gtk_tree_view_get_drag_dest_row")
    tree_view_get_drag_dest_row :: proc(tree_view: ^TreeView, path: ^^TreePath, pos: [^]TreeViewDropPosition) ---

    @(link_name = "gtk_tree_view_get_dest_row_at_pos")
    tree_view_get_dest_row_at_pos :: proc(tree_view: ^TreeView, drag_x: i32, drag_y: i32, path: ^^TreePath, pos: [^]TreeViewDropPosition) -> glib.boolean ---

    @(link_name = "gtk_tree_view_create_row_drag_icon")
    tree_view_create_row_drag_icon :: proc(tree_view: ^TreeView, path: ^TreePath) -> ^Paintable ---

    @(link_name = "gtk_tree_view_set_enable_search")
    tree_view_set_enable_search :: proc(tree_view: ^TreeView, enable_search: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_enable_search")
    tree_view_get_enable_search :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_get_search_column")
    tree_view_get_search_column :: proc(tree_view: ^TreeView) -> i32 ---

    @(link_name = "gtk_tree_view_set_search_column")
    tree_view_set_search_column :: proc(tree_view: ^TreeView, column: i32) ---

    @(link_name = "gtk_tree_view_get_search_equal_func")
    tree_view_get_search_equal_func :: proc(tree_view: ^TreeView) -> TreeViewSearchEqualFunc ---

    @(link_name = "gtk_tree_view_set_search_equal_func")
    tree_view_set_search_equal_func :: proc(tree_view: ^TreeView, search_equal_func: TreeViewSearchEqualFunc, search_user_data: glib.pointer, search_destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_view_get_search_entry")
    tree_view_get_search_entry :: proc(tree_view: ^TreeView) -> ^Editable ---

    @(link_name = "gtk_tree_view_set_search_entry")
    tree_view_set_search_entry :: proc(tree_view: ^TreeView, entry: ^Editable) ---

    @(link_name = "gtk_tree_view_convert_widget_to_tree_coords")
    tree_view_convert_widget_to_tree_coords :: proc(tree_view: ^TreeView, wx: i32, wy: i32, tx: ^i32, ty: ^i32) ---

    @(link_name = "gtk_tree_view_convert_tree_to_widget_coords")
    tree_view_convert_tree_to_widget_coords :: proc(tree_view: ^TreeView, tx: i32, ty: i32, wx: ^i32, wy: ^i32) ---

    @(link_name = "gtk_tree_view_convert_widget_to_bin_window_coords")
    tree_view_convert_widget_to_bin_window_coords :: proc(tree_view: ^TreeView, wx: i32, wy: i32, bx: ^i32, by: ^i32) ---

    @(link_name = "gtk_tree_view_convert_bin_window_to_widget_coords")
    tree_view_convert_bin_window_to_widget_coords :: proc(tree_view: ^TreeView, bx: i32, by: i32, wx: ^i32, wy: ^i32) ---

    @(link_name = "gtk_tree_view_convert_tree_to_bin_window_coords")
    tree_view_convert_tree_to_bin_window_coords :: proc(tree_view: ^TreeView, tx: i32, ty: i32, bx: ^i32, by: ^i32) ---

    @(link_name = "gtk_tree_view_convert_bin_window_to_tree_coords")
    tree_view_convert_bin_window_to_tree_coords :: proc(tree_view: ^TreeView, bx: i32, by: i32, tx: ^i32, ty: ^i32) ---

    @(link_name = "gtk_tree_view_set_fixed_height_mode")
    tree_view_set_fixed_height_mode :: proc(tree_view: ^TreeView, enable: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_fixed_height_mode")
    tree_view_get_fixed_height_mode :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_hover_selection")
    tree_view_set_hover_selection :: proc(tree_view: ^TreeView, hover: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_hover_selection")
    tree_view_get_hover_selection :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_hover_expand")
    tree_view_set_hover_expand :: proc(tree_view: ^TreeView, expand: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_hover_expand")
    tree_view_get_hover_expand :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_rubber_banding")
    tree_view_set_rubber_banding :: proc(tree_view: ^TreeView, enable: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_rubber_banding")
    tree_view_get_rubber_banding :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_is_rubber_banding_active")
    tree_view_is_rubber_banding_active :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_get_row_separator_func")
    tree_view_get_row_separator_func :: proc(tree_view: ^TreeView) -> TreeViewRowSeparatorFunc ---

    @(link_name = "gtk_tree_view_set_row_separator_func")
    tree_view_set_row_separator_func :: proc(tree_view: ^TreeView, func: TreeViewRowSeparatorFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_view_get_grid_lines")
    tree_view_get_grid_lines :: proc(tree_view: ^TreeView) -> TreeViewGridLines ---

    @(link_name = "gtk_tree_view_set_grid_lines")
    tree_view_set_grid_lines :: proc(tree_view: ^TreeView, grid_lines: TreeViewGridLines) ---

    @(link_name = "gtk_tree_view_get_enable_tree_lines")
    tree_view_get_enable_tree_lines :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_enable_tree_lines")
    tree_view_set_enable_tree_lines :: proc(tree_view: ^TreeView, enabled: glib.boolean) ---

    @(link_name = "gtk_tree_view_set_show_expanders")
    tree_view_set_show_expanders :: proc(tree_view: ^TreeView, enabled: glib.boolean) ---

    @(link_name = "gtk_tree_view_get_show_expanders")
    tree_view_get_show_expanders :: proc(tree_view: ^TreeView) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_level_indentation")
    tree_view_set_level_indentation :: proc(tree_view: ^TreeView, indentation: i32) ---

    @(link_name = "gtk_tree_view_get_level_indentation")
    tree_view_get_level_indentation :: proc(tree_view: ^TreeView) -> i32 ---

    @(link_name = "gtk_tree_view_set_tooltip_row")
    tree_view_set_tooltip_row :: proc(tree_view: ^TreeView, tooltip: ^Tooltip, path: ^TreePath) ---

    @(link_name = "gtk_tree_view_set_tooltip_cell")
    tree_view_set_tooltip_cell :: proc(tree_view: ^TreeView, tooltip: ^Tooltip, path: ^TreePath, column: ^TreeViewColumn, cell: ^CellRenderer) ---

    @(link_name = "gtk_tree_view_get_tooltip_context")
    tree_view_get_tooltip_context :: proc(tree_view: ^TreeView, x: i32, y: i32, keyboard_tip: glib.boolean, model: ^^TreeModel, path: ^^TreePath, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_view_set_tooltip_column")
    tree_view_set_tooltip_column :: proc(tree_view: ^TreeView, column: i32) ---

    @(link_name = "gtk_tree_view_get_tooltip_column")
    tree_view_get_tooltip_column :: proc(tree_view: ^TreeView) -> i32 ---

    @(link_name = "gtk_combo_box_get_type")
    combo_box_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_combo_box_new")
    combo_box_new :: proc() -> ^Widget ---

    @(link_name = "gtk_combo_box_new_with_entry")
    combo_box_new_with_entry :: proc() -> ^Widget ---

    @(link_name = "gtk_combo_box_new_with_model")
    combo_box_new_with_model :: proc(model: ^TreeModel) -> ^Widget ---

    @(link_name = "gtk_combo_box_new_with_model_and_entry")
    combo_box_new_with_model_and_entry :: proc(model: ^TreeModel) -> ^Widget ---

    @(link_name = "gtk_combo_box_get_active")
    combo_box_get_active :: proc(combo_box: ^ComboBox) -> i32 ---

    @(link_name = "gtk_combo_box_set_active")
    combo_box_set_active :: proc(combo_box: ^ComboBox, index_: i32) ---

    @(link_name = "gtk_combo_box_get_active_iter")
    combo_box_get_active_iter :: proc(combo_box: ^ComboBox, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_combo_box_set_active_iter")
    combo_box_set_active_iter :: proc(combo_box: ^ComboBox, iter: ^TreeIter) ---

    @(link_name = "gtk_combo_box_set_model")
    combo_box_set_model :: proc(combo_box: ^ComboBox, model: ^TreeModel) ---

    @(link_name = "gtk_combo_box_get_model")
    combo_box_get_model :: proc(combo_box: ^ComboBox) -> ^TreeModel ---

    @(link_name = "gtk_combo_box_get_row_separator_func")
    combo_box_get_row_separator_func :: proc(combo_box: ^ComboBox) -> TreeViewRowSeparatorFunc ---

    @(link_name = "gtk_combo_box_set_row_separator_func")
    combo_box_set_row_separator_func :: proc(combo_box: ^ComboBox, func: TreeViewRowSeparatorFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_combo_box_set_button_sensitivity")
    combo_box_set_button_sensitivity :: proc(combo_box: ^ComboBox, sensitivity: SensitivityType) ---

    @(link_name = "gtk_combo_box_get_button_sensitivity")
    combo_box_get_button_sensitivity :: proc(combo_box: ^ComboBox) -> SensitivityType ---

    @(link_name = "gtk_combo_box_get_has_entry")
    combo_box_get_has_entry :: proc(combo_box: ^ComboBox) -> glib.boolean ---

    @(link_name = "gtk_combo_box_set_entry_text_column")
    combo_box_set_entry_text_column :: proc(combo_box: ^ComboBox, text_column: i32) ---

    @(link_name = "gtk_combo_box_get_entry_text_column")
    combo_box_get_entry_text_column :: proc(combo_box: ^ComboBox) -> i32 ---

    @(link_name = "gtk_combo_box_set_popup_fixed_width")
    combo_box_set_popup_fixed_width :: proc(combo_box: ^ComboBox, fixed: glib.boolean) ---

    @(link_name = "gtk_combo_box_get_popup_fixed_width")
    combo_box_get_popup_fixed_width :: proc(combo_box: ^ComboBox) -> glib.boolean ---

    @(link_name = "gtk_combo_box_popup")
    combo_box_popup :: proc(combo_box: ^ComboBox) ---

    @(link_name = "gtk_combo_box_popup_for_device")
    combo_box_popup_for_device :: proc(combo_box: ^ComboBox, device: ^Device) ---

    @(link_name = "gtk_combo_box_popdown")
    combo_box_popdown :: proc(combo_box: ^ComboBox) ---

    @(link_name = "gtk_combo_box_get_id_column")
    combo_box_get_id_column :: proc(combo_box: ^ComboBox) -> i32 ---

    @(link_name = "gtk_combo_box_set_id_column")
    combo_box_set_id_column :: proc(combo_box: ^ComboBox, id_column: i32) ---

    @(link_name = "gtk_combo_box_get_active_id")
    combo_box_get_active_id :: proc(combo_box: ^ComboBox) -> cstring ---

    @(link_name = "gtk_combo_box_set_active_id")
    combo_box_set_active_id :: proc(combo_box: ^ComboBox, active_id: cstring) -> glib.boolean ---

    @(link_name = "gtk_combo_box_set_child")
    combo_box_set_child :: proc(combo_box: ^ComboBox, child: ^Widget) ---

    @(link_name = "gtk_combo_box_get_child")
    combo_box_get_child :: proc(combo_box: ^ComboBox) -> ^Widget ---

    @(link_name = "gtk_combo_box_text_get_type")
    combo_box_text_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_combo_box_text_new")
    combo_box_text_new :: proc() -> ^Widget ---

    @(link_name = "gtk_combo_box_text_new_with_entry")
    combo_box_text_new_with_entry :: proc() -> ^Widget ---

    @(link_name = "gtk_combo_box_text_append_text")
    combo_box_text_append_text :: proc(combo_box: ^ComboBoxText, text: cstring) ---

    @(link_name = "gtk_combo_box_text_insert_text")
    combo_box_text_insert_text :: proc(combo_box: ^ComboBoxText, position: i32, text: cstring) ---

    @(link_name = "gtk_combo_box_text_prepend_text")
    combo_box_text_prepend_text :: proc(combo_box: ^ComboBoxText, text: cstring) ---

    @(link_name = "gtk_combo_box_text_remove")
    combo_box_text_remove :: proc(combo_box: ^ComboBoxText, position: i32) ---

    @(link_name = "gtk_combo_box_text_remove_all")
    combo_box_text_remove_all :: proc(combo_box: ^ComboBoxText) ---

    @(link_name = "gtk_combo_box_text_get_active_text")
    combo_box_text_get_active_text :: proc(combo_box: ^ComboBoxText) -> cstring ---

    @(link_name = "gtk_combo_box_text_insert")
    combo_box_text_insert :: proc(combo_box: ^ComboBoxText, position: i32, id: cstring, text: cstring) ---

    @(link_name = "gtk_combo_box_text_append")
    combo_box_text_append :: proc(combo_box: ^ComboBoxText, id: cstring, text: cstring) ---

    @(link_name = "gtk_combo_box_text_prepend")
    combo_box_text_prepend :: proc(combo_box: ^ComboBoxText, id: cstring, text: cstring) ---

    @(link_name = "gtk_constraint_target_get_type")
    constraint_target_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_get_type")
    constraint_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_new")
    constraint_new :: proc(target: glib.pointer, target_attribute: ConstraintAttribute, relation: ConstraintRelation, source: glib.pointer, source_attribute: ConstraintAttribute, multiplier: f64, constant: f64, strength: i32) -> ^Constraint ---

    @(link_name = "gtk_constraint_new_constant")
    constraint_new_constant :: proc(target: glib.pointer, target_attribute: ConstraintAttribute, relation: ConstraintRelation, constant: f64, strength: i32) -> ^Constraint ---

    @(link_name = "gtk_constraint_get_target")
    constraint_get_target :: proc(constraint: ^Constraint) -> ^ConstraintTarget ---

    @(link_name = "gtk_constraint_get_target_attribute")
    constraint_get_target_attribute :: proc(constraint: ^Constraint) -> ConstraintAttribute ---

    @(link_name = "gtk_constraint_get_source")
    constraint_get_source :: proc(constraint: ^Constraint) -> ^ConstraintTarget ---

    @(link_name = "gtk_constraint_get_source_attribute")
    constraint_get_source_attribute :: proc(constraint: ^Constraint) -> ConstraintAttribute ---

    @(link_name = "gtk_constraint_get_relation")
    constraint_get_relation :: proc(constraint: ^Constraint) -> ConstraintRelation ---

    @(link_name = "gtk_constraint_get_multiplier")
    constraint_get_multiplier :: proc(constraint: ^Constraint) -> f64 ---

    @(link_name = "gtk_constraint_get_constant")
    constraint_get_constant :: proc(constraint: ^Constraint) -> f64 ---

    @(link_name = "gtk_constraint_get_strength")
    constraint_get_strength :: proc(constraint: ^Constraint) -> i32 ---

    @(link_name = "gtk_constraint_is_required")
    constraint_is_required :: proc(constraint: ^Constraint) -> glib.boolean ---

    @(link_name = "gtk_constraint_is_attached")
    constraint_is_attached :: proc(constraint: ^Constraint) -> glib.boolean ---

    @(link_name = "gtk_constraint_is_constant")
    constraint_is_constant :: proc(constraint: ^Constraint) -> glib.boolean ---

    @(link_name = "gtk_assistant_page_type_get_type")
    assistant_page_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_state_get_type")
    cell_renderer_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_mode_get_type")
    cell_renderer_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_cell_renderer_accel_mode_get_type")
    cell_renderer_accel_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_dialog_flags_get_type")
    dialog_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_response_type_get_type")
    response_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_chooser_action_get_type")
    file_chooser_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_chooser_error_get_type")
    file_chooser_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_font_chooser_level_get_type")
    font_chooser_level_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_icon_view_drop_position_get_type")
    icon_view_drop_position_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_buttons_type_get_type")
    buttons_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_style_context_print_flags_get_type")
    style_context_print_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_model_flags_get_type")
    tree_model_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_view_drop_position_get_type")
    tree_view_drop_position_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_view_column_sizing_get_type")
    tree_view_column_sizing_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_license_get_type")
    license_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_platform_state_get_type")
    accessible_platform_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_application_inhibit_flags_get_type")
    application_inhibit_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_builder_error_get_type")
    builder_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_builder_closure_flags_get_type")
    builder_closure_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_debug_flags_get_type")
    debug_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_dialog_error_get_type")
    dialog_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_editable_properties_get_type")
    editable_properties_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_entry_icon_position_get_type")
    entry_icon_position_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_align_get_type")
    align_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_arrow_type_get_type")
    arrow_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_baseline_position_get_type")
    baseline_position_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_content_fit_get_type")
    content_fit_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_delete_type_get_type")
    delete_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_direction_type_get_type")
    direction_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_icon_size_get_type")
    icon_size_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_sensitivity_type_get_type")
    sensitivity_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_direction_get_type")
    text_direction_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_justification_get_type")
    justification_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_list_tab_behavior_get_type")
    list_tab_behavior_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_list_scroll_flags_get_type")
    list_scroll_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_message_type_get_type")
    message_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_movement_step_get_type")
    movement_step_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_natural_wrap_mode_get_type")
    natural_wrap_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scroll_step_get_type")
    scroll_step_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_orientation_get_type")
    orientation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_overflow_get_type")
    overflow_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_pack_type_get_type")
    pack_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_position_type_get_type")
    position_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scroll_type_get_type")
    scroll_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_selection_mode_get_type")
    selection_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_wrap_mode_get_type")
    wrap_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_sort_type_get_type")
    sort_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_pages_get_type")
    print_pages_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_page_set_get_type")
    page_set_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_number_up_layout_get_type")
    number_up_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_ordering_get_type")
    ordering_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_page_orientation_get_type")
    page_orientation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_quality_get_type")
    print_quality_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_duplex_get_type")
    print_duplex_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_unit_get_type")
    unit_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_view_grid_lines_get_type")
    tree_view_grid_lines_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_size_group_mode_get_type")
    size_group_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_size_request_mode_get_type")
    size_request_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scrollable_policy_get_type")
    scrollable_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_state_flags_get_type")
    state_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_border_style_get_type")
    border_style_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_level_bar_mode_get_type")
    level_bar_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_input_purpose_get_type")
    input_purpose_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_input_hints_get_type")
    input_hints_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_propagation_phase_get_type")
    propagation_phase_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_propagation_limit_get_type")
    propagation_limit_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_event_sequence_state_get_type")
    event_sequence_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_pan_direction_get_type")
    pan_direction_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_scope_get_type")
    shortcut_scope_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_pick_flags_get_type")
    pick_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_relation_get_type")
    constraint_relation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_strength_get_type")
    constraint_strength_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_attribute_get_type")
    constraint_attribute_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_vfl_parser_error_get_type")
    constraint_vfl_parser_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_system_setting_get_type")
    system_setting_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_symbolic_color_get_type")
    symbolic_color_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_role_get_type")
    accessible_role_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_state_get_type")
    accessible_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_property_get_type")
    accessible_property_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_relation_get_type")
    accessible_relation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_tristate_get_type")
    accessible_tristate_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_invalid_state_get_type")
    accessible_invalid_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_autocomplete_get_type")
    accessible_autocomplete_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_accessible_sort_get_type")
    accessible_sort_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_event_controller_scroll_flags_get_type")
    event_controller_scroll_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_filter_match_get_type")
    filter_match_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_filter_change_get_type")
    filter_change_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_font_level_get_type")
    font_level_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_icon_lookup_flags_get_type")
    icon_lookup_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_icon_theme_error_get_type")
    icon_theme_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_image_type_get_type")
    image_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_inscription_overflow_get_type")
    inscription_overflow_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_notebook_tab_get_type")
    notebook_tab_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_pad_action_type_get_type")
    pad_action_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_popover_menu_flags_get_type")
    popover_menu_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_recent_manager_error_get_type")
    recent_manager_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_revealer_transition_type_get_type")
    revealer_transition_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_corner_type_get_type")
    corner_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_policy_type_get_type")
    policy_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_action_flags_get_type")
    shortcut_action_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_type_get_type")
    shortcut_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_sorter_order_get_type")
    sorter_order_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_sorter_change_get_type")
    sorter_change_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_spin_button_update_policy_get_type")
    spin_button_update_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_spin_type_get_type")
    spin_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_stack_transition_type_get_type")
    stack_transition_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_string_filter_match_mode_get_type")
    string_filter_match_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_collation_get_type")
    collation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_search_flags_get_type")
    text_search_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_window_type_get_type")
    text_window_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_view_layer_get_type")
    text_view_layer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_extend_selection_get_type")
    text_extend_selection_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_status_get_type")
    print_status_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_operation_result_get_type")
    print_operation_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_operation_action_get_type")
    print_operation_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_error_get_type")
    print_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_guide_get_type")
    constraint_guide_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_guide_new")
    constraint_guide_new :: proc() -> ^ConstraintGuide ---

    @(link_name = "gtk_constraint_guide_set_min_size")
    constraint_guide_set_min_size :: proc(guide: ^ConstraintGuide, width: i32, height: i32) ---

    @(link_name = "gtk_constraint_guide_get_min_size")
    constraint_guide_get_min_size :: proc(guide: ^ConstraintGuide, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_constraint_guide_set_nat_size")
    constraint_guide_set_nat_size :: proc(guide: ^ConstraintGuide, width: i32, height: i32) ---

    @(link_name = "gtk_constraint_guide_get_nat_size")
    constraint_guide_get_nat_size :: proc(guide: ^ConstraintGuide, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_constraint_guide_set_max_size")
    constraint_guide_set_max_size :: proc(guide: ^ConstraintGuide, width: i32, height: i32) ---

    @(link_name = "gtk_constraint_guide_get_max_size")
    constraint_guide_get_max_size :: proc(guide: ^ConstraintGuide, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_constraint_guide_get_strength")
    constraint_guide_get_strength :: proc(guide: ^ConstraintGuide) -> ConstraintStrength ---

    @(link_name = "gtk_constraint_guide_set_strength")
    constraint_guide_set_strength :: proc(guide: ^ConstraintGuide, strength: ConstraintStrength) ---

    @(link_name = "gtk_constraint_guide_set_name")
    constraint_guide_set_name :: proc(guide: ^ConstraintGuide, name: cstring) ---

    @(link_name = "gtk_constraint_guide_get_name")
    constraint_guide_get_name :: proc(guide: ^ConstraintGuide) -> cstring ---

    @(link_name = "gtk_constraint_layout_child_get_type")
    constraint_layout_child_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_layout_get_type")
    constraint_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_constraint_vfl_parser_error_quark")
    constraint_vfl_parser_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_constraint_layout_new")
    constraint_layout_new :: proc() -> ^LayoutManager ---

    @(link_name = "gtk_constraint_layout_add_constraint")
    constraint_layout_add_constraint :: proc(layout: ^ConstraintLayout, constraint: ^Constraint) ---

    @(link_name = "gtk_constraint_layout_remove_constraint")
    constraint_layout_remove_constraint :: proc(layout: ^ConstraintLayout, constraint: ^Constraint) ---

    @(link_name = "gtk_constraint_layout_add_guide")
    constraint_layout_add_guide :: proc(layout: ^ConstraintLayout, guide: ^ConstraintGuide) ---

    @(link_name = "gtk_constraint_layout_remove_guide")
    constraint_layout_remove_guide :: proc(layout: ^ConstraintLayout, guide: ^ConstraintGuide) ---

    @(link_name = "gtk_constraint_layout_remove_all_constraints")
    constraint_layout_remove_all_constraints :: proc(layout: ^ConstraintLayout) ---

    @(link_name = "gtk_constraint_layout_add_constraints_from_description")
    constraint_layout_add_constraints_from_description :: proc(layout: ^ConstraintLayout, lines: [^]cstring, n_lines: glib.size, hspacing: i32, vspacing: i32, error: ^^glib.Error, first_view: cstring, #c_vararg var_args: ..any) -> ^glib.List ---

    @(link_name = "gtk_constraint_layout_add_constraints_from_descriptionv")
    constraint_layout_add_constraints_from_descriptionv :: proc(layout: ^ConstraintLayout, lines: [^]cstring, n_lines: glib.size, hspacing: i32, vspacing: i32, views: [^]glib.HashTable, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "gtk_constraint_layout_observe_constraints")
    constraint_layout_observe_constraints :: proc(layout: ^ConstraintLayout) -> ^gio.ListModel ---

    @(link_name = "gtk_constraint_layout_observe_guides")
    constraint_layout_observe_guides :: proc(layout: ^ConstraintLayout) -> ^gio.ListModel ---

    @(link_name = "gtk_css_provider_get_type")
    css_provider_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_css_provider_new")
    css_provider_new :: proc() -> ^CssProvider ---

    @(link_name = "gtk_css_provider_to_string")
    css_provider_to_string :: proc(provider: ^CssProvider) -> cstring ---

    @(link_name = "gtk_css_provider_load_from_data")
    css_provider_load_from_data :: proc(css_provider: ^CssProvider, data: cstring, length: glib.ssize) ---

    @(link_name = "gtk_css_provider_load_from_string")
    css_provider_load_from_string :: proc(css_provider: ^CssProvider, string_p: cstring) ---

    @(link_name = "gtk_css_provider_load_from_bytes")
    css_provider_load_from_bytes :: proc(css_provider: ^CssProvider, data: ^glib.Bytes) ---

    @(link_name = "gtk_css_provider_load_from_file")
    css_provider_load_from_file :: proc(css_provider: ^CssProvider, file: ^gio.File) ---

    @(link_name = "gtk_css_provider_load_from_path")
    css_provider_load_from_path :: proc(css_provider: ^CssProvider, path: cstring) ---

    @(link_name = "gtk_css_provider_load_from_resource")
    css_provider_load_from_resource :: proc(css_provider: ^CssProvider, resource_path: cstring) ---

    @(link_name = "gtk_css_provider_load_named")
    css_provider_load_named :: proc(provider: ^CssProvider, name: cstring, variant: cstring) ---

    @(link_name = "gtk_custom_layout_get_type")
    custom_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_custom_layout_new")
    custom_layout_new :: proc(request_mode: CustomRequestModeFunc, measure: CustomMeasureFunc, allocate: CustomAllocateFunc) -> ^LayoutManager ---

    @(link_name = "gtk_custom_sorter_get_type")
    custom_sorter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_custom_sorter_new")
    custom_sorter_new :: proc(sort_func: glib.CompareDataFunc, user_data: glib.pointer, user_destroy: glib.DestroyNotify) -> ^CustomSorter ---

    @(link_name = "gtk_custom_sorter_set_sort_func")
    custom_sorter_set_sort_func :: proc(self: ^CustomSorter, sort_func: glib.CompareDataFunc, user_data: glib.pointer, user_destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_get_debug_flags")
    get_debug_flags :: proc() -> DebugFlags ---

    @(link_name = "gtk_set_debug_flags")
    set_debug_flags :: proc(flags: DebugFlags) ---

    @(link_name = "gtk_dialog_error_quark")
    dialog_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_directory_list_get_type")
    directory_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_directory_list_new")
    directory_list_new :: proc(attributes: cstring, file: ^gio.File) -> ^DirectoryList ---

    @(link_name = "gtk_directory_list_set_file")
    directory_list_set_file :: proc(self: ^DirectoryList, file: ^gio.File) ---

    @(link_name = "gtk_directory_list_get_file")
    directory_list_get_file :: proc(self: ^DirectoryList) -> ^gio.File ---

    @(link_name = "gtk_directory_list_set_attributes")
    directory_list_set_attributes :: proc(self: ^DirectoryList, attributes: cstring) ---

    @(link_name = "gtk_directory_list_get_attributes")
    directory_list_get_attributes :: proc(self: ^DirectoryList) -> cstring ---

    @(link_name = "gtk_directory_list_set_io_priority")
    directory_list_set_io_priority :: proc(self: ^DirectoryList, io_priority: i32) ---

    @(link_name = "gtk_directory_list_get_io_priority")
    directory_list_get_io_priority :: proc(self: ^DirectoryList) -> i32 ---

    @(link_name = "gtk_directory_list_is_loading")
    directory_list_is_loading :: proc(self: ^DirectoryList) -> glib.boolean ---

    @(link_name = "gtk_directory_list_get_error")
    directory_list_get_error :: proc(self: ^DirectoryList) -> ^glib.Error ---

    @(link_name = "gtk_directory_list_set_monitored")
    directory_list_set_monitored :: proc(self: ^DirectoryList, monitored: glib.boolean) ---

    @(link_name = "gtk_directory_list_get_monitored")
    directory_list_get_monitored :: proc(self: ^DirectoryList) -> glib.boolean ---

    @(link_name = "gtk_drag_icon_get_type")
    drag_icon_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_drag_icon_get_for_drag")
    drag_icon_get_for_drag :: proc(drag: ^Drag) -> ^Widget ---

    @(link_name = "gtk_drag_icon_set_child")
    drag_icon_set_child :: proc(self: ^DragIcon, child: ^Widget) ---

    @(link_name = "gtk_drag_icon_get_child")
    drag_icon_get_child :: proc(self: ^DragIcon) -> ^Widget ---

    @(link_name = "gtk_drag_icon_set_from_paintable")
    drag_icon_set_from_paintable :: proc(drag: ^Drag, paintable: ^Paintable, hot_x: i32, hot_y: i32) ---

    @(link_name = "gtk_drag_icon_create_widget_for_value")
    drag_icon_create_widget_for_value :: proc(value: ^gobj.Value) -> ^Widget ---

    @(link_name = "gtk_drag_source_get_type")
    drag_source_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_drag_source_new")
    drag_source_new :: proc() -> ^DragSource ---

    @(link_name = "gtk_drag_source_set_content")
    drag_source_set_content :: proc(source: ^DragSource, content: ^ContentProvider) ---

    @(link_name = "gtk_drag_source_get_content")
    drag_source_get_content :: proc(source: ^DragSource) -> ^ContentProvider ---

    @(link_name = "gtk_drag_source_set_actions")
    drag_source_set_actions :: proc(source: ^DragSource, actions: DragAction) ---

    @(link_name = "gtk_drag_source_get_actions")
    drag_source_get_actions :: proc(source: ^DragSource) -> DragAction ---

    @(link_name = "gtk_drag_source_set_icon")
    drag_source_set_icon :: proc(source: ^DragSource, paintable: ^Paintable, hot_x: i32, hot_y: i32) ---

    @(link_name = "gtk_drag_source_drag_cancel")
    drag_source_drag_cancel :: proc(source: ^DragSource) ---

    @(link_name = "gtk_drag_source_get_drag")
    drag_source_get_drag :: proc(source: ^DragSource) -> ^Drag ---

    @(link_name = "gtk_drag_check_threshold")
    drag_check_threshold :: proc(widget: ^Widget, start_x: i32, start_y: i32, current_x: i32, current_y: i32) -> glib.boolean ---

    @(link_name = "gtk_drawing_area_get_type")
    drawing_area_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_drawing_area_new")
    drawing_area_new :: proc() -> ^Widget ---

    @(link_name = "gtk_drawing_area_set_content_width")
    drawing_area_set_content_width :: proc(self: ^DrawingArea, width: i32) ---

    @(link_name = "gtk_drawing_area_get_content_width")
    drawing_area_get_content_width :: proc(self: ^DrawingArea) -> i32 ---

    @(link_name = "gtk_drawing_area_set_content_height")
    drawing_area_set_content_height :: proc(self: ^DrawingArea, height: i32) ---

    @(link_name = "gtk_drawing_area_get_content_height")
    drawing_area_get_content_height :: proc(self: ^DrawingArea) -> i32 ---

    @(link_name = "gtk_drawing_area_set_draw_func")
    drawing_area_set_draw_func :: proc(self: ^DrawingArea, draw_func: DrawingAreaDrawFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_event_controller_get_type")
    event_controller_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_event_controller_get_widget")
    event_controller_get_widget :: proc(controller: ^EventController) -> ^Widget ---

    @(link_name = "gtk_event_controller_reset")
    event_controller_reset :: proc(controller: ^EventController) ---

    @(link_name = "gtk_event_controller_get_propagation_phase")
    event_controller_get_propagation_phase :: proc(controller: ^EventController) -> PropagationPhase ---

    @(link_name = "gtk_event_controller_set_propagation_phase")
    event_controller_set_propagation_phase :: proc(controller: ^EventController, phase: PropagationPhase) ---

    @(link_name = "gtk_event_controller_get_propagation_limit")
    event_controller_get_propagation_limit :: proc(controller: ^EventController) -> PropagationLimit ---

    @(link_name = "gtk_event_controller_set_propagation_limit")
    event_controller_set_propagation_limit :: proc(controller: ^EventController, limit: PropagationLimit) ---

    @(link_name = "gtk_event_controller_get_name")
    event_controller_get_name :: proc(controller: ^EventController) -> cstring ---

    @(link_name = "gtk_event_controller_set_name")
    event_controller_set_name :: proc(controller: ^EventController, name: cstring) ---

    @(link_name = "gtk_event_controller_set_static_name")
    event_controller_set_static_name :: proc(controller: ^EventController, name: cstring) ---

    @(link_name = "gtk_event_controller_get_current_event")
    event_controller_get_current_event :: proc(controller: ^EventController) -> ^Event ---

    @(link_name = "gtk_event_controller_get_current_event_time")
    event_controller_get_current_event_time :: proc(controller: ^EventController) -> glib.uint32 ---

    @(link_name = "gtk_event_controller_get_current_event_device")
    event_controller_get_current_event_device :: proc(controller: ^EventController) -> ^Device ---

    @(link_name = "gtk_event_controller_get_current_event_state")
    event_controller_get_current_event_state :: proc(controller: ^EventController) -> ModifierType ---

    @(link_name = "gtk_drop_controller_motion_get_type")
    drop_controller_motion_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_drop_controller_motion_new")
    drop_controller_motion_new :: proc() -> ^EventController ---

    @(link_name = "gtk_drop_controller_motion_contains_pointer")
    drop_controller_motion_contains_pointer :: proc(self: ^DropControllerMotion) -> glib.boolean ---

    @(link_name = "gtk_drop_controller_motion_get_drop")
    drop_controller_motion_get_drop :: proc(self: ^DropControllerMotion) -> ^Drop ---

    @(link_name = "gtk_drop_controller_motion_is_pointer")
    drop_controller_motion_is_pointer :: proc(self: ^DropControllerMotion) -> glib.boolean ---

    @(link_name = "gtk_drop_target_get_type")
    drop_target_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_drop_target_new")
    drop_target_new :: proc(type: gobj.Type, actions: DragAction) -> ^DropTarget ---

    @(link_name = "gtk_drop_target_set_gtypes")
    drop_target_set_gtypes :: proc(self: ^DropTarget, types: [^]gobj.Type, n_types: glib.size) ---

    @(link_name = "gtk_drop_target_get_gtypes")
    drop_target_get_gtypes :: proc(self: ^DropTarget, n_types: [^]glib.size) -> ^gobj.Type ---

    @(link_name = "gtk_drop_target_get_formats")
    drop_target_get_formats :: proc(self: ^DropTarget) -> ^ContentFormats ---

    @(link_name = "gtk_drop_target_set_actions")
    drop_target_set_actions :: proc(self: ^DropTarget, actions: DragAction) ---

    @(link_name = "gtk_drop_target_get_actions")
    drop_target_get_actions :: proc(self: ^DropTarget) -> DragAction ---

    @(link_name = "gtk_drop_target_set_preload")
    drop_target_set_preload :: proc(self: ^DropTarget, preload: glib.boolean) ---

    @(link_name = "gtk_drop_target_get_preload")
    drop_target_get_preload :: proc(self: ^DropTarget) -> glib.boolean ---

    @(link_name = "gtk_drop_target_get_drop")
    drop_target_get_drop :: proc(self: ^DropTarget) -> ^Drop ---

    @(link_name = "gtk_drop_target_get_current_drop")
    drop_target_get_current_drop :: proc(self: ^DropTarget) -> ^Drop ---

    @(link_name = "gtk_drop_target_get_value")
    drop_target_get_value :: proc(self: ^DropTarget) -> ^gobj.Value ---

    @(link_name = "gtk_drop_target_reject")
    drop_target_reject :: proc(self: ^DropTarget) ---

    @(link_name = "gtk_drop_target_async_get_type")
    drop_target_async_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_drop_target_async_new")
    drop_target_async_new :: proc(formats: [^]ContentFormats, actions: DragAction) -> ^DropTargetAsync ---

    @(link_name = "gtk_drop_target_async_set_formats")
    drop_target_async_set_formats :: proc(self: ^DropTargetAsync, formats: [^]ContentFormats) ---

    @(link_name = "gtk_drop_target_async_get_formats")
    drop_target_async_get_formats :: proc(self: ^DropTargetAsync) -> ^ContentFormats ---

    @(link_name = "gtk_drop_target_async_set_actions")
    drop_target_async_set_actions :: proc(self: ^DropTargetAsync, actions: DragAction) ---

    @(link_name = "gtk_drop_target_async_get_actions")
    drop_target_async_get_actions :: proc(self: ^DropTargetAsync) -> DragAction ---

    @(link_name = "gtk_drop_target_async_reject_drop")
    drop_target_async_reject_drop :: proc(self: ^DropTargetAsync, drop: ^Drop) ---

    @(link_name = "gtk_string_filter_get_type")
    string_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_string_filter_new")
    string_filter_new :: proc(expression: ^Expression) -> ^StringFilter ---

    @(link_name = "gtk_string_filter_get_search")
    string_filter_get_search :: proc(self: ^StringFilter) -> cstring ---

    @(link_name = "gtk_string_filter_set_search")
    string_filter_set_search :: proc(self: ^StringFilter, search: cstring) ---

    @(link_name = "gtk_string_filter_get_expression")
    string_filter_get_expression :: proc(self: ^StringFilter) -> ^Expression ---

    @(link_name = "gtk_string_filter_set_expression")
    string_filter_set_expression :: proc(self: ^StringFilter, expression: ^Expression) ---

    @(link_name = "gtk_string_filter_get_ignore_case")
    string_filter_get_ignore_case :: proc(self: ^StringFilter) -> glib.boolean ---

    @(link_name = "gtk_string_filter_set_ignore_case")
    string_filter_set_ignore_case :: proc(self: ^StringFilter, ignore_case: glib.boolean) ---

    @(link_name = "gtk_string_filter_get_match_mode")
    string_filter_get_match_mode :: proc(self: ^StringFilter) -> StringFilterMatchMode ---

    @(link_name = "gtk_string_filter_set_match_mode")
    string_filter_set_match_mode :: proc(self: ^StringFilter, mode: StringFilterMatchMode) ---

    @(link_name = "gtk_drop_down_get_type")
    drop_down_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_drop_down_new")
    drop_down_new :: proc(model: ^gio.ListModel, expression: ^Expression) -> ^Widget ---

    @(link_name = "gtk_drop_down_new_from_strings")
    drop_down_new_from_strings :: proc(strings: [^]cstring) -> ^Widget ---

    @(link_name = "gtk_drop_down_set_model")
    drop_down_set_model :: proc(self: ^DropDown, model: ^gio.ListModel) ---

    @(link_name = "gtk_drop_down_get_model")
    drop_down_get_model :: proc(self: ^DropDown) -> ^gio.ListModel ---

    @(link_name = "gtk_drop_down_set_selected")
    drop_down_set_selected :: proc(self: ^DropDown, position: glib.uint_) ---

    @(link_name = "gtk_drop_down_get_selected")
    drop_down_get_selected :: proc(self: ^DropDown) -> glib.uint_ ---

    @(link_name = "gtk_drop_down_get_selected_item")
    drop_down_get_selected_item :: proc(self: ^DropDown) -> glib.pointer ---

    @(link_name = "gtk_drop_down_set_factory")
    drop_down_set_factory :: proc(self: ^DropDown, factory: ^ListItemFactory) ---

    @(link_name = "gtk_drop_down_get_factory")
    drop_down_get_factory :: proc(self: ^DropDown) -> ^ListItemFactory ---

    @(link_name = "gtk_drop_down_set_list_factory")
    drop_down_set_list_factory :: proc(self: ^DropDown, factory: ^ListItemFactory) ---

    @(link_name = "gtk_drop_down_get_list_factory")
    drop_down_get_list_factory :: proc(self: ^DropDown) -> ^ListItemFactory ---

    @(link_name = "gtk_drop_down_set_header_factory")
    drop_down_set_header_factory :: proc(self: ^DropDown, factory: ^ListItemFactory) ---

    @(link_name = "gtk_drop_down_get_header_factory")
    drop_down_get_header_factory :: proc(self: ^DropDown) -> ^ListItemFactory ---

    @(link_name = "gtk_drop_down_set_expression")
    drop_down_set_expression :: proc(self: ^DropDown, expression: ^Expression) ---

    @(link_name = "gtk_drop_down_get_expression")
    drop_down_get_expression :: proc(self: ^DropDown) -> ^Expression ---

    @(link_name = "gtk_drop_down_set_enable_search")
    drop_down_set_enable_search :: proc(self: ^DropDown, enable_search: glib.boolean) ---

    @(link_name = "gtk_drop_down_get_enable_search")
    drop_down_get_enable_search :: proc(self: ^DropDown) -> glib.boolean ---

    @(link_name = "gtk_drop_down_set_show_arrow")
    drop_down_set_show_arrow :: proc(self: ^DropDown, show_arrow: glib.boolean) ---

    @(link_name = "gtk_drop_down_get_show_arrow")
    drop_down_get_show_arrow :: proc(self: ^DropDown) -> glib.boolean ---

    @(link_name = "gtk_drop_down_set_search_match_mode")
    drop_down_set_search_match_mode :: proc(self: ^DropDown, search_match_mode: StringFilterMatchMode) ---

    @(link_name = "gtk_drop_down_get_search_match_mode")
    drop_down_get_search_match_mode :: proc(self: ^DropDown) -> StringFilterMatchMode ---

    @(link_name = "gtk_editable_label_get_type")
    editable_label_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_editable_label_new")
    editable_label_new :: proc(str: cstring) -> ^Widget ---

    @(link_name = "gtk_editable_label_get_editing")
    editable_label_get_editing :: proc(self: ^EditableLabel) -> glib.boolean ---

    @(link_name = "gtk_editable_label_start_editing")
    editable_label_start_editing :: proc(self: ^EditableLabel) ---

    @(link_name = "gtk_editable_label_stop_editing")
    editable_label_stop_editing :: proc(self: ^EditableLabel, commit: glib.boolean) ---

    @(link_name = "gtk_emoji_chooser_get_type")
    emoji_chooser_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_emoji_chooser_new")
    emoji_chooser_new :: proc() -> ^Widget ---

    @(link_name = "gtk_event_controller_focus_get_type")
    event_controller_focus_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_event_controller_focus_new")
    event_controller_focus_new :: proc() -> ^EventController ---

    @(link_name = "gtk_event_controller_focus_contains_focus")
    event_controller_focus_contains_focus :: proc(self: ^EventControllerFocus) -> glib.boolean ---

    @(link_name = "gtk_event_controller_focus_is_focus")
    event_controller_focus_is_focus :: proc(self: ^EventControllerFocus) -> glib.boolean ---

    @(link_name = "gtk_event_controller_key_get_type")
    event_controller_key_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_event_controller_key_new")
    event_controller_key_new :: proc() -> ^EventController ---

    @(link_name = "gtk_event_controller_key_set_im_context")
    event_controller_key_set_im_context :: proc(controller: ^EventControllerKey, im_context: ^IMContext) ---

    @(link_name = "gtk_event_controller_key_get_im_context")
    event_controller_key_get_im_context :: proc(controller: ^EventControllerKey) -> ^IMContext ---

    @(link_name = "gtk_event_controller_key_forward")
    event_controller_key_forward :: proc(controller: ^EventControllerKey, widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_event_controller_key_get_group")
    event_controller_key_get_group :: proc(controller: ^EventControllerKey) -> glib.uint_ ---

    @(link_name = "gtk_event_controller_legacy_get_type")
    event_controller_legacy_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_event_controller_legacy_new")
    event_controller_legacy_new :: proc() -> ^EventController ---

    @(link_name = "gtk_event_controller_motion_get_type")
    event_controller_motion_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_event_controller_motion_new")
    event_controller_motion_new :: proc() -> ^EventController ---

    @(link_name = "gtk_event_controller_motion_contains_pointer")
    event_controller_motion_contains_pointer :: proc(self: ^EventControllerMotion) -> glib.boolean ---

    @(link_name = "gtk_event_controller_motion_is_pointer")
    event_controller_motion_is_pointer :: proc(self: ^EventControllerMotion) -> glib.boolean ---

    @(link_name = "gtk_event_controller_scroll_get_type")
    event_controller_scroll_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_event_controller_scroll_new")
    event_controller_scroll_new :: proc(flags: EventControllerScrollFlags) -> ^EventController ---

    @(link_name = "gtk_event_controller_scroll_set_flags")
    event_controller_scroll_set_flags :: proc(scroll: ^EventControllerScroll, flags: EventControllerScrollFlags) ---

    @(link_name = "gtk_event_controller_scroll_get_flags")
    event_controller_scroll_get_flags :: proc(scroll: ^EventControllerScroll) -> EventControllerScrollFlags ---

    @(link_name = "gtk_event_controller_scroll_get_unit")
    event_controller_scroll_get_unit :: proc(scroll: ^EventControllerScroll) -> ScrollUnit ---

    @(link_name = "gtk_expander_get_type")
    expander_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_expander_new")
    expander_new :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_expander_new_with_mnemonic")
    expander_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_expander_set_expanded")
    expander_set_expanded :: proc(expander: ^Expander, expanded: glib.boolean) ---

    @(link_name = "gtk_expander_get_expanded")
    expander_get_expanded :: proc(expander: ^Expander) -> glib.boolean ---

    @(link_name = "gtk_expander_set_label")
    expander_set_label :: proc(expander: ^Expander, label: cstring) ---

    @(link_name = "gtk_expander_get_label")
    expander_get_label :: proc(expander: ^Expander) -> cstring ---

    @(link_name = "gtk_expander_set_use_underline")
    expander_set_use_underline :: proc(expander: ^Expander, use_underline: glib.boolean) ---

    @(link_name = "gtk_expander_get_use_underline")
    expander_get_use_underline :: proc(expander: ^Expander) -> glib.boolean ---

    @(link_name = "gtk_expander_set_use_markup")
    expander_set_use_markup :: proc(expander: ^Expander, use_markup: glib.boolean) ---

    @(link_name = "gtk_expander_get_use_markup")
    expander_get_use_markup :: proc(expander: ^Expander) -> glib.boolean ---

    @(link_name = "gtk_expander_set_label_widget")
    expander_set_label_widget :: proc(expander: ^Expander, label_widget: ^Widget) ---

    @(link_name = "gtk_expander_get_label_widget")
    expander_get_label_widget :: proc(expander: ^Expander) -> ^Widget ---

    @(link_name = "gtk_expander_set_resize_toplevel")
    expander_set_resize_toplevel :: proc(expander: ^Expander, resize_toplevel: glib.boolean) ---

    @(link_name = "gtk_expander_get_resize_toplevel")
    expander_get_resize_toplevel :: proc(expander: ^Expander) -> glib.boolean ---

    @(link_name = "gtk_expander_set_child")
    expander_set_child :: proc(expander: ^Expander, child: ^Widget) ---

    @(link_name = "gtk_expander_get_child")
    expander_get_child :: proc(expander: ^Expander) -> ^Widget ---

    @(link_name = "gtk_fixed_get_type")
    fixed_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_fixed_new")
    fixed_new :: proc() -> ^Widget ---

    @(link_name = "gtk_fixed_put")
    fixed_put :: proc(fixed: ^Fixed, widget: ^Widget, x: f64, y: f64) ---

    @(link_name = "gtk_fixed_remove")
    fixed_remove :: proc(fixed: ^Fixed, widget: ^Widget) ---

    @(link_name = "gtk_fixed_move")
    fixed_move :: proc(fixed: ^Fixed, widget: ^Widget, x: f64, y: f64) ---

    @(link_name = "gtk_fixed_get_child_position")
    fixed_get_child_position :: proc(fixed: ^Fixed, widget: ^Widget, x: ^f64, y: ^f64) ---

    @(link_name = "gtk_fixed_set_child_transform")
    fixed_set_child_transform :: proc(fixed: ^Fixed, widget: ^Widget, transform: ^Transform) ---

    @(link_name = "gtk_fixed_get_child_transform")
    fixed_get_child_transform :: proc(fixed: ^Fixed, widget: ^Widget) -> ^Transform ---

    @(link_name = "gtk_fixed_layout_get_type")
    fixed_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_fixed_layout_new")
    fixed_layout_new :: proc() -> ^LayoutManager ---

    @(link_name = "gtk_fixed_layout_child_get_type")
    fixed_layout_child_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_fixed_layout_child_set_transform")
    fixed_layout_child_set_transform :: proc(child: ^FixedLayoutChild, transform: ^Transform) ---

    @(link_name = "gtk_fixed_layout_child_get_transform")
    fixed_layout_child_get_transform :: proc(child: ^FixedLayoutChild) -> ^Transform ---

    @(link_name = "gtk_file_filter_get_type")
    file_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_filter_new")
    file_filter_new :: proc() -> ^FileFilter ---

    @(link_name = "gtk_file_filter_set_name")
    file_filter_set_name :: proc(filter: ^FileFilter, name: cstring) ---

    @(link_name = "gtk_file_filter_get_name")
    file_filter_get_name :: proc(filter: ^FileFilter) -> cstring ---

    @(link_name = "gtk_file_filter_add_mime_type")
    file_filter_add_mime_type :: proc(filter: ^FileFilter, mime_type: cstring) ---

    @(link_name = "gtk_file_filter_add_pattern")
    file_filter_add_pattern :: proc(filter: ^FileFilter, pattern: cstring) ---

    @(link_name = "gtk_file_filter_add_suffix")
    file_filter_add_suffix :: proc(filter: ^FileFilter, suffix: cstring) ---

    @(link_name = "gtk_file_filter_add_pixbuf_formats")
    file_filter_add_pixbuf_formats :: proc(filter: ^FileFilter) ---

    @(link_name = "gtk_file_filter_get_attributes")
    file_filter_get_attributes :: proc(filter: ^FileFilter) -> ^cstring ---

    @(link_name = "gtk_file_filter_to_gvariant")
    file_filter_to_gvariant :: proc(filter: ^FileFilter) -> ^glib.Variant ---

    @(link_name = "gtk_file_filter_new_from_gvariant")
    file_filter_new_from_gvariant :: proc(variant: ^glib.Variant) -> ^FileFilter ---

    @(link_name = "gtk_file_chooser_get_type")
    file_chooser_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_chooser_error_quark")
    file_chooser_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_file_chooser_set_action")
    file_chooser_set_action :: proc(chooser: ^FileChooser, action: FileChooserAction) ---

    @(link_name = "gtk_file_chooser_get_action")
    file_chooser_get_action :: proc(chooser: ^FileChooser) -> FileChooserAction ---

    @(link_name = "gtk_file_chooser_set_select_multiple")
    file_chooser_set_select_multiple :: proc(chooser: ^FileChooser, select_multiple: glib.boolean) ---

    @(link_name = "gtk_file_chooser_get_select_multiple")
    file_chooser_get_select_multiple :: proc(chooser: ^FileChooser) -> glib.boolean ---

    @(link_name = "gtk_file_chooser_set_create_folders")
    file_chooser_set_create_folders :: proc(chooser: ^FileChooser, create_folders: glib.boolean) ---

    @(link_name = "gtk_file_chooser_get_create_folders")
    file_chooser_get_create_folders :: proc(chooser: ^FileChooser) -> glib.boolean ---

    @(link_name = "gtk_file_chooser_set_current_name")
    file_chooser_set_current_name :: proc(chooser: ^FileChooser, name: cstring) ---

    @(link_name = "gtk_file_chooser_get_current_name")
    file_chooser_get_current_name :: proc(chooser: ^FileChooser) -> cstring ---

    @(link_name = "gtk_file_chooser_get_file")
    file_chooser_get_file :: proc(chooser: ^FileChooser) -> ^gio.File ---

    @(link_name = "gtk_file_chooser_set_file")
    file_chooser_set_file :: proc(chooser: ^FileChooser, file: ^gio.File, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_file_chooser_get_files")
    file_chooser_get_files :: proc(chooser: ^FileChooser) -> ^gio.ListModel ---

    @(link_name = "gtk_file_chooser_set_current_folder")
    file_chooser_set_current_folder :: proc(chooser: ^FileChooser, file: ^gio.File, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_file_chooser_get_current_folder")
    file_chooser_get_current_folder :: proc(chooser: ^FileChooser) -> ^gio.File ---

    @(link_name = "gtk_file_chooser_add_filter")
    file_chooser_add_filter :: proc(chooser: ^FileChooser, filter: ^FileFilter) ---

    @(link_name = "gtk_file_chooser_remove_filter")
    file_chooser_remove_filter :: proc(chooser: ^FileChooser, filter: ^FileFilter) ---

    @(link_name = "gtk_file_chooser_get_filters")
    file_chooser_get_filters :: proc(chooser: ^FileChooser) -> ^gio.ListModel ---

    @(link_name = "gtk_file_chooser_set_filter")
    file_chooser_set_filter :: proc(chooser: ^FileChooser, filter: ^FileFilter) ---

    @(link_name = "gtk_file_chooser_get_filter")
    file_chooser_get_filter :: proc(chooser: ^FileChooser) -> ^FileFilter ---

    @(link_name = "gtk_file_chooser_add_shortcut_folder")
    file_chooser_add_shortcut_folder :: proc(chooser: ^FileChooser, folder: ^gio.File, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_file_chooser_remove_shortcut_folder")
    file_chooser_remove_shortcut_folder :: proc(chooser: ^FileChooser, folder: ^gio.File, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_file_chooser_get_shortcut_folders")
    file_chooser_get_shortcut_folders :: proc(chooser: ^FileChooser) -> ^gio.ListModel ---

    @(link_name = "gtk_file_chooser_add_choice")
    file_chooser_add_choice :: proc(chooser: ^FileChooser, id: cstring, label: cstring, options: [^]cstring, option_labels: [^]cstring) ---

    @(link_name = "gtk_file_chooser_remove_choice")
    file_chooser_remove_choice :: proc(chooser: ^FileChooser, id: cstring) ---

    @(link_name = "gtk_file_chooser_set_choice")
    file_chooser_set_choice :: proc(chooser: ^FileChooser, id: cstring, option: cstring) ---

    @(link_name = "gtk_file_chooser_get_choice")
    file_chooser_get_choice :: proc(chooser: ^FileChooser, id: cstring) -> cstring ---

    @(link_name = "gtk_file_chooser_dialog_get_type")
    file_chooser_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_chooser_dialog_new")
    file_chooser_dialog_new :: proc(title: cstring, parent: ^Window, action: FileChooserAction, first_button_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---

    @(link_name = "gtk_native_dialog_get_type")
    native_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_native_dialog_show")
    native_dialog_show :: proc(self: ^NativeDialog) ---

    @(link_name = "gtk_native_dialog_hide")
    native_dialog_hide :: proc(self: ^NativeDialog) ---

    @(link_name = "gtk_native_dialog_destroy")
    native_dialog_destroy :: proc(self: ^NativeDialog) ---

    @(link_name = "gtk_native_dialog_get_visible")
    native_dialog_get_visible :: proc(self: ^NativeDialog) -> glib.boolean ---

    @(link_name = "gtk_native_dialog_set_modal")
    native_dialog_set_modal :: proc(self: ^NativeDialog, modal: glib.boolean) ---

    @(link_name = "gtk_native_dialog_get_modal")
    native_dialog_get_modal :: proc(self: ^NativeDialog) -> glib.boolean ---

    @(link_name = "gtk_native_dialog_set_title")
    native_dialog_set_title :: proc(self: ^NativeDialog, title: cstring) ---

    @(link_name = "gtk_native_dialog_get_title")
    native_dialog_get_title :: proc(self: ^NativeDialog) -> cstring ---

    @(link_name = "gtk_native_dialog_set_transient_for")
    native_dialog_set_transient_for :: proc(self: ^NativeDialog, parent: ^Window) ---

    @(link_name = "gtk_native_dialog_get_transient_for")
    native_dialog_get_transient_for :: proc(self: ^NativeDialog) -> ^Window ---

    @(link_name = "gtk_file_chooser_native_get_type")
    file_chooser_native_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_chooser_native_new")
    file_chooser_native_new :: proc(title: cstring, parent: ^Window, action: FileChooserAction, accept_label: cstring, cancel_label: cstring) -> ^FileChooserNative ---

    @(link_name = "gtk_file_chooser_native_get_accept_label")
    file_chooser_native_get_accept_label :: proc(self: ^FileChooserNative) -> cstring ---

    @(link_name = "gtk_file_chooser_native_set_accept_label")
    file_chooser_native_set_accept_label :: proc(self: ^FileChooserNative, accept_label: cstring) ---

    @(link_name = "gtk_file_chooser_native_get_cancel_label")
    file_chooser_native_get_cancel_label :: proc(self: ^FileChooserNative) -> cstring ---

    @(link_name = "gtk_file_chooser_native_set_cancel_label")
    file_chooser_native_set_cancel_label :: proc(self: ^FileChooserNative, cancel_label: cstring) ---

    @(link_name = "gtk_file_chooser_widget_get_type")
    file_chooser_widget_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_chooser_widget_new")
    file_chooser_widget_new :: proc(action: FileChooserAction) -> ^Widget ---

    @(link_name = "gtk_file_dialog_get_type")
    file_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_dialog_new")
    file_dialog_new :: proc() -> ^FileDialog ---

    @(link_name = "gtk_file_dialog_get_title")
    file_dialog_get_title :: proc(self: ^FileDialog) -> cstring ---

    @(link_name = "gtk_file_dialog_set_title")
    file_dialog_set_title :: proc(self: ^FileDialog, title: cstring) ---

    @(link_name = "gtk_file_dialog_get_modal")
    file_dialog_get_modal :: proc(self: ^FileDialog) -> glib.boolean ---

    @(link_name = "gtk_file_dialog_set_modal")
    file_dialog_set_modal :: proc(self: ^FileDialog, modal: glib.boolean) ---

    @(link_name = "gtk_file_dialog_get_filters")
    file_dialog_get_filters :: proc(self: ^FileDialog) -> ^gio.ListModel ---

    @(link_name = "gtk_file_dialog_set_filters")
    file_dialog_set_filters :: proc(self: ^FileDialog, filters: [^]gio.ListModel) ---

    @(link_name = "gtk_file_dialog_get_default_filter")
    file_dialog_get_default_filter :: proc(self: ^FileDialog) -> ^FileFilter ---

    @(link_name = "gtk_file_dialog_set_default_filter")
    file_dialog_set_default_filter :: proc(self: ^FileDialog, filter: ^FileFilter) ---

    @(link_name = "gtk_file_dialog_get_initial_folder")
    file_dialog_get_initial_folder :: proc(self: ^FileDialog) -> ^gio.File ---

    @(link_name = "gtk_file_dialog_set_initial_folder")
    file_dialog_set_initial_folder :: proc(self: ^FileDialog, folder: ^gio.File) ---

    @(link_name = "gtk_file_dialog_get_initial_name")
    file_dialog_get_initial_name :: proc(self: ^FileDialog) -> cstring ---

    @(link_name = "gtk_file_dialog_set_initial_name")
    file_dialog_set_initial_name :: proc(self: ^FileDialog, name: cstring) ---

    @(link_name = "gtk_file_dialog_get_initial_file")
    file_dialog_get_initial_file :: proc(self: ^FileDialog) -> ^gio.File ---

    @(link_name = "gtk_file_dialog_set_initial_file")
    file_dialog_set_initial_file :: proc(self: ^FileDialog, file: ^gio.File) ---

    @(link_name = "gtk_file_dialog_get_accept_label")
    file_dialog_get_accept_label :: proc(self: ^FileDialog) -> cstring ---

    @(link_name = "gtk_file_dialog_set_accept_label")
    file_dialog_set_accept_label :: proc(self: ^FileDialog, accept_label: cstring) ---

    @(link_name = "gtk_file_dialog_open")
    file_dialog_open :: proc(self: ^FileDialog, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_file_dialog_open_finish")
    file_dialog_open_finish :: proc(self: ^FileDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.File ---

    @(link_name = "gtk_file_dialog_select_folder")
    file_dialog_select_folder :: proc(self: ^FileDialog, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_file_dialog_select_folder_finish")
    file_dialog_select_folder_finish :: proc(self: ^FileDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.File ---

    @(link_name = "gtk_file_dialog_save")
    file_dialog_save :: proc(self: ^FileDialog, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_file_dialog_save_finish")
    file_dialog_save_finish :: proc(self: ^FileDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.File ---

    @(link_name = "gtk_file_dialog_open_multiple")
    file_dialog_open_multiple :: proc(self: ^FileDialog, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_file_dialog_open_multiple_finish")
    file_dialog_open_multiple_finish :: proc(self: ^FileDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.ListModel ---

    @(link_name = "gtk_file_dialog_select_multiple_folders")
    file_dialog_select_multiple_folders :: proc(self: ^FileDialog, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_file_dialog_select_multiple_folders_finish")
    file_dialog_select_multiple_folders_finish :: proc(self: ^FileDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.ListModel ---

    @(link_name = "gtk_file_launcher_get_type")
    file_launcher_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_file_launcher_new")
    file_launcher_new :: proc(file: ^gio.File) -> ^FileLauncher ---

    @(link_name = "gtk_file_launcher_get_file")
    file_launcher_get_file :: proc(self: ^FileLauncher) -> ^gio.File ---

    @(link_name = "gtk_file_launcher_set_file")
    file_launcher_set_file :: proc(self: ^FileLauncher, file: ^gio.File) ---

    @(link_name = "gtk_file_launcher_get_always_ask")
    file_launcher_get_always_ask :: proc(self: ^FileLauncher) -> glib.boolean ---

    @(link_name = "gtk_file_launcher_set_always_ask")
    file_launcher_set_always_ask :: proc(self: ^FileLauncher, always_ask: glib.boolean) ---

    @(link_name = "gtk_file_launcher_launch")
    file_launcher_launch :: proc(self: ^FileLauncher, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_file_launcher_launch_finish")
    file_launcher_launch_finish :: proc(self: ^FileLauncher, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_file_launcher_open_containing_folder")
    file_launcher_open_containing_folder :: proc(self: ^FileLauncher, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_file_launcher_open_containing_folder_finish")
    file_launcher_open_containing_folder_finish :: proc(self: ^FileLauncher, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_filter_list_model_get_type")
    filter_list_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_filter_list_model_new")
    filter_list_model_new :: proc(model: ^gio.ListModel, filter: ^Filter) -> ^FilterListModel ---

    @(link_name = "gtk_filter_list_model_set_filter")
    filter_list_model_set_filter :: proc(self: ^FilterListModel, filter: ^Filter) ---

    @(link_name = "gtk_filter_list_model_get_filter")
    filter_list_model_get_filter :: proc(self: ^FilterListModel) -> ^Filter ---

    @(link_name = "gtk_filter_list_model_set_model")
    filter_list_model_set_model :: proc(self: ^FilterListModel, model: ^gio.ListModel) ---

    @(link_name = "gtk_filter_list_model_get_model")
    filter_list_model_get_model :: proc(self: ^FilterListModel) -> ^gio.ListModel ---

    @(link_name = "gtk_filter_list_model_set_incremental")
    filter_list_model_set_incremental :: proc(self: ^FilterListModel, incremental: glib.boolean) ---

    @(link_name = "gtk_filter_list_model_get_incremental")
    filter_list_model_get_incremental :: proc(self: ^FilterListModel) -> glib.boolean ---

    @(link_name = "gtk_filter_list_model_get_pending")
    filter_list_model_get_pending :: proc(self: ^FilterListModel) -> glib.uint_ ---

    @(link_name = "gtk_custom_filter_get_type")
    custom_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_custom_filter_new")
    custom_filter_new :: proc(match_func: CustomFilterFunc, user_data: glib.pointer, user_destroy: glib.DestroyNotify) -> ^CustomFilter ---

    @(link_name = "gtk_custom_filter_set_filter_func")
    custom_filter_set_filter_func :: proc(self: ^CustomFilter, match_func: CustomFilterFunc, user_data: glib.pointer, user_destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_flatten_list_model_get_type")
    flatten_list_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_flatten_list_model_new")
    flatten_list_model_new :: proc(model: ^gio.ListModel) -> ^FlattenListModel ---

    @(link_name = "gtk_flatten_list_model_set_model")
    flatten_list_model_set_model :: proc(self: ^FlattenListModel, model: ^gio.ListModel) ---

    @(link_name = "gtk_flatten_list_model_get_model")
    flatten_list_model_get_model :: proc(self: ^FlattenListModel) -> ^gio.ListModel ---

    @(link_name = "gtk_flatten_list_model_get_model_for_item")
    flatten_list_model_get_model_for_item :: proc(self: ^FlattenListModel, position: glib.uint_) -> ^gio.ListModel ---

    @(link_name = "gtk_flow_box_child_get_type")
    flow_box_child_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_flow_box_child_new")
    flow_box_child_new :: proc() -> ^Widget ---

    @(link_name = "gtk_flow_box_child_set_child")
    flow_box_child_set_child :: proc(self: ^FlowBoxChild, child: ^Widget) ---

    @(link_name = "gtk_flow_box_child_get_child")
    flow_box_child_get_child :: proc(self: ^FlowBoxChild) -> ^Widget ---

    @(link_name = "gtk_flow_box_child_get_index")
    flow_box_child_get_index :: proc(child: ^FlowBoxChild) -> i32 ---

    @(link_name = "gtk_flow_box_child_is_selected")
    flow_box_child_is_selected :: proc(child: ^FlowBoxChild) -> glib.boolean ---

    @(link_name = "gtk_flow_box_child_changed")
    flow_box_child_changed :: proc(child: ^FlowBoxChild) ---

    @(link_name = "gtk_flow_box_get_type")
    flow_box_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_flow_box_new")
    flow_box_new :: proc() -> ^Widget ---

    @(link_name = "gtk_flow_box_bind_model")
    flow_box_bind_model :: proc(box: ^FlowBox, model: ^gio.ListModel, create_widget_func: FlowBoxCreateWidgetFunc, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) ---

    @(link_name = "gtk_flow_box_set_homogeneous")
    flow_box_set_homogeneous :: proc(box: ^FlowBox, homogeneous: glib.boolean) ---

    @(link_name = "gtk_flow_box_get_homogeneous")
    flow_box_get_homogeneous :: proc(box: ^FlowBox) -> glib.boolean ---

    @(link_name = "gtk_flow_box_set_row_spacing")
    flow_box_set_row_spacing :: proc(box: ^FlowBox, spacing: glib.uint_) ---

    @(link_name = "gtk_flow_box_get_row_spacing")
    flow_box_get_row_spacing :: proc(box: ^FlowBox) -> glib.uint_ ---

    @(link_name = "gtk_flow_box_set_column_spacing")
    flow_box_set_column_spacing :: proc(box: ^FlowBox, spacing: glib.uint_) ---

    @(link_name = "gtk_flow_box_get_column_spacing")
    flow_box_get_column_spacing :: proc(box: ^FlowBox) -> glib.uint_ ---

    @(link_name = "gtk_flow_box_set_min_children_per_line")
    flow_box_set_min_children_per_line :: proc(box: ^FlowBox, n_children: glib.uint_) ---

    @(link_name = "gtk_flow_box_get_min_children_per_line")
    flow_box_get_min_children_per_line :: proc(box: ^FlowBox) -> glib.uint_ ---

    @(link_name = "gtk_flow_box_set_max_children_per_line")
    flow_box_set_max_children_per_line :: proc(box: ^FlowBox, n_children: glib.uint_) ---

    @(link_name = "gtk_flow_box_get_max_children_per_line")
    flow_box_get_max_children_per_line :: proc(box: ^FlowBox) -> glib.uint_ ---

    @(link_name = "gtk_flow_box_set_activate_on_single_click")
    flow_box_set_activate_on_single_click :: proc(box: ^FlowBox, single: glib.boolean) ---

    @(link_name = "gtk_flow_box_get_activate_on_single_click")
    flow_box_get_activate_on_single_click :: proc(box: ^FlowBox) -> glib.boolean ---

    @(link_name = "gtk_flow_box_prepend")
    flow_box_prepend :: proc(self: ^FlowBox, child: ^Widget) ---

    @(link_name = "gtk_flow_box_append")
    flow_box_append :: proc(self: ^FlowBox, child: ^Widget) ---

    @(link_name = "gtk_flow_box_insert")
    flow_box_insert :: proc(box: ^FlowBox, widget: ^Widget, position: i32) ---

    @(link_name = "gtk_flow_box_remove")
    flow_box_remove :: proc(box: ^FlowBox, widget: ^Widget) ---

    @(link_name = "gtk_flow_box_remove_all")
    flow_box_remove_all :: proc(box: ^FlowBox) ---

    @(link_name = "gtk_flow_box_get_child_at_index")
    flow_box_get_child_at_index :: proc(box: ^FlowBox, idx: i32) -> ^FlowBoxChild ---

    @(link_name = "gtk_flow_box_get_child_at_pos")
    flow_box_get_child_at_pos :: proc(box: ^FlowBox, x: i32, y: i32) -> ^FlowBoxChild ---

    @(link_name = "gtk_flow_box_selected_foreach")
    flow_box_selected_foreach :: proc(box: ^FlowBox, func: FlowBoxForeachFunc, data: glib.pointer) ---

    @(link_name = "gtk_flow_box_get_selected_children")
    flow_box_get_selected_children :: proc(box: ^FlowBox) -> ^glib.List ---

    @(link_name = "gtk_flow_box_select_child")
    flow_box_select_child :: proc(box: ^FlowBox, child: ^FlowBoxChild) ---

    @(link_name = "gtk_flow_box_unselect_child")
    flow_box_unselect_child :: proc(box: ^FlowBox, child: ^FlowBoxChild) ---

    @(link_name = "gtk_flow_box_select_all")
    flow_box_select_all :: proc(box: ^FlowBox) ---

    @(link_name = "gtk_flow_box_unselect_all")
    flow_box_unselect_all :: proc(box: ^FlowBox) ---

    @(link_name = "gtk_flow_box_set_selection_mode")
    flow_box_set_selection_mode :: proc(box: ^FlowBox, mode: SelectionMode) ---

    @(link_name = "gtk_flow_box_get_selection_mode")
    flow_box_get_selection_mode :: proc(box: ^FlowBox) -> SelectionMode ---

    @(link_name = "gtk_flow_box_set_hadjustment")
    flow_box_set_hadjustment :: proc(box: ^FlowBox, adjustment: ^Adjustment) ---

    @(link_name = "gtk_flow_box_set_vadjustment")
    flow_box_set_vadjustment :: proc(box: ^FlowBox, adjustment: ^Adjustment) ---

    @(link_name = "gtk_flow_box_set_filter_func")
    flow_box_set_filter_func :: proc(box: ^FlowBox, filter_func: FlowBoxFilterFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_flow_box_invalidate_filter")
    flow_box_invalidate_filter :: proc(box: ^FlowBox) ---

    @(link_name = "gtk_flow_box_set_sort_func")
    flow_box_set_sort_func :: proc(box: ^FlowBox, sort_func: FlowBoxSortFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_flow_box_invalidate_sort")
    flow_box_invalidate_sort :: proc(box: ^FlowBox) ---

    @(link_name = "gtk_font_button_get_type")
    font_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_font_button_new")
    font_button_new :: proc() -> ^Widget ---

    @(link_name = "gtk_font_button_new_with_font")
    font_button_new_with_font :: proc(fontname: cstring) -> ^Widget ---

    @(link_name = "gtk_font_button_get_title")
    font_button_get_title :: proc(font_button: ^FontButton) -> cstring ---

    @(link_name = "gtk_font_button_set_title")
    font_button_set_title :: proc(font_button: ^FontButton, title: cstring) ---

    @(link_name = "gtk_font_button_get_modal")
    font_button_get_modal :: proc(font_button: ^FontButton) -> glib.boolean ---

    @(link_name = "gtk_font_button_set_modal")
    font_button_set_modal :: proc(font_button: ^FontButton, modal: glib.boolean) ---

    @(link_name = "gtk_font_button_get_use_font")
    font_button_get_use_font :: proc(font_button: ^FontButton) -> glib.boolean ---

    @(link_name = "gtk_font_button_set_use_font")
    font_button_set_use_font :: proc(font_button: ^FontButton, use_font: glib.boolean) ---

    @(link_name = "gtk_font_button_get_use_size")
    font_button_get_use_size :: proc(font_button: ^FontButton) -> glib.boolean ---

    @(link_name = "gtk_font_button_set_use_size")
    font_button_set_use_size :: proc(font_button: ^FontButton, use_size: glib.boolean) ---

    @(link_name = "gtk_font_chooser_get_type")
    font_chooser_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_font_chooser_get_font_family")
    font_chooser_get_font_family :: proc(fontchooser: ^FontChooser) -> ^pango.FontFamily ---

    @(link_name = "gtk_font_chooser_get_font_face")
    font_chooser_get_font_face :: proc(fontchooser: ^FontChooser) -> ^pango.FontFace ---

    @(link_name = "gtk_font_chooser_get_font_size")
    font_chooser_get_font_size :: proc(fontchooser: ^FontChooser) -> i32 ---

    @(link_name = "gtk_font_chooser_get_font_desc")
    font_chooser_get_font_desc :: proc(fontchooser: ^FontChooser) -> ^pango.FontDescription ---

    @(link_name = "gtk_font_chooser_set_font_desc")
    font_chooser_set_font_desc :: proc(fontchooser: ^FontChooser, font_desc: ^pango.FontDescription) ---

    @(link_name = "gtk_font_chooser_get_font")
    font_chooser_get_font :: proc(fontchooser: ^FontChooser) -> cstring ---

    @(link_name = "gtk_font_chooser_set_font")
    font_chooser_set_font :: proc(fontchooser: ^FontChooser, fontname: cstring) ---

    @(link_name = "gtk_font_chooser_get_preview_text")
    font_chooser_get_preview_text :: proc(fontchooser: ^FontChooser) -> cstring ---

    @(link_name = "gtk_font_chooser_set_preview_text")
    font_chooser_set_preview_text :: proc(fontchooser: ^FontChooser, text: cstring) ---

    @(link_name = "gtk_font_chooser_get_show_preview_entry")
    font_chooser_get_show_preview_entry :: proc(fontchooser: ^FontChooser) -> glib.boolean ---

    @(link_name = "gtk_font_chooser_set_show_preview_entry")
    font_chooser_set_show_preview_entry :: proc(fontchooser: ^FontChooser, show_preview_entry: glib.boolean) ---

    @(link_name = "gtk_font_chooser_set_filter_func")
    font_chooser_set_filter_func :: proc(fontchooser: ^FontChooser, filter: FontFilterFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_font_chooser_set_font_map")
    font_chooser_set_font_map :: proc(fontchooser: ^FontChooser, fontmap: ^pango.FontMap) ---

    @(link_name = "gtk_font_chooser_get_font_map")
    font_chooser_get_font_map :: proc(fontchooser: ^FontChooser) -> ^pango.FontMap ---

    @(link_name = "gtk_font_chooser_set_level")
    font_chooser_set_level :: proc(fontchooser: ^FontChooser, level: FontChooserLevel) ---

    @(link_name = "gtk_font_chooser_get_level")
    font_chooser_get_level :: proc(fontchooser: ^FontChooser) -> FontChooserLevel ---

    @(link_name = "gtk_font_chooser_get_font_features")
    font_chooser_get_font_features :: proc(fontchooser: ^FontChooser) -> cstring ---

    @(link_name = "gtk_font_chooser_get_language")
    font_chooser_get_language :: proc(fontchooser: ^FontChooser) -> cstring ---

    @(link_name = "gtk_font_chooser_set_language")
    font_chooser_set_language :: proc(fontchooser: ^FontChooser, language: cstring) ---

    @(link_name = "gtk_font_chooser_dialog_get_type")
    font_chooser_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_font_chooser_dialog_new")
    font_chooser_dialog_new :: proc(title: cstring, parent: ^Window) -> ^Widget ---

    @(link_name = "gtk_font_chooser_widget_get_type")
    font_chooser_widget_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_font_chooser_widget_new")
    font_chooser_widget_new :: proc() -> ^Widget ---

    @(link_name = "gtk_font_dialog_get_type")
    font_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_font_dialog_new")
    font_dialog_new :: proc() -> ^FontDialog ---

    @(link_name = "gtk_font_dialog_get_title")
    font_dialog_get_title :: proc(self: ^FontDialog) -> cstring ---

    @(link_name = "gtk_font_dialog_set_title")
    font_dialog_set_title :: proc(self: ^FontDialog, title: cstring) ---

    @(link_name = "gtk_font_dialog_get_modal")
    font_dialog_get_modal :: proc(self: ^FontDialog) -> glib.boolean ---

    @(link_name = "gtk_font_dialog_set_modal")
    font_dialog_set_modal :: proc(self: ^FontDialog, modal: glib.boolean) ---

    @(link_name = "gtk_font_dialog_get_language")
    font_dialog_get_language :: proc(self: ^FontDialog) -> ^pango.Language ---

    @(link_name = "gtk_font_dialog_set_language")
    font_dialog_set_language :: proc(self: ^FontDialog, language: ^pango.Language) ---

    @(link_name = "gtk_font_dialog_get_font_map")
    font_dialog_get_font_map :: proc(self: ^FontDialog) -> ^pango.FontMap ---

    @(link_name = "gtk_font_dialog_set_font_map")
    font_dialog_set_font_map :: proc(self: ^FontDialog, fontmap: ^pango.FontMap) ---

    @(link_name = "gtk_font_dialog_get_filter")
    font_dialog_get_filter :: proc(self: ^FontDialog) -> ^Filter ---

    @(link_name = "gtk_font_dialog_set_filter")
    font_dialog_set_filter :: proc(self: ^FontDialog, filter: ^Filter) ---

    @(link_name = "gtk_font_dialog_choose_family")
    font_dialog_choose_family :: proc(self: ^FontDialog, parent: ^Window, initial_value: ^pango.FontFamily, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_font_dialog_choose_family_finish")
    font_dialog_choose_family_finish :: proc(self: ^FontDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^pango.FontFamily ---

    @(link_name = "gtk_font_dialog_choose_face")
    font_dialog_choose_face :: proc(self: ^FontDialog, parent: ^Window, initial_value: ^pango.FontFace, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_font_dialog_choose_face_finish")
    font_dialog_choose_face_finish :: proc(self: ^FontDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^pango.FontFace ---

    @(link_name = "gtk_font_dialog_choose_font")
    font_dialog_choose_font :: proc(self: ^FontDialog, parent: ^Window, initial_value: ^pango.FontDescription, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_font_dialog_choose_font_finish")
    font_dialog_choose_font_finish :: proc(self: ^FontDialog, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^pango.FontDescription ---

    @(link_name = "gtk_font_dialog_choose_font_and_features")
    font_dialog_choose_font_and_features :: proc(self: ^FontDialog, parent: ^Window, initial_value: ^pango.FontDescription, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_font_dialog_choose_font_and_features_finish")
    font_dialog_choose_font_and_features_finish :: proc(self: ^FontDialog, result: ^gio.AsyncResult, font_desc: ^^pango.FontDescription, font_features: [^]cstring, language: ^^pango.Language, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_font_dialog_button_get_type")
    font_dialog_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_font_dialog_button_new")
    font_dialog_button_new :: proc(dialog: ^FontDialog) -> ^Widget ---

    @(link_name = "gtk_font_dialog_button_get_dialog")
    font_dialog_button_get_dialog :: proc(self: ^FontDialogButton) -> ^FontDialog ---

    @(link_name = "gtk_font_dialog_button_set_dialog")
    font_dialog_button_set_dialog :: proc(self: ^FontDialogButton, dialog: ^FontDialog) ---

    @(link_name = "gtk_font_dialog_button_get_level")
    font_dialog_button_get_level :: proc(self: ^FontDialogButton) -> FontLevel ---

    @(link_name = "gtk_font_dialog_button_set_level")
    font_dialog_button_set_level :: proc(self: ^FontDialogButton, level: FontLevel) ---

    @(link_name = "gtk_font_dialog_button_get_font_desc")
    font_dialog_button_get_font_desc :: proc(self: ^FontDialogButton) -> ^pango.FontDescription ---

    @(link_name = "gtk_font_dialog_button_set_font_desc")
    font_dialog_button_set_font_desc :: proc(self: ^FontDialogButton, font_desc: ^pango.FontDescription) ---

    @(link_name = "gtk_font_dialog_button_get_font_features")
    font_dialog_button_get_font_features :: proc(self: ^FontDialogButton) -> cstring ---

    @(link_name = "gtk_font_dialog_button_set_font_features")
    font_dialog_button_set_font_features :: proc(self: ^FontDialogButton, font_features: cstring) ---

    @(link_name = "gtk_font_dialog_button_get_language")
    font_dialog_button_get_language :: proc(self: ^FontDialogButton) -> ^pango.Language ---

    @(link_name = "gtk_font_dialog_button_set_language")
    font_dialog_button_set_language :: proc(self: ^FontDialogButton, language: ^pango.Language) ---

    @(link_name = "gtk_font_dialog_button_get_use_font")
    font_dialog_button_get_use_font :: proc(self: ^FontDialogButton) -> glib.boolean ---

    @(link_name = "gtk_font_dialog_button_set_use_font")
    font_dialog_button_set_use_font :: proc(self: ^FontDialogButton, use_font: glib.boolean) ---

    @(link_name = "gtk_font_dialog_button_get_use_size")
    font_dialog_button_get_use_size :: proc(self: ^FontDialogButton) -> glib.boolean ---

    @(link_name = "gtk_font_dialog_button_set_use_size")
    font_dialog_button_set_use_size :: proc(self: ^FontDialogButton, use_size: glib.boolean) ---

    @(link_name = "gtk_frame_get_type")
    frame_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_frame_new")
    frame_new :: proc(label: cstring) -> ^Widget ---

    @(link_name = "gtk_frame_set_label")
    frame_set_label :: proc(frame: ^Frame, label: cstring) ---

    @(link_name = "gtk_frame_get_label")
    frame_get_label :: proc(frame: ^Frame) -> cstring ---

    @(link_name = "gtk_frame_set_label_widget")
    frame_set_label_widget :: proc(frame: ^Frame, label_widget: ^Widget) ---

    @(link_name = "gtk_frame_get_label_widget")
    frame_get_label_widget :: proc(frame: ^Frame) -> ^Widget ---

    @(link_name = "gtk_frame_set_label_align")
    frame_set_label_align :: proc(frame: ^Frame, xalign: f32) ---

    @(link_name = "gtk_frame_get_label_align")
    frame_get_label_align :: proc(frame: ^Frame) -> f32 ---

    @(link_name = "gtk_frame_set_child")
    frame_set_child :: proc(frame: ^Frame, child: ^Widget) ---

    @(link_name = "gtk_frame_get_child")
    frame_get_child :: proc(frame: ^Frame) -> ^Widget ---

    @(link_name = "gtk_gesture_get_type")
    gesture_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_get_device")
    gesture_get_device :: proc(gesture: ^Gesture) -> ^Device ---

    @(link_name = "gtk_gesture_set_state")
    gesture_set_state :: proc(gesture: ^Gesture, state: EventSequenceState) -> glib.boolean ---

    @(link_name = "gtk_gesture_get_sequence_state")
    gesture_get_sequence_state :: proc(gesture: ^Gesture, sequence: ^EventSequence) -> EventSequenceState ---

    @(link_name = "gtk_gesture_set_sequence_state")
    gesture_set_sequence_state :: proc(gesture: ^Gesture, sequence: ^EventSequence, state: EventSequenceState) -> glib.boolean ---

    @(link_name = "gtk_gesture_get_sequences")
    gesture_get_sequences :: proc(gesture: ^Gesture) -> ^glib.List ---

    @(link_name = "gtk_gesture_get_last_updated_sequence")
    gesture_get_last_updated_sequence :: proc(gesture: ^Gesture) -> ^EventSequence ---

    @(link_name = "gtk_gesture_handles_sequence")
    gesture_handles_sequence :: proc(gesture: ^Gesture, sequence: ^EventSequence) -> glib.boolean ---

    @(link_name = "gtk_gesture_get_last_event")
    gesture_get_last_event :: proc(gesture: ^Gesture, sequence: ^EventSequence) -> ^Event ---

    @(link_name = "gtk_gesture_get_point")
    gesture_get_point :: proc(gesture: ^Gesture, sequence: ^EventSequence, x: ^f64, y: ^f64) -> glib.boolean ---

    @(link_name = "gtk_gesture_get_bounding_box")
    gesture_get_bounding_box :: proc(gesture: ^Gesture, rect: ^Rectangle) -> glib.boolean ---

    @(link_name = "gtk_gesture_get_bounding_box_center")
    gesture_get_bounding_box_center :: proc(gesture: ^Gesture, x: ^f64, y: ^f64) -> glib.boolean ---

    @(link_name = "gtk_gesture_is_active")
    gesture_is_active :: proc(gesture: ^Gesture) -> glib.boolean ---

    @(link_name = "gtk_gesture_is_recognized")
    gesture_is_recognized :: proc(gesture: ^Gesture) -> glib.boolean ---

    @(link_name = "gtk_gesture_group")
    gesture_group :: proc(group_gesture: ^Gesture, gesture: ^Gesture) ---

    @(link_name = "gtk_gesture_ungroup")
    gesture_ungroup :: proc(gesture: ^Gesture) ---

    @(link_name = "gtk_gesture_get_group")
    gesture_get_group :: proc(gesture: ^Gesture) -> ^glib.List ---

    @(link_name = "gtk_gesture_is_grouped_with")
    gesture_is_grouped_with :: proc(gesture: ^Gesture, other: ^Gesture) -> glib.boolean ---

    @(link_name = "gtk_gesture_single_get_type")
    gesture_single_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_single_get_touch_only")
    gesture_single_get_touch_only :: proc(gesture: ^GestureSingle) -> glib.boolean ---

    @(link_name = "gtk_gesture_single_set_touch_only")
    gesture_single_set_touch_only :: proc(gesture: ^GestureSingle, touch_only: glib.boolean) ---

    @(link_name = "gtk_gesture_single_get_exclusive")
    gesture_single_get_exclusive :: proc(gesture: ^GestureSingle) -> glib.boolean ---

    @(link_name = "gtk_gesture_single_set_exclusive")
    gesture_single_set_exclusive :: proc(gesture: ^GestureSingle, exclusive: glib.boolean) ---

    @(link_name = "gtk_gesture_single_get_button")
    gesture_single_get_button :: proc(gesture: ^GestureSingle) -> glib.uint_ ---

    @(link_name = "gtk_gesture_single_set_button")
    gesture_single_set_button :: proc(gesture: ^GestureSingle, button: glib.uint_) ---

    @(link_name = "gtk_gesture_single_get_current_button")
    gesture_single_get_current_button :: proc(gesture: ^GestureSingle) -> glib.uint_ ---

    @(link_name = "gtk_gesture_single_get_current_sequence")
    gesture_single_get_current_sequence :: proc(gesture: ^GestureSingle) -> ^EventSequence ---

    @(link_name = "gtk_gesture_click_get_type")
    gesture_click_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_click_new")
    gesture_click_new :: proc() -> ^Gesture ---

    @(link_name = "gtk_gesture_drag_get_type")
    gesture_drag_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_drag_new")
    gesture_drag_new :: proc() -> ^Gesture ---

    @(link_name = "gtk_gesture_drag_get_start_point")
    gesture_drag_get_start_point :: proc(gesture: ^GestureDrag, x: ^f64, y: ^f64) -> glib.boolean ---

    @(link_name = "gtk_gesture_drag_get_offset")
    gesture_drag_get_offset :: proc(gesture: ^GestureDrag, x: ^f64, y: ^f64) -> glib.boolean ---

    @(link_name = "gtk_gesture_long_press_get_type")
    gesture_long_press_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_long_press_new")
    gesture_long_press_new :: proc() -> ^Gesture ---

    @(link_name = "gtk_gesture_long_press_set_delay_factor")
    gesture_long_press_set_delay_factor :: proc(gesture: ^GestureLongPress, delay_factor: f64) ---

    @(link_name = "gtk_gesture_long_press_get_delay_factor")
    gesture_long_press_get_delay_factor :: proc(gesture: ^GestureLongPress) -> f64 ---

    @(link_name = "gtk_gesture_pan_get_type")
    gesture_pan_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_pan_new")
    gesture_pan_new :: proc(orientation: Orientation) -> ^Gesture ---

    @(link_name = "gtk_gesture_pan_get_orientation")
    gesture_pan_get_orientation :: proc(gesture: ^GesturePan) -> Orientation ---

    @(link_name = "gtk_gesture_pan_set_orientation")
    gesture_pan_set_orientation :: proc(gesture: ^GesturePan, orientation: Orientation) ---

    @(link_name = "gtk_gesture_rotate_get_type")
    gesture_rotate_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_rotate_new")
    gesture_rotate_new :: proc() -> ^Gesture ---

    @(link_name = "gtk_gesture_rotate_get_angle_delta")
    gesture_rotate_get_angle_delta :: proc(gesture: ^GestureRotate) -> f64 ---

    @(link_name = "gtk_gesture_stylus_get_type")
    gesture_stylus_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_stylus_new")
    gesture_stylus_new :: proc() -> ^Gesture ---

    @(link_name = "gtk_gesture_stylus_get_stylus_only")
    gesture_stylus_get_stylus_only :: proc(gesture: ^GestureStylus) -> glib.boolean ---

    @(link_name = "gtk_gesture_stylus_set_stylus_only")
    gesture_stylus_set_stylus_only :: proc(gesture: ^GestureStylus, stylus_only: glib.boolean) ---

    @(link_name = "gtk_gesture_stylus_get_axis")
    gesture_stylus_get_axis :: proc(gesture: ^GestureStylus, axis: AxisUse, value: ^f64) -> glib.boolean ---

    @(link_name = "gtk_gesture_stylus_get_axes")
    gesture_stylus_get_axes :: proc(gesture: ^GestureStylus, axes: [^]AxisUse, values: [^]^f64) -> glib.boolean ---

    @(link_name = "gtk_gesture_stylus_get_backlog")
    gesture_stylus_get_backlog :: proc(gesture: ^GestureStylus, backlog: ^^TimeCoord, n_elems: [^]glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_gesture_stylus_get_device_tool")
    gesture_stylus_get_device_tool :: proc(gesture: ^GestureStylus) -> ^DeviceTool ---

    @(link_name = "gtk_gesture_swipe_get_type")
    gesture_swipe_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_swipe_new")
    gesture_swipe_new :: proc() -> ^Gesture ---

    @(link_name = "gtk_gesture_swipe_get_velocity")
    gesture_swipe_get_velocity :: proc(gesture: ^GestureSwipe, velocity_x: ^f64, velocity_y: ^f64) -> glib.boolean ---

    @(link_name = "gtk_gesture_zoom_get_type")
    gesture_zoom_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gesture_zoom_new")
    gesture_zoom_new :: proc() -> ^Gesture ---

    @(link_name = "gtk_gesture_zoom_get_scale_delta")
    gesture_zoom_get_scale_delta :: proc(gesture: ^GestureZoom) -> f64 ---

    @(link_name = "gtk_gl_area_get_type")
    gl_area_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_gl_area_new")
    gl_area_new :: proc() -> ^Widget ---

    @(link_name = "gtk_gl_area_set_allowed_apis")
    gl_area_set_allowed_apis :: proc(area: ^GLArea, apis: GLAPI) ---

    @(link_name = "gtk_gl_area_get_allowed_apis")
    gl_area_get_allowed_apis :: proc(area: ^GLArea) -> GLAPI ---

    @(link_name = "gtk_gl_area_get_api")
    gl_area_get_api :: proc(area: ^GLArea) -> GLAPI ---

    @(link_name = "gtk_gl_area_set_use_es")
    gl_area_set_use_es :: proc(area: ^GLArea, use_es: glib.boolean) ---

    @(link_name = "gtk_gl_area_get_use_es")
    gl_area_get_use_es :: proc(area: ^GLArea) -> glib.boolean ---

    @(link_name = "gtk_gl_area_set_required_version")
    gl_area_set_required_version :: proc(area: ^GLArea, major: i32, minor: i32) ---

    @(link_name = "gtk_gl_area_get_required_version")
    gl_area_get_required_version :: proc(area: ^GLArea, major: ^i32, minor: ^i32) ---

    @(link_name = "gtk_gl_area_get_has_depth_buffer")
    gl_area_get_has_depth_buffer :: proc(area: ^GLArea) -> glib.boolean ---

    @(link_name = "gtk_gl_area_set_has_depth_buffer")
    gl_area_set_has_depth_buffer :: proc(area: ^GLArea, has_depth_buffer: glib.boolean) ---

    @(link_name = "gtk_gl_area_get_has_stencil_buffer")
    gl_area_get_has_stencil_buffer :: proc(area: ^GLArea) -> glib.boolean ---

    @(link_name = "gtk_gl_area_set_has_stencil_buffer")
    gl_area_set_has_stencil_buffer :: proc(area: ^GLArea, has_stencil_buffer: glib.boolean) ---

    @(link_name = "gtk_gl_area_get_auto_render")
    gl_area_get_auto_render :: proc(area: ^GLArea) -> glib.boolean ---

    @(link_name = "gtk_gl_area_set_auto_render")
    gl_area_set_auto_render :: proc(area: ^GLArea, auto_render: glib.boolean) ---

    @(link_name = "gtk_gl_area_queue_render")
    gl_area_queue_render :: proc(area: ^GLArea) ---

    @(link_name = "gtk_gl_area_get_context")
    gl_area_get_context :: proc(area: ^GLArea) -> ^GLContext ---

    @(link_name = "gtk_gl_area_make_current")
    gl_area_make_current :: proc(area: ^GLArea) ---

    @(link_name = "gtk_gl_area_attach_buffers")
    gl_area_attach_buffers :: proc(area: ^GLArea) ---

    @(link_name = "gtk_gl_area_set_error")
    gl_area_set_error :: proc(area: ^GLArea, error: ^glib.Error) ---

    @(link_name = "gtk_gl_area_get_error")
    gl_area_get_error :: proc(area: ^GLArea) -> ^glib.Error ---

    @(link_name = "gtk_grid_get_type")
    grid_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_grid_new")
    grid_new :: proc() -> ^Widget ---

    @(link_name = "gtk_grid_attach")
    grid_attach :: proc(grid: ^Grid, child: ^Widget, column: i32, row: i32, width: i32, height: i32) ---

    @(link_name = "gtk_grid_attach_next_to")
    grid_attach_next_to :: proc(grid: ^Grid, child: ^Widget, sibling: ^Widget, side: PositionType, width: i32, height: i32) ---

    @(link_name = "gtk_grid_get_child_at")
    grid_get_child_at :: proc(grid: ^Grid, column: i32, row: i32) -> ^Widget ---

    @(link_name = "gtk_grid_remove")
    grid_remove :: proc(grid: ^Grid, child: ^Widget) ---

    @(link_name = "gtk_grid_insert_row")
    grid_insert_row :: proc(grid: ^Grid, position: i32) ---

    @(link_name = "gtk_grid_insert_column")
    grid_insert_column :: proc(grid: ^Grid, position: i32) ---

    @(link_name = "gtk_grid_remove_row")
    grid_remove_row :: proc(grid: ^Grid, position: i32) ---

    @(link_name = "gtk_grid_remove_column")
    grid_remove_column :: proc(grid: ^Grid, position: i32) ---

    @(link_name = "gtk_grid_insert_next_to")
    grid_insert_next_to :: proc(grid: ^Grid, sibling: ^Widget, side: PositionType) ---

    @(link_name = "gtk_grid_set_row_homogeneous")
    grid_set_row_homogeneous :: proc(grid: ^Grid, homogeneous: glib.boolean) ---

    @(link_name = "gtk_grid_get_row_homogeneous")
    grid_get_row_homogeneous :: proc(grid: ^Grid) -> glib.boolean ---

    @(link_name = "gtk_grid_set_row_spacing")
    grid_set_row_spacing :: proc(grid: ^Grid, spacing: glib.uint_) ---

    @(link_name = "gtk_grid_get_row_spacing")
    grid_get_row_spacing :: proc(grid: ^Grid) -> glib.uint_ ---

    @(link_name = "gtk_grid_set_column_homogeneous")
    grid_set_column_homogeneous :: proc(grid: ^Grid, homogeneous: glib.boolean) ---

    @(link_name = "gtk_grid_get_column_homogeneous")
    grid_get_column_homogeneous :: proc(grid: ^Grid) -> glib.boolean ---

    @(link_name = "gtk_grid_set_column_spacing")
    grid_set_column_spacing :: proc(grid: ^Grid, spacing: glib.uint_) ---

    @(link_name = "gtk_grid_get_column_spacing")
    grid_get_column_spacing :: proc(grid: ^Grid) -> glib.uint_ ---

    @(link_name = "gtk_grid_set_row_baseline_position")
    grid_set_row_baseline_position :: proc(grid: ^Grid, row: i32, pos: BaselinePosition) ---

    @(link_name = "gtk_grid_get_row_baseline_position")
    grid_get_row_baseline_position :: proc(grid: ^Grid, row: i32) -> BaselinePosition ---

    @(link_name = "gtk_grid_set_baseline_row")
    grid_set_baseline_row :: proc(grid: ^Grid, row: i32) ---

    @(link_name = "gtk_grid_get_baseline_row")
    grid_get_baseline_row :: proc(grid: ^Grid) -> i32 ---

    @(link_name = "gtk_grid_query_child")
    grid_query_child :: proc(grid: ^Grid, child: ^Widget, column: ^i32, row: ^i32, width: ^i32, height: ^i32) ---

    @(link_name = "gtk_grid_layout_get_type")
    grid_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_grid_layout_new")
    grid_layout_new :: proc() -> ^LayoutManager ---

    @(link_name = "gtk_grid_layout_set_row_homogeneous")
    grid_layout_set_row_homogeneous :: proc(grid: ^GridLayout, homogeneous: glib.boolean) ---

    @(link_name = "gtk_grid_layout_get_row_homogeneous")
    grid_layout_get_row_homogeneous :: proc(grid: ^GridLayout) -> glib.boolean ---

    @(link_name = "gtk_grid_layout_set_row_spacing")
    grid_layout_set_row_spacing :: proc(grid: ^GridLayout, spacing: glib.uint_) ---

    @(link_name = "gtk_grid_layout_get_row_spacing")
    grid_layout_get_row_spacing :: proc(grid: ^GridLayout) -> glib.uint_ ---

    @(link_name = "gtk_grid_layout_set_column_homogeneous")
    grid_layout_set_column_homogeneous :: proc(grid: ^GridLayout, homogeneous: glib.boolean) ---

    @(link_name = "gtk_grid_layout_get_column_homogeneous")
    grid_layout_get_column_homogeneous :: proc(grid: ^GridLayout) -> glib.boolean ---

    @(link_name = "gtk_grid_layout_set_column_spacing")
    grid_layout_set_column_spacing :: proc(grid: ^GridLayout, spacing: glib.uint_) ---

    @(link_name = "gtk_grid_layout_get_column_spacing")
    grid_layout_get_column_spacing :: proc(grid: ^GridLayout) -> glib.uint_ ---

    @(link_name = "gtk_grid_layout_set_row_baseline_position")
    grid_layout_set_row_baseline_position :: proc(grid: ^GridLayout, row: i32, pos: BaselinePosition) ---

    @(link_name = "gtk_grid_layout_get_row_baseline_position")
    grid_layout_get_row_baseline_position :: proc(grid: ^GridLayout, row: i32) -> BaselinePosition ---

    @(link_name = "gtk_grid_layout_set_baseline_row")
    grid_layout_set_baseline_row :: proc(grid: ^GridLayout, row: i32) ---

    @(link_name = "gtk_grid_layout_get_baseline_row")
    grid_layout_get_baseline_row :: proc(grid: ^GridLayout) -> i32 ---

    @(link_name = "gtk_grid_layout_child_get_type")
    grid_layout_child_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_grid_layout_child_set_row")
    grid_layout_child_set_row :: proc(child: ^GridLayoutChild, row: i32) ---

    @(link_name = "gtk_grid_layout_child_get_row")
    grid_layout_child_get_row :: proc(child: ^GridLayoutChild) -> i32 ---

    @(link_name = "gtk_grid_layout_child_set_column")
    grid_layout_child_set_column :: proc(child: ^GridLayoutChild, column: i32) ---

    @(link_name = "gtk_grid_layout_child_get_column")
    grid_layout_child_get_column :: proc(child: ^GridLayoutChild) -> i32 ---

    @(link_name = "gtk_grid_layout_child_set_column_span")
    grid_layout_child_set_column_span :: proc(child: ^GridLayoutChild, span: i32) ---

    @(link_name = "gtk_grid_layout_child_get_column_span")
    grid_layout_child_get_column_span :: proc(child: ^GridLayoutChild) -> i32 ---

    @(link_name = "gtk_grid_layout_child_set_row_span")
    grid_layout_child_set_row_span :: proc(child: ^GridLayoutChild, span: i32) ---

    @(link_name = "gtk_grid_layout_child_get_row_span")
    grid_layout_child_get_row_span :: proc(child: ^GridLayoutChild) -> i32 ---

    @(link_name = "gtk_list_base_get_type")
    list_base_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_grid_view_get_type")
    grid_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_grid_view_new")
    grid_view_new :: proc(model: ^SelectionModel, factory: ^ListItemFactory) -> ^Widget ---

    @(link_name = "gtk_grid_view_get_model")
    grid_view_get_model :: proc(self: ^GridView) -> ^SelectionModel ---

    @(link_name = "gtk_grid_view_set_model")
    grid_view_set_model :: proc(self: ^GridView, model: ^SelectionModel) ---

    @(link_name = "gtk_grid_view_set_factory")
    grid_view_set_factory :: proc(self: ^GridView, factory: ^ListItemFactory) ---

    @(link_name = "gtk_grid_view_get_factory")
    grid_view_get_factory :: proc(self: ^GridView) -> ^ListItemFactory ---

    @(link_name = "gtk_grid_view_get_min_columns")
    grid_view_get_min_columns :: proc(self: ^GridView) -> glib.uint_ ---

    @(link_name = "gtk_grid_view_set_min_columns")
    grid_view_set_min_columns :: proc(self: ^GridView, min_columns: glib.uint_) ---

    @(link_name = "gtk_grid_view_get_max_columns")
    grid_view_get_max_columns :: proc(self: ^GridView) -> glib.uint_ ---

    @(link_name = "gtk_grid_view_set_max_columns")
    grid_view_set_max_columns :: proc(self: ^GridView, max_columns: glib.uint_) ---

    @(link_name = "gtk_grid_view_set_enable_rubberband")
    grid_view_set_enable_rubberband :: proc(self: ^GridView, enable_rubberband: glib.boolean) ---

    @(link_name = "gtk_grid_view_get_enable_rubberband")
    grid_view_get_enable_rubberband :: proc(self: ^GridView) -> glib.boolean ---

    @(link_name = "gtk_grid_view_set_tab_behavior")
    grid_view_set_tab_behavior :: proc(self: ^GridView, tab_behavior: ListTabBehavior) ---

    @(link_name = "gtk_grid_view_get_tab_behavior")
    grid_view_get_tab_behavior :: proc(self: ^GridView) -> ListTabBehavior ---

    @(link_name = "gtk_grid_view_set_single_click_activate")
    grid_view_set_single_click_activate :: proc(self: ^GridView, single_click_activate: glib.boolean) ---

    @(link_name = "gtk_grid_view_get_single_click_activate")
    grid_view_get_single_click_activate :: proc(self: ^GridView) -> glib.boolean ---

    @(link_name = "gtk_grid_view_scroll_to")
    grid_view_scroll_to :: proc(self: ^GridView, pos: glib.uint_, flags: ListScrollFlags, scroll: ^ScrollInfo) ---

    @(link_name = "gtk_header_bar_get_type")
    header_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_header_bar_new")
    header_bar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_header_bar_set_title_widget")
    header_bar_set_title_widget :: proc(bar: ^HeaderBar, title_widget: ^Widget) ---

    @(link_name = "gtk_header_bar_get_title_widget")
    header_bar_get_title_widget :: proc(bar: ^HeaderBar) -> ^Widget ---

    @(link_name = "gtk_header_bar_pack_start")
    header_bar_pack_start :: proc(bar: ^HeaderBar, child: ^Widget) ---

    @(link_name = "gtk_header_bar_pack_end")
    header_bar_pack_end :: proc(bar: ^HeaderBar, child: ^Widget) ---

    @(link_name = "gtk_header_bar_remove")
    header_bar_remove :: proc(bar: ^HeaderBar, child: ^Widget) ---

    @(link_name = "gtk_header_bar_get_show_title_buttons")
    header_bar_get_show_title_buttons :: proc(bar: ^HeaderBar) -> glib.boolean ---

    @(link_name = "gtk_header_bar_set_show_title_buttons")
    header_bar_set_show_title_buttons :: proc(bar: ^HeaderBar, setting: glib.boolean) ---

    @(link_name = "gtk_header_bar_set_decoration_layout")
    header_bar_set_decoration_layout :: proc(bar: ^HeaderBar, layout: cstring) ---

    @(link_name = "gtk_header_bar_get_decoration_layout")
    header_bar_get_decoration_layout :: proc(bar: ^HeaderBar) -> cstring ---

    @(link_name = "gtk_icon_theme_error_quark")
    icon_theme_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_icon_theme_get_type")
    icon_theme_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_icon_theme_new")
    icon_theme_new :: proc() -> ^IconTheme ---

    @(link_name = "gtk_icon_theme_get_for_display")
    icon_theme_get_for_display :: proc(display: ^Display) -> ^IconTheme ---

    @(link_name = "gtk_icon_theme_get_display")
    icon_theme_get_display :: proc(self: ^IconTheme) -> ^Display ---

    @(link_name = "gtk_icon_theme_set_search_path")
    icon_theme_set_search_path :: proc(self: ^IconTheme, path: ^cstring) ---

    @(link_name = "gtk_icon_theme_get_search_path")
    icon_theme_get_search_path :: proc(self: ^IconTheme) -> ^cstring ---

    @(link_name = "gtk_icon_theme_add_search_path")
    icon_theme_add_search_path :: proc(self: ^IconTheme, path: cstring) ---

    @(link_name = "gtk_icon_theme_set_resource_path")
    icon_theme_set_resource_path :: proc(self: ^IconTheme, path: ^cstring) ---

    @(link_name = "gtk_icon_theme_get_resource_path")
    icon_theme_get_resource_path :: proc(self: ^IconTheme) -> ^cstring ---

    @(link_name = "gtk_icon_theme_add_resource_path")
    icon_theme_add_resource_path :: proc(self: ^IconTheme, path: cstring) ---

    @(link_name = "gtk_icon_theme_set_theme_name")
    icon_theme_set_theme_name :: proc(self: ^IconTheme, theme_name: cstring) ---

    @(link_name = "gtk_icon_theme_get_theme_name")
    icon_theme_get_theme_name :: proc(self: ^IconTheme) -> cstring ---

    @(link_name = "gtk_icon_theme_has_icon")
    icon_theme_has_icon :: proc(self: ^IconTheme, icon_name: cstring) -> glib.boolean ---

    @(link_name = "gtk_icon_theme_has_gicon")
    icon_theme_has_gicon :: proc(self: ^IconTheme, gicon: ^gio.Icon) -> glib.boolean ---

    @(link_name = "gtk_icon_theme_get_icon_sizes")
    icon_theme_get_icon_sizes :: proc(self: ^IconTheme, icon_name: cstring) -> ^i32 ---

    @(link_name = "gtk_icon_theme_lookup_icon")
    icon_theme_lookup_icon :: proc(self: ^IconTheme, icon_name: cstring, fallbacks: [^]cstring, size_p: i32, scale: i32, direction: TextDirection, flags: IconLookupFlags) -> ^IconPaintable ---

    @(link_name = "gtk_icon_theme_lookup_by_gicon")
    icon_theme_lookup_by_gicon :: proc(self: ^IconTheme, icon: ^gio.Icon, size_p: i32, scale: i32, direction: TextDirection, flags: IconLookupFlags) -> ^IconPaintable ---

    @(link_name = "gtk_icon_paintable_new_for_file")
    icon_paintable_new_for_file :: proc(file: ^gio.File, size_p: i32, scale: i32) -> ^IconPaintable ---

    @(link_name = "gtk_icon_theme_get_icon_names")
    icon_theme_get_icon_names :: proc(self: ^IconTheme) -> ^cstring ---

    @(link_name = "gtk_icon_paintable_get_type")
    icon_paintable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_icon_paintable_get_file")
    icon_paintable_get_file :: proc(self: ^IconPaintable) -> ^gio.File ---

    @(link_name = "gtk_icon_paintable_get_icon_name")
    icon_paintable_get_icon_name :: proc(self: ^IconPaintable) -> cstring ---

    @(link_name = "gtk_icon_paintable_is_symbolic")
    icon_paintable_is_symbolic :: proc(self: ^IconPaintable) -> glib.boolean ---

    @(link_name = "gtk_tooltip_get_type")
    tooltip_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tooltip_set_markup")
    tooltip_set_markup :: proc(tooltip: ^Tooltip, markup: cstring) ---

    @(link_name = "gtk_tooltip_set_text")
    tooltip_set_text :: proc(tooltip: ^Tooltip, text: cstring) ---

    @(link_name = "gtk_tooltip_set_icon")
    tooltip_set_icon :: proc(tooltip: ^Tooltip, paintable: ^Paintable) ---

    @(link_name = "gtk_tooltip_set_icon_from_icon_name")
    tooltip_set_icon_from_icon_name :: proc(tooltip: ^Tooltip, icon_name: cstring) ---

    @(link_name = "gtk_tooltip_set_icon_from_gicon")
    tooltip_set_icon_from_gicon :: proc(tooltip: ^Tooltip, gicon: ^gio.Icon) ---

    @(link_name = "gtk_tooltip_set_custom")
    tooltip_set_custom :: proc(tooltip: ^Tooltip, custom_widget: ^Widget) ---

    @(link_name = "gtk_tooltip_set_tip_area")
    tooltip_set_tip_area :: proc(tooltip: ^Tooltip, rect: ^Rectangle) ---

    @(link_name = "gtk_icon_view_get_type")
    icon_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_icon_view_new")
    icon_view_new :: proc() -> ^Widget ---

    @(link_name = "gtk_icon_view_new_with_area")
    icon_view_new_with_area :: proc(area: ^CellArea) -> ^Widget ---

    @(link_name = "gtk_icon_view_new_with_model")
    icon_view_new_with_model :: proc(model: ^TreeModel) -> ^Widget ---

    @(link_name = "gtk_icon_view_set_model")
    icon_view_set_model :: proc(icon_view: ^IconView, model: ^TreeModel) ---

    @(link_name = "gtk_icon_view_get_model")
    icon_view_get_model :: proc(icon_view: ^IconView) -> ^TreeModel ---

    @(link_name = "gtk_icon_view_set_text_column")
    icon_view_set_text_column :: proc(icon_view: ^IconView, column: i32) ---

    @(link_name = "gtk_icon_view_get_text_column")
    icon_view_get_text_column :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_markup_column")
    icon_view_set_markup_column :: proc(icon_view: ^IconView, column: i32) ---

    @(link_name = "gtk_icon_view_get_markup_column")
    icon_view_get_markup_column :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_pixbuf_column")
    icon_view_set_pixbuf_column :: proc(icon_view: ^IconView, column: i32) ---

    @(link_name = "gtk_icon_view_get_pixbuf_column")
    icon_view_get_pixbuf_column :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_item_orientation")
    icon_view_set_item_orientation :: proc(icon_view: ^IconView, orientation: Orientation) ---

    @(link_name = "gtk_icon_view_get_item_orientation")
    icon_view_get_item_orientation :: proc(icon_view: ^IconView) -> Orientation ---

    @(link_name = "gtk_icon_view_set_columns")
    icon_view_set_columns :: proc(icon_view: ^IconView, columns: i32) ---

    @(link_name = "gtk_icon_view_get_columns")
    icon_view_get_columns :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_item_width")
    icon_view_set_item_width :: proc(icon_view: ^IconView, item_width: i32) ---

    @(link_name = "gtk_icon_view_get_item_width")
    icon_view_get_item_width :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_spacing")
    icon_view_set_spacing :: proc(icon_view: ^IconView, spacing: i32) ---

    @(link_name = "gtk_icon_view_get_spacing")
    icon_view_get_spacing :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_row_spacing")
    icon_view_set_row_spacing :: proc(icon_view: ^IconView, row_spacing: i32) ---

    @(link_name = "gtk_icon_view_get_row_spacing")
    icon_view_get_row_spacing :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_column_spacing")
    icon_view_set_column_spacing :: proc(icon_view: ^IconView, column_spacing: i32) ---

    @(link_name = "gtk_icon_view_get_column_spacing")
    icon_view_get_column_spacing :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_margin")
    icon_view_set_margin :: proc(icon_view: ^IconView, margin: i32) ---

    @(link_name = "gtk_icon_view_get_margin")
    icon_view_get_margin :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_set_item_padding")
    icon_view_set_item_padding :: proc(icon_view: ^IconView, item_padding: i32) ---

    @(link_name = "gtk_icon_view_get_item_padding")
    icon_view_get_item_padding :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_icon_view_get_path_at_pos")
    icon_view_get_path_at_pos :: proc(icon_view: ^IconView, x: i32, y: i32) -> ^TreePath ---

    @(link_name = "gtk_icon_view_get_item_at_pos")
    icon_view_get_item_at_pos :: proc(icon_view: ^IconView, x: i32, y: i32, path: ^^TreePath, cell: ^^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_icon_view_get_visible_range")
    icon_view_get_visible_range :: proc(icon_view: ^IconView, start_path: ^^TreePath, end_path: ^^TreePath) -> glib.boolean ---

    @(link_name = "gtk_icon_view_set_activate_on_single_click")
    icon_view_set_activate_on_single_click :: proc(icon_view: ^IconView, single: glib.boolean) ---

    @(link_name = "gtk_icon_view_get_activate_on_single_click")
    icon_view_get_activate_on_single_click :: proc(icon_view: ^IconView) -> glib.boolean ---

    @(link_name = "gtk_icon_view_selected_foreach")
    icon_view_selected_foreach :: proc(icon_view: ^IconView, func: IconViewForeachFunc, data: glib.pointer) ---

    @(link_name = "gtk_icon_view_set_selection_mode")
    icon_view_set_selection_mode :: proc(icon_view: ^IconView, mode: SelectionMode) ---

    @(link_name = "gtk_icon_view_get_selection_mode")
    icon_view_get_selection_mode :: proc(icon_view: ^IconView) -> SelectionMode ---

    @(link_name = "gtk_icon_view_select_path")
    icon_view_select_path :: proc(icon_view: ^IconView, path: ^TreePath) ---

    @(link_name = "gtk_icon_view_unselect_path")
    icon_view_unselect_path :: proc(icon_view: ^IconView, path: ^TreePath) ---

    @(link_name = "gtk_icon_view_path_is_selected")
    icon_view_path_is_selected :: proc(icon_view: ^IconView, path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_icon_view_get_item_row")
    icon_view_get_item_row :: proc(icon_view: ^IconView, path: ^TreePath) -> i32 ---

    @(link_name = "gtk_icon_view_get_item_column")
    icon_view_get_item_column :: proc(icon_view: ^IconView, path: ^TreePath) -> i32 ---

    @(link_name = "gtk_icon_view_get_selected_items")
    icon_view_get_selected_items :: proc(icon_view: ^IconView) -> ^glib.List ---

    @(link_name = "gtk_icon_view_select_all")
    icon_view_select_all :: proc(icon_view: ^IconView) ---

    @(link_name = "gtk_icon_view_unselect_all")
    icon_view_unselect_all :: proc(icon_view: ^IconView) ---

    @(link_name = "gtk_icon_view_item_activated")
    icon_view_item_activated :: proc(icon_view: ^IconView, path: ^TreePath) ---

    @(link_name = "gtk_icon_view_set_cursor")
    icon_view_set_cursor :: proc(icon_view: ^IconView, path: ^TreePath, cell: ^CellRenderer, start_editing: glib.boolean) ---

    @(link_name = "gtk_icon_view_get_cursor")
    icon_view_get_cursor :: proc(icon_view: ^IconView, path: ^^TreePath, cell: ^^CellRenderer) -> glib.boolean ---

    @(link_name = "gtk_icon_view_scroll_to_path")
    icon_view_scroll_to_path :: proc(icon_view: ^IconView, path: ^TreePath, use_align: glib.boolean, row_align: f32, col_align: f32) ---

    @(link_name = "gtk_icon_view_enable_model_drag_source")
    icon_view_enable_model_drag_source :: proc(icon_view: ^IconView, start_button_mask: ModifierType, formats: [^]ContentFormats, actions: DragAction) ---

    @(link_name = "gtk_icon_view_enable_model_drag_dest")
    icon_view_enable_model_drag_dest :: proc(icon_view: ^IconView, formats: [^]ContentFormats, actions: DragAction) ---

    @(link_name = "gtk_icon_view_unset_model_drag_source")
    icon_view_unset_model_drag_source :: proc(icon_view: ^IconView) ---

    @(link_name = "gtk_icon_view_unset_model_drag_dest")
    icon_view_unset_model_drag_dest :: proc(icon_view: ^IconView) ---

    @(link_name = "gtk_icon_view_set_reorderable")
    icon_view_set_reorderable :: proc(icon_view: ^IconView, reorderable: glib.boolean) ---

    @(link_name = "gtk_icon_view_get_reorderable")
    icon_view_get_reorderable :: proc(icon_view: ^IconView) -> glib.boolean ---

    @(link_name = "gtk_icon_view_set_drag_dest_item")
    icon_view_set_drag_dest_item :: proc(icon_view: ^IconView, path: ^TreePath, pos: IconViewDropPosition) ---

    @(link_name = "gtk_icon_view_get_drag_dest_item")
    icon_view_get_drag_dest_item :: proc(icon_view: ^IconView, path: ^^TreePath, pos: [^]IconViewDropPosition) ---

    @(link_name = "gtk_icon_view_get_dest_item_at_pos")
    icon_view_get_dest_item_at_pos :: proc(icon_view: ^IconView, drag_x: i32, drag_y: i32, path: ^^TreePath, pos: [^]IconViewDropPosition) -> glib.boolean ---

    @(link_name = "gtk_icon_view_create_drag_icon")
    icon_view_create_drag_icon :: proc(icon_view: ^IconView, path: ^TreePath) -> ^Paintable ---

    @(link_name = "gtk_icon_view_get_cell_rect")
    icon_view_get_cell_rect :: proc(icon_view: ^IconView, path: ^TreePath, cell: ^CellRenderer, rect: ^Rectangle) -> glib.boolean ---

    @(link_name = "gtk_icon_view_set_tooltip_item")
    icon_view_set_tooltip_item :: proc(icon_view: ^IconView, tooltip: ^Tooltip, path: ^TreePath) ---

    @(link_name = "gtk_icon_view_set_tooltip_cell")
    icon_view_set_tooltip_cell :: proc(icon_view: ^IconView, tooltip: ^Tooltip, path: ^TreePath, cell: ^CellRenderer) ---

    @(link_name = "gtk_icon_view_get_tooltip_context")
    icon_view_get_tooltip_context :: proc(icon_view: ^IconView, x: i32, y: i32, keyboard_tip: glib.boolean, model: ^^TreeModel, path: ^^TreePath, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_icon_view_set_tooltip_column")
    icon_view_set_tooltip_column :: proc(icon_view: ^IconView, column: i32) ---

    @(link_name = "gtk_icon_view_get_tooltip_column")
    icon_view_get_tooltip_column :: proc(icon_view: ^IconView) -> i32 ---

    @(link_name = "gtk_im_context_simple_get_type")
    im_context_simple_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_im_context_simple_new")
    im_context_simple_new :: proc() -> ^IMContext ---

    @(link_name = "gtk_im_context_simple_add_table")
    im_context_simple_add_table :: proc(context_simple: ^IMContextSimple, data: ^glib.uint16, max_seq_len: i32, n_seqs: i32) ---

    @(link_name = "gtk_im_context_simple_add_compose_file")
    im_context_simple_add_compose_file :: proc(context_simple: ^IMContextSimple, compose_file: cstring) ---

    @(link_name = "gtk_im_multicontext_get_type")
    im_multicontext_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_im_multicontext_new")
    im_multicontext_new :: proc() -> ^IMContext ---

    @(link_name = "gtk_im_multicontext_get_context_id")
    im_multicontext_get_context_id :: proc(context_p: ^IMMulticontext) -> cstring ---

    @(link_name = "gtk_im_multicontext_set_context_id")
    im_multicontext_set_context_id :: proc(context_p: ^IMMulticontext, context_id: cstring) ---

    @(link_name = "gtk_info_bar_get_type")
    info_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_info_bar_new")
    info_bar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_info_bar_new_with_buttons")
    info_bar_new_with_buttons :: proc(first_button_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---

    @(link_name = "gtk_info_bar_add_action_widget")
    info_bar_add_action_widget :: proc(info_bar: ^InfoBar, child: ^Widget, response_id: i32) ---

    @(link_name = "gtk_info_bar_remove_action_widget")
    info_bar_remove_action_widget :: proc(info_bar: ^InfoBar, widget: ^Widget) ---

    @(link_name = "gtk_info_bar_add_button")
    info_bar_add_button :: proc(info_bar: ^InfoBar, button_text: cstring, response_id: i32) -> ^Widget ---

    @(link_name = "gtk_info_bar_add_buttons")
    info_bar_add_buttons :: proc(info_bar: ^InfoBar, first_button_text: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_info_bar_add_child")
    info_bar_add_child :: proc(info_bar: ^InfoBar, widget: ^Widget) ---

    @(link_name = "gtk_info_bar_remove_child")
    info_bar_remove_child :: proc(info_bar: ^InfoBar, widget: ^Widget) ---

    @(link_name = "gtk_info_bar_set_response_sensitive")
    info_bar_set_response_sensitive :: proc(info_bar: ^InfoBar, response_id: i32, setting: glib.boolean) ---

    @(link_name = "gtk_info_bar_set_default_response")
    info_bar_set_default_response :: proc(info_bar: ^InfoBar, response_id: i32) ---

    @(link_name = "gtk_info_bar_response")
    info_bar_response :: proc(info_bar: ^InfoBar, response_id: i32) ---

    @(link_name = "gtk_info_bar_set_message_type")
    info_bar_set_message_type :: proc(info_bar: ^InfoBar, message_type: MessageType) ---

    @(link_name = "gtk_info_bar_get_message_type")
    info_bar_get_message_type :: proc(info_bar: ^InfoBar) -> MessageType ---

    @(link_name = "gtk_info_bar_set_show_close_button")
    info_bar_set_show_close_button :: proc(info_bar: ^InfoBar, setting: glib.boolean) ---

    @(link_name = "gtk_info_bar_get_show_close_button")
    info_bar_get_show_close_button :: proc(info_bar: ^InfoBar) -> glib.boolean ---

    @(link_name = "gtk_info_bar_set_revealed")
    info_bar_set_revealed :: proc(info_bar: ^InfoBar, revealed: glib.boolean) ---

    @(link_name = "gtk_info_bar_get_revealed")
    info_bar_get_revealed :: proc(info_bar: ^InfoBar) -> glib.boolean ---

    @(link_name = "gtk_inscription_get_type")
    inscription_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_inscription_new")
    inscription_new :: proc(text: cstring) -> ^Widget ---

    @(link_name = "gtk_inscription_get_text")
    inscription_get_text :: proc(self: ^Inscription) -> cstring ---

    @(link_name = "gtk_inscription_set_text")
    inscription_set_text :: proc(self: ^Inscription, text: cstring) ---

    @(link_name = "gtk_inscription_get_attributes")
    inscription_get_attributes :: proc(self: ^Inscription) -> ^pango.AttrList ---

    @(link_name = "gtk_inscription_set_attributes")
    inscription_set_attributes :: proc(self: ^Inscription, attrs: [^]pango.AttrList) ---

    @(link_name = "gtk_inscription_set_markup")
    inscription_set_markup :: proc(self: ^Inscription, markup: cstring) ---

    @(link_name = "gtk_inscription_get_text_overflow")
    inscription_get_text_overflow :: proc(self: ^Inscription) -> InscriptionOverflow ---

    @(link_name = "gtk_inscription_set_text_overflow")
    inscription_set_text_overflow :: proc(self: ^Inscription, overflow: InscriptionOverflow) ---

    @(link_name = "gtk_inscription_get_wrap_mode")
    inscription_get_wrap_mode :: proc(self: ^Inscription) -> pango.WrapMode ---

    @(link_name = "gtk_inscription_set_wrap_mode")
    inscription_set_wrap_mode :: proc(self: ^Inscription, wrap_mode: pango.WrapMode) ---

    @(link_name = "gtk_inscription_get_min_chars")
    inscription_get_min_chars :: proc(self: ^Inscription) -> glib.uint_ ---

    @(link_name = "gtk_inscription_set_min_chars")
    inscription_set_min_chars :: proc(self: ^Inscription, min_chars: glib.uint_) ---

    @(link_name = "gtk_inscription_get_nat_chars")
    inscription_get_nat_chars :: proc(self: ^Inscription) -> glib.uint_ ---

    @(link_name = "gtk_inscription_set_nat_chars")
    inscription_set_nat_chars :: proc(self: ^Inscription, nat_chars: glib.uint_) ---

    @(link_name = "gtk_inscription_get_min_lines")
    inscription_get_min_lines :: proc(self: ^Inscription) -> glib.uint_ ---

    @(link_name = "gtk_inscription_set_min_lines")
    inscription_set_min_lines :: proc(self: ^Inscription, min_lines: glib.uint_) ---

    @(link_name = "gtk_inscription_get_nat_lines")
    inscription_get_nat_lines :: proc(self: ^Inscription) -> glib.uint_ ---

    @(link_name = "gtk_inscription_set_nat_lines")
    inscription_set_nat_lines :: proc(self: ^Inscription, nat_lines: glib.uint_) ---

    @(link_name = "gtk_inscription_get_xalign")
    inscription_get_xalign :: proc(self: ^Inscription) -> f32 ---

    @(link_name = "gtk_inscription_set_xalign")
    inscription_set_xalign :: proc(self: ^Inscription, xalign: f32) ---

    @(link_name = "gtk_inscription_get_yalign")
    inscription_get_yalign :: proc(self: ^Inscription) -> f32 ---

    @(link_name = "gtk_inscription_set_yalign")
    inscription_set_yalign :: proc(self: ^Inscription, yalign: f32) ---

    @(link_name = "gtk_label_get_type")
    label_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_label_new")
    label_new :: proc(str: cstring) -> ^Widget ---

    @(link_name = "gtk_label_new_with_mnemonic")
    label_new_with_mnemonic :: proc(str: cstring) -> ^Widget ---

    @(link_name = "gtk_label_set_text")
    label_set_text :: proc(self: ^Label, str: cstring) ---

    @(link_name = "gtk_label_get_text")
    label_get_text :: proc(self: ^Label) -> cstring ---

    @(link_name = "gtk_label_set_attributes")
    label_set_attributes :: proc(self: ^Label, attrs: [^]pango.AttrList) ---

    @(link_name = "gtk_label_get_attributes")
    label_get_attributes :: proc(self: ^Label) -> ^pango.AttrList ---

    @(link_name = "gtk_label_set_label")
    label_set_label :: proc(self: ^Label, str: cstring) ---

    @(link_name = "gtk_label_get_label")
    label_get_label :: proc(self: ^Label) -> cstring ---

    @(link_name = "gtk_label_set_markup")
    label_set_markup :: proc(self: ^Label, str: cstring) ---

    @(link_name = "gtk_label_set_use_markup")
    label_set_use_markup :: proc(self: ^Label, setting: glib.boolean) ---

    @(link_name = "gtk_label_get_use_markup")
    label_get_use_markup :: proc(self: ^Label) -> glib.boolean ---

    @(link_name = "gtk_label_set_use_underline")
    label_set_use_underline :: proc(self: ^Label, setting: glib.boolean) ---

    @(link_name = "gtk_label_get_use_underline")
    label_get_use_underline :: proc(self: ^Label) -> glib.boolean ---

    @(link_name = "gtk_label_set_markup_with_mnemonic")
    label_set_markup_with_mnemonic :: proc(self: ^Label, str: cstring) ---

    @(link_name = "gtk_label_get_mnemonic_keyval")
    label_get_mnemonic_keyval :: proc(self: ^Label) -> glib.uint_ ---

    @(link_name = "gtk_label_set_mnemonic_widget")
    label_set_mnemonic_widget :: proc(self: ^Label, widget: ^Widget) ---

    @(link_name = "gtk_label_get_mnemonic_widget")
    label_get_mnemonic_widget :: proc(self: ^Label) -> ^Widget ---

    @(link_name = "gtk_label_set_text_with_mnemonic")
    label_set_text_with_mnemonic :: proc(self: ^Label, str: cstring) ---

    @(link_name = "gtk_label_set_justify")
    label_set_justify :: proc(self: ^Label, jtype: Justification) ---

    @(link_name = "gtk_label_get_justify")
    label_get_justify :: proc(self: ^Label) -> Justification ---

    @(link_name = "gtk_label_set_ellipsize")
    label_set_ellipsize :: proc(self: ^Label, mode: pango.EllipsizeMode) ---

    @(link_name = "gtk_label_get_ellipsize")
    label_get_ellipsize :: proc(self: ^Label) -> pango.EllipsizeMode ---

    @(link_name = "gtk_label_set_width_chars")
    label_set_width_chars :: proc(self: ^Label, n_chars: i32) ---

    @(link_name = "gtk_label_get_width_chars")
    label_get_width_chars :: proc(self: ^Label) -> i32 ---

    @(link_name = "gtk_label_set_max_width_chars")
    label_set_max_width_chars :: proc(self: ^Label, n_chars: i32) ---

    @(link_name = "gtk_label_get_max_width_chars")
    label_get_max_width_chars :: proc(self: ^Label) -> i32 ---

    @(link_name = "gtk_label_set_lines")
    label_set_lines :: proc(self: ^Label, lines: i32) ---

    @(link_name = "gtk_label_get_lines")
    label_get_lines :: proc(self: ^Label) -> i32 ---

    @(link_name = "gtk_label_set_wrap")
    label_set_wrap :: proc(self: ^Label, wrap: glib.boolean) ---

    @(link_name = "gtk_label_get_wrap")
    label_get_wrap :: proc(self: ^Label) -> glib.boolean ---

    @(link_name = "gtk_label_set_wrap_mode")
    label_set_wrap_mode :: proc(self: ^Label, wrap_mode: pango.WrapMode) ---

    @(link_name = "gtk_label_get_wrap_mode")
    label_get_wrap_mode :: proc(self: ^Label) -> pango.WrapMode ---

    @(link_name = "gtk_label_set_natural_wrap_mode")
    label_set_natural_wrap_mode :: proc(self: ^Label, wrap_mode: NaturalWrapMode) ---

    @(link_name = "gtk_label_get_natural_wrap_mode")
    label_get_natural_wrap_mode :: proc(self: ^Label) -> NaturalWrapMode ---

    @(link_name = "gtk_label_set_selectable")
    label_set_selectable :: proc(self: ^Label, setting: glib.boolean) ---

    @(link_name = "gtk_label_get_selectable")
    label_get_selectable :: proc(self: ^Label) -> glib.boolean ---

    @(link_name = "gtk_label_select_region")
    label_select_region :: proc(self: ^Label, start_offset: i32, end_offset: i32) ---

    @(link_name = "gtk_label_get_selection_bounds")
    label_get_selection_bounds :: proc(self: ^Label, start: ^i32, end: ^i32) -> glib.boolean ---

    @(link_name = "gtk_label_get_layout")
    label_get_layout :: proc(self: ^Label) -> ^pango.Layout ---

    @(link_name = "gtk_label_get_layout_offsets")
    label_get_layout_offsets :: proc(self: ^Label, x: ^i32, y: ^i32) ---

    @(link_name = "gtk_label_set_single_line_mode")
    label_set_single_line_mode :: proc(self: ^Label, single_line_mode: glib.boolean) ---

    @(link_name = "gtk_label_get_single_line_mode")
    label_get_single_line_mode :: proc(self: ^Label) -> glib.boolean ---

    @(link_name = "gtk_label_get_current_uri")
    label_get_current_uri :: proc(self: ^Label) -> cstring ---

    @(link_name = "gtk_label_set_xalign")
    label_set_xalign :: proc(self: ^Label, xalign: f32) ---

    @(link_name = "gtk_label_get_xalign")
    label_get_xalign :: proc(self: ^Label) -> f32 ---

    @(link_name = "gtk_label_set_yalign")
    label_set_yalign :: proc(self: ^Label, yalign: f32) ---

    @(link_name = "gtk_label_get_yalign")
    label_get_yalign :: proc(self: ^Label) -> f32 ---

    @(link_name = "gtk_label_set_extra_menu")
    label_set_extra_menu :: proc(self: ^Label, model: ^gio.MenuModel) ---

    @(link_name = "gtk_label_get_extra_menu")
    label_get_extra_menu :: proc(self: ^Label) -> ^gio.MenuModel ---

    @(link_name = "gtk_label_set_tabs")
    label_set_tabs :: proc(self: ^Label, tabs: [^]pango.TabArray) ---

    @(link_name = "gtk_label_get_tabs")
    label_get_tabs :: proc(self: ^Label) -> ^pango.TabArray ---

    @(link_name = "gtk_level_bar_get_type")
    level_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_level_bar_new")
    level_bar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_level_bar_new_for_interval")
    level_bar_new_for_interval :: proc(min_value: f64, max_value: f64) -> ^Widget ---

    @(link_name = "gtk_level_bar_set_mode")
    level_bar_set_mode :: proc(self: ^LevelBar, mode: LevelBarMode) ---

    @(link_name = "gtk_level_bar_get_mode")
    level_bar_get_mode :: proc(self: ^LevelBar) -> LevelBarMode ---

    @(link_name = "gtk_level_bar_set_value")
    level_bar_set_value :: proc(self: ^LevelBar, value: f64) ---

    @(link_name = "gtk_level_bar_get_value")
    level_bar_get_value :: proc(self: ^LevelBar) -> f64 ---

    @(link_name = "gtk_level_bar_set_min_value")
    level_bar_set_min_value :: proc(self: ^LevelBar, value: f64) ---

    @(link_name = "gtk_level_bar_get_min_value")
    level_bar_get_min_value :: proc(self: ^LevelBar) -> f64 ---

    @(link_name = "gtk_level_bar_set_max_value")
    level_bar_set_max_value :: proc(self: ^LevelBar, value: f64) ---

    @(link_name = "gtk_level_bar_get_max_value")
    level_bar_get_max_value :: proc(self: ^LevelBar) -> f64 ---

    @(link_name = "gtk_level_bar_set_inverted")
    level_bar_set_inverted :: proc(self: ^LevelBar, inverted: glib.boolean) ---

    @(link_name = "gtk_level_bar_get_inverted")
    level_bar_get_inverted :: proc(self: ^LevelBar) -> glib.boolean ---

    @(link_name = "gtk_level_bar_add_offset_value")
    level_bar_add_offset_value :: proc(self: ^LevelBar, name: cstring, value: f64) ---

    @(link_name = "gtk_level_bar_remove_offset_value")
    level_bar_remove_offset_value :: proc(self: ^LevelBar, name: cstring) ---

    @(link_name = "gtk_level_bar_get_offset_value")
    level_bar_get_offset_value :: proc(self: ^LevelBar, name: cstring, value: ^f64) -> glib.boolean ---

    @(link_name = "gtk_link_button_get_type")
    link_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_link_button_new")
    link_button_new :: proc(uri: cstring) -> ^Widget ---

    @(link_name = "gtk_link_button_new_with_label")
    link_button_new_with_label :: proc(uri: cstring, label: cstring) -> ^Widget ---

    @(link_name = "gtk_link_button_get_uri")
    link_button_get_uri :: proc(link_button: ^LinkButton) -> cstring ---

    @(link_name = "gtk_link_button_set_uri")
    link_button_set_uri :: proc(link_button: ^LinkButton, uri: cstring) ---

    @(link_name = "gtk_link_button_get_visited")
    link_button_get_visited :: proc(link_button: ^LinkButton) -> glib.boolean ---

    @(link_name = "gtk_link_button_set_visited")
    link_button_set_visited :: proc(link_button: ^LinkButton, visited: glib.boolean) ---

    @(link_name = "gtk_list_box_row_get_type")
    list_box_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_list_box_row_new")
    list_box_row_new :: proc() -> ^Widget ---

    @(link_name = "gtk_list_box_row_set_child")
    list_box_row_set_child :: proc(row: ^ListBoxRow, child: ^Widget) ---

    @(link_name = "gtk_list_box_row_get_child")
    list_box_row_get_child :: proc(row: ^ListBoxRow) -> ^Widget ---

    @(link_name = "gtk_list_box_row_get_header")
    list_box_row_get_header :: proc(row: ^ListBoxRow) -> ^Widget ---

    @(link_name = "gtk_list_box_row_set_header")
    list_box_row_set_header :: proc(row: ^ListBoxRow, header: ^Widget) ---

    @(link_name = "gtk_list_box_row_get_index")
    list_box_row_get_index :: proc(row: ^ListBoxRow) -> i32 ---

    @(link_name = "gtk_list_box_row_changed")
    list_box_row_changed :: proc(row: ^ListBoxRow) ---

    @(link_name = "gtk_list_box_row_is_selected")
    list_box_row_is_selected :: proc(row: ^ListBoxRow) -> glib.boolean ---

    @(link_name = "gtk_list_box_row_set_selectable")
    list_box_row_set_selectable :: proc(row: ^ListBoxRow, selectable: glib.boolean) ---

    @(link_name = "gtk_list_box_row_get_selectable")
    list_box_row_get_selectable :: proc(row: ^ListBoxRow) -> glib.boolean ---

    @(link_name = "gtk_list_box_row_set_activatable")
    list_box_row_set_activatable :: proc(row: ^ListBoxRow, activatable: glib.boolean) ---

    @(link_name = "gtk_list_box_row_get_activatable")
    list_box_row_get_activatable :: proc(row: ^ListBoxRow) -> glib.boolean ---

    @(link_name = "gtk_list_box_get_type")
    list_box_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_list_box_prepend")
    list_box_prepend :: proc(box: ^ListBox, child: ^Widget) ---

    @(link_name = "gtk_list_box_append")
    list_box_append :: proc(box: ^ListBox, child: ^Widget) ---

    @(link_name = "gtk_list_box_insert")
    list_box_insert :: proc(box: ^ListBox, child: ^Widget, position: i32) ---

    @(link_name = "gtk_list_box_remove")
    list_box_remove :: proc(box: ^ListBox, child: ^Widget) ---

    @(link_name = "gtk_list_box_remove_all")
    list_box_remove_all :: proc(box: ^ListBox) ---

    @(link_name = "gtk_list_box_get_selected_row")
    list_box_get_selected_row :: proc(box: ^ListBox) -> ^ListBoxRow ---

    @(link_name = "gtk_list_box_get_row_at_index")
    list_box_get_row_at_index :: proc(box: ^ListBox, index_: i32) -> ^ListBoxRow ---

    @(link_name = "gtk_list_box_get_row_at_y")
    list_box_get_row_at_y :: proc(box: ^ListBox, y: i32) -> ^ListBoxRow ---

    @(link_name = "gtk_list_box_select_row")
    list_box_select_row :: proc(box: ^ListBox, row: ^ListBoxRow) ---

    @(link_name = "gtk_list_box_set_placeholder")
    list_box_set_placeholder :: proc(box: ^ListBox, placeholder: ^Widget) ---

    @(link_name = "gtk_list_box_set_adjustment")
    list_box_set_adjustment :: proc(box: ^ListBox, adjustment: ^Adjustment) ---

    @(link_name = "gtk_list_box_get_adjustment")
    list_box_get_adjustment :: proc(box: ^ListBox) -> ^Adjustment ---

    @(link_name = "gtk_list_box_selected_foreach")
    list_box_selected_foreach :: proc(box: ^ListBox, func: ListBoxForeachFunc, data: glib.pointer) ---

    @(link_name = "gtk_list_box_get_selected_rows")
    list_box_get_selected_rows :: proc(box: ^ListBox) -> ^glib.List ---

    @(link_name = "gtk_list_box_unselect_row")
    list_box_unselect_row :: proc(box: ^ListBox, row: ^ListBoxRow) ---

    @(link_name = "gtk_list_box_select_all")
    list_box_select_all :: proc(box: ^ListBox) ---

    @(link_name = "gtk_list_box_unselect_all")
    list_box_unselect_all :: proc(box: ^ListBox) ---

    @(link_name = "gtk_list_box_set_selection_mode")
    list_box_set_selection_mode :: proc(box: ^ListBox, mode: SelectionMode) ---

    @(link_name = "gtk_list_box_get_selection_mode")
    list_box_get_selection_mode :: proc(box: ^ListBox) -> SelectionMode ---

    @(link_name = "gtk_list_box_set_filter_func")
    list_box_set_filter_func :: proc(box: ^ListBox, filter_func: ListBoxFilterFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_list_box_set_header_func")
    list_box_set_header_func :: proc(box: ^ListBox, update_header: ListBoxUpdateHeaderFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_list_box_invalidate_filter")
    list_box_invalidate_filter :: proc(box: ^ListBox) ---

    @(link_name = "gtk_list_box_invalidate_sort")
    list_box_invalidate_sort :: proc(box: ^ListBox) ---

    @(link_name = "gtk_list_box_invalidate_headers")
    list_box_invalidate_headers :: proc(box: ^ListBox) ---

    @(link_name = "gtk_list_box_set_sort_func")
    list_box_set_sort_func :: proc(box: ^ListBox, sort_func: ListBoxSortFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_list_box_set_activate_on_single_click")
    list_box_set_activate_on_single_click :: proc(box: ^ListBox, single: glib.boolean) ---

    @(link_name = "gtk_list_box_get_activate_on_single_click")
    list_box_get_activate_on_single_click :: proc(box: ^ListBox) -> glib.boolean ---

    @(link_name = "gtk_list_box_drag_unhighlight_row")
    list_box_drag_unhighlight_row :: proc(box: ^ListBox) ---

    @(link_name = "gtk_list_box_drag_highlight_row")
    list_box_drag_highlight_row :: proc(box: ^ListBox, row: ^ListBoxRow) ---

    @(link_name = "gtk_list_box_new")
    list_box_new :: proc() -> ^Widget ---

    @(link_name = "gtk_list_box_bind_model")
    list_box_bind_model :: proc(box: ^ListBox, model: ^gio.ListModel, create_widget_func: ListBoxCreateWidgetFunc, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) ---

    @(link_name = "gtk_list_box_set_show_separators")
    list_box_set_show_separators :: proc(box: ^ListBox, show_separators: glib.boolean) ---

    @(link_name = "gtk_list_box_get_show_separators")
    list_box_get_show_separators :: proc(box: ^ListBox) -> glib.boolean ---

    @(link_name = "gtk_list_header_get_type")
    list_header_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_list_header_get_item")
    list_header_get_item :: proc(self: ^ListHeader) -> glib.pointer ---

    @(link_name = "gtk_list_header_get_start")
    list_header_get_start :: proc(self: ^ListHeader) -> glib.uint_ ---

    @(link_name = "gtk_list_header_get_end")
    list_header_get_end :: proc(self: ^ListHeader) -> glib.uint_ ---

    @(link_name = "gtk_list_header_get_n_items")
    list_header_get_n_items :: proc(self: ^ListHeader) -> glib.uint_ ---

    @(link_name = "gtk_list_header_set_child")
    list_header_set_child :: proc(self: ^ListHeader, child: ^Widget) ---

    @(link_name = "gtk_list_header_get_child")
    list_header_get_child :: proc(self: ^ListHeader) -> ^Widget ---

    @(link_name = "gtk_list_view_get_type")
    list_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_list_view_new")
    list_view_new :: proc(model: ^SelectionModel, factory: ^ListItemFactory) -> ^Widget ---

    @(link_name = "gtk_list_view_get_model")
    list_view_get_model :: proc(self: ^ListView) -> ^SelectionModel ---

    @(link_name = "gtk_list_view_set_model")
    list_view_set_model :: proc(self: ^ListView, model: ^SelectionModel) ---

    @(link_name = "gtk_list_view_set_factory")
    list_view_set_factory :: proc(self: ^ListView, factory: ^ListItemFactory) ---

    @(link_name = "gtk_list_view_get_factory")
    list_view_get_factory :: proc(self: ^ListView) -> ^ListItemFactory ---

    @(link_name = "gtk_list_view_set_header_factory")
    list_view_set_header_factory :: proc(self: ^ListView, factory: ^ListItemFactory) ---

    @(link_name = "gtk_list_view_get_header_factory")
    list_view_get_header_factory :: proc(self: ^ListView) -> ^ListItemFactory ---

    @(link_name = "gtk_list_view_set_show_separators")
    list_view_set_show_separators :: proc(self: ^ListView, show_separators: glib.boolean) ---

    @(link_name = "gtk_list_view_get_show_separators")
    list_view_get_show_separators :: proc(self: ^ListView) -> glib.boolean ---

    @(link_name = "gtk_list_view_set_single_click_activate")
    list_view_set_single_click_activate :: proc(self: ^ListView, single_click_activate: glib.boolean) ---

    @(link_name = "gtk_list_view_get_single_click_activate")
    list_view_get_single_click_activate :: proc(self: ^ListView) -> glib.boolean ---

    @(link_name = "gtk_list_view_set_enable_rubberband")
    list_view_set_enable_rubberband :: proc(self: ^ListView, enable_rubberband: glib.boolean) ---

    @(link_name = "gtk_list_view_get_enable_rubberband")
    list_view_get_enable_rubberband :: proc(self: ^ListView) -> glib.boolean ---

    @(link_name = "gtk_list_view_set_tab_behavior")
    list_view_set_tab_behavior :: proc(self: ^ListView, tab_behavior: ListTabBehavior) ---

    @(link_name = "gtk_list_view_get_tab_behavior")
    list_view_get_tab_behavior :: proc(self: ^ListView) -> ListTabBehavior ---

    @(link_name = "gtk_list_view_scroll_to")
    list_view_scroll_to :: proc(self: ^ListView, pos: glib.uint_, flags: ListScrollFlags, scroll: ^ScrollInfo) ---

    @(link_name = "gtk_lock_button_get_type")
    lock_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_lock_button_new")
    lock_button_new :: proc(permission: ^gio.Permission) -> ^Widget ---

    @(link_name = "gtk_lock_button_get_permission")
    lock_button_get_permission :: proc(button: ^LockButton) -> ^gio.Permission ---

    @(link_name = "gtk_lock_button_set_permission")
    lock_button_set_permission :: proc(button: ^LockButton, permission: ^gio.Permission) ---

    @(link_name = "gtk_init")
    init :: proc() ---

    @(link_name = "gtk_init_check")
    init_check :: proc() -> glib.boolean ---

    @(link_name = "gtk_is_initialized")
    is_initialized :: proc() -> glib.boolean ---

    @(link_name = "gtk_disable_setlocale")
    disable_setlocale :: proc() ---

    @(link_name = "gtk_get_default_language")
    get_default_language :: proc() -> ^pango.Language ---

    @(link_name = "gtk_get_locale_direction")
    get_locale_direction :: proc() -> TextDirection ---

    @(link_name = "gtk_map_list_model_get_type")
    map_list_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_map_list_model_new")
    map_list_model_new :: proc(model: ^gio.ListModel, map_func: MapListModelMapFunc, user_data: glib.pointer, user_destroy: glib.DestroyNotify) -> ^MapListModel ---

    @(link_name = "gtk_map_list_model_set_map_func")
    map_list_model_set_map_func :: proc(self: ^MapListModel, map_func: MapListModelMapFunc, user_data: glib.pointer, user_destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_map_list_model_set_model")
    map_list_model_set_model :: proc(self: ^MapListModel, model: ^gio.ListModel) ---

    @(link_name = "gtk_map_list_model_get_model")
    map_list_model_get_model :: proc(self: ^MapListModel) -> ^gio.ListModel ---

    @(link_name = "gtk_map_list_model_has_map")
    map_list_model_has_map :: proc(self: ^MapListModel) -> glib.boolean ---

    @(link_name = "gtk_media_stream_get_type")
    media_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_media_stream_is_prepared")
    media_stream_is_prepared :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_get_error")
    media_stream_get_error :: proc(self: ^MediaStream) -> ^glib.Error ---

    @(link_name = "gtk_media_stream_has_audio")
    media_stream_has_audio :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_has_video")
    media_stream_has_video :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_play")
    media_stream_play :: proc(self: ^MediaStream) ---

    @(link_name = "gtk_media_stream_pause")
    media_stream_pause :: proc(self: ^MediaStream) ---

    @(link_name = "gtk_media_stream_get_playing")
    media_stream_get_playing :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_set_playing")
    media_stream_set_playing :: proc(self: ^MediaStream, playing: glib.boolean) ---

    @(link_name = "gtk_media_stream_get_ended")
    media_stream_get_ended :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_get_timestamp")
    media_stream_get_timestamp :: proc(self: ^MediaStream) -> glib.int64 ---

    @(link_name = "gtk_media_stream_get_duration")
    media_stream_get_duration :: proc(self: ^MediaStream) -> glib.int64 ---

    @(link_name = "gtk_media_stream_is_seekable")
    media_stream_is_seekable :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_is_seeking")
    media_stream_is_seeking :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_seek")
    media_stream_seek :: proc(self: ^MediaStream, timestamp: glib.int64) ---

    @(link_name = "gtk_media_stream_get_loop")
    media_stream_get_loop :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_set_loop")
    media_stream_set_loop :: proc(self: ^MediaStream, loop: glib.boolean) ---

    @(link_name = "gtk_media_stream_get_muted")
    media_stream_get_muted :: proc(self: ^MediaStream) -> glib.boolean ---

    @(link_name = "gtk_media_stream_set_muted")
    media_stream_set_muted :: proc(self: ^MediaStream, muted: glib.boolean) ---

    @(link_name = "gtk_media_stream_get_volume")
    media_stream_get_volume :: proc(self: ^MediaStream) -> f64 ---

    @(link_name = "gtk_media_stream_set_volume")
    media_stream_set_volume :: proc(self: ^MediaStream, volume: f64) ---

    @(link_name = "gtk_media_stream_realize")
    media_stream_realize :: proc(self: ^MediaStream, surface: ^Surface) ---

    @(link_name = "gtk_media_stream_unrealize")
    media_stream_unrealize :: proc(self: ^MediaStream, surface: ^Surface) ---

    @(link_name = "gtk_media_stream_prepared")
    media_stream_prepared :: proc(self: ^MediaStream, has_audio: glib.boolean, has_video: glib.boolean, seekable: glib.boolean, duration: glib.int64) ---

    @(link_name = "gtk_media_stream_unprepared")
    media_stream_unprepared :: proc(self: ^MediaStream) ---

    @(link_name = "gtk_media_stream_stream_prepared")
    media_stream_stream_prepared :: proc(self: ^MediaStream, has_audio: glib.boolean, has_video: glib.boolean, seekable: glib.boolean, duration: glib.int64) ---

    @(link_name = "gtk_media_stream_stream_unprepared")
    media_stream_stream_unprepared :: proc(self: ^MediaStream) ---

    @(link_name = "gtk_media_stream_update")
    media_stream_update :: proc(self: ^MediaStream, timestamp: glib.int64) ---

    @(link_name = "gtk_media_stream_ended")
    media_stream_ended :: proc(self: ^MediaStream) ---

    @(link_name = "gtk_media_stream_stream_ended")
    media_stream_stream_ended :: proc(self: ^MediaStream) ---

    @(link_name = "gtk_media_stream_seek_success")
    media_stream_seek_success :: proc(self: ^MediaStream) ---

    @(link_name = "gtk_media_stream_seek_failed")
    media_stream_seek_failed :: proc(self: ^MediaStream) ---

    @(link_name = "gtk_media_stream_gerror")
    media_stream_gerror :: proc(self: ^MediaStream, error: ^glib.Error) ---

    @(link_name = "gtk_media_stream_error")
    media_stream_error :: proc(self: ^MediaStream, domain: glib.Quark, code: i32, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_media_stream_error_valist")
    media_stream_error_valist :: proc(self: ^MediaStream, domain: glib.Quark, code: i32, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_media_controls_get_type")
    media_controls_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_media_controls_new")
    media_controls_new :: proc(stream: ^MediaStream) -> ^Widget ---

    @(link_name = "gtk_media_controls_get_media_stream")
    media_controls_get_media_stream :: proc(controls: [^]MediaControls) -> ^MediaStream ---

    @(link_name = "gtk_media_controls_set_media_stream")
    media_controls_set_media_stream :: proc(controls: [^]MediaControls, stream: ^MediaStream) ---

    @(link_name = "gtk_media_file_get_type")
    media_file_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_media_file_new")
    media_file_new :: proc() -> ^MediaStream ---

    @(link_name = "gtk_media_file_new_for_filename")
    media_file_new_for_filename :: proc(filename: cstring) -> ^MediaStream ---

    @(link_name = "gtk_media_file_new_for_resource")
    media_file_new_for_resource :: proc(resource_path: cstring) -> ^MediaStream ---

    @(link_name = "gtk_media_file_new_for_file")
    media_file_new_for_file :: proc(file: ^gio.File) -> ^MediaStream ---

    @(link_name = "gtk_media_file_new_for_input_stream")
    media_file_new_for_input_stream :: proc(stream: ^gio.InputStream) -> ^MediaStream ---

    @(link_name = "gtk_media_file_clear")
    media_file_clear :: proc(self: ^MediaFile) ---

    @(link_name = "gtk_media_file_set_filename")
    media_file_set_filename :: proc(self: ^MediaFile, filename: cstring) ---

    @(link_name = "gtk_media_file_set_resource")
    media_file_set_resource :: proc(self: ^MediaFile, resource_path: cstring) ---

    @(link_name = "gtk_media_file_set_file")
    media_file_set_file :: proc(self: ^MediaFile, file: ^gio.File) ---

    @(link_name = "gtk_media_file_get_file")
    media_file_get_file :: proc(self: ^MediaFile) -> ^gio.File ---

    @(link_name = "gtk_media_file_set_input_stream")
    media_file_set_input_stream :: proc(self: ^MediaFile, stream: ^gio.InputStream) ---

    @(link_name = "gtk_media_file_get_input_stream")
    media_file_get_input_stream :: proc(self: ^MediaFile) -> ^gio.InputStream ---

    @(link_name = "gtk_popover_get_type")
    popover_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_popover_new")
    popover_new :: proc() -> ^Widget ---

    @(link_name = "gtk_popover_set_child")
    popover_set_child :: proc(popover: ^Popover, child: ^Widget) ---

    @(link_name = "gtk_popover_get_child")
    popover_get_child :: proc(popover: ^Popover) -> ^Widget ---

    @(link_name = "gtk_popover_set_pointing_to")
    popover_set_pointing_to :: proc(popover: ^Popover, rect: ^Rectangle) ---

    @(link_name = "gtk_popover_get_pointing_to")
    popover_get_pointing_to :: proc(popover: ^Popover, rect: ^Rectangle) -> glib.boolean ---

    @(link_name = "gtk_popover_set_position")
    popover_set_position :: proc(popover: ^Popover, position: PositionType) ---

    @(link_name = "gtk_popover_get_position")
    popover_get_position :: proc(popover: ^Popover) -> PositionType ---

    @(link_name = "gtk_popover_set_autohide")
    popover_set_autohide :: proc(popover: ^Popover, autohide: glib.boolean) ---

    @(link_name = "gtk_popover_get_autohide")
    popover_get_autohide :: proc(popover: ^Popover) -> glib.boolean ---

    @(link_name = "gtk_popover_set_has_arrow")
    popover_set_has_arrow :: proc(popover: ^Popover, has_arrow: glib.boolean) ---

    @(link_name = "gtk_popover_get_has_arrow")
    popover_get_has_arrow :: proc(popover: ^Popover) -> glib.boolean ---

    @(link_name = "gtk_popover_set_mnemonics_visible")
    popover_set_mnemonics_visible :: proc(popover: ^Popover, mnemonics_visible: glib.boolean) ---

    @(link_name = "gtk_popover_get_mnemonics_visible")
    popover_get_mnemonics_visible :: proc(popover: ^Popover) -> glib.boolean ---

    @(link_name = "gtk_popover_popup")
    popover_popup :: proc(popover: ^Popover) ---

    @(link_name = "gtk_popover_popdown")
    popover_popdown :: proc(popover: ^Popover) ---

    @(link_name = "gtk_popover_set_offset")
    popover_set_offset :: proc(popover: ^Popover, x_offset: i32, y_offset: i32) ---

    @(link_name = "gtk_popover_get_offset")
    popover_get_offset :: proc(popover: ^Popover, x_offset: ^i32, y_offset: ^i32) ---

    @(link_name = "gtk_popover_set_cascade_popdown")
    popover_set_cascade_popdown :: proc(popover: ^Popover, cascade_popdown: glib.boolean) ---

    @(link_name = "gtk_popover_get_cascade_popdown")
    popover_get_cascade_popdown :: proc(popover: ^Popover) -> glib.boolean ---

    @(link_name = "gtk_popover_set_default_widget")
    popover_set_default_widget :: proc(popover: ^Popover, widget: ^Widget) ---

    @(link_name = "gtk_popover_present")
    popover_present :: proc(popover: ^Popover) ---

    @(link_name = "gtk_menu_button_get_type")
    menu_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_menu_button_new")
    menu_button_new :: proc() -> ^Widget ---

    @(link_name = "gtk_menu_button_set_popover")
    menu_button_set_popover :: proc(menu_button: ^MenuButton, popover: ^Widget) ---

    @(link_name = "gtk_menu_button_get_popover")
    menu_button_get_popover :: proc(menu_button: ^MenuButton) -> ^Popover ---

    @(link_name = "gtk_menu_button_set_direction")
    menu_button_set_direction :: proc(menu_button: ^MenuButton, direction: ArrowType) ---

    @(link_name = "gtk_menu_button_get_direction")
    menu_button_get_direction :: proc(menu_button: ^MenuButton) -> ArrowType ---

    @(link_name = "gtk_menu_button_set_menu_model")
    menu_button_set_menu_model :: proc(menu_button: ^MenuButton, menu_model: ^gio.MenuModel) ---

    @(link_name = "gtk_menu_button_get_menu_model")
    menu_button_get_menu_model :: proc(menu_button: ^MenuButton) -> ^gio.MenuModel ---

    @(link_name = "gtk_menu_button_set_icon_name")
    menu_button_set_icon_name :: proc(menu_button: ^MenuButton, icon_name: cstring) ---

    @(link_name = "gtk_menu_button_get_icon_name")
    menu_button_get_icon_name :: proc(menu_button: ^MenuButton) -> cstring ---

    @(link_name = "gtk_menu_button_set_always_show_arrow")
    menu_button_set_always_show_arrow :: proc(menu_button: ^MenuButton, always_show_arrow: glib.boolean) ---

    @(link_name = "gtk_menu_button_get_always_show_arrow")
    menu_button_get_always_show_arrow :: proc(menu_button: ^MenuButton) -> glib.boolean ---

    @(link_name = "gtk_menu_button_set_label")
    menu_button_set_label :: proc(menu_button: ^MenuButton, label: cstring) ---

    @(link_name = "gtk_menu_button_get_label")
    menu_button_get_label :: proc(menu_button: ^MenuButton) -> cstring ---

    @(link_name = "gtk_menu_button_set_use_underline")
    menu_button_set_use_underline :: proc(menu_button: ^MenuButton, use_underline: glib.boolean) ---

    @(link_name = "gtk_menu_button_get_use_underline")
    menu_button_get_use_underline :: proc(menu_button: ^MenuButton) -> glib.boolean ---

    @(link_name = "gtk_menu_button_set_has_frame")
    menu_button_set_has_frame :: proc(menu_button: ^MenuButton, has_frame: glib.boolean) ---

    @(link_name = "gtk_menu_button_get_has_frame")
    menu_button_get_has_frame :: proc(menu_button: ^MenuButton) -> glib.boolean ---

    @(link_name = "gtk_menu_button_popup")
    menu_button_popup :: proc(menu_button: ^MenuButton) ---

    @(link_name = "gtk_menu_button_popdown")
    menu_button_popdown :: proc(menu_button: ^MenuButton) ---

    @(link_name = "gtk_menu_button_set_create_popup_func")
    menu_button_set_create_popup_func :: proc(menu_button: ^MenuButton, func: MenuButtonCreatePopupFunc, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---

    @(link_name = "gtk_menu_button_set_primary")
    menu_button_set_primary :: proc(menu_button: ^MenuButton, primary: glib.boolean) ---

    @(link_name = "gtk_menu_button_get_primary")
    menu_button_get_primary :: proc(menu_button: ^MenuButton) -> glib.boolean ---

    @(link_name = "gtk_menu_button_set_child")
    menu_button_set_child :: proc(menu_button: ^MenuButton, child: ^Widget) ---

    @(link_name = "gtk_menu_button_get_child")
    menu_button_get_child :: proc(menu_button: ^MenuButton) -> ^Widget ---

    @(link_name = "gtk_menu_button_set_active")
    menu_button_set_active :: proc(menu_button: ^MenuButton, active: glib.boolean) ---

    @(link_name = "gtk_menu_button_get_active")
    menu_button_get_active :: proc(menu_button: ^MenuButton) -> glib.boolean ---

    @(link_name = "gtk_menu_button_set_can_shrink")
    menu_button_set_can_shrink :: proc(menu_button: ^MenuButton, can_shrink: glib.boolean) ---

    @(link_name = "gtk_menu_button_get_can_shrink")
    menu_button_get_can_shrink :: proc(menu_button: ^MenuButton) -> glib.boolean ---

    @(link_name = "gtk_message_dialog_get_type")
    message_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_message_dialog_new")
    message_dialog_new :: proc(parent: ^Window, flags: DialogFlags, type: MessageType, buttons: ButtonsType, message_format: cstring, #c_vararg var_args: ..any) -> ^Widget ---

    @(link_name = "gtk_message_dialog_new_with_markup")
    message_dialog_new_with_markup :: proc(parent: ^Window, flags: DialogFlags, type: MessageType, buttons: ButtonsType, message_format: cstring, #c_vararg var_args: ..any) -> ^Widget ---

    @(link_name = "gtk_message_dialog_set_markup")
    message_dialog_set_markup :: proc(message_dialog: ^MessageDialog, str: cstring) ---

    @(link_name = "gtk_message_dialog_format_secondary_text")
    message_dialog_format_secondary_text :: proc(message_dialog: ^MessageDialog, message_format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_message_dialog_format_secondary_markup")
    message_dialog_format_secondary_markup :: proc(message_dialog: ^MessageDialog, message_format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_message_dialog_get_message_area")
    message_dialog_get_message_area :: proc(message_dialog: ^MessageDialog) -> ^Widget ---

    @(link_name = "gtk_mount_operation_get_type")
    mount_operation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_mount_operation_new")
    mount_operation_new :: proc(parent: ^Window) -> ^gio.MountOperation ---

    @(link_name = "gtk_mount_operation_is_showing")
    mount_operation_is_showing :: proc(op: ^MountOperation) -> glib.boolean ---

    @(link_name = "gtk_mount_operation_set_parent")
    mount_operation_set_parent :: proc(op: ^MountOperation, parent: ^Window) ---

    @(link_name = "gtk_mount_operation_get_parent")
    mount_operation_get_parent :: proc(op: ^MountOperation) -> ^Window ---

    @(link_name = "gtk_mount_operation_set_display")
    mount_operation_set_display :: proc(op: ^MountOperation, display: ^Display) ---

    @(link_name = "gtk_mount_operation_get_display")
    mount_operation_get_display :: proc(op: ^MountOperation) -> ^Display ---

    @(link_name = "gtk_multi_filter_get_type")
    multi_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_multi_filter_append")
    multi_filter_append :: proc(self: ^MultiFilter, filter: ^Filter) ---

    @(link_name = "gtk_multi_filter_remove")
    multi_filter_remove :: proc(self: ^MultiFilter, position: glib.uint_) ---

    @(link_name = "gtk_any_filter_get_type")
    any_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_any_filter_new")
    any_filter_new :: proc() -> ^AnyFilter ---

    @(link_name = "gtk_every_filter_get_type")
    every_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_every_filter_new")
    every_filter_new :: proc() -> ^EveryFilter ---

    @(link_name = "gtk_multi_selection_get_type")
    multi_selection_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_multi_selection_new")
    multi_selection_new :: proc(model: ^gio.ListModel) -> ^MultiSelection ---

    @(link_name = "gtk_multi_selection_get_model")
    multi_selection_get_model :: proc(self: ^MultiSelection) -> ^gio.ListModel ---

    @(link_name = "gtk_multi_selection_set_model")
    multi_selection_set_model :: proc(self: ^MultiSelection, model: ^gio.ListModel) ---

    @(link_name = "gtk_multi_sorter_get_type")
    multi_sorter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_multi_sorter_new")
    multi_sorter_new :: proc() -> ^MultiSorter ---

    @(link_name = "gtk_multi_sorter_append")
    multi_sorter_append :: proc(self: ^MultiSorter, sorter: ^Sorter) ---

    @(link_name = "gtk_multi_sorter_remove")
    multi_sorter_remove :: proc(self: ^MultiSorter, position: glib.uint_) ---

    @(link_name = "gtk_native_get_type")
    native_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_native_realize")
    native_realize :: proc(self: ^Native) ---

    @(link_name = "gtk_native_unrealize")
    native_unrealize :: proc(self: ^Native) ---

    @(link_name = "gtk_native_get_for_surface")
    native_get_for_surface :: proc(surface: ^Surface) -> ^Native ---

    @(link_name = "gtk_native_get_surface")
    native_get_surface :: proc(self: ^Native) -> ^Surface ---

    @(link_name = "gtk_native_get_renderer")
    native_get_renderer :: proc(self: ^Native) -> ^Renderer ---

    @(link_name = "gtk_native_get_surface_transform")
    native_get_surface_transform :: proc(self: ^Native, x: ^f64, y: ^f64) ---

    @(link_name = "gtk_no_selection_get_type")
    no_selection_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_no_selection_new")
    no_selection_new :: proc(model: ^gio.ListModel) -> ^NoSelection ---

    @(link_name = "gtk_no_selection_get_model")
    no_selection_get_model :: proc(self: ^NoSelection) -> ^gio.ListModel ---

    @(link_name = "gtk_no_selection_set_model")
    no_selection_set_model :: proc(self: ^NoSelection, model: ^gio.ListModel) ---

    @(link_name = "gtk_notebook_get_type")
    notebook_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_notebook_new")
    notebook_new :: proc() -> ^Widget ---

    @(link_name = "gtk_notebook_append_page")
    notebook_append_page :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget) -> i32 ---

    @(link_name = "gtk_notebook_append_page_menu")
    notebook_append_page_menu :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, menu_label: ^Widget) -> i32 ---

    @(link_name = "gtk_notebook_prepend_page")
    notebook_prepend_page :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget) -> i32 ---

    @(link_name = "gtk_notebook_prepend_page_menu")
    notebook_prepend_page_menu :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, menu_label: ^Widget) -> i32 ---

    @(link_name = "gtk_notebook_insert_page")
    notebook_insert_page :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, position: i32) -> i32 ---

    @(link_name = "gtk_notebook_insert_page_menu")
    notebook_insert_page_menu :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, menu_label: ^Widget, position: i32) -> i32 ---

    @(link_name = "gtk_notebook_remove_page")
    notebook_remove_page :: proc(notebook: ^Notebook, page_num: i32) ---

    @(link_name = "gtk_notebook_set_group_name")
    notebook_set_group_name :: proc(notebook: ^Notebook, group_name: cstring) ---

    @(link_name = "gtk_notebook_get_group_name")
    notebook_get_group_name :: proc(notebook: ^Notebook) -> cstring ---

    @(link_name = "gtk_notebook_get_current_page")
    notebook_get_current_page :: proc(notebook: ^Notebook) -> i32 ---

    @(link_name = "gtk_notebook_get_nth_page")
    notebook_get_nth_page :: proc(notebook: ^Notebook, page_num: i32) -> ^Widget ---

    @(link_name = "gtk_notebook_get_n_pages")
    notebook_get_n_pages :: proc(notebook: ^Notebook) -> i32 ---

    @(link_name = "gtk_notebook_page_num")
    notebook_page_num :: proc(notebook: ^Notebook, child: ^Widget) -> i32 ---

    @(link_name = "gtk_notebook_set_current_page")
    notebook_set_current_page :: proc(notebook: ^Notebook, page_num: i32) ---

    @(link_name = "gtk_notebook_next_page")
    notebook_next_page :: proc(notebook: ^Notebook) ---

    @(link_name = "gtk_notebook_prev_page")
    notebook_prev_page :: proc(notebook: ^Notebook) ---

    @(link_name = "gtk_notebook_set_show_border")
    notebook_set_show_border :: proc(notebook: ^Notebook, show_border: glib.boolean) ---

    @(link_name = "gtk_notebook_get_show_border")
    notebook_get_show_border :: proc(notebook: ^Notebook) -> glib.boolean ---

    @(link_name = "gtk_notebook_set_show_tabs")
    notebook_set_show_tabs :: proc(notebook: ^Notebook, show_tabs: glib.boolean) ---

    @(link_name = "gtk_notebook_get_show_tabs")
    notebook_get_show_tabs :: proc(notebook: ^Notebook) -> glib.boolean ---

    @(link_name = "gtk_notebook_set_tab_pos")
    notebook_set_tab_pos :: proc(notebook: ^Notebook, pos: PositionType) ---

    @(link_name = "gtk_notebook_get_tab_pos")
    notebook_get_tab_pos :: proc(notebook: ^Notebook) -> PositionType ---

    @(link_name = "gtk_notebook_set_scrollable")
    notebook_set_scrollable :: proc(notebook: ^Notebook, scrollable: glib.boolean) ---

    @(link_name = "gtk_notebook_get_scrollable")
    notebook_get_scrollable :: proc(notebook: ^Notebook) -> glib.boolean ---

    @(link_name = "gtk_notebook_popup_enable")
    notebook_popup_enable :: proc(notebook: ^Notebook) ---

    @(link_name = "gtk_notebook_popup_disable")
    notebook_popup_disable :: proc(notebook: ^Notebook) ---

    @(link_name = "gtk_notebook_get_tab_label")
    notebook_get_tab_label :: proc(notebook: ^Notebook, child: ^Widget) -> ^Widget ---

    @(link_name = "gtk_notebook_set_tab_label")
    notebook_set_tab_label :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget) ---

    @(link_name = "gtk_notebook_set_tab_label_text")
    notebook_set_tab_label_text :: proc(notebook: ^Notebook, child: ^Widget, tab_text: cstring) ---

    @(link_name = "gtk_notebook_get_tab_label_text")
    notebook_get_tab_label_text :: proc(notebook: ^Notebook, child: ^Widget) -> cstring ---

    @(link_name = "gtk_notebook_get_menu_label")
    notebook_get_menu_label :: proc(notebook: ^Notebook, child: ^Widget) -> ^Widget ---

    @(link_name = "gtk_notebook_set_menu_label")
    notebook_set_menu_label :: proc(notebook: ^Notebook, child: ^Widget, menu_label: ^Widget) ---

    @(link_name = "gtk_notebook_set_menu_label_text")
    notebook_set_menu_label_text :: proc(notebook: ^Notebook, child: ^Widget, menu_text: cstring) ---

    @(link_name = "gtk_notebook_get_menu_label_text")
    notebook_get_menu_label_text :: proc(notebook: ^Notebook, child: ^Widget) -> cstring ---

    @(link_name = "gtk_notebook_reorder_child")
    notebook_reorder_child :: proc(notebook: ^Notebook, child: ^Widget, position: i32) ---

    @(link_name = "gtk_notebook_get_tab_reorderable")
    notebook_get_tab_reorderable :: proc(notebook: ^Notebook, child: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_notebook_set_tab_reorderable")
    notebook_set_tab_reorderable :: proc(notebook: ^Notebook, child: ^Widget, reorderable: glib.boolean) ---

    @(link_name = "gtk_notebook_get_tab_detachable")
    notebook_get_tab_detachable :: proc(notebook: ^Notebook, child: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_notebook_set_tab_detachable")
    notebook_set_tab_detachable :: proc(notebook: ^Notebook, child: ^Widget, detachable: glib.boolean) ---

    @(link_name = "gtk_notebook_detach_tab")
    notebook_detach_tab :: proc(notebook: ^Notebook, child: ^Widget) ---

    @(link_name = "gtk_notebook_get_action_widget")
    notebook_get_action_widget :: proc(notebook: ^Notebook, pack_type: PackType) -> ^Widget ---

    @(link_name = "gtk_notebook_set_action_widget")
    notebook_set_action_widget :: proc(notebook: ^Notebook, widget: ^Widget, pack_type: PackType) ---

    @(link_name = "gtk_notebook_page_get_type")
    notebook_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_notebook_get_page")
    notebook_get_page :: proc(notebook: ^Notebook, child: ^Widget) -> ^NotebookPage ---

    @(link_name = "gtk_notebook_page_get_child")
    notebook_page_get_child :: proc(page: ^NotebookPage) -> ^Widget ---

    @(link_name = "gtk_notebook_get_pages")
    notebook_get_pages :: proc(notebook: ^Notebook) -> ^gio.ListModel ---

    @(link_name = "gtk_numeric_sorter_get_type")
    numeric_sorter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_numeric_sorter_new")
    numeric_sorter_new :: proc(expression: ^Expression) -> ^NumericSorter ---

    @(link_name = "gtk_numeric_sorter_get_expression")
    numeric_sorter_get_expression :: proc(self: ^NumericSorter) -> ^Expression ---

    @(link_name = "gtk_numeric_sorter_set_expression")
    numeric_sorter_set_expression :: proc(self: ^NumericSorter, expression: ^Expression) ---

    @(link_name = "gtk_numeric_sorter_get_sort_order")
    numeric_sorter_get_sort_order :: proc(self: ^NumericSorter) -> SortType ---

    @(link_name = "gtk_numeric_sorter_set_sort_order")
    numeric_sorter_set_sort_order :: proc(self: ^NumericSorter, sort_order: SortType) ---

    @(link_name = "gtk_orientable_get_type")
    orientable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_orientable_set_orientation")
    orientable_set_orientation :: proc(orientable: ^Orientable, orientation: Orientation) ---

    @(link_name = "gtk_orientable_get_orientation")
    orientable_get_orientation :: proc(orientable: ^Orientable) -> Orientation ---

    @(link_name = "gtk_overlay_get_type")
    overlay_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_overlay_new")
    overlay_new :: proc() -> ^Widget ---

    @(link_name = "gtk_overlay_add_overlay")
    overlay_add_overlay :: proc(overlay: ^Overlay, widget: ^Widget) ---

    @(link_name = "gtk_overlay_remove_overlay")
    overlay_remove_overlay :: proc(overlay: ^Overlay, widget: ^Widget) ---

    @(link_name = "gtk_overlay_set_child")
    overlay_set_child :: proc(overlay: ^Overlay, child: ^Widget) ---

    @(link_name = "gtk_overlay_get_child")
    overlay_get_child :: proc(overlay: ^Overlay) -> ^Widget ---

    @(link_name = "gtk_overlay_get_measure_overlay")
    overlay_get_measure_overlay :: proc(overlay: ^Overlay, widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_overlay_set_measure_overlay")
    overlay_set_measure_overlay :: proc(overlay: ^Overlay, widget: ^Widget, measure: glib.boolean) ---

    @(link_name = "gtk_overlay_get_clip_overlay")
    overlay_get_clip_overlay :: proc(overlay: ^Overlay, widget: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_overlay_set_clip_overlay")
    overlay_set_clip_overlay :: proc(overlay: ^Overlay, widget: ^Widget, clip_overlay: glib.boolean) ---

    @(link_name = "gtk_overlay_layout_get_type")
    overlay_layout_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_overlay_layout_new")
    overlay_layout_new :: proc() -> ^LayoutManager ---

    @(link_name = "gtk_overlay_layout_child_get_type")
    overlay_layout_child_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_overlay_layout_child_set_measure")
    overlay_layout_child_set_measure :: proc(child: ^OverlayLayoutChild, measure: glib.boolean) ---

    @(link_name = "gtk_overlay_layout_child_get_measure")
    overlay_layout_child_get_measure :: proc(child: ^OverlayLayoutChild) -> glib.boolean ---

    @(link_name = "gtk_overlay_layout_child_set_clip_overlay")
    overlay_layout_child_set_clip_overlay :: proc(child: ^OverlayLayoutChild, clip_overlay: glib.boolean) ---

    @(link_name = "gtk_overlay_layout_child_get_clip_overlay")
    overlay_layout_child_get_clip_overlay :: proc(child: ^OverlayLayoutChild) -> glib.boolean ---

    @(link_name = "gtk_pad_controller_get_type")
    pad_controller_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_pad_controller_new")
    pad_controller_new :: proc(group: ^gio.ActionGroup, pad: ^Device) -> ^PadController ---

    @(link_name = "gtk_pad_controller_set_action_entries")
    pad_controller_set_action_entries :: proc(controller: ^PadController, entries: [^]PadActionEntry, n_entries: i32) ---

    @(link_name = "gtk_pad_controller_set_action")
    pad_controller_set_action :: proc(controller: ^PadController, type: PadActionType, index: i32, mode: i32, label: cstring, action_name: cstring) ---

    @(link_name = "gtk_paper_size_get_type")
    paper_size_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_paper_size_new")
    paper_size_new :: proc(name: cstring) -> ^PaperSize ---

    @(link_name = "gtk_paper_size_new_from_ppd")
    paper_size_new_from_ppd :: proc(ppd_name: cstring, ppd_display_name: cstring, width: f64, height: f64) -> ^PaperSize ---

    @(link_name = "gtk_paper_size_new_from_ipp")
    paper_size_new_from_ipp :: proc(ipp_name: cstring, width: f64, height: f64) -> ^PaperSize ---

    @(link_name = "gtk_paper_size_new_custom")
    paper_size_new_custom :: proc(name: cstring, display_name: cstring, width: f64, height: f64, unit: Unit) -> ^PaperSize ---

    @(link_name = "gtk_paper_size_copy")
    paper_size_copy :: proc(other: ^PaperSize) -> ^PaperSize ---

    @(link_name = "gtk_paper_size_free")
    paper_size_free :: proc(size_p: ^PaperSize) ---

    @(link_name = "gtk_paper_size_is_equal")
    paper_size_is_equal :: proc(size1: ^PaperSize, size2: ^PaperSize) -> glib.boolean ---

    @(link_name = "gtk_paper_size_get_paper_sizes")
    paper_size_get_paper_sizes :: proc(include_custom: glib.boolean) -> ^glib.List ---

    @(link_name = "gtk_paper_size_get_name")
    paper_size_get_name :: proc(size_p: ^PaperSize) -> cstring ---

    @(link_name = "gtk_paper_size_get_display_name")
    paper_size_get_display_name :: proc(size_p: ^PaperSize) -> cstring ---

    @(link_name = "gtk_paper_size_get_ppd_name")
    paper_size_get_ppd_name :: proc(size_p: ^PaperSize) -> cstring ---

    @(link_name = "gtk_paper_size_get_width")
    paper_size_get_width :: proc(size_p: ^PaperSize, unit: Unit) -> f64 ---

    @(link_name = "gtk_paper_size_get_height")
    paper_size_get_height :: proc(size_p: ^PaperSize, unit: Unit) -> f64 ---

    @(link_name = "gtk_paper_size_is_custom")
    paper_size_is_custom :: proc(size_p: ^PaperSize) -> glib.boolean ---

    @(link_name = "gtk_paper_size_is_ipp")
    paper_size_is_ipp :: proc(size_p: ^PaperSize) -> glib.boolean ---

    @(link_name = "gtk_paper_size_set_size")
    paper_size_set_size :: proc(size_p: ^PaperSize, width: f64, height: f64, unit: Unit) ---

    @(link_name = "gtk_paper_size_get_default_top_margin")
    paper_size_get_default_top_margin :: proc(size_p: ^PaperSize, unit: Unit) -> f64 ---

    @(link_name = "gtk_paper_size_get_default_bottom_margin")
    paper_size_get_default_bottom_margin :: proc(size_p: ^PaperSize, unit: Unit) -> f64 ---

    @(link_name = "gtk_paper_size_get_default_left_margin")
    paper_size_get_default_left_margin :: proc(size_p: ^PaperSize, unit: Unit) -> f64 ---

    @(link_name = "gtk_paper_size_get_default_right_margin")
    paper_size_get_default_right_margin :: proc(size_p: ^PaperSize, unit: Unit) -> f64 ---

    @(link_name = "gtk_paper_size_get_default")
    paper_size_get_default :: proc() -> cstring ---

    @(link_name = "gtk_paper_size_new_from_key_file")
    paper_size_new_from_key_file :: proc(key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> ^PaperSize ---

    @(link_name = "gtk_paper_size_to_key_file")
    paper_size_to_key_file :: proc(size_p: ^PaperSize, key_file: ^glib.KeyFile, group_name: cstring) ---

    @(link_name = "gtk_paper_size_new_from_gvariant")
    paper_size_new_from_gvariant :: proc(variant: ^glib.Variant) -> ^PaperSize ---

    @(link_name = "gtk_paper_size_to_gvariant")
    paper_size_to_gvariant :: proc(paper_size: ^PaperSize) -> ^glib.Variant ---

    @(link_name = "gtk_page_setup_get_type")
    page_setup_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_page_setup_new")
    page_setup_new :: proc() -> ^PageSetup ---

    @(link_name = "gtk_page_setup_copy")
    page_setup_copy :: proc(other: ^PageSetup) -> ^PageSetup ---

    @(link_name = "gtk_page_setup_get_orientation")
    page_setup_get_orientation :: proc(setup: ^PageSetup) -> PageOrientation ---

    @(link_name = "gtk_page_setup_set_orientation")
    page_setup_set_orientation :: proc(setup: ^PageSetup, orientation: PageOrientation) ---

    @(link_name = "gtk_page_setup_get_paper_size")
    page_setup_get_paper_size :: proc(setup: ^PageSetup) -> ^PaperSize ---

    @(link_name = "gtk_page_setup_set_paper_size")
    page_setup_set_paper_size :: proc(setup: ^PageSetup, size_p: ^PaperSize) ---

    @(link_name = "gtk_page_setup_get_top_margin")
    page_setup_get_top_margin :: proc(setup: ^PageSetup, unit: Unit) -> f64 ---

    @(link_name = "gtk_page_setup_set_top_margin")
    page_setup_set_top_margin :: proc(setup: ^PageSetup, margin: f64, unit: Unit) ---

    @(link_name = "gtk_page_setup_get_bottom_margin")
    page_setup_get_bottom_margin :: proc(setup: ^PageSetup, unit: Unit) -> f64 ---

    @(link_name = "gtk_page_setup_set_bottom_margin")
    page_setup_set_bottom_margin :: proc(setup: ^PageSetup, margin: f64, unit: Unit) ---

    @(link_name = "gtk_page_setup_get_left_margin")
    page_setup_get_left_margin :: proc(setup: ^PageSetup, unit: Unit) -> f64 ---

    @(link_name = "gtk_page_setup_set_left_margin")
    page_setup_set_left_margin :: proc(setup: ^PageSetup, margin: f64, unit: Unit) ---

    @(link_name = "gtk_page_setup_get_right_margin")
    page_setup_get_right_margin :: proc(setup: ^PageSetup, unit: Unit) -> f64 ---

    @(link_name = "gtk_page_setup_set_right_margin")
    page_setup_set_right_margin :: proc(setup: ^PageSetup, margin: f64, unit: Unit) ---

    @(link_name = "gtk_page_setup_set_paper_size_and_default_margins")
    page_setup_set_paper_size_and_default_margins :: proc(setup: ^PageSetup, size_p: ^PaperSize) ---

    @(link_name = "gtk_page_setup_get_paper_width")
    page_setup_get_paper_width :: proc(setup: ^PageSetup, unit: Unit) -> f64 ---

    @(link_name = "gtk_page_setup_get_paper_height")
    page_setup_get_paper_height :: proc(setup: ^PageSetup, unit: Unit) -> f64 ---

    @(link_name = "gtk_page_setup_get_page_width")
    page_setup_get_page_width :: proc(setup: ^PageSetup, unit: Unit) -> f64 ---

    @(link_name = "gtk_page_setup_get_page_height")
    page_setup_get_page_height :: proc(setup: ^PageSetup, unit: Unit) -> f64 ---

    @(link_name = "gtk_page_setup_new_from_file")
    page_setup_new_from_file :: proc(file_name: cstring, error: ^^glib.Error) -> ^PageSetup ---

    @(link_name = "gtk_page_setup_load_file")
    page_setup_load_file :: proc(setup: ^PageSetup, file_name: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_page_setup_to_file")
    page_setup_to_file :: proc(setup: ^PageSetup, file_name: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_page_setup_new_from_key_file")
    page_setup_new_from_key_file :: proc(key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> ^PageSetup ---

    @(link_name = "gtk_page_setup_load_key_file")
    page_setup_load_key_file :: proc(setup: ^PageSetup, key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_page_setup_to_key_file")
    page_setup_to_key_file :: proc(setup: ^PageSetup, key_file: ^glib.KeyFile, group_name: cstring) ---

    @(link_name = "gtk_page_setup_to_gvariant")
    page_setup_to_gvariant :: proc(setup: ^PageSetup) -> ^glib.Variant ---

    @(link_name = "gtk_page_setup_new_from_gvariant")
    page_setup_new_from_gvariant :: proc(variant: ^glib.Variant) -> ^PageSetup ---

    @(link_name = "gtk_paned_get_type")
    paned_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_paned_new")
    paned_new :: proc(orientation: Orientation) -> ^Widget ---

    @(link_name = "gtk_paned_set_start_child")
    paned_set_start_child :: proc(paned: ^Paned, child: ^Widget) ---

    @(link_name = "gtk_paned_get_start_child")
    paned_get_start_child :: proc(paned: ^Paned) -> ^Widget ---

    @(link_name = "gtk_paned_set_resize_start_child")
    paned_set_resize_start_child :: proc(paned: ^Paned, resize: glib.boolean) ---

    @(link_name = "gtk_paned_get_resize_start_child")
    paned_get_resize_start_child :: proc(paned: ^Paned) -> glib.boolean ---

    @(link_name = "gtk_paned_set_end_child")
    paned_set_end_child :: proc(paned: ^Paned, child: ^Widget) ---

    @(link_name = "gtk_paned_get_end_child")
    paned_get_end_child :: proc(paned: ^Paned) -> ^Widget ---

    @(link_name = "gtk_paned_set_shrink_start_child")
    paned_set_shrink_start_child :: proc(paned: ^Paned, resize: glib.boolean) ---

    @(link_name = "gtk_paned_get_shrink_start_child")
    paned_get_shrink_start_child :: proc(paned: ^Paned) -> glib.boolean ---

    @(link_name = "gtk_paned_set_resize_end_child")
    paned_set_resize_end_child :: proc(paned: ^Paned, resize: glib.boolean) ---

    @(link_name = "gtk_paned_get_resize_end_child")
    paned_get_resize_end_child :: proc(paned: ^Paned) -> glib.boolean ---

    @(link_name = "gtk_paned_set_shrink_end_child")
    paned_set_shrink_end_child :: proc(paned: ^Paned, resize: glib.boolean) ---

    @(link_name = "gtk_paned_get_shrink_end_child")
    paned_get_shrink_end_child :: proc(paned: ^Paned) -> glib.boolean ---

    @(link_name = "gtk_paned_get_position")
    paned_get_position :: proc(paned: ^Paned) -> i32 ---

    @(link_name = "gtk_paned_set_position")
    paned_set_position :: proc(paned: ^Paned, position: i32) ---

    @(link_name = "gtk_paned_set_wide_handle")
    paned_set_wide_handle :: proc(paned: ^Paned, wide: glib.boolean) ---

    @(link_name = "gtk_paned_get_wide_handle")
    paned_get_wide_handle :: proc(paned: ^Paned) -> glib.boolean ---

    @(link_name = "gtk_password_entry_get_type")
    password_entry_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_password_entry_new")
    password_entry_new :: proc() -> ^Widget ---

    @(link_name = "gtk_password_entry_set_show_peek_icon")
    password_entry_set_show_peek_icon :: proc(entry: ^PasswordEntry, show_peek_icon: glib.boolean) ---

    @(link_name = "gtk_password_entry_get_show_peek_icon")
    password_entry_get_show_peek_icon :: proc(entry: ^PasswordEntry) -> glib.boolean ---

    @(link_name = "gtk_password_entry_set_extra_menu")
    password_entry_set_extra_menu :: proc(entry: ^PasswordEntry, model: ^gio.MenuModel) ---

    @(link_name = "gtk_password_entry_get_extra_menu")
    password_entry_get_extra_menu :: proc(entry: ^PasswordEntry) -> ^gio.MenuModel ---

    @(link_name = "gtk_password_entry_buffer_get_type")
    password_entry_buffer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_password_entry_buffer_new")
    password_entry_buffer_new :: proc() -> ^EntryBuffer ---

    @(link_name = "gtk_picture_get_type")
    picture_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_picture_new")
    picture_new :: proc() -> ^Widget ---

    @(link_name = "gtk_picture_new_for_paintable")
    picture_new_for_paintable :: proc(paintable: ^Paintable) -> ^Widget ---

    @(link_name = "gtk_picture_new_for_pixbuf")
    picture_new_for_pixbuf :: proc(pixbuf: ^gdk.Pixbuf) -> ^Widget ---

    @(link_name = "gtk_picture_new_for_file")
    picture_new_for_file :: proc(file: ^gio.File) -> ^Widget ---

    @(link_name = "gtk_picture_new_for_filename")
    picture_new_for_filename :: proc(filename: cstring) -> ^Widget ---

    @(link_name = "gtk_picture_new_for_resource")
    picture_new_for_resource :: proc(resource_path: cstring) -> ^Widget ---

    @(link_name = "gtk_picture_set_paintable")
    picture_set_paintable :: proc(self: ^Picture, paintable: ^Paintable) ---

    @(link_name = "gtk_picture_get_paintable")
    picture_get_paintable :: proc(self: ^Picture) -> ^Paintable ---

    @(link_name = "gtk_picture_set_file")
    picture_set_file :: proc(self: ^Picture, file: ^gio.File) ---

    @(link_name = "gtk_picture_get_file")
    picture_get_file :: proc(self: ^Picture) -> ^gio.File ---

    @(link_name = "gtk_picture_set_filename")
    picture_set_filename :: proc(self: ^Picture, filename: cstring) ---

    @(link_name = "gtk_picture_set_resource")
    picture_set_resource :: proc(self: ^Picture, resource_path: cstring) ---

    @(link_name = "gtk_picture_set_pixbuf")
    picture_set_pixbuf :: proc(self: ^Picture, pixbuf: ^gdk.Pixbuf) ---

    @(link_name = "gtk_picture_set_keep_aspect_ratio")
    picture_set_keep_aspect_ratio :: proc(self: ^Picture, keep_aspect_ratio: glib.boolean) ---

    @(link_name = "gtk_picture_get_keep_aspect_ratio")
    picture_get_keep_aspect_ratio :: proc(self: ^Picture) -> glib.boolean ---

    @(link_name = "gtk_picture_set_can_shrink")
    picture_set_can_shrink :: proc(self: ^Picture, can_shrink: glib.boolean) ---

    @(link_name = "gtk_picture_get_can_shrink")
    picture_get_can_shrink :: proc(self: ^Picture) -> glib.boolean ---

    @(link_name = "gtk_picture_set_content_fit")
    picture_set_content_fit :: proc(self: ^Picture, content_fit: ContentFit) ---

    @(link_name = "gtk_picture_get_content_fit")
    picture_get_content_fit :: proc(self: ^Picture) -> ContentFit ---

    @(link_name = "gtk_picture_set_alternative_text")
    picture_set_alternative_text :: proc(self: ^Picture, alternative_text: cstring) ---

    @(link_name = "gtk_picture_get_alternative_text")
    picture_get_alternative_text :: proc(self: ^Picture) -> cstring ---

    @(link_name = "gtk_popover_menu_get_type")
    popover_menu_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_popover_menu_new_from_model")
    popover_menu_new_from_model :: proc(model: ^gio.MenuModel) -> ^Widget ---

    @(link_name = "gtk_popover_menu_new_from_model_full")
    popover_menu_new_from_model_full :: proc(model: ^gio.MenuModel, flags: PopoverMenuFlags) -> ^Widget ---

    @(link_name = "gtk_popover_menu_set_menu_model")
    popover_menu_set_menu_model :: proc(popover: ^PopoverMenu, model: ^gio.MenuModel) ---

    @(link_name = "gtk_popover_menu_get_menu_model")
    popover_menu_get_menu_model :: proc(popover: ^PopoverMenu) -> ^gio.MenuModel ---

    @(link_name = "gtk_popover_menu_add_child")
    popover_menu_add_child :: proc(popover: ^PopoverMenu, child: ^Widget, id: cstring) -> glib.boolean ---

    @(link_name = "gtk_popover_menu_remove_child")
    popover_menu_remove_child :: proc(popover: ^PopoverMenu, child: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_popover_menu_bar_get_type")
    popover_menu_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_popover_menu_bar_new_from_model")
    popover_menu_bar_new_from_model :: proc(model: ^gio.MenuModel) -> ^Widget ---

    @(link_name = "gtk_popover_menu_bar_set_menu_model")
    popover_menu_bar_set_menu_model :: proc(bar: ^PopoverMenuBar, model: ^gio.MenuModel) ---

    @(link_name = "gtk_popover_menu_bar_get_menu_model")
    popover_menu_bar_get_menu_model :: proc(bar: ^PopoverMenuBar) -> ^gio.MenuModel ---

    @(link_name = "gtk_popover_menu_bar_add_child")
    popover_menu_bar_add_child :: proc(bar: ^PopoverMenuBar, child: ^Widget, id: cstring) -> glib.boolean ---

    @(link_name = "gtk_popover_menu_bar_remove_child")
    popover_menu_bar_remove_child :: proc(bar: ^PopoverMenuBar, child: ^Widget) -> glib.boolean ---

    @(link_name = "gtk_print_context_get_type")
    print_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_context_get_cairo_context")
    print_context_get_cairo_context :: proc(context_p: ^PrintContext) -> ^cairo.context_t ---

    @(link_name = "gtk_print_context_get_page_setup")
    print_context_get_page_setup :: proc(context_p: ^PrintContext) -> ^PageSetup ---

    @(link_name = "gtk_print_context_get_width")
    print_context_get_width :: proc(context_p: ^PrintContext) -> f64 ---

    @(link_name = "gtk_print_context_get_height")
    print_context_get_height :: proc(context_p: ^PrintContext) -> f64 ---

    @(link_name = "gtk_print_context_get_dpi_x")
    print_context_get_dpi_x :: proc(context_p: ^PrintContext) -> f64 ---

    @(link_name = "gtk_print_context_get_dpi_y")
    print_context_get_dpi_y :: proc(context_p: ^PrintContext) -> f64 ---

    @(link_name = "gtk_print_context_get_hard_margins")
    print_context_get_hard_margins :: proc(context_p: ^PrintContext, top: ^f64, bottom: ^f64, left: ^f64, right: ^f64) -> glib.boolean ---

    @(link_name = "gtk_print_context_get_pango_fontmap")
    print_context_get_pango_fontmap :: proc(context_p: ^PrintContext) -> ^pango.FontMap ---

    @(link_name = "gtk_print_context_create_pango_context")
    print_context_create_pango_context :: proc(context_p: ^PrintContext) -> ^pango.Context ---

    @(link_name = "gtk_print_context_create_pango_layout")
    print_context_create_pango_layout :: proc(context_p: ^PrintContext) -> ^pango.Layout ---

    @(link_name = "gtk_print_context_set_cairo_context")
    print_context_set_cairo_context :: proc(context_p: ^PrintContext, cr: ^cairo.context_t, dpi_x: f64, dpi_y: f64) ---

    @(link_name = "gtk_print_settings_get_type")
    print_settings_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_settings_new")
    print_settings_new :: proc() -> ^PrintSettings ---

    @(link_name = "gtk_print_settings_copy")
    print_settings_copy :: proc(other: ^PrintSettings) -> ^PrintSettings ---

    @(link_name = "gtk_print_settings_new_from_file")
    print_settings_new_from_file :: proc(file_name: cstring, error: ^^glib.Error) -> ^PrintSettings ---

    @(link_name = "gtk_print_settings_load_file")
    print_settings_load_file :: proc(settings: [^]PrintSettings, file_name: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_print_settings_to_file")
    print_settings_to_file :: proc(settings: [^]PrintSettings, file_name: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_print_settings_new_from_key_file")
    print_settings_new_from_key_file :: proc(key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> ^PrintSettings ---

    @(link_name = "gtk_print_settings_load_key_file")
    print_settings_load_key_file :: proc(settings: [^]PrintSettings, key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_print_settings_to_key_file")
    print_settings_to_key_file :: proc(settings: [^]PrintSettings, key_file: ^glib.KeyFile, group_name: cstring) ---

    @(link_name = "gtk_print_settings_has_key")
    print_settings_has_key :: proc(settings: [^]PrintSettings, key: cstring) -> glib.boolean ---

    @(link_name = "gtk_print_settings_get")
    print_settings_get :: proc(settings: [^]PrintSettings, key: cstring) -> cstring ---

    @(link_name = "gtk_print_settings_set")
    print_settings_set :: proc(settings: [^]PrintSettings, key: cstring, value: cstring) ---

    @(link_name = "gtk_print_settings_unset")
    print_settings_unset :: proc(settings: [^]PrintSettings, key: cstring) ---

    @(link_name = "gtk_print_settings_foreach")
    print_settings_foreach :: proc(settings: [^]PrintSettings, func: PrintSettingsFunc, user_data: glib.pointer) ---

    @(link_name = "gtk_print_settings_get_bool")
    print_settings_get_bool :: proc(settings: [^]PrintSettings, key: cstring) -> glib.boolean ---

    @(link_name = "gtk_print_settings_set_bool")
    print_settings_set_bool :: proc(settings: [^]PrintSettings, key: cstring, value: glib.boolean) ---

    @(link_name = "gtk_print_settings_get_double")
    print_settings_get_double :: proc(settings: [^]PrintSettings, key: cstring) -> f64 ---

    @(link_name = "gtk_print_settings_get_double_with_default")
    print_settings_get_double_with_default :: proc(settings: [^]PrintSettings, key: cstring, def: f64) -> f64 ---

    @(link_name = "gtk_print_settings_set_double")
    print_settings_set_double :: proc(settings: [^]PrintSettings, key: cstring, value: f64) ---

    @(link_name = "gtk_print_settings_get_length")
    print_settings_get_length :: proc(settings: [^]PrintSettings, key: cstring, unit: Unit) -> f64 ---

    @(link_name = "gtk_print_settings_set_length")
    print_settings_set_length :: proc(settings: [^]PrintSettings, key: cstring, value: f64, unit: Unit) ---

    @(link_name = "gtk_print_settings_get_int")
    print_settings_get_int :: proc(settings: [^]PrintSettings, key: cstring) -> i32 ---

    @(link_name = "gtk_print_settings_get_int_with_default")
    print_settings_get_int_with_default :: proc(settings: [^]PrintSettings, key: cstring, def: i32) -> i32 ---

    @(link_name = "gtk_print_settings_set_int")
    print_settings_set_int :: proc(settings: [^]PrintSettings, key: cstring, value: i32) ---

    @(link_name = "gtk_print_settings_get_printer")
    print_settings_get_printer :: proc(settings: [^]PrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_printer")
    print_settings_set_printer :: proc(settings: [^]PrintSettings, printer: cstring) ---

    @(link_name = "gtk_print_settings_get_orientation")
    print_settings_get_orientation :: proc(settings: [^]PrintSettings) -> PageOrientation ---

    @(link_name = "gtk_print_settings_set_orientation")
    print_settings_set_orientation :: proc(settings: [^]PrintSettings, orientation: PageOrientation) ---

    @(link_name = "gtk_print_settings_get_paper_size")
    print_settings_get_paper_size :: proc(settings: [^]PrintSettings) -> ^PaperSize ---

    @(link_name = "gtk_print_settings_set_paper_size")
    print_settings_set_paper_size :: proc(settings: [^]PrintSettings, paper_size: ^PaperSize) ---

    @(link_name = "gtk_print_settings_get_paper_width")
    print_settings_get_paper_width :: proc(settings: [^]PrintSettings, unit: Unit) -> f64 ---

    @(link_name = "gtk_print_settings_set_paper_width")
    print_settings_set_paper_width :: proc(settings: [^]PrintSettings, width: f64, unit: Unit) ---

    @(link_name = "gtk_print_settings_get_paper_height")
    print_settings_get_paper_height :: proc(settings: [^]PrintSettings, unit: Unit) -> f64 ---

    @(link_name = "gtk_print_settings_set_paper_height")
    print_settings_set_paper_height :: proc(settings: [^]PrintSettings, height: f64, unit: Unit) ---

    @(link_name = "gtk_print_settings_get_use_color")
    print_settings_get_use_color :: proc(settings: [^]PrintSettings) -> glib.boolean ---

    @(link_name = "gtk_print_settings_set_use_color")
    print_settings_set_use_color :: proc(settings: [^]PrintSettings, use_color: glib.boolean) ---

    @(link_name = "gtk_print_settings_get_collate")
    print_settings_get_collate :: proc(settings: [^]PrintSettings) -> glib.boolean ---

    @(link_name = "gtk_print_settings_set_collate")
    print_settings_set_collate :: proc(settings: [^]PrintSettings, collate: glib.boolean) ---

    @(link_name = "gtk_print_settings_get_reverse")
    print_settings_get_reverse :: proc(settings: [^]PrintSettings) -> glib.boolean ---

    @(link_name = "gtk_print_settings_set_reverse")
    print_settings_set_reverse :: proc(settings: [^]PrintSettings, reverse: glib.boolean) ---

    @(link_name = "gtk_print_settings_get_duplex")
    print_settings_get_duplex :: proc(settings: [^]PrintSettings) -> PrintDuplex ---

    @(link_name = "gtk_print_settings_set_duplex")
    print_settings_set_duplex :: proc(settings: [^]PrintSettings, duplex: PrintDuplex) ---

    @(link_name = "gtk_print_settings_get_quality")
    print_settings_get_quality :: proc(settings: [^]PrintSettings) -> PrintQuality ---

    @(link_name = "gtk_print_settings_set_quality")
    print_settings_set_quality :: proc(settings: [^]PrintSettings, quality: PrintQuality) ---

    @(link_name = "gtk_print_settings_get_n_copies")
    print_settings_get_n_copies :: proc(settings: [^]PrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_set_n_copies")
    print_settings_set_n_copies :: proc(settings: [^]PrintSettings, num_copies: i32) ---

    @(link_name = "gtk_print_settings_get_number_up")
    print_settings_get_number_up :: proc(settings: [^]PrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_set_number_up")
    print_settings_set_number_up :: proc(settings: [^]PrintSettings, number_up: i32) ---

    @(link_name = "gtk_print_settings_get_number_up_layout")
    print_settings_get_number_up_layout :: proc(settings: [^]PrintSettings) -> NumberUpLayout ---

    @(link_name = "gtk_print_settings_set_number_up_layout")
    print_settings_set_number_up_layout :: proc(settings: [^]PrintSettings, number_up_layout: NumberUpLayout) ---

    @(link_name = "gtk_print_settings_get_resolution")
    print_settings_get_resolution :: proc(settings: [^]PrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_set_resolution")
    print_settings_set_resolution :: proc(settings: [^]PrintSettings, resolution: i32) ---

    @(link_name = "gtk_print_settings_get_resolution_x")
    print_settings_get_resolution_x :: proc(settings: [^]PrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_get_resolution_y")
    print_settings_get_resolution_y :: proc(settings: [^]PrintSettings) -> i32 ---

    @(link_name = "gtk_print_settings_set_resolution_xy")
    print_settings_set_resolution_xy :: proc(settings: [^]PrintSettings, resolution_x: i32, resolution_y: i32) ---

    @(link_name = "gtk_print_settings_get_printer_lpi")
    print_settings_get_printer_lpi :: proc(settings: [^]PrintSettings) -> f64 ---

    @(link_name = "gtk_print_settings_set_printer_lpi")
    print_settings_set_printer_lpi :: proc(settings: [^]PrintSettings, lpi: f64) ---

    @(link_name = "gtk_print_settings_get_scale")
    print_settings_get_scale :: proc(settings: [^]PrintSettings) -> f64 ---

    @(link_name = "gtk_print_settings_set_scale")
    print_settings_set_scale :: proc(settings: [^]PrintSettings, scale: f64) ---

    @(link_name = "gtk_print_settings_get_print_pages")
    print_settings_get_print_pages :: proc(settings: [^]PrintSettings) -> PrintPages ---

    @(link_name = "gtk_print_settings_set_print_pages")
    print_settings_set_print_pages :: proc(settings: [^]PrintSettings, pages: PrintPages) ---

    @(link_name = "gtk_print_settings_get_page_ranges")
    print_settings_get_page_ranges :: proc(settings: [^]PrintSettings, num_ranges: [^]i32) -> ^PageRange ---

    @(link_name = "gtk_print_settings_set_page_ranges")
    print_settings_set_page_ranges :: proc(settings: [^]PrintSettings, page_ranges: [^]PageRange, num_ranges: i32) ---

    @(link_name = "gtk_print_settings_get_page_set")
    print_settings_get_page_set :: proc(settings: [^]PrintSettings) -> PageSet ---

    @(link_name = "gtk_print_settings_set_page_set")
    print_settings_set_page_set :: proc(settings: [^]PrintSettings, page_set: PageSet) ---

    @(link_name = "gtk_print_settings_get_default_source")
    print_settings_get_default_source :: proc(settings: [^]PrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_default_source")
    print_settings_set_default_source :: proc(settings: [^]PrintSettings, default_source: cstring) ---

    @(link_name = "gtk_print_settings_get_media_type")
    print_settings_get_media_type :: proc(settings: [^]PrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_media_type")
    print_settings_set_media_type :: proc(settings: [^]PrintSettings, media_type: cstring) ---

    @(link_name = "gtk_print_settings_get_dither")
    print_settings_get_dither :: proc(settings: [^]PrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_dither")
    print_settings_set_dither :: proc(settings: [^]PrintSettings, dither: cstring) ---

    @(link_name = "gtk_print_settings_get_finishings")
    print_settings_get_finishings :: proc(settings: [^]PrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_finishings")
    print_settings_set_finishings :: proc(settings: [^]PrintSettings, finishings: cstring) ---

    @(link_name = "gtk_print_settings_get_output_bin")
    print_settings_get_output_bin :: proc(settings: [^]PrintSettings) -> cstring ---

    @(link_name = "gtk_print_settings_set_output_bin")
    print_settings_set_output_bin :: proc(settings: [^]PrintSettings, output_bin: cstring) ---

    @(link_name = "gtk_print_settings_to_gvariant")
    print_settings_to_gvariant :: proc(settings: [^]PrintSettings) -> ^glib.Variant ---

    @(link_name = "gtk_print_settings_new_from_gvariant")
    print_settings_new_from_gvariant :: proc(variant: ^glib.Variant) -> ^PrintSettings ---

    @(link_name = "gtk_print_operation_preview_get_type")
    print_operation_preview_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_operation_preview_render_page")
    print_operation_preview_render_page :: proc(preview: ^PrintOperationPreview, page_nr: i32) ---

    @(link_name = "gtk_print_operation_preview_end_preview")
    print_operation_preview_end_preview :: proc(preview: ^PrintOperationPreview) ---

    @(link_name = "gtk_print_operation_preview_is_selected")
    print_operation_preview_is_selected :: proc(preview: ^PrintOperationPreview, page_nr: i32) -> glib.boolean ---

    @(link_name = "gtk_print_error_quark")
    print_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_print_operation_get_type")
    print_operation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_print_operation_new")
    print_operation_new :: proc() -> ^PrintOperation ---

    @(link_name = "gtk_print_operation_set_default_page_setup")
    print_operation_set_default_page_setup :: proc(op: ^PrintOperation, default_page_setup: ^PageSetup) ---

    @(link_name = "gtk_print_operation_get_default_page_setup")
    print_operation_get_default_page_setup :: proc(op: ^PrintOperation) -> ^PageSetup ---

    @(link_name = "gtk_print_operation_set_print_settings")
    print_operation_set_print_settings :: proc(op: ^PrintOperation, print_settings: [^]PrintSettings) ---

    @(link_name = "gtk_print_operation_get_print_settings")
    print_operation_get_print_settings :: proc(op: ^PrintOperation) -> ^PrintSettings ---

    @(link_name = "gtk_print_operation_set_job_name")
    print_operation_set_job_name :: proc(op: ^PrintOperation, job_name: cstring) ---

    @(link_name = "gtk_print_operation_set_n_pages")
    print_operation_set_n_pages :: proc(op: ^PrintOperation, n_pages: i32) ---

    @(link_name = "gtk_print_operation_set_current_page")
    print_operation_set_current_page :: proc(op: ^PrintOperation, current_page: i32) ---

    @(link_name = "gtk_print_operation_set_use_full_page")
    print_operation_set_use_full_page :: proc(op: ^PrintOperation, full_page: glib.boolean) ---

    @(link_name = "gtk_print_operation_set_unit")
    print_operation_set_unit :: proc(op: ^PrintOperation, unit: Unit) ---

    @(link_name = "gtk_print_operation_set_export_filename")
    print_operation_set_export_filename :: proc(op: ^PrintOperation, filename: cstring) ---

    @(link_name = "gtk_print_operation_set_track_print_status")
    print_operation_set_track_print_status :: proc(op: ^PrintOperation, track_status: glib.boolean) ---

    @(link_name = "gtk_print_operation_set_show_progress")
    print_operation_set_show_progress :: proc(op: ^PrintOperation, show_progress: glib.boolean) ---

    @(link_name = "gtk_print_operation_set_allow_async")
    print_operation_set_allow_async :: proc(op: ^PrintOperation, allow_async: glib.boolean) ---

    @(link_name = "gtk_print_operation_set_custom_tab_label")
    print_operation_set_custom_tab_label :: proc(op: ^PrintOperation, label: cstring) ---

    @(link_name = "gtk_print_operation_run")
    print_operation_run :: proc(op: ^PrintOperation, action: PrintOperationAction, parent: ^Window, error: ^^glib.Error) -> PrintOperationResult ---

    @(link_name = "gtk_print_operation_get_error")
    print_operation_get_error :: proc(op: ^PrintOperation, error: ^^glib.Error) ---

    @(link_name = "gtk_print_operation_get_status")
    print_operation_get_status :: proc(op: ^PrintOperation) -> PrintStatus ---

    @(link_name = "gtk_print_operation_get_status_string")
    print_operation_get_status_string :: proc(op: ^PrintOperation) -> cstring ---

    @(link_name = "gtk_print_operation_is_finished")
    print_operation_is_finished :: proc(op: ^PrintOperation) -> glib.boolean ---

    @(link_name = "gtk_print_operation_cancel")
    print_operation_cancel :: proc(op: ^PrintOperation) ---

    @(link_name = "gtk_print_operation_draw_page_finish")
    print_operation_draw_page_finish :: proc(op: ^PrintOperation) ---

    @(link_name = "gtk_print_operation_set_defer_drawing")
    print_operation_set_defer_drawing :: proc(op: ^PrintOperation) ---

    @(link_name = "gtk_print_operation_set_support_selection")
    print_operation_set_support_selection :: proc(op: ^PrintOperation, support_selection: glib.boolean) ---

    @(link_name = "gtk_print_operation_get_support_selection")
    print_operation_get_support_selection :: proc(op: ^PrintOperation) -> glib.boolean ---

    @(link_name = "gtk_print_operation_set_has_selection")
    print_operation_set_has_selection :: proc(op: ^PrintOperation, has_selection: glib.boolean) ---

    @(link_name = "gtk_print_operation_get_has_selection")
    print_operation_get_has_selection :: proc(op: ^PrintOperation) -> glib.boolean ---

    @(link_name = "gtk_print_operation_set_embed_page_setup")
    print_operation_set_embed_page_setup :: proc(op: ^PrintOperation, embed: glib.boolean) ---

    @(link_name = "gtk_print_operation_get_embed_page_setup")
    print_operation_get_embed_page_setup :: proc(op: ^PrintOperation) -> glib.boolean ---

    @(link_name = "gtk_print_operation_get_n_pages_to_print")
    print_operation_get_n_pages_to_print :: proc(op: ^PrintOperation) -> i32 ---

    @(link_name = "gtk_print_run_page_setup_dialog")
    print_run_page_setup_dialog :: proc(parent: ^Window, page_setup: ^PageSetup, settings: [^]PrintSettings) -> ^PageSetup ---

    @(link_name = "gtk_print_run_page_setup_dialog_async")
    print_run_page_setup_dialog_async :: proc(parent: ^Window, page_setup: ^PageSetup, settings: [^]PrintSettings, done_cb: PageSetupDoneFunc, data: glib.pointer) ---

    @(link_name = "gtk_progress_bar_get_type")
    progress_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_progress_bar_new")
    progress_bar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_progress_bar_pulse")
    progress_bar_pulse :: proc(pbar: ^ProgressBar) ---

    @(link_name = "gtk_progress_bar_set_text")
    progress_bar_set_text :: proc(pbar: ^ProgressBar, text: cstring) ---

    @(link_name = "gtk_progress_bar_set_fraction")
    progress_bar_set_fraction :: proc(pbar: ^ProgressBar, fraction: f64) ---

    @(link_name = "gtk_progress_bar_set_pulse_step")
    progress_bar_set_pulse_step :: proc(pbar: ^ProgressBar, fraction: f64) ---

    @(link_name = "gtk_progress_bar_set_inverted")
    progress_bar_set_inverted :: proc(pbar: ^ProgressBar, inverted: glib.boolean) ---

    @(link_name = "gtk_progress_bar_get_text")
    progress_bar_get_text :: proc(pbar: ^ProgressBar) -> cstring ---

    @(link_name = "gtk_progress_bar_get_fraction")
    progress_bar_get_fraction :: proc(pbar: ^ProgressBar) -> f64 ---

    @(link_name = "gtk_progress_bar_get_pulse_step")
    progress_bar_get_pulse_step :: proc(pbar: ^ProgressBar) -> f64 ---

    @(link_name = "gtk_progress_bar_get_inverted")
    progress_bar_get_inverted :: proc(pbar: ^ProgressBar) -> glib.boolean ---

    @(link_name = "gtk_progress_bar_set_ellipsize")
    progress_bar_set_ellipsize :: proc(pbar: ^ProgressBar, mode: pango.EllipsizeMode) ---

    @(link_name = "gtk_progress_bar_get_ellipsize")
    progress_bar_get_ellipsize :: proc(pbar: ^ProgressBar) -> pango.EllipsizeMode ---

    @(link_name = "gtk_progress_bar_set_show_text")
    progress_bar_set_show_text :: proc(pbar: ^ProgressBar, show_text: glib.boolean) ---

    @(link_name = "gtk_progress_bar_get_show_text")
    progress_bar_get_show_text :: proc(pbar: ^ProgressBar) -> glib.boolean ---

    @(link_name = "gtk_range_get_type")
    range_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_range_set_adjustment")
    range_set_adjustment :: proc(range: ^Range, adjustment: ^Adjustment) ---

    @(link_name = "gtk_range_get_adjustment")
    range_get_adjustment :: proc(range: ^Range) -> ^Adjustment ---

    @(link_name = "gtk_range_set_inverted")
    range_set_inverted :: proc(range: ^Range, setting: glib.boolean) ---

    @(link_name = "gtk_range_get_inverted")
    range_get_inverted :: proc(range: ^Range) -> glib.boolean ---

    @(link_name = "gtk_range_set_flippable")
    range_set_flippable :: proc(range: ^Range, flippable: glib.boolean) ---

    @(link_name = "gtk_range_get_flippable")
    range_get_flippable :: proc(range: ^Range) -> glib.boolean ---

    @(link_name = "gtk_range_set_slider_size_fixed")
    range_set_slider_size_fixed :: proc(range: ^Range, size_fixed: glib.boolean) ---

    @(link_name = "gtk_range_get_slider_size_fixed")
    range_get_slider_size_fixed :: proc(range: ^Range) -> glib.boolean ---

    @(link_name = "gtk_range_get_range_rect")
    range_get_range_rect :: proc(range: ^Range, range_rect: ^Rectangle) ---

    @(link_name = "gtk_range_get_slider_range")
    range_get_slider_range :: proc(range: ^Range, slider_start: ^i32, slider_end: ^i32) ---

    @(link_name = "gtk_range_set_increments")
    range_set_increments :: proc(range: ^Range, step: f64, page: f64) ---

    @(link_name = "gtk_range_set_range")
    range_set_range :: proc(range: ^Range, min: f64, max: f64) ---

    @(link_name = "gtk_range_set_value")
    range_set_value :: proc(range: ^Range, value: f64) ---

    @(link_name = "gtk_range_get_value")
    range_get_value :: proc(range: ^Range) -> f64 ---

    @(link_name = "gtk_range_set_show_fill_level")
    range_set_show_fill_level :: proc(range: ^Range, show_fill_level: glib.boolean) ---

    @(link_name = "gtk_range_get_show_fill_level")
    range_get_show_fill_level :: proc(range: ^Range) -> glib.boolean ---

    @(link_name = "gtk_range_set_restrict_to_fill_level")
    range_set_restrict_to_fill_level :: proc(range: ^Range, restrict_to_fill_level: glib.boolean) ---

    @(link_name = "gtk_range_get_restrict_to_fill_level")
    range_get_restrict_to_fill_level :: proc(range: ^Range) -> glib.boolean ---

    @(link_name = "gtk_range_set_fill_level")
    range_set_fill_level :: proc(range: ^Range, fill_level: f64) ---

    @(link_name = "gtk_range_get_fill_level")
    range_get_fill_level :: proc(range: ^Range) -> f64 ---

    @(link_name = "gtk_range_set_round_digits")
    range_set_round_digits :: proc(range: ^Range, round_digits: i32) ---

    @(link_name = "gtk_range_get_round_digits")
    range_get_round_digits :: proc(range: ^Range) -> i32 ---

    @(link_name = "gtk_recent_manager_error_quark")
    recent_manager_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_recent_manager_get_type")
    recent_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_recent_manager_new")
    recent_manager_new :: proc() -> ^RecentManager ---

    @(link_name = "gtk_recent_manager_get_default")
    recent_manager_get_default :: proc() -> ^RecentManager ---

    @(link_name = "gtk_recent_manager_add_item")
    recent_manager_add_item :: proc(manager: ^RecentManager, uri: cstring) -> glib.boolean ---

    @(link_name = "gtk_recent_manager_add_full")
    recent_manager_add_full :: proc(manager: ^RecentManager, uri: cstring, recent_data: ^RecentData) -> glib.boolean ---

    @(link_name = "gtk_recent_manager_remove_item")
    recent_manager_remove_item :: proc(manager: ^RecentManager, uri: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_recent_manager_lookup_item")
    recent_manager_lookup_item :: proc(manager: ^RecentManager, uri: cstring, error: ^^glib.Error) -> ^RecentInfo ---

    @(link_name = "gtk_recent_manager_has_item")
    recent_manager_has_item :: proc(manager: ^RecentManager, uri: cstring) -> glib.boolean ---

    @(link_name = "gtk_recent_manager_move_item")
    recent_manager_move_item :: proc(manager: ^RecentManager, uri: cstring, new_uri: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_recent_manager_get_items")
    recent_manager_get_items :: proc(manager: ^RecentManager) -> ^glib.List ---

    @(link_name = "gtk_recent_manager_purge_items")
    recent_manager_purge_items :: proc(manager: ^RecentManager, error: ^^glib.Error) -> i32 ---

    @(link_name = "gtk_recent_info_get_type")
    recent_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_recent_info_ref")
    recent_info_ref :: proc(info: ^RecentInfo) -> ^RecentInfo ---

    @(link_name = "gtk_recent_info_unref")
    recent_info_unref :: proc(info: ^RecentInfo) ---

    @(link_name = "gtk_recent_info_get_uri")
    recent_info_get_uri :: proc(info: ^RecentInfo) -> cstring ---

    @(link_name = "gtk_recent_info_get_display_name")
    recent_info_get_display_name :: proc(info: ^RecentInfo) -> cstring ---

    @(link_name = "gtk_recent_info_get_description")
    recent_info_get_description :: proc(info: ^RecentInfo) -> cstring ---

    @(link_name = "gtk_recent_info_get_mime_type")
    recent_info_get_mime_type :: proc(info: ^RecentInfo) -> cstring ---

    @(link_name = "gtk_recent_info_get_added")
    recent_info_get_added :: proc(info: ^RecentInfo) -> ^glib.DateTime ---

    @(link_name = "gtk_recent_info_get_modified")
    recent_info_get_modified :: proc(info: ^RecentInfo) -> ^glib.DateTime ---

    @(link_name = "gtk_recent_info_get_visited")
    recent_info_get_visited :: proc(info: ^RecentInfo) -> ^glib.DateTime ---

    @(link_name = "gtk_recent_info_get_private_hint")
    recent_info_get_private_hint :: proc(info: ^RecentInfo) -> glib.boolean ---

    @(link_name = "gtk_recent_info_get_application_info")
    recent_info_get_application_info :: proc(info: ^RecentInfo, app_name: cstring, app_exec: ^cstring, count: ^glib.uint_, stamp: ^^glib.DateTime) -> glib.boolean ---

    @(link_name = "gtk_recent_info_create_app_info")
    recent_info_create_app_info :: proc(info: ^RecentInfo, app_name: cstring, error: ^^glib.Error) -> ^gio.AppInfo ---

    @(link_name = "gtk_recent_info_get_applications")
    recent_info_get_applications :: proc(info: ^RecentInfo, length: ^glib.size) -> ^cstring ---

    @(link_name = "gtk_recent_info_last_application")
    recent_info_last_application :: proc(info: ^RecentInfo) -> cstring ---

    @(link_name = "gtk_recent_info_has_application")
    recent_info_has_application :: proc(info: ^RecentInfo, app_name: cstring) -> glib.boolean ---

    @(link_name = "gtk_recent_info_get_groups")
    recent_info_get_groups :: proc(info: ^RecentInfo, length: ^glib.size) -> ^cstring ---

    @(link_name = "gtk_recent_info_has_group")
    recent_info_has_group :: proc(info: ^RecentInfo, group_name: cstring) -> glib.boolean ---

    @(link_name = "gtk_recent_info_get_gicon")
    recent_info_get_gicon :: proc(info: ^RecentInfo) -> ^gio.Icon ---

    @(link_name = "gtk_recent_info_get_short_name")
    recent_info_get_short_name :: proc(info: ^RecentInfo) -> cstring ---

    @(link_name = "gtk_recent_info_get_uri_display")
    recent_info_get_uri_display :: proc(info: ^RecentInfo) -> cstring ---

    @(link_name = "gtk_recent_info_get_age")
    recent_info_get_age :: proc(info: ^RecentInfo) -> i32 ---

    @(link_name = "gtk_recent_info_is_local")
    recent_info_is_local :: proc(info: ^RecentInfo) -> glib.boolean ---

    @(link_name = "gtk_recent_info_exists")
    recent_info_exists :: proc(info: ^RecentInfo) -> glib.boolean ---

    @(link_name = "gtk_recent_info_match")
    recent_info_match :: proc(info_a: ^RecentInfo, info_b: ^RecentInfo) -> glib.boolean ---

    @(link_name = "_gtk_recent_manager_sync")
    _gtk_recent_manager_sync :: proc() ---

    @(link_name = "gtk_snapshot_get_type")
    snapshot_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_snapshot_new")
    snapshot_new :: proc() -> ^Snapshot ---

    @(link_name = "gtk_snapshot_free_to_node")
    snapshot_free_to_node :: proc(snapshot: ^Snapshot) -> ^RenderNode ---

    @(link_name = "gtk_snapshot_free_to_paintable")
    snapshot_free_to_paintable :: proc(snapshot: ^Snapshot, size_p: ^graphene.size_t) -> ^Paintable ---

    @(link_name = "gtk_snapshot_to_node")
    snapshot_to_node :: proc(snapshot: ^Snapshot) -> ^RenderNode ---

    @(link_name = "gtk_snapshot_to_paintable")
    snapshot_to_paintable :: proc(snapshot: ^Snapshot, size_p: ^graphene.size_t) -> ^Paintable ---

    @(link_name = "gtk_snapshot_push_debug")
    snapshot_push_debug :: proc(snapshot: ^Snapshot, message: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_snapshot_push_opacity")
    snapshot_push_opacity :: proc(snapshot: ^Snapshot, opacity: f64) ---

    @(link_name = "gtk_snapshot_push_blur")
    snapshot_push_blur :: proc(snapshot: ^Snapshot, radius: f64) ---

    @(link_name = "gtk_snapshot_push_color_matrix")
    snapshot_push_color_matrix :: proc(snapshot: ^Snapshot, color_matrix: ^graphene.matrix_t, color_offset: ^graphene.vec4_t) ---

    @(link_name = "gtk_snapshot_push_repeat")
    snapshot_push_repeat :: proc(snapshot: ^Snapshot, bounds: [^]graphene.rect_t, child_bounds: [^]graphene.rect_t) ---

    @(link_name = "gtk_snapshot_push_clip")
    snapshot_push_clip :: proc(snapshot: ^Snapshot, bounds: [^]graphene.rect_t) ---

    @(link_name = "gtk_snapshot_push_rounded_clip")
    snapshot_push_rounded_clip :: proc(snapshot: ^Snapshot, bounds: [^]RoundedRect) ---

    @(link_name = "gtk_snapshot_push_shadow")
    snapshot_push_shadow :: proc(snapshot: ^Snapshot, shadow: ^Shadow, n_shadows: glib.size) ---

    @(link_name = "gtk_snapshot_push_blend")
    snapshot_push_blend :: proc(snapshot: ^Snapshot, blend_mode: BlendMode) ---

    @(link_name = "gtk_snapshot_push_mask")
    snapshot_push_mask :: proc(snapshot: ^Snapshot, mask_mode: MaskMode) ---

    @(link_name = "gtk_snapshot_push_cross_fade")
    snapshot_push_cross_fade :: proc(snapshot: ^Snapshot, progress: f64) ---

    @(link_name = "gtk_snapshot_push_gl_shader")
    snapshot_push_gl_shader :: proc(snapshot: ^Snapshot, shader: ^GLShader, bounds: [^]graphene.rect_t, take_args: [^]glib.Bytes) ---

    @(link_name = "gtk_snapshot_gl_shader_pop_texture")
    snapshot_gl_shader_pop_texture :: proc(snapshot: ^Snapshot) ---

    @(link_name = "gtk_snapshot_pop")
    snapshot_pop :: proc(snapshot: ^Snapshot) ---

    @(link_name = "gtk_snapshot_save")
    snapshot_save :: proc(snapshot: ^Snapshot) ---

    @(link_name = "gtk_snapshot_restore")
    snapshot_restore :: proc(snapshot: ^Snapshot) ---

    @(link_name = "gtk_snapshot_transform")
    snapshot_transform :: proc(snapshot: ^Snapshot, transform: ^Transform) ---

    @(link_name = "gtk_snapshot_transform_matrix")
    snapshot_transform_matrix :: proc(snapshot: ^Snapshot, matrix_p: ^graphene.matrix_t) ---

    @(link_name = "gtk_snapshot_translate")
    snapshot_translate :: proc(snapshot: ^Snapshot, point: ^graphene.point_t) ---

    @(link_name = "gtk_snapshot_translate_3d")
    snapshot_translate_3d :: proc(snapshot: ^Snapshot, point: ^graphene.point3d_t) ---

    @(link_name = "gtk_snapshot_rotate")
    snapshot_rotate :: proc(snapshot: ^Snapshot, angle: f32) ---

    @(link_name = "gtk_snapshot_rotate_3d")
    snapshot_rotate_3d :: proc(snapshot: ^Snapshot, angle: f32, axis: [^]graphene.vec3_t) ---

    @(link_name = "gtk_snapshot_scale")
    snapshot_scale :: proc(snapshot: ^Snapshot, factor_x: f32, factor_y: f32) ---

    @(link_name = "gtk_snapshot_scale_3d")
    snapshot_scale_3d :: proc(snapshot: ^Snapshot, factor_x: f32, factor_y: f32, factor_z: f32) ---

    @(link_name = "gtk_snapshot_perspective")
    snapshot_perspective :: proc(snapshot: ^Snapshot, depth: f32) ---

    @(link_name = "gtk_snapshot_append_node")
    snapshot_append_node :: proc(snapshot: ^Snapshot, node: ^RenderNode) ---

    @(link_name = "gtk_snapshot_append_cairo")
    snapshot_append_cairo :: proc(snapshot: ^Snapshot, bounds: [^]graphene.rect_t) -> ^cairo.context_t ---

    @(link_name = "gtk_snapshot_append_texture")
    snapshot_append_texture :: proc(snapshot: ^Snapshot, texture: ^Texture, bounds: [^]graphene.rect_t) ---

    @(link_name = "gtk_snapshot_append_scaled_texture")
    snapshot_append_scaled_texture :: proc(snapshot: ^Snapshot, texture: ^Texture, filter: ScalingFilter, bounds: [^]graphene.rect_t) ---

    @(link_name = "gtk_snapshot_append_color")
    snapshot_append_color :: proc(snapshot: ^Snapshot, color: ^RGBA, bounds: [^]graphene.rect_t) ---

    @(link_name = "gtk_snapshot_append_linear_gradient")
    snapshot_append_linear_gradient :: proc(snapshot: ^Snapshot, bounds: [^]graphene.rect_t, start_point: ^graphene.point_t, end_point: ^graphene.point_t, stops: [^]ColorStop, n_stops: glib.size) ---

    @(link_name = "gtk_snapshot_append_repeating_linear_gradient")
    snapshot_append_repeating_linear_gradient :: proc(snapshot: ^Snapshot, bounds: [^]graphene.rect_t, start_point: ^graphene.point_t, end_point: ^graphene.point_t, stops: [^]ColorStop, n_stops: glib.size) ---

    @(link_name = "gtk_snapshot_append_radial_gradient")
    snapshot_append_radial_gradient :: proc(snapshot: ^Snapshot, bounds: [^]graphene.rect_t, center: ^graphene.point_t, hradius: f32, vradius: f32, start: f32, end: f32, stops: [^]ColorStop, n_stops: glib.size) ---

    @(link_name = "gtk_snapshot_append_repeating_radial_gradient")
    snapshot_append_repeating_radial_gradient :: proc(snapshot: ^Snapshot, bounds: [^]graphene.rect_t, center: ^graphene.point_t, hradius: f32, vradius: f32, start: f32, end: f32, stops: [^]ColorStop, n_stops: glib.size) ---

    @(link_name = "gtk_snapshot_append_conic_gradient")
    snapshot_append_conic_gradient :: proc(snapshot: ^Snapshot, bounds: [^]graphene.rect_t, center: ^graphene.point_t, rotation: f32, stops: [^]ColorStop, n_stops: glib.size) ---

    @(link_name = "gtk_snapshot_append_border")
    snapshot_append_border :: proc(snapshot: ^Snapshot, outline: ^RoundedRect, border_width: [4]f32, border_color: [4]RGBA) ---

    @(link_name = "gtk_snapshot_append_inset_shadow")
    snapshot_append_inset_shadow :: proc(snapshot: ^Snapshot, outline: ^RoundedRect, color: ^RGBA, dx: f32, dy: f32, spread: f32, blur_radius: f32) ---

    @(link_name = "gtk_snapshot_append_outset_shadow")
    snapshot_append_outset_shadow :: proc(snapshot: ^Snapshot, outline: ^RoundedRect, color: ^RGBA, dx: f32, dy: f32, spread: f32, blur_radius: f32) ---

    @(link_name = "gtk_snapshot_append_layout")
    snapshot_append_layout :: proc(snapshot: ^Snapshot, layout: ^pango.Layout, color: ^RGBA) ---

    @(link_name = "gtk_render_check")
    render_check :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_option")
    render_option :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_arrow")
    render_arrow :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, angle: f64, x: f64, y: f64, size_p: f64) ---

    @(link_name = "gtk_render_background")
    render_background :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_frame")
    render_frame :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_expander")
    render_expander :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_focus")
    render_focus :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_layout")
    render_layout :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, layout: ^pango.Layout) ---

    @(link_name = "gtk_render_line")
    render_line :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x0: f64, y0: f64, x1: f64, y1: f64) ---

    @(link_name = "gtk_render_handle")
    render_handle :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_activity")
    render_activity :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_render_icon")
    render_icon :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, texture: ^Texture, x: f64, y: f64) ---

    @(link_name = "gtk_snapshot_render_background")
    snapshot_render_background :: proc(snapshot: ^Snapshot, context_p: ^StyleContext, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_snapshot_render_frame")
    snapshot_render_frame :: proc(snapshot: ^Snapshot, context_p: ^StyleContext, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_snapshot_render_focus")
    snapshot_render_focus :: proc(snapshot: ^Snapshot, context_p: ^StyleContext, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "gtk_snapshot_render_layout")
    snapshot_render_layout :: proc(snapshot: ^Snapshot, context_p: ^StyleContext, x: f64, y: f64, layout: ^pango.Layout) ---

    @(link_name = "gtk_snapshot_render_insertion_cursor")
    snapshot_render_insertion_cursor :: proc(snapshot: ^Snapshot, context_p: ^StyleContext, x: f64, y: f64, layout: ^pango.Layout, index: i32, direction: pango.Direction) ---

    @(link_name = "gtk_revealer_get_type")
    revealer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_revealer_new")
    revealer_new :: proc() -> ^Widget ---

    @(link_name = "gtk_revealer_get_reveal_child")
    revealer_get_reveal_child :: proc(revealer: ^Revealer) -> glib.boolean ---

    @(link_name = "gtk_revealer_set_reveal_child")
    revealer_set_reveal_child :: proc(revealer: ^Revealer, reveal_child: glib.boolean) ---

    @(link_name = "gtk_revealer_get_child_revealed")
    revealer_get_child_revealed :: proc(revealer: ^Revealer) -> glib.boolean ---

    @(link_name = "gtk_revealer_get_transition_duration")
    revealer_get_transition_duration :: proc(revealer: ^Revealer) -> glib.uint_ ---

    @(link_name = "gtk_revealer_set_transition_duration")
    revealer_set_transition_duration :: proc(revealer: ^Revealer, duration: glib.uint_) ---

    @(link_name = "gtk_revealer_set_transition_type")
    revealer_set_transition_type :: proc(revealer: ^Revealer, transition: RevealerTransitionType) ---

    @(link_name = "gtk_revealer_get_transition_type")
    revealer_get_transition_type :: proc(revealer: ^Revealer) -> RevealerTransitionType ---

    @(link_name = "gtk_revealer_set_child")
    revealer_set_child :: proc(revealer: ^Revealer, child: ^Widget) ---

    @(link_name = "gtk_revealer_get_child")
    revealer_get_child :: proc(revealer: ^Revealer) -> ^Widget ---

    @(link_name = "gtk_root_get_type")
    root_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_root_get_display")
    root_get_display :: proc(self: ^Root) -> ^Display ---

    @(link_name = "gtk_root_set_focus")
    root_set_focus :: proc(self: ^Root, focus: [^]Widget) ---

    @(link_name = "gtk_root_get_focus")
    root_get_focus :: proc(self: ^Root) -> ^Widget ---

    @(link_name = "gtk_scale_get_type")
    scale_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scale_new")
    scale_new :: proc(orientation: Orientation, adjustment: ^Adjustment) -> ^Widget ---

    @(link_name = "gtk_scale_new_with_range")
    scale_new_with_range :: proc(orientation: Orientation, min: f64, max: f64, step: f64) -> ^Widget ---

    @(link_name = "gtk_scale_set_digits")
    scale_set_digits :: proc(scale: ^Scale, digits: i32) ---

    @(link_name = "gtk_scale_get_digits")
    scale_get_digits :: proc(scale: ^Scale) -> i32 ---

    @(link_name = "gtk_scale_set_draw_value")
    scale_set_draw_value :: proc(scale: ^Scale, draw_value: glib.boolean) ---

    @(link_name = "gtk_scale_get_draw_value")
    scale_get_draw_value :: proc(scale: ^Scale) -> glib.boolean ---

    @(link_name = "gtk_scale_set_has_origin")
    scale_set_has_origin :: proc(scale: ^Scale, has_origin: glib.boolean) ---

    @(link_name = "gtk_scale_get_has_origin")
    scale_get_has_origin :: proc(scale: ^Scale) -> glib.boolean ---

    @(link_name = "gtk_scale_set_value_pos")
    scale_set_value_pos :: proc(scale: ^Scale, pos: PositionType) ---

    @(link_name = "gtk_scale_get_value_pos")
    scale_get_value_pos :: proc(scale: ^Scale) -> PositionType ---

    @(link_name = "gtk_scale_get_layout")
    scale_get_layout :: proc(scale: ^Scale) -> ^pango.Layout ---

    @(link_name = "gtk_scale_get_layout_offsets")
    scale_get_layout_offsets :: proc(scale: ^Scale, x: ^i32, y: ^i32) ---

    @(link_name = "gtk_scale_add_mark")
    scale_add_mark :: proc(scale: ^Scale, value: f64, position: PositionType, markup: cstring) ---

    @(link_name = "gtk_scale_clear_marks")
    scale_clear_marks :: proc(scale: ^Scale) ---

    @(link_name = "gtk_scale_set_format_value_func")
    scale_set_format_value_func :: proc(scale: ^Scale, func: ScaleFormatValueFunc, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---

    @(link_name = "gtk_scale_button_get_type")
    scale_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scale_button_new")
    scale_button_new :: proc(min: f64, max: f64, step: f64, icons: [^]cstring) -> ^Widget ---

    @(link_name = "gtk_scale_button_set_icons")
    scale_button_set_icons :: proc(button: ^ScaleButton, icons: [^]cstring) ---

    @(link_name = "gtk_scale_button_get_value")
    scale_button_get_value :: proc(button: ^ScaleButton) -> f64 ---

    @(link_name = "gtk_scale_button_set_value")
    scale_button_set_value :: proc(button: ^ScaleButton, value: f64) ---

    @(link_name = "gtk_scale_button_get_adjustment")
    scale_button_get_adjustment :: proc(button: ^ScaleButton) -> ^Adjustment ---

    @(link_name = "gtk_scale_button_set_adjustment")
    scale_button_set_adjustment :: proc(button: ^ScaleButton, adjustment: ^Adjustment) ---

    @(link_name = "gtk_scale_button_get_plus_button")
    scale_button_get_plus_button :: proc(button: ^ScaleButton) -> ^Widget ---

    @(link_name = "gtk_scale_button_get_minus_button")
    scale_button_get_minus_button :: proc(button: ^ScaleButton) -> ^Widget ---

    @(link_name = "gtk_scale_button_get_popup")
    scale_button_get_popup :: proc(button: ^ScaleButton) -> ^Widget ---

    @(link_name = "gtk_scale_button_get_active")
    scale_button_get_active :: proc(button: ^ScaleButton) -> glib.boolean ---

    @(link_name = "gtk_scrollable_get_type")
    scrollable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scrollable_get_hadjustment")
    scrollable_get_hadjustment :: proc(scrollable: ^Scrollable) -> ^Adjustment ---

    @(link_name = "gtk_scrollable_set_hadjustment")
    scrollable_set_hadjustment :: proc(scrollable: ^Scrollable, hadjustment: ^Adjustment) ---

    @(link_name = "gtk_scrollable_get_vadjustment")
    scrollable_get_vadjustment :: proc(scrollable: ^Scrollable) -> ^Adjustment ---

    @(link_name = "gtk_scrollable_set_vadjustment")
    scrollable_set_vadjustment :: proc(scrollable: ^Scrollable, vadjustment: ^Adjustment) ---

    @(link_name = "gtk_scrollable_get_hscroll_policy")
    scrollable_get_hscroll_policy :: proc(scrollable: ^Scrollable) -> ScrollablePolicy ---

    @(link_name = "gtk_scrollable_set_hscroll_policy")
    scrollable_set_hscroll_policy :: proc(scrollable: ^Scrollable, policy: ScrollablePolicy) ---

    @(link_name = "gtk_scrollable_get_vscroll_policy")
    scrollable_get_vscroll_policy :: proc(scrollable: ^Scrollable) -> ScrollablePolicy ---

    @(link_name = "gtk_scrollable_set_vscroll_policy")
    scrollable_set_vscroll_policy :: proc(scrollable: ^Scrollable, policy: ScrollablePolicy) ---

    @(link_name = "gtk_scrollable_get_border")
    scrollable_get_border :: proc(scrollable: ^Scrollable, border: ^Border) -> glib.boolean ---

    @(link_name = "gtk_scrollbar_get_type")
    scrollbar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scrollbar_new")
    scrollbar_new :: proc(orientation: Orientation, adjustment: ^Adjustment) -> ^Widget ---

    @(link_name = "gtk_scrollbar_set_adjustment")
    scrollbar_set_adjustment :: proc(self: ^Scrollbar, adjustment: ^Adjustment) ---

    @(link_name = "gtk_scrollbar_get_adjustment")
    scrollbar_get_adjustment :: proc(self: ^Scrollbar) -> ^Adjustment ---

    @(link_name = "gtk_scroll_info_get_type")
    scroll_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scroll_info_new")
    scroll_info_new :: proc() -> ^ScrollInfo ---

    @(link_name = "gtk_scroll_info_ref")
    scroll_info_ref :: proc(self: ^ScrollInfo) -> ^ScrollInfo ---

    @(link_name = "gtk_scroll_info_unref")
    scroll_info_unref :: proc(self: ^ScrollInfo) ---

    @(link_name = "gtk_scroll_info_set_enable_horizontal")
    scroll_info_set_enable_horizontal :: proc(self: ^ScrollInfo, horizontal: glib.boolean) ---

    @(link_name = "gtk_scroll_info_get_enable_horizontal")
    scroll_info_get_enable_horizontal :: proc(self: ^ScrollInfo) -> glib.boolean ---

    @(link_name = "gtk_scroll_info_set_enable_vertical")
    scroll_info_set_enable_vertical :: proc(self: ^ScrollInfo, vertical: glib.boolean) ---

    @(link_name = "gtk_scroll_info_get_enable_vertical")
    scroll_info_get_enable_vertical :: proc(self: ^ScrollInfo) -> glib.boolean ---

    @(link_name = "gtk_scrolled_window_get_type")
    scrolled_window_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_scrolled_window_new")
    scrolled_window_new :: proc() -> ^Widget ---

    @(link_name = "gtk_scrolled_window_set_hadjustment")
    scrolled_window_set_hadjustment :: proc(scrolled_window: ^ScrolledWindow, hadjustment: ^Adjustment) ---

    @(link_name = "gtk_scrolled_window_set_vadjustment")
    scrolled_window_set_vadjustment :: proc(scrolled_window: ^ScrolledWindow, vadjustment: ^Adjustment) ---

    @(link_name = "gtk_scrolled_window_get_hadjustment")
    scrolled_window_get_hadjustment :: proc(scrolled_window: ^ScrolledWindow) -> ^Adjustment ---

    @(link_name = "gtk_scrolled_window_get_vadjustment")
    scrolled_window_get_vadjustment :: proc(scrolled_window: ^ScrolledWindow) -> ^Adjustment ---

    @(link_name = "gtk_scrolled_window_get_hscrollbar")
    scrolled_window_get_hscrollbar :: proc(scrolled_window: ^ScrolledWindow) -> ^Widget ---

    @(link_name = "gtk_scrolled_window_get_vscrollbar")
    scrolled_window_get_vscrollbar :: proc(scrolled_window: ^ScrolledWindow) -> ^Widget ---

    @(link_name = "gtk_scrolled_window_set_policy")
    scrolled_window_set_policy :: proc(scrolled_window: ^ScrolledWindow, hscrollbar_policy: PolicyType, vscrollbar_policy: PolicyType) ---

    @(link_name = "gtk_scrolled_window_get_policy")
    scrolled_window_get_policy :: proc(scrolled_window: ^ScrolledWindow, hscrollbar_policy: ^PolicyType, vscrollbar_policy: ^PolicyType) ---

    @(link_name = "gtk_scrolled_window_set_placement")
    scrolled_window_set_placement :: proc(scrolled_window: ^ScrolledWindow, window_placement: CornerType) ---

    @(link_name = "gtk_scrolled_window_unset_placement")
    scrolled_window_unset_placement :: proc(scrolled_window: ^ScrolledWindow) ---

    @(link_name = "gtk_scrolled_window_get_placement")
    scrolled_window_get_placement :: proc(scrolled_window: ^ScrolledWindow) -> CornerType ---

    @(link_name = "gtk_scrolled_window_set_has_frame")
    scrolled_window_set_has_frame :: proc(scrolled_window: ^ScrolledWindow, has_frame: glib.boolean) ---

    @(link_name = "gtk_scrolled_window_get_has_frame")
    scrolled_window_get_has_frame :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---

    @(link_name = "gtk_scrolled_window_get_min_content_width")
    scrolled_window_get_min_content_width :: proc(scrolled_window: ^ScrolledWindow) -> i32 ---

    @(link_name = "gtk_scrolled_window_set_min_content_width")
    scrolled_window_set_min_content_width :: proc(scrolled_window: ^ScrolledWindow, width: i32) ---

    @(link_name = "gtk_scrolled_window_get_min_content_height")
    scrolled_window_get_min_content_height :: proc(scrolled_window: ^ScrolledWindow) -> i32 ---

    @(link_name = "gtk_scrolled_window_set_min_content_height")
    scrolled_window_set_min_content_height :: proc(scrolled_window: ^ScrolledWindow, height: i32) ---

    @(link_name = "gtk_scrolled_window_set_kinetic_scrolling")
    scrolled_window_set_kinetic_scrolling :: proc(scrolled_window: ^ScrolledWindow, kinetic_scrolling: glib.boolean) ---

    @(link_name = "gtk_scrolled_window_get_kinetic_scrolling")
    scrolled_window_get_kinetic_scrolling :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---

    @(link_name = "gtk_scrolled_window_set_overlay_scrolling")
    scrolled_window_set_overlay_scrolling :: proc(scrolled_window: ^ScrolledWindow, overlay_scrolling: glib.boolean) ---

    @(link_name = "gtk_scrolled_window_get_overlay_scrolling")
    scrolled_window_get_overlay_scrolling :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---

    @(link_name = "gtk_scrolled_window_set_max_content_width")
    scrolled_window_set_max_content_width :: proc(scrolled_window: ^ScrolledWindow, width: i32) ---

    @(link_name = "gtk_scrolled_window_get_max_content_width")
    scrolled_window_get_max_content_width :: proc(scrolled_window: ^ScrolledWindow) -> i32 ---

    @(link_name = "gtk_scrolled_window_set_max_content_height")
    scrolled_window_set_max_content_height :: proc(scrolled_window: ^ScrolledWindow, height: i32) ---

    @(link_name = "gtk_scrolled_window_get_max_content_height")
    scrolled_window_get_max_content_height :: proc(scrolled_window: ^ScrolledWindow) -> i32 ---

    @(link_name = "gtk_scrolled_window_set_propagate_natural_width")
    scrolled_window_set_propagate_natural_width :: proc(scrolled_window: ^ScrolledWindow, propagate: glib.boolean) ---

    @(link_name = "gtk_scrolled_window_get_propagate_natural_width")
    scrolled_window_get_propagate_natural_width :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---

    @(link_name = "gtk_scrolled_window_set_propagate_natural_height")
    scrolled_window_set_propagate_natural_height :: proc(scrolled_window: ^ScrolledWindow, propagate: glib.boolean) ---

    @(link_name = "gtk_scrolled_window_get_propagate_natural_height")
    scrolled_window_get_propagate_natural_height :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---

    @(link_name = "gtk_scrolled_window_set_child")
    scrolled_window_set_child :: proc(scrolled_window: ^ScrolledWindow, child: ^Widget) ---

    @(link_name = "gtk_scrolled_window_get_child")
    scrolled_window_get_child :: proc(scrolled_window: ^ScrolledWindow) -> ^Widget ---

    @(link_name = "gtk_search_bar_get_type")
    search_bar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_search_bar_new")
    search_bar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_search_bar_connect_entry")
    search_bar_connect_entry :: proc(bar: ^SearchBar, entry: ^Editable) ---

    @(link_name = "gtk_search_bar_get_search_mode")
    search_bar_get_search_mode :: proc(bar: ^SearchBar) -> glib.boolean ---

    @(link_name = "gtk_search_bar_set_search_mode")
    search_bar_set_search_mode :: proc(bar: ^SearchBar, search_mode: glib.boolean) ---

    @(link_name = "gtk_search_bar_get_show_close_button")
    search_bar_get_show_close_button :: proc(bar: ^SearchBar) -> glib.boolean ---

    @(link_name = "gtk_search_bar_set_show_close_button")
    search_bar_set_show_close_button :: proc(bar: ^SearchBar, visible: glib.boolean) ---

    @(link_name = "gtk_search_bar_set_key_capture_widget")
    search_bar_set_key_capture_widget :: proc(bar: ^SearchBar, widget: ^Widget) ---

    @(link_name = "gtk_search_bar_get_key_capture_widget")
    search_bar_get_key_capture_widget :: proc(bar: ^SearchBar) -> ^Widget ---

    @(link_name = "gtk_search_bar_set_child")
    search_bar_set_child :: proc(bar: ^SearchBar, child: ^Widget) ---

    @(link_name = "gtk_search_bar_get_child")
    search_bar_get_child :: proc(bar: ^SearchBar) -> ^Widget ---

    @(link_name = "gtk_search_entry_get_type")
    search_entry_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_search_entry_new")
    search_entry_new :: proc() -> ^Widget ---

    @(link_name = "gtk_search_entry_set_key_capture_widget")
    search_entry_set_key_capture_widget :: proc(entry: ^SearchEntry, widget: ^Widget) ---

    @(link_name = "gtk_search_entry_get_key_capture_widget")
    search_entry_get_key_capture_widget :: proc(entry: ^SearchEntry) -> ^Widget ---

    @(link_name = "gtk_search_entry_set_search_delay")
    search_entry_set_search_delay :: proc(entry: ^SearchEntry, delay: glib.uint_) ---

    @(link_name = "gtk_search_entry_get_search_delay")
    search_entry_get_search_delay :: proc(entry: ^SearchEntry) -> glib.uint_ ---

    @(link_name = "gtk_search_entry_set_placeholder_text")
    search_entry_set_placeholder_text :: proc(entry: ^SearchEntry, text: cstring) ---

    @(link_name = "gtk_search_entry_get_placeholder_text")
    search_entry_get_placeholder_text :: proc(entry: ^SearchEntry) -> cstring ---

    @(link_name = "gtk_section_model_get_type")
    section_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_section_model_get_section")
    section_model_get_section :: proc(self: ^SectionModel, position: glib.uint_, out_start: ^glib.uint_, out_end: ^glib.uint_) ---

    @(link_name = "gtk_section_model_sections_changed")
    section_model_sections_changed :: proc(self: ^SectionModel, position: glib.uint_, n_items: glib.uint_) ---

    @(link_name = "gtk_selection_filter_model_get_type")
    selection_filter_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_selection_filter_model_new")
    selection_filter_model_new :: proc(model: ^SelectionModel) -> ^SelectionFilterModel ---

    @(link_name = "gtk_selection_filter_model_set_model")
    selection_filter_model_set_model :: proc(self: ^SelectionFilterModel, model: ^SelectionModel) ---

    @(link_name = "gtk_selection_filter_model_get_model")
    selection_filter_model_get_model :: proc(self: ^SelectionFilterModel) -> ^SelectionModel ---

    @(link_name = "gtk_separator_get_type")
    separator_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_separator_new")
    separator_new :: proc(orientation: Orientation) -> ^Widget ---

    @(link_name = "gtk_settings_get_type")
    settings_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_settings_get_default")
    settings_get_default :: proc() -> ^Settings ---

    @(link_name = "gtk_settings_get_for_display")
    settings_get_for_display :: proc(display: ^Display) -> ^Settings ---

    @(link_name = "gtk_settings_reset_property")
    settings_reset_property :: proc(settings: [^]Settings, name: cstring) ---

    @(link_name = "gtk_shortcut_controller_get_type")
    shortcut_controller_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_controller_new")
    shortcut_controller_new :: proc() -> ^EventController ---

    @(link_name = "gtk_shortcut_controller_new_for_model")
    shortcut_controller_new_for_model :: proc(model: ^gio.ListModel) -> ^EventController ---

    @(link_name = "gtk_shortcut_controller_set_mnemonics_modifiers")
    shortcut_controller_set_mnemonics_modifiers :: proc(self: ^ShortcutController, modifiers: ModifierType) ---

    @(link_name = "gtk_shortcut_controller_get_mnemonics_modifiers")
    shortcut_controller_get_mnemonics_modifiers :: proc(self: ^ShortcutController) -> ModifierType ---

    @(link_name = "gtk_shortcut_controller_set_scope")
    shortcut_controller_set_scope :: proc(self: ^ShortcutController, scope: ShortcutScope) ---

    @(link_name = "gtk_shortcut_controller_get_scope")
    shortcut_controller_get_scope :: proc(self: ^ShortcutController) -> ShortcutScope ---

    @(link_name = "gtk_shortcut_controller_add_shortcut")
    shortcut_controller_add_shortcut :: proc(self: ^ShortcutController, shortcut: ^Shortcut) ---

    @(link_name = "gtk_shortcut_controller_remove_shortcut")
    shortcut_controller_remove_shortcut :: proc(self: ^ShortcutController, shortcut: ^Shortcut) ---

    @(link_name = "gtk_shortcut_label_get_type")
    shortcut_label_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_label_new")
    shortcut_label_new :: proc(accelerator: cstring) -> ^Widget ---

    @(link_name = "gtk_shortcut_label_get_accelerator")
    shortcut_label_get_accelerator :: proc(self: ^ShortcutLabel) -> cstring ---

    @(link_name = "gtk_shortcut_label_set_accelerator")
    shortcut_label_set_accelerator :: proc(self: ^ShortcutLabel, accelerator: cstring) ---

    @(link_name = "gtk_shortcut_label_get_disabled_text")
    shortcut_label_get_disabled_text :: proc(self: ^ShortcutLabel) -> cstring ---

    @(link_name = "gtk_shortcut_label_set_disabled_text")
    shortcut_label_set_disabled_text :: proc(self: ^ShortcutLabel, disabled_text: cstring) ---

    @(link_name = "gtk_shortcut_manager_get_type")
    shortcut_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcuts_group_get_type")
    shortcuts_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcuts_section_get_type")
    shortcuts_section_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcuts_shortcut_get_type")
    shortcuts_shortcut_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_trigger_get_type")
    shortcut_trigger_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_shortcut_trigger_parse_string")
    shortcut_trigger_parse_string :: proc(string_p: cstring) -> ^ShortcutTrigger ---

    @(link_name = "gtk_shortcut_trigger_to_string")
    shortcut_trigger_to_string :: proc(self: ^ShortcutTrigger) -> cstring ---

    @(link_name = "gtk_shortcut_trigger_print")
    shortcut_trigger_print :: proc(self: ^ShortcutTrigger, string_p: ^glib.String) ---

    @(link_name = "gtk_shortcut_trigger_to_label")
    shortcut_trigger_to_label :: proc(self: ^ShortcutTrigger, display: ^Display) -> cstring ---

    @(link_name = "gtk_shortcut_trigger_print_label")
    shortcut_trigger_print_label :: proc(self: ^ShortcutTrigger, display: ^Display, string_p: ^glib.String) -> glib.boolean ---

    @(link_name = "gtk_shortcut_trigger_hash")
    shortcut_trigger_hash :: proc(trigger: glib.constpointer) -> glib.uint_ ---

    @(link_name = "gtk_shortcut_trigger_equal")
    shortcut_trigger_equal :: proc(trigger1: glib.constpointer, trigger2: glib.constpointer) -> glib.boolean ---

    @(link_name = "gtk_shortcut_trigger_compare")
    shortcut_trigger_compare :: proc(trigger1: glib.constpointer, trigger2: glib.constpointer) -> i32 ---

    @(link_name = "gtk_shortcut_trigger_trigger")
    shortcut_trigger_trigger :: proc(self: ^ShortcutTrigger, event: ^Event, enable_mnemonics: glib.boolean) -> KeyMatch ---

    @(link_name = "gtk_never_trigger_get_type")
    never_trigger_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_never_trigger_get")
    never_trigger_get :: proc() -> ^ShortcutTrigger ---

    @(link_name = "gtk_keyval_trigger_get_type")
    keyval_trigger_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_keyval_trigger_new")
    keyval_trigger_new :: proc(keyval: glib.uint_, modifiers: ModifierType) -> ^ShortcutTrigger ---

    @(link_name = "gtk_keyval_trigger_get_modifiers")
    keyval_trigger_get_modifiers :: proc(self: ^KeyvalTrigger) -> ModifierType ---

    @(link_name = "gtk_keyval_trigger_get_keyval")
    keyval_trigger_get_keyval :: proc(self: ^KeyvalTrigger) -> glib.uint_ ---

    @(link_name = "gtk_mnemonic_trigger_get_type")
    mnemonic_trigger_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_mnemonic_trigger_new")
    mnemonic_trigger_new :: proc(keyval: glib.uint_) -> ^ShortcutTrigger ---

    @(link_name = "gtk_mnemonic_trigger_get_keyval")
    mnemonic_trigger_get_keyval :: proc(self: ^MnemonicTrigger) -> glib.uint_ ---

    @(link_name = "gtk_alternative_trigger_get_type")
    alternative_trigger_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_alternative_trigger_new")
    alternative_trigger_new :: proc(first: ^ShortcutTrigger, second: ^ShortcutTrigger) -> ^ShortcutTrigger ---

    @(link_name = "gtk_alternative_trigger_get_first")
    alternative_trigger_get_first :: proc(self: ^AlternativeTrigger) -> ^ShortcutTrigger ---

    @(link_name = "gtk_alternative_trigger_get_second")
    alternative_trigger_get_second :: proc(self: ^AlternativeTrigger) -> ^ShortcutTrigger ---

    @(link_name = "gtk_show_uri_full")
    show_uri_full :: proc(parent: ^Window, uri: cstring, timestamp: glib.uint32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_show_uri_full_finish")
    show_uri_full_finish :: proc(parent: ^Window, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_show_uri")
    show_uri :: proc(parent: ^Window, uri: cstring, timestamp: glib.uint32) ---

    @(link_name = "gtk_signal_list_item_factory_get_type")
    signal_list_item_factory_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_signal_list_item_factory_new")
    signal_list_item_factory_new :: proc() -> ^ListItemFactory ---

    @(link_name = "gtk_single_selection_get_type")
    single_selection_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_single_selection_new")
    single_selection_new :: proc(model: ^gio.ListModel) -> ^SingleSelection ---

    @(link_name = "gtk_single_selection_get_model")
    single_selection_get_model :: proc(self: ^SingleSelection) -> ^gio.ListModel ---

    @(link_name = "gtk_single_selection_set_model")
    single_selection_set_model :: proc(self: ^SingleSelection, model: ^gio.ListModel) ---

    @(link_name = "gtk_single_selection_get_selected")
    single_selection_get_selected :: proc(self: ^SingleSelection) -> glib.uint_ ---

    @(link_name = "gtk_single_selection_set_selected")
    single_selection_set_selected :: proc(self: ^SingleSelection, position: glib.uint_) ---

    @(link_name = "gtk_single_selection_get_selected_item")
    single_selection_get_selected_item :: proc(self: ^SingleSelection) -> glib.pointer ---

    @(link_name = "gtk_single_selection_get_autoselect")
    single_selection_get_autoselect :: proc(self: ^SingleSelection) -> glib.boolean ---

    @(link_name = "gtk_single_selection_set_autoselect")
    single_selection_set_autoselect :: proc(self: ^SingleSelection, autoselect: glib.boolean) ---

    @(link_name = "gtk_single_selection_get_can_unselect")
    single_selection_get_can_unselect :: proc(self: ^SingleSelection) -> glib.boolean ---

    @(link_name = "gtk_single_selection_set_can_unselect")
    single_selection_set_can_unselect :: proc(self: ^SingleSelection, can_unselect: glib.boolean) ---

    @(link_name = "gtk_slice_list_model_get_type")
    slice_list_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_slice_list_model_new")
    slice_list_model_new :: proc(model: ^gio.ListModel, offset: glib.uint_, size_p: glib.uint_) -> ^SliceListModel ---

    @(link_name = "gtk_slice_list_model_set_model")
    slice_list_model_set_model :: proc(self: ^SliceListModel, model: ^gio.ListModel) ---

    @(link_name = "gtk_slice_list_model_get_model")
    slice_list_model_get_model :: proc(self: ^SliceListModel) -> ^gio.ListModel ---

    @(link_name = "gtk_slice_list_model_set_offset")
    slice_list_model_set_offset :: proc(self: ^SliceListModel, offset: glib.uint_) ---

    @(link_name = "gtk_slice_list_model_get_offset")
    slice_list_model_get_offset :: proc(self: ^SliceListModel) -> glib.uint_ ---

    @(link_name = "gtk_slice_list_model_set_size")
    slice_list_model_set_size :: proc(self: ^SliceListModel, size_p: glib.uint_) ---

    @(link_name = "gtk_slice_list_model_get_size")
    slice_list_model_get_size :: proc(self: ^SliceListModel) -> glib.uint_ ---

    @(link_name = "gtk_stack_page_get_type")
    stack_page_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_stack_page_get_child")
    stack_page_get_child :: proc(self: ^StackPage) -> ^Widget ---

    @(link_name = "gtk_stack_page_get_visible")
    stack_page_get_visible :: proc(self: ^StackPage) -> glib.boolean ---

    @(link_name = "gtk_stack_page_set_visible")
    stack_page_set_visible :: proc(self: ^StackPage, visible: glib.boolean) ---

    @(link_name = "gtk_stack_page_get_needs_attention")
    stack_page_get_needs_attention :: proc(self: ^StackPage) -> glib.boolean ---

    @(link_name = "gtk_stack_page_set_needs_attention")
    stack_page_set_needs_attention :: proc(self: ^StackPage, setting: glib.boolean) ---

    @(link_name = "gtk_stack_page_get_use_underline")
    stack_page_get_use_underline :: proc(self: ^StackPage) -> glib.boolean ---

    @(link_name = "gtk_stack_page_set_use_underline")
    stack_page_set_use_underline :: proc(self: ^StackPage, setting: glib.boolean) ---

    @(link_name = "gtk_stack_page_get_name")
    stack_page_get_name :: proc(self: ^StackPage) -> cstring ---

    @(link_name = "gtk_stack_page_set_name")
    stack_page_set_name :: proc(self: ^StackPage, setting: cstring) ---

    @(link_name = "gtk_stack_page_get_title")
    stack_page_get_title :: proc(self: ^StackPage) -> cstring ---

    @(link_name = "gtk_stack_page_set_title")
    stack_page_set_title :: proc(self: ^StackPage, setting: cstring) ---

    @(link_name = "gtk_stack_page_get_icon_name")
    stack_page_get_icon_name :: proc(self: ^StackPage) -> cstring ---

    @(link_name = "gtk_stack_page_set_icon_name")
    stack_page_set_icon_name :: proc(self: ^StackPage, setting: cstring) ---

    @(link_name = "gtk_stack_get_type")
    stack_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_stack_new")
    stack_new :: proc() -> ^Widget ---

    @(link_name = "gtk_stack_add_child")
    stack_add_child :: proc(stack: ^Stack, child: ^Widget) -> ^StackPage ---

    @(link_name = "gtk_stack_add_named")
    stack_add_named :: proc(stack: ^Stack, child: ^Widget, name: cstring) -> ^StackPage ---

    @(link_name = "gtk_stack_add_titled")
    stack_add_titled :: proc(stack: ^Stack, child: ^Widget, name: cstring, title: cstring) -> ^StackPage ---

    @(link_name = "gtk_stack_remove")
    stack_remove :: proc(stack: ^Stack, child: ^Widget) ---

    @(link_name = "gtk_stack_get_page")
    stack_get_page :: proc(stack: ^Stack, child: ^Widget) -> ^StackPage ---

    @(link_name = "gtk_stack_get_child_by_name")
    stack_get_child_by_name :: proc(stack: ^Stack, name: cstring) -> ^Widget ---

    @(link_name = "gtk_stack_set_visible_child")
    stack_set_visible_child :: proc(stack: ^Stack, child: ^Widget) ---

    @(link_name = "gtk_stack_get_visible_child")
    stack_get_visible_child :: proc(stack: ^Stack) -> ^Widget ---

    @(link_name = "gtk_stack_set_visible_child_name")
    stack_set_visible_child_name :: proc(stack: ^Stack, name: cstring) ---

    @(link_name = "gtk_stack_get_visible_child_name")
    stack_get_visible_child_name :: proc(stack: ^Stack) -> cstring ---

    @(link_name = "gtk_stack_set_visible_child_full")
    stack_set_visible_child_full :: proc(stack: ^Stack, name: cstring, transition: StackTransitionType) ---

    @(link_name = "gtk_stack_set_hhomogeneous")
    stack_set_hhomogeneous :: proc(stack: ^Stack, hhomogeneous: glib.boolean) ---

    @(link_name = "gtk_stack_get_hhomogeneous")
    stack_get_hhomogeneous :: proc(stack: ^Stack) -> glib.boolean ---

    @(link_name = "gtk_stack_set_vhomogeneous")
    stack_set_vhomogeneous :: proc(stack: ^Stack, vhomogeneous: glib.boolean) ---

    @(link_name = "gtk_stack_get_vhomogeneous")
    stack_get_vhomogeneous :: proc(stack: ^Stack) -> glib.boolean ---

    @(link_name = "gtk_stack_set_transition_duration")
    stack_set_transition_duration :: proc(stack: ^Stack, duration: glib.uint_) ---

    @(link_name = "gtk_stack_get_transition_duration")
    stack_get_transition_duration :: proc(stack: ^Stack) -> glib.uint_ ---

    @(link_name = "gtk_stack_set_transition_type")
    stack_set_transition_type :: proc(stack: ^Stack, transition: StackTransitionType) ---

    @(link_name = "gtk_stack_get_transition_type")
    stack_get_transition_type :: proc(stack: ^Stack) -> StackTransitionType ---

    @(link_name = "gtk_stack_get_transition_running")
    stack_get_transition_running :: proc(stack: ^Stack) -> glib.boolean ---

    @(link_name = "gtk_stack_set_interpolate_size")
    stack_set_interpolate_size :: proc(stack: ^Stack, interpolate_size: glib.boolean) ---

    @(link_name = "gtk_stack_get_interpolate_size")
    stack_get_interpolate_size :: proc(stack: ^Stack) -> glib.boolean ---

    @(link_name = "gtk_stack_get_pages")
    stack_get_pages :: proc(stack: ^Stack) -> ^SelectionModel ---

    @(link_name = "gtk_stack_sidebar_get_type")
    stack_sidebar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_stack_sidebar_new")
    stack_sidebar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_stack_sidebar_set_stack")
    stack_sidebar_set_stack :: proc(self: ^StackSidebar, stack: ^Stack) ---

    @(link_name = "gtk_stack_sidebar_get_stack")
    stack_sidebar_get_stack :: proc(self: ^StackSidebar) -> ^Stack ---

    @(link_name = "gtk_size_group_get_type")
    size_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_size_group_new")
    size_group_new :: proc(mode: SizeGroupMode) -> ^SizeGroup ---

    @(link_name = "gtk_size_group_set_mode")
    size_group_set_mode :: proc(size_group: ^SizeGroup, mode: SizeGroupMode) ---

    @(link_name = "gtk_size_group_get_mode")
    size_group_get_mode :: proc(size_group: ^SizeGroup) -> SizeGroupMode ---

    @(link_name = "gtk_size_group_add_widget")
    size_group_add_widget :: proc(size_group: ^SizeGroup, widget: ^Widget) ---

    @(link_name = "gtk_size_group_remove_widget")
    size_group_remove_widget :: proc(size_group: ^SizeGroup, widget: ^Widget) ---

    @(link_name = "gtk_size_group_get_widgets")
    size_group_get_widgets :: proc(size_group: ^SizeGroup) -> ^glib.SList ---

    @(link_name = "gtk_distribute_natural_allocation")
    distribute_natural_allocation :: proc(extra_space: i32, n_requested_sizes: glib.uint_, sizes: [^]RequestedSize) -> i32 ---

    @(link_name = "gtk_spin_button_get_type")
    spin_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_spin_button_configure")
    spin_button_configure :: proc(spin_button: ^SpinButton, adjustment: ^Adjustment, climb_rate: f64, digits: glib.uint_) ---

    @(link_name = "gtk_spin_button_new")
    spin_button_new :: proc(adjustment: ^Adjustment, climb_rate: f64, digits: glib.uint_) -> ^Widget ---

    @(link_name = "gtk_spin_button_new_with_range")
    spin_button_new_with_range :: proc(min: f64, max: f64, step: f64) -> ^Widget ---

    @(link_name = "gtk_spin_button_set_adjustment")
    spin_button_set_adjustment :: proc(spin_button: ^SpinButton, adjustment: ^Adjustment) ---

    @(link_name = "gtk_spin_button_get_adjustment")
    spin_button_get_adjustment :: proc(spin_button: ^SpinButton) -> ^Adjustment ---

    @(link_name = "gtk_spin_button_set_digits")
    spin_button_set_digits :: proc(spin_button: ^SpinButton, digits: glib.uint_) ---

    @(link_name = "gtk_spin_button_get_digits")
    spin_button_get_digits :: proc(spin_button: ^SpinButton) -> glib.uint_ ---

    @(link_name = "gtk_spin_button_set_increments")
    spin_button_set_increments :: proc(spin_button: ^SpinButton, step: f64, page: f64) ---

    @(link_name = "gtk_spin_button_get_increments")
    spin_button_get_increments :: proc(spin_button: ^SpinButton, step: ^f64, page: ^f64) ---

    @(link_name = "gtk_spin_button_set_range")
    spin_button_set_range :: proc(spin_button: ^SpinButton, min: f64, max: f64) ---

    @(link_name = "gtk_spin_button_get_range")
    spin_button_get_range :: proc(spin_button: ^SpinButton, min: ^f64, max: ^f64) ---

    @(link_name = "gtk_spin_button_get_value")
    spin_button_get_value :: proc(spin_button: ^SpinButton) -> f64 ---

    @(link_name = "gtk_spin_button_get_value_as_int")
    spin_button_get_value_as_int :: proc(spin_button: ^SpinButton) -> i32 ---

    @(link_name = "gtk_spin_button_set_value")
    spin_button_set_value :: proc(spin_button: ^SpinButton, value: f64) ---

    @(link_name = "gtk_spin_button_set_update_policy")
    spin_button_set_update_policy :: proc(spin_button: ^SpinButton, policy: SpinButtonUpdatePolicy) ---

    @(link_name = "gtk_spin_button_get_update_policy")
    spin_button_get_update_policy :: proc(spin_button: ^SpinButton) -> SpinButtonUpdatePolicy ---

    @(link_name = "gtk_spin_button_set_numeric")
    spin_button_set_numeric :: proc(spin_button: ^SpinButton, numeric: glib.boolean) ---

    @(link_name = "gtk_spin_button_get_numeric")
    spin_button_get_numeric :: proc(spin_button: ^SpinButton) -> glib.boolean ---

    @(link_name = "gtk_spin_button_spin")
    spin_button_spin :: proc(spin_button: ^SpinButton, direction: SpinType, increment: f64) ---

    @(link_name = "gtk_spin_button_set_wrap")
    spin_button_set_wrap :: proc(spin_button: ^SpinButton, wrap: glib.boolean) ---

    @(link_name = "gtk_spin_button_get_wrap")
    spin_button_get_wrap :: proc(spin_button: ^SpinButton) -> glib.boolean ---

    @(link_name = "gtk_spin_button_set_snap_to_ticks")
    spin_button_set_snap_to_ticks :: proc(spin_button: ^SpinButton, snap_to_ticks: glib.boolean) ---

    @(link_name = "gtk_spin_button_get_snap_to_ticks")
    spin_button_get_snap_to_ticks :: proc(spin_button: ^SpinButton) -> glib.boolean ---

    @(link_name = "gtk_spin_button_set_climb_rate")
    spin_button_set_climb_rate :: proc(spin_button: ^SpinButton, climb_rate: f64) ---

    @(link_name = "gtk_spin_button_get_climb_rate")
    spin_button_get_climb_rate :: proc(spin_button: ^SpinButton) -> f64 ---

    @(link_name = "gtk_spin_button_update")
    spin_button_update :: proc(spin_button: ^SpinButton) ---

    @(link_name = "gtk_spinner_get_type")
    spinner_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_spinner_new")
    spinner_new :: proc() -> ^Widget ---

    @(link_name = "gtk_spinner_start")
    spinner_start :: proc(spinner: ^Spinner) ---

    @(link_name = "gtk_spinner_stop")
    spinner_stop :: proc(spinner: ^Spinner) ---

    @(link_name = "gtk_spinner_set_spinning")
    spinner_set_spinning :: proc(spinner: ^Spinner, spinning: glib.boolean) ---

    @(link_name = "gtk_spinner_get_spinning")
    spinner_get_spinning :: proc(spinner: ^Spinner) -> glib.boolean ---

    @(link_name = "gtk_stack_switcher_get_type")
    stack_switcher_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_stack_switcher_new")
    stack_switcher_new :: proc() -> ^Widget ---

    @(link_name = "gtk_stack_switcher_set_stack")
    stack_switcher_set_stack :: proc(switcher: ^StackSwitcher, stack: ^Stack) ---

    @(link_name = "gtk_stack_switcher_get_stack")
    stack_switcher_get_stack :: proc(switcher: ^StackSwitcher) -> ^Stack ---

    @(link_name = "gtk_statusbar_get_type")
    statusbar_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_statusbar_new")
    statusbar_new :: proc() -> ^Widget ---

    @(link_name = "gtk_statusbar_get_context_id")
    statusbar_get_context_id :: proc(statusbar: ^Statusbar, context_description: cstring) -> glib.uint_ ---

    @(link_name = "gtk_statusbar_push")
    statusbar_push :: proc(statusbar: ^Statusbar, context_id: glib.uint_, text: cstring) -> glib.uint_ ---

    @(link_name = "gtk_statusbar_pop")
    statusbar_pop :: proc(statusbar: ^Statusbar, context_id: glib.uint_) ---

    @(link_name = "gtk_statusbar_remove")
    statusbar_remove :: proc(statusbar: ^Statusbar, context_id: glib.uint_, message_id: glib.uint_) ---

    @(link_name = "gtk_statusbar_remove_all")
    statusbar_remove_all :: proc(statusbar: ^Statusbar, context_id: glib.uint_) ---

    @(link_name = "gtk_string_object_get_type")
    string_object_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_string_object_new")
    string_object_new :: proc(string_p: cstring) -> ^StringObject ---

    @(link_name = "gtk_string_object_get_string")
    string_object_get_string :: proc(self: ^StringObject) -> cstring ---

    @(link_name = "gtk_string_list_get_type")
    string_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_string_list_new")
    string_list_new :: proc(strings: [^]cstring) -> ^StringList ---

    @(link_name = "gtk_string_list_append")
    string_list_append :: proc(self: ^StringList, string_p: cstring) ---

    @(link_name = "gtk_string_list_take")
    string_list_take :: proc(self: ^StringList, string_p: cstring) ---

    @(link_name = "gtk_string_list_remove")
    string_list_remove :: proc(self: ^StringList, position: glib.uint_) ---

    @(link_name = "gtk_string_list_splice")
    string_list_splice :: proc(self: ^StringList, position: glib.uint_, n_removals: glib.uint_, additions: [^]cstring) ---

    @(link_name = "gtk_string_list_get_string")
    string_list_get_string :: proc(self: ^StringList, position: glib.uint_) -> cstring ---

    @(link_name = "gtk_string_sorter_get_type")
    string_sorter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_string_sorter_new")
    string_sorter_new :: proc(expression: ^Expression) -> ^StringSorter ---

    @(link_name = "gtk_string_sorter_get_expression")
    string_sorter_get_expression :: proc(self: ^StringSorter) -> ^Expression ---

    @(link_name = "gtk_string_sorter_set_expression")
    string_sorter_set_expression :: proc(self: ^StringSorter, expression: ^Expression) ---

    @(link_name = "gtk_string_sorter_get_ignore_case")
    string_sorter_get_ignore_case :: proc(self: ^StringSorter) -> glib.boolean ---

    @(link_name = "gtk_string_sorter_set_ignore_case")
    string_sorter_set_ignore_case :: proc(self: ^StringSorter, ignore_case: glib.boolean) ---

    @(link_name = "gtk_string_sorter_set_collation")
    string_sorter_set_collation :: proc(self: ^StringSorter, collation: Collation) ---

    @(link_name = "gtk_string_sorter_get_collation")
    string_sorter_get_collation :: proc(self: ^StringSorter) -> Collation ---

    @(link_name = "gtk_style_provider_get_type")
    style_provider_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_style_context_add_provider_for_display")
    style_context_add_provider_for_display :: proc(display: ^Display, provider: ^StyleProvider, priority: glib.uint_) ---

    @(link_name = "gtk_style_context_remove_provider_for_display")
    style_context_remove_provider_for_display :: proc(display: ^Display, provider: ^StyleProvider) ---

    @(link_name = "gtk_style_context_get_type")
    style_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_style_context_add_provider")
    style_context_add_provider :: proc(context_p: ^StyleContext, provider: ^StyleProvider, priority: glib.uint_) ---

    @(link_name = "gtk_style_context_remove_provider")
    style_context_remove_provider :: proc(context_p: ^StyleContext, provider: ^StyleProvider) ---

    @(link_name = "gtk_style_context_save")
    style_context_save :: proc(context_p: ^StyleContext) ---

    @(link_name = "gtk_style_context_restore")
    style_context_restore :: proc(context_p: ^StyleContext) ---

    @(link_name = "gtk_style_context_set_state")
    style_context_set_state :: proc(context_p: ^StyleContext, flags: StateFlags) ---

    @(link_name = "gtk_style_context_get_state")
    style_context_get_state :: proc(context_p: ^StyleContext) -> StateFlags ---

    @(link_name = "gtk_style_context_set_scale")
    style_context_set_scale :: proc(context_p: ^StyleContext, scale: i32) ---

    @(link_name = "gtk_style_context_get_scale")
    style_context_get_scale :: proc(context_p: ^StyleContext) -> i32 ---

    @(link_name = "gtk_style_context_add_class")
    style_context_add_class :: proc(context_p: ^StyleContext, class_name: cstring) ---

    @(link_name = "gtk_style_context_remove_class")
    style_context_remove_class :: proc(context_p: ^StyleContext, class_name: cstring) ---

    @(link_name = "gtk_style_context_has_class")
    style_context_has_class :: proc(context_p: ^StyleContext, class_name: cstring) -> glib.boolean ---

    @(link_name = "gtk_style_context_set_display")
    style_context_set_display :: proc(context_p: ^StyleContext, display: ^Display) ---

    @(link_name = "gtk_style_context_get_display")
    style_context_get_display :: proc(context_p: ^StyleContext) -> ^Display ---

    @(link_name = "gtk_style_context_lookup_color")
    style_context_lookup_color :: proc(context_p: ^StyleContext, color_name: cstring, color: ^RGBA) -> glib.boolean ---

    @(link_name = "gtk_style_context_get_color")
    style_context_get_color :: proc(context_p: ^StyleContext, color: ^RGBA) ---

    @(link_name = "gtk_style_context_get_border")
    style_context_get_border :: proc(context_p: ^StyleContext, border: ^Border) ---

    @(link_name = "gtk_style_context_get_padding")
    style_context_get_padding :: proc(context_p: ^StyleContext, padding: ^Border) ---

    @(link_name = "gtk_style_context_get_margin")
    style_context_get_margin :: proc(context_p: ^StyleContext, margin: ^Border) ---

    @(link_name = "gtk_style_context_to_string")
    style_context_to_string :: proc(context_p: ^StyleContext, flags: StyleContextPrintFlags) -> cstring ---

    @(link_name = "gtk_switch_get_type")
    switch_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_switch_new")
    switch_new :: proc() -> ^Widget ---

    @(link_name = "gtk_switch_set_active")
    switch_set_active :: proc(self: ^Switch, is_active: glib.boolean) ---

    @(link_name = "gtk_switch_get_active")
    switch_get_active :: proc(self: ^Switch) -> glib.boolean ---

    @(link_name = "gtk_switch_set_state")
    switch_set_state :: proc(self: ^Switch, state: glib.boolean) ---

    @(link_name = "gtk_switch_get_state")
    switch_get_state :: proc(self: ^Switch) -> glib.boolean ---

    @(link_name = "gtk_symbolic_paintable_get_type")
    symbolic_paintable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_symbolic_paintable_snapshot_symbolic")
    symbolic_paintable_snapshot_symbolic :: proc(paintable: ^SymbolicPaintable, snapshot: ^Snapshot, width: f64, height: f64, colors: [^]RGBA, n_colors: glib.size) ---

    @(link_name = "gtk_text_get_type")
    text_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_new")
    text_new :: proc() -> ^Widget ---

    @(link_name = "gtk_text_new_with_buffer")
    text_new_with_buffer :: proc(buffer: ^EntryBuffer) -> ^Widget ---

    @(link_name = "gtk_text_get_buffer")
    text_get_buffer :: proc(self: ^Text) -> ^EntryBuffer ---

    @(link_name = "gtk_text_set_buffer")
    text_set_buffer :: proc(self: ^Text, buffer: ^EntryBuffer) ---

    @(link_name = "gtk_text_set_visibility")
    text_set_visibility :: proc(self: ^Text, visible: glib.boolean) ---

    @(link_name = "gtk_text_get_visibility")
    text_get_visibility :: proc(self: ^Text) -> glib.boolean ---

    @(link_name = "gtk_text_set_invisible_char")
    text_set_invisible_char :: proc(self: ^Text, ch: glib.unichar) ---

    @(link_name = "gtk_text_get_invisible_char")
    text_get_invisible_char :: proc(self: ^Text) -> glib.unichar ---

    @(link_name = "gtk_text_unset_invisible_char")
    text_unset_invisible_char :: proc(self: ^Text) ---

    @(link_name = "gtk_text_set_overwrite_mode")
    text_set_overwrite_mode :: proc(self: ^Text, overwrite: glib.boolean) ---

    @(link_name = "gtk_text_get_overwrite_mode")
    text_get_overwrite_mode :: proc(self: ^Text) -> glib.boolean ---

    @(link_name = "gtk_text_set_max_length")
    text_set_max_length :: proc(self: ^Text, length: i32) ---

    @(link_name = "gtk_text_get_max_length")
    text_get_max_length :: proc(self: ^Text) -> i32 ---

    @(link_name = "gtk_text_get_text_length")
    text_get_text_length :: proc(self: ^Text) -> glib.uint16 ---

    @(link_name = "gtk_text_set_activates_default")
    text_set_activates_default :: proc(self: ^Text, activates: glib.boolean) ---

    @(link_name = "gtk_text_get_activates_default")
    text_get_activates_default :: proc(self: ^Text) -> glib.boolean ---

    @(link_name = "gtk_text_get_placeholder_text")
    text_get_placeholder_text :: proc(self: ^Text) -> cstring ---

    @(link_name = "gtk_text_set_placeholder_text")
    text_set_placeholder_text :: proc(self: ^Text, text: cstring) ---

    @(link_name = "gtk_text_set_input_purpose")
    text_set_input_purpose :: proc(self: ^Text, purpose: InputPurpose) ---

    @(link_name = "gtk_text_get_input_purpose")
    text_get_input_purpose :: proc(self: ^Text) -> InputPurpose ---

    @(link_name = "gtk_text_set_input_hints")
    text_set_input_hints :: proc(self: ^Text, hints: InputHints) ---

    @(link_name = "gtk_text_get_input_hints")
    text_get_input_hints :: proc(self: ^Text) -> InputHints ---

    @(link_name = "gtk_text_set_attributes")
    text_set_attributes :: proc(self: ^Text, attrs: [^]pango.AttrList) ---

    @(link_name = "gtk_text_get_attributes")
    text_get_attributes :: proc(self: ^Text) -> ^pango.AttrList ---

    @(link_name = "gtk_text_set_tabs")
    text_set_tabs :: proc(self: ^Text, tabs: [^]pango.TabArray) ---

    @(link_name = "gtk_text_get_tabs")
    text_get_tabs :: proc(self: ^Text) -> ^pango.TabArray ---

    @(link_name = "gtk_text_grab_focus_without_selecting")
    text_grab_focus_without_selecting :: proc(self: ^Text) -> glib.boolean ---

    @(link_name = "gtk_text_set_extra_menu")
    text_set_extra_menu :: proc(self: ^Text, model: ^gio.MenuModel) ---

    @(link_name = "gtk_text_get_extra_menu")
    text_get_extra_menu :: proc(self: ^Text) -> ^gio.MenuModel ---

    @(link_name = "gtk_text_set_enable_emoji_completion")
    text_set_enable_emoji_completion :: proc(self: ^Text, enable_emoji_completion: glib.boolean) ---

    @(link_name = "gtk_text_get_enable_emoji_completion")
    text_get_enable_emoji_completion :: proc(self: ^Text) -> glib.boolean ---

    @(link_name = "gtk_text_set_propagate_text_width")
    text_set_propagate_text_width :: proc(self: ^Text, propagate_text_width: glib.boolean) ---

    @(link_name = "gtk_text_get_propagate_text_width")
    text_get_propagate_text_width :: proc(self: ^Text) -> glib.boolean ---

    @(link_name = "gtk_text_set_truncate_multiline")
    text_set_truncate_multiline :: proc(self: ^Text, truncate_multiline: glib.boolean) ---

    @(link_name = "gtk_text_get_truncate_multiline")
    text_get_truncate_multiline :: proc(self: ^Text) -> glib.boolean ---

    @(link_name = "gtk_text_compute_cursor_extents")
    text_compute_cursor_extents :: proc(self: ^Text, position: glib.size, strong: ^graphene.rect_t, weak: ^graphene.rect_t) ---

    @(link_name = "gtk_text_tag_get_type")
    text_tag_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_tag_new")
    text_tag_new :: proc(name: cstring) -> ^TextTag ---

    @(link_name = "gtk_text_tag_get_priority")
    text_tag_get_priority :: proc(tag: ^TextTag) -> i32 ---

    @(link_name = "gtk_text_tag_set_priority")
    text_tag_set_priority :: proc(tag: ^TextTag, priority: i32) ---

    @(link_name = "gtk_text_tag_changed")
    text_tag_changed :: proc(tag: ^TextTag, size_changed: glib.boolean) ---

    @(link_name = "gtk_text_tag_table_get_type")
    text_tag_table_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_tag_table_new")
    text_tag_table_new :: proc() -> ^TextTagTable ---

    @(link_name = "gtk_text_tag_table_add")
    text_tag_table_add :: proc(table: ^TextTagTable, tag: ^TextTag) -> glib.boolean ---

    @(link_name = "gtk_text_tag_table_remove")
    text_tag_table_remove :: proc(table: ^TextTagTable, tag: ^TextTag) ---

    @(link_name = "gtk_text_tag_table_lookup")
    text_tag_table_lookup :: proc(table: ^TextTagTable, name: cstring) -> ^TextTag ---

    @(link_name = "gtk_text_tag_table_foreach")
    text_tag_table_foreach :: proc(table: ^TextTagTable, func: TextTagTableForeach, data: glib.pointer) ---

    @(link_name = "gtk_text_tag_table_get_size")
    text_tag_table_get_size :: proc(table: ^TextTagTable) -> i32 ---

    @(link_name = "gtk_text_child_anchor_get_type")
    text_child_anchor_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_child_anchor_new")
    text_child_anchor_new :: proc() -> ^TextChildAnchor ---

    @(link_name = "gtk_text_child_anchor_new_with_replacement")
    text_child_anchor_new_with_replacement :: proc(character: cstring) -> ^TextChildAnchor ---

    @(link_name = "gtk_text_child_anchor_get_widgets")
    text_child_anchor_get_widgets :: proc(anchor: ^TextChildAnchor, out_len: ^glib.uint_) -> ^^Widget ---

    @(link_name = "gtk_text_child_anchor_get_deleted")
    text_child_anchor_get_deleted :: proc(anchor: ^TextChildAnchor) -> glib.boolean ---

    @(link_name = "gtk_text_iter_get_buffer")
    text_iter_get_buffer :: proc(iter: ^TextIter) -> ^TextBuffer ---

    @(link_name = "gtk_text_iter_copy")
    text_iter_copy :: proc(iter: ^TextIter) -> ^TextIter ---

    @(link_name = "gtk_text_iter_free")
    text_iter_free :: proc(iter: ^TextIter) ---

    @(link_name = "gtk_text_iter_assign")
    text_iter_assign :: proc(iter: ^TextIter, other: ^TextIter) ---

    @(link_name = "gtk_text_iter_get_type")
    text_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_iter_get_offset")
    text_iter_get_offset :: proc(iter: ^TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_get_line")
    text_iter_get_line :: proc(iter: ^TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_get_line_offset")
    text_iter_get_line_offset :: proc(iter: ^TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_get_line_index")
    text_iter_get_line_index :: proc(iter: ^TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_get_visible_line_offset")
    text_iter_get_visible_line_offset :: proc(iter: ^TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_get_visible_line_index")
    text_iter_get_visible_line_index :: proc(iter: ^TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_get_char")
    text_iter_get_char :: proc(iter: ^TextIter) -> glib.unichar ---

    @(link_name = "gtk_text_iter_get_slice")
    text_iter_get_slice :: proc(start: ^TextIter, end: ^TextIter) -> cstring ---

    @(link_name = "gtk_text_iter_get_text")
    text_iter_get_text :: proc(start: ^TextIter, end: ^TextIter) -> cstring ---

    @(link_name = "gtk_text_iter_get_visible_slice")
    text_iter_get_visible_slice :: proc(start: ^TextIter, end: ^TextIter) -> cstring ---

    @(link_name = "gtk_text_iter_get_visible_text")
    text_iter_get_visible_text :: proc(start: ^TextIter, end: ^TextIter) -> cstring ---

    @(link_name = "gtk_text_iter_get_paintable")
    text_iter_get_paintable :: proc(iter: ^TextIter) -> ^Paintable ---

    @(link_name = "gtk_text_iter_get_marks")
    text_iter_get_marks :: proc(iter: ^TextIter) -> ^glib.SList ---

    @(link_name = "gtk_text_iter_get_child_anchor")
    text_iter_get_child_anchor :: proc(iter: ^TextIter) -> ^TextChildAnchor ---

    @(link_name = "gtk_text_iter_get_toggled_tags")
    text_iter_get_toggled_tags :: proc(iter: ^TextIter, toggled_on: glib.boolean) -> ^glib.SList ---

    @(link_name = "gtk_text_iter_starts_tag")
    text_iter_starts_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---

    @(link_name = "gtk_text_iter_ends_tag")
    text_iter_ends_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---

    @(link_name = "gtk_text_iter_toggles_tag")
    text_iter_toggles_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---

    @(link_name = "gtk_text_iter_has_tag")
    text_iter_has_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---

    @(link_name = "gtk_text_iter_get_tags")
    text_iter_get_tags :: proc(iter: ^TextIter) -> ^glib.SList ---

    @(link_name = "gtk_text_iter_editable")
    text_iter_editable :: proc(iter: ^TextIter, default_setting: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_text_iter_can_insert")
    text_iter_can_insert :: proc(iter: ^TextIter, default_editability: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_text_iter_starts_word")
    text_iter_starts_word :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_ends_word")
    text_iter_ends_word :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_inside_word")
    text_iter_inside_word :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_starts_sentence")
    text_iter_starts_sentence :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_ends_sentence")
    text_iter_ends_sentence :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_inside_sentence")
    text_iter_inside_sentence :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_starts_line")
    text_iter_starts_line :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_ends_line")
    text_iter_ends_line :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_is_cursor_position")
    text_iter_is_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_get_chars_in_line")
    text_iter_get_chars_in_line :: proc(iter: ^TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_get_bytes_in_line")
    text_iter_get_bytes_in_line :: proc(iter: ^TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_get_language")
    text_iter_get_language :: proc(iter: ^TextIter) -> ^pango.Language ---

    @(link_name = "gtk_text_iter_is_end")
    text_iter_is_end :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_is_start")
    text_iter_is_start :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_char")
    text_iter_forward_char :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_char")
    text_iter_backward_char :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_chars")
    text_iter_forward_chars :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_chars")
    text_iter_backward_chars :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_line")
    text_iter_forward_line :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_line")
    text_iter_backward_line :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_lines")
    text_iter_forward_lines :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_lines")
    text_iter_backward_lines :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_word_end")
    text_iter_forward_word_end :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_word_start")
    text_iter_backward_word_start :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_word_ends")
    text_iter_forward_word_ends :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_word_starts")
    text_iter_backward_word_starts :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_visible_line")
    text_iter_forward_visible_line :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_visible_line")
    text_iter_backward_visible_line :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_visible_lines")
    text_iter_forward_visible_lines :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_visible_lines")
    text_iter_backward_visible_lines :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_visible_word_end")
    text_iter_forward_visible_word_end :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_visible_word_start")
    text_iter_backward_visible_word_start :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_visible_word_ends")
    text_iter_forward_visible_word_ends :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_visible_word_starts")
    text_iter_backward_visible_word_starts :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_sentence_end")
    text_iter_forward_sentence_end :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_sentence_start")
    text_iter_backward_sentence_start :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_sentence_ends")
    text_iter_forward_sentence_ends :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_sentence_starts")
    text_iter_backward_sentence_starts :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_cursor_position")
    text_iter_forward_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_cursor_position")
    text_iter_backward_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_cursor_positions")
    text_iter_forward_cursor_positions :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_cursor_positions")
    text_iter_backward_cursor_positions :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_visible_cursor_position")
    text_iter_forward_visible_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_visible_cursor_position")
    text_iter_backward_visible_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_visible_cursor_positions")
    text_iter_forward_visible_cursor_positions :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_visible_cursor_positions")
    text_iter_backward_visible_cursor_positions :: proc(iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_iter_set_offset")
    text_iter_set_offset :: proc(iter: ^TextIter, char_offset: i32) ---

    @(link_name = "gtk_text_iter_set_line")
    text_iter_set_line :: proc(iter: ^TextIter, line_number: i32) ---

    @(link_name = "gtk_text_iter_set_line_offset")
    text_iter_set_line_offset :: proc(iter: ^TextIter, char_on_line: i32) ---

    @(link_name = "gtk_text_iter_set_line_index")
    text_iter_set_line_index :: proc(iter: ^TextIter, byte_on_line: i32) ---

    @(link_name = "gtk_text_iter_forward_to_end")
    text_iter_forward_to_end :: proc(iter: ^TextIter) ---

    @(link_name = "gtk_text_iter_forward_to_line_end")
    text_iter_forward_to_line_end :: proc(iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_set_visible_line_offset")
    text_iter_set_visible_line_offset :: proc(iter: ^TextIter, char_on_line: i32) ---

    @(link_name = "gtk_text_iter_set_visible_line_index")
    text_iter_set_visible_line_index :: proc(iter: ^TextIter, byte_on_line: i32) ---

    @(link_name = "gtk_text_iter_forward_to_tag_toggle")
    text_iter_forward_to_tag_toggle :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_to_tag_toggle")
    text_iter_backward_to_tag_toggle :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_find_char")
    text_iter_forward_find_char :: proc(iter: ^TextIter, pred: TextCharPredicate, user_data: glib.pointer, limit: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_find_char")
    text_iter_backward_find_char :: proc(iter: ^TextIter, pred: TextCharPredicate, user_data: glib.pointer, limit: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_forward_search")
    text_iter_forward_search :: proc(iter: ^TextIter, str: cstring, flags: TextSearchFlags, match_start: ^TextIter, match_end: ^TextIter, limit: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_backward_search")
    text_iter_backward_search :: proc(iter: ^TextIter, str: cstring, flags: TextSearchFlags, match_start: ^TextIter, match_end: ^TextIter, limit: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_equal")
    text_iter_equal :: proc(lhs: [^]TextIter, rhs: [^]TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_compare")
    text_iter_compare :: proc(lhs: [^]TextIter, rhs: [^]TextIter) -> i32 ---

    @(link_name = "gtk_text_iter_in_range")
    text_iter_in_range :: proc(iter: ^TextIter, start: ^TextIter, end: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_iter_order")
    text_iter_order :: proc(first: ^TextIter, second: ^TextIter) ---

    @(link_name = "gtk_text_mark_get_type")
    text_mark_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_mark_new")
    text_mark_new :: proc(name: cstring, left_gravity: glib.boolean) -> ^TextMark ---

    @(link_name = "gtk_text_mark_set_visible")
    text_mark_set_visible :: proc(mark: ^TextMark, setting: glib.boolean) ---

    @(link_name = "gtk_text_mark_get_visible")
    text_mark_get_visible :: proc(mark: ^TextMark) -> glib.boolean ---

    @(link_name = "gtk_text_mark_get_name")
    text_mark_get_name :: proc(mark: ^TextMark) -> cstring ---

    @(link_name = "gtk_text_mark_get_deleted")
    text_mark_get_deleted :: proc(mark: ^TextMark) -> glib.boolean ---

    @(link_name = "gtk_text_mark_get_buffer")
    text_mark_get_buffer :: proc(mark: ^TextMark) -> ^TextBuffer ---

    @(link_name = "gtk_text_mark_get_left_gravity")
    text_mark_get_left_gravity :: proc(mark: ^TextMark) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_get_type")
    text_buffer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_buffer_new")
    text_buffer_new :: proc(table: ^TextTagTable) -> ^TextBuffer ---

    @(link_name = "gtk_text_buffer_get_line_count")
    text_buffer_get_line_count :: proc(buffer: ^TextBuffer) -> i32 ---

    @(link_name = "gtk_text_buffer_get_char_count")
    text_buffer_get_char_count :: proc(buffer: ^TextBuffer) -> i32 ---

    @(link_name = "gtk_text_buffer_get_tag_table")
    text_buffer_get_tag_table :: proc(buffer: ^TextBuffer) -> ^TextTagTable ---

    @(link_name = "gtk_text_buffer_set_text")
    text_buffer_set_text :: proc(buffer: ^TextBuffer, text: cstring, len: i32) ---

    @(link_name = "gtk_text_buffer_insert")
    text_buffer_insert :: proc(buffer: ^TextBuffer, iter: ^TextIter, text: cstring, len: i32) ---

    @(link_name = "gtk_text_buffer_insert_at_cursor")
    text_buffer_insert_at_cursor :: proc(buffer: ^TextBuffer, text: cstring, len: i32) ---

    @(link_name = "gtk_text_buffer_insert_interactive")
    text_buffer_insert_interactive :: proc(buffer: ^TextBuffer, iter: ^TextIter, text: cstring, len: i32, default_editable: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_insert_interactive_at_cursor")
    text_buffer_insert_interactive_at_cursor :: proc(buffer: ^TextBuffer, text: cstring, len: i32, default_editable: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_insert_range")
    text_buffer_insert_range :: proc(buffer: ^TextBuffer, iter: ^TextIter, start: ^TextIter, end: ^TextIter) ---

    @(link_name = "gtk_text_buffer_insert_range_interactive")
    text_buffer_insert_range_interactive :: proc(buffer: ^TextBuffer, iter: ^TextIter, start: ^TextIter, end: ^TextIter, default_editable: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_insert_with_tags")
    text_buffer_insert_with_tags :: proc(buffer: ^TextBuffer, iter: ^TextIter, text: cstring, len: i32, first_tag: ^TextTag, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_text_buffer_insert_with_tags_by_name")
    text_buffer_insert_with_tags_by_name :: proc(buffer: ^TextBuffer, iter: ^TextIter, text: cstring, len: i32, first_tag_name: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_text_buffer_insert_markup")
    text_buffer_insert_markup :: proc(buffer: ^TextBuffer, iter: ^TextIter, markup: cstring, len: i32) ---

    @(link_name = "gtk_text_buffer_delete")
    text_buffer_delete :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter) ---

    @(link_name = "gtk_text_buffer_delete_interactive")
    text_buffer_delete_interactive :: proc(buffer: ^TextBuffer, start_iter: ^TextIter, end_iter: ^TextIter, default_editable: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_backspace")
    text_buffer_backspace :: proc(buffer: ^TextBuffer, iter: ^TextIter, interactive: glib.boolean, default_editable: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_get_text")
    text_buffer_get_text :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter, include_hidden_chars: glib.boolean) -> cstring ---

    @(link_name = "gtk_text_buffer_get_slice")
    text_buffer_get_slice :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter, include_hidden_chars: glib.boolean) -> cstring ---

    @(link_name = "gtk_text_buffer_insert_paintable")
    text_buffer_insert_paintable :: proc(buffer: ^TextBuffer, iter: ^TextIter, paintable: ^Paintable) ---

    @(link_name = "gtk_text_buffer_insert_child_anchor")
    text_buffer_insert_child_anchor :: proc(buffer: ^TextBuffer, iter: ^TextIter, anchor: ^TextChildAnchor) ---

    @(link_name = "gtk_text_buffer_create_child_anchor")
    text_buffer_create_child_anchor :: proc(buffer: ^TextBuffer, iter: ^TextIter) -> ^TextChildAnchor ---

    @(link_name = "gtk_text_buffer_add_mark")
    text_buffer_add_mark :: proc(buffer: ^TextBuffer, mark: ^TextMark, where_p: ^TextIter) ---

    @(link_name = "gtk_text_buffer_create_mark")
    text_buffer_create_mark :: proc(buffer: ^TextBuffer, mark_name: cstring, where_p: ^TextIter, left_gravity: glib.boolean) -> ^TextMark ---

    @(link_name = "gtk_text_buffer_move_mark")
    text_buffer_move_mark :: proc(buffer: ^TextBuffer, mark: ^TextMark, where_p: ^TextIter) ---

    @(link_name = "gtk_text_buffer_delete_mark")
    text_buffer_delete_mark :: proc(buffer: ^TextBuffer, mark: ^TextMark) ---

    @(link_name = "gtk_text_buffer_get_mark")
    text_buffer_get_mark :: proc(buffer: ^TextBuffer, name: cstring) -> ^TextMark ---

    @(link_name = "gtk_text_buffer_move_mark_by_name")
    text_buffer_move_mark_by_name :: proc(buffer: ^TextBuffer, name: cstring, where_p: ^TextIter) ---

    @(link_name = "gtk_text_buffer_delete_mark_by_name")
    text_buffer_delete_mark_by_name :: proc(buffer: ^TextBuffer, name: cstring) ---

    @(link_name = "gtk_text_buffer_get_insert")
    text_buffer_get_insert :: proc(buffer: ^TextBuffer) -> ^TextMark ---

    @(link_name = "gtk_text_buffer_get_selection_bound")
    text_buffer_get_selection_bound :: proc(buffer: ^TextBuffer) -> ^TextMark ---

    @(link_name = "gtk_text_buffer_place_cursor")
    text_buffer_place_cursor :: proc(buffer: ^TextBuffer, where_p: ^TextIter) ---

    @(link_name = "gtk_text_buffer_select_range")
    text_buffer_select_range :: proc(buffer: ^TextBuffer, ins: [^]TextIter, bound: ^TextIter) ---

    @(link_name = "gtk_text_buffer_apply_tag")
    text_buffer_apply_tag :: proc(buffer: ^TextBuffer, tag: ^TextTag, start: ^TextIter, end: ^TextIter) ---

    @(link_name = "gtk_text_buffer_remove_tag")
    text_buffer_remove_tag :: proc(buffer: ^TextBuffer, tag: ^TextTag, start: ^TextIter, end: ^TextIter) ---

    @(link_name = "gtk_text_buffer_apply_tag_by_name")
    text_buffer_apply_tag_by_name :: proc(buffer: ^TextBuffer, name: cstring, start: ^TextIter, end: ^TextIter) ---

    @(link_name = "gtk_text_buffer_remove_tag_by_name")
    text_buffer_remove_tag_by_name :: proc(buffer: ^TextBuffer, name: cstring, start: ^TextIter, end: ^TextIter) ---

    @(link_name = "gtk_text_buffer_remove_all_tags")
    text_buffer_remove_all_tags :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter) ---

    @(link_name = "gtk_text_buffer_create_tag")
    text_buffer_create_tag :: proc(buffer: ^TextBuffer, tag_name: cstring, first_property_name: cstring, #c_vararg var_args: ..any) -> ^TextTag ---

    @(link_name = "gtk_text_buffer_get_iter_at_line_offset")
    text_buffer_get_iter_at_line_offset :: proc(buffer: ^TextBuffer, iter: ^TextIter, line_number: i32, char_offset: i32) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_get_iter_at_line_index")
    text_buffer_get_iter_at_line_index :: proc(buffer: ^TextBuffer, iter: ^TextIter, line_number: i32, byte_index: i32) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_get_iter_at_offset")
    text_buffer_get_iter_at_offset :: proc(buffer: ^TextBuffer, iter: ^TextIter, char_offset: i32) ---

    @(link_name = "gtk_text_buffer_get_iter_at_line")
    text_buffer_get_iter_at_line :: proc(buffer: ^TextBuffer, iter: ^TextIter, line_number: i32) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_get_start_iter")
    text_buffer_get_start_iter :: proc(buffer: ^TextBuffer, iter: ^TextIter) ---

    @(link_name = "gtk_text_buffer_get_end_iter")
    text_buffer_get_end_iter :: proc(buffer: ^TextBuffer, iter: ^TextIter) ---

    @(link_name = "gtk_text_buffer_get_bounds")
    text_buffer_get_bounds :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter) ---

    @(link_name = "gtk_text_buffer_get_iter_at_mark")
    text_buffer_get_iter_at_mark :: proc(buffer: ^TextBuffer, iter: ^TextIter, mark: ^TextMark) ---

    @(link_name = "gtk_text_buffer_get_iter_at_child_anchor")
    text_buffer_get_iter_at_child_anchor :: proc(buffer: ^TextBuffer, iter: ^TextIter, anchor: ^TextChildAnchor) ---

    @(link_name = "gtk_text_buffer_get_modified")
    text_buffer_get_modified :: proc(buffer: ^TextBuffer) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_set_modified")
    text_buffer_set_modified :: proc(buffer: ^TextBuffer, setting: glib.boolean) ---

    @(link_name = "gtk_text_buffer_get_has_selection")
    text_buffer_get_has_selection :: proc(buffer: ^TextBuffer) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_add_selection_clipboard")
    text_buffer_add_selection_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard) ---

    @(link_name = "gtk_text_buffer_remove_selection_clipboard")
    text_buffer_remove_selection_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard) ---

    @(link_name = "gtk_text_buffer_cut_clipboard")
    text_buffer_cut_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard, default_editable: glib.boolean) ---

    @(link_name = "gtk_text_buffer_copy_clipboard")
    text_buffer_copy_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard) ---

    @(link_name = "gtk_text_buffer_paste_clipboard")
    text_buffer_paste_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard, override_location: ^TextIter, default_editable: glib.boolean) ---

    @(link_name = "gtk_text_buffer_get_selection_bounds")
    text_buffer_get_selection_bounds :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_delete_selection")
    text_buffer_delete_selection :: proc(buffer: ^TextBuffer, interactive: glib.boolean, default_editable: glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_get_selection_content")
    text_buffer_get_selection_content :: proc(buffer: ^TextBuffer) -> ^ContentProvider ---

    @(link_name = "gtk_text_buffer_get_can_undo")
    text_buffer_get_can_undo :: proc(buffer: ^TextBuffer) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_get_can_redo")
    text_buffer_get_can_redo :: proc(buffer: ^TextBuffer) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_get_enable_undo")
    text_buffer_get_enable_undo :: proc(buffer: ^TextBuffer) -> glib.boolean ---

    @(link_name = "gtk_text_buffer_set_enable_undo")
    text_buffer_set_enable_undo :: proc(buffer: ^TextBuffer, enable_undo: glib.boolean) ---

    @(link_name = "gtk_text_buffer_get_max_undo_levels")
    text_buffer_get_max_undo_levels :: proc(buffer: ^TextBuffer) -> glib.uint_ ---

    @(link_name = "gtk_text_buffer_set_max_undo_levels")
    text_buffer_set_max_undo_levels :: proc(buffer: ^TextBuffer, max_undo_levels: glib.uint_) ---

    @(link_name = "gtk_text_buffer_undo")
    text_buffer_undo :: proc(buffer: ^TextBuffer) ---

    @(link_name = "gtk_text_buffer_redo")
    text_buffer_redo :: proc(buffer: ^TextBuffer) ---

    @(link_name = "gtk_text_buffer_begin_irreversible_action")
    text_buffer_begin_irreversible_action :: proc(buffer: ^TextBuffer) ---

    @(link_name = "gtk_text_buffer_end_irreversible_action")
    text_buffer_end_irreversible_action :: proc(buffer: ^TextBuffer) ---

    @(link_name = "gtk_text_buffer_begin_user_action")
    text_buffer_begin_user_action :: proc(buffer: ^TextBuffer) ---

    @(link_name = "gtk_text_buffer_end_user_action")
    text_buffer_end_user_action :: proc(buffer: ^TextBuffer) ---

    @(link_name = "gtk_text_view_get_type")
    text_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_text_view_new")
    text_view_new :: proc() -> ^Widget ---

    @(link_name = "gtk_text_view_new_with_buffer")
    text_view_new_with_buffer :: proc(buffer: ^TextBuffer) -> ^Widget ---

    @(link_name = "gtk_text_view_set_buffer")
    text_view_set_buffer :: proc(text_view: ^TextView, buffer: ^TextBuffer) ---

    @(link_name = "gtk_text_view_get_buffer")
    text_view_get_buffer :: proc(text_view: ^TextView) -> ^TextBuffer ---

    @(link_name = "gtk_text_view_scroll_to_iter")
    text_view_scroll_to_iter :: proc(text_view: ^TextView, iter: ^TextIter, within_margin: f64, use_align: glib.boolean, xalign: f64, yalign: f64) -> glib.boolean ---

    @(link_name = "gtk_text_view_scroll_to_mark")
    text_view_scroll_to_mark :: proc(text_view: ^TextView, mark: ^TextMark, within_margin: f64, use_align: glib.boolean, xalign: f64, yalign: f64) ---

    @(link_name = "gtk_text_view_scroll_mark_onscreen")
    text_view_scroll_mark_onscreen :: proc(text_view: ^TextView, mark: ^TextMark) ---

    @(link_name = "gtk_text_view_move_mark_onscreen")
    text_view_move_mark_onscreen :: proc(text_view: ^TextView, mark: ^TextMark) -> glib.boolean ---

    @(link_name = "gtk_text_view_place_cursor_onscreen")
    text_view_place_cursor_onscreen :: proc(text_view: ^TextView) -> glib.boolean ---

    @(link_name = "gtk_text_view_get_visible_rect")
    text_view_get_visible_rect :: proc(text_view: ^TextView, visible_rect: ^Rectangle) ---

    @(link_name = "gtk_text_view_set_cursor_visible")
    text_view_set_cursor_visible :: proc(text_view: ^TextView, setting: glib.boolean) ---

    @(link_name = "gtk_text_view_get_cursor_visible")
    text_view_get_cursor_visible :: proc(text_view: ^TextView) -> glib.boolean ---

    @(link_name = "gtk_text_view_reset_cursor_blink")
    text_view_reset_cursor_blink :: proc(text_view: ^TextView) ---

    @(link_name = "gtk_text_view_get_cursor_locations")
    text_view_get_cursor_locations :: proc(text_view: ^TextView, iter: ^TextIter, strong: ^Rectangle, weak: ^Rectangle) ---

    @(link_name = "gtk_text_view_get_iter_location")
    text_view_get_iter_location :: proc(text_view: ^TextView, iter: ^TextIter, location: ^Rectangle) ---

    @(link_name = "gtk_text_view_get_iter_at_location")
    text_view_get_iter_at_location :: proc(text_view: ^TextView, iter: ^TextIter, x: i32, y: i32) -> glib.boolean ---

    @(link_name = "gtk_text_view_get_iter_at_position")
    text_view_get_iter_at_position :: proc(text_view: ^TextView, iter: ^TextIter, trailing: ^i32, x: i32, y: i32) -> glib.boolean ---

    @(link_name = "gtk_text_view_get_line_yrange")
    text_view_get_line_yrange :: proc(text_view: ^TextView, iter: ^TextIter, y: ^i32, height: ^i32) ---

    @(link_name = "gtk_text_view_get_line_at_y")
    text_view_get_line_at_y :: proc(text_view: ^TextView, target_iter: ^TextIter, y: i32, line_top: ^i32) ---

    @(link_name = "gtk_text_view_buffer_to_window_coords")
    text_view_buffer_to_window_coords :: proc(text_view: ^TextView, win: TextWindowType, buffer_x: i32, buffer_y: i32, window_x: ^i32, window_y: ^i32) ---

    @(link_name = "gtk_text_view_window_to_buffer_coords")
    text_view_window_to_buffer_coords :: proc(text_view: ^TextView, win: TextWindowType, window_x: i32, window_y: i32, buffer_x: ^i32, buffer_y: ^i32) ---

    @(link_name = "gtk_text_view_forward_display_line")
    text_view_forward_display_line :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_view_backward_display_line")
    text_view_backward_display_line :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_view_forward_display_line_end")
    text_view_forward_display_line_end :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_view_backward_display_line_start")
    text_view_backward_display_line_start :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_view_starts_display_line")
    text_view_starts_display_line :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---

    @(link_name = "gtk_text_view_move_visually")
    text_view_move_visually :: proc(text_view: ^TextView, iter: ^TextIter, count: i32) -> glib.boolean ---

    @(link_name = "gtk_text_view_im_context_filter_keypress")
    text_view_im_context_filter_keypress :: proc(text_view: ^TextView, event: ^Event) -> glib.boolean ---

    @(link_name = "gtk_text_view_reset_im_context")
    text_view_reset_im_context :: proc(text_view: ^TextView) ---

    @(link_name = "gtk_text_view_get_gutter")
    text_view_get_gutter :: proc(text_view: ^TextView, win: TextWindowType) -> ^Widget ---

    @(link_name = "gtk_text_view_set_gutter")
    text_view_set_gutter :: proc(text_view: ^TextView, win: TextWindowType, widget: ^Widget) ---

    @(link_name = "gtk_text_view_add_child_at_anchor")
    text_view_add_child_at_anchor :: proc(text_view: ^TextView, child: ^Widget, anchor: ^TextChildAnchor) ---

    @(link_name = "gtk_text_view_add_overlay")
    text_view_add_overlay :: proc(text_view: ^TextView, child: ^Widget, xpos: i32, ypos: i32) ---

    @(link_name = "gtk_text_view_move_overlay")
    text_view_move_overlay :: proc(text_view: ^TextView, child: ^Widget, xpos: i32, ypos: i32) ---

    @(link_name = "gtk_text_view_remove")
    text_view_remove :: proc(text_view: ^TextView, child: ^Widget) ---

    @(link_name = "gtk_text_view_set_wrap_mode")
    text_view_set_wrap_mode :: proc(text_view: ^TextView, wrap_mode: WrapMode) ---

    @(link_name = "gtk_text_view_get_wrap_mode")
    text_view_get_wrap_mode :: proc(text_view: ^TextView) -> WrapMode ---

    @(link_name = "gtk_text_view_set_editable")
    text_view_set_editable :: proc(text_view: ^TextView, setting: glib.boolean) ---

    @(link_name = "gtk_text_view_get_editable")
    text_view_get_editable :: proc(text_view: ^TextView) -> glib.boolean ---

    @(link_name = "gtk_text_view_set_overwrite")
    text_view_set_overwrite :: proc(text_view: ^TextView, overwrite: glib.boolean) ---

    @(link_name = "gtk_text_view_get_overwrite")
    text_view_get_overwrite :: proc(text_view: ^TextView) -> glib.boolean ---

    @(link_name = "gtk_text_view_set_accepts_tab")
    text_view_set_accepts_tab :: proc(text_view: ^TextView, accepts_tab: glib.boolean) ---

    @(link_name = "gtk_text_view_get_accepts_tab")
    text_view_get_accepts_tab :: proc(text_view: ^TextView) -> glib.boolean ---

    @(link_name = "gtk_text_view_set_pixels_above_lines")
    text_view_set_pixels_above_lines :: proc(text_view: ^TextView, pixels_above_lines: i32) ---

    @(link_name = "gtk_text_view_get_pixels_above_lines")
    text_view_get_pixels_above_lines :: proc(text_view: ^TextView) -> i32 ---

    @(link_name = "gtk_text_view_set_pixels_below_lines")
    text_view_set_pixels_below_lines :: proc(text_view: ^TextView, pixels_below_lines: i32) ---

    @(link_name = "gtk_text_view_get_pixels_below_lines")
    text_view_get_pixels_below_lines :: proc(text_view: ^TextView) -> i32 ---

    @(link_name = "gtk_text_view_set_pixels_inside_wrap")
    text_view_set_pixels_inside_wrap :: proc(text_view: ^TextView, pixels_inside_wrap: i32) ---

    @(link_name = "gtk_text_view_get_pixels_inside_wrap")
    text_view_get_pixels_inside_wrap :: proc(text_view: ^TextView) -> i32 ---

    @(link_name = "gtk_text_view_set_justification")
    text_view_set_justification :: proc(text_view: ^TextView, justification: Justification) ---

    @(link_name = "gtk_text_view_get_justification")
    text_view_get_justification :: proc(text_view: ^TextView) -> Justification ---

    @(link_name = "gtk_text_view_set_left_margin")
    text_view_set_left_margin :: proc(text_view: ^TextView, left_margin: i32) ---

    @(link_name = "gtk_text_view_get_left_margin")
    text_view_get_left_margin :: proc(text_view: ^TextView) -> i32 ---

    @(link_name = "gtk_text_view_set_right_margin")
    text_view_set_right_margin :: proc(text_view: ^TextView, right_margin: i32) ---

    @(link_name = "gtk_text_view_get_right_margin")
    text_view_get_right_margin :: proc(text_view: ^TextView) -> i32 ---

    @(link_name = "gtk_text_view_set_top_margin")
    text_view_set_top_margin :: proc(text_view: ^TextView, top_margin: i32) ---

    @(link_name = "gtk_text_view_get_top_margin")
    text_view_get_top_margin :: proc(text_view: ^TextView) -> i32 ---

    @(link_name = "gtk_text_view_set_bottom_margin")
    text_view_set_bottom_margin :: proc(text_view: ^TextView, bottom_margin: i32) ---

    @(link_name = "gtk_text_view_get_bottom_margin")
    text_view_get_bottom_margin :: proc(text_view: ^TextView) -> i32 ---

    @(link_name = "gtk_text_view_set_indent")
    text_view_set_indent :: proc(text_view: ^TextView, indent: i32) ---

    @(link_name = "gtk_text_view_get_indent")
    text_view_get_indent :: proc(text_view: ^TextView) -> i32 ---

    @(link_name = "gtk_text_view_set_tabs")
    text_view_set_tabs :: proc(text_view: ^TextView, tabs: [^]pango.TabArray) ---

    @(link_name = "gtk_text_view_get_tabs")
    text_view_get_tabs :: proc(text_view: ^TextView) -> ^pango.TabArray ---

    @(link_name = "gtk_text_view_set_input_purpose")
    text_view_set_input_purpose :: proc(text_view: ^TextView, purpose: InputPurpose) ---

    @(link_name = "gtk_text_view_get_input_purpose")
    text_view_get_input_purpose :: proc(text_view: ^TextView) -> InputPurpose ---

    @(link_name = "gtk_text_view_set_input_hints")
    text_view_set_input_hints :: proc(text_view: ^TextView, hints: InputHints) ---

    @(link_name = "gtk_text_view_get_input_hints")
    text_view_get_input_hints :: proc(text_view: ^TextView) -> InputHints ---

    @(link_name = "gtk_text_view_set_monospace")
    text_view_set_monospace :: proc(text_view: ^TextView, monospace: glib.boolean) ---

    @(link_name = "gtk_text_view_get_monospace")
    text_view_get_monospace :: proc(text_view: ^TextView) -> glib.boolean ---

    @(link_name = "gtk_text_view_set_extra_menu")
    text_view_set_extra_menu :: proc(text_view: ^TextView, model: ^gio.MenuModel) ---

    @(link_name = "gtk_text_view_get_extra_menu")
    text_view_get_extra_menu :: proc(text_view: ^TextView) -> ^gio.MenuModel ---

    @(link_name = "gtk_text_view_get_rtl_context")
    text_view_get_rtl_context :: proc(text_view: ^TextView) -> ^pango.Context ---

    @(link_name = "gtk_text_view_get_ltr_context")
    text_view_get_ltr_context :: proc(text_view: ^TextView) -> ^pango.Context ---

    @(link_name = "gtk_test_accessible_has_role")
    test_accessible_has_role :: proc(accessible: ^Accessible, role: AccessibleRole) -> glib.boolean ---

    @(link_name = "gtk_test_accessible_has_property")
    test_accessible_has_property :: proc(accessible: ^Accessible, property: AccessibleProperty) -> glib.boolean ---

    @(link_name = "gtk_test_accessible_has_relation")
    test_accessible_has_relation :: proc(accessible: ^Accessible, relation: AccessibleRelation) -> glib.boolean ---

    @(link_name = "gtk_test_accessible_has_state")
    test_accessible_has_state :: proc(accessible: ^Accessible, state: AccessibleState) -> glib.boolean ---

    @(link_name = "gtk_test_accessible_check_property")
    test_accessible_check_property :: proc(accessible: ^Accessible, property: AccessibleProperty, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "gtk_test_accessible_check_relation")
    test_accessible_check_relation :: proc(accessible: ^Accessible, relation: AccessibleRelation, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "gtk_test_accessible_check_state")
    test_accessible_check_state :: proc(accessible: ^Accessible, state: AccessibleState, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "gtk_test_accessible_assertion_message_role")
    test_accessible_assertion_message_role :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, accessible: ^Accessible, expected_role: AccessibleRole, actual_role: AccessibleRole) ---

    @(link_name = "gtk_test_init")
    test_init :: proc(argcp: ^i32, argvp: ^^cstring, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_test_register_all_types")
    test_register_all_types :: proc() ---

    @(link_name = "gtk_test_list_all_types")
    test_list_all_types :: proc(n_types: [^]glib.uint_) -> ^gobj.Type ---

    @(link_name = "gtk_test_widget_wait_for_draw")
    test_widget_wait_for_draw :: proc(widget: ^Widget) ---

    @(link_name = "gtk_tree_row_data_get_type")
    tree_row_data_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_drag_source_get_type")
    tree_drag_source_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_drag_source_row_draggable")
    tree_drag_source_row_draggable :: proc(drag_source: ^TreeDragSource, path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_drag_source_drag_data_delete")
    tree_drag_source_drag_data_delete :: proc(drag_source: ^TreeDragSource, path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_drag_source_drag_data_get")
    tree_drag_source_drag_data_get :: proc(drag_source: ^TreeDragSource, path: ^TreePath) -> ^ContentProvider ---

    @(link_name = "gtk_tree_drag_dest_get_type")
    tree_drag_dest_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_drag_dest_drag_data_received")
    tree_drag_dest_drag_data_received :: proc(drag_dest: ^TreeDragDest, dest: ^TreePath, value: ^gobj.Value) -> glib.boolean ---

    @(link_name = "gtk_tree_drag_dest_row_drop_possible")
    tree_drag_dest_row_drop_possible :: proc(drag_dest: ^TreeDragDest, dest_path: ^TreePath, value: ^gobj.Value) -> glib.boolean ---

    @(link_name = "gtk_tree_create_row_drag_content")
    tree_create_row_drag_content :: proc(tree_model: ^TreeModel, path: ^TreePath) -> ^ContentProvider ---

    @(link_name = "gtk_tree_get_row_drag_data")
    tree_get_row_drag_data :: proc(value: ^gobj.Value, tree_model: ^^TreeModel, path: ^^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_list_model_get_type")
    tree_list_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_list_row_get_type")
    tree_list_row_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_list_model_new")
    tree_list_model_new :: proc(root: ^gio.ListModel, passthrough: glib.boolean, autoexpand: glib.boolean, create_func: TreeListModelCreateModelFunc, user_data: glib.pointer, user_destroy: glib.DestroyNotify) -> ^TreeListModel ---

    @(link_name = "gtk_tree_list_model_get_model")
    tree_list_model_get_model :: proc(self: ^TreeListModel) -> ^gio.ListModel ---

    @(link_name = "gtk_tree_list_model_get_passthrough")
    tree_list_model_get_passthrough :: proc(self: ^TreeListModel) -> glib.boolean ---

    @(link_name = "gtk_tree_list_model_set_autoexpand")
    tree_list_model_set_autoexpand :: proc(self: ^TreeListModel, autoexpand: glib.boolean) ---

    @(link_name = "gtk_tree_list_model_get_autoexpand")
    tree_list_model_get_autoexpand :: proc(self: ^TreeListModel) -> glib.boolean ---

    @(link_name = "gtk_tree_list_model_get_child_row")
    tree_list_model_get_child_row :: proc(self: ^TreeListModel, position: glib.uint_) -> ^TreeListRow ---

    @(link_name = "gtk_tree_list_model_get_row")
    tree_list_model_get_row :: proc(self: ^TreeListModel, position: glib.uint_) -> ^TreeListRow ---

    @(link_name = "gtk_tree_list_row_get_item")
    tree_list_row_get_item :: proc(self: ^TreeListRow) -> glib.pointer ---

    @(link_name = "gtk_tree_list_row_set_expanded")
    tree_list_row_set_expanded :: proc(self: ^TreeListRow, expanded: glib.boolean) ---

    @(link_name = "gtk_tree_list_row_get_expanded")
    tree_list_row_get_expanded :: proc(self: ^TreeListRow) -> glib.boolean ---

    @(link_name = "gtk_tree_list_row_is_expandable")
    tree_list_row_is_expandable :: proc(self: ^TreeListRow) -> glib.boolean ---

    @(link_name = "gtk_tree_list_row_get_position")
    tree_list_row_get_position :: proc(self: ^TreeListRow) -> glib.uint_ ---

    @(link_name = "gtk_tree_list_row_get_depth")
    tree_list_row_get_depth :: proc(self: ^TreeListRow) -> glib.uint_ ---

    @(link_name = "gtk_tree_list_row_get_children")
    tree_list_row_get_children :: proc(self: ^TreeListRow) -> ^gio.ListModel ---

    @(link_name = "gtk_tree_list_row_get_parent")
    tree_list_row_get_parent :: proc(self: ^TreeListRow) -> ^TreeListRow ---

    @(link_name = "gtk_tree_list_row_get_child_row")
    tree_list_row_get_child_row :: proc(self: ^TreeListRow, position: glib.uint_) -> ^TreeListRow ---

    @(link_name = "gtk_tree_expander_get_type")
    tree_expander_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_expander_new")
    tree_expander_new :: proc() -> ^Widget ---

    @(link_name = "gtk_tree_expander_get_child")
    tree_expander_get_child :: proc(self: ^TreeExpander) -> ^Widget ---

    @(link_name = "gtk_tree_expander_set_child")
    tree_expander_set_child :: proc(self: ^TreeExpander, child: ^Widget) ---

    @(link_name = "gtk_tree_expander_get_item")
    tree_expander_get_item :: proc(self: ^TreeExpander) -> glib.pointer ---

    @(link_name = "gtk_tree_expander_get_list_row")
    tree_expander_get_list_row :: proc(self: ^TreeExpander) -> ^TreeListRow ---

    @(link_name = "gtk_tree_expander_set_list_row")
    tree_expander_set_list_row :: proc(self: ^TreeExpander, list_row: ^TreeListRow) ---

    @(link_name = "gtk_tree_expander_get_indent_for_depth")
    tree_expander_get_indent_for_depth :: proc(self: ^TreeExpander) -> glib.boolean ---

    @(link_name = "gtk_tree_expander_set_indent_for_depth")
    tree_expander_set_indent_for_depth :: proc(self: ^TreeExpander, indent_for_depth: glib.boolean) ---

    @(link_name = "gtk_tree_expander_get_indent_for_icon")
    tree_expander_get_indent_for_icon :: proc(self: ^TreeExpander) -> glib.boolean ---

    @(link_name = "gtk_tree_expander_set_indent_for_icon")
    tree_expander_set_indent_for_icon :: proc(self: ^TreeExpander, indent_for_icon: glib.boolean) ---

    @(link_name = "gtk_tree_expander_get_hide_expander")
    tree_expander_get_hide_expander :: proc(self: ^TreeExpander) -> glib.boolean ---

    @(link_name = "gtk_tree_expander_set_hide_expander")
    tree_expander_set_hide_expander :: proc(self: ^TreeExpander, hide_expander: glib.boolean) ---

    @(link_name = "gtk_tree_list_row_sorter_get_type")
    tree_list_row_sorter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_list_row_sorter_new")
    tree_list_row_sorter_new :: proc(sorter: ^Sorter) -> ^TreeListRowSorter ---

    @(link_name = "gtk_tree_list_row_sorter_get_sorter")
    tree_list_row_sorter_get_sorter :: proc(self: ^TreeListRowSorter) -> ^Sorter ---

    @(link_name = "gtk_tree_list_row_sorter_set_sorter")
    tree_list_row_sorter_set_sorter :: proc(self: ^TreeListRowSorter, sorter: ^Sorter) ---

    @(link_name = "gtk_tree_model_sort_get_type")
    tree_model_sort_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_model_sort_new_with_model")
    tree_model_sort_new_with_model :: proc(child_model: ^TreeModel) -> ^TreeModel ---

    @(link_name = "gtk_tree_model_sort_get_model")
    tree_model_sort_get_model :: proc(tree_model: ^TreeModelSort) -> ^TreeModel ---

    @(link_name = "gtk_tree_model_sort_convert_child_path_to_path")
    tree_model_sort_convert_child_path_to_path :: proc(tree_model_sort: ^TreeModelSort, child_path: ^TreePath) -> ^TreePath ---

    @(link_name = "gtk_tree_model_sort_convert_child_iter_to_iter")
    tree_model_sort_convert_child_iter_to_iter :: proc(tree_model_sort: ^TreeModelSort, sort_iter: ^TreeIter, child_iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_model_sort_convert_path_to_child_path")
    tree_model_sort_convert_path_to_child_path :: proc(tree_model_sort: ^TreeModelSort, sorted_path: ^TreePath) -> ^TreePath ---

    @(link_name = "gtk_tree_model_sort_convert_iter_to_child_iter")
    tree_model_sort_convert_iter_to_child_iter :: proc(tree_model_sort: ^TreeModelSort, child_iter: ^TreeIter, sorted_iter: ^TreeIter) ---

    @(link_name = "gtk_tree_model_sort_reset_default_sort_func")
    tree_model_sort_reset_default_sort_func :: proc(tree_model_sort: ^TreeModelSort) ---

    @(link_name = "gtk_tree_model_sort_clear_cache")
    tree_model_sort_clear_cache :: proc(tree_model_sort: ^TreeModelSort) ---

    @(link_name = "gtk_tree_model_sort_iter_is_valid")
    tree_model_sort_iter_is_valid :: proc(tree_model_sort: ^TreeModelSort, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_selection_get_type")
    tree_selection_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_selection_set_mode")
    tree_selection_set_mode :: proc(selection: ^TreeSelection, type: SelectionMode) ---

    @(link_name = "gtk_tree_selection_get_mode")
    tree_selection_get_mode :: proc(selection: ^TreeSelection) -> SelectionMode ---

    @(link_name = "gtk_tree_selection_set_select_function")
    tree_selection_set_select_function :: proc(selection: ^TreeSelection, func: TreeSelectionFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "gtk_tree_selection_get_user_data")
    tree_selection_get_user_data :: proc(selection: ^TreeSelection) -> glib.pointer ---

    @(link_name = "gtk_tree_selection_get_tree_view")
    tree_selection_get_tree_view :: proc(selection: ^TreeSelection) -> ^TreeView ---

    @(link_name = "gtk_tree_selection_get_select_function")
    tree_selection_get_select_function :: proc(selection: ^TreeSelection) -> TreeSelectionFunc ---

    @(link_name = "gtk_tree_selection_get_selected")
    tree_selection_get_selected :: proc(selection: ^TreeSelection, model: ^^TreeModel, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_selection_get_selected_rows")
    tree_selection_get_selected_rows :: proc(selection: ^TreeSelection, model: ^^TreeModel) -> ^glib.List ---

    @(link_name = "gtk_tree_selection_count_selected_rows")
    tree_selection_count_selected_rows :: proc(selection: ^TreeSelection) -> i32 ---

    @(link_name = "gtk_tree_selection_selected_foreach")
    tree_selection_selected_foreach :: proc(selection: ^TreeSelection, func: TreeSelectionForeachFunc, data: glib.pointer) ---

    @(link_name = "gtk_tree_selection_select_path")
    tree_selection_select_path :: proc(selection: ^TreeSelection, path: ^TreePath) ---

    @(link_name = "gtk_tree_selection_unselect_path")
    tree_selection_unselect_path :: proc(selection: ^TreeSelection, path: ^TreePath) ---

    @(link_name = "gtk_tree_selection_select_iter")
    tree_selection_select_iter :: proc(selection: ^TreeSelection, iter: ^TreeIter) ---

    @(link_name = "gtk_tree_selection_unselect_iter")
    tree_selection_unselect_iter :: proc(selection: ^TreeSelection, iter: ^TreeIter) ---

    @(link_name = "gtk_tree_selection_path_is_selected")
    tree_selection_path_is_selected :: proc(selection: ^TreeSelection, path: ^TreePath) -> glib.boolean ---

    @(link_name = "gtk_tree_selection_iter_is_selected")
    tree_selection_iter_is_selected :: proc(selection: ^TreeSelection, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_selection_select_all")
    tree_selection_select_all :: proc(selection: ^TreeSelection) ---

    @(link_name = "gtk_tree_selection_unselect_all")
    tree_selection_unselect_all :: proc(selection: ^TreeSelection) ---

    @(link_name = "gtk_tree_selection_select_range")
    tree_selection_select_range :: proc(selection: ^TreeSelection, start_path: ^TreePath, end_path: ^TreePath) ---

    @(link_name = "gtk_tree_selection_unselect_range")
    tree_selection_unselect_range :: proc(selection: ^TreeSelection, start_path: ^TreePath, end_path: ^TreePath) ---

    @(link_name = "gtk_tree_store_get_type")
    tree_store_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_tree_store_new")
    tree_store_new :: proc(n_columns: i32, #c_vararg var_args: ..any) -> ^TreeStore ---

    @(link_name = "gtk_tree_store_newv")
    tree_store_newv :: proc(n_columns: i32, types: [^]gobj.Type) -> ^TreeStore ---

    @(link_name = "gtk_tree_store_set_column_types")
    tree_store_set_column_types :: proc(tree_store: ^TreeStore, n_columns: i32, types: [^]gobj.Type) ---

    @(link_name = "gtk_tree_store_set_value")
    tree_store_set_value :: proc(tree_store: ^TreeStore, iter: ^TreeIter, column: i32, value: ^gobj.Value) ---

    @(link_name = "gtk_tree_store_set")
    tree_store_set :: proc(tree_store: ^TreeStore, iter: ^TreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_store_set_valuesv")
    tree_store_set_valuesv :: proc(tree_store: ^TreeStore, iter: ^TreeIter, columns: [^]i32, values: [^]gobj.Value, n_values: i32) ---

    @(link_name = "gtk_tree_store_set_valist")
    tree_store_set_valist :: proc(tree_store: ^TreeStore, iter: ^TreeIter, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_store_remove")
    tree_store_remove :: proc(tree_store: ^TreeStore, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_store_insert")
    tree_store_insert :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, position: i32) ---

    @(link_name = "gtk_tree_store_insert_before")
    tree_store_insert_before :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, sibling: ^TreeIter) ---

    @(link_name = "gtk_tree_store_insert_after")
    tree_store_insert_after :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, sibling: ^TreeIter) ---

    @(link_name = "gtk_tree_store_insert_with_values")
    tree_store_insert_with_values :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, position: i32, #c_vararg var_args: ..any) ---

    @(link_name = "gtk_tree_store_insert_with_valuesv")
    tree_store_insert_with_valuesv :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, position: i32, columns: [^]i32, values: [^]gobj.Value, n_values: i32) ---

    @(link_name = "gtk_tree_store_prepend")
    tree_store_prepend :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter) ---

    @(link_name = "gtk_tree_store_append")
    tree_store_append :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter) ---

    @(link_name = "gtk_tree_store_is_ancestor")
    tree_store_is_ancestor :: proc(tree_store: ^TreeStore, iter: ^TreeIter, descendant: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_store_iter_depth")
    tree_store_iter_depth :: proc(tree_store: ^TreeStore, iter: ^TreeIter) -> i32 ---

    @(link_name = "gtk_tree_store_clear")
    tree_store_clear :: proc(tree_store: ^TreeStore) ---

    @(link_name = "gtk_tree_store_iter_is_valid")
    tree_store_iter_is_valid :: proc(tree_store: ^TreeStore, iter: ^TreeIter) -> glib.boolean ---

    @(link_name = "gtk_tree_store_reorder")
    tree_store_reorder :: proc(tree_store: ^TreeStore, parent: ^TreeIter, new_order: ^i32) ---

    @(link_name = "gtk_tree_store_swap")
    tree_store_swap :: proc(tree_store: ^TreeStore, a: ^TreeIter, b: ^TreeIter) ---

    @(link_name = "gtk_tree_store_move_before")
    tree_store_move_before :: proc(tree_store: ^TreeStore, iter: ^TreeIter, position: ^TreeIter) ---

    @(link_name = "gtk_tree_store_move_after")
    tree_store_move_after :: proc(tree_store: ^TreeStore, iter: ^TreeIter, position: ^TreeIter) ---

    @(link_name = "gtk_uri_launcher_get_type")
    uri_launcher_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_uri_launcher_new")
    uri_launcher_new :: proc(uri: cstring) -> ^UriLauncher ---

    @(link_name = "gtk_uri_launcher_get_uri")
    uri_launcher_get_uri :: proc(self: ^UriLauncher) -> cstring ---

    @(link_name = "gtk_uri_launcher_set_uri")
    uri_launcher_set_uri :: proc(self: ^UriLauncher, uri: cstring) ---

    @(link_name = "gtk_uri_launcher_launch")
    uri_launcher_launch :: proc(self: ^UriLauncher, parent: ^Window, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_uri_launcher_launch_finish")
    uri_launcher_launch_finish :: proc(self: ^UriLauncher, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_get_major_version")
    get_major_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_get_minor_version")
    get_minor_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_get_micro_version")
    get_micro_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_get_binary_age")
    get_binary_age :: proc() -> glib.uint_ ---

    @(link_name = "gtk_get_interface_age")
    get_interface_age :: proc() -> glib.uint_ ---

    @(link_name = "gtk_check_version")
    check_version :: proc(required_major: glib.uint_, required_minor: glib.uint_, required_micro: glib.uint_) -> cstring ---

    @(link_name = "gtk_video_get_type")
    video_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_video_new")
    video_new :: proc() -> ^Widget ---

    @(link_name = "gtk_video_new_for_media_stream")
    video_new_for_media_stream :: proc(stream: ^MediaStream) -> ^Widget ---

    @(link_name = "gtk_video_new_for_file")
    video_new_for_file :: proc(file: ^gio.File) -> ^Widget ---

    @(link_name = "gtk_video_new_for_filename")
    video_new_for_filename :: proc(filename: cstring) -> ^Widget ---

    @(link_name = "gtk_video_new_for_resource")
    video_new_for_resource :: proc(resource_path: cstring) -> ^Widget ---

    @(link_name = "gtk_video_get_media_stream")
    video_get_media_stream :: proc(self: ^Video) -> ^MediaStream ---

    @(link_name = "gtk_video_set_media_stream")
    video_set_media_stream :: proc(self: ^Video, stream: ^MediaStream) ---

    @(link_name = "gtk_video_get_file")
    video_get_file :: proc(self: ^Video) -> ^gio.File ---

    @(link_name = "gtk_video_set_file")
    video_set_file :: proc(self: ^Video, file: ^gio.File) ---

    @(link_name = "gtk_video_set_filename")
    video_set_filename :: proc(self: ^Video, filename: cstring) ---

    @(link_name = "gtk_video_set_resource")
    video_set_resource :: proc(self: ^Video, resource_path: cstring) ---

    @(link_name = "gtk_video_get_autoplay")
    video_get_autoplay :: proc(self: ^Video) -> glib.boolean ---

    @(link_name = "gtk_video_set_autoplay")
    video_set_autoplay :: proc(self: ^Video, autoplay: glib.boolean) ---

    @(link_name = "gtk_video_get_loop")
    video_get_loop :: proc(self: ^Video) -> glib.boolean ---

    @(link_name = "gtk_video_set_loop")
    video_set_loop :: proc(self: ^Video, loop: glib.boolean) ---

    @(link_name = "gtk_viewport_get_type")
    viewport_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_viewport_new")
    viewport_new :: proc(hadjustment: ^Adjustment, vadjustment: ^Adjustment) -> ^Widget ---

    @(link_name = "gtk_viewport_get_scroll_to_focus")
    viewport_get_scroll_to_focus :: proc(viewport: ^Viewport) -> glib.boolean ---

    @(link_name = "gtk_viewport_set_scroll_to_focus")
    viewport_set_scroll_to_focus :: proc(viewport: ^Viewport, scroll_to_focus: glib.boolean) ---

    @(link_name = "gtk_viewport_set_child")
    viewport_set_child :: proc(viewport: ^Viewport, child: ^Widget) ---

    @(link_name = "gtk_viewport_get_child")
    viewport_get_child :: proc(viewport: ^Viewport) -> ^Widget ---

    @(link_name = "gtk_viewport_scroll_to")
    viewport_scroll_to :: proc(viewport: ^Viewport, descendant: ^Widget, scroll: ^ScrollInfo) ---

    @(link_name = "gtk_volume_button_get_type")
    volume_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_volume_button_new")
    volume_button_new :: proc() -> ^Widget ---

    @(link_name = "gtk_widget_paintable_get_type")
    widget_paintable_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_widget_paintable_new")
    widget_paintable_new :: proc(widget: ^Widget) -> ^Paintable ---

    @(link_name = "gtk_widget_paintable_get_widget")
    widget_paintable_get_widget :: proc(self: ^WidgetPaintable) -> ^Widget ---

    @(link_name = "gtk_widget_paintable_set_widget")
    widget_paintable_set_widget :: proc(self: ^WidgetPaintable, widget: ^Widget) ---

    @(link_name = "gtk_window_controls_get_type")
    window_controls_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_window_controls_new")
    window_controls_new :: proc(side: PackType) -> ^Widget ---

    @(link_name = "gtk_window_controls_get_side")
    window_controls_get_side :: proc(self: ^WindowControls) -> PackType ---

    @(link_name = "gtk_window_controls_set_side")
    window_controls_set_side :: proc(self: ^WindowControls, side: PackType) ---

    @(link_name = "gtk_window_controls_get_decoration_layout")
    window_controls_get_decoration_layout :: proc(self: ^WindowControls) -> cstring ---

    @(link_name = "gtk_window_controls_set_decoration_layout")
    window_controls_set_decoration_layout :: proc(self: ^WindowControls, layout: cstring) ---

    @(link_name = "gtk_window_controls_get_empty")
    window_controls_get_empty :: proc(self: ^WindowControls) -> glib.boolean ---

    @(link_name = "gtk_window_group_get_type")
    window_group_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_window_group_new")
    window_group_new :: proc() -> ^WindowGroup ---

    @(link_name = "gtk_window_group_add_window")
    window_group_add_window :: proc(window_group: ^WindowGroup, window: ^Window) ---

    @(link_name = "gtk_window_group_remove_window")
    window_group_remove_window :: proc(window_group: ^WindowGroup, window: ^Window) ---

    @(link_name = "gtk_window_group_list_windows")
    window_group_list_windows :: proc(window_group: ^WindowGroup) -> ^glib.List ---

    @(link_name = "gtk_window_handle_get_type")
    window_handle_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_window_handle_new")
    window_handle_new :: proc() -> ^Widget ---

    @(link_name = "gtk_window_handle_get_child")
    window_handle_get_child :: proc(self: ^WindowHandle) -> ^Widget ---

    @(link_name = "gtk_window_handle_set_child")
    window_handle_set_child :: proc(self: ^WindowHandle, child: ^Widget) ---

}

