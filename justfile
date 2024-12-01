default: setup bindings

setup: glib-setup
bindings: glib
wrapper: glib-wrapper

glib-setup:
    cd shared/glib && meson setup _build
    ninja -C shared/glib/_build \
        'glib/gversionmacros.h' \
        'glib/glib-visibility.h'

glib:
    runic glib/rune.yml
    sed glib/glib.odin -i -e 's/\^char/cstring/g' -e 's/data: cstring/data: ^byte/g' -e 's/buf: cstring/buf: ^byte/g' -e 's/buffer: cstring/buffer: ^byte/g' -e 's/inbuf: \^cstring/inbuf: \^^byte/g' -e 's/outbuf: \^cstring/outbuf: \^^byte/g'

[linux]
glib-wrapper:
    echo '#undef g_steal_pointer' >> glib/glib-wrapper.h
    mkdir -p lib/linux
    gcc -c -o lib/linux/glib-wrapper.o -Ishared/glib/ -Ishared/glib/_build -Ishared/glib/_build/glib glib/glib-wrapper.c
    ar rs lib/linux/libglib-wrapper.a lib/linux/glib-wrapper.o
    rm lib/linux/glib-wrapper.o

example NAME='hello-glib':
    odin run {{ 'examples' / NAME }} -error-pos-style:unix -vet -out:/tmp/{{ NAME }}
