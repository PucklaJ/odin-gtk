package gtk

import glib "../glib"
import gobj "../glib/gobject"
import "base:intrinsics"

CSS_SECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CssSection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CssSection, ptr, TYPE_CSS_SECTION)
}

IS_CSS_SECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CSS_SECTION)
}

APP_LAUNCH_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AppLaunchContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AppLaunchContext, ptr, TYPE_APP_LAUNCH_CONTEXT)
}

IS_APP_LAUNCH_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_APP_LAUNCH_CONTEXT)
}

CAIRO_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CairoContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CairoContext, ptr, TYPE_CAIRO_CONTEXT)
}

IS_CAIRO_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CAIRO_CONTEXT)
}

CICP_PARAMS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CicpParams where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CicpParams, ptr, TYPE_CICP_PARAMS)
}

IS_CICP_PARAMS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CICP_PARAMS)
}

CLIPBOARD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Clipboard where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Clipboard, ptr, TYPE_CLIPBOARD)
}

IS_CLIPBOARD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CLIPBOARD)
}

COLOR_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorState where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorState, ptr, TYPE_COLOR_STATE)
}

IS_COLOR_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_STATE)
}

CONTENT_DESERIALIZER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ContentDeserializer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ContentDeserializer, ptr, TYPE_CONTENT_DESERIALIZER)
}

IS_CONTENT_DESERIALIZER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONTENT_DESERIALIZER)
}

CONTENT_FORMATS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ContentFormats where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ContentFormats, ptr, TYPE_CONTENT_FORMATS)
}

IS_CONTENT_FORMATS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONTENT_FORMATS)
}

CONTENT_FORMATS_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ContentFormatsBuilder where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        ContentFormatsBuilder,
        ptr,
        TYPE_CONTENT_FORMATS_BUILDER,
    )
}

IS_CONTENT_FORMATS_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONTENT_FORMATS_BUILDER)
}

FILE_LIST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileList where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileList, ptr, TYPE_FILE_LIST)
}

IS_FILE_LIST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_LIST)
}

CONTENT_PROVIDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ContentProvider where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ContentProvider, ptr, TYPE_CONTENT_PROVIDER)
}

IS_CONTENT_PROVIDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONTENT_PROVIDER)
}

CONTENT_SERIALIZER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ContentSerializer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ContentSerializer, ptr, TYPE_CONTENT_SERIALIZER)
}

IS_CONTENT_SERIALIZER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONTENT_SERIALIZER)
}

CURSOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Cursor where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Cursor, ptr, TYPE_CURSOR)
}

IS_CURSOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CURSOR)
}

DEVICE_TOOL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DeviceTool where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DeviceTool, ptr, TYPE_DEVICE_TOOL)
}

IS_DEVICE_TOOL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DEVICE_TOOL)
}

DEVICE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Device where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Device, ptr, TYPE_DEVICE)
}

IS_DEVICE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DEVICE)
}

DEVICE_PAD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DevicePad where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DevicePad, ptr, TYPE_DEVICE_PAD)
}

IS_DEVICE_PAD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DEVICE_PAD)
}

DRAG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Drag where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Drag, ptr, TYPE_DRAG)
}

IS_DRAG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAG)
}

EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Event where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Event, ptr, TYPE_EVENT)
}

IS_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT)
}

EVENT_SEQUENCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventSequence where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EventSequence, ptr, TYPE_EVENT_SEQUENCE)
}

IS_EVENT_SEQUENCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_SEQUENCE)
}

BUTTON_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ButtonEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ButtonEvent, ptr, TYPE_BUTTON_EVENT)
}

IS_BUTTON_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUTTON_EVENT)
}

CROSSING_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CrossingEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CrossingEvent, ptr, TYPE_CROSSING_EVENT)
}

IS_CROSSING_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CROSSING_EVENT)
}

DELETE_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DeleteEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DeleteEvent, ptr, TYPE_DELETE_EVENT)
}

IS_DELETE_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DELETE_EVENT)
}

DND_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DNDEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DNDEvent, ptr, TYPE_DND_EVENT)
}

IS_DND_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DND_EVENT)
}

FOCUS_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FocusEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FocusEvent, ptr, TYPE_FOCUS_EVENT)
}

IS_FOCUS_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FOCUS_EVENT)
}

GRAB_BROKEN_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GrabBrokenEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GrabBrokenEvent, ptr, TYPE_GRAB_BROKEN_EVENT)
}

IS_GRAB_BROKEN_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GRAB_BROKEN_EVENT)
}

KEY_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^KeyEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(KeyEvent, ptr, TYPE_KEY_EVENT)
}

IS_KEY_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_KEY_EVENT)
}

MOTION_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MotionEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MotionEvent, ptr, TYPE_MOTION_EVENT)
}

IS_MOTION_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MOTION_EVENT)
}

PAD_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PadEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PadEvent, ptr, TYPE_PAD_EVENT)
}

IS_PAD_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAD_EVENT)
}

PROXIMITY_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ProximityEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ProximityEvent, ptr, TYPE_PROXIMITY_EVENT)
}

IS_PROXIMITY_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PROXIMITY_EVENT)
}

SCROLL_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrollEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScrollEvent, ptr, TYPE_SCROLL_EVENT)
}

IS_SCROLL_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLL_EVENT)
}

TOUCH_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TouchEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TouchEvent, ptr, TYPE_TOUCH_EVENT)
}

IS_TOUCH_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOUCH_EVENT)
}

TOUCHPAD_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TouchpadEvent where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TouchpadEvent, ptr, TYPE_TOUCHPAD_EVENT)
}

IS_TOUCHPAD_EVENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOUCHPAD_EVENT)
}

FRAME_CLOCK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FrameClock where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FrameClock, ptr, TYPE_FRAME_CLOCK)
}

IS_FRAME_CLOCK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FRAME_CLOCK)
}

MONITOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Monitor where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Monitor, ptr, TYPE_MONITOR)
}

IS_MONITOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MONITOR)
}

POPUP_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PopupLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PopupLayout, ptr, TYPE_POPUP_LAYOUT)
}

IS_POPUP_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POPUP_LAYOUT)
}

SURFACE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Surface where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Surface, ptr, TYPE_SURFACE)
}

IS_SURFACE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SURFACE)
}

SEAT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Seat where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Seat, ptr, TYPE_SEAT)
}

IS_SEAT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SEAT)
}

DISPLAY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Display where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Display, ptr, TYPE_DISPLAY)
}

IS_DISPLAY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DISPLAY)
}

DISPLAY_MANAGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DisplayManager where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DisplayManager, ptr, TYPE_DISPLAY_MANAGER)
}

IS_DISPLAY_MANAGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DISPLAY_MANAGER)
}

DMABUF_FORMATS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DmabufFormats where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DmabufFormats, ptr, TYPE_DMABUF_FORMATS)
}

IS_DMABUF_FORMATS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DMABUF_FORMATS)
}

TEXTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Texture where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Texture, ptr, TYPE_TEXTURE)
}

IS_TEXTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXTURE)
}

DMABUF_TEXTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DmabufTexture where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DmabufTexture, ptr, TYPE_DMABUF_TEXTURE)
}

IS_DMABUF_TEXTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DMABUF_TEXTURE)
}

DMABUF_TEXTURE_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DmabufTextureBuilder where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        DmabufTextureBuilder,
        ptr,
        TYPE_DMABUF_TEXTURE_BUILDER,
    )
}

IS_DMABUF_TEXTURE_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DMABUF_TEXTURE_BUILDER)
}

DRAG_SURFACE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DragSurface where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DragSurface, ptr, TYPE_DRAG_SURFACE)
}

IS_DRAG_SURFACE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAG_SURFACE)
}

DRAG_SURFACE_SIZE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DragSurfaceSize where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DragSurfaceSize, ptr, TYPE_DRAG_SURFACE_SIZE)
}

IS_DRAG_SURFACE_SIZE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAG_SURFACE_SIZE)
}

DRAW_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DrawContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DrawContext, ptr, TYPE_DRAW_CONTEXT)
}

IS_DRAW_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAW_CONTEXT)
}

DROP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Drop where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Drop, ptr, TYPE_DROP)
}

IS_DROP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DROP)
}

CICP_RANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CicpRange where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CicpRange, ptr, TYPE_CICP_RANGE)
}

IS_CICP_RANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CICP_RANGE)
}

INPUT_SOURCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^InputSource where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(InputSource, ptr, TYPE_INPUT_SOURCE)
}

IS_INPUT_SOURCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INPUT_SOURCE)
}

DEVICE_PAD_FEATURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DevicePadFeature where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DevicePadFeature, ptr, TYPE_DEVICE_PAD_FEATURE)
}

IS_DEVICE_PAD_FEATURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DEVICE_PAD_FEATURE)
}

DEVICE_TOOL_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DeviceToolType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DeviceToolType, ptr, TYPE_DEVICE_TOOL_TYPE)
}

IS_DEVICE_TOOL_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DEVICE_TOOL_TYPE)
}

DRAG_CANCEL_REASON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DragCancelReason where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DragCancelReason, ptr, TYPE_DRAG_CANCEL_REASON)
}

IS_DRAG_CANCEL_REASON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAG_CANCEL_REASON)
}

COLOR_CHANNEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorChannel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorChannel, ptr, TYPE_COLOR_CHANNEL)
}

IS_COLOR_CHANNEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_CHANNEL)
}

GL_API :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLAPI where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLAPI, ptr, TYPE_GL_API)
}

IS_GL_API :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_API)
}

GRAVITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Gravity where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Gravity, ptr, TYPE_GRAVITY)
}

IS_GRAVITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GRAVITY)
}

MODIFIER_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ModifierType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ModifierType, ptr, TYPE_MODIFIER_TYPE)
}

IS_MODIFIER_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MODIFIER_TYPE)
}

AXIS_USE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AxisUse where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AxisUse, ptr, TYPE_AXIS_USE)
}

IS_AXIS_USE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_AXIS_USE)
}

AXIS_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AxisFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AxisFlags, ptr, TYPE_AXIS_FLAGS)
}

IS_AXIS_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_AXIS_FLAGS)
}

DRAG_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DragAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DragAction, ptr, TYPE_DRAG_ACTION)
}

IS_DRAG_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAG_ACTION)
}

SCROLL_RELATIVE_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrollRelativeDirection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        ScrollRelativeDirection,
        ptr,
        TYPE_SCROLL_RELATIVE_DIRECTION,
    )
}

IS_SCROLL_RELATIVE_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLL_RELATIVE_DIRECTION)
}

MEMORY_FORMAT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MemoryFormat where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MemoryFormat, ptr, TYPE_MEMORY_FORMAT)
}

IS_MEMORY_FORMAT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MEMORY_FORMAT)
}

EVENT_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EventType, ptr, TYPE_EVENT_TYPE)
}

IS_EVENT_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_TYPE)
}

TOUCHPAD_GESTURE_PHASE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TouchpadGesturePhase where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        TouchpadGesturePhase,
        ptr,
        TYPE_TOUCHPAD_GESTURE_PHASE,
    )
}

IS_TOUCHPAD_GESTURE_PHASE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOUCHPAD_GESTURE_PHASE)
}

SCROLL_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrollDirection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScrollDirection, ptr, TYPE_SCROLL_DIRECTION)
}

IS_SCROLL_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLL_DIRECTION)
}

SCROLL_UNIT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrollUnit where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScrollUnit, ptr, TYPE_SCROLL_UNIT)
}

IS_SCROLL_UNIT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLL_UNIT)
}

NOTIFY_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NotifyType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NotifyType, ptr, TYPE_NOTIFY_TYPE)
}

IS_NOTIFY_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NOTIFY_TYPE)
}

CROSSING_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CrossingMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CrossingMode, ptr, TYPE_CROSSING_MODE)
}

IS_CROSSING_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CROSSING_MODE)
}

KEY_MATCH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^KeyMatch where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(KeyMatch, ptr, TYPE_KEY_MATCH)
}

IS_KEY_MATCH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_KEY_MATCH)
}

FRAME_CLOCK_PHASE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FrameClockPhase where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FrameClockPhase, ptr, TYPE_FRAME_CLOCK_PHASE)
}

IS_FRAME_CLOCK_PHASE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FRAME_CLOCK_PHASE)
}

SUBPIXEL_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SubpixelLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SubpixelLayout, ptr, TYPE_SUBPIXEL_LAYOUT)
}

IS_SUBPIXEL_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SUBPIXEL_LAYOUT)
}

PAINTABLE_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PaintableFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PaintableFlags, ptr, TYPE_PAINTABLE_FLAGS)
}

IS_PAINTABLE_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAINTABLE_FLAGS)
}

ANCHOR_HINTS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AnchorHints where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AnchorHints, ptr, TYPE_ANCHOR_HINTS)
}

IS_ANCHOR_HINTS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ANCHOR_HINTS)
}

SEAT_CAPABILITIES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SeatCapabilities where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SeatCapabilities, ptr, TYPE_SEAT_CAPABILITIES)
}

IS_SEAT_CAPABILITIES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SEAT_CAPABILITIES)
}

SURFACE_EDGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SurfaceEdge where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SurfaceEdge, ptr, TYPE_SURFACE_EDGE)
}

IS_SURFACE_EDGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SURFACE_EDGE)
}

FULLSCREEN_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FullscreenMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FullscreenMode, ptr, TYPE_FULLSCREEN_MODE)
}

IS_FULLSCREEN_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FULLSCREEN_MODE)
}

TOPLEVEL_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ToplevelState where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ToplevelState, ptr, TYPE_TOPLEVEL_STATE)
}

IS_TOPLEVEL_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOPLEVEL_STATE)
}

TITLEBAR_GESTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TitlebarGesture where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TitlebarGesture, ptr, TYPE_TITLEBAR_GESTURE)
}

IS_TITLEBAR_GESTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TITLEBAR_GESTURE)
}

TOPLEVEL_CAPABILITIES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ToplevelCapabilities where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        ToplevelCapabilities,
        ptr,
        TYPE_TOPLEVEL_CAPABILITIES,
    )
}

IS_TOPLEVEL_CAPABILITIES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOPLEVEL_CAPABILITIES)
}

GL_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLContext, ptr, TYPE_GL_CONTEXT)
}

IS_GL_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_CONTEXT)
}

GL_TEXTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLTexture where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLTexture, ptr, TYPE_GL_TEXTURE)
}

IS_GL_TEXTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_TEXTURE)
}

GL_TEXTURE_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLTextureBuilder where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLTextureBuilder, ptr, TYPE_GL_TEXTURE_BUILDER)
}

IS_GL_TEXTURE_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_TEXTURE_BUILDER)
}

MEMORY_TEXTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MemoryTexture where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MemoryTexture, ptr, TYPE_MEMORY_TEXTURE)
}

IS_MEMORY_TEXTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MEMORY_TEXTURE)
}

MEMORY_TEXTURE_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MemoryTextureBuilder where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        MemoryTextureBuilder,
        ptr,
        TYPE_MEMORY_TEXTURE_BUILDER,
    )
}

IS_MEMORY_TEXTURE_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MEMORY_TEXTURE_BUILDER)
}

PAINTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Paintable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Paintable, ptr, TYPE_PAINTABLE)
}

IS_PAINTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAINTABLE)
}

POPUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Popup where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Popup, ptr, TYPE_POPUP)
}

IS_POPUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POPUP)
}

RECTANGLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Rectangle where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Rectangle, ptr, TYPE_RECTANGLE)
}

IS_RECTANGLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RECTANGLE)
}

RGBA_CAST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RGBA where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(RGBA, ptr, TYPE_RGBA)
}

IS_RGBA :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RGBA)
}

SNAPSHOT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Snapshot where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Snapshot, ptr, TYPE_SNAPSHOT)
}

IS_SNAPSHOT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SNAPSHOT)
}

TEXTURE_DOWNLOADER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextureDownloader where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextureDownloader, ptr, TYPE_TEXTURE_DOWNLOADER)
}

IS_TEXTURE_DOWNLOADER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXTURE_DOWNLOADER)
}

TOPLEVEL_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ToplevelLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ToplevelLayout, ptr, TYPE_TOPLEVEL_LAYOUT)
}

IS_TOPLEVEL_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOPLEVEL_LAYOUT)
}

TOPLEVEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Toplevel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Toplevel, ptr, TYPE_TOPLEVEL)
}

IS_TOPLEVEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOPLEVEL)
}

TOPLEVEL_SIZE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ToplevelSize where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ToplevelSize, ptr, TYPE_TOPLEVEL_SIZE)
}

IS_TOPLEVEL_SIZE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOPLEVEL_SIZE)
}

VULKAN_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^VulkanContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(VulkanContext, ptr, TYPE_VULKAN_CONTEXT)
}

IS_VULKAN_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_VULKAN_CONTEXT)
}

BLEND_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BlendNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BlendNode, ptr, TYPE_BLEND_NODE)
}

IS_BLEND_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BLEND_NODE)
}

BLUR_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BlurNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BlurNode, ptr, TYPE_BLUR_NODE)
}

IS_BLUR_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BLUR_NODE)
}

BORDER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BorderNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BorderNode, ptr, TYPE_BORDER_NODE)
}

IS_BORDER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BORDER_NODE)
}

CAIRO_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CairoNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CairoNode, ptr, TYPE_CAIRO_NODE)
}

IS_CAIRO_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CAIRO_NODE)
}

CLIP_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ClipNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ClipNode, ptr, TYPE_CLIP_NODE)
}

IS_CLIP_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CLIP_NODE)
}

COLOR_MATRIX_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorMatrixNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorMatrixNode, ptr, TYPE_COLOR_MATRIX_NODE)
}

IS_COLOR_MATRIX_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_MATRIX_NODE)
}

COLOR_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorNode, ptr, TYPE_COLOR_NODE)
}

IS_COLOR_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_NODE)
}

COMPONENT_TRANSFER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ComponentTransfer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ComponentTransfer, ptr, TYPE_COMPONENT_TRANSFER)
}

IS_COMPONENT_TRANSFER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COMPONENT_TRANSFER)
}

COMPONENT_TRANSFER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ComponentTransferNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        ComponentTransferNode,
        ptr,
        TYPE_COMPONENT_TRANSFER_NODE,
    )
}

IS_COMPONENT_TRANSFER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COMPONENT_TRANSFER_NODE)
}

COMPOSITE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CompositeNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CompositeNode, ptr, TYPE_COMPOSITE_NODE)
}

IS_COMPOSITE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COMPOSITE_NODE)
}

RENDER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RenderNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(RenderNode, ptr, TYPE_RENDER_NODE)
}

IS_RENDER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RENDER_NODE)
}

CONIC_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConicGradientNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ConicGradientNode, ptr, TYPE_CONIC_GRADIENT_NODE)
}

IS_CONIC_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONIC_GRADIENT_NODE)
}

COPY_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CopyNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CopyNode, ptr, TYPE_COPY_NODE)
}

IS_COPY_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COPY_NODE)
}

CONTAINER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ContainerNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ContainerNode, ptr, TYPE_CONTAINER_NODE)
}

IS_CONTAINER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONTAINER_NODE)
}

CROSS_FADE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CrossFadeNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CrossFadeNode, ptr, TYPE_CROSS_FADE_NODE)
}

IS_CROSS_FADE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CROSS_FADE_NODE)
}

DEBUG_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DebugNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DebugNode, ptr, TYPE_DEBUG_NODE)
}

IS_DEBUG_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DEBUG_NODE)
}

FILL_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FillNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FillNode, ptr, TYPE_FILL_NODE)
}

IS_FILL_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILL_NODE)
}

SHADER_ARGS_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShaderArgsBuilder where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShaderArgsBuilder, ptr, TYPE_SHADER_ARGS_BUILDER)
}

IS_SHADER_ARGS_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHADER_ARGS_BUILDER)
}

GL_SHADER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLShader where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLShader, ptr, TYPE_GL_SHADER)
}

IS_GL_SHADER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_SHADER)
}

GL_SHADER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLShaderNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLShaderNode, ptr, TYPE_GL_SHADER_NODE)
}

IS_GL_SHADER_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_SHADER_NODE)
}

INSET_SHADOW_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^InsetShadowNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(InsetShadowNode, ptr, TYPE_INSET_SHADOW_NODE)
}

IS_INSET_SHADOW_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INSET_SHADOW_NODE)
}

ISOLATION_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IsolationNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IsolationNode, ptr, TYPE_ISOLATION_NODE)
}

IS_ISOLATION_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ISOLATION_NODE)
}

LINEAR_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LinearGradientNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LinearGradientNode, ptr, TYPE_LINEAR_GRADIENT_NODE)
}

IS_LINEAR_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LINEAR_GRADIENT_NODE)
}

REPEATING_LINEAR_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RepeatingLinearGradientNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        RepeatingLinearGradientNode,
        ptr,
        TYPE_REPEATING_LINEAR_GRADIENT_NODE,
    )
}

IS_REPEATING_LINEAR_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_REPEATING_LINEAR_GRADIENT_NODE)
}

MASK_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MaskNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MaskNode, ptr, TYPE_MASK_NODE)
}

IS_MASK_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MASK_NODE)
}

OPACITY_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^OpacityNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(OpacityNode, ptr, TYPE_OPACITY_NODE)
}

IS_OPACITY_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_OPACITY_NODE)
}

OUTSET_SHADOW_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^OutsetShadowNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(OutsetShadowNode, ptr, TYPE_OUTSET_SHADOW_NODE)
}

IS_OUTSET_SHADOW_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_OUTSET_SHADOW_NODE)
}

PASTE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PasteNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PasteNode, ptr, TYPE_PASTE_NODE)
}

IS_PASTE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PASTE_NODE)
}

PATH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Path where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Path, ptr, TYPE_PATH)
}

IS_PATH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PATH)
}

PATH_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PathBuilder where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PathBuilder, ptr, TYPE_PATH_BUILDER)
}

IS_PATH_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PATH_BUILDER)
}

PATH_POINT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PathPoint where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PathPoint, ptr, TYPE_PATH_POINT)
}

IS_PATH_POINT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PATH_POINT)
}

PATH_MEASURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PathMeasure where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PathMeasure, ptr, TYPE_PATH_MEASURE)
}

IS_PATH_MEASURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PATH_MEASURE)
}

RADIAL_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RadialGradientNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(RadialGradientNode, ptr, TYPE_RADIAL_GRADIENT_NODE)
}

IS_RADIAL_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RADIAL_GRADIENT_NODE)
}

REPEATING_RADIAL_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RepeatingRadialGradientNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        RepeatingRadialGradientNode,
        ptr,
        TYPE_REPEATING_RADIAL_GRADIENT_NODE,
    )
}

IS_REPEATING_RADIAL_GRADIENT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_REPEATING_RADIAL_GRADIENT_NODE)
}

RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Renderer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Renderer, ptr, TYPE_RENDERER)
}

IS_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RENDERER)
}

REPEAT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RepeatNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(RepeatNode, ptr, TYPE_REPEAT_NODE)
}

IS_REPEAT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_REPEAT_NODE)
}

ROUNDED_CLIP_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RoundedClipNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(RoundedClipNode, ptr, TYPE_ROUNDED_CLIP_NODE)
}

IS_ROUNDED_CLIP_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ROUNDED_CLIP_NODE)
}

SHADOW_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShadowNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShadowNode, ptr, TYPE_SHADOW_NODE)
}

IS_SHADOW_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHADOW_NODE)
}

STROKE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Stroke where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Stroke, ptr, TYPE_STROKE)
}

IS_STROKE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STROKE)
}

STROKE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StrokeNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StrokeNode, ptr, TYPE_STROKE_NODE)
}

IS_STROKE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STROKE_NODE)
}

SUBSURFACE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SubsurfaceNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SubsurfaceNode, ptr, TYPE_SUBSURFACE_NODE)
}

IS_SUBSURFACE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SUBSURFACE_NODE)
}

TEXT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextNode, ptr, TYPE_TEXT_NODE)
}

IS_TEXT_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_NODE)
}

TEXTURE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextureNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextureNode, ptr, TYPE_TEXTURE_NODE)
}

IS_TEXTURE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXTURE_NODE)
}

TEXTURE_SCALE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextureScaleNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextureScaleNode, ptr, TYPE_TEXTURE_SCALE_NODE)
}

IS_TEXTURE_SCALE_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXTURE_SCALE_NODE)
}

TRANSFORM :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Transform where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Transform, ptr, TYPE_TRANSFORM)
}

IS_TRANSFORM :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TRANSFORM)
}

TRANSFORM_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TransformNode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TransformNode, ptr, TYPE_TRANSFORM_NODE)
}

IS_TRANSFORM_NODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TRANSFORM_NODE)
}

CAIRO_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CairoRenderer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CairoRenderer, ptr, TYPE_CAIRO_RENDERER)
}

IS_CAIRO_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CAIRO_RENDERER)
}

VULKAN_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^VulkanRenderer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(VulkanRenderer, ptr, TYPE_VULKAN_RENDERER)
}

IS_VULKAN_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_VULKAN_RENDERER)
}

GL_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLRenderer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLRenderer, ptr, TYPE_GL_RENDERER)
}

IS_GL_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_RENDERER)
}

RENDER_NODE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RenderNodeType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(RenderNodeType, ptr, TYPE_RENDER_NODE_TYPE)
}

IS_RENDER_NODE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RENDER_NODE_TYPE)
}

SCALING_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScalingFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScalingFilter, ptr, TYPE_SCALING_FILTER)
}

IS_SCALING_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCALING_FILTER)
}

BLEND_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BlendMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BlendMode, ptr, TYPE_BLEND_MODE)
}

IS_BLEND_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BLEND_MODE)
}

PORTER_DUFF :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PorterDuff where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PorterDuff, ptr, TYPE_PORTER_DUFF)
}

IS_PORTER_DUFF :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PORTER_DUFF)
}

CORNER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Corner where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Corner, ptr, TYPE_CORNER)
}

IS_CORNER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CORNER)
}

FILL_RULE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FillRule where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FillRule, ptr, TYPE_FILL_RULE)
}

IS_FILL_RULE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILL_RULE)
}

ISOLATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Isolation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Isolation, ptr, TYPE_ISOLATION)
}

IS_ISOLATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ISOLATION)
}

LINE_CAP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LineCap where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LineCap, ptr, TYPE_LINE_CAP)
}

IS_LINE_CAP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LINE_CAP)
}

LINE_JOIN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LineJoin where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LineJoin, ptr, TYPE_LINE_JOIN)
}

IS_LINE_JOIN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LINE_JOIN)
}

PATH_OPERATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PathOperation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PathOperation, ptr, TYPE_PATH_OPERATION)
}

IS_PATH_OPERATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PATH_OPERATION)
}

PATH_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PathDirection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PathDirection, ptr, TYPE_PATH_DIRECTION)
}

IS_PATH_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PATH_DIRECTION)
}

TRANSFORM_CATEGORY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TransformCategory where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TransformCategory, ptr, TYPE_TRANSFORM_CATEGORY)
}

IS_TRANSFORM_CATEGORY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TRANSFORM_CATEGORY)
}

GL_UNIFORM_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLUniformType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLUniformType, ptr, TYPE_GL_UNIFORM_TYPE)
}

IS_GL_UNIFORM_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_UNIFORM_TYPE)
}

MASK_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MaskMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MaskMode, ptr, TYPE_MASK_MODE)
}

IS_MASK_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MASK_MODE)
}

PATH_FOREACH_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PathForeachFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PathForeachFlags, ptr, TYPE_PATH_FOREACH_FLAGS)
}

IS_PATH_FOREACH_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PATH_FOREACH_FLAGS)
}

PATH_INTERSECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PathIntersection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PathIntersection, ptr, TYPE_PATH_INTERSECTION)
}

IS_PATH_INTERSECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PATH_INTERSECTION)
}

SHORTCUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Shortcut where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Shortcut, ptr, TYPE_SHORTCUT)
}

IS_SHORTCUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT)
}

SHORTCUT_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutAction, ptr, TYPE_SHORTCUT_ACTION)
}

IS_SHORTCUT_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT_ACTION)
}

NOTHING_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NothingAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NothingAction, ptr, TYPE_NOTHING_ACTION)
}

IS_NOTHING_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NOTHING_ACTION)
}

CALLBACK_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CallbackAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CallbackAction, ptr, TYPE_CALLBACK_ACTION)
}

IS_CALLBACK_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CALLBACK_ACTION)
}

MNEMONIC_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MnemonicAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MnemonicAction, ptr, TYPE_MNEMONIC_ACTION)
}

IS_MNEMONIC_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MNEMONIC_ACTION)
}

ACTIVATE_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ActivateAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ActivateAction, ptr, TYPE_ACTIVATE_ACTION)
}

IS_ACTIVATE_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACTIVATE_ACTION)
}

SIGNAL_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SignalAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SignalAction, ptr, TYPE_SIGNAL_ACTION)
}

IS_SIGNAL_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SIGNAL_ACTION)
}

NAMED_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NamedAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NamedAction, ptr, TYPE_NAMED_ACTION)
}

IS_NAMED_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NAMED_ACTION)
}

WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Widget where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Widget, ptr, TYPE_WIDGET)
}

IS_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_WIDGET)
}

REQUISITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Requisition where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Requisition, ptr, TYPE_REQUISITION)
}

IS_REQUISITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_REQUISITION)
}

APPLICATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Application where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Application, ptr, TYPE_APPLICATION)
}

IS_APPLICATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_APPLICATION)
}

WINDOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Window where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Window, ptr, TYPE_WINDOW)
}

IS_WINDOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_WINDOW)
}

ABOUT_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AboutDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AboutDialog, ptr, TYPE_ABOUT_DIALOG)
}

IS_ABOUT_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ABOUT_DIALOG)
}

ACCESSIBLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Accessible where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Accessible, ptr, TYPE_ACCESSIBLE)
}

IS_ACCESSIBLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE)
}

ACCESSIBLE_TEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleText where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleText, ptr, TYPE_ACCESSIBLE_TEXT)
}

IS_ACCESSIBLE_TEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_TEXT)
}

ACCESSIBLE_HYPERTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleHypertext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleHypertext, ptr, TYPE_ACCESSIBLE_HYPERTEXT)
}

IS_ACCESSIBLE_HYPERTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_HYPERTEXT)
}

ACCESSIBLE_RANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleRange where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleRange, ptr, TYPE_ACCESSIBLE_RANGE)
}

IS_ACCESSIBLE_RANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_RANGE)
}

ACTIONABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Actionable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Actionable, ptr, TYPE_ACTIONABLE)
}

IS_ACTIONABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACTIONABLE)
}

ACTION_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ActionBar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ActionBar, ptr, TYPE_ACTION_BAR)
}

IS_ACTION_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACTION_BAR)
}

ADJUSTMENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Adjustment where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Adjustment, ptr, TYPE_ADJUSTMENT)
}

IS_ADJUSTMENT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ADJUSTMENT)
}

ALERT_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AlertDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AlertDialog, ptr, TYPE_ALERT_DIALOG)
}

IS_ALERT_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ALERT_DIALOG)
}

APP_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AppChooser where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AppChooser, ptr, TYPE_APP_CHOOSER)
}

IS_APP_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_APP_CHOOSER)
}

DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Dialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Dialog, ptr, TYPE_DIALOG)
}

IS_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DIALOG)
}

APP_CHOOSER_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AppChooserDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AppChooserDialog, ptr, TYPE_APP_CHOOSER_DIALOG)
}

IS_APP_CHOOSER_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_APP_CHOOSER_DIALOG)
}

APP_CHOOSER_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AppChooserWidget where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AppChooserWidget, ptr, TYPE_APP_CHOOSER_WIDGET)
}

IS_APP_CHOOSER_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_APP_CHOOSER_WIDGET)
}

APP_CHOOSER_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AppChooserButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AppChooserButton, ptr, TYPE_APP_CHOOSER_BUTTON)
}

IS_APP_CHOOSER_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_APP_CHOOSER_BUTTON)
}

SHORTCUTS_SHORTCUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutsShortcut where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutsShortcut, ptr, TYPE_SHORTCUTS_SHORTCUT)
}

IS_SHORTCUTS_SHORTCUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUTS_SHORTCUT)
}

SHORTCUTS_GROUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutsGroup where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutsGroup, ptr, TYPE_SHORTCUTS_GROUP)
}

IS_SHORTCUTS_GROUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUTS_GROUP)
}

SHORTCUTS_SECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutsSection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutsSection, ptr, TYPE_SHORTCUTS_SECTION)
}

IS_SHORTCUTS_SECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUTS_SECTION)
}

SHORTCUTS_WINDOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutsWindow where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutsWindow, ptr, TYPE_SHORTCUTS_WINDOW)
}

IS_SHORTCUTS_WINDOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUTS_WINDOW)
}

APPLICATION_WINDOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ApplicationWindow where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ApplicationWindow, ptr, TYPE_APPLICATION_WINDOW)
}

IS_APPLICATION_WINDOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_APPLICATION_WINDOW)
}

ASPECT_FRAME :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AspectFrame where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AspectFrame, ptr, TYPE_ASPECT_FRAME)
}

IS_ASPECT_FRAME :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ASPECT_FRAME)
}

ASSISTANT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Assistant where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Assistant, ptr, TYPE_ASSISTANT)
}

IS_ASSISTANT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ASSISTANT)
}

ASSISTANT_PAGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AssistantPage where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AssistantPage, ptr, TYPE_ASSISTANT_PAGE)
}

IS_ASSISTANT_PAGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ASSISTANT_PAGE)
}

AT_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ATContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ATContext, ptr, TYPE_AT_CONTEXT)
}

IS_AT_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_AT_CONTEXT)
}

LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LayoutChild where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LayoutChild, ptr, TYPE_LAYOUT_CHILD)
}

IS_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LAYOUT_CHILD)
}

LAYOUT_MANAGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LayoutManager where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LayoutManager, ptr, TYPE_LAYOUT_MANAGER)
}

IS_LAYOUT_MANAGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LAYOUT_MANAGER)
}

BIN_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BinLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BinLayout, ptr, TYPE_BIN_LAYOUT)
}

IS_BIN_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BIN_LAYOUT)
}

BITSET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Bitset where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Bitset, ptr, TYPE_BITSET)
}

IS_BITSET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BITSET)
}

BOOKMARK_LIST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BookmarkList where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BookmarkList, ptr, TYPE_BOOKMARK_LIST)
}

IS_BOOKMARK_LIST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BOOKMARK_LIST)
}

EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Expression where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Expression, ptr, TYPE_EXPRESSION)
}

IS_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EXPRESSION)
}

EXPRESSION_WATCH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ExpressionWatch where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ExpressionWatch, ptr, TYPE_EXPRESSION_WATCH)
}

IS_EXPRESSION_WATCH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EXPRESSION_WATCH)
}

PROPERTY_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PropertyExpression where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PropertyExpression, ptr, TYPE_PROPERTY_EXPRESSION)
}

IS_PROPERTY_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PROPERTY_EXPRESSION)
}

CONSTANT_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConstantExpression where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ConstantExpression, ptr, TYPE_CONSTANT_EXPRESSION)
}

IS_CONSTANT_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTANT_EXPRESSION)
}

OBJECT_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ObjectExpression where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ObjectExpression, ptr, TYPE_OBJECT_EXPRESSION)
}

IS_OBJECT_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_OBJECT_EXPRESSION)
}

CLOSURE_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ClosureExpression where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ClosureExpression, ptr, TYPE_CLOSURE_EXPRESSION)
}

IS_CLOSURE_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CLOSURE_EXPRESSION)
}

CCLOSURE_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CClosureExpression where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CClosureExpression, ptr, TYPE_CCLOSURE_EXPRESSION)
}

IS_CCLOSURE_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CCLOSURE_EXPRESSION)
}

TRY_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TryExpression where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TryExpression, ptr, TYPE_TRY_EXPRESSION)
}

IS_TRY_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TRY_EXPRESSION)
}

PARAM_SPEC_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ParamSpecExpression where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ParamSpecExpression, ptr, TYPE_PARAM_SPEC_EXPRESSION)
}

IS_PARAM_SPEC_EXPRESSION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PARAM_SPEC_EXPRESSION)
}

FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Filter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Filter, ptr, TYPE_FILTER)
}

IS_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILTER)
}

BOOL_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BoolFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BoolFilter, ptr, TYPE_BOOL_FILTER)
}

IS_BOOL_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BOOL_FILTER)
}

BORDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Border where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Border, ptr, TYPE_BORDER)
}

IS_BORDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BORDER)
}

BOX_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BoxLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BoxLayout, ptr, TYPE_BOX_LAYOUT)
}

IS_BOX_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BOX_LAYOUT)
}

BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Box where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Box, ptr, TYPE_BOX)
}

IS_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BOX)
}

BUILDER_SCOPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BuilderScope where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BuilderScope, ptr, TYPE_BUILDER_SCOPE)
}

IS_BUILDER_SCOPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUILDER_SCOPE)
}

BUILDER_CSCOPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BuilderCScope where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BuilderCScope, ptr, TYPE_BUILDER_CSCOPE)
}

IS_BUILDER_CSCOPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUILDER_CSCOPE)
}

BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Builder where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Builder, ptr, TYPE_BUILDER)
}

IS_BUILDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUILDER)
}

BUILDABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Buildable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Buildable, ptr, TYPE_BUILDABLE)
}

IS_BUILDABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUILDABLE)
}

LIST_ITEM_FACTORY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListItemFactory where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListItemFactory, ptr, TYPE_LIST_ITEM_FACTORY)
}

IS_LIST_ITEM_FACTORY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_ITEM_FACTORY)
}

BUILDER_LIST_ITEM_FACTORY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BuilderListItemFactory where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        BuilderListItemFactory,
        ptr,
        TYPE_BUILDER_LIST_ITEM_FACTORY,
    )
}

IS_BUILDER_LIST_ITEM_FACTORY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUILDER_LIST_ITEM_FACTORY)
}

BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Button where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Button, ptr, TYPE_BUTTON)
}

IS_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUTTON)
}

CALENDAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Calendar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Calendar, ptr, TYPE_CALENDAR)
}

IS_CALENDAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CALENDAR)
}

CELL_EDITABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellEditable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellEditable, ptr, TYPE_CELL_EDITABLE)
}

IS_CELL_EDITABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_EDITABLE)
}

CELL_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRenderer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRenderer, ptr, TYPE_CELL_RENDERER)
}

IS_CELL_RENDERER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER)
}

TREE_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeModel, ptr, TYPE_TREE_MODEL)
}

IS_TREE_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_MODEL)
}

TREE_ITER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeIter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeIter, ptr, TYPE_TREE_ITER)
}

IS_TREE_ITER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_ITER)
}

TREE_PATH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreePath where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreePath, ptr, TYPE_TREE_PATH)
}

IS_TREE_PATH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_PATH)
}

TREE_ROW_REFERENCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeRowReference where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeRowReference, ptr, TYPE_TREE_ROW_REFERENCE)
}

IS_TREE_ROW_REFERENCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_ROW_REFERENCE)
}

CELL_AREA :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellArea where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellArea, ptr, TYPE_CELL_AREA)
}

IS_CELL_AREA :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_AREA)
}

CELL_AREA_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellAreaBox where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellAreaBox, ptr, TYPE_CELL_AREA_BOX)
}

IS_CELL_AREA_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_AREA_BOX)
}

CELL_AREA_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellAreaContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellAreaContext, ptr, TYPE_CELL_AREA_CONTEXT)
}

IS_CELL_AREA_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_AREA_CONTEXT)
}

CELL_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellLayout, ptr, TYPE_CELL_LAYOUT)
}

IS_CELL_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_LAYOUT)
}

CELL_RENDERER_TEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererText where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererText, ptr, TYPE_CELL_RENDERER_TEXT)
}

IS_CELL_RENDERER_TEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_TEXT)
}

CELL_RENDERER_ACCEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererAccel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererAccel, ptr, TYPE_CELL_RENDERER_ACCEL)
}

IS_CELL_RENDERER_ACCEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_ACCEL)
}

CELL_RENDERER_COMBO :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererCombo where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererCombo, ptr, TYPE_CELL_RENDERER_COMBO)
}

IS_CELL_RENDERER_COMBO :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_COMBO)
}

CELL_RENDERER_PIXBUF :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererPixbuf where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererPixbuf, ptr, TYPE_CELL_RENDERER_PIXBUF)
}

IS_CELL_RENDERER_PIXBUF :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_PIXBUF)
}

CELL_RENDERER_PROGRESS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererProgress where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        CellRendererProgress,
        ptr,
        TYPE_CELL_RENDERER_PROGRESS,
    )
}

IS_CELL_RENDERER_PROGRESS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_PROGRESS)
}

CELL_RENDERER_SPIN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererSpin where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererSpin, ptr, TYPE_CELL_RENDERER_SPIN)
}

IS_CELL_RENDERER_SPIN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_SPIN)
}

CELL_RENDERER_SPINNER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererSpinner where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererSpinner, ptr, TYPE_CELL_RENDERER_SPINNER)
}

IS_CELL_RENDERER_SPINNER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_SPINNER)
}

CELL_RENDERER_TOGGLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererToggle where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererToggle, ptr, TYPE_CELL_RENDERER_TOGGLE)
}

IS_CELL_RENDERER_TOGGLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_TOGGLE)
}

CELL_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellView where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellView, ptr, TYPE_CELL_VIEW)
}

IS_CELL_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_VIEW)
}

CENTER_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CenterBox where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CenterBox, ptr, TYPE_CENTER_BOX)
}

IS_CENTER_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CENTER_BOX)
}

CENTER_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CenterLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CenterLayout, ptr, TYPE_CENTER_LAYOUT)
}

IS_CENTER_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CENTER_LAYOUT)
}

TOGGLE_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ToggleButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ToggleButton, ptr, TYPE_TOGGLE_BUTTON)
}

IS_TOGGLE_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOGGLE_BUTTON)
}

CHECK_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CheckButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CheckButton, ptr, TYPE_CHECK_BUTTON)
}

IS_CHECK_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CHECK_BUTTON)
}

COLOR_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorButton, ptr, TYPE_COLOR_BUTTON)
}

IS_COLOR_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_BUTTON)
}

COLOR_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorChooser where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorChooser, ptr, TYPE_COLOR_CHOOSER)
}

IS_COLOR_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_CHOOSER)
}

COLOR_CHOOSER_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorChooserDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorChooserDialog, ptr, TYPE_COLOR_CHOOSER_DIALOG)
}

IS_COLOR_CHOOSER_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_CHOOSER_DIALOG)
}

COLOR_CHOOSER_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorChooserWidget where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorChooserWidget, ptr, TYPE_COLOR_CHOOSER_WIDGET)
}

IS_COLOR_CHOOSER_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_CHOOSER_WIDGET)
}

COLOR_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorDialog, ptr, TYPE_COLOR_DIALOG)
}

IS_COLOR_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_DIALOG)
}

COLOR_DIALOG_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColorDialogButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColorDialogButton, ptr, TYPE_COLOR_DIALOG_BUTTON)
}

IS_COLOR_DIALOG_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLOR_DIALOG_BUTTON)
}

SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Sorter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Sorter, ptr, TYPE_SORTER)
}

IS_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SORTER)
}

SORT_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SortListModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SortListModel, ptr, TYPE_SORT_LIST_MODEL)
}

IS_SORT_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SORT_LIST_MODEL)
}

SELECTION_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SelectionModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SelectionModel, ptr, TYPE_SELECTION_MODEL)
}

IS_SELECTION_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SELECTION_MODEL)
}

COLUMN_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColumnView where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColumnView, ptr, TYPE_COLUMN_VIEW)
}

IS_COLUMN_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLUMN_VIEW)
}

LIST_ITEM :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListItem where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListItem, ptr, TYPE_LIST_ITEM)
}

IS_LIST_ITEM :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_ITEM)
}

COLUMN_VIEW_CELL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColumnViewCell where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColumnViewCell, ptr, TYPE_COLUMN_VIEW_CELL)
}

IS_COLUMN_VIEW_CELL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLUMN_VIEW_CELL)
}

COLUMN_VIEW_COLUMN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColumnViewColumn where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColumnViewColumn, ptr, TYPE_COLUMN_VIEW_COLUMN)
}

IS_COLUMN_VIEW_COLUMN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLUMN_VIEW_COLUMN)
}

COLUMN_VIEW_ROW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColumnViewRow where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColumnViewRow, ptr, TYPE_COLUMN_VIEW_ROW)
}

IS_COLUMN_VIEW_ROW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLUMN_VIEW_ROW)
}

COLUMN_VIEW_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ColumnViewSorter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ColumnViewSorter, ptr, TYPE_COLUMN_VIEW_SORTER)
}

IS_COLUMN_VIEW_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLUMN_VIEW_SORTER)
}

TREE_SORTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeSortable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeSortable, ptr, TYPE_TREE_SORTABLE)
}

IS_TREE_SORTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_SORTABLE)
}

TREE_VIEW_COLUMN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeViewColumn where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeViewColumn, ptr, TYPE_TREE_VIEW_COLUMN)
}

IS_TREE_VIEW_COLUMN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_VIEW_COLUMN)
}

EDITABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Editable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Editable, ptr, TYPE_EDITABLE)
}

IS_EDITABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EDITABLE)
}

IM_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IMContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IMContext, ptr, TYPE_IM_CONTEXT)
}

IS_IM_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_IM_CONTEXT)
}

ENTRY_BUFFER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EntryBuffer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EntryBuffer, ptr, TYPE_ENTRY_BUFFER)
}

IS_ENTRY_BUFFER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ENTRY_BUFFER)
}

LIST_STORE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListStore where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListStore, ptr, TYPE_LIST_STORE)
}

IS_LIST_STORE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_STORE)
}

TREE_MODEL_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeModelFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeModelFilter, ptr, TYPE_TREE_MODEL_FILTER)
}

IS_TREE_MODEL_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_MODEL_FILTER)
}

ENTRY_COMPLETION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EntryCompletion where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EntryCompletion, ptr, TYPE_ENTRY_COMPLETION)
}

IS_ENTRY_COMPLETION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ENTRY_COMPLETION)
}

IMAGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Image where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Image, ptr, TYPE_IMAGE)
}

IS_IMAGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_IMAGE)
}

ENTRY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Entry where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Entry, ptr, TYPE_ENTRY)
}

IS_ENTRY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ENTRY)
}

TREE_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeView where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeView, ptr, TYPE_TREE_VIEW)
}

IS_TREE_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_VIEW)
}

COMBO_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ComboBox where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ComboBox, ptr, TYPE_COMBO_BOX)
}

IS_COMBO_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COMBO_BOX)
}

COMBO_BOX_TEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ComboBoxText where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ComboBoxText, ptr, TYPE_COMBO_BOX_TEXT)
}

IS_COMBO_BOX_TEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COMBO_BOX_TEXT)
}

CONSTRAINT_TARGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConstraintTarget where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ConstraintTarget, ptr, TYPE_CONSTRAINT_TARGET)
}

IS_CONSTRAINT_TARGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTRAINT_TARGET)
}

CONSTRAINT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Constraint where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Constraint, ptr, TYPE_CONSTRAINT)
}

IS_CONSTRAINT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTRAINT)
}

ASSISTANT_PAGE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AssistantPageType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AssistantPageType, ptr, TYPE_ASSISTANT_PAGE_TYPE)
}

IS_ASSISTANT_PAGE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ASSISTANT_PAGE_TYPE)
}

CELL_RENDERER_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererState where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererState, ptr, TYPE_CELL_RENDERER_STATE)
}

IS_CELL_RENDERER_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_STATE)
}

CELL_RENDERER_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CellRendererMode, ptr, TYPE_CELL_RENDERER_MODE)
}

IS_CELL_RENDERER_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_MODE)
}

CELL_RENDERER_ACCEL_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CellRendererAccelMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        CellRendererAccelMode,
        ptr,
        TYPE_CELL_RENDERER_ACCEL_MODE,
    )
}

IS_CELL_RENDERER_ACCEL_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CELL_RENDERER_ACCEL_MODE)
}

DIALOG_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DialogFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DialogFlags, ptr, TYPE_DIALOG_FLAGS)
}

IS_DIALOG_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DIALOG_FLAGS)
}

RESPONSE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ResponseType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ResponseType, ptr, TYPE_RESPONSE_TYPE)
}

IS_RESPONSE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RESPONSE_TYPE)
}

FILE_CHOOSER_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileChooserAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileChooserAction, ptr, TYPE_FILE_CHOOSER_ACTION)
}

IS_FILE_CHOOSER_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_CHOOSER_ACTION)
}

FONT_CHOOSER_LEVEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontChooserLevel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontChooserLevel, ptr, TYPE_FONT_CHOOSER_LEVEL)
}

IS_FONT_CHOOSER_LEVEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_CHOOSER_LEVEL)
}

ICON_VIEW_DROP_POSITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IconViewDropPosition where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        IconViewDropPosition,
        ptr,
        TYPE_ICON_VIEW_DROP_POSITION,
    )
}

IS_ICON_VIEW_DROP_POSITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ICON_VIEW_DROP_POSITION)
}

BUTTONS_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ButtonsType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ButtonsType, ptr, TYPE_BUTTONS_TYPE)
}

IS_BUTTONS_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUTTONS_TYPE)
}

SHORTCUT_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutType, ptr, TYPE_SHORTCUT_TYPE)
}

IS_SHORTCUT_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT_TYPE)
}

STYLE_CONTEXT_PRINT_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StyleContextPrintFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        StyleContextPrintFlags,
        ptr,
        TYPE_STYLE_CONTEXT_PRINT_FLAGS,
    )
}

IS_STYLE_CONTEXT_PRINT_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STYLE_CONTEXT_PRINT_FLAGS)
}

TREE_MODEL_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeModelFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeModelFlags, ptr, TYPE_TREE_MODEL_FLAGS)
}

IS_TREE_MODEL_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_MODEL_FLAGS)
}

TREE_VIEW_DROP_POSITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeViewDropPosition where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        TreeViewDropPosition,
        ptr,
        TYPE_TREE_VIEW_DROP_POSITION,
    )
}

IS_TREE_VIEW_DROP_POSITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_VIEW_DROP_POSITION)
}

TREE_VIEW_COLUMN_SIZING :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeViewColumnSizing where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        TreeViewColumnSizing,
        ptr,
        TYPE_TREE_VIEW_COLUMN_SIZING,
    )
}

IS_TREE_VIEW_COLUMN_SIZING :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_VIEW_COLUMN_SIZING)
}

LICENSE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^License where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(License, ptr, TYPE_LICENSE)
}

IS_LICENSE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LICENSE)
}

ACCESSIBLE_PLATFORM_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessiblePlatformState where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        AccessiblePlatformState,
        ptr,
        TYPE_ACCESSIBLE_PLATFORM_STATE,
    )
}

IS_ACCESSIBLE_PLATFORM_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_PLATFORM_STATE)
}

ACCESSIBLE_TEXT_GRANULARITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleTextGranularity where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        AccessibleTextGranularity,
        ptr,
        TYPE_ACCESSIBLE_TEXT_GRANULARITY,
    )
}

IS_ACCESSIBLE_TEXT_GRANULARITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_TEXT_GRANULARITY)
}

ACCESSIBLE_TEXT_CONTENT_CHANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleTextContentChange where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        AccessibleTextContentChange,
        ptr,
        TYPE_ACCESSIBLE_TEXT_CONTENT_CHANGE,
    )
}

IS_ACCESSIBLE_TEXT_CONTENT_CHANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_TEXT_CONTENT_CHANGE)
}

APPLICATION_INHIBIT_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ApplicationInhibitFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        ApplicationInhibitFlags,
        ptr,
        TYPE_APPLICATION_INHIBIT_FLAGS,
    )
}

IS_APPLICATION_INHIBIT_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_APPLICATION_INHIBIT_FLAGS)
}

BUILDER_CLOSURE_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BuilderClosureFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BuilderClosureFlags, ptr, TYPE_BUILDER_CLOSURE_FLAGS)
}

IS_BUILDER_CLOSURE_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BUILDER_CLOSURE_FLAGS)
}

DEBUG_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DebugFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DebugFlags, ptr, TYPE_DEBUG_FLAGS)
}

IS_DEBUG_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DEBUG_FLAGS)
}

EDITABLE_PROPERTIES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EditableProperties where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EditableProperties, ptr, TYPE_EDITABLE_PROPERTIES)
}

IS_EDITABLE_PROPERTIES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EDITABLE_PROPERTIES)
}

ENTRY_ICON_POSITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EntryIconPosition where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EntryIconPosition, ptr, TYPE_ENTRY_ICON_POSITION)
}

IS_ENTRY_ICON_POSITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ENTRY_ICON_POSITION)
}

ALIGN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Align where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Align, ptr, TYPE_ALIGN)
}

IS_ALIGN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ALIGN)
}

ARROW_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ArrowType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ArrowType, ptr, TYPE_ARROW_TYPE)
}

IS_ARROW_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ARROW_TYPE)
}

BASELINE_POSITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BaselinePosition where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BaselinePosition, ptr, TYPE_BASELINE_POSITION)
}

IS_BASELINE_POSITION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BASELINE_POSITION)
}

CONTENT_FIT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ContentFit where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ContentFit, ptr, TYPE_CONTENT_FIT)
}

IS_CONTENT_FIT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONTENT_FIT)
}

DELETE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DeleteType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DeleteType, ptr, TYPE_DELETE_TYPE)
}

IS_DELETE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DELETE_TYPE)
}

DIRECTION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DirectionType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DirectionType, ptr, TYPE_DIRECTION_TYPE)
}

IS_DIRECTION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DIRECTION_TYPE)
}

ICON_SIZE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IconSize where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IconSize, ptr, TYPE_ICON_SIZE)
}

IS_ICON_SIZE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ICON_SIZE)
}

SENSITIVITY_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SensitivityType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SensitivityType, ptr, TYPE_SENSITIVITY_TYPE)
}

IS_SENSITIVITY_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SENSITIVITY_TYPE)
}

TEXT_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextDirection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextDirection, ptr, TYPE_TEXT_DIRECTION)
}

IS_TEXT_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_DIRECTION)
}

JUSTIFICATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Justification where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Justification, ptr, TYPE_JUSTIFICATION)
}

IS_JUSTIFICATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_JUSTIFICATION)
}

LIST_TAB_BEHAVIOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListTabBehavior where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListTabBehavior, ptr, TYPE_LIST_TAB_BEHAVIOR)
}

IS_LIST_TAB_BEHAVIOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_TAB_BEHAVIOR)
}

LIST_SCROLL_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListScrollFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListScrollFlags, ptr, TYPE_LIST_SCROLL_FLAGS)
}

IS_LIST_SCROLL_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_SCROLL_FLAGS)
}

MESSAGE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MessageType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MessageType, ptr, TYPE_MESSAGE_TYPE)
}

IS_MESSAGE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MESSAGE_TYPE)
}

MOVEMENT_STEP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MovementStep where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MovementStep, ptr, TYPE_MOVEMENT_STEP)
}

IS_MOVEMENT_STEP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MOVEMENT_STEP)
}

NATURAL_WRAP_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NaturalWrapMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NaturalWrapMode, ptr, TYPE_NATURAL_WRAP_MODE)
}

IS_NATURAL_WRAP_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NATURAL_WRAP_MODE)
}

SCROLL_STEP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrollStep where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScrollStep, ptr, TYPE_SCROLL_STEP)
}

IS_SCROLL_STEP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLL_STEP)
}

ORIENTATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Orientation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Orientation, ptr, TYPE_ORIENTATION)
}

IS_ORIENTATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ORIENTATION)
}

OVERFLOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Overflow where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Overflow, ptr, TYPE_OVERFLOW)
}

IS_OVERFLOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_OVERFLOW)
}

PACK_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PackType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PackType, ptr, TYPE_PACK_TYPE)
}

IS_PACK_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PACK_TYPE)
}

POSITION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PositionType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PositionType, ptr, TYPE_POSITION_TYPE)
}

IS_POSITION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POSITION_TYPE)
}

SCROLL_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrollType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScrollType, ptr, TYPE_SCROLL_TYPE)
}

IS_SCROLL_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLL_TYPE)
}

SELECTION_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SelectionMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SelectionMode, ptr, TYPE_SELECTION_MODE)
}

IS_SELECTION_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SELECTION_MODE)
}

WRAP_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^WrapMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(WrapMode, ptr, TYPE_WRAP_MODE)
}

IS_WRAP_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_WRAP_MODE)
}

SORT_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SortType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SortType, ptr, TYPE_SORT_TYPE)
}

IS_SORT_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SORT_TYPE)
}

PRINT_PAGES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintPages where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintPages, ptr, TYPE_PRINT_PAGES)
}

IS_PRINT_PAGES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_PAGES)
}

PAGE_SET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PageSet where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PageSet, ptr, TYPE_PAGE_SET)
}

IS_PAGE_SET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAGE_SET)
}

NUMBER_UP_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NumberUpLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NumberUpLayout, ptr, TYPE_NUMBER_UP_LAYOUT)
}

IS_NUMBER_UP_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NUMBER_UP_LAYOUT)
}

ORDERING :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Ordering where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Ordering, ptr, TYPE_ORDERING)
}

IS_ORDERING :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ORDERING)
}

PAGE_ORIENTATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PageOrientation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PageOrientation, ptr, TYPE_PAGE_ORIENTATION)
}

IS_PAGE_ORIENTATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAGE_ORIENTATION)
}

PRINT_QUALITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintQuality where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintQuality, ptr, TYPE_PRINT_QUALITY)
}

IS_PRINT_QUALITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_QUALITY)
}

PRINT_DUPLEX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintDuplex where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintDuplex, ptr, TYPE_PRINT_DUPLEX)
}

IS_PRINT_DUPLEX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_DUPLEX)
}

UNIT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Unit where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Unit, ptr, TYPE_UNIT)
}

IS_UNIT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_UNIT)
}

TREE_VIEW_GRID_LINES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeViewGridLines where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeViewGridLines, ptr, TYPE_TREE_VIEW_GRID_LINES)
}

IS_TREE_VIEW_GRID_LINES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_VIEW_GRID_LINES)
}

SIZE_GROUP_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SizeGroupMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SizeGroupMode, ptr, TYPE_SIZE_GROUP_MODE)
}

IS_SIZE_GROUP_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SIZE_GROUP_MODE)
}

SIZE_REQUEST_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SizeRequestMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SizeRequestMode, ptr, TYPE_SIZE_REQUEST_MODE)
}

IS_SIZE_REQUEST_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SIZE_REQUEST_MODE)
}

SCROLLABLE_POLICY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrollablePolicy where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScrollablePolicy, ptr, TYPE_SCROLLABLE_POLICY)
}

IS_SCROLLABLE_POLICY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLLABLE_POLICY)
}

STATE_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StateFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StateFlags, ptr, TYPE_STATE_FLAGS)
}

IS_STATE_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STATE_FLAGS)
}

BORDER_STYLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^BorderStyle where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(BorderStyle, ptr, TYPE_BORDER_STYLE)
}

IS_BORDER_STYLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_BORDER_STYLE)
}

LEVEL_BAR_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LevelBarMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LevelBarMode, ptr, TYPE_LEVEL_BAR_MODE)
}

IS_LEVEL_BAR_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LEVEL_BAR_MODE)
}

INPUT_PURPOSE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^InputPurpose where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(InputPurpose, ptr, TYPE_INPUT_PURPOSE)
}

IS_INPUT_PURPOSE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INPUT_PURPOSE)
}

INPUT_HINTS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^InputHints where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(InputHints, ptr, TYPE_INPUT_HINTS)
}

IS_INPUT_HINTS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INPUT_HINTS)
}

PROPAGATION_PHASE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PropagationPhase where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PropagationPhase, ptr, TYPE_PROPAGATION_PHASE)
}

IS_PROPAGATION_PHASE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PROPAGATION_PHASE)
}

PROPAGATION_LIMIT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PropagationLimit where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PropagationLimit, ptr, TYPE_PROPAGATION_LIMIT)
}

IS_PROPAGATION_LIMIT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PROPAGATION_LIMIT)
}

EVENT_SEQUENCE_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventSequenceState where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EventSequenceState, ptr, TYPE_EVENT_SEQUENCE_STATE)
}

IS_EVENT_SEQUENCE_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_SEQUENCE_STATE)
}

PAN_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PanDirection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PanDirection, ptr, TYPE_PAN_DIRECTION)
}

IS_PAN_DIRECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAN_DIRECTION)
}

SHORTCUT_SCOPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutScope where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutScope, ptr, TYPE_SHORTCUT_SCOPE)
}

IS_SHORTCUT_SCOPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT_SCOPE)
}

PICK_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PickFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PickFlags, ptr, TYPE_PICK_FLAGS)
}

IS_PICK_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PICK_FLAGS)
}

CONSTRAINT_RELATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConstraintRelation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ConstraintRelation, ptr, TYPE_CONSTRAINT_RELATION)
}

IS_CONSTRAINT_RELATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTRAINT_RELATION)
}

CONSTRAINT_STRENGTH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConstraintStrength where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ConstraintStrength, ptr, TYPE_CONSTRAINT_STRENGTH)
}

IS_CONSTRAINT_STRENGTH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTRAINT_STRENGTH)
}

CONSTRAINT_ATTRIBUTE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConstraintAttribute where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ConstraintAttribute, ptr, TYPE_CONSTRAINT_ATTRIBUTE)
}

IS_CONSTRAINT_ATTRIBUTE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTRAINT_ATTRIBUTE)
}

SYSTEM_SETTING :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SystemSetting where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SystemSetting, ptr, TYPE_SYSTEM_SETTING)
}

IS_SYSTEM_SETTING :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SYSTEM_SETTING)
}

SYMBOLIC_COLOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SymbolicColor where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SymbolicColor, ptr, TYPE_SYMBOLIC_COLOR)
}

IS_SYMBOLIC_COLOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SYMBOLIC_COLOR)
}

ACCESSIBLE_ROLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleRole where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleRole, ptr, TYPE_ACCESSIBLE_ROLE)
}

IS_ACCESSIBLE_ROLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_ROLE)
}

ACCESSIBLE_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleState where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleState, ptr, TYPE_ACCESSIBLE_STATE)
}

IS_ACCESSIBLE_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_STATE)
}

ACCESSIBLE_PROPERTY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleProperty where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleProperty, ptr, TYPE_ACCESSIBLE_PROPERTY)
}

IS_ACCESSIBLE_PROPERTY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_PROPERTY)
}

ACCESSIBLE_RELATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleRelation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleRelation, ptr, TYPE_ACCESSIBLE_RELATION)
}

IS_ACCESSIBLE_RELATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_RELATION)
}

ACCESSIBLE_TRISTATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleTristate where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleTristate, ptr, TYPE_ACCESSIBLE_TRISTATE)
}

IS_ACCESSIBLE_TRISTATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_TRISTATE)
}

ACCESSIBLE_INVALID_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleInvalidState where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        AccessibleInvalidState,
        ptr,
        TYPE_ACCESSIBLE_INVALID_STATE,
    )
}

IS_ACCESSIBLE_INVALID_STATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_INVALID_STATE)
}

ACCESSIBLE_AUTOCOMPLETE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleAutocomplete where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        AccessibleAutocomplete,
        ptr,
        TYPE_ACCESSIBLE_AUTOCOMPLETE,
    )
}

IS_ACCESSIBLE_AUTOCOMPLETE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_AUTOCOMPLETE)
}

ACCESSIBLE_SORT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleSort where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AccessibleSort, ptr, TYPE_ACCESSIBLE_SORT)
}

IS_ACCESSIBLE_SORT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_SORT)
}

ACCESSIBLE_ANNOUNCEMENT_PRIORITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AccessibleAnnouncementPriority where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        AccessibleAnnouncementPriority,
        ptr,
        TYPE_ACCESSIBLE_ANNOUNCEMENT_PRIORITY,
    )
}

IS_ACCESSIBLE_ANNOUNCEMENT_PRIORITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ACCESSIBLE_ANNOUNCEMENT_PRIORITY)
}

POPOVER_MENU_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PopoverMenuFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PopoverMenuFlags, ptr, TYPE_POPOVER_MENU_FLAGS)
}

IS_POPOVER_MENU_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POPOVER_MENU_FLAGS)
}

FONT_RENDERING :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontRendering where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontRendering, ptr, TYPE_FONT_RENDERING)
}

IS_FONT_RENDERING :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_RENDERING)
}

TEXT_BUFFER_NOTIFY_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextBufferNotifyFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        TextBufferNotifyFlags,
        ptr,
        TYPE_TEXT_BUFFER_NOTIFY_FLAGS,
    )
}

IS_TEXT_BUFFER_NOTIFY_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_BUFFER_NOTIFY_FLAGS)
}

INTERFACE_COLOR_SCHEME :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^InterfaceColorScheme where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        InterfaceColorScheme,
        ptr,
        TYPE_INTERFACE_COLOR_SCHEME,
    )
}

IS_INTERFACE_COLOR_SCHEME :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INTERFACE_COLOR_SCHEME)
}

INTERFACE_CONTRAST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^InterfaceContrast where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(InterfaceContrast, ptr, TYPE_INTERFACE_CONTRAST)
}

IS_INTERFACE_CONTRAST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INTERFACE_CONTRAST)
}

REDUCED_MOTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ReducedMotion where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ReducedMotion, ptr, TYPE_REDUCED_MOTION)
}

IS_REDUCED_MOTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_REDUCED_MOTION)
}

EVENT_CONTROLLER_SCROLL_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventControllerScrollFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        EventControllerScrollFlags,
        ptr,
        TYPE_EVENT_CONTROLLER_SCROLL_FLAGS,
    )
}

IS_EVENT_CONTROLLER_SCROLL_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_CONTROLLER_SCROLL_FLAGS)
}

FILTER_MATCH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FilterMatch where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FilterMatch, ptr, TYPE_FILTER_MATCH)
}

IS_FILTER_MATCH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILTER_MATCH)
}

FILTER_CHANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FilterChange where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FilterChange, ptr, TYPE_FILTER_CHANGE)
}

IS_FILTER_CHANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILTER_CHANGE)
}

FONT_LEVEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontLevel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontLevel, ptr, TYPE_FONT_LEVEL)
}

IS_FONT_LEVEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_LEVEL)
}

GRAPHICS_OFFLOAD_ENABLED :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GraphicsOffloadEnabled where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        GraphicsOffloadEnabled,
        ptr,
        TYPE_GRAPHICS_OFFLOAD_ENABLED,
    )
}

IS_GRAPHICS_OFFLOAD_ENABLED :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GRAPHICS_OFFLOAD_ENABLED)
}

ICON_LOOKUP_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IconLookupFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IconLookupFlags, ptr, TYPE_ICON_LOOKUP_FLAGS)
}

IS_ICON_LOOKUP_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ICON_LOOKUP_FLAGS)
}

IMAGE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ImageType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ImageType, ptr, TYPE_IMAGE_TYPE)
}

IS_IMAGE_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_IMAGE_TYPE)
}

INSCRIPTION_OVERFLOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^InscriptionOverflow where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(InscriptionOverflow, ptr, TYPE_INSCRIPTION_OVERFLOW)
}

IS_INSCRIPTION_OVERFLOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INSCRIPTION_OVERFLOW)
}

NOTEBOOK_TAB :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NotebookTab where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NotebookTab, ptr, TYPE_NOTEBOOK_TAB)
}

IS_NOTEBOOK_TAB :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NOTEBOOK_TAB)
}

PAD_ACTION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PadActionType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PadActionType, ptr, TYPE_PAD_ACTION_TYPE)
}

IS_PAD_ACTION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAD_ACTION_TYPE)
}

REVEALER_TRANSITION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RevealerTransitionType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        RevealerTransitionType,
        ptr,
        TYPE_REVEALER_TRANSITION_TYPE,
    )
}

IS_REVEALER_TRANSITION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_REVEALER_TRANSITION_TYPE)
}

CORNER_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CornerType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CornerType, ptr, TYPE_CORNER_TYPE)
}

IS_CORNER_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CORNER_TYPE)
}

POLICY_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PolicyType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PolicyType, ptr, TYPE_POLICY_TYPE)
}

IS_POLICY_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POLICY_TYPE)
}

SHORTCUT_ACTION_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutActionFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutActionFlags, ptr, TYPE_SHORTCUT_ACTION_FLAGS)
}

IS_SHORTCUT_ACTION_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT_ACTION_FLAGS)
}

SORTER_ORDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SorterOrder where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SorterOrder, ptr, TYPE_SORTER_ORDER)
}

IS_SORTER_ORDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SORTER_ORDER)
}

SORTER_CHANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SorterChange where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SorterChange, ptr, TYPE_SORTER_CHANGE)
}

IS_SORTER_CHANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SORTER_CHANGE)
}

SPIN_BUTTON_UPDATE_POLICY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SpinButtonUpdatePolicy where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        SpinButtonUpdatePolicy,
        ptr,
        TYPE_SPIN_BUTTON_UPDATE_POLICY,
    )
}

IS_SPIN_BUTTON_UPDATE_POLICY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SPIN_BUTTON_UPDATE_POLICY)
}

SPIN_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SpinType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SpinType, ptr, TYPE_SPIN_TYPE)
}

IS_SPIN_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SPIN_TYPE)
}

STACK_TRANSITION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StackTransitionType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StackTransitionType, ptr, TYPE_STACK_TRANSITION_TYPE)
}

IS_STACK_TRANSITION_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STACK_TRANSITION_TYPE)
}

STRING_FILTER_MATCH_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StringFilterMatchMode where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        StringFilterMatchMode,
        ptr,
        TYPE_STRING_FILTER_MATCH_MODE,
    )
}

IS_STRING_FILTER_MATCH_MODE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STRING_FILTER_MATCH_MODE)
}

COLLATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Collation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Collation, ptr, TYPE_COLLATION)
}

IS_COLLATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_COLLATION)
}

SVG_FEATURES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SvgFeatures where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SvgFeatures, ptr, TYPE_SVG_FEATURES)
}

IS_SVG_FEATURES :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SVG_FEATURES)
}

TEXT_SEARCH_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextSearchFlags where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextSearchFlags, ptr, TYPE_TEXT_SEARCH_FLAGS)
}

IS_TEXT_SEARCH_FLAGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_SEARCH_FLAGS)
}

TEXT_WINDOW_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextWindowType where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextWindowType, ptr, TYPE_TEXT_WINDOW_TYPE)
}

IS_TEXT_WINDOW_TYPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_WINDOW_TYPE)
}

TEXT_VIEW_LAYER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextViewLayer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextViewLayer, ptr, TYPE_TEXT_VIEW_LAYER)
}

IS_TEXT_VIEW_LAYER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_VIEW_LAYER)
}

TEXT_EXTEND_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextExtendSelection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextExtendSelection, ptr, TYPE_TEXT_EXTEND_SELECTION)
}

IS_TEXT_EXTEND_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_EXTEND_SELECTION)
}

WINDOW_GRAVITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^WindowGravity where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(WindowGravity, ptr, TYPE_WINDOW_GRAVITY)
}

IS_WINDOW_GRAVITY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_WINDOW_GRAVITY)
}

PRINT_STATUS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintStatus where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintStatus, ptr, TYPE_PRINT_STATUS)
}

IS_PRINT_STATUS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_STATUS)
}

PRINT_OPERATION_RESULT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintOperationResult where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        PrintOperationResult,
        ptr,
        TYPE_PRINT_OPERATION_RESULT,
    )
}

IS_PRINT_OPERATION_RESULT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_OPERATION_RESULT)
}

PRINT_OPERATION_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintOperationAction where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        PrintOperationAction,
        ptr,
        TYPE_PRINT_OPERATION_ACTION,
    )
}

IS_PRINT_OPERATION_ACTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_OPERATION_ACTION)
}

CONSTRAINT_GUIDE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConstraintGuide where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ConstraintGuide, ptr, TYPE_CONSTRAINT_GUIDE)
}

IS_CONSTRAINT_GUIDE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTRAINT_GUIDE)
}

CONSTRAINT_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConstraintLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ConstraintLayout, ptr, TYPE_CONSTRAINT_LAYOUT)
}

IS_CONSTRAINT_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTRAINT_LAYOUT)
}

CONSTRAINT_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ConstraintLayoutChild where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        ConstraintLayoutChild,
        ptr,
        TYPE_CONSTRAINT_LAYOUT_CHILD,
    )
}

IS_CONSTRAINT_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CONSTRAINT_LAYOUT_CHILD)
}

CSS_PROVIDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CssProvider where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CssProvider, ptr, TYPE_CSS_PROVIDER)
}

IS_CSS_PROVIDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CSS_PROVIDER)
}

CUSTOM_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CustomLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CustomLayout, ptr, TYPE_CUSTOM_LAYOUT)
}

IS_CUSTOM_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CUSTOM_LAYOUT)
}

CUSTOM_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CustomSorter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CustomSorter, ptr, TYPE_CUSTOM_SORTER)
}

IS_CUSTOM_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CUSTOM_SORTER)
}

DIRECTORY_LIST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DirectoryList where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DirectoryList, ptr, TYPE_DIRECTORY_LIST)
}

IS_DIRECTORY_LIST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DIRECTORY_LIST)
}

DRAG_ICON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DragIcon where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DragIcon, ptr, TYPE_DRAG_ICON)
}

IS_DRAG_ICON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAG_ICON)
}

DRAG_SOURCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DragSource where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DragSource, ptr, TYPE_DRAG_SOURCE)
}

IS_DRAG_SOURCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAG_SOURCE)
}

DRAWING_AREA :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DrawingArea where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DrawingArea, ptr, TYPE_DRAWING_AREA)
}

IS_DRAWING_AREA :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DRAWING_AREA)
}

EVENT_CONTROLLER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventController where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EventController, ptr, TYPE_EVENT_CONTROLLER)
}

IS_EVENT_CONTROLLER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_CONTROLLER)
}

DROP_CONTROLLER_MOTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DropControllerMotion where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        DropControllerMotion,
        ptr,
        TYPE_DROP_CONTROLLER_MOTION,
    )
}

IS_DROP_CONTROLLER_MOTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DROP_CONTROLLER_MOTION)
}

DROP_TARGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DropTarget where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DropTarget, ptr, TYPE_DROP_TARGET)
}

IS_DROP_TARGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DROP_TARGET)
}

DROP_TARGET_ASYNC :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DropTargetAsync where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DropTargetAsync, ptr, TYPE_DROP_TARGET_ASYNC)
}

IS_DROP_TARGET_ASYNC :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DROP_TARGET_ASYNC)
}

STRING_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StringFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StringFilter, ptr, TYPE_STRING_FILTER)
}

IS_STRING_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STRING_FILTER)
}

DROP_DOWN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^DropDown where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(DropDown, ptr, TYPE_DROP_DOWN)
}

IS_DROP_DOWN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_DROP_DOWN)
}

EDITABLE_LABEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EditableLabel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EditableLabel, ptr, TYPE_EDITABLE_LABEL)
}

IS_EDITABLE_LABEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EDITABLE_LABEL)
}

EMOJI_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EmojiChooser where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EmojiChooser, ptr, TYPE_EMOJI_CHOOSER)
}

IS_EMOJI_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EMOJI_CHOOSER)
}

EVENT_CONTROLLER_FOCUS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventControllerFocus where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        EventControllerFocus,
        ptr,
        TYPE_EVENT_CONTROLLER_FOCUS,
    )
}

IS_EVENT_CONTROLLER_FOCUS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_CONTROLLER_FOCUS)
}

EVENT_CONTROLLER_KEY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventControllerKey where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EventControllerKey, ptr, TYPE_EVENT_CONTROLLER_KEY)
}

IS_EVENT_CONTROLLER_KEY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_CONTROLLER_KEY)
}

EVENT_CONTROLLER_LEGACY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventControllerLegacy where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        EventControllerLegacy,
        ptr,
        TYPE_EVENT_CONTROLLER_LEGACY,
    )
}

IS_EVENT_CONTROLLER_LEGACY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_CONTROLLER_LEGACY)
}

EVENT_CONTROLLER_MOTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventControllerMotion where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        EventControllerMotion,
        ptr,
        TYPE_EVENT_CONTROLLER_MOTION,
    )
}

IS_EVENT_CONTROLLER_MOTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_CONTROLLER_MOTION)
}

EVENT_CONTROLLER_SCROLL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EventControllerScroll where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        EventControllerScroll,
        ptr,
        TYPE_EVENT_CONTROLLER_SCROLL,
    )
}

IS_EVENT_CONTROLLER_SCROLL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVENT_CONTROLLER_SCROLL)
}

EXPANDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Expander where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Expander, ptr, TYPE_EXPANDER)
}

IS_EXPANDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EXPANDER)
}

FIXED :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Fixed where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Fixed, ptr, TYPE_FIXED)
}

IS_FIXED :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FIXED)
}

FIXED_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FixedLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FixedLayout, ptr, TYPE_FIXED_LAYOUT)
}

IS_FIXED_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FIXED_LAYOUT)
}

FIXED_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FixedLayoutChild where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FixedLayoutChild, ptr, TYPE_FIXED_LAYOUT_CHILD)
}

IS_FIXED_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FIXED_LAYOUT_CHILD)
}

FILE_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileFilter, ptr, TYPE_FILE_FILTER)
}

IS_FILE_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_FILTER)
}

FILE_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileChooser where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileChooser, ptr, TYPE_FILE_CHOOSER)
}

IS_FILE_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_CHOOSER)
}

FILE_CHOOSER_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileChooserDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileChooserDialog, ptr, TYPE_FILE_CHOOSER_DIALOG)
}

IS_FILE_CHOOSER_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_CHOOSER_DIALOG)
}

NATIVE_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NativeDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NativeDialog, ptr, TYPE_NATIVE_DIALOG)
}

IS_NATIVE_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NATIVE_DIALOG)
}

FILE_CHOOSER_NATIVE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileChooserNative where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileChooserNative, ptr, TYPE_FILE_CHOOSER_NATIVE)
}

IS_FILE_CHOOSER_NATIVE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_CHOOSER_NATIVE)
}

FILE_CHOOSER_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileChooserWidget where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileChooserWidget, ptr, TYPE_FILE_CHOOSER_WIDGET)
}

IS_FILE_CHOOSER_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_CHOOSER_WIDGET)
}

FILE_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileDialog, ptr, TYPE_FILE_DIALOG)
}

IS_FILE_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_DIALOG)
}

FILE_LAUNCHER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FileLauncher where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FileLauncher, ptr, TYPE_FILE_LAUNCHER)
}

IS_FILE_LAUNCHER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILE_LAUNCHER)
}

FILTER_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FilterListModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FilterListModel, ptr, TYPE_FILTER_LIST_MODEL)
}

IS_FILTER_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FILTER_LIST_MODEL)
}

CUSTOM_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^CustomFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(CustomFilter, ptr, TYPE_CUSTOM_FILTER)
}

IS_CUSTOM_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_CUSTOM_FILTER)
}

FLATTEN_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FlattenListModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FlattenListModel, ptr, TYPE_FLATTEN_LIST_MODEL)
}

IS_FLATTEN_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FLATTEN_LIST_MODEL)
}

FLOW_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FlowBox where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FlowBox, ptr, TYPE_FLOW_BOX)
}

IS_FLOW_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FLOW_BOX)
}

FLOW_BOX_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FlowBoxChild where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FlowBoxChild, ptr, TYPE_FLOW_BOX_CHILD)
}

IS_FLOW_BOX_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FLOW_BOX_CHILD)
}

FONT_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontButton, ptr, TYPE_FONT_BUTTON)
}

IS_FONT_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_BUTTON)
}

FONT_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontChooser where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontChooser, ptr, TYPE_FONT_CHOOSER)
}

IS_FONT_CHOOSER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_CHOOSER)
}

FONT_CHOOSER_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontChooserDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontChooserDialog, ptr, TYPE_FONT_CHOOSER_DIALOG)
}

IS_FONT_CHOOSER_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_CHOOSER_DIALOG)
}

FONT_CHOOSER_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontChooserWidget where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontChooserWidget, ptr, TYPE_FONT_CHOOSER_WIDGET)
}

IS_FONT_CHOOSER_WIDGET :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_CHOOSER_WIDGET)
}

FONT_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontDialog, ptr, TYPE_FONT_DIALOG)
}

IS_FONT_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_DIALOG)
}

FONT_DIALOG_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^FontDialogButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(FontDialogButton, ptr, TYPE_FONT_DIALOG_BUTTON)
}

IS_FONT_DIALOG_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FONT_DIALOG_BUTTON)
}

FRAME :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Frame where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Frame, ptr, TYPE_FRAME)
}

IS_FRAME :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_FRAME)
}

GESTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Gesture where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Gesture, ptr, TYPE_GESTURE)
}

IS_GESTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE)
}

GESTURE_SINGLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GestureSingle where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GestureSingle, ptr, TYPE_GESTURE_SINGLE)
}

IS_GESTURE_SINGLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_SINGLE)
}

GESTURE_CLICK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GestureClick where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GestureClick, ptr, TYPE_GESTURE_CLICK)
}

IS_GESTURE_CLICK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_CLICK)
}

GESTURE_DRAG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GestureDrag where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GestureDrag, ptr, TYPE_GESTURE_DRAG)
}

IS_GESTURE_DRAG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_DRAG)
}

GESTURE_LONG_PRESS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GestureLongPress where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GestureLongPress, ptr, TYPE_GESTURE_LONG_PRESS)
}

IS_GESTURE_LONG_PRESS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_LONG_PRESS)
}

GESTURE_PAN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GesturePan where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GesturePan, ptr, TYPE_GESTURE_PAN)
}

IS_GESTURE_PAN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_PAN)
}

GESTURE_ROTATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GestureRotate where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GestureRotate, ptr, TYPE_GESTURE_ROTATE)
}

IS_GESTURE_ROTATE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_ROTATE)
}

GESTURE_STYLUS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GestureStylus where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GestureStylus, ptr, TYPE_GESTURE_STYLUS)
}

IS_GESTURE_STYLUS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_STYLUS)
}

GESTURE_SWIPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GestureSwipe where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GestureSwipe, ptr, TYPE_GESTURE_SWIPE)
}

IS_GESTURE_SWIPE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_SWIPE)
}

GESTURE_ZOOM :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GestureZoom where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GestureZoom, ptr, TYPE_GESTURE_ZOOM)
}

IS_GESTURE_ZOOM :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GESTURE_ZOOM)
}

GL_AREA :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GLArea where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GLArea, ptr, TYPE_GL_AREA)
}

IS_GL_AREA :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GL_AREA)
}

GRAPHICS_OFFLOAD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GraphicsOffload where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GraphicsOffload, ptr, TYPE_GRAPHICS_OFFLOAD)
}

IS_GRAPHICS_OFFLOAD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GRAPHICS_OFFLOAD)
}

GRID :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Grid where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Grid, ptr, TYPE_GRID)
}

IS_GRID :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GRID)
}

GRID_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GridLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GridLayout, ptr, TYPE_GRID_LAYOUT)
}

IS_GRID_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GRID_LAYOUT)
}

GRID_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GridLayoutChild where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GridLayoutChild, ptr, TYPE_GRID_LAYOUT_CHILD)
}

IS_GRID_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GRID_LAYOUT_CHILD)
}

LIST_BASE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListBase where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListBase, ptr, TYPE_LIST_BASE)
}

IS_LIST_BASE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_BASE)
}

GRID_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^GridView where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(GridView, ptr, TYPE_GRID_VIEW)
}

IS_GRID_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_GRID_VIEW)
}

HEADER_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^HeaderBar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(HeaderBar, ptr, TYPE_HEADER_BAR)
}

IS_HEADER_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_HEADER_BAR)
}

ICON_PAINTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IconPaintable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IconPaintable, ptr, TYPE_ICON_PAINTABLE)
}

IS_ICON_PAINTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ICON_PAINTABLE)
}

ICON_THEME :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IconTheme where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IconTheme, ptr, TYPE_ICON_THEME)
}

IS_ICON_THEME :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ICON_THEME)
}

TOOLTIP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Tooltip where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Tooltip, ptr, TYPE_TOOLTIP)
}

IS_TOOLTIP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TOOLTIP)
}

ICON_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IconView where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IconView, ptr, TYPE_ICON_VIEW)
}

IS_ICON_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ICON_VIEW)
}

IM_CONTEXT_SIMPLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IMContextSimple where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IMContextSimple, ptr, TYPE_IM_CONTEXT_SIMPLE)
}

IS_IM_CONTEXT_SIMPLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_IM_CONTEXT_SIMPLE)
}

IM_MULTICONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^IMMulticontext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(IMMulticontext, ptr, TYPE_IM_MULTICONTEXT)
}

IS_IM_MULTICONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_IM_MULTICONTEXT)
}

INFO_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^InfoBar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(InfoBar, ptr, TYPE_INFO_BAR)
}

IS_INFO_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INFO_BAR)
}

INSCRIPTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Inscription where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Inscription, ptr, TYPE_INSCRIPTION)
}

IS_INSCRIPTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_INSCRIPTION)
}

LABEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Label where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Label, ptr, TYPE_LABEL)
}

IS_LABEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LABEL)
}

LEVEL_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LevelBar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LevelBar, ptr, TYPE_LEVEL_BAR)
}

IS_LEVEL_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LEVEL_BAR)
}

LINK_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LinkButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LinkButton, ptr, TYPE_LINK_BUTTON)
}

IS_LINK_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LINK_BUTTON)
}

LIST_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListBox where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListBox, ptr, TYPE_LIST_BOX)
}

IS_LIST_BOX :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_BOX)
}

LIST_BOX_ROW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListBoxRow where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListBoxRow, ptr, TYPE_LIST_BOX_ROW)
}

IS_LIST_BOX_ROW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_BOX_ROW)
}

LIST_HEADER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListHeader where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListHeader, ptr, TYPE_LIST_HEADER)
}

IS_LIST_HEADER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_HEADER)
}

LIST_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ListView where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ListView, ptr, TYPE_LIST_VIEW)
}

IS_LIST_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LIST_VIEW)
}

LOCK_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^LockButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(LockButton, ptr, TYPE_LOCK_BUTTON)
}

IS_LOCK_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_LOCK_BUTTON)
}

MAP_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MapListModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MapListModel, ptr, TYPE_MAP_LIST_MODEL)
}

IS_MAP_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MAP_LIST_MODEL)
}

MEDIA_STREAM :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MediaStream where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MediaStream, ptr, TYPE_MEDIA_STREAM)
}

IS_MEDIA_STREAM :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MEDIA_STREAM)
}

MEDIA_CONTROLS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MediaControls where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MediaControls, ptr, TYPE_MEDIA_CONTROLS)
}

IS_MEDIA_CONTROLS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MEDIA_CONTROLS)
}

MEDIA_FILE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MediaFile where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MediaFile, ptr, TYPE_MEDIA_FILE)
}

IS_MEDIA_FILE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MEDIA_FILE)
}

POPOVER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Popover where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Popover, ptr, TYPE_POPOVER)
}

IS_POPOVER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POPOVER)
}

MENU_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MenuButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MenuButton, ptr, TYPE_MENU_BUTTON)
}

IS_MENU_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MENU_BUTTON)
}

MESSAGE_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MessageDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MessageDialog, ptr, TYPE_MESSAGE_DIALOG)
}

IS_MESSAGE_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MESSAGE_DIALOG)
}

MOUNT_OPERATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MountOperation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MountOperation, ptr, TYPE_MOUNT_OPERATION)
}

IS_MOUNT_OPERATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MOUNT_OPERATION)
}

MULTI_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MultiFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MultiFilter, ptr, TYPE_MULTI_FILTER)
}

IS_MULTI_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MULTI_FILTER)
}

ANY_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AnyFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AnyFilter, ptr, TYPE_ANY_FILTER)
}

IS_ANY_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ANY_FILTER)
}

EVERY_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^EveryFilter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(EveryFilter, ptr, TYPE_EVERY_FILTER)
}

IS_EVERY_FILTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_EVERY_FILTER)
}

MULTI_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MultiSelection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MultiSelection, ptr, TYPE_MULTI_SELECTION)
}

IS_MULTI_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MULTI_SELECTION)
}

MULTI_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MultiSorter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MultiSorter, ptr, TYPE_MULTI_SORTER)
}

IS_MULTI_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MULTI_SORTER)
}

NATIVE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Native where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Native, ptr, TYPE_NATIVE)
}

IS_NATIVE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NATIVE)
}

NO_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NoSelection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NoSelection, ptr, TYPE_NO_SELECTION)
}

IS_NO_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NO_SELECTION)
}

NOTEBOOK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Notebook where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Notebook, ptr, TYPE_NOTEBOOK)
}

IS_NOTEBOOK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NOTEBOOK)
}

NOTEBOOK_PAGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NotebookPage where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NotebookPage, ptr, TYPE_NOTEBOOK_PAGE)
}

IS_NOTEBOOK_PAGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NOTEBOOK_PAGE)
}

NUMERIC_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NumericSorter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NumericSorter, ptr, TYPE_NUMERIC_SORTER)
}

IS_NUMERIC_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NUMERIC_SORTER)
}

ORIENTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Orientable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Orientable, ptr, TYPE_ORIENTABLE)
}

IS_ORIENTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ORIENTABLE)
}

OVERLAY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Overlay where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Overlay, ptr, TYPE_OVERLAY)
}

IS_OVERLAY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_OVERLAY)
}

OVERLAY_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^OverlayLayout where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(OverlayLayout, ptr, TYPE_OVERLAY_LAYOUT)
}

IS_OVERLAY_LAYOUT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_OVERLAY_LAYOUT)
}

OVERLAY_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^OverlayLayoutChild where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(OverlayLayoutChild, ptr, TYPE_OVERLAY_LAYOUT_CHILD)
}

IS_OVERLAY_LAYOUT_CHILD :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_OVERLAY_LAYOUT_CHILD)
}

PAD_CONTROLLER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PadController where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PadController, ptr, TYPE_PAD_CONTROLLER)
}

IS_PAD_CONTROLLER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAD_CONTROLLER)
}

PAPER_SIZE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PaperSize where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PaperSize, ptr, TYPE_PAPER_SIZE)
}

IS_PAPER_SIZE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAPER_SIZE)
}

PAGE_SETUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PageSetup where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PageSetup, ptr, TYPE_PAGE_SETUP)
}

IS_PAGE_SETUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PAGE_SETUP)
}

PANED :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Paned where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Paned, ptr, TYPE_PANED)
}

IS_PANED :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PANED)
}

PASSWORD_ENTRY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PasswordEntry where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PasswordEntry, ptr, TYPE_PASSWORD_ENTRY)
}

IS_PASSWORD_ENTRY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PASSWORD_ENTRY)
}

PASSWORD_ENTRY_BUFFER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PasswordEntryBuffer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PasswordEntryBuffer, ptr, TYPE_PASSWORD_ENTRY_BUFFER)
}

IS_PASSWORD_ENTRY_BUFFER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PASSWORD_ENTRY_BUFFER)
}

PICTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Picture where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Picture, ptr, TYPE_PICTURE)
}

IS_PICTURE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PICTURE)
}

POPOVER_BIN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PopoverBin where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PopoverBin, ptr, TYPE_POPOVER_BIN)
}

IS_POPOVER_BIN :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POPOVER_BIN)
}

POPOVER_MENU :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PopoverMenu where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PopoverMenu, ptr, TYPE_POPOVER_MENU)
}

IS_POPOVER_MENU :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POPOVER_MENU)
}

POPOVER_MENU_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PopoverMenuBar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PopoverMenuBar, ptr, TYPE_POPOVER_MENU_BAR)
}

IS_POPOVER_MENU_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_POPOVER_MENU_BAR)
}

PRINT_SETTINGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintSettings where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintSettings, ptr, TYPE_PRINT_SETTINGS)
}

IS_PRINT_SETTINGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_SETTINGS)
}

PRINT_SETUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintSetup where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintSetup, ptr, TYPE_PRINT_SETUP)
}

IS_PRINT_SETUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_SETUP)
}

PRINT_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintDialog where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintDialog, ptr, TYPE_PRINT_DIALOG)
}

IS_PRINT_DIALOG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_DIALOG)
}

PRINT_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintContext, ptr, TYPE_PRINT_CONTEXT)
}

IS_PRINT_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_CONTEXT)
}

PRINT_OPERATION_PREVIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintOperationPreview where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        PrintOperationPreview,
        ptr,
        TYPE_PRINT_OPERATION_PREVIEW,
    )
}

IS_PRINT_OPERATION_PREVIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_OPERATION_PREVIEW)
}

PRINT_OPERATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^PrintOperation where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(PrintOperation, ptr, TYPE_PRINT_OPERATION)
}

IS_PRINT_OPERATION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PRINT_OPERATION)
}

PROGRESS_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ProgressBar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ProgressBar, ptr, TYPE_PROGRESS_BAR)
}

IS_PROGRESS_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_PROGRESS_BAR)
}

RANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Range where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Range, ptr, TYPE_RANGE)
}

IS_RANGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RANGE)
}

RECENT_INFO :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RecentInfo where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(RecentInfo, ptr, TYPE_RECENT_INFO)
}

IS_RECENT_INFO :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RECENT_INFO)
}

RECENT_MANAGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^RecentManager where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(RecentManager, ptr, TYPE_RECENT_MANAGER)
}

IS_RECENT_MANAGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_RECENT_MANAGER)
}

REVEALER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Revealer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Revealer, ptr, TYPE_REVEALER)
}

IS_REVEALER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_REVEALER)
}

ROOT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Root where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Root, ptr, TYPE_ROOT)
}

IS_ROOT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ROOT)
}

SCALE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Scale where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Scale, ptr, TYPE_SCALE)
}

IS_SCALE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCALE)
}

SCALE_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScaleButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScaleButton, ptr, TYPE_SCALE_BUTTON)
}

IS_SCALE_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCALE_BUTTON)
}

SCROLLABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Scrollable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Scrollable, ptr, TYPE_SCROLLABLE)
}

IS_SCROLLABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLLABLE)
}

SCROLLBAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Scrollbar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Scrollbar, ptr, TYPE_SCROLLBAR)
}

IS_SCROLLBAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLLBAR)
}

SCROLL_INFO :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrollInfo where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScrollInfo, ptr, TYPE_SCROLL_INFO)
}

IS_SCROLL_INFO :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLL_INFO)
}

SCROLLED_WINDOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ScrolledWindow where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ScrolledWindow, ptr, TYPE_SCROLLED_WINDOW)
}

IS_SCROLLED_WINDOW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SCROLLED_WINDOW)
}

SEARCH_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SearchBar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SearchBar, ptr, TYPE_SEARCH_BAR)
}

IS_SEARCH_BAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SEARCH_BAR)
}

SEARCH_ENTRY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SearchEntry where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SearchEntry, ptr, TYPE_SEARCH_ENTRY)
}

IS_SEARCH_ENTRY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SEARCH_ENTRY)
}

SECTION_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SectionModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SectionModel, ptr, TYPE_SECTION_MODEL)
}

IS_SECTION_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SECTION_MODEL)
}

SELECTION_FILTER_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SelectionFilterModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        SelectionFilterModel,
        ptr,
        TYPE_SELECTION_FILTER_MODEL,
    )
}

IS_SELECTION_FILTER_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SELECTION_FILTER_MODEL)
}

SEPARATOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Separator where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Separator, ptr, TYPE_SEPARATOR)
}

IS_SEPARATOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SEPARATOR)
}

SETTINGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Settings where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Settings, ptr, TYPE_SETTINGS)
}

IS_SETTINGS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SETTINGS)
}

SHORTCUT_CONTROLLER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutController where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutController, ptr, TYPE_SHORTCUT_CONTROLLER)
}

IS_SHORTCUT_CONTROLLER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT_CONTROLLER)
}

SHORTCUT_MANAGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutManager where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutManager, ptr, TYPE_SHORTCUT_MANAGER)
}

IS_SHORTCUT_MANAGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT_MANAGER)
}

SHORTCUT_LABEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutLabel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutLabel, ptr, TYPE_SHORTCUT_LABEL)
}

IS_SHORTCUT_LABEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT_LABEL)
}

SHORTCUT_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^ShortcutTrigger where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(ShortcutTrigger, ptr, TYPE_SHORTCUT_TRIGGER)
}

IS_SHORTCUT_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SHORTCUT_TRIGGER)
}

NEVER_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^NeverTrigger where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(NeverTrigger, ptr, TYPE_NEVER_TRIGGER)
}

IS_NEVER_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_NEVER_TRIGGER)
}

KEYVAL_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^KeyvalTrigger where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(KeyvalTrigger, ptr, TYPE_KEYVAL_TRIGGER)
}

IS_KEYVAL_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_KEYVAL_TRIGGER)
}

MNEMONIC_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^MnemonicTrigger where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(MnemonicTrigger, ptr, TYPE_MNEMONIC_TRIGGER)
}

IS_MNEMONIC_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_MNEMONIC_TRIGGER)
}

ALTERNATIVE_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^AlternativeTrigger where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(AlternativeTrigger, ptr, TYPE_ALTERNATIVE_TRIGGER)
}

IS_ALTERNATIVE_TRIGGER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_ALTERNATIVE_TRIGGER)
}

SIGNAL_LIST_ITEM_FACTORY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SignalListItemFactory where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(
        SignalListItemFactory,
        ptr,
        TYPE_SIGNAL_LIST_ITEM_FACTORY,
    )
}

IS_SIGNAL_LIST_ITEM_FACTORY :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SIGNAL_LIST_ITEM_FACTORY)
}

SINGLE_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SingleSelection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SingleSelection, ptr, TYPE_SINGLE_SELECTION)
}

IS_SINGLE_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SINGLE_SELECTION)
}

SLICE_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SliceListModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SliceListModel, ptr, TYPE_SLICE_LIST_MODEL)
}

IS_SLICE_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SLICE_LIST_MODEL)
}

STACK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Stack where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Stack, ptr, TYPE_STACK)
}

IS_STACK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STACK)
}

STACK_PAGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StackPage where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StackPage, ptr, TYPE_STACK_PAGE)
}

IS_STACK_PAGE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STACK_PAGE)
}

STACK_SIDEBAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StackSidebar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StackSidebar, ptr, TYPE_STACK_SIDEBAR)
}

IS_STACK_SIDEBAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STACK_SIDEBAR)
}

SIZE_GROUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SizeGroup where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SizeGroup, ptr, TYPE_SIZE_GROUP)
}

IS_SIZE_GROUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SIZE_GROUP)
}

SPIN_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SpinButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SpinButton, ptr, TYPE_SPIN_BUTTON)
}

IS_SPIN_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SPIN_BUTTON)
}

SPINNER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Spinner where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Spinner, ptr, TYPE_SPINNER)
}

IS_SPINNER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SPINNER)
}

STACK_SWITCHER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StackSwitcher where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StackSwitcher, ptr, TYPE_STACK_SWITCHER)
}

IS_STACK_SWITCHER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STACK_SWITCHER)
}

STATUSBAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Statusbar where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Statusbar, ptr, TYPE_STATUSBAR)
}

IS_STATUSBAR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STATUSBAR)
}

STRING_OBJECT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StringObject where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StringObject, ptr, TYPE_STRING_OBJECT)
}

IS_STRING_OBJECT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STRING_OBJECT)
}

STRING_LIST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StringList where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StringList, ptr, TYPE_STRING_LIST)
}

IS_STRING_LIST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STRING_LIST)
}

STRING_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StringSorter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StringSorter, ptr, TYPE_STRING_SORTER)
}

IS_STRING_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STRING_SORTER)
}

STYLE_PROVIDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StyleProvider where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StyleProvider, ptr, TYPE_STYLE_PROVIDER)
}

IS_STYLE_PROVIDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STYLE_PROVIDER)
}

STYLE_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^StyleContext where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(StyleContext, ptr, TYPE_STYLE_CONTEXT)
}

IS_STYLE_CONTEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_STYLE_CONTEXT)
}

SVG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Svg where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Svg, ptr, TYPE_SVG)
}

IS_SVG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SVG)
}

SWITCH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Switch where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Switch, ptr, TYPE_SWITCH)
}

IS_SWITCH :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SWITCH)
}

SYMBOLIC_PAINTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^SymbolicPaintable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(SymbolicPaintable, ptr, TYPE_SYMBOLIC_PAINTABLE)
}

IS_SYMBOLIC_PAINTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_SYMBOLIC_PAINTABLE)
}

TEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Text where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Text, ptr, TYPE_TEXT)
}

IS_TEXT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT)
}

TEXT_TAG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextTag where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextTag, ptr, TYPE_TEXT_TAG)
}

IS_TEXT_TAG :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_TAG)
}

TEXT_TAG_TABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextTagTable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextTagTable, ptr, TYPE_TEXT_TAG_TABLE)
}

IS_TEXT_TAG_TABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_TAG_TABLE)
}

TEXT_CHILD_ANCHOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextChildAnchor where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextChildAnchor, ptr, TYPE_TEXT_CHILD_ANCHOR)
}

IS_TEXT_CHILD_ANCHOR :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_CHILD_ANCHOR)
}

TEXT_ITER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextIter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextIter, ptr, TYPE_TEXT_ITER)
}

IS_TEXT_ITER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_ITER)
}

TEXT_MARK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextMark where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextMark, ptr, TYPE_TEXT_MARK)
}

IS_TEXT_MARK :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_MARK)
}

TEXT_BUFFER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextBuffer where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextBuffer, ptr, TYPE_TEXT_BUFFER)
}

IS_TEXT_BUFFER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_BUFFER)
}

TEXT_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TextView where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TextView, ptr, TYPE_TEXT_VIEW)
}

IS_TEXT_VIEW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TEXT_VIEW)
}

TREE_DRAG_SOURCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeDragSource where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeDragSource, ptr, TYPE_TREE_DRAG_SOURCE)
}

IS_TREE_DRAG_SOURCE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_DRAG_SOURCE)
}

TREE_DRAG_DEST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeDragDest where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeDragDest, ptr, TYPE_TREE_DRAG_DEST)
}

IS_TREE_DRAG_DEST :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_DRAG_DEST)
}

TREE_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeListModel where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeListModel, ptr, TYPE_TREE_LIST_MODEL)
}

IS_TREE_LIST_MODEL :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_LIST_MODEL)
}

TREE_LIST_ROW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeListRow where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeListRow, ptr, TYPE_TREE_LIST_ROW)
}

IS_TREE_LIST_ROW :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_LIST_ROW)
}

TREE_EXPANDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeExpander where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeExpander, ptr, TYPE_TREE_EXPANDER)
}

IS_TREE_EXPANDER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_EXPANDER)
}

TREE_LIST_ROW_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeListRowSorter where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeListRowSorter, ptr, TYPE_TREE_LIST_ROW_SORTER)
}

IS_TREE_LIST_ROW_SORTER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_LIST_ROW_SORTER)
}

TREE_MODEL_SORT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeModelSort where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeModelSort, ptr, TYPE_TREE_MODEL_SORT)
}

IS_TREE_MODEL_SORT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_MODEL_SORT)
}

TREE_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeSelection where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeSelection, ptr, TYPE_TREE_SELECTION)
}

IS_TREE_SELECTION :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_SELECTION)
}

TREE_STORE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^TreeStore where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(TreeStore, ptr, TYPE_TREE_STORE)
}

IS_TREE_STORE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_TREE_STORE)
}

URI_LAUNCHER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^UriLauncher where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(UriLauncher, ptr, TYPE_URI_LAUNCHER)
}

IS_URI_LAUNCHER :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_URI_LAUNCHER)
}

VIDEO :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Video where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Video, ptr, TYPE_VIDEO)
}

IS_VIDEO :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_VIDEO)
}

VIEWPORT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^Viewport where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(Viewport, ptr, TYPE_VIEWPORT)
}

IS_VIEWPORT :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_VIEWPORT)
}

VOLUME_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^VolumeButton where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(VolumeButton, ptr, TYPE_VOLUME_BUTTON)
}

IS_VOLUME_BUTTON :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_VOLUME_BUTTON)
}

WIDGET_PAINTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^WidgetPaintable where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(WidgetPaintable, ptr, TYPE_WIDGET_PAINTABLE)
}

IS_WIDGET_PAINTABLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_WIDGET_PAINTABLE)
}

WINDOW_CONTROLS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^WindowControls where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(WindowControls, ptr, TYPE_WINDOW_CONTROLS)
}

IS_WINDOW_CONTROLS :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_WINDOW_CONTROLS)
}

WINDOW_GROUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^WindowGroup where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(WindowGroup, ptr, TYPE_WINDOW_GROUP)
}

IS_WINDOW_GROUP :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_WINDOW_GROUP)
}

WINDOW_HANDLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> ^WindowHandle where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_cast(WindowHandle, ptr, TYPE_WINDOW_HANDLE)
}

IS_WINDOW_HANDLE :: #force_inline proc "contextless" (
    ptr: $Ptr,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    return gobj.type_is(ptr, TYPE_WINDOW_HANDLE)
}


@(private = "file")
just_do_absolutely_nothing :: #force_inline proc "contextless" (
) -> gobj.Type {return TYPE_BUTTON_EVENT()}
