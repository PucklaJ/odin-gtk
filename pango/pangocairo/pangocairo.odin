package pangocairo

import "../../cairo"
import "../../glib"
import gobj "../../glib/gobject"
import pango ".."

TYPE_CAIRO_FONT :: font_get_type 
TYPE_CAIRO_FONT_MAP :: font_map_get_type 

_PangoCairoFont :: struct #packed {}
Font :: _PangoCairoFont
_PangoCairoFontMap :: struct #packed {}
FontMap :: _PangoCairoFontMap
ShapeRendererFunc :: #type proc "c" (cr: ^cairo.context_t, attr: ^pango.AttrShape, do_path: glib.boolean, data: glib.pointer)

foreign import pangocairo_runic "system:pangocairo-1.0"

@(default_calling_convention = "c")
foreign pangocairo_runic {
    @(link_name = "pango_cairo_font_map_get_type")
    font_map_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_cairo_font_map_new")
    font_map_new :: proc() -> ^pango.FontMap ---

    @(link_name = "pango_cairo_font_map_new_for_font_type")
    font_map_new_for_font_type :: proc(fonttype: cairo.font_type_t) -> ^pango.FontMap ---

    @(link_name = "pango_cairo_font_map_get_default")
    font_map_get_default :: proc() -> ^pango.FontMap ---

    @(link_name = "pango_cairo_font_map_set_default")
    font_map_set_default :: proc(fontmap: ^FontMap) ---

    @(link_name = "pango_cairo_font_map_get_font_type")
    font_map_get_font_type :: proc(fontmap: ^FontMap) -> cairo.font_type_t ---

    @(link_name = "pango_cairo_font_map_set_resolution")
    font_map_set_resolution :: proc(fontmap: ^FontMap, dpi: f64) ---

    @(link_name = "pango_cairo_font_map_get_resolution")
    font_map_get_resolution :: proc(fontmap: ^FontMap) -> f64 ---

    @(link_name = "pango_cairo_font_map_create_context")
    font_map_create_context :: proc(fontmap: ^FontMap) -> ^pango.Context ---

    @(link_name = "pango_cairo_font_get_type")
    font_get_type :: proc() -> gobj.Type ---

    @(link_name = "pango_cairo_font_get_scaled_font")
    font_get_scaled_font :: proc(font: ^Font) -> ^cairo.scaled_font_t ---

    @(link_name = "pango_cairo_update_context")
    update_context :: proc(cr: ^cairo.context_t, context_p: ^pango.Context) ---

    @(link_name = "pango_cairo_context_set_font_options")
    context_set_font_options :: proc(context_p: ^pango.Context, options: [^]cairo.font_options_t) ---

    @(link_name = "pango_cairo_context_get_font_options")
    context_get_font_options :: proc(context_p: ^pango.Context) -> ^cairo.font_options_t ---

    @(link_name = "pango_cairo_context_set_resolution")
    context_set_resolution :: proc(context_p: ^pango.Context, dpi: f64) ---

    @(link_name = "pango_cairo_context_get_resolution")
    context_get_resolution :: proc(context_p: ^pango.Context) -> f64 ---

    @(link_name = "pango_cairo_context_set_shape_renderer")
    context_set_shape_renderer :: proc(context_p: ^pango.Context, func: ShapeRendererFunc, data: glib.pointer, dnotify: glib.DestroyNotify) ---

    @(link_name = "pango_cairo_context_get_shape_renderer")
    context_get_shape_renderer :: proc(context_p: ^pango.Context, data: ^glib.pointer) -> ShapeRendererFunc ---

    @(link_name = "pango_cairo_create_context")
    create_context :: proc(cr: ^cairo.context_t) -> ^pango.Context ---

    @(link_name = "pango_cairo_create_layout")
    create_layout :: proc(cr: ^cairo.context_t) -> ^pango.Layout ---

    @(link_name = "pango_cairo_update_layout")
    update_layout :: proc(cr: ^cairo.context_t, layout: ^pango.Layout) ---

    @(link_name = "pango_cairo_show_glyph_string")
    show_glyph_string :: proc(cr: ^cairo.context_t, font: ^pango.Font, glyphs: [^]pango.GlyphString) ---

    @(link_name = "pango_cairo_show_glyph_item")
    show_glyph_item :: proc(cr: ^cairo.context_t, text: cstring, glyph_item: ^pango.GlyphItem) ---

    @(link_name = "pango_cairo_show_layout_line")
    show_layout_line :: proc(cr: ^cairo.context_t, line: ^pango.LayoutLine) ---

    @(link_name = "pango_cairo_show_layout")
    show_layout :: proc(cr: ^cairo.context_t, layout: ^pango.Layout) ---

    @(link_name = "pango_cairo_show_error_underline")
    show_error_underline :: proc(cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

    @(link_name = "pango_cairo_glyph_string_path")
    glyph_string_path :: proc(cr: ^cairo.context_t, font: ^pango.Font, glyphs: [^]pango.GlyphString) ---

    @(link_name = "pango_cairo_layout_line_path")
    layout_line_path :: proc(cr: ^cairo.context_t, line: ^pango.LayoutLine) ---

    @(link_name = "pango_cairo_layout_path")
    layout_path :: proc(cr: ^cairo.context_t, layout: ^pango.Layout) ---

    @(link_name = "pango_cairo_error_underline_path")
    error_underline_path :: proc(cr: ^cairo.context_t, x: f64, y: f64, width: f64, height: f64) ---

}

