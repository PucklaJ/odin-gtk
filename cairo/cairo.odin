#+build linux amd64, linux arm64, windows amd64
package cairo

TAG_DEST :: "cairo.dest"
TAG_LINK :: "Link"
TAG_CONTENT :: "cairo.content"
TAG_CONTENT_REF :: "cairo.content_ref"
COLOR_PALETTE_DEFAULT :: 0
MIME_TYPE_JPEG :: "image/jpeg"
MIME_TYPE_PNG :: "image/png"
MIME_TYPE_JP2 :: "image/jp2"
MIME_TYPE_URI :: "text/x-uri"
MIME_TYPE_UNIQUE_ID :: "application/x-cairo.uuid"
MIME_TYPE_JBIG2 :: "application/x-cairo.jbig2"
MIME_TYPE_JBIG2_GLOBAL :: "application/x-cairo.jbig2-global"
MIME_TYPE_JBIG2_GLOBAL_ID :: "application/x-cairo.jbig2-global-id"
MIME_TYPE_CCITT_FAX :: "image/g3fax"
MIME_TYPE_CCITT_FAX_PARAMS :: "application/x-cairo.ccitt.params"
MIME_TYPE_EPS :: "application/postscript"
MIME_TYPE_EPS_PARAMS :: "application/x-cairo.eps.params"

bool_t :: b32
_cairo :: struct #packed {}
context_t :: _cairo
_cairo_surface :: struct #packed {}
surface_t :: _cairo_surface
_cairo_device :: struct #packed {}
device_t :: _cairo_device
_cairo_matrix :: struct {
    xx: f64,
    yx: f64,
    xy: f64,
    yy: f64,
    x0: f64,
    y0: f64,
}
matrix_t :: _cairo_matrix
_cairo_pattern :: struct #packed {}
pattern_t :: _cairo_pattern
destroy_func_t :: #type proc "c" (data: rawptr)
_cairo_user_data_key :: struct {
    unused: i32,
}
user_data_key_t :: _cairo_user_data_key
status_t :: _cairo_status
content_t :: _cairo_content
_cairo_format :: enum i32 {INVALID = -1, ARGB32 = 0, RGB24 = 1, A8 = 2, A1 = 3, RGB16_565 = 4, RGB30 = 5, RGB96F = 6, RGBA128F = 7 }
format_t :: _cairo_format
dither_t :: _cairo_dither
write_func_t :: #type proc "c" (closure: rawptr, data: ^u8, length: u32) -> status_t
read_func_t :: #type proc "c" (closure: rawptr, data: ^u8, length: u32) -> status_t
_cairo_rectangle_int :: struct {
    x: i32,
    y: i32,
    width: i32,
    height: i32,
}
rectangle_int_t :: _cairo_rectangle_int
operator_t :: _cairo_operator
antialias_t :: _cairo_antialias
fill_rule_t :: _cairo_fill_rule
line_cap_t :: _cairo_line_cap
line_join_t :: _cairo_line_join
_cairo_rectangle :: struct {
    x: f64,
    y: f64,
    width: f64,
    height: f64,
}
rectangle_t :: _cairo_rectangle
_cairo_rectangle_list :: struct {
    status: status_t,
    rectangles: [^]rectangle_t,
    num_rectangles: i32,
}
rectangle_list_t :: _cairo_rectangle_list
_cairo_scaled_font :: struct #packed {}
scaled_font_t :: _cairo_scaled_font
_cairo_font_face :: struct #packed {}
font_face_t :: _cairo_font_face
text_cluster_t :: struct {
    num_bytes: i32,
    num_glyphs: i32,
}
text_cluster_flags_t :: _cairo_text_cluster_flags
text_extents_t :: struct {
    x_bearing: f64,
    y_bearing: f64,
    width: f64,
    height: f64,
    x_advance: f64,
    y_advance: f64,
}
font_extents_t :: struct {
    ascent: f64,
    descent: f64,
    height: f64,
    max_x_advance: f64,
    max_y_advance: f64,
}
font_slant_t :: _cairo_font_slant
font_weight_t :: _cairo_font_weight
subpixel_order_t :: _cairo_subpixel_order
hint_style_t :: _cairo_hint_style
hint_metrics_t :: _cairo_hint_metrics
color_mode_t :: _cairo_color_mode
_cairo_font_options :: struct #packed {}
font_options_t :: _cairo_font_options
font_type_t :: _cairo_font_type
user_scaled_font_init_func_t :: #type proc "c" (scaled_font: ^scaled_font_t, cr: ^context_t, extents: [^]font_extents_t) -> status_t
user_scaled_font_text_to_glyphs_func_t :: #type proc "c" (scaled_font: ^scaled_font_t, utf8: cstring, utf8_len: i32, glyphs: [^]^glyph_t, num_glyphs: [^]i32, clusters: [^]^text_cluster_t, num_clusters: [^]i32, cluster_flags: [^]text_cluster_flags_t) -> status_t
path_data_type_t :: _cairo_path_data_type
header_struct_anon_0 :: struct {
    type: path_data_type_t,
    length: i32,
}
point_struct_anon_1 :: struct {
    x: f64,
    y: f64,
}
_cairo_path_data_t :: struct #raw_union {
    header: header_struct_anon_0,
    point: point_struct_anon_1,
}
path_data_t :: _cairo_path_data_t
path :: struct {
    status: status_t,
    data: ^path_data_t,
    num_data: i32,
}
path_t :: path
_cairo_device_type :: enum i32 {DRM = 0, GL = 1, SCRIPT = 2, XCB = 3, XLIB = 4, XML = 5, COGL = 6, WIN32 = 7, INVALID = -1 }
device_type_t :: _cairo_device_type
surface_observer_callback_t :: #type proc "c" (observer: ^surface_t, target: ^surface_t, data: rawptr)
surface_type_t :: _cairo_surface_type
raster_source_acquire_func_t :: #type proc "c" (pattern: ^pattern_t, callback_data: rawptr, target: ^surface_t, extents: [^]rectangle_int_t) -> ^surface_t
raster_source_release_func_t :: #type proc "c" (pattern: ^pattern_t, callback_data: rawptr, surface: ^surface_t)
raster_source_snapshot_func_t :: #type proc "c" (pattern: ^pattern_t, callback_data: rawptr) -> status_t
raster_source_copy_func_t :: #type proc "c" (pattern: ^pattern_t, callback_data: rawptr, other: ^pattern_t) -> status_t
raster_source_finish_func_t :: #type proc "c" (pattern: ^pattern_t, callback_data: rawptr)
pattern_type_t :: _cairo_pattern_type
extend_t :: _cairo_extend
filter_t :: _cairo_filter
_cairo_region :: struct #packed {}
region_t :: _cairo_region
region_overlap_t :: _cairo_region_overlap

@(default_calling_convention = "c")
foreign cairo_runic {
    @(link_name = "cairo_version")
    version :: proc() -> i32 ---

    @(link_name = "cairo_version_string")
    version_string :: proc() -> cstring ---

    @(link_name = "cairo_pattern_set_dither")
    pattern_set_dither :: proc(pattern: ^pattern_t, dither: dither_t) ---

    @(link_name = "cairo_pattern_get_dither")
    pattern_get_dither :: proc(pattern: ^pattern_t) -> dither_t ---

    @(link_name = "cairo_create")
    create :: proc(target: ^surface_t) -> ^context_t ---

    @(link_name = "cairo_reference")
    reference :: proc(cr: ^context_t) -> ^context_t ---

    @(link_name = "cairo_destroy")
    destroy :: proc(cr: ^context_t) ---

    @(link_name = "cairo_get_reference_count")
    get_reference_count :: proc(cr: ^context_t) -> u32 ---

    @(link_name = "cairo_get_user_data")
    get_user_data :: proc(cr: ^context_t, key: ^user_data_key_t) -> rawptr ---

    @(link_name = "cairo_set_user_data")
    set_user_data :: proc(cr: ^context_t, key: ^user_data_key_t, user_data: rawptr, destroy: destroy_func_t) -> status_t ---

    @(link_name = "cairo_save")
    save :: proc(cr: ^context_t) ---

    @(link_name = "cairo_restore")
    restore :: proc(cr: ^context_t) ---

    @(link_name = "cairo_push_group")
    push_group :: proc(cr: ^context_t) ---

    @(link_name = "cairo_push_group_with_content")
    push_group_with_content :: proc(cr: ^context_t, content: content_t) ---

    @(link_name = "cairo_pop_group")
    pop_group :: proc(cr: ^context_t) -> ^pattern_t ---

    @(link_name = "cairo_pop_group_to_source")
    pop_group_to_source :: proc(cr: ^context_t) ---

    @(link_name = "cairo_set_operator")
    set_operator :: proc(cr: ^context_t, op: operator_t) ---

    @(link_name = "cairo_set_source")
    set_source :: proc(cr: ^context_t, source: ^pattern_t) ---

    @(link_name = "cairo_set_source_rgb")
    set_source_rgb :: proc(cr: ^context_t, red: f64, green: f64, blue: f64) ---

    @(link_name = "cairo_set_source_rgba")
    set_source_rgba :: proc(cr: ^context_t, red: f64, green: f64, blue: f64, alpha: f64) ---

    @(link_name = "cairo_set_source_surface")
    set_source_surface :: proc(cr: ^context_t, surface: ^surface_t, x: f64, y: f64) ---

    @(link_name = "cairo_set_tolerance")
    set_tolerance :: proc(cr: ^context_t, tolerance: f64) ---

    @(link_name = "cairo_set_antialias")
    set_antialias :: proc(cr: ^context_t, antialias: antialias_t) ---

    @(link_name = "cairo_set_fill_rule")
    set_fill_rule :: proc(cr: ^context_t, fill_rule: fill_rule_t) ---

    @(link_name = "cairo_set_line_width")
    set_line_width :: proc(cr: ^context_t, width: f64) ---

    @(link_name = "cairo_set_hairline")
    set_hairline :: proc(cr: ^context_t, set_hairline: bool_t) ---

    @(link_name = "cairo_set_line_cap")
    set_line_cap :: proc(cr: ^context_t, line_cap: line_cap_t) ---

    @(link_name = "cairo_set_line_join")
    set_line_join :: proc(cr: ^context_t, line_join: line_join_t) ---

    @(link_name = "cairo_set_dash")
    set_dash :: proc(cr: ^context_t, dashes: [^]f64, num_dashes: i32, offset: f64) ---

    @(link_name = "cairo_set_miter_limit")
    set_miter_limit :: proc(cr: ^context_t, limit: f64) ---

    @(link_name = "cairo_translate")
    translate :: proc(cr: ^context_t, tx: f64, ty: f64) ---

    @(link_name = "cairo_scale")
    scale :: proc(cr: ^context_t, sx: f64, sy: f64) ---

    @(link_name = "cairo_rotate")
    rotate :: proc(cr: ^context_t, angle: f64) ---

    @(link_name = "cairo_transform")
    transform :: proc(cr: ^context_t, matrix_p: ^matrix_t) ---

    @(link_name = "cairo_set_matrix")
    set_matrix :: proc(cr: ^context_t, matrix_p: ^matrix_t) ---

    @(link_name = "cairo_identity_matrix")
    identity_matrix :: proc(cr: ^context_t) ---

    @(link_name = "cairo_user_to_device")
    user_to_device :: proc(cr: ^context_t, x: ^f64, y: ^f64) ---

    @(link_name = "cairo_user_to_device_distance")
    user_to_device_distance :: proc(cr: ^context_t, dx: ^f64, dy: ^f64) ---

    @(link_name = "cairo_device_to_user")
    device_to_user :: proc(cr: ^context_t, x: ^f64, y: ^f64) ---

    @(link_name = "cairo_device_to_user_distance")
    device_to_user_distance :: proc(cr: ^context_t, dx: ^f64, dy: ^f64) ---

    @(link_name = "cairo_new_path")
    new_path :: proc(cr: ^context_t) ---

    @(link_name = "cairo_move_to")
    move_to :: proc(cr: ^context_t, x: f64, y: f64) ---

    @(link_name = "cairo_new_sub_path")
    new_sub_path :: proc(cr: ^context_t) ---

    @(link_name = "cairo_line_to")
    line_to :: proc(cr: ^context_t, x: f64, y: f64) ---

    @(link_name = "cairo_curve_to")
    curve_to :: proc(cr: ^context_t, x1: f64, y1: f64, x2: f64, y2: f64, x3: f64, y3: f64) ---

    @(link_name = "cairo_arc")
    arc :: proc(cr: ^context_t, xc: f64, yc: f64, radius: f64, angle1: f64, angle2: f64) ---

    @(link_name = "cairo_arc_negative")
    arc_negative :: proc(cr: ^context_t, xc: f64, yc: f64, radius: f64, angle1: f64, angle2: f64) ---

    @(link_name = "cairo_rel_move_to")
    rel_move_to :: proc(cr: ^context_t, dx: f64, dy: f64) ---

    @(link_name = "cairo_rel_line_to")
    rel_line_to :: proc(cr: ^context_t, dx: f64, dy: f64) ---

    @(link_name = "cairo_rel_curve_to")
    rel_curve_to :: proc(cr: ^context_t, dx1: f64, dy1: f64, dx2: f64, dy2: f64, dx3: f64, dy3: f64) ---

    @(link_name = "cairo_rectangle")
    rectangle :: proc(cr: ^context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "cairo_close_path")
    close_path :: proc(cr: ^context_t) ---

    @(link_name = "cairo_path_extents")
    path_extents :: proc(cr: ^context_t, x1: ^f64, y1: ^f64, x2: ^f64, y2: ^f64) ---

    @(link_name = "cairo_paint")
    paint :: proc(cr: ^context_t) ---

    @(link_name = "cairo_paint_with_alpha")
    paint_with_alpha :: proc(cr: ^context_t, alpha: f64) ---

    @(link_name = "cairo_mask")
    mask :: proc(cr: ^context_t, pattern: ^pattern_t) ---

    @(link_name = "cairo_mask_surface")
    mask_surface :: proc(cr: ^context_t, surface: ^surface_t, surface_x: f64, surface_y: f64) ---

    @(link_name = "cairo_stroke")
    stroke :: proc(cr: ^context_t) ---

    @(link_name = "cairo_stroke_preserve")
    stroke_preserve :: proc(cr: ^context_t) ---

    @(link_name = "cairo_fill")
    fill :: proc(cr: ^context_t) ---

    @(link_name = "cairo_fill_preserve")
    fill_preserve :: proc(cr: ^context_t) ---

    @(link_name = "cairo_copy_page")
    copy_page :: proc(cr: ^context_t) ---

    @(link_name = "cairo_show_page")
    show_page :: proc(cr: ^context_t) ---

    @(link_name = "cairo_in_stroke")
    in_stroke :: proc(cr: ^context_t, x: f64, y: f64) -> bool_t ---

    @(link_name = "cairo_in_fill")
    in_fill :: proc(cr: ^context_t, x: f64, y: f64) -> bool_t ---

    @(link_name = "cairo_in_clip")
    in_clip :: proc(cr: ^context_t, x: f64, y: f64) -> bool_t ---

    @(link_name = "cairo_stroke_extents")
    stroke_extents :: proc(cr: ^context_t, x1: ^f64, y1: ^f64, x2: ^f64, y2: ^f64) ---

    @(link_name = "cairo_fill_extents")
    fill_extents :: proc(cr: ^context_t, x1: ^f64, y1: ^f64, x2: ^f64, y2: ^f64) ---

    @(link_name = "cairo_reset_clip")
    reset_clip :: proc(cr: ^context_t) ---

    @(link_name = "cairo_clip")
    clip :: proc(cr: ^context_t) ---

    @(link_name = "cairo_clip_preserve")
    clip_preserve :: proc(cr: ^context_t) ---

    @(link_name = "cairo_clip_extents")
    clip_extents :: proc(cr: ^context_t, x1: ^f64, y1: ^f64, x2: ^f64, y2: ^f64) ---

    @(link_name = "cairo_copy_clip_rectangle_list")
    copy_clip_rectangle_list :: proc(cr: ^context_t) -> ^rectangle_list_t ---

    @(link_name = "cairo_rectangle_list_destroy")
    rectangle_list_destroy :: proc(rectangle_list: ^rectangle_list_t) ---

    @(link_name = "cairo_tag_begin")
    tag_begin :: proc(cr: ^context_t, tag_name: cstring, attributes: cstring) ---

    @(link_name = "cairo_tag_end")
    tag_end :: proc(cr: ^context_t, tag_name: cstring) ---

    @(link_name = "cairo_glyph_allocate")
    glyph_allocate :: proc(num_glyphs: i32) -> ^glyph_t ---

    @(link_name = "cairo_glyph_free")
    glyph_free :: proc(glyphs: [^]glyph_t) ---

    @(link_name = "cairo_text_cluster_allocate")
    text_cluster_allocate :: proc(num_clusters: i32) -> ^text_cluster_t ---

    @(link_name = "cairo_text_cluster_free")
    text_cluster_free :: proc(clusters: [^]text_cluster_t) ---

    @(link_name = "cairo_font_options_create")
    font_options_create :: proc() -> ^font_options_t ---

    @(link_name = "cairo_font_options_copy")
    font_options_copy :: proc(original: ^font_options_t) -> ^font_options_t ---

    @(link_name = "cairo_font_options_destroy")
    font_options_destroy :: proc(options: [^]font_options_t) ---

    @(link_name = "cairo_font_options_status")
    font_options_status :: proc(options: [^]font_options_t) -> status_t ---

    @(link_name = "cairo_font_options_merge")
    font_options_merge :: proc(options: [^]font_options_t, other: ^font_options_t) ---

    @(link_name = "cairo_font_options_equal")
    font_options_equal :: proc(options: [^]font_options_t, other: ^font_options_t) -> bool_t ---

    @(link_name = "cairo_font_options_set_antialias")
    font_options_set_antialias :: proc(options: [^]font_options_t, antialias: antialias_t) ---

    @(link_name = "cairo_font_options_get_antialias")
    font_options_get_antialias :: proc(options: [^]font_options_t) -> antialias_t ---

    @(link_name = "cairo_font_options_set_subpixel_order")
    font_options_set_subpixel_order :: proc(options: [^]font_options_t, subpixel_order: subpixel_order_t) ---

    @(link_name = "cairo_font_options_get_subpixel_order")
    font_options_get_subpixel_order :: proc(options: [^]font_options_t) -> subpixel_order_t ---

    @(link_name = "cairo_font_options_set_hint_style")
    font_options_set_hint_style :: proc(options: [^]font_options_t, hint_style: hint_style_t) ---

    @(link_name = "cairo_font_options_get_hint_style")
    font_options_get_hint_style :: proc(options: [^]font_options_t) -> hint_style_t ---

    @(link_name = "cairo_font_options_set_hint_metrics")
    font_options_set_hint_metrics :: proc(options: [^]font_options_t, hint_metrics: hint_metrics_t) ---

    @(link_name = "cairo_font_options_get_hint_metrics")
    font_options_get_hint_metrics :: proc(options: [^]font_options_t) -> hint_metrics_t ---

    @(link_name = "cairo_font_options_get_variations")
    font_options_get_variations :: proc(options: [^]font_options_t) -> cstring ---

    @(link_name = "cairo_font_options_set_variations")
    font_options_set_variations :: proc(options: [^]font_options_t, variations: cstring) ---

    @(link_name = "cairo_font_options_set_color_mode")
    font_options_set_color_mode :: proc(options: [^]font_options_t, color_mode: color_mode_t) ---

    @(link_name = "cairo_font_options_get_color_mode")
    font_options_get_color_mode :: proc(options: [^]font_options_t) -> color_mode_t ---

    @(link_name = "cairo_font_options_get_color_palette")
    font_options_get_color_palette :: proc(options: [^]font_options_t) -> u32 ---

    @(link_name = "cairo_font_options_set_color_palette")
    font_options_set_color_palette :: proc(options: [^]font_options_t, palette_index: u32) ---

    @(link_name = "cairo_font_options_set_custom_palette_color")
    font_options_set_custom_palette_color :: proc(options: [^]font_options_t, index: u32, red: f64, green: f64, blue: f64, alpha: f64) ---

    @(link_name = "cairo_font_options_get_custom_palette_color")
    font_options_get_custom_palette_color :: proc(options: [^]font_options_t, index: u32, red: ^f64, green: ^f64, blue: ^f64, alpha: ^f64) -> status_t ---

    @(link_name = "cairo_select_font_face")
    select_font_face :: proc(cr: ^context_t, family: cstring, slant: font_slant_t, weight: font_weight_t) ---

    @(link_name = "cairo_set_font_size")
    set_font_size :: proc(cr: ^context_t, size: f64) ---

    @(link_name = "cairo_set_font_matrix")
    set_font_matrix :: proc(cr: ^context_t, matrix_p: ^matrix_t) ---

    @(link_name = "cairo_get_font_matrix")
    get_font_matrix :: proc(cr: ^context_t, matrix_p: ^matrix_t) ---

    @(link_name = "cairo_set_font_options")
    set_font_options :: proc(cr: ^context_t, options: [^]font_options_t) ---

    @(link_name = "cairo_get_font_options")
    get_font_options :: proc(cr: ^context_t, options: [^]font_options_t) ---

    @(link_name = "cairo_set_font_face")
    set_font_face :: proc(cr: ^context_t, font_face: ^font_face_t) ---

    @(link_name = "cairo_get_font_face")
    get_font_face :: proc(cr: ^context_t) -> ^font_face_t ---

    @(link_name = "cairo_set_scaled_font")
    set_scaled_font :: proc(cr: ^context_t, scaled_font: ^scaled_font_t) ---

    @(link_name = "cairo_get_scaled_font")
    get_scaled_font :: proc(cr: ^context_t) -> ^scaled_font_t ---

    @(link_name = "cairo_show_text")
    show_text :: proc(cr: ^context_t, utf8: cstring) ---

    @(link_name = "cairo_show_glyphs")
    show_glyphs :: proc(cr: ^context_t, glyphs: [^]glyph_t, num_glyphs: i32) ---

    @(link_name = "cairo_show_text_glyphs")
    show_text_glyphs :: proc(cr: ^context_t, utf8: cstring, utf8_len: i32, glyphs: [^]glyph_t, num_glyphs: i32, clusters: [^]text_cluster_t, num_clusters: i32, cluster_flags: text_cluster_flags_t) ---

    @(link_name = "cairo_text_path")
    text_path :: proc(cr: ^context_t, utf8: cstring) ---

    @(link_name = "cairo_glyph_path")
    glyph_path :: proc(cr: ^context_t, glyphs: [^]glyph_t, num_glyphs: i32) ---

    @(link_name = "cairo_text_extents")
    text_extents :: proc(cr: ^context_t, utf8: cstring, extents: [^]text_extents_t) ---

    @(link_name = "cairo_glyph_extents")
    glyph_extents :: proc(cr: ^context_t, glyphs: [^]glyph_t, num_glyphs: i32, extents: [^]text_extents_t) ---

    @(link_name = "cairo_font_extents")
    font_extents :: proc(cr: ^context_t, extents: [^]font_extents_t) ---

    @(link_name = "cairo_font_face_reference")
    font_face_reference :: proc(font_face: ^font_face_t) -> ^font_face_t ---

    @(link_name = "cairo_font_face_destroy")
    font_face_destroy :: proc(font_face: ^font_face_t) ---

    @(link_name = "cairo_font_face_get_reference_count")
    font_face_get_reference_count :: proc(font_face: ^font_face_t) -> u32 ---

    @(link_name = "cairo_font_face_status")
    font_face_status :: proc(font_face: ^font_face_t) -> status_t ---

    @(link_name = "cairo_font_face_get_type")
    font_face_get_type :: proc(font_face: ^font_face_t) -> font_type_t ---

    @(link_name = "cairo_font_face_get_user_data")
    font_face_get_user_data :: proc(font_face: ^font_face_t, key: ^user_data_key_t) -> rawptr ---

    @(link_name = "cairo_font_face_set_user_data")
    font_face_set_user_data :: proc(font_face: ^font_face_t, key: ^user_data_key_t, user_data: rawptr, destroy: destroy_func_t) -> status_t ---

    @(link_name = "cairo_scaled_font_create")
    scaled_font_create :: proc(font_face: ^font_face_t, font_matrix: ^matrix_t, ctm: ^matrix_t, options: [^]font_options_t) -> ^scaled_font_t ---

    @(link_name = "cairo_scaled_font_reference")
    scaled_font_reference :: proc(scaled_font: ^scaled_font_t) -> ^scaled_font_t ---

    @(link_name = "cairo_scaled_font_destroy")
    scaled_font_destroy :: proc(scaled_font: ^scaled_font_t) ---

    @(link_name = "cairo_scaled_font_get_reference_count")
    scaled_font_get_reference_count :: proc(scaled_font: ^scaled_font_t) -> u32 ---

    @(link_name = "cairo_scaled_font_status")
    scaled_font_status :: proc(scaled_font: ^scaled_font_t) -> status_t ---

    @(link_name = "cairo_scaled_font_get_type")
    scaled_font_get_type :: proc(scaled_font: ^scaled_font_t) -> font_type_t ---

    @(link_name = "cairo_scaled_font_get_user_data")
    scaled_font_get_user_data :: proc(scaled_font: ^scaled_font_t, key: ^user_data_key_t) -> rawptr ---

    @(link_name = "cairo_scaled_font_set_user_data")
    scaled_font_set_user_data :: proc(scaled_font: ^scaled_font_t, key: ^user_data_key_t, user_data: rawptr, destroy: destroy_func_t) -> status_t ---

    @(link_name = "cairo_scaled_font_extents")
    scaled_font_extents :: proc(scaled_font: ^scaled_font_t, extents: [^]font_extents_t) ---

    @(link_name = "cairo_scaled_font_text_extents")
    scaled_font_text_extents :: proc(scaled_font: ^scaled_font_t, utf8: cstring, extents: [^]text_extents_t) ---

    @(link_name = "cairo_scaled_font_glyph_extents")
    scaled_font_glyph_extents :: proc(scaled_font: ^scaled_font_t, glyphs: [^]glyph_t, num_glyphs: i32, extents: [^]text_extents_t) ---

    @(link_name = "cairo_scaled_font_text_to_glyphs")
    scaled_font_text_to_glyphs :: proc(scaled_font: ^scaled_font_t, x: f64, y: f64, utf8: cstring, utf8_len: i32, glyphs: [^]^glyph_t, num_glyphs: [^]i32, clusters: [^]^text_cluster_t, num_clusters: [^]i32, cluster_flags: [^]text_cluster_flags_t) -> status_t ---

    @(link_name = "cairo_scaled_font_get_font_face")
    scaled_font_get_font_face :: proc(scaled_font: ^scaled_font_t) -> ^font_face_t ---

    @(link_name = "cairo_scaled_font_get_font_matrix")
    scaled_font_get_font_matrix :: proc(scaled_font: ^scaled_font_t, font_matrix: ^matrix_t) ---

    @(link_name = "cairo_scaled_font_get_ctm")
    scaled_font_get_ctm :: proc(scaled_font: ^scaled_font_t, ctm: ^matrix_t) ---

    @(link_name = "cairo_scaled_font_get_scale_matrix")
    scaled_font_get_scale_matrix :: proc(scaled_font: ^scaled_font_t, scale_matrix: ^matrix_t) ---

    @(link_name = "cairo_scaled_font_get_font_options")
    scaled_font_get_font_options :: proc(scaled_font: ^scaled_font_t, options: [^]font_options_t) ---

    @(link_name = "cairo_toy_font_face_create")
    toy_font_face_create :: proc(family: cstring, slant: font_slant_t, weight: font_weight_t) -> ^font_face_t ---

    @(link_name = "cairo_toy_font_face_get_family")
    toy_font_face_get_family :: proc(font_face: ^font_face_t) -> cstring ---

    @(link_name = "cairo_toy_font_face_get_slant")
    toy_font_face_get_slant :: proc(font_face: ^font_face_t) -> font_slant_t ---

    @(link_name = "cairo_toy_font_face_get_weight")
    toy_font_face_get_weight :: proc(font_face: ^font_face_t) -> font_weight_t ---

    @(link_name = "cairo_user_font_face_create")
    user_font_face_create :: proc() -> ^font_face_t ---

    @(link_name = "cairo_user_font_face_set_init_func")
    user_font_face_set_init_func :: proc(font_face: ^font_face_t, init_func: user_scaled_font_init_func_t) ---

    @(link_name = "cairo_user_font_face_set_render_glyph_func")
    user_font_face_set_render_glyph_func :: proc(font_face: ^font_face_t, render_glyph_func: user_scaled_font_render_glyph_func_t) ---

    @(link_name = "cairo_user_font_face_set_render_color_glyph_func")
    user_font_face_set_render_color_glyph_func :: proc(font_face: ^font_face_t, render_glyph_func: user_scaled_font_render_glyph_func_t) ---

    @(link_name = "cairo_user_font_face_set_text_to_glyphs_func")
    user_font_face_set_text_to_glyphs_func :: proc(font_face: ^font_face_t, text_to_glyphs_func: user_scaled_font_text_to_glyphs_func_t) ---

    @(link_name = "cairo_user_font_face_set_unicode_to_glyph_func")
    user_font_face_set_unicode_to_glyph_func :: proc(font_face: ^font_face_t, unicode_to_glyph_func: user_scaled_font_unicode_to_glyph_func_t) ---

    @(link_name = "cairo_user_font_face_get_init_func")
    user_font_face_get_init_func :: proc(font_face: ^font_face_t) -> user_scaled_font_init_func_t ---

    @(link_name = "cairo_user_font_face_get_render_glyph_func")
    user_font_face_get_render_glyph_func :: proc(font_face: ^font_face_t) -> user_scaled_font_render_glyph_func_t ---

    @(link_name = "cairo_user_font_face_get_render_color_glyph_func")
    user_font_face_get_render_color_glyph_func :: proc(font_face: ^font_face_t) -> user_scaled_font_render_glyph_func_t ---

    @(link_name = "cairo_user_font_face_get_text_to_glyphs_func")
    user_font_face_get_text_to_glyphs_func :: proc(font_face: ^font_face_t) -> user_scaled_font_text_to_glyphs_func_t ---

    @(link_name = "cairo_user_font_face_get_unicode_to_glyph_func")
    user_font_face_get_unicode_to_glyph_func :: proc(font_face: ^font_face_t) -> user_scaled_font_unicode_to_glyph_func_t ---

    @(link_name = "cairo_user_scaled_font_get_foreground_marker")
    user_scaled_font_get_foreground_marker :: proc(scaled_font: ^scaled_font_t) -> ^pattern_t ---

    @(link_name = "cairo_user_scaled_font_get_foreground_source")
    user_scaled_font_get_foreground_source :: proc(scaled_font: ^scaled_font_t) -> ^pattern_t ---

    @(link_name = "cairo_get_operator")
    get_operator :: proc(cr: ^context_t) -> operator_t ---

    @(link_name = "cairo_get_source")
    get_source :: proc(cr: ^context_t) -> ^pattern_t ---

    @(link_name = "cairo_get_tolerance")
    get_tolerance :: proc(cr: ^context_t) -> f64 ---

    @(link_name = "cairo_get_antialias")
    get_antialias :: proc(cr: ^context_t) -> antialias_t ---

    @(link_name = "cairo_has_current_point")
    has_current_point :: proc(cr: ^context_t) -> bool_t ---

    @(link_name = "cairo_get_current_point")
    get_current_point :: proc(cr: ^context_t, x: ^f64, y: ^f64) ---

    @(link_name = "cairo_get_fill_rule")
    get_fill_rule :: proc(cr: ^context_t) -> fill_rule_t ---

    @(link_name = "cairo_get_line_width")
    get_line_width :: proc(cr: ^context_t) -> f64 ---

    @(link_name = "cairo_get_hairline")
    get_hairline :: proc(cr: ^context_t) -> bool_t ---

    @(link_name = "cairo_get_line_cap")
    get_line_cap :: proc(cr: ^context_t) -> line_cap_t ---

    @(link_name = "cairo_get_line_join")
    get_line_join :: proc(cr: ^context_t) -> line_join_t ---

    @(link_name = "cairo_get_miter_limit")
    get_miter_limit :: proc(cr: ^context_t) -> f64 ---

    @(link_name = "cairo_get_dash_count")
    get_dash_count :: proc(cr: ^context_t) -> i32 ---

    @(link_name = "cairo_get_dash")
    get_dash :: proc(cr: ^context_t, dashes: [^]f64, offset: ^f64) ---

    @(link_name = "cairo_get_matrix")
    get_matrix :: proc(cr: ^context_t, matrix_p: ^matrix_t) ---

    @(link_name = "cairo_get_target")
    get_target :: proc(cr: ^context_t) -> ^surface_t ---

    @(link_name = "cairo_get_group_target")
    get_group_target :: proc(cr: ^context_t) -> ^surface_t ---

    @(link_name = "cairo_copy_path")
    copy_path :: proc(cr: ^context_t) -> ^path_t ---

    @(link_name = "cairo_copy_path_flat")
    copy_path_flat :: proc(cr: ^context_t) -> ^path_t ---

    @(link_name = "cairo_append_path")
    append_path :: proc(cr: ^context_t, path_p: ^path_t) ---

    @(link_name = "cairo_path_destroy")
    path_destroy :: proc(path_p: ^path_t) ---

    @(link_name = "cairo_status")
    status :: proc(cr: ^context_t) -> status_t ---

    @(link_name = "cairo_status_to_string")
    status_to_string :: proc(status: status_t) -> cstring ---

    @(link_name = "cairo_device_reference")
    device_reference :: proc(device: ^device_t) -> ^device_t ---

    @(link_name = "cairo_device_get_type")
    device_get_type :: proc(device: ^device_t) -> device_type_t ---

    @(link_name = "cairo_device_status")
    device_status :: proc(device: ^device_t) -> status_t ---

    @(link_name = "cairo_device_acquire")
    device_acquire :: proc(device: ^device_t) -> status_t ---

    @(link_name = "cairo_device_release")
    device_release :: proc(device: ^device_t) ---

    @(link_name = "cairo_device_flush")
    device_flush :: proc(device: ^device_t) ---

    @(link_name = "cairo_device_finish")
    device_finish :: proc(device: ^device_t) ---

    @(link_name = "cairo_device_destroy")
    device_destroy :: proc(device: ^device_t) ---

    @(link_name = "cairo_device_get_reference_count")
    device_get_reference_count :: proc(device: ^device_t) -> u32 ---

    @(link_name = "cairo_device_get_user_data")
    device_get_user_data :: proc(device: ^device_t, key: ^user_data_key_t) -> rawptr ---

    @(link_name = "cairo_device_set_user_data")
    device_set_user_data :: proc(device: ^device_t, key: ^user_data_key_t, user_data: rawptr, destroy: destroy_func_t) -> status_t ---

    @(link_name = "cairo_surface_create_similar")
    surface_create_similar :: proc(other: ^surface_t, content: content_t, width: i32, height: i32) -> ^surface_t ---

    @(link_name = "cairo_surface_create_similar_image")
    surface_create_similar_image :: proc(other: ^surface_t, format: format_t, width: i32, height: i32) -> ^surface_t ---

    @(link_name = "cairo_surface_map_to_image")
    surface_map_to_image :: proc(surface: ^surface_t, extents: [^]rectangle_int_t) -> ^surface_t ---

    @(link_name = "cairo_surface_unmap_image")
    surface_unmap_image :: proc(surface: ^surface_t, image: ^surface_t) ---

    @(link_name = "cairo_surface_create_for_rectangle")
    surface_create_for_rectangle :: proc(target: ^surface_t, x: f64, y: f64, width: f64, height: f64) -> ^surface_t ---

    @(link_name = "cairo_surface_create_observer")
    surface_create_observer :: proc(target: ^surface_t, mode: surface_observer_mode_t) -> ^surface_t ---

    @(link_name = "cairo_surface_observer_add_paint_callback")
    surface_observer_add_paint_callback :: proc(abstract_surface: ^surface_t, func: surface_observer_callback_t, data: rawptr) -> status_t ---

    @(link_name = "cairo_surface_observer_add_mask_callback")
    surface_observer_add_mask_callback :: proc(abstract_surface: ^surface_t, func: surface_observer_callback_t, data: rawptr) -> status_t ---

    @(link_name = "cairo_surface_observer_add_fill_callback")
    surface_observer_add_fill_callback :: proc(abstract_surface: ^surface_t, func: surface_observer_callback_t, data: rawptr) -> status_t ---

    @(link_name = "cairo_surface_observer_add_stroke_callback")
    surface_observer_add_stroke_callback :: proc(abstract_surface: ^surface_t, func: surface_observer_callback_t, data: rawptr) -> status_t ---

    @(link_name = "cairo_surface_observer_add_glyphs_callback")
    surface_observer_add_glyphs_callback :: proc(abstract_surface: ^surface_t, func: surface_observer_callback_t, data: rawptr) -> status_t ---

    @(link_name = "cairo_surface_observer_add_flush_callback")
    surface_observer_add_flush_callback :: proc(abstract_surface: ^surface_t, func: surface_observer_callback_t, data: rawptr) -> status_t ---

    @(link_name = "cairo_surface_observer_add_finish_callback")
    surface_observer_add_finish_callback :: proc(abstract_surface: ^surface_t, func: surface_observer_callback_t, data: rawptr) -> status_t ---

    @(link_name = "cairo_surface_observer_print")
    surface_observer_print :: proc(abstract_surface: ^surface_t, write_func: write_func_t, closure: rawptr) -> status_t ---

    @(link_name = "cairo_surface_observer_elapsed")
    surface_observer_elapsed :: proc(abstract_surface: ^surface_t) -> f64 ---

    @(link_name = "cairo_device_observer_print")
    device_observer_print :: proc(abstract_device: ^device_t, write_func: write_func_t, closure: rawptr) -> status_t ---

    @(link_name = "cairo_device_observer_elapsed")
    device_observer_elapsed :: proc(abstract_device: ^device_t) -> f64 ---

    @(link_name = "cairo_device_observer_paint_elapsed")
    device_observer_paint_elapsed :: proc(abstract_device: ^device_t) -> f64 ---

    @(link_name = "cairo_device_observer_mask_elapsed")
    device_observer_mask_elapsed :: proc(abstract_device: ^device_t) -> f64 ---

    @(link_name = "cairo_device_observer_fill_elapsed")
    device_observer_fill_elapsed :: proc(abstract_device: ^device_t) -> f64 ---

    @(link_name = "cairo_device_observer_stroke_elapsed")
    device_observer_stroke_elapsed :: proc(abstract_device: ^device_t) -> f64 ---

    @(link_name = "cairo_device_observer_glyphs_elapsed")
    device_observer_glyphs_elapsed :: proc(abstract_device: ^device_t) -> f64 ---

    @(link_name = "cairo_surface_reference")
    surface_reference :: proc(surface: ^surface_t) -> ^surface_t ---

    @(link_name = "cairo_surface_finish")
    surface_finish :: proc(surface: ^surface_t) ---

    @(link_name = "cairo_surface_destroy")
    surface_destroy :: proc(surface: ^surface_t) ---

    @(link_name = "cairo_surface_get_device")
    surface_get_device :: proc(surface: ^surface_t) -> ^device_t ---

    @(link_name = "cairo_surface_get_reference_count")
    surface_get_reference_count :: proc(surface: ^surface_t) -> u32 ---

    @(link_name = "cairo_surface_status")
    surface_status :: proc(surface: ^surface_t) -> status_t ---

    @(link_name = "cairo_surface_get_type")
    surface_get_type :: proc(surface: ^surface_t) -> surface_type_t ---

    @(link_name = "cairo_surface_get_content")
    surface_get_content :: proc(surface: ^surface_t) -> content_t ---

    @(link_name = "cairo_surface_write_to_png")
    surface_write_to_png :: proc(surface: ^surface_t, filename: cstring) -> status_t ---

    @(link_name = "cairo_surface_write_to_png_stream")
    surface_write_to_png_stream :: proc(surface: ^surface_t, write_func: write_func_t, closure: rawptr) -> status_t ---

    @(link_name = "cairo_surface_get_user_data")
    surface_get_user_data :: proc(surface: ^surface_t, key: ^user_data_key_t) -> rawptr ---

    @(link_name = "cairo_surface_set_user_data")
    surface_set_user_data :: proc(surface: ^surface_t, key: ^user_data_key_t, user_data: rawptr, destroy: destroy_func_t) -> status_t ---

    @(link_name = "cairo_surface_supports_mime_type")
    surface_supports_mime_type :: proc(surface: ^surface_t, mime_type: cstring) -> bool_t ---

    @(link_name = "cairo_surface_get_font_options")
    surface_get_font_options :: proc(surface: ^surface_t, options: [^]font_options_t) ---

    @(link_name = "cairo_surface_flush")
    surface_flush :: proc(surface: ^surface_t) ---

    @(link_name = "cairo_surface_mark_dirty")
    surface_mark_dirty :: proc(surface: ^surface_t) ---

    @(link_name = "cairo_surface_mark_dirty_rectangle")
    surface_mark_dirty_rectangle :: proc(surface: ^surface_t, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "cairo_surface_set_device_scale")
    surface_set_device_scale :: proc(surface: ^surface_t, x_scale: f64, y_scale: f64) ---

    @(link_name = "cairo_surface_get_device_scale")
    surface_get_device_scale :: proc(surface: ^surface_t, x_scale: ^f64, y_scale: ^f64) ---

    @(link_name = "cairo_surface_set_device_offset")
    surface_set_device_offset :: proc(surface: ^surface_t, x_offset: f64, y_offset: f64) ---

    @(link_name = "cairo_surface_get_device_offset")
    surface_get_device_offset :: proc(surface: ^surface_t, x_offset: ^f64, y_offset: ^f64) ---

    @(link_name = "cairo_surface_set_fallback_resolution")
    surface_set_fallback_resolution :: proc(surface: ^surface_t, x_pixels_per_inch: f64, y_pixels_per_inch: f64) ---

    @(link_name = "cairo_surface_get_fallback_resolution")
    surface_get_fallback_resolution :: proc(surface: ^surface_t, x_pixels_per_inch: ^f64, y_pixels_per_inch: ^f64) ---

    @(link_name = "cairo_surface_copy_page")
    surface_copy_page :: proc(surface: ^surface_t) ---

    @(link_name = "cairo_surface_show_page")
    surface_show_page :: proc(surface: ^surface_t) ---

    @(link_name = "cairo_surface_has_show_text_glyphs")
    surface_has_show_text_glyphs :: proc(surface: ^surface_t) -> bool_t ---

    @(link_name = "cairo_image_surface_create")
    image_surface_create :: proc(format: format_t, width: i32, height: i32) -> ^surface_t ---

    @(link_name = "cairo_format_stride_for_width")
    format_stride_for_width :: proc(format: format_t, width: i32) -> i32 ---

    @(link_name = "cairo_image_surface_create_for_data")
    image_surface_create_for_data :: proc(data: ^u8, format: format_t, width: i32, height: i32, stride: i32) -> ^surface_t ---

    @(link_name = "cairo_image_surface_get_data")
    image_surface_get_data :: proc(surface: ^surface_t) -> ^u8 ---

    @(link_name = "cairo_image_surface_get_format")
    image_surface_get_format :: proc(surface: ^surface_t) -> format_t ---

    @(link_name = "cairo_image_surface_get_width")
    image_surface_get_width :: proc(surface: ^surface_t) -> i32 ---

    @(link_name = "cairo_image_surface_get_height")
    image_surface_get_height :: proc(surface: ^surface_t) -> i32 ---

    @(link_name = "cairo_image_surface_get_stride")
    image_surface_get_stride :: proc(surface: ^surface_t) -> i32 ---

    @(link_name = "cairo_image_surface_create_from_png")
    image_surface_create_from_png :: proc(filename: cstring) -> ^surface_t ---

    @(link_name = "cairo_image_surface_create_from_png_stream")
    image_surface_create_from_png_stream :: proc(read_func: read_func_t, closure: rawptr) -> ^surface_t ---

    @(link_name = "cairo_recording_surface_create")
    recording_surface_create :: proc(content: content_t, extents: [^]rectangle_t) -> ^surface_t ---

    @(link_name = "cairo_recording_surface_ink_extents")
    recording_surface_ink_extents :: proc(surface: ^surface_t, x0: ^f64, y0: ^f64, width: ^f64, height: ^f64) ---

    @(link_name = "cairo_recording_surface_get_extents")
    recording_surface_get_extents :: proc(surface: ^surface_t, extents: [^]rectangle_t) -> bool_t ---

    @(link_name = "cairo_pattern_create_raster_source")
    pattern_create_raster_source :: proc(user_data: rawptr, content: content_t, width: i32, height: i32) -> ^pattern_t ---

    @(link_name = "cairo_raster_source_pattern_set_callback_data")
    raster_source_pattern_set_callback_data :: proc(pattern: ^pattern_t, data: rawptr) ---

    @(link_name = "cairo_raster_source_pattern_get_callback_data")
    raster_source_pattern_get_callback_data :: proc(pattern: ^pattern_t) -> rawptr ---

    @(link_name = "cairo_raster_source_pattern_set_acquire")
    raster_source_pattern_set_acquire :: proc(pattern: ^pattern_t, acquire: raster_source_acquire_func_t, release: raster_source_release_func_t) ---

    @(link_name = "cairo_raster_source_pattern_get_acquire")
    raster_source_pattern_get_acquire :: proc(pattern: ^pattern_t, acquire: ^raster_source_acquire_func_t, release: ^raster_source_release_func_t) ---

    @(link_name = "cairo_raster_source_pattern_set_snapshot")
    raster_source_pattern_set_snapshot :: proc(pattern: ^pattern_t, snapshot: raster_source_snapshot_func_t) ---

    @(link_name = "cairo_raster_source_pattern_get_snapshot")
    raster_source_pattern_get_snapshot :: proc(pattern: ^pattern_t) -> raster_source_snapshot_func_t ---

    @(link_name = "cairo_raster_source_pattern_set_copy")
    raster_source_pattern_set_copy :: proc(pattern: ^pattern_t, copy: raster_source_copy_func_t) ---

    @(link_name = "cairo_raster_source_pattern_get_copy")
    raster_source_pattern_get_copy :: proc(pattern: ^pattern_t) -> raster_source_copy_func_t ---

    @(link_name = "cairo_raster_source_pattern_set_finish")
    raster_source_pattern_set_finish :: proc(pattern: ^pattern_t, finish: raster_source_finish_func_t) ---

    @(link_name = "cairo_raster_source_pattern_get_finish")
    raster_source_pattern_get_finish :: proc(pattern: ^pattern_t) -> raster_source_finish_func_t ---

    @(link_name = "cairo_pattern_create_rgb")
    pattern_create_rgb :: proc(red: f64, green: f64, blue: f64) -> ^pattern_t ---

    @(link_name = "cairo_pattern_create_rgba")
    pattern_create_rgba :: proc(red: f64, green: f64, blue: f64, alpha: f64) -> ^pattern_t ---

    @(link_name = "cairo_pattern_create_for_surface")
    pattern_create_for_surface :: proc(surface: ^surface_t) -> ^pattern_t ---

    @(link_name = "cairo_pattern_create_linear")
    pattern_create_linear :: proc(x0: f64, y0: f64, x1: f64, y1: f64) -> ^pattern_t ---

    @(link_name = "cairo_pattern_create_radial")
    pattern_create_radial :: proc(cx0: f64, cy0: f64, radius0: f64, cx1: f64, cy1: f64, radius1: f64) -> ^pattern_t ---

    @(link_name = "cairo_pattern_create_mesh")
    pattern_create_mesh :: proc() -> ^pattern_t ---

    @(link_name = "cairo_pattern_reference")
    pattern_reference :: proc(pattern: ^pattern_t) -> ^pattern_t ---

    @(link_name = "cairo_pattern_destroy")
    pattern_destroy :: proc(pattern: ^pattern_t) ---

    @(link_name = "cairo_pattern_get_reference_count")
    pattern_get_reference_count :: proc(pattern: ^pattern_t) -> u32 ---

    @(link_name = "cairo_pattern_status")
    pattern_status :: proc(pattern: ^pattern_t) -> status_t ---

    @(link_name = "cairo_pattern_get_user_data")
    pattern_get_user_data :: proc(pattern: ^pattern_t, key: ^user_data_key_t) -> rawptr ---

    @(link_name = "cairo_pattern_set_user_data")
    pattern_set_user_data :: proc(pattern: ^pattern_t, key: ^user_data_key_t, user_data: rawptr, destroy: destroy_func_t) -> status_t ---

    @(link_name = "cairo_pattern_get_type")
    pattern_get_type :: proc(pattern: ^pattern_t) -> pattern_type_t ---

    @(link_name = "cairo_pattern_add_color_stop_rgb")
    pattern_add_color_stop_rgb :: proc(pattern: ^pattern_t, offset: f64, red: f64, green: f64, blue: f64) ---

    @(link_name = "cairo_pattern_add_color_stop_rgba")
    pattern_add_color_stop_rgba :: proc(pattern: ^pattern_t, offset: f64, red: f64, green: f64, blue: f64, alpha: f64) ---

    @(link_name = "cairo_mesh_pattern_begin_patch")
    mesh_pattern_begin_patch :: proc(pattern: ^pattern_t) ---

    @(link_name = "cairo_mesh_pattern_end_patch")
    mesh_pattern_end_patch :: proc(pattern: ^pattern_t) ---

    @(link_name = "cairo_mesh_pattern_curve_to")
    mesh_pattern_curve_to :: proc(pattern: ^pattern_t, x1: f64, y1: f64, x2: f64, y2: f64, x3: f64, y3: f64) ---

    @(link_name = "cairo_mesh_pattern_line_to")
    mesh_pattern_line_to :: proc(pattern: ^pattern_t, x: f64, y: f64) ---

    @(link_name = "cairo_mesh_pattern_move_to")
    mesh_pattern_move_to :: proc(pattern: ^pattern_t, x: f64, y: f64) ---

    @(link_name = "cairo_mesh_pattern_set_control_point")
    mesh_pattern_set_control_point :: proc(pattern: ^pattern_t, point_num: u32, x: f64, y: f64) ---

    @(link_name = "cairo_mesh_pattern_set_corner_color_rgb")
    mesh_pattern_set_corner_color_rgb :: proc(pattern: ^pattern_t, corner_num: u32, red: f64, green: f64, blue: f64) ---

    @(link_name = "cairo_mesh_pattern_set_corner_color_rgba")
    mesh_pattern_set_corner_color_rgba :: proc(pattern: ^pattern_t, corner_num: u32, red: f64, green: f64, blue: f64, alpha: f64) ---

    @(link_name = "cairo_pattern_set_matrix")
    pattern_set_matrix :: proc(pattern: ^pattern_t, matrix_p: ^matrix_t) ---

    @(link_name = "cairo_pattern_get_matrix")
    pattern_get_matrix :: proc(pattern: ^pattern_t, matrix_p: ^matrix_t) ---

    @(link_name = "cairo_pattern_set_extend")
    pattern_set_extend :: proc(pattern: ^pattern_t, extend: extend_t) ---

    @(link_name = "cairo_pattern_get_extend")
    pattern_get_extend :: proc(pattern: ^pattern_t) -> extend_t ---

    @(link_name = "cairo_pattern_set_filter")
    pattern_set_filter :: proc(pattern: ^pattern_t, filter: filter_t) ---

    @(link_name = "cairo_pattern_get_filter")
    pattern_get_filter :: proc(pattern: ^pattern_t) -> filter_t ---

    @(link_name = "cairo_pattern_get_rgba")
    pattern_get_rgba :: proc(pattern: ^pattern_t, red: ^f64, green: ^f64, blue: ^f64, alpha: ^f64) -> status_t ---

    @(link_name = "cairo_pattern_get_surface")
    pattern_get_surface :: proc(pattern: ^pattern_t, surface: ^^surface_t) -> status_t ---

    @(link_name = "cairo_pattern_get_color_stop_rgba")
    pattern_get_color_stop_rgba :: proc(pattern: ^pattern_t, index: i32, offset: ^f64, red: ^f64, green: ^f64, blue: ^f64, alpha: ^f64) -> status_t ---

    @(link_name = "cairo_pattern_get_color_stop_count")
    pattern_get_color_stop_count :: proc(pattern: ^pattern_t, count: ^i32) -> status_t ---

    @(link_name = "cairo_pattern_get_linear_points")
    pattern_get_linear_points :: proc(pattern: ^pattern_t, x0: ^f64, y0: ^f64, x1: ^f64, y1: ^f64) -> status_t ---

    @(link_name = "cairo_pattern_get_radial_circles")
    pattern_get_radial_circles :: proc(pattern: ^pattern_t, x0: ^f64, y0: ^f64, r0: ^f64, x1: ^f64, y1: ^f64, r1: ^f64) -> status_t ---

    @(link_name = "cairo_mesh_pattern_get_patch_count")
    mesh_pattern_get_patch_count :: proc(pattern: ^pattern_t, count: ^u32) -> status_t ---

    @(link_name = "cairo_mesh_pattern_get_path")
    mesh_pattern_get_path :: proc(pattern: ^pattern_t, patch_num: u32) -> ^path_t ---

    @(link_name = "cairo_mesh_pattern_get_corner_color_rgba")
    mesh_pattern_get_corner_color_rgba :: proc(pattern: ^pattern_t, patch_num: u32, corner_num: u32, red: ^f64, green: ^f64, blue: ^f64, alpha: ^f64) -> status_t ---

    @(link_name = "cairo_mesh_pattern_get_control_point")
    mesh_pattern_get_control_point :: proc(pattern: ^pattern_t, patch_num: u32, point_num: u32, x: ^f64, y: ^f64) -> status_t ---

    @(link_name = "cairo_matrix_init")
    matrix_init :: proc(matrix_p: ^matrix_t, xx: f64, yx: f64, xy: f64, yy: f64, x0: f64, y0: f64) ---

    @(link_name = "cairo_matrix_init_identity")
    matrix_init_identity :: proc(matrix_p: ^matrix_t) ---

    @(link_name = "cairo_matrix_init_translate")
    matrix_init_translate :: proc(matrix_p: ^matrix_t, tx: f64, ty: f64) ---

    @(link_name = "cairo_matrix_init_scale")
    matrix_init_scale :: proc(matrix_p: ^matrix_t, sx: f64, sy: f64) ---

    @(link_name = "cairo_matrix_init_rotate")
    matrix_init_rotate :: proc(matrix_p: ^matrix_t, radians: f64) ---

    @(link_name = "cairo_matrix_translate")
    matrix_translate :: proc(matrix_p: ^matrix_t, tx: f64, ty: f64) ---

    @(link_name = "cairo_matrix_scale")
    matrix_scale :: proc(matrix_p: ^matrix_t, sx: f64, sy: f64) ---

    @(link_name = "cairo_matrix_rotate")
    matrix_rotate :: proc(matrix_p: ^matrix_t, radians: f64) ---

    @(link_name = "cairo_matrix_invert")
    matrix_invert :: proc(matrix_p: ^matrix_t) -> status_t ---

    @(link_name = "cairo_matrix_multiply")
    matrix_multiply :: proc(result: ^matrix_t, a: ^matrix_t, b: ^matrix_t) ---

    @(link_name = "cairo_matrix_transform_distance")
    matrix_transform_distance :: proc(matrix_p: ^matrix_t, dx: ^f64, dy: ^f64) ---

    @(link_name = "cairo_matrix_transform_point")
    matrix_transform_point :: proc(matrix_p: ^matrix_t, x: ^f64, y: ^f64) ---

    @(link_name = "cairo_region_create")
    region_create :: proc() -> ^region_t ---

    @(link_name = "cairo_region_create_rectangle")
    region_create_rectangle :: proc(rectangle: ^rectangle_int_t) -> ^region_t ---

    @(link_name = "cairo_region_create_rectangles")
    region_create_rectangles :: proc(rects: [^]rectangle_int_t, count: i32) -> ^region_t ---

    @(link_name = "cairo_region_copy")
    region_copy :: proc(original: ^region_t) -> ^region_t ---

    @(link_name = "cairo_region_reference")
    region_reference :: proc(region: ^region_t) -> ^region_t ---

    @(link_name = "cairo_region_destroy")
    region_destroy :: proc(region: ^region_t) ---

    @(link_name = "cairo_region_equal")
    region_equal :: proc(a: ^region_t, b: ^region_t) -> bool_t ---

    @(link_name = "cairo_region_status")
    region_status :: proc(region: ^region_t) -> status_t ---

    @(link_name = "cairo_region_get_extents")
    region_get_extents :: proc(region: ^region_t, extents: [^]rectangle_int_t) ---

    @(link_name = "cairo_region_num_rectangles")
    region_num_rectangles :: proc(region: ^region_t) -> i32 ---

    @(link_name = "cairo_region_get_rectangle")
    region_get_rectangle :: proc(region: ^region_t, nth: i32, rectangle: ^rectangle_int_t) ---

    @(link_name = "cairo_region_is_empty")
    region_is_empty :: proc(region: ^region_t) -> bool_t ---

    @(link_name = "cairo_region_contains_rectangle")
    region_contains_rectangle :: proc(region: ^region_t, rectangle: ^rectangle_int_t) -> region_overlap_t ---

    @(link_name = "cairo_region_contains_point")
    region_contains_point :: proc(region: ^region_t, x: i32, y: i32) -> bool_t ---

    @(link_name = "cairo_region_translate")
    region_translate :: proc(region: ^region_t, dx: i32, dy: i32) ---

    @(link_name = "cairo_region_subtract")
    region_subtract :: proc(dst: ^region_t, other: ^region_t) -> status_t ---

    @(link_name = "cairo_region_subtract_rectangle")
    region_subtract_rectangle :: proc(dst: ^region_t, rectangle: ^rectangle_int_t) -> status_t ---

    @(link_name = "cairo_region_intersect")
    region_intersect :: proc(dst: ^region_t, other: ^region_t) -> status_t ---

    @(link_name = "cairo_region_intersect_rectangle")
    region_intersect_rectangle :: proc(dst: ^region_t, rectangle: ^rectangle_int_t) -> status_t ---

    @(link_name = "cairo_region_union")
    region_union :: proc(dst: ^region_t, other: ^region_t) -> status_t ---

    @(link_name = "cairo_region_union_rectangle")
    region_union_rectangle :: proc(dst: ^region_t, rectangle: ^rectangle_int_t) -> status_t ---

    @(link_name = "cairo_region_xor")
    region_xor :: proc(dst: ^region_t, other: ^region_t) -> status_t ---

    @(link_name = "cairo_region_xor_rectangle")
    region_xor_rectangle :: proc(dst: ^region_t, rectangle: ^rectangle_int_t) -> status_t ---

    @(link_name = "cairo_debug_reset_static_data")
    debug_reset_static_data :: proc() ---

}

when (ODIN_OS == .Linux) {

_cairo_status :: enum u32 {SUCCESS = 0, NO_MEMORY = 1, INVALID_RESTORE = 2, INVALID_POP_GROUP = 3, NO_CURRENT_POINT = 4, INVALID_MATRIX = 5, INVALID_STATUS = 6, NULL_POINTER = 7, INVALID_STRING = 8, INVALID_PATH_DATA = 9, READ_ERROR = 10, WRITE_ERROR = 11, SURFACE_FINISHED = 12, SURFACE_TYPE_MISMATCH = 13, PATTERN_TYPE_MISMATCH = 14, INVALID_CONTENT = 15, INVALID_FORMAT = 16, INVALID_VISUAL = 17, FILE_NOT_FOUND = 18, INVALID_DASH = 19, INVALID_DSC_COMMENT = 20, INVALID_INDEX = 21, CLIP_NOT_REPRESENTABLE = 22, TEMP_FILE_ERROR = 23, INVALID_STRIDE = 24, FONT_TYPE_MISMATCH = 25, USER_FONT_IMMUTABLE = 26, USER_FONT_ERROR = 27, NEGATIVE_COUNT = 28, INVALID_CLUSTERS = 29, INVALID_SLANT = 30, INVALID_WEIGHT = 31, INVALID_SIZE = 32, USER_FONT_NOT_IMPLEMENTED = 33, DEVICE_TYPE_MISMATCH = 34, DEVICE_ERROR = 35, INVALID_MESH_CONSTRUCTION = 36, DEVICE_FINISHED = 37, JBIG2_GLOBAL_MISSING = 38, PNG_ERROR = 39, FREETYPE_ERROR = 40, WIN32_GDI_ERROR = 41, TAG_ERROR = 42, DWRITE_ERROR = 43, SVG_FONT_ERROR = 44, LAST_STATUS = 45 }
_cairo_content :: enum u32 {COLOR = 4096, ALPHA = 8192, COLOR_ALPHA = 12288 }
_cairo_dither :: enum u32 {NONE = 0, DEFAULT = 1, FAST = 2, GOOD = 3, BEST = 4 }
_cairo_operator :: enum u32 {CLEAR = 0, SOURCE = 1, OVER = 2, IN = 3, OUT = 4, ATOP = 5, DEST = 6, DEST_OVER = 7, DEST_IN = 8, DEST_OUT = 9, DEST_ATOP = 10, XOR = 11, ADD = 12, SATURATE = 13, MULTIPLY = 14, SCREEN = 15, OVERLAY = 16, DARKEN = 17, LIGHTEN = 18, COLOR_DODGE = 19, COLOR_BURN = 20, HARD_LIGHT = 21, SOFT_LIGHT = 22, DIFFERENCE = 23, EXCLUSION = 24, HSL_HUE = 25, HSL_SATURATION = 26, HSL_COLOR = 27, HSL_LUMINOSITY = 28 }
_cairo_antialias :: enum u32 {DEFAULT = 0, NONE = 1, GRAY = 2, SUBPIXEL = 3, FAST = 4, GOOD = 5, BEST = 6 }
_cairo_fill_rule :: enum u32 {WINDING = 0, EVEN_ODD = 1 }
_cairo_line_cap :: enum u32 {BUTT = 0, ROUND = 1, SQUARE = 2 }
_cairo_line_join :: enum u32 {MITER = 0, ROUND = 1, BEVEL = 2 }
glyph_t :: struct {
    index: u64,
    x: f64,
    y: f64,
}
_cairo_text_cluster_flags :: enum u32 {_CAIRO_TEXT_CLUSTER_FLAG_BACKWARD = 1 }
_cairo_font_slant :: enum u32 {NORMAL = 0, ITALIC = 1, OBLIQUE = 2 }
_cairo_font_weight :: enum u32 {NORMAL = 0, BOLD = 1 }
_cairo_subpixel_order :: enum u32 {DEFAULT = 0, RGB = 1, BGR = 2, VRGB = 3, VBGR = 4 }
_cairo_hint_style :: enum u32 {DEFAULT = 0, NONE = 1, SLIGHT = 2, MEDIUM = 3, FULL = 4 }
_cairo_hint_metrics :: enum u32 {DEFAULT = 0, OFF = 1, ON = 2 }
_cairo_color_mode :: enum u32 {DEFAULT = 0, NO_COLOR = 1, COLOR = 2 }
_cairo_font_type :: enum u32 {TOY = 0, FT = 1, WIN32 = 2, QUARTZ = 3, USER = 4, DWRITE = 5 }
user_scaled_font_render_glyph_func_t :: #type proc "c" (scaled_font: ^scaled_font_t, glyph: u64, cr: ^context_t, extents: [^]text_extents_t) -> status_t
user_scaled_font_unicode_to_glyph_func_t :: #type proc "c" (scaled_font: ^scaled_font_t, unicode: u64, glyph_index: ^u64) -> status_t
_cairo_path_data_type :: enum u32 {_CAIRO_PATH_MOVE_TO = 0, _CAIRO_PATH_LINE_TO = 1, _CAIRO_PATH_CURVE_TO = 2, _CAIRO_PATH_CLOSE_PATH = 3 }
surface_observer_mode_t :: enum u32 {_CAIRO_SURFACE_OBSERVER_NORMAL = 0, _CAIRO_SURFACE_OBSERVER_RECORD_OPERATIONS = 1 }
_cairo_surface_type :: enum u32 {IMAGE = 0, PDF = 1, PS = 2, XLIB = 3, XCB = 4, GLITZ = 5, QUARTZ = 6, WIN32 = 7, BEOS = 8, DIRECTFB = 9, SVG = 10, OS2 = 11, WIN32_PRINTING = 12, QUARTZ_IMAGE = 13, SCRIPT = 14, QT = 15, RECORDING = 16, VG = 17, GL = 18, DRM = 19, TEE = 20, XML = 21, SKIA = 22, SUBSURFACE = 23, COGL = 24 }
_cairo_pattern_type :: enum u32 {SOLID = 0, SURFACE = 1, LINEAR = 2, RADIAL = 3, MESH = 4, RASTER_SOURCE = 5 }
_cairo_extend :: enum u32 {NONE = 0, REPEAT = 1, REFLECT = 2, PAD = 3 }
_cairo_filter :: enum u32 {FAST = 0, GOOD = 1, BEST = 2, NEAREST = 3, BILINEAR = 4, GAUSSIAN = 5 }
_cairo_region_overlap :: enum u32 {IN = 0, OUT = 1, PART = 2 }

@(default_calling_convention = "c")
foreign cairo_runic {
    @(link_name = "cairo_font_options_hash")
    font_options_hash :: proc(options: [^]font_options_t) -> u64 ---

    @(link_name = "cairo_surface_get_mime_data")
    surface_get_mime_data :: proc(surface: ^surface_t, mime_type: cstring, data: ^^u8, length: ^u64) ---

    @(link_name = "cairo_surface_set_mime_data")
    surface_set_mime_data :: proc(surface: ^surface_t, mime_type: cstring, data: ^u8, length: u64, destroy: destroy_func_t, closure: rawptr) -> status_t ---

}

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

_cairo_status :: enum i32 {SUCCESS = 0, NO_MEMORY = 1, INVALID_RESTORE = 2, INVALID_POP_GROUP = 3, NO_CURRENT_POINT = 4, INVALID_MATRIX = 5, INVALID_STATUS = 6, NULL_POINTER = 7, INVALID_STRING = 8, INVALID_PATH_DATA = 9, READ_ERROR = 10, WRITE_ERROR = 11, SURFACE_FINISHED = 12, SURFACE_TYPE_MISMATCH = 13, PATTERN_TYPE_MISMATCH = 14, INVALID_CONTENT = 15, INVALID_FORMAT = 16, INVALID_VISUAL = 17, FILE_NOT_FOUND = 18, INVALID_DASH = 19, INVALID_DSC_COMMENT = 20, INVALID_INDEX = 21, CLIP_NOT_REPRESENTABLE = 22, TEMP_FILE_ERROR = 23, INVALID_STRIDE = 24, FONT_TYPE_MISMATCH = 25, USER_FONT_IMMUTABLE = 26, USER_FONT_ERROR = 27, NEGATIVE_COUNT = 28, INVALID_CLUSTERS = 29, INVALID_SLANT = 30, INVALID_WEIGHT = 31, INVALID_SIZE = 32, USER_FONT_NOT_IMPLEMENTED = 33, DEVICE_TYPE_MISMATCH = 34, DEVICE_ERROR = 35, INVALID_MESH_CONSTRUCTION = 36, DEVICE_FINISHED = 37, JBIG2_GLOBAL_MISSING = 38, PNG_ERROR = 39, FREETYPE_ERROR = 40, WIN32_GDI_ERROR = 41, TAG_ERROR = 42, DWRITE_ERROR = 43, SVG_FONT_ERROR = 44, LAST_STATUS = 45 }
_cairo_content :: enum i32 {COLOR = 4096, ALPHA = 8192, COLOR_ALPHA = 12288 }
_cairo_dither :: enum i32 {NONE = 0, DEFAULT = 1, FAST = 2, GOOD = 3, BEST = 4 }
_cairo_operator :: enum i32 {CLEAR = 0, SOURCE = 1, OVER = 2, IN = 3, OUT = 4, ATOP = 5, DEST = 6, DEST_OVER = 7, DEST_IN = 8, DEST_OUT = 9, DEST_ATOP = 10, XOR = 11, ADD = 12, SATURATE = 13, MULTIPLY = 14, SCREEN = 15, OVERLAY = 16, DARKEN = 17, LIGHTEN = 18, COLOR_DODGE = 19, COLOR_BURN = 20, HARD_LIGHT = 21, SOFT_LIGHT = 22, DIFFERENCE = 23, EXCLUSION = 24, HSL_HUE = 25, HSL_SATURATION = 26, HSL_COLOR = 27, HSL_LUMINOSITY = 28 }
_cairo_antialias :: enum i32 {DEFAULT = 0, NONE = 1, GRAY = 2, SUBPIXEL = 3, FAST = 4, GOOD = 5, BEST = 6 }
_cairo_fill_rule :: enum i32 {WINDING = 0, EVEN_ODD = 1 }
_cairo_line_cap :: enum i32 {BUTT = 0, ROUND = 1, SQUARE = 2 }
_cairo_line_join :: enum i32 {MITER = 0, ROUND = 1, BEVEL = 2 }
glyph_t :: struct {
    index: u32,
    x: f64,
    y: f64,
}
_cairo_text_cluster_flags :: enum i32 {_CAIRO_TEXT_CLUSTER_FLAG_BACKWARD = 1 }
_cairo_font_slant :: enum i32 {NORMAL = 0, ITALIC = 1, OBLIQUE = 2 }
_cairo_font_weight :: enum i32 {NORMAL = 0, BOLD = 1 }
_cairo_subpixel_order :: enum i32 {DEFAULT = 0, RGB = 1, BGR = 2, VRGB = 3, VBGR = 4 }
_cairo_hint_style :: enum i32 {DEFAULT = 0, NONE = 1, SLIGHT = 2, MEDIUM = 3, FULL = 4 }
_cairo_hint_metrics :: enum i32 {DEFAULT = 0, OFF = 1, ON = 2 }
_cairo_color_mode :: enum i32 {DEFAULT = 0, NO_COLOR = 1, COLOR = 2 }
_cairo_font_type :: enum i32 {TOY = 0, FT = 1, WIN32 = 2, QUARTZ = 3, USER = 4, DWRITE = 5 }
user_scaled_font_render_glyph_func_t :: #type proc "c" (scaled_font: ^scaled_font_t, glyph: u32, cr: ^context_t, extents: [^]text_extents_t) -> status_t
user_scaled_font_unicode_to_glyph_func_t :: #type proc "c" (scaled_font: ^scaled_font_t, unicode: u32, glyph_index: ^u32) -> status_t
_cairo_path_data_type :: enum i32 {_CAIRO_PATH_MOVE_TO = 0, _CAIRO_PATH_LINE_TO = 1, _CAIRO_PATH_CURVE_TO = 2, _CAIRO_PATH_CLOSE_PATH = 3 }
surface_observer_mode_t :: enum i32 {_CAIRO_SURFACE_OBSERVER_NORMAL = 0, _CAIRO_SURFACE_OBSERVER_RECORD_OPERATIONS = 1 }
_cairo_surface_type :: enum i32 {IMAGE = 0, PDF = 1, PS = 2, XLIB = 3, XCB = 4, GLITZ = 5, QUARTZ = 6, WIN32 = 7, BEOS = 8, DIRECTFB = 9, SVG = 10, OS2 = 11, WIN32_PRINTING = 12, QUARTZ_IMAGE = 13, SCRIPT = 14, QT = 15, RECORDING = 16, VG = 17, GL = 18, DRM = 19, TEE = 20, XML = 21, SKIA = 22, SUBSURFACE = 23, COGL = 24 }
_cairo_pattern_type :: enum i32 {SOLID = 0, SURFACE = 1, LINEAR = 2, RADIAL = 3, MESH = 4, RASTER_SOURCE = 5 }
_cairo_extend :: enum i32 {NONE = 0, REPEAT = 1, REFLECT = 2, PAD = 3 }
_cairo_filter :: enum i32 {FAST = 0, GOOD = 1, BEST = 2, NEAREST = 3, BILINEAR = 4, GAUSSIAN = 5 }
_cairo_region_overlap :: enum i32 {IN = 0, OUT = 1, PART = 2 }

@(default_calling_convention = "c")
foreign cairo_runic {
    @(link_name = "cairo_font_options_hash")
    font_options_hash :: proc(options: [^]font_options_t) -> u32 ---

    @(link_name = "cairo_surface_get_mime_data")
    surface_get_mime_data :: proc(surface: ^surface_t, mime_type: cstring, data: ^^u8, length: ^u32) ---

    @(link_name = "cairo_surface_set_mime_data")
    surface_set_mime_data :: proc(surface: ^surface_t, mime_type: cstring, data: ^u8, length: u32, destroy: destroy_func_t, closure: rawptr) -> status_t ---

}

}

when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {

when #config(CAIRO_STATIC, false) {
    foreign import cairo_runic "../lib/linux/x86_64/libcairo.a"
} else {
    foreign import cairo_runic "system:cairo"
}

}

when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {

when #config(CAIRO_STATIC, false) {
    foreign import cairo_runic "../lib/linux/aarch64/libcairo.a"
} else {
    foreign import cairo_runic "system:cairo"
}

}

when (ODIN_OS == .Windows) && (ODIN_ARCH == .amd64) {

foreign import cairo_runic "../lib/windows/x86_64/cairo.lib"

}

