default: setup bindings

setup: glib-setup

bindings: glib gobject gmodule

wrapper: glib-wrapper gobject-wrapper

RUNIC := 'runic'

glib-setup:
    cd shared/glib && meson setup _build
    ninja -C shared/glib/_build \
        'glib/gversionmacros.h' \
        'glib/glib-visibility.h' \
        'gobject/gobject-visibility.h' \
        'gobject/glib-enumtypes.h' \
        'gmodule/gmodule-visibility.h' \

glib:
    {{ RUNIC }} glib/rune.yml
    sed glib/glib.odin -i \
        -e 's/\^char/cstring/g' \
        -e 's/data: cstring/data: ^byte/g' \
        -e 's/buf: cstring/buf: ^byte/g' \
        -e 's/buffer: cstring/buffer: ^byte/g' \
        -e 's/inbuf: \^cstring/inbuf: \^^byte/g' \
        -e 's/outbuf: \^cstring/outbuf: \^^byte/g' \
        -e '/\(_MODIFIER\|_FORMAT\|MINOFFSET\|MAXOFFSET\|OS_INFO_KEY\|LOG_2_BASE_10\|IEEE754\|TIME_SPAN\|DATE_BAD\|KEY_FILE_DESKTOP\|STR_DELIMITERS\|ASCII_DTOSTR_BUF_SIZE\|VARIANT_TYPE_\|LOG_LEVEL_USER_SHIFT\|LOG_FATAL_MASK\|LOG_DOMAIN\|CSET_\|TEST_OPTION_ISOLATE_DIRS\|URI_\)/{s/`//g; s/\\//g}' \
        -e 's/\(MINFLOAT :: \).*/\1min(float)/' \
        -e 's/\(MAXFLOAT :: \).*/\1max(float)/' \
        -e 's/\(MINDOUBLE :: \).*/\1min(double)/' \
        -e 's/\(MAXDOUBLE :: \).*/\1max(double)/' \
        -e 's/\(MINSHORT :: \).*/\1min(short)/' \
        -e 's/\(MAXSHORT :: \).*/\1max(short)/' \
        -e 's/\(MAXUSHORT :: \).*/\1max(ushort)/' \
        -e 's/\(MININT :: \).*/\1min(int_)/' \
        -e 's/\(MAXINT :: \).*/\1max(int_)/' \
        -e 's/\(MAXUINT :: \).*/\1max(uint_)/' \
        -e 's/\(MINLONG :: \).*/\1min(long)/' \
        -e 's/\(MAXLONG :: \).*/\1max(long)/' \
        -e 's/\(MAXULONG :: \).*/\1max(ulong)/' \
        -e 's/\(MAXSIZE :: \).*/\1max(size)/' \
        -e 's/\(MINSSIZE :: \).*/\1min(ssize)/' \
        -e 's/\(MAXSSIZE :: \).*/\1max(ssize)/' \
        -e '/^\(MINOFFSET\|MAXOFFSET\|TIME_SPAN\|DATE_BAD\)/ {s/(gint64)//g; s/L//g; s/U//g}' \
        -e 's/\(MININT8 :: \).*/\1min(int8)/' \
        -e 's/\(MAXINT8 :: \).*/\1max(int8)/' \
        -e 's/\(MAXUINT8 :: \).*/\1max(uint8)/' \
        -e 's/\(MININT16 :: \).*/\1min(int16)/' \
        -e 's/\(MAXINT16 :: \).*/\1max(int16)/' \
        -e 's/\(MAXUINT16 :: \).*/\1max(uint16)/' \
        -e 's/\(MININT32 :: \).*/\1min(int32)/' \
        -e 's/\(MAXINT32 :: \).*/\1max(int32)/' \
        -e 's/\(MAXUINT32 :: \).*/\1max(uint32)/' \
        -e 's/\(MININT64 :: \).*/\1min(int64)/' \
        -e 's/\(MAXINT64 :: \).*/\1max(int64)/' \
        -e 's/\(MAXUINT64 :: \).*/\1max(uint64)/' \
        -e '/^VARIANT_TYPE_/s/(const GVariantType \*)//g' \
        -e '/^LOG_FATAL_MASK/s/G_LOG/LogLevelFlags.LOG/g' \
        -e '/^LOG_DOMAIN/s/(gchar\*)//g' \
        -e '/^URI_/s/" "//g'\

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

gmodule:
    {{ RUNIC }} glib/gmodule/rune.yml
    sed glib/gmodule/gmodule.odin -i \
        -e 's/\^glib.char/cstring/g'\

example NAME='hello-glib':
    odin build {{ 'examples' / NAME }} -debug -error-pos-style:unix -vet -out:/tmp/{{ NAME }}

check PACKAGE:
    odin check {{ PACKAGE }} -error-pos-style:unix -vet -no-entry-point
