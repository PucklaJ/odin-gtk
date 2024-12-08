package main

import gdk "../../gdk-pixbuf"
import "../../glib"
import "core:os"
import "core:strconv"
import "core:strings"

main :: proc() {
    glib.print("GdkPixbuf version: %s\n", gdk.pixbuf_version)

    if len(os.args) != 4 {
        prog_name := strings.clone_to_cstring(os.args[0])
        glib.printerr(
            "invalid arguments\nusage: %s in_file out_file scale\n",
            prog_name,
        )
        delete(prog_name)
        os.exit(1)
    }

    in_file_name := strings.clone_to_cstring(os.args[1])
    defer delete(in_file_name)
    out_file_name := strings.clone_to_cstring(os.args[2])
    defer delete(out_file_name)
    scale, scale_ok := strconv.parse_f64(os.args[3])
    if !scale_ok {
        glib.printerr("failed to parse scale\n")
        os.exit(1)
    }

    err: ^glib.Error
    in_image := gdk.pixbuf_new_from_file(in_file_name, &err)
    if in_image == nil {
        glib.printerr("failed to load in file: %s\n", err.message)
        glib.error_free(err)
        os.exit(1)
    }
    defer gdk.pixbuf_unref(in_image)

    width := gdk.pixbuf_get_width(in_image)
    height := gdk.pixbuf_get_height(in_image)

    width = i32(f64(width) * scale)
    height = i32(f64(height) * scale)

    out_image := gdk.pixbuf_scale_simple(
        in_image,
        width,
        height,
        .INTERP_BILINEAR,
    )
    if out_image == nil {
        glib.printerr("failed to scale the image\n")
        os.exit(1)
    }
    defer gdk.pixbuf_unref(out_image)

    if !gdk.pixbuf_save(out_image, out_file_name, "png", &err, nil) {
        glib.printerr("failed to save image: %s\n", err.message)
        glib.error_free(err)
        os.exit(1)
    }

    glib.print("Successfully scaled image \"%s\"\n", out_file_name)
}

