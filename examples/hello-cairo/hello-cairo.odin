package main

import "../../cairo"
import "../../glib"

main :: proc() {
    // Create an image surface of width 200px and height 200px
    WIDTH :: 200
    HEIGHT :: 200

    surface := cairo.image_surface_create(.ARGB32, WIDTH, HEIGHT)
    cr := cairo.create(surface)
    defer cairo.surface_destroy(surface)
    defer cairo.destroy(cr)

    // Set the background color to white (1, 1, 1)
    cairo.set_source_rgb(cr, 1.0, 1.0, 1.0) // RGB values for white
    cairo.paint(cr)

    // Set the drawing color to red (1, 0, 0)
    cairo.set_source_rgb(cr, 1.0, 0.0, 0.0) // RGB values for red
    cairo.rectangle(cr, 50, 50, 100, 100)  // Draw a rectangle at (50, 50) with width 100 and height 100
    cairo.fill(cr)

    // Write the output to a PNG file
    cairo.surface_write_to_png(surface, "/tmp/output.png")

    glib.print("Succesfully rendered to \"tmp/output.png\"\n")
}
