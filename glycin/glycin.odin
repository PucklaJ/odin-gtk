package glycin

import glib "../glib"
import gobj "../glib/gobject"
import gio "../glib/gio"

foreign import lib "system:glycin-2"

Loader             :: _Gly_Loader
_Gly_Loader        :: struct {}
Loader_Autoptr     :: ^Loader
Loader_Listautoptr :: ^glib.List
Loader_Class :: struct {
	parent_class: gobj.ObjectClass,
}
Loader_Queueautoptr       :: ^glib.Queue
Loader_Class_Autoptr      :: ^Loader_Class
Loader_Class_Listautoptr  :: ^glib.List
Loader_Class_Slistautoptr :: ^glib.SList
Loader_Class_Queueautoptr :: ^glib.Queue
Loader_Slistautoptr       :: ^glib.SList
Image      :: _Gly_Image
_Gly_Image :: struct {}
Image_Class :: struct {
	parent_class: gobj.ObjectClass,
}
Image_Listautoptr   :: ^glib.List
Image_Slistautoptr  :: ^glib.SList
Image_Queueautoptr  :: ^glib.Queue
Image_Autoptr       :: ^Image
Image_Class_Autoptr :: ^Image_Class
Image_Class_Listautoptr  :: ^glib.List
Image_Class_Queueautoptr :: ^glib.Queue
Image_Class_Slistautoptr :: ^glib.SList
Frame_Request_Class :: struct {
	parent_class: gobj.ObjectClass,
}
Frame_Request_Autoptr            :: ^Frame_Request
_Gly_Frame_Request               :: struct {}
Frame_Request_Slistautoptr       :: ^glib.SList
Frame_Request_Queueautoptr       :: ^glib.Queue
Frame_Request_Class_Autoptr      :: ^Frame_Request_Class
Frame_Request_Class_Listautoptr  :: ^glib.List
Frame_Request_Class_Slistautoptr :: ^glib.SList
Frame_Request                    :: _Gly_Frame_Request
Frame_Request_Listautoptr        :: ^glib.List
Frame_Request_Class_Queueautoptr :: ^glib.Queue
Frame_Listautoptr  :: ^glib.List
Frame_Slistautoptr :: ^glib.SList
Frame_Queueautoptr :: ^glib.Queue
Frame              :: _Gly_Frame
_Gly_Frame         :: struct {}
Frame_Class :: struct {
	parent_class: gobj.ObjectClass,
}
Frame_Class_Slistautoptr :: ^glib.SList
Frame_Class_Listautoptr  :: ^glib.List
Frame_Class_Queueautoptr :: ^glib.Queue
Frame_Autoptr            :: ^Frame
Frame_Class_Autoptr      :: ^Frame_Class

/**
* GlySandboxSelector:
* @GLY_SANDBOX_SELECTOR_AUTO:
*  This mode selects `bwrap` outside of Flatpaks and usually
*  `flatpak-spawn` inside of Flatpaks. The sandbox is disabled
*  automatically inside of Flatpak development environments.
*  Inside of Flatpaks, `flatpak-spawn` is used to create the sandbox. This
*  mechanism starts an installed Flatpak with the same app id. For
*  development, Flatpak are usually not installed and the sandbox can
*  therefore not be used. If the sandbox has been started via
*  `flatpak-builder --run` (i.e. without installed Flatpak) and the app id
*  ends with `Devel`, the sandbox is disabled.
* @GLY_SANDBOX_SELECTOR_BWRAP: bwrap
* @GLY_SANDBOX_SELECTOR_FLATPAK_SPAWN: flatpak-spawn
* @GLY_SANDBOX_SELECTOR_NOT_SANDBOXED: Disable sandbox. Unsafe, only use for testing and development.
*
* Sandbox mechanisms
*
* ::: warning
*     Using @GLY_SANDBOX_SELECTOR_NOT_SANDBOXED will disable an important security layer that sandboxes loaders. It is only intended for testing and development purposes.
*
* Since: 2.0
*/
Sandbox_Selector :: enum u32 {
	AUTO          = 0,
	BWRAP         = 1,
	FLATPAK_SPAWN = 2,
	NOT_SANDBOXED = 3,
}
/**
* GlyMemoryFormatSelection:
* @GLY_MEMORY_SELECTION_B8G8R8A8_PREMULTIPLIED: 8-bit RGRA premultiplied
* @GLY_MEMORY_SELECTION_A8R8G8B8_PREMULTIPLIED: 8-bit ARGB premultiplied
* @GLY_MEMORY_SELECTION_R8G8B8A8_PREMULTIPLIED: 8-bit RGBA premultiplied
* @GLY_MEMORY_SELECTION_B8G8R8A8: 8-bit RGBA
* @GLY_MEMORY_SELECTION_A8R8G8B8: 8-bit AGBR
* @GLY_MEMORY_SELECTION_R8G8B8A8: 8-bit RGBA
* @GLY_MEMORY_SELECTION_A8B8G8R8: 8-bit ABGR
* @GLY_MEMORY_SELECTION_R8G8B8: 8-bit RGB
* @GLY_MEMORY_SELECTION_B8G8R8: 8-bit BGR
* @GLY_MEMORY_SELECTION_R16G16B16: 16-bit RGB
* @GLY_MEMORY_SELECTION_R16G16B16A16_PREMULTIPLIED: 16-bit RGBA premultiplied
* @GLY_MEMORY_SELECTION_R16G16B16A16: 16-bit RGBA
* @GLY_MEMORY_SELECTION_R16G16B16_FLOAT: 16-bit float RGB
* @GLY_MEMORY_SELECTION_R16G16B16A16_FLOAT: 16-bit float RGBA
* @GLY_MEMORY_SELECTION_R32G32B32_FLOAT: 32-bit float RGB
* @GLY_MEMORY_SELECTION_R32G32B32A32_FLOAT_PREMULTIPLIED: 32-bit float RGBA premultiplied
* @GLY_MEMORY_SELECTION_R32G32B32A32_FLOAT: 16-bit float RGBA
* @GLY_MEMORY_SELECTION_G8A8_PREMULTIPLIED: 8-bit gray with alpha premultiplied
* @GLY_MEMORY_SELECTION_G8A8: 8-bit gray with alpha
* @GLY_MEMORY_SELECTION_G8: 8-bit gray
* @GLY_MEMORY_SELECTION_G16A16_PREMULTIPLIED: 16-bit gray with alpha premultiplied
* @GLY_MEMORY_SELECTION_G16A16: 16-bit gray with alpha
* @GLY_MEMORY_SELECTION_G16: 16-bit gray
*
* Memory format selection
*
* Since: 2.0
*/
Memory_Format_Selection :: enum u32 {
	B8G8R8A8_PREMULTIPLIED           = 1,
	A8R8G8B8_PREMULTIPLIED           = 2,
	R8G8B8A8_PREMULTIPLIED           = 4,
	B8G8R8A8                         = 8,
	A8R8G8B8                         = 16,
	R8G8B8A8                         = 32,
	A8B8G8R8                         = 64,
	R8G8B8                           = 128,
	B8G8R8                           = 256,
	R16G16B16                        = 512,
	R16G16B16A16_PREMULTIPLIED       = 1024,
	R16G16B16A16                     = 2048,
	R16G16B16_FLOAT                  = 4096,
	R16G16B16A16_FLOAT               = 8192,
	R32G32B32_FLOAT                  = 16384,
	R32G32B32A32_FLOAT_PREMULTIPLIED = 32768,
	R32G32B32A32_FLOAT               = 65536,
	G8A8_PREMULTIPLIED               = 131072,
	G8A8                             = 262144,
	G8                               = 524288,
	G16A16_PREMULTIPLIED             = 1048576,
	G16A16                           = 2097152,
	G16                              = 4194304,
}


/**
* GlyMemoryFormat:
* @GLY_MEMORY_B8G8R8A8_PREMULTIPLIED: 8-bit RGRA premultiplied
* @GLY_MEMORY_A8R8G8B8_PREMULTIPLIED: 8-bit ARGB premultiplied
* @GLY_MEMORY_R8G8B8A8_PREMULTIPLIED: 8-bit RGBA premultiplied
* @GLY_MEMORY_B8G8R8A8: 8-bit RGBA
* @GLY_MEMORY_A8R8G8B8: 8-bit AGBR
* @GLY_MEMORY_R8G8B8A8: 8-bit RGBA
* @GLY_MEMORY_A8B8G8R8: 8-bit ABGR
* @GLY_MEMORY_R8G8B8: 8-bit RGB
* @GLY_MEMORY_B8G8R8: 8-bit BGR
* @GLY_MEMORY_R16G16B16: 16-bit RGB
* @GLY_MEMORY_R16G16B16A16_PREMULTIPLIED: 16-bit RGBA premultiplied
* @GLY_MEMORY_R16G16B16A16: 16-bit RGBA
* @GLY_MEMORY_R16G16B16_FLOAT: 16-bit float RGB
* @GLY_MEMORY_R16G16B16A16_FLOAT: 16-bit float RGBA
* @GLY_MEMORY_R32G32B32_FLOAT: 32-bit float RGB
* @GLY_MEMORY_R32G32B32A32_FLOAT_PREMULTIPLIED: 32-bit float RGBA premultiplied
* @GLY_MEMORY_R32G32B32A32_FLOAT: 16-bit float RGBA
* @GLY_MEMORY_G8A8_PREMULTIPLIED: 8-bit gray with alpha premultiplied
* @GLY_MEMORY_G8A8: 8-bit gray with alpha
* @GLY_MEMORY_G8: 8-bit gray
* @GLY_MEMORY_G16A16_PREMULTIPLIED: 16-bit gray with alpha premultiplied
* @GLY_MEMORY_G16A16: 16-bit gray with alpha
* @GLY_MEMORY_G16: 16-bit gray
*
* Memory format
*
* Since: 2.0
*/
Memory_Format :: enum u32 {
	B8G8R8A8_PREMULTIPLIED           = 0,
	A8R8G8B8_PREMULTIPLIED           = 1,
	R8G8B8A8_PREMULTIPLIED           = 2,
	B8G8R8A8                         = 3,
	A8R8G8B8                         = 4,
	R8G8B8A8                         = 5,
	A8B8G8R8                         = 6,
	R8G8B8                           = 7,
	B8G8R8                           = 8,
	R16G16B16                        = 9,
	R16G16B16A16_PREMULTIPLIED       = 10,
	R16G16B16A16                     = 11,
	R16G16B16_FLOAT                  = 12,
	R16G16B16A16_FLOAT               = 13,
	R32G32B32_FLOAT                  = 14,
	R32G32B32A32_FLOAT_PREMULTIPLIED = 15,
	R32G32B32A32_FLOAT               = 16,
	G8A8_PREMULTIPLIED               = 17,
	G8A8                             = 18,
	G8                               = 19,
	G16A16_PREMULTIPLIED             = 20,
	G16A16                           = 21,
	G16                              = 22,
}

@(default_calling_convention="c", link_prefix="gly_")
foreign lib {
	/**
	* gly_loader_get_mime_types_async:
	* @cancellable: (nullable):
	* @callback:
	* @user_data: user data to pass to @callback
	*
	* Async variant of [func@Loader.get_mime_types]
	*
	* Since: 2.0
	*/
	loader_get_mime_types_async :: proc(cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

	/**
	* gly_loader_get_mime_types_finish:
	* @result: A `GAsyncResult`
	* @error:
	*
	* Finishes the [func@Loader.get_mime_types_async] call.
	*
	* Returns: (transfer full): Mime types.
	*
	* Since: 2.0
	*/
	loader_get_mime_types_finish :: proc(result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.Strv ---

	/**
	* gly_loader_set_sandbox_selector:
	* @loader:
	* @sandbox_selector: Method by which the sandbox mechanism is selected
	*
	* Selects which sandbox mechanism should be used. The default without calling this function is [enum@SandboxSelector]`.AUTO`.
	*
	* Since: 2.0
	*/
	loader_set_sandbox_selector :: proc(loader: ^Loader, sandbox_selector: Sandbox_Selector) ---

	/**
	* gly_loader_set_accepted_memory_formats:
	* @loader:
	* @memory_format_selection: Accepted memory formats
	*
	* Sets which memory formats can be returned by the loader
	*
	* If the memory format doesn't match one of the selected formats, the
	* format will be transformed into the best suitable format selected.
	*
	* Since: 2.0
	*/
	loader_set_accepted_memory_formats :: proc(loader: ^Loader, memory_format_selection: Memory_Format_Selection) ---

	/**
	* gly_loader_set_apply_transformations:
	* @loader:
	* @apply_transformations:
	*
	* Set whether to apply transformations to texture
	*
	* When enabled, transformations like image orientation are applied to the
	* texture data.
	*
	* This option is enabled by default.
	*
	* Since: 2.0
	*/
	loader_set_apply_transformations :: proc(loader: ^Loader, apply_transformations: glib.boolean) ---

	/**
	* gly_loader_load:
	* @loader:
	* @error:
	*
	* Synchronously loads an image and returns an [class@Image] when successful.
	*
	* Returns: (transfer full): a new [class@Image] on success, or `NULL` with @error filled in
	*
	* Since: 2.0
	*/
	loader_load :: proc(loader: ^Loader, error: ^^glib.Error) -> ^Image ---

	/**
	* gly_loader_load_async:
	* @loader:
	* @cancellable: (nullable): A [class@Gio.Cancellable] to cancel the operation
	* @callback: A callback to call when the operation is complete
	* @user_data: Data to pass to @callback
	*
	* Asynchronous version of [method@Loader.load].
	*
	* Since: 2.0
	*/
	loader_load_async :: proc(loader: ^Loader, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

	/**
	* gly_loader_load_finish:
	* @loader:
	* @result: A `GAsyncResult`
	* @error:
	*
	* Finishes the [method@Loader.load_async] call.
	*
	* Returns: (transfer full): Loaded image.
	*
	* Since: 2.0
	*/
	loader_load_finish :: proc(loader: ^Loader, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^Image ---

	/**
	* gly_frame_request_new:
	*
	* Creates a new frame request.
	*
	* Returns: (transfer full): a new [class@FrameRequest]
	*
	* Since: 2.0
	*/
	frame_request_new :: proc() -> ^Frame_Request ---

	/**
	* gly_frame_request_set_scale:
	* @frame_request:
	* @width: Maximum width
	* @height: Maximum height
	*
	* Set maximum dimensions for the frame. The texture will be scaled
	* to be within the maximum dimensions while keeping its aspect ratio.
	* This option is especially useful to SVGs which will be rendered at
	* the respective size.
	*
	* ::: warning
	*     Most loaders will ignore this option. Currently, only the SVG
	*     loader is known to obay it.
	*
	* Since: 2.0
	*/
	frame_request_set_scale :: proc(frame_request: ^Frame_Request, width: u32, height: u32) ---

	/**
	* gly_frame_request_set_loop_animation:
	* @frame_request:
	* @loop_animation:
	*
	* Controls if first frame is returned after last frame
	*
	* By default, this option is set to `TRUE`, returning the first frame, if
	* the previously requested frame was the last frame.
	*
	* Since: 2.0.1
	*/
	frame_request_set_loop_animation :: proc(frame_request: ^Frame_Request, loop_animation: glib.boolean) ---

	/**
	* gly_image_next_frame:
	* @image:
	* @error:
	*
	* Synchronously loads texture and information of the next frame.
	*
	* For single still images, this can only be called once.
	* For animated images, this function will loop to the first frame, when the last frame is reached.
	*
	* Returns: (transfer full): a new [class@Frame] on success, or `NULL` with @error filled in
	*
	* Since: 2.0
	*/
	image_next_frame :: proc(image: ^Image, error: ^^glib.Error) -> ^Frame ---

	/**
	* gly_image_next_frame_async:
	* @image:
	* @cancellable: (nullable): A [class@Gio.Cancellable] to cancel the operation
	* @callback: A callback to call when the operation is complete
	* @user_data: Data to pass to @callback
	*
	* Asynchronous version of [method@Image.next_frame].
	*
	* Since: 2.0
	*/
	image_next_frame_async :: proc(image: ^Image, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

	/**
	* gly_image_next_frame_finish:
	* @image:
	* @result: a `GAsyncResult`
	* @error:
	*
	* Finishes the [method@Image.next_frame_async] call.
	*
	* Returns: (transfer full): Loaded frame.
	*
	* Since: 2.0
	*/
	image_next_frame_finish :: proc(image: ^Image, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^Frame ---

	/**
	* gly_image_get_specific_frame:
	* @image:
	* @frame_request:
	* @error:
	*
	* Returns: (transfer full): Loaded frame.
	*
	* Since: 2.0
	*/
	image_get_specific_frame :: proc(image: ^Image, frame_request: ^Frame_Request, error: ^^glib.Error) -> ^Frame ---

	/**
	* gly_image_get_specific_frame_async:
	* @image:
	* @frame_request:
	* @cancellable: (nullable): A [class@Gio.Cancellable] to cancel the operation
	* @callback: A callback to call when the operation is complete
	* @user_data: Data to pass to @callback
	*
	* Asynchronous version of [method@Image.get_specific_frame].
	*
	* Since: 2.0
	*/
	image_get_specific_frame_async :: proc(image: ^Image, frame_request: ^Frame_Request, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

	/**
	* gly_image_get_specific_frame_finish:
	* @image:
	* @result: a `GAsyncResult`
	* @error:
	*
	* Finishes the [method@Image.get_specific_frame_async] call.
	*
	* Returns: (transfer full): Loaded frame.
	*
	* Since: 2.0
	*/
	image_get_specific_frame_finish :: proc(image: ^Image, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^Frame ---

	/**
	* gly_image_get_mime_type:
	* @image:
	*
	* Returns detected MIME type of the file
	*
	* Returns: MIME type
	*
	* Since: 2.0
	*/
	image_get_mime_type :: proc(image: ^Image) -> cstring ---

	/**
	* gly_image_get_width:
	* @image:
	*
	* Early width information.
	*
	* This information is often correct. However, it should only be used for
	* an early rendering estimates. For everything else, the specific frame
	* information should be used. See [method@Frame.get_width].
	*
	* Returns: Width
	*
	* Since: 2.0
	*/
	image_get_width :: proc(image: ^Image) -> u32 ---

	/**
	* gly_image_get_height:
	* @image:
	*
	* See [method@Image.get_width]
	*
	* Returns: height
	*
	* Since: 2.0
	*/
	image_get_height :: proc(image: ^Image) -> u32 ---

	/**
	* gly_image_get_metadata_key_value:
	* @image:
	* @key: A null-terminated string.
	*
	* Get metadata that are stored as key-value pairs.
	* A prominent example are PNG's `tEXt` and `zTXt` chunks.
	*
	* ::: note
	*     In contrast to gdk-pixbuf's *option* feature, the
	*     keys do not carry prefixes like `tEXt::` or `zTXt::`.
	*
	*
	* Return value: (transfer full) (nullable): The UTF-8 encoded value associated with `key`.
	*
	* Since: 2.0
	**/
	image_get_metadata_key_value :: proc(image: ^Image, key: ^glib.char) -> ^glib.char ---

	/**
	* gly_image_get_metadata_keys:
	* @image:
	*
	* Get the list of available keys for [method@Image.get_metadata_key_value].
	*
	* Return value: (transfer full): List of existing keys.
	*
	* Since: 2.0
	**/
	image_get_metadata_keys :: proc(image: ^Image) -> glib.Strv ---

	/**
	* gly_image_get_transformation_orientation:
	* @image:
	*
	* Get the image orientation
	*
	* The image orientation is given in Exif format. The function is
	* guaranteed to only return values from 1 to 8.
	*
	* If [method@Loader.set_apply_transformations] is set to `FALSE`,
	* the orientation has to be corrected manually to dispaly the image
	* correctly.
	*
	* Since: 2.0
	**/
	image_get_transformation_orientation :: proc(image: ^Image) -> u16 ---

	loader_get_type :: proc() -> gobj.Type ---
	image_get_type :: proc() -> gobj.Type ---
	frame_request_get_type :: proc() -> gobj.Type ---
	frame_get_type :: proc() -> gobj.Type ---
	sandbox_selector_get_type :: proc() -> gobj.Type ---

	memory_format_selection_get_type :: proc() -> gobj.Type ---

	/**
	* gly_loader_new:
	* @file: A file from which to load the image data
	*
	* Creates a new loader for a file.
	*
	* Returns: (transfer full): a new [class@Loader]
	*
	* Since: 2.0
	*/
	loader_new :: proc(file: ^gio.File) -> ^Loader ---

	/**
	* gly_loader_new_for_stream:
	* @stream: A stream from which to load the image data
	*
	* Creates a new loader for a stream.
	*
	* Returns: (transfer full): a new [class@Loader]
	*
	* Since: 2.0
	*/
	loader_new_for_stream :: proc(stream: ^gio.InputStream) -> ^Loader ---

	/**
	* gly_loader_new_for_bytes:
	* @bytes: Data from which to load the image
	*
	* Creates a new loader for bytes.
	*
	* Returns: (transfer full): a new [class@Loader]
	*
	* Since: 2.0
	*/
	loader_new_for_bytes :: proc(bytes: ^glib.Bytes) -> ^Loader ---

	/**
	* gly_loader_get_mime_types:
	*
	* Returns a list of MIME types currently supported for loading images.
	*
	* This list is generated from the config on first use of a loader or
	* call of this function and cached afterwards. Hence, the first call
	* can be blocking.
	*
	* Returns: (transfer full): List of supported MIME types
	*
	* Since: 2.0
	*/
	loader_get_mime_types :: proc() -> glib.Strv ---

	memory_format_get_type :: proc() -> gobj.Type ---

	/**
	* gly_memory_format_has_alpha:
	* @memory_format:
	*
	* Whether a memory format has an alpha channel
	*
	* Returns: Returns `TRUE` if the memory format has an alpha channel
	*
	* Since: 2.0
	*/
	memory_format_has_alpha :: proc(memory_format: Memory_Format) -> glib.boolean ---

	/**
	* gly_memory_format_is_premultiplied:
	* @memory_format:
	*
	* Whether a memory format has an alpha channel and the color values are
	* premultiplied with the alpha value
	*
	* Returns: Returns `TRUE` if color channels are premultiplied
	*
	* Since: 2.0
	*/
	memory_format_is_premultiplied :: proc(memory_format: Memory_Format) -> glib.boolean ---

	/**
	* gly_frame_get_delay:
	* @frame:
	*
	* Duration to show frame for animations.
	*
	* If the value is zero, the image is not animated.
	*
	* Returns: Duration in microseconds.
	*
	* Since: 2.0
	*/
	frame_get_delay :: proc(frame: ^Frame) -> i64 ---

	/**
	* gly_frame_get_width:
	* @frame:
	*
	* Width for image data in pixels
	*
	* Returns: Width in pixels
	*
	* Since: 2.0
	*/
	frame_get_width :: proc(frame: ^Frame) -> u32 ---

	/**
	* gly_frame_get_height:
	* @frame:
	*
	* Height for image data in pixels
	*
	* Returns: Height in pixels
	*
	* Since: 2.0
	*/
	frame_get_height :: proc(frame: ^Frame) -> u32 ---

	/**
	* gly_frame_get_stride:
	* @frame:
	*
	* Width of a row for image data in bytes
	*
	* Returns: Row stride in bytes
	*
	* Since: 2.0
	*/
	frame_get_stride :: proc(frame: ^Frame) -> u32 ---

	/**
	* gly_frame_get_buf_bytes:
	* @frame:
	*
	* Image data arranged according to [method@Frame.get_memory_format]
	*
	* Returns: (transfer none): Image data
	*
	* Since: 2.0
	*/
	frame_get_buf_bytes :: proc(frame: ^Frame) -> ^glib.Bytes ---

	/**
	* gly_frame_get_memory_format:
	* @frame:
	*
	* Format of the image data in [method@Gly.Frame.get_buf_bytes]
	*
	* Returns: Format of image data
	*
	* Since: 2.0
	*/
	frame_get_memory_format :: proc(frame: ^Frame) -> Memory_Format ---

	cicp_get_type :: proc() -> gobj.Type ---
	cicp_copy :: proc(cicp: ^Cicp) -> ^Cicp ---
	cicp_free :: proc(cicp: ^Cicp) ---
	/**
	* gly_frame_get_color_cicp:
	* @frame:
	*
	* Returns the CICP (coding-independent code point) for the frames texture.
	* This value is `NULL` if no CICP is used.
	*
	* Returns: (nullable) (transfer full): CICP
	*
	* Since: 2.0
	*/
	frame_get_color_cicp :: proc(frame: ^Frame) -> ^Cicp ---

	/**
	* gly_loader_error_quark:
	*
	* Error quark for [error@GlyLoaderError]
	*
	* Returns: The error domain
	*/
	loader_error_quark :: proc() -> glib.Quark ---

	loader_error_get_type :: proc() -> gobj.Type ---

	new_frame_get_type :: proc() -> gobj.Type ---

	/**
	* gly_new_frame_set_color_icc_profile:
	* @new_frame:
	* @icc_profile: ICC profile
	*
	* Returns: `TRUE` if format supports ICC color profiles.
	*
	* Since: 2.0
	*/
	new_frame_set_color_icc_profile :: proc(new_frame: ^New_Frame, icc_profile: ^glib.Bytes) -> glib.boolean ---

	encoded_image_get_type :: proc() -> gobj.Type ---

	/**
	* gly_encoded_image_get_data:
	*
	* Returns: (transfer full): The encoded image data
	*
	* Since: 2.0
	*/
	encoded_image_get_data :: proc(encoded_image: ^Encoded_Image) -> ^glib.Bytes ---

	creator_get_type :: proc() -> gobj.Type ---

	/**
	* gly_creator_new:
	* @mime_type: A null-terminated string.
	* @error:
	*
	* Returns: (transfer full): a new [class@Creator]
	*
	* Since: 2.0
	*/
	creator_new :: proc(mime_type: ^glib.char, error: ^^glib.Error) -> ^Creator ---

	/**
	* gly_creator_add_frame:
	* @creator:
	* @width:
	* @height:
	* @memory_format:
	* @texture: Texture data
	* @error:
	*
	* Returns: (transfer full): a new [class@NewFrame]
	*
	* Since: 2.0
	*/
	creator_add_frame :: proc(creator: ^Creator, width: u32, height: u32, memory_format: Memory_Format, texture: ^glib.Bytes, error: ^^glib.Error) -> ^New_Frame ---

	/**
	* gly_creator_add_frame_with_stride:
	* @creator:
	* @width:
	* @height:
	* @stride
	* @memory_format:
	* @texture: Texture data
	* @error:
	*
	* Returns: (transfer full): a new [class@NewFrame]
	*
	* Since: 2.0
	*/
	creator_add_frame_with_stride :: proc(creator: ^Creator, width: u32, height: u32, stride: u32, memory_format: Memory_Format, texture: ^glib.Bytes, error: ^^glib.Error) -> ^New_Frame ---

	/**
	* gly_creator_create:
	* @image:
	* @error:
	*
	*
	* Return value: (transfer full) (nullable): The encoded image.
	*
	* Since: 2.0
	**/
	creator_create :: proc(image: ^Creator, error: ^^glib.Error) -> ^Encoded_Image ---

	/**
	* gly_creator_create_async:
	* @creator:
	* @cancellable: (nullable): A [class@Gio.Cancellable] to cancel the operation
	* @callback: A callback to call when the operation is complete
	* @user_data: Data to pass to @callback
	*
	* Asynchronous version of [method@Creator.create].
	*
	* Since: 2.0
	*/
	creator_create_async :: proc(creator: ^Creator, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

	/**
	* gly_creator_create_finish:
	* @creator:
	* @result: A `GAsyncResult`
	* @error:
	*
	* Finishes the [method@Creator.create_async] call.
	*
	* Returns: (transfer full): Encoded image.
	*
	* Since: 2.0
	*/
	creator_create_finish :: proc(creator: ^Creator, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^Encoded_Image ---

	/**
	* gly_creator_add_metadata_key_value:
	* @creator:
	* @key: A null-terminated string.
	* @value: A null-terminated string.
	*
	* Add metadata that are stored as key-value pairs.
	* A prominent example are PNG's `tEXt` chunks.
	*
	* If an entry with `key` already exists, it will be replaced.
	*
	* Returns: `TRUE` if format supports key-value storage.
	*
	* Since: 2.0
	**/
	creator_add_metadata_key_value :: proc(creator: ^Creator, key: ^glib.char, value: ^glib.char) -> glib.boolean ---

	/**
	* gly_creator_set_encoding_quality:
	* @creator:
	* @quality: Value between 0 and 100
	*
	* Returns: `TRUE` if format supports a quality setting.
	*
	* Since: 2.0
	**/
	creator_set_encoding_quality :: proc(creator: ^Creator, quality: u8) -> glib.boolean ---

	/**
	* gly_creator_set_encoding_compression:
	* @creator:
	* @compression: Value between 0 and 100
	*
	* Returns: `TRUE` if the format supports compression setting.
	*
	* Since: 2.0
	**/
	creator_set_encoding_compression :: proc(creator: ^Creator, compression: u8) -> glib.boolean ---

	/**
	* gly_creator_set_sandbox_selector:
	* @creator:
	* @sandbox_selector: Method by which the sandbox mechanism is selected
	*
	* Selects which sandbox mechanism should be used. The default without calling this function is [enum@SandboxSelector]`.AUTO`.
	*
	* Since: 2.0
	*/
	creator_set_sandbox_selector :: proc(creator: ^Creator, sandbox_selector: Sandbox_Selector) -> glib.boolean ---
}

/**
* GlyCicp: (copy-func gly_cicp_copy) (free-func gly_cicp_free)
*
* See ITU-T H.273
*
* Since: 2.0
*/
Cicp :: struct {
	color_primaries:          u8,
	transfer_characteristics: u8,
	matrix_coefficients:      u8,
	video_full_range_flag:    u8,
}

Cicp_Listautoptr  :: ^glib.List
Cicp_Autoptr      :: ^Cicp
Cicp_Slistautoptr :: ^glib.SList
Cicp_Queueautoptr :: ^glib.Queue

/**
* GlyLoaderError:
* @GLY_LOADER_ERROR_FAILED:
* @GLY_LOADER_ERROR_UNKNOWN_IMAGE_FORMAT:
* @GLY_LOADER_ERROR_NO_MORE_FRAMES:
*
* Errors that can appear while loading images.
*
* Since: 2.0
*/
Loader_Error :: enum u32 {
	/**
	* GLY_LOADER_ERROR_FAILED:
	*
	* Generic type for all other errors.
	*
	* Since: 2.0
	*/
	FAILED               = 0,

	/**
	* GLY_LOADER_ERROR_UNKNOWN_IMAGE_FORMAT:
	*
	* Unknown image format.
	*
	* Since: 2.0
	*/
	UNKNOWN_IMAGE_FORMAT = 1,

	/**
	* GLY_LOADER_ERROR_NO_MORE_FRAMES:
	*
	* Reached last frame in an animation with [method@FrameRequest.set_loop_animation] to `FALSE`.
	*
	* Since: 2.0.1
	*/
	NO_MORE_FRAMES       = 2,
}

/**************** GlyNewFrame ****************/

New_Frame_Slistautoptr      :: ^glib.SList
New_Frame_Listautoptr       :: ^glib.List
New_Frame_Class_Autoptr     :: ^New_Frame_Class
New_Frame_Queueautoptr      :: ^glib.Queue
New_Frame_Class_Listautoptr :: ^glib.List
New_Frame_Class :: struct {
	parent_class: gobj.ObjectClass,
}
New_Frame :: _Gly_New_Frame
_Gly_New_Frame               :: struct {}
New_Frame_Autoptr            :: ^New_Frame
New_Frame_Class_Slistautoptr :: ^glib.SList
New_Frame_Class_Queueautoptr :: ^glib.Queue
Encoded_Image_Class :: struct {
	parent_class: gobj.ObjectClass,
}
Encoded_Image_Autoptr :: ^Encoded_Image
_Gly_Encoded_Image    :: struct {}
Encoded_Image                    :: _Gly_Encoded_Image
Encoded_Image_Listautoptr        :: ^glib.List
Encoded_Image_Slistautoptr       :: ^glib.SList
Encoded_Image_Class_Slistautoptr :: ^glib.SList
Encoded_Image_Class_Autoptr      :: ^Encoded_Image_Class
Encoded_Image_Queueautoptr       :: ^glib.Queue
Encoded_Image_Class_Listautoptr  :: ^glib.List
Encoded_Image_Class_Queueautoptr :: ^glib.Queue
Creator_Listautoptr :: ^glib.List
Creator_Class :: struct {
	parent_class: gobj.ObjectClass,
}
Creator_Autoptr      :: ^Creator
Creator_Slistautoptr :: ^glib.SList
_Gly_Creator               :: struct {}
Creator                    :: _Gly_Creator
Creator_Queueautoptr       :: ^glib.Queue
Creator_Class_Autoptr      :: ^Creator_Class
Creator_Class_Slistautoptr :: ^glib.SList
Creator_Class_Listautoptr  :: ^glib.List
Creator_Class_Queueautoptr :: ^glib.Queue
