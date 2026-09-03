package glycin_gtk4

import gly ".."
import gtk "../../gtk"

when ODIN_OS == .Linux {
	foreign import lib "system:glycin-gtk4-2"
} else {
	#panic("Glycin is currently only supported on Linux.")
}

@(default_calling_convention="c", link_prefix="gly_")
foreign lib {
	gtk_frame_get_texture :: proc (^gly.Frame) -> (^gtk.Texture) ---
}
