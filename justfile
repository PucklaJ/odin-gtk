default: setup bindings

setup: glib-setup

bindings: glib gobject

wrapper: glib-wrapper gobject-wrapper

RUNIC := 'runic'

glib-setup:
    cd shared/glib && meson setup _build
    ninja -C shared/glib/_build \
        'glib/gversionmacros.h' \
        'glib/glib-visibility.h' \
        'gobject/gobject-visibility.h' \
        'gobject/glib-enumtypes.h'

glib:
    {{ RUNIC }} glib/rune.yml
    sed glib/glib.odin -i -e 's/\^char/cstring/g' -e 's/data: cstring/data: ^byte/g' -e 's/buf: cstring/buf: ^byte/g' -e 's/buffer: cstring/buffer: ^byte/g' -e 's/inbuf: \^cstring/inbuf: \^^byte/g' -e 's/outbuf: \^cstring/outbuf: \^^byte/g'

[linux]
glib-wrapper:
    echo '#undef g_steal_pointer' >> glib/glib-wrapper.h
    mkdir -p lib/linux
    gcc -c -o lib/linux/glib-wrapper.o -Ishared/glib/ -Ishared/glib/_build -Ishared/glib/_build/glib glib/glib-wrapper.c
    ar rs lib/linux/libglib-wrapper.a lib/linux/glib-wrapper.o
    rm lib/linux/glib-wrapper.o

gobject:
    {{ RUNIC }} glib/gobject/rune.yml
    sed glib/gobject/gobject.odin -i \
        -e 's/\^glib.char/cstring/g' \
        -e '/^\(TYPE_\|VALUE_\|SIGNAL_\|PARAM_\)/s/`//g' \
        -e '/^\(TYPE_\|SIGNAL_\)/s/(GType)//g' \
        -e '/^PARAM_STATIC_STRINGS/s/G_/ParamFlags./g' \
        -e 's/GLIB_DEPRECATED_MACRO//g' \
        -e 's/_FOR ((g_array_get_type ()))//g' \
        -e '/^TYPE_/s/(g_//g' \
        -e '/^TYPE_/s/())//g' \
        -e '/^TYPE_/s/])/]/g' \
        -e '/^TYPE_/s/param/#force_inline proc "c" () -> Type { return param/g' \
        -e '/^TYPE_/s/\]/\] }/g'

[linux]
gobject-wrapper:
    mkdir -p lib/linux
    gcc -c -o lib/linux/gobject-wrapper.o -Ishared/glib -Ishared/glib/glib -Ishared/glib/_build/glib -Ishared/glib/_build glib/gobject/gobject-wrapper.c
    ar rs lib/linux/libgobject-wrapper.a lib/linux/gobject-wrapper.o
    rm lib/linux/gobject-wrapper.o

example NAME='hello-glib':
    odin build {{ 'examples' / NAME }} -debug -error-pos-style:unix -vet -out:/tmp/{{ NAME }}
