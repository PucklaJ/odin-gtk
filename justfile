default: setup bindings

setup: glib-setup
bindings: glib

glib-setup:
    cd shared/glib && meson setup _build
    ninja -C shared/glib/_build \
        'glib/gversionmacros.h' \
        'glib/glib-visibility.h'

glib:
    runic glib/rune.yml
