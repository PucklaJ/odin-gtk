package glycin_gtk4

import gly ".."
import gtk "../../gtk"

foreign import lib "system:glycin-gtk4-2"

@(default_calling_convention="c", link_prefix="gly_")
foreign lib {
	gtk_frame_get_texture :: proc (^gly.Frame) -> (^gtk.Texture) ---
}
