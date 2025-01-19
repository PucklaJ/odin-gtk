package main

import glib "../../glib"
import gio "../../glib/gio"
import gobj "../../glib/gobject"
import "core:os"
import "core:strings"

main :: proc() {
    context = glib.create_context()

    // Check if the directory path is provided
    if len(os.args) != 2 {
        glib.printerr(
            "Usage: %s <directory_path>\n",
            strings.clone_to_cstring(os.args[0]),
        )
        os.exit(1)
    }

    dir_path := strings.clone_to_cstring(os.args[1])
    defer delete(dir_path)
    error: ^glib.Error
    defer if error != nil do glib.error_free(error)

    // Create a GFile for the directory
    directory := gio.file_new_for_path(dir_path)
    defer gobj.object_unref(directory)
    if !gio.file_query_exists(directory, nil) {
        glib.printerr("Error: Directory does not exist: %s\n", dir_path)
        os.exit(1)
    }

    // Get a GFileEnumerator to list the files in the directory
    enumerator := gio.file_enumerate_children(
        directory,
        gio.FILE_ATTRIBUTE_STANDARD_NAME,
        .NONE,
        nil,
        &error,
    )

    if error != nil {
        glib.printerr("Error enumerating files: %s\n", error.message)
        os.exit(1)
    }
    defer gobj.object_unref(enumerator)

    // Iterate through the files and print their names
    for info := gio.file_enumerator_next_file(enumerator, nil, &error);
        info != nil;
        info = gio.file_enumerator_next_file(enumerator, nil, &error) {
        file_name := gio.file_info_get_name(info)
        glib.print("Found: %s\n", file_name)
        gobj.object_unref(info)
    }

    if error != nil {
        glib.printerr("Error reading file: %s\n", error.message)
        os.exit(1)
    }
}

