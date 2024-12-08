package gdkpixbuf

import "../glib"
import "../glib/gio"
import gobj "../glib/gobject"

TYPE_PIXBUF :: pixbuf_get_type 
ERROR :: pixbuf_error_quark 
TYPE_PIXBUF_ANIMATION :: pixbuf_animation_get_type 
TYPE_PIXBUF_ANIMATION_ITER :: pixbuf_animation_iter_get_type 
TYPE_PIXBUF_SIMPLE_ANIM :: pixbuf_simple_anim_get_type 
TYPE_PIXBUF_LOADER :: pixbuf_loader_get_type 
TYPE_PIXBUF_ALPHA_MODE :: pixbuf_alpha_mode_get_type 
TYPE_COLORSPACE :: colorspace_get_type 
TYPE_PIXBUF_ERROR :: pixbuf_error_get_type 
TYPE_INTERP_TYPE :: interp_type_get_type 
TYPE_PIXBUF_ROTATION :: pixbuf_rotation_get_type 

PixbufAlphaMode :: enum u32 {ALPHA_BILEVEL = 0, ALPHA_FULL = 1, }
Colorspace :: enum u32 {COLORSPACE_RGB = 0, }
_GdkPixbuf :: rawptr
Pixbuf :: _GdkPixbuf
PixbufDestroyNotify :: #type proc "c" (pixels: [^]glib.uchar, data: glib.pointer)
PixbufError :: enum u32 {ERROR_CORRUPT_IMAGE = 0, ERROR_INSUFFICIENT_MEMORY = 1, ERROR_BAD_OPTION = 2, ERROR_UNKNOWN_TYPE = 3, ERROR_UNSUPPORTED_OPERATION = 4, ERROR_FAILED = 5, ERROR_INCOMPLETE_ANIMATION = 6, }
PixbufSaveFunc :: #type proc "c" (buf: ^glib.char, count: glib.size, error: ^^glib.Error, data: glib.pointer) -> glib.boolean
InterpType :: enum u32 {INTERP_NEAREST = 0, INTERP_TILES = 1, INTERP_BILINEAR = 2, INTERP_HYPER = 3, }
PixbufRotation :: enum u32 {ROTATE_NONE = 0, ROTATE_COUNTERCLOCKWISE = 90, ROTATE_UPSIDEDOWN = 180, ROTATE_CLOCKWISE = 270, }
_GdkPixbufAnimation :: rawptr
PixbufAnimation :: _GdkPixbufAnimation
_GdkPixbufAnimationIter :: rawptr
PixbufAnimationIter :: _GdkPixbufAnimationIter
_GdkPixbufSimpleAnim :: rawptr
PixbufSimpleAnim :: _GdkPixbufSimpleAnim
_GdkPixbufSimpleAnimClass :: rawptr
PixbufSimpleAnimClass :: _GdkPixbufSimpleAnimClass
_GdkPixbufFormat :: rawptr
PixbufFormat :: _GdkPixbufFormat
_GdkPixbufLoader :: struct {
    parent_instance: gobj.Object,
    priv: glib.pointer,
}
PixbufLoader :: _GdkPixbufLoader
size_prepared_func_ptr_anon_0 :: #type proc "c" (loader: ^PixbufLoader, width: i32, height: i32)
area_prepared_func_ptr_anon_1 :: #type proc "c" (loader: ^PixbufLoader)
area_updated_func_ptr_anon_2 :: #type proc "c" (loader: ^PixbufLoader, x: i32, y: i32, width: i32, height: i32)
closed_func_ptr_anon_3 :: #type proc "c" (loader: ^PixbufLoader)
_GdkPixbufLoaderClass :: struct {
    parent_class: gobj.ObjectClass,
    size_prepared: size_prepared_func_ptr_anon_0,
    area_prepared: area_prepared_func_ptr_anon_1,
    area_updated: area_updated_func_ptr_anon_2,
    closed: closed_func_ptr_anon_3,
}
PixbufLoaderClass :: _GdkPixbufLoaderClass
Pixbuf_autoptr :: ^Pixbuf
Pixbuf_listautoptr :: ^glib.List
Pixbuf_slistautoptr :: ^glib.SList
Pixbuf_queueautoptr :: ^glib.Queue
PixbufAnimation_autoptr :: ^PixbufAnimation
PixbufAnimation_listautoptr :: ^glib.List
PixbufAnimation_slistautoptr :: ^glib.SList
PixbufAnimation_queueautoptr :: ^glib.Queue
PixbufAnimationIter_autoptr :: ^PixbufAnimationIter
PixbufAnimationIter_listautoptr :: ^glib.List
PixbufAnimationIter_slistautoptr :: ^glib.SList
PixbufAnimationIter_queueautoptr :: ^glib.Queue
PixbufLoader_autoptr :: ^PixbufLoader
PixbufLoader_listautoptr :: ^glib.List
PixbufLoader_slistautoptr :: ^glib.SList
PixbufLoader_queueautoptr :: ^glib.Queue
PixbufSimpleAnim_autoptr :: ^PixbufSimpleAnim
PixbufSimpleAnim_listautoptr :: ^glib.List
PixbufSimpleAnim_slistautoptr :: ^glib.SList
PixbufSimpleAnim_queueautoptr :: ^glib.Queue

foreign import gdkpixbuf_runic { "system:gdk_pixbuf-2.0", "../lib/linux/libgdk-pixbuf-wrapper.a" }

@(default_calling_convention = "c")
foreign gdkpixbuf_runic {
    @(link_name = "gdk_pixbuf_major_version")
    pixbuf_major_version: glib.uint_

    @(link_name = "gdk_pixbuf_minor_version")
    pixbuf_minor_version: glib.uint_

    @(link_name = "gdk_pixbuf_micro_version")
    pixbuf_micro_version: glib.uint_

    @(link_name = "gdk_pixbuf_version")
    pixbuf_version: cstring

    @(link_name = "gdk_pixbuf_error_quark")
    pixbuf_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gdk_pixbuf_get_type")
    pixbuf_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_ref")
    pixbuf_ref :: proc(pixbuf: ^Pixbuf) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_unref")
    pixbuf_unref :: proc(pixbuf: ^Pixbuf) ---

    @(link_name = "gdk_pixbuf_get_colorspace")
    pixbuf_get_colorspace :: proc(pixbuf: ^Pixbuf) -> Colorspace ---

    @(link_name = "gdk_pixbuf_get_n_channels")
    pixbuf_get_n_channels :: proc(pixbuf: ^Pixbuf) -> i32 ---

    @(link_name = "gdk_pixbuf_get_has_alpha")
    pixbuf_get_has_alpha :: proc(pixbuf: ^Pixbuf) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_get_bits_per_sample")
    pixbuf_get_bits_per_sample :: proc(pixbuf: ^Pixbuf) -> i32 ---

    @(link_name = "gdk_pixbuf_get_pixels")
    pixbuf_get_pixels :: proc(pixbuf: ^Pixbuf) -> ^glib.uchar ---

    @(link_name = "gdk_pixbuf_get_width")
    pixbuf_get_width :: proc(pixbuf: ^Pixbuf) -> i32 ---

    @(link_name = "gdk_pixbuf_get_height")
    pixbuf_get_height :: proc(pixbuf: ^Pixbuf) -> i32 ---

    @(link_name = "gdk_pixbuf_get_rowstride")
    pixbuf_get_rowstride :: proc(pixbuf: ^Pixbuf) -> i32 ---

    @(link_name = "gdk_pixbuf_get_byte_length")
    pixbuf_get_byte_length :: proc(pixbuf: ^Pixbuf) -> glib.size ---

    @(link_name = "gdk_pixbuf_get_pixels_with_length")
    pixbuf_get_pixels_with_length :: proc(pixbuf: ^Pixbuf, length: ^glib.uint_) -> ^glib.uchar ---

    @(link_name = "gdk_pixbuf_read_pixels")
    pixbuf_read_pixels :: proc(pixbuf: ^Pixbuf) -> ^glib.uint8 ---

    @(link_name = "gdk_pixbuf_read_pixel_bytes")
    pixbuf_read_pixel_bytes :: proc(pixbuf: ^Pixbuf) -> ^glib.Bytes ---

    @(link_name = "gdk_pixbuf_new")
    pixbuf_new :: proc(colorspace: Colorspace, has_alpha: glib.boolean, bits_per_sample: i32, width: i32, height: i32) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_calculate_rowstride")
    pixbuf_calculate_rowstride :: proc(colorspace: Colorspace, has_alpha: glib.boolean, bits_per_sample: i32, width: i32, height: i32) -> glib.int_ ---

    @(link_name = "gdk_pixbuf_copy")
    pixbuf_copy :: proc(pixbuf: ^Pixbuf) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_subpixbuf")
    pixbuf_new_subpixbuf :: proc(src_pixbuf: ^Pixbuf, src_x: i32, src_y: i32, width: i32, height: i32) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_file")
    pixbuf_new_from_file :: proc(filename: cstring, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_file_at_size")
    pixbuf_new_from_file_at_size :: proc(filename: cstring, width: i32, height: i32, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_file_at_scale")
    pixbuf_new_from_file_at_scale :: proc(filename: cstring, width: i32, height: i32, preserve_aspect_ratio: glib.boolean, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_resource")
    pixbuf_new_from_resource :: proc(resource_path: cstring, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_resource_at_scale")
    pixbuf_new_from_resource_at_scale :: proc(resource_path: cstring, width: i32, height: i32, preserve_aspect_ratio: glib.boolean, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_data")
    pixbuf_new_from_data :: proc(data: ^glib.uchar, colorspace: Colorspace, has_alpha: glib.boolean, bits_per_sample: i32, width: i32, height: i32, rowstride: i32, destroy_fn: PixbufDestroyNotify, destroy_fn_data: glib.pointer) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_bytes")
    pixbuf_new_from_bytes :: proc(data: ^glib.Bytes, colorspace: Colorspace, has_alpha: glib.boolean, bits_per_sample: i32, width: i32, height: i32, rowstride: i32) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_xpm_data")
    pixbuf_new_from_xpm_data :: proc(data: ^^glib.char) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_inline")
    pixbuf_new_from_inline :: proc(data_length: glib.int_, data: ^glib.uint8, copy_pixels: glib.boolean, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_fill")
    pixbuf_fill :: proc(pixbuf: ^Pixbuf, pixel: glib.uint32) ---

    @(link_name = "gdk_pixbuf_save")
    pixbuf_save :: proc(pixbuf: ^Pixbuf, filename: cstring, type: cstring, error: ^^glib.Error, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_savev")
    pixbuf_savev :: proc(pixbuf: ^Pixbuf, filename: cstring, type: cstring, option_keys: [^]cstring, option_values: [^]cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_save_to_callback")
    pixbuf_save_to_callback :: proc(pixbuf: ^Pixbuf, save_func: PixbufSaveFunc, user_data: glib.pointer, type: cstring, error: ^^glib.Error, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_save_to_callbackv")
    pixbuf_save_to_callbackv :: proc(pixbuf: ^Pixbuf, save_func: PixbufSaveFunc, user_data: glib.pointer, type: cstring, option_keys: [^]cstring, option_values: [^]cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_save_to_buffer")
    pixbuf_save_to_buffer :: proc(pixbuf: ^Pixbuf, buffer: ^^glib.char, buffer_size: ^glib.size, type: cstring, error: ^^glib.Error, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_save_to_bufferv")
    pixbuf_save_to_bufferv :: proc(pixbuf: ^Pixbuf, buffer: ^^glib.char, buffer_size: ^glib.size, type: cstring, option_keys: [^]cstring, option_values: [^]cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_new_from_stream")
    pixbuf_new_from_stream :: proc(stream: ^gio.InputStream, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_stream_async")
    pixbuf_new_from_stream_async :: proc(stream: ^gio.InputStream, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_pixbuf_new_from_stream_finish")
    pixbuf_new_from_stream_finish :: proc(async_result: ^gio.AsyncResult, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_stream_at_scale")
    pixbuf_new_from_stream_at_scale :: proc(stream: ^gio.InputStream, width: glib.int_, height: glib.int_, preserve_aspect_ratio: glib.boolean, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_new_from_stream_at_scale_async")
    pixbuf_new_from_stream_at_scale_async :: proc(stream: ^gio.InputStream, width: glib.int_, height: glib.int_, preserve_aspect_ratio: glib.boolean, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_pixbuf_save_to_stream")
    pixbuf_save_to_stream :: proc(pixbuf: ^Pixbuf, stream: ^gio.OutputStream, type: cstring, cancellable: ^gio.Cancellable, error: ^^glib.Error, #c_vararg var_args: ..any) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_save_to_stream_async")
    pixbuf_save_to_stream_async :: proc(pixbuf: ^Pixbuf, stream: ^gio.OutputStream, type: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer, #c_vararg var_args: ..any) ---

    @(link_name = "gdk_pixbuf_save_to_stream_finish")
    pixbuf_save_to_stream_finish :: proc(async_result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_save_to_streamv_async")
    pixbuf_save_to_streamv_async :: proc(pixbuf: ^Pixbuf, stream: ^gio.OutputStream, type: cstring, option_keys: [^]cstring, option_values: [^]cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_pixbuf_save_to_streamv")
    pixbuf_save_to_streamv :: proc(pixbuf: ^Pixbuf, stream: ^gio.OutputStream, type: cstring, option_keys: [^]cstring, option_values: [^]cstring, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_add_alpha")
    pixbuf_add_alpha :: proc(pixbuf: ^Pixbuf, substitute_color: glib.boolean, r: glib.uchar, g: glib.uchar, b: glib.uchar) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_copy_area")
    pixbuf_copy_area :: proc(src_pixbuf: ^Pixbuf, src_x: i32, src_y: i32, width: i32, height: i32, dest_pixbuf: ^Pixbuf, dest_x: i32, dest_y: i32) ---

    @(link_name = "gdk_pixbuf_saturate_and_pixelate")
    pixbuf_saturate_and_pixelate :: proc(src: ^Pixbuf, dest: ^Pixbuf, saturation: glib.float, pixelate: glib.boolean) ---

    @(link_name = "gdk_pixbuf_apply_embedded_orientation")
    pixbuf_apply_embedded_orientation :: proc(src: ^Pixbuf) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_set_option")
    pixbuf_set_option :: proc(pixbuf: ^Pixbuf, key: cstring, value: cstring) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_get_option")
    pixbuf_get_option :: proc(pixbuf: ^Pixbuf, key: cstring) -> cstring ---

    @(link_name = "gdk_pixbuf_remove_option")
    pixbuf_remove_option :: proc(pixbuf: ^Pixbuf, key: cstring) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_get_options")
    pixbuf_get_options :: proc(pixbuf: ^Pixbuf) -> ^glib.HashTable ---

    @(link_name = "gdk_pixbuf_copy_options")
    pixbuf_copy_options :: proc(src_pixbuf: ^Pixbuf, dest_pixbuf: ^Pixbuf) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_scale")
    pixbuf_scale :: proc(src: ^Pixbuf, dest: ^Pixbuf, dest_x: i32, dest_y: i32, dest_width: i32, dest_height: i32, offset_x: f64, offset_y: f64, scale_x: f64, scale_y: f64, interp_type: InterpType) ---

    @(link_name = "gdk_pixbuf_composite")
    pixbuf_composite :: proc(src: ^Pixbuf, dest: ^Pixbuf, dest_x: i32, dest_y: i32, dest_width: i32, dest_height: i32, offset_x: f64, offset_y: f64, scale_x: f64, scale_y: f64, interp_type: InterpType, overall_alpha: i32) ---

    @(link_name = "gdk_pixbuf_composite_color")
    pixbuf_composite_color :: proc(src: ^Pixbuf, dest: ^Pixbuf, dest_x: i32, dest_y: i32, dest_width: i32, dest_height: i32, offset_x: f64, offset_y: f64, scale_x: f64, scale_y: f64, interp_type: InterpType, overall_alpha: i32, check_x: i32, check_y: i32, check_size: i32, color1: glib.uint32, color2: glib.uint32) ---

    @(link_name = "gdk_pixbuf_scale_simple")
    pixbuf_scale_simple :: proc(src: ^Pixbuf, dest_width: i32, dest_height: i32, interp_type: InterpType) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_composite_color_simple")
    pixbuf_composite_color_simple :: proc(src: ^Pixbuf, dest_width: i32, dest_height: i32, interp_type: InterpType, overall_alpha: i32, check_size: i32, color1: glib.uint32, color2: glib.uint32) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_rotate_simple")
    pixbuf_rotate_simple :: proc(src: ^Pixbuf, angle: PixbufRotation) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_flip")
    pixbuf_flip :: proc(src: ^Pixbuf, horizontal: glib.boolean) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_animation_get_type")
    pixbuf_animation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_animation_new_from_file")
    pixbuf_animation_new_from_file :: proc(filename: cstring, error: ^^glib.Error) -> ^PixbufAnimation ---

    @(link_name = "gdk_pixbuf_animation_new_from_stream")
    pixbuf_animation_new_from_stream :: proc(stream: ^gio.InputStream, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^PixbufAnimation ---

    @(link_name = "gdk_pixbuf_animation_new_from_stream_async")
    pixbuf_animation_new_from_stream_async :: proc(stream: ^gio.InputStream, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_pixbuf_animation_new_from_stream_finish")
    pixbuf_animation_new_from_stream_finish :: proc(async_result: ^gio.AsyncResult, error: ^^glib.Error) -> ^PixbufAnimation ---

    @(link_name = "gdk_pixbuf_animation_new_from_resource")
    pixbuf_animation_new_from_resource :: proc(resource_path: cstring, error: ^^glib.Error) -> ^PixbufAnimation ---

    @(link_name = "gdk_pixbuf_animation_ref")
    pixbuf_animation_ref :: proc(animation: ^PixbufAnimation) -> ^PixbufAnimation ---

    @(link_name = "gdk_pixbuf_animation_unref")
    pixbuf_animation_unref :: proc(animation: ^PixbufAnimation) ---

    @(link_name = "gdk_pixbuf_animation_get_width")
    pixbuf_animation_get_width :: proc(animation: ^PixbufAnimation) -> i32 ---

    @(link_name = "gdk_pixbuf_animation_get_height")
    pixbuf_animation_get_height :: proc(animation: ^PixbufAnimation) -> i32 ---

    @(link_name = "gdk_pixbuf_animation_is_static_image")
    pixbuf_animation_is_static_image :: proc(animation: ^PixbufAnimation) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_animation_get_static_image")
    pixbuf_animation_get_static_image :: proc(animation: ^PixbufAnimation) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_animation_get_iter")
    pixbuf_animation_get_iter :: proc(animation: ^PixbufAnimation, start_time: ^glib.TimeVal) -> ^PixbufAnimationIter ---

    @(link_name = "gdk_pixbuf_animation_iter_get_type")
    pixbuf_animation_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_animation_iter_get_delay_time")
    pixbuf_animation_iter_get_delay_time :: proc(iter: ^PixbufAnimationIter) -> i32 ---

    @(link_name = "gdk_pixbuf_animation_iter_get_pixbuf")
    pixbuf_animation_iter_get_pixbuf :: proc(iter: ^PixbufAnimationIter) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_animation_iter_on_currently_loading_frame")
    pixbuf_animation_iter_on_currently_loading_frame :: proc(iter: ^PixbufAnimationIter) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_animation_iter_advance")
    pixbuf_animation_iter_advance :: proc(iter: ^PixbufAnimationIter, current_time: ^glib.TimeVal) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_simple_anim_get_type")
    pixbuf_simple_anim_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_simple_anim_iter_get_type")
    pixbuf_simple_anim_iter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_simple_anim_new")
    pixbuf_simple_anim_new :: proc(width: glib.int_, height: glib.int_, rate: glib.float) -> ^PixbufSimpleAnim ---

    @(link_name = "gdk_pixbuf_simple_anim_add_frame")
    pixbuf_simple_anim_add_frame :: proc(animation: ^PixbufSimpleAnim, pixbuf: ^Pixbuf) ---

    @(link_name = "gdk_pixbuf_simple_anim_set_loop")
    pixbuf_simple_anim_set_loop :: proc(animation: ^PixbufSimpleAnim, loop: glib.boolean) ---

    @(link_name = "gdk_pixbuf_simple_anim_get_loop")
    pixbuf_simple_anim_get_loop :: proc(animation: ^PixbufSimpleAnim) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_init_modules")
    pixbuf_init_modules :: proc(path: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_format_get_type")
    pixbuf_format_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_get_formats")
    pixbuf_get_formats :: proc() -> ^glib.SList ---

    @(link_name = "gdk_pixbuf_format_get_name")
    pixbuf_format_get_name :: proc(format: ^PixbufFormat) -> cstring ---

    @(link_name = "gdk_pixbuf_format_get_description")
    pixbuf_format_get_description :: proc(format: ^PixbufFormat) -> cstring ---

    @(link_name = "gdk_pixbuf_format_get_mime_types")
    pixbuf_format_get_mime_types :: proc(format: ^PixbufFormat) -> ^cstring ---

    @(link_name = "gdk_pixbuf_format_get_extensions")
    pixbuf_format_get_extensions :: proc(format: ^PixbufFormat) -> ^cstring ---

    @(link_name = "gdk_pixbuf_format_is_save_option_supported")
    pixbuf_format_is_save_option_supported :: proc(format: ^PixbufFormat, option_key: cstring) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_format_is_writable")
    pixbuf_format_is_writable :: proc(format: ^PixbufFormat) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_format_is_scalable")
    pixbuf_format_is_scalable :: proc(format: ^PixbufFormat) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_format_is_disabled")
    pixbuf_format_is_disabled :: proc(format: ^PixbufFormat) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_format_set_disabled")
    pixbuf_format_set_disabled :: proc(format: ^PixbufFormat, disabled: glib.boolean) ---

    @(link_name = "gdk_pixbuf_format_get_license")
    pixbuf_format_get_license :: proc(format: ^PixbufFormat) -> cstring ---

    @(link_name = "gdk_pixbuf_get_file_info")
    pixbuf_get_file_info :: proc(filename: cstring, width: ^glib.int_, height: ^glib.int_) -> ^PixbufFormat ---

    @(link_name = "gdk_pixbuf_get_file_info_async")
    pixbuf_get_file_info_async :: proc(filename: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gdk_pixbuf_get_file_info_finish")
    pixbuf_get_file_info_finish :: proc(async_result: ^gio.AsyncResult, width: ^glib.int_, height: ^glib.int_, error: ^^glib.Error) -> ^PixbufFormat ---

    @(link_name = "gdk_pixbuf_format_copy")
    pixbuf_format_copy :: proc(format: ^PixbufFormat) -> ^PixbufFormat ---

    @(link_name = "gdk_pixbuf_format_free")
    pixbuf_format_free :: proc(format: ^PixbufFormat) ---

    @(link_name = "gdk_pixbuf_loader_get_type")
    pixbuf_loader_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_loader_new")
    pixbuf_loader_new :: proc() -> ^PixbufLoader ---

    @(link_name = "gdk_pixbuf_loader_new_with_type")
    pixbuf_loader_new_with_type :: proc(image_type: cstring, error: ^^glib.Error) -> ^PixbufLoader ---

    @(link_name = "gdk_pixbuf_loader_new_with_mime_type")
    pixbuf_loader_new_with_mime_type :: proc(mime_type: cstring, error: ^^glib.Error) -> ^PixbufLoader ---

    @(link_name = "gdk_pixbuf_loader_set_size")
    pixbuf_loader_set_size :: proc(loader: ^PixbufLoader, width: i32, height: i32) ---

    @(link_name = "gdk_pixbuf_loader_write")
    pixbuf_loader_write :: proc(loader: ^PixbufLoader, buf: ^glib.uchar, count: glib.size, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_loader_write_bytes")
    pixbuf_loader_write_bytes :: proc(loader: ^PixbufLoader, buffer: ^glib.Bytes, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_loader_get_pixbuf")
    pixbuf_loader_get_pixbuf :: proc(loader: ^PixbufLoader) -> ^Pixbuf ---

    @(link_name = "gdk_pixbuf_loader_get_animation")
    pixbuf_loader_get_animation :: proc(loader: ^PixbufLoader) -> ^PixbufAnimation ---

    @(link_name = "gdk_pixbuf_loader_close")
    pixbuf_loader_close :: proc(loader: ^PixbufLoader, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gdk_pixbuf_loader_get_format")
    pixbuf_loader_get_format :: proc(loader: ^PixbufLoader) -> ^PixbufFormat ---

    @(link_name = "gdk_pixbuf_alpha_mode_get_type")
    pixbuf_alpha_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_colorspace_get_type")
    colorspace_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_error_get_type")
    pixbuf_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_interp_type_get_type")
    interp_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gdk_pixbuf_rotation_get_type")
    pixbuf_rotation_get_type :: proc() -> gobj.Type ---

    @(link_name = "glib_autoptr_clear_GdkPixbuf_wrapper")
    autoptr_clear_GdkPixbuf :: proc(_ptr: ^Pixbuf) ---

    @(link_name = "glib_autoptr_cleanup_GdkPixbuf_wrapper")
    autoptr_cleanup_GdkPixbuf :: proc(_ptr: ^^Pixbuf) ---

    @(link_name = "glib_autoptr_destroy_GdkPixbuf_wrapper")
    autoptr_destroy_GdkPixbuf :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GdkPixbuf_wrapper")
    listautoptr_cleanup_GdkPixbuf :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GdkPixbuf_wrapper")
    slistautoptr_cleanup_GdkPixbuf :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GdkPixbuf_wrapper")
    queueautoptr_cleanup_GdkPixbuf :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GdkPixbufAnimation_wrapper")
    autoptr_clear_GdkPixbufAnimation :: proc(_ptr: ^PixbufAnimation) ---

    @(link_name = "glib_autoptr_cleanup_GdkPixbufAnimation_wrapper")
    autoptr_cleanup_GdkPixbufAnimation :: proc(_ptr: ^^PixbufAnimation) ---

    @(link_name = "glib_autoptr_destroy_GdkPixbufAnimation_wrapper")
    autoptr_destroy_GdkPixbufAnimation :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GdkPixbufAnimation_wrapper")
    listautoptr_cleanup_GdkPixbufAnimation :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GdkPixbufAnimation_wrapper")
    slistautoptr_cleanup_GdkPixbufAnimation :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GdkPixbufAnimation_wrapper")
    queueautoptr_cleanup_GdkPixbufAnimation :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GdkPixbufAnimationIter_wrapper")
    autoptr_clear_GdkPixbufAnimationIter :: proc(_ptr: ^PixbufAnimationIter) ---

    @(link_name = "glib_autoptr_cleanup_GdkPixbufAnimationIter_wrapper")
    autoptr_cleanup_GdkPixbufAnimationIter :: proc(_ptr: ^^PixbufAnimationIter) ---

    @(link_name = "glib_autoptr_destroy_GdkPixbufAnimationIter_wrapper")
    autoptr_destroy_GdkPixbufAnimationIter :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GdkPixbufAnimationIter_wrapper")
    listautoptr_cleanup_GdkPixbufAnimationIter :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GdkPixbufAnimationIter_wrapper")
    slistautoptr_cleanup_GdkPixbufAnimationIter :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GdkPixbufAnimationIter_wrapper")
    queueautoptr_cleanup_GdkPixbufAnimationIter :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GdkPixbufLoader_wrapper")
    autoptr_clear_GdkPixbufLoader :: proc(_ptr: ^PixbufLoader) ---

    @(link_name = "glib_autoptr_cleanup_GdkPixbufLoader_wrapper")
    autoptr_cleanup_GdkPixbufLoader :: proc(_ptr: ^^PixbufLoader) ---

    @(link_name = "glib_autoptr_destroy_GdkPixbufLoader_wrapper")
    autoptr_destroy_GdkPixbufLoader :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GdkPixbufLoader_wrapper")
    listautoptr_cleanup_GdkPixbufLoader :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GdkPixbufLoader_wrapper")
    slistautoptr_cleanup_GdkPixbufLoader :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GdkPixbufLoader_wrapper")
    queueautoptr_cleanup_GdkPixbufLoader :: proc(_q: ^^glib.Queue) ---

    @(link_name = "glib_autoptr_clear_GdkPixbufSimpleAnim_wrapper")
    autoptr_clear_GdkPixbufSimpleAnim :: proc(_ptr: ^PixbufSimpleAnim) ---

    @(link_name = "glib_autoptr_cleanup_GdkPixbufSimpleAnim_wrapper")
    autoptr_cleanup_GdkPixbufSimpleAnim :: proc(_ptr: ^^PixbufSimpleAnim) ---

    @(link_name = "glib_autoptr_destroy_GdkPixbufSimpleAnim_wrapper")
    autoptr_destroy_GdkPixbufSimpleAnim :: proc(_ptr: rawptr) ---

    @(link_name = "glib_listautoptr_cleanup_GdkPixbufSimpleAnim_wrapper")
    listautoptr_cleanup_GdkPixbufSimpleAnim :: proc(_l: ^^glib.List) ---

    @(link_name = "glib_slistautoptr_cleanup_GdkPixbufSimpleAnim_wrapper")
    slistautoptr_cleanup_GdkPixbufSimpleAnim :: proc(_l: ^^glib.SList) ---

    @(link_name = "glib_queueautoptr_cleanup_GdkPixbufSimpleAnim_wrapper")
    queueautoptr_cleanup_GdkPixbufSimpleAnim :: proc(_q: ^^glib.Queue) ---

}

