package main

import "../../cairo"
import gobj "../../glib/gobject"
import "../../pango"
import pancai "../../pango/pangocairo"
import "core:fmt"

main :: proc() {
    // MAKE DRAWING PAPER! BIG 800x400! CAIRO DOES THIS!
    surface := cairo.image_surface_create(.ARGB32, 800, 400)
    cr := cairo.create(surface)
    // CLEAN UP! DESTROY MAGIC OBJECTS OR THEY HAUNT YOU!
    defer cairo.surface_destroy(surface)
    defer cairo.destroy(cr)

    // CLEAN PAPER! MAKE WHITE! NO DIRT!
    cairo.set_source_rgb(cr, 0.3, 1.0, 0.8)
    cairo.paint(cr)

    // MAKE PANGO TEXT MAGIC!
    layout := pancai.create_layout(cr)
    defer gobj.object_unref(layout)

    // WORDS TO DRAW! LOOK COOL!
    TEXT :: "HELLO, PANGO! こんにちは, パン語!"

    // CHOOSE FANCY FONT! BIG! BOLD! USE "Sans Bold 24"!
    desc := pango.font_description_from_string("Sans Bold 24")
    pango.layout_set_font_description(layout, desc)
    pango.font_description_free(desc) // NO LEAVE TRASH BEHIND!

    // GIVE TEXT TO PANGO! IT HANDLE!
    pango.layout_set_text(layout, TEXT, -1) // -1 MEANS "COUNT IT YOURSELF, PANGO!"

    // MAKE TEXT BLACK! LOOK STRONG!
    cairo.set_source_rgb(cr, 0.0, 0.0, 0.0)

    // TELL PANGO TO DRAW!
    pancai.update_layout(cr, layout) // UPDATE FIRST!
    pancai.show_layout(cr, layout) // NOW DRAW!

    // SAVE DRAWING! NAME IT "pango_output.png"! YOU CHECK LATER!
    when ODIN_OS == .Windows {
        OUTPUT_PATH :: "C:\\temp\\pango_output.png"
    } else {
        OUTPUT_PATH :: "/tmp/pango_output.png"
    }
    cairo.surface_write_to_png(surface, OUTPUT_PATH)

    fmt.printf("Successfully rendered \"%s\" to \"%s\"\n", TEXT, OUTPUT_PATH)

}

