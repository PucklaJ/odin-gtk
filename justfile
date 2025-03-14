set windows-shell := ['powershell.exe']

default: setup wrapper

setup: glib-setup gdk-pixbuf-setup cairo-setup pango-setup graphene-setup adwaita-setup

bindings: glib-all gdk-pixbuf cairo pango-all graphene gtk gtk-layer-shell adwaita
glib-all: glib gobject gmodule gio girepository
pango-all: pango pangocairo

wrapper CC='cc':  (glib-wrapper-all CC) (gdk-pixbuf-wrapper CC) (pango-wrapper CC) (graphene-wrapper CC) (gtk-wrapper CC) (adwaita-wrapper CC)
glib-wrapper-all CC='cc': (glib-wrapper CC) (gobject-wrapper CC) (gio-wrapper CC) (girepository-wrapper CC)
build: glib-build cairo-build gtk-build

clean: glib-clean cairo-clean gtk-clean adwaita-clean

check-all: (check 'glib') (check 'glib/gobject') (check 'glib/gmodule') (check 'glib/gio') (check 'glib/girepository') (check 'gdk-pixbuf') (check 'cairo') (check 'pango') (check 'pango/pangocairo') (check 'graphene') (check 'gtk') (check 'gtk/layer-shell') (check 'adwaita')

RUNIC := 'runic'
WINDOWS_GVSBUILD_RELEASE := '2025.2.0'

glib-setup:
    cd shared/glib && meson setup \
         --default-library static \
         -Dman-pages=disabled \
         -Ddtrace=disabled \
         -Dsystemtap=disabled \
         -Dsysprof=disabled \
         -Dtests=false \
         -Dglib_debug=disabled \
         -Dintrospection=disabled \
         _build
    ninja -C shared/glib/_build \
        'glib/gversionmacros.h' \
        'glib/glib-visibility.h' \
        'gobject/gobject-visibility.h' \
        'gobject/glib-enumtypes.h' \
        'gmodule/gmodule-visibility.h' \
        'gio/gio-visibility.h' \
        'gio/gioenumtypes.h' \
        'girepository/gi-visibility.h' \

glib-build:
    meson compile -C shared/glib/_build -j{{ num_cpus() }}
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    ln -srf shared/glib/_build/glib/libglib-2.0.a lib/{{ os() }}/{{ arch() }}/
    ln -srf shared/glib/_build/gio/libgio-2.0.a lib/{{ os() }}/{{ arch() }}/
    ln -srf shared/glib/_build/gmodule/libgmodule-2.0.a lib/{{ os() }}/{{ arch() }}/
    ln -srf shared/glib/_build/girepository/libgirepository-2.0.a lib/{{ os() }}/{{ arch() }}/
    ln -srf shared/glib/_build/gobject/libgobject-2.0.a lib/{{ os() }}/{{ arch() }}/

glib-clean:
    rm -rf shared/glib/_build \
           lib/{{ os() }}/{{ arch() }}/libglib-2.0.a \
           lib/{{ os() }}/{{ arch() }}/libgio-2.0.a \
           lib/{{ os() }}/{{ arch() }}/libgmodule-2.0.a \
           lib/{{ os() }}/{{ arch() }}/libgirepository-2.0.a \
           lib/{{ os() }}/{{ arch() }}/libgobject-2.0.a \

glib:
    {{ RUNIC }} glib/rune.yml
    sed glib/glib*.odin -i \
        -e 's/\^char/cstring/g' \
        -e 's/data: cstring/data: ^byte/g' \
        -e 's/buf: cstring/buf: ^byte/g' \
        -e 's/buffer: cstring/buffer: ^byte/g' \
        -e 's/inbuf: \^cstring/inbuf: \^^byte/g' \
        -e 's/outbuf: \^cstring/outbuf: \^^byte/g' \
        -e '/\(MINOFFSET\|MAXOFFSET\|LOG_2_BASE_10\|IEEE754\|TIME_SPAN\|ASCII_DTOSTR_BUF_SIZE\|VARIANT_TYPE_\|LOG_LEVEL_USER_SHIFT\|LOG_FATAL_MASK\|LOG_DOMAIN\)/{s/`//g; s/\\//g}' \
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
        -e '/^\(MINOFFSET\|MAXOFFSET\|TIME_SPAN\)/ {s/(gint64)//g; s/L//g; s/U//g}' \
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
        -e '/^URI_/s/\\" \\"//g'\

    rm glib/glib-wrapper-Linux_arm64.*
    mv glib/glib-wrapper-Linux_x86_64.h   glib/glib-wrapper-Linux.h
    mv glib/glib-wrapper-Linux_x86_64.c   glib/glib-wrapper-Linux.c
    mv glib/glib-wrapper-Windows_x86_64.h glib/glib-wrapper-Windows.h
    mv glib/glib-wrapper-Windows_x86_64.c glib/glib-wrapper-Windows.c
    sed glib/glib-wrapper-* -i -e '/^#include/ s/_x86_64//'

    echo '#undef g_steal_pointer' >> glib/glib-wrapper-Linux.h
    echo '#undef g_steal_pointer' >> glib/glib-wrapper-Windows.h

WRAPPER_OS := if os() == 'windows' {
  'Windows'
} else if os() == 'linux' {
  'Linux'
} else {
  os()
}
WRAPPER_ARCH := if arch() == 'aarch64' {
  'arm64'
} else {
  arch()
}

[unix]
glib-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/glib-wrapper.o -Ishared/glib/ -Ishared/glib/_build -Ishared/glib/_build/glib glib/glib-wrapper-{{ WRAPPER_OS }}.c
    ar rs lib/{{ os() }}/{{ arch() }}/libglib-wrapper.a lib/{{ os() }}/{{ arch() }}/glib-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/glib-wrapper.o

[windows]
glib-wrapper CC='clang':
    clang -c -O2 '-Ishared/gvsbuild/extract/include/glib-2.0/' '-Ishared/gvsbuild/extract/include/glib-2.0/glib/' '-Ishared/gvsbuild/extract/lib/glib-2.0/include/' -o lib/{{ os() }}/{{ arch() }}/glib-wrapper.obj glib/glib-wrapper-{{ WRAPPER_OS }}.c
    lib /out:lib\{{ os() }}\{{ arch() }}\glib-wrapper.lib lib\{{ os() }}\{{ arch() }}\glib-wrapper.obj
    @Remove-Item -Path lib\{{ os() }}\{{ arch() }}\glib-wrapper.obj

gobject:
    {{ RUNIC }} glib/gobject/rune.yml
    sed glib/gobject/gobject*.odin -i \
        -e 's/\^glib.char/cstring/g' \
        -e '/^\(TYPE_\|VALUE_\|SIGNAL_\|PARAM_\)/s/`//g' \
        -e '/^\(TYPE_\|SIGNAL_\)/s/(GType)//g' \
        -e '/^PARAM_STATIC_STRINGS/ s/G_PARAM_/ParamFlags./g' \
        -e 's/GLIB_DEPRECATED_MACRO//g' \
        -e 's/_FOR ((g_array_get_type ()))//g' \
        -e '/^TYPE_/s/(g_//g' \
        -e '/^TYPE_/s/())//g' \
        -e '/^TYPE_/s/])/]/g' \
        -e '/^TYPE_/s/param/#force_inline proc "c" () -> Type { return param/g' \
        -e '/^TYPE_/s/\]/\] }/g' \
        -e 's/class: \[\^\]/class: ^/g' \
        -e '/^ParamFlags/s/PARAM_//g' \

[unix]
gobject-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/gobject-wrapper.o -Ishared/glib -Ishared/glib/glib -Ishared/glib/_build/glib -Ishared/glib/_build glib/gobject/gobject-wrapper.c
    ar rs lib/{{ os() }}/{{ arch() }}/libgobject-wrapper.a lib/{{ os() }}/{{ arch() }}/gobject-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/gobject-wrapper.o

[windows]
gobject-wrapper CC='clang':
    clang -c -O2 '-Ishared/gvsbuild/extract/include/glib-2.0/' '-Ishared/gvsbuild/extract/include/glib-2.0/glib/' '-Ishared/gvsbuild/extract/lib/glib-2.0/include/' -o lib/{{ os() }}/{{ arch() }}/gobject-wrapper.obj glib/gobject/gobject-wrapper.c
    lib /out:lib\{{ os() }}\{{ arch() }}\gobject-wrapper.lib lib\{{ os() }}\{{ arch() }}\gobject-wrapper.obj
    @Remove-Item -Path lib\{{ os() }}\{{ arch() }}\gobject-wrapper.obj

gmodule:
    {{ RUNIC }} glib/gmodule/rune.yml
    sed glib/gmodule/gmodule*.odin -i \
        -e 's/\^glib.char/cstring/g'\

gio:
    {{ RUNIC }} glib/gio/rune.yml
    sed glib/gio/gio*.odin -i \
        -e 's/\^glib.char/cstring/g' \
        -e '/^\(FILE_ATTRIBUTE_\|DEBUG_CONTROLLER_\|DRIVE_IDENTIFIER_\|MEMORY_MONITOR_\|MENU_ATTRIBUTE_\|MENU_LINK_\|VOLUME_MONITOR_\|NATIVE_VOLUME_MONITOR_\|NETWORK_MONITOR_\|POWER_PROFILE_MONITOR_\|PROXY_\|TLS_BACKEND_\|TLS_DATABASE_\|VFS_EXTENSION_\|VOLUME_IDENTIFIER_\)/ {s/`//g; s/\\//g}' \
        -e '/^\(TYPE_\|IO_TYPE_MODULE\)/ {s/`//g; s/(g_//g; s/())//g}' \
        -e '/^\(DBUS_ERROR\|IO_ERROR\|TYPE_LIST_MODEL\|RESOLVER_ERROR\|RESOURCE_ERROR\|TLS_ERROR\|TLS_CHANNEL_BINDING_ERROR\)/ {s/`//g; s/g_//g; s/()//g}' \
        -e 's/`TRUE`/glib.TRUE/g' \
        -e 's/`FALSE`/glib.FALSE/g' \
        -e '/^VOLUME_IDENTIFIER_KIND_HAL_UDI/s/GLIB_DEPRECATED_MACRO//g' \
        -e '/^TLS_CHANNEL_BINDING_ERROR/s/bindinerror/binding_error/g' \
[unix]
gio-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/gio-wrapper.o -Ishared/glib -Ishared/glib/glib -Ishared/glib/_build/glib -Ishared/glib/_build -Ishared/glib/gmodule glib/gio/gio-wrapper.c
    ar rs lib/{{ os() }}/{{ arch() }}/libgio-wrapper.a lib/{{ os() }}/{{ arch() }}/gio-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/gio-wrapper.o

[windows]
gio-wrapper CC='clang':
    clang -c -O2 '-Ishared/gvsbuild/extract/include/glib-2.0/' '-Ishared/gvsbuild/extract/include/glib-2.0/glib/' '-Ishared/gvsbuild/extract/lib/glib-2.0/include/' '-Ishared/gvsbuild/extract/include/glib-2.0/gmodule/' -o lib/{{ os() }}/{{ arch() }}/gio-wrapper.obj glib/gio/gio-wrapper.c
    lib /out:lib\{{ os() }}\{{ arch() }}\gio-wrapper.lib lib\{{ os() }}\{{ arch() }}\gio-wrapper.obj
    @Remove-Item -Path lib\{{ os() }}\{{ arch() }}\gio-wrapper.obj

girepository:
    {{ RUNIC }} glib/girepository/rune.yml
    sed glib/girepository/girepository*.odin -i \
        -e '/^\(TYPE_\|[A-Z]\+_ERROR\|\)/ {s/`//g; s/(gi_//g; s/())//g}' \
        -e 's/\(TYPE_TAG_N_TYPES :: \).*/\1int(TypeTag.UNICHAR) + 1/g' \
[unix]
girepository-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/girepository-wrapper.o -Ishared/glib -Ishared/glib/glib -Ishared/glib/_build/glib -Ishared/glib/_build -Ishared/glib/gmodule -Ishared/glib/_build/girepository glib/girepository/girepository-wrapper.c
    ar rs lib/{{ os() }}/{{ arch() }}/libgirepository-wrapper.a lib/{{ os() }}/{{ arch() }}/girepository-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/girepository-wrapper.o

[windows]
girepository-wrapper CC='clang':
    clang -c -O2 '-Ishared/gvsbuild/extract/include/glib-2.0/' '-Ishared/gvsbuild/extract/include/glib-2.0/glib/' '-Ishared/gvsbuild/extract/lib/glib-2.0/include/' -o lib\{{ os() }}\{{ arch() }}\girepository-wrapper.obj glib/girepository/girepository-wrapper.c
    lib /out:lib\{{ os() }}\{{ arch() }}\girepository-wrapper.lib lib\{{ os() }}\{{ arch() }}\girepository-wrapper.obj
    @Remove-Item -Path lib\{{ os() }}\{{ arch() }}\girepository-wrapper.obj

gdk-pixbuf-setup:
    cd shared/gdk-pixbuf && meson setup \
        -Dgtk_doc=false \
        -Ddocs=false \
        -Dintrospection=disabled \
        -Dman=false \
        -Dtests=false \
        -Dinstalled_tests=false \
        _build
    ninja -C shared/gdk-pixbuf/_build \
        'gdk-pixbuf/gdk-pixbuf-enum-types.h' \

gdk-pixbuf:
    {{ RUNIC }} gdk-pixbuf/rune.yml
    sed gdk-pixbuf/gdk-pixbuf.odin -i \
        -e '{s/\^glib.char/cstring/g; s/buf: cstring/buf: ^glib.char/g; s/data: ^cstring/data: ^^glib.char/g; s/buffer: ^cstring/buffer: ^^glib.char/g}' \
        -e '/^TYPE_/ {s/`//g; s/(gdk_//g; s/())//g}' \
        -e '/^ERROR/ {s/`//g; s/gdk_//g; s/()//g}' \
[unix]
gdk-pixbuf-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/gdk-pixbuf-wrapper.o -Ishared/glib -Ishared/glib/glib -Ishared/glib/_build/glib -Ishared/glib/_build -Ishared/glib/gmodule -Ishared/gdk-pixbuf -Ishared/gdk-pixbuf/_build gdk-pixbuf/gdk-pixbuf-wrapper.c
    ar rs lib/{{ os() }}/{{ arch() }}/libgdk-pixbuf-wrapper.a lib/{{ os() }}/{{ arch() }}/gdk-pixbuf-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/gdk-pixbuf-wrapper.o

[windows]
gdk-pixbuf-wrapper CC='cl':
    cl C:\file\that\does\not\exist.c

cairo-setup:
    cd shared/cairo && meson setup \
        --default-library static \
        -Dxcb=disabled \
        -Dxlib=disabled \
        -Dxlib-xcb=disabled \
        -Dtests=disabled \
        _build

cairo-build:
    meson compile -C shared/cairo/_build -j{{ num_cpus() }}
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    ln -srf shared/cairo/_build/src/libcairo.a lib/{{ os() }}/{{ arch() }}/

cairo-clean:
    rm -rf shared/cairo/_build \
           lib/{{ os() }}/{{ arch() }}/libcairo.a

cairo:
    {{ RUNIC }} cairo/rune.yml
    sed cairo/cairo.odin -i \
        -e '/^[A-Z_1-9]\+ :: / {s/`//g; s/\\//g; s/_CAIRO_//}' \
        -e 's/^t ::/context_t ::/g' \
        -e '/\^text/! s/\^t/\^context_t/g' \

pango-setup:
    cd shared/pango && meson setup _build
    ninja -C shared/pango/_build \
      'pango/pango-enum-types.h' \

pango:
    {{ RUNIC }} pango/rune.yml
    sed pango/pango.odin -i \
        -e '{s/\^glib\.char/cstring/g; s/\[\^\]glib.char/cstring/g}' \
        -e '/^\(TYPE_\|LAYOUT_\)/ {s/`//g; s/(//g; s/)//g; s/pango_//g}' \
        -e '/^SCALE_/ {s/`//g; s/(double)//g}' \
        -e '/^GLYPH_/ {s/`//g; s/(PangoGlyph)//g}' \
        -e '/^ATTR_/ {s/`//g; s/(guint)//g; s/UINT_MAX/glib.MAXUINT/g}' \
        -e '/^ANALYSIS_/ {s/`//g}' \
        -e '/^\(RENDER_TYPE\|ENGINE_TYPE\)/ {s/`//g; s/\\//g}' \
[unix]
pango-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/pango-wrapper.o -Ishared/pango -Ishared/pango/_build -Ishared/glib -Ishared/glib/glib -Ishared/glib/_build -Ishared/glib/_build/glib -I/usr/include/harfbuzz pango/pango-wrapper.c
    ar rs lib/{{ os() }}/{{ arch() }}/libpango-wrapper.a lib/{{ os() }}/{{ arch() }}/pango-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/pango-wrapper.o

[windows]
pango-wrapper CC='cl':
    cl C:\file\that\does\not\exist.c

pangocairo:
    {{ RUNIC }} pango/pangocairo/rune.yml
    sed pango/pangocairo/pangocairo.odin -i \
        -e '/^TYPE_/ {s/`//g; s/(//g; s/)//g; s/pango_cairo_//g}' \

graphene-setup:
    cd shared/graphene && meson setup \
       -Dsse2=false \
       -Darm_neon=false \
       -Dgcc_vector=false \
       -Dintrospection=disabled \
       -Dtests=false \
       -Dinstalled_tests=false \
       _build

graphene:
    {{ RUNIC }} graphene/rune.yml
    sed graphene/graphene*.odin -i \
        -e '/^SIMD_S/ {s/`//g; s/\\//g}' \
        -e '/^PI/ {s/`//g; s/f//g}' \
[unix]
graphene-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/graphene-wrapper.o -Ishared/graphene/_build/include graphene/graphene-wrapper.c
    ar rs lib/{{ os() }}/{{ arch() }}/libgraphene-wrapper.a lib/{{ os() }}/{{ arch() }}/graphene-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/graphene-wrapper.o

[windows]
graphene-wrapper CC='clang':
    clang '-msse4.1' -c -O2 '-Ishared/gvsbuild/extract/lib/graphene-1.0/include/' '-Ishared/gvsbuild/extract/include/graphene-1.0/' -o lib/{{ os() }}/{{ arch() }}/graphene-wrapper.obj graphene/graphene-wrapper.c
    lib /out:lib\{{ os() }}\{{ arch() }}\graphene-wrapper.lib lib\{{ os() }}\{{ arch() }}\graphene-wrapper.obj
    @Remove-Item -Path lib\{{ os() }}\{{ arch() }}\graphene-wrapper.obj

gtk-setup:
  cd shared/gtk && meson setup \
     -Ddefault_library=static \
     -Dvulkan=enabled \
     -Dintrospection=disabled \
     -Ddocumentation=false \
     -Dman-pages=false \
     -Dbuild-demos=false \
     -Dbuild-testsuite=false \
     -Dbuild-examples=false \
     -Dbuild-tests=false \
     _build
  ninja -C shared/gtk/_build \
      'gdk/version/gdkversionmacros.h' \
      'gdk/version/gdk-visibility.h' \
      'gtk/css/gtkcssenumtypes.h' \
      'gdk/gdkenumtypes.h' \
      'gsk/gskenumtypes.h' \
      'gtk/gtktypebuiltins.h' \

gtk-build:
    meson compile -C shared/gtk/_build -j{{ num_cpus() }}

    @mkdir -p lib/{{ os() }}/{{ arch() }}
    ln -sfr shared/gtk/_build/gtk/libgtk.a lib/{{ os() }}/{{ arch() }}/libgtk.a
gtk-clean:
    rm -rf shared/gtk/_build

gtk:
    {{ RUNIC }} gtk/rune.yml
    sed gtk/gtk.odin -i \
        -e 's/cairo.t/cairo.context_t/g' \
        -e 's/^Snapshot :: Snapshot//g' \
        -e 's/^SnapshotClass :: _GtkSnapshotClass//g' \
        -e '0,/Snapshot_queueautoptr/{s/Snapshot_.*//g}' \
        -e '/^\(TYPE_\|[A-Z_]\+ERROR\|ACCESSIBLE_LIST\)/ {s/`(//; s/())`//; s/ gtk_/ /}' \
[unix]
gtk-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/gtk-wrapper.o -Ishared/gtk -Ishared/glib -Ishared/glib/glib -Ishared/glib/gmodule -Ishared/glib/_build -Ishared/glib/_build/glib -Ishared/gtk/_build -Ishared/cairo/src -Ishared/cairo/_build/src -Ishared/pango -Ishared/pango/_build -Ishared/gdk-pixbuf -Ishared/gdk-pixbuf/_build -Ishared/graphene/include -Ishared/graphene/_build/include -I/usr/include/harfbuzz gtk/gtk-wrapper.c
    ar rs lib/{{ os() }}/{{ arch() }}/libgtk-wrapper.a lib/{{ os() }}/{{ arch() }}/gtk-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/gtk-wrapper.o

[windows]
gtk-wrapper CC='cl':
    cl C:\file\that\does\not\exist.c

gtk-layer-shell:
    {{ RUNIC }} gtk/layer-shell/rune.yml

adwaita-setup:
    cd shared/adwaita && meson setup \
          -Dprofiling=false \
          -Dintrospection=disabled \
          -Dvapi=false \
          -Dgtk_doc=false \
          -Dtests=false \
          -Dexamples=false \
          _build
    ninja -C shared/adwaita/_build \
             src/adw-version.h \
             src/adw-enums.h

adwaita:
    {{ RUNIC }} adwaita/rune.yml
    sed adwaita/adwaita.odin -i \
        -e 's/focus: \[\^\]/focus: ^/' \
        -e '/^TYPE/ {s/`(//; s/())`//; s/ adw_/ /}' \
        -e '/^DURATION_INFINITE/ {s/`//g; s/([a-zA-Z0-9_]\+)//g}' \

[unix]
adwaita-wrapper CC='cc':
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    {{ CC }} -c -o lib/{{ os() }}/{{ arch() }}/adwaita-wrapper.o -Ishared/gtk -Ishared/glib -Ishared/glib/glib -Ishared/glib/gmodule -Ishared/glib/_build -Ishared/glib/_build/glib -Ishared/gtk/_build -Ishared/cairo/src -Ishared/cairo/_build/src -Ishared/pango -Ishared/pango/_build -Ishared/gdk-pixbuf -Ishared/gdk-pixbuf/_build -Ishared/graphene/include -Ishared/graphene/_build/include -Ishared/adwaita/_build/src -I/usr/include/harfbuzz adwaita/adwaita-wrapper.c
    ar rs lib/{{ os() }}/{{ arch() }}/libadwaita-wrapper.a lib/{{ os() }}/{{ arch() }}/adwaita-wrapper.o
    @rm lib/{{ os() }}/{{ arch() }}/adwaita-wrapper.o

[windows]
adwaita-wrapper CC='cl':
    cl C:\file\that\does\not\exist.c

adwaita-clean:
    rm -rf \
       shared/adwaita/_build

TMP_DIR := if os() == 'windows' {
    'C:\temp'
} else {
    '/tmp'
}
EXE_END := if os() == 'windows' {
    '.exe'
} else {
    ''
}
example NAME='hello-glib' KIND='shared': (make-directory TMP_DIR)
    odin build {{ 'examples' / NAME }} -debug -error-pos-style:unix -vet -out:{{ TMP_DIR / NAME + EXE_END }} -define:GLIB_STATIC={{ if KIND == 'static' { 'true' } else { 'false' } }}

check PACKAGE TARGET='':
    odin check {{ PACKAGE }} -error-pos-style:unix -vet -no-entry-point {{ if TARGET == '' { '' } else { '-target:' + TARGET } }}

test PACKAGE TEST_NAMES='':
    odin test {{ PACKAGE }} -error-pos-style:unix -vet -warnings-as-errors -debug -out:/tmp/odin-gtk-test {{ if TEST_NAMES == '' { '' } else { '-define:ODIN_TEST_NAMES=' + TEST_NAMES } }} -define:ODIN_TEST_FANCY=false -define:ODIN_TEST_THREADS=1

[unix]
download-webkitgtk VERSION='2.46.4':
    @mkdir -p shared/webkitgtk
    curl -SL https://webkitgtk.org/releases/webkitgtk-{{ VERSION }}.tar.xz --output shared/webkitgtk/source.tar.xz
    cd shared/webkitgtk && tar xvf source.tar.xz
    mv shared/webkitgtk/webkitgtk-{{ VERSION }}/* shared/webkitgtk/
    rmdir shared/webkitgtk/webkitgtk-{{ VERSION }}/

[unix]
download-and-extract-gvsbuild GVSBUILD_RELEASE:
    #! /bin/sh
    set -ex

    VERSION_FILE="shared/gvsbuild/extract/VERSION_{{ GVSBUILD_RELEASE }}"
    ZIP_FILE="shared/gvsbuild/{{ GVSBUILD_RELEASE }}.zip"

    if [[ ! -f $VERSION_FILE ]]
    then
        rm -rf shared/gvsbuild/extract
        mkdir -p shared/gvsbuild/extract

        if [[ ! -f $ZIP_FILE ]]
        then
            curl -SL https://github.com/wingtk/gvsbuild/releases/download/{{ GVSBUILD_RELEASE }}/GTK4_Gvsbuild_{{ GVSBUILD_RELEASE }}_x64.zip --output $ZIP_FILE
        fi

        unzip $ZIP_FILE -d shared/gvsbuild/extract/
        touch $VERSION_FILE
    fi

[windows]
download-and-extract-gvsbuild GVSBUILD_RELEASE:
    #! pwsh.exe
    Set-PSDebug -Trace 1
    $ErrorActionPreference = "Stop"
    
    $VERSION_FILE = "shared/gvsbuild/extract/VERSION_{{ GVSBUILD_RELEASE }}"
    $ZIP_FILE = "shared/gvsbuild/{{ GVSBUILD_RELEASE }}.zip"
    
    if (!(Test-Path $VERSION_FILE)) {
        Remove-Item -Recurse -Force "shared/gvsbuild/extract" -ErrorAction SilentlyContinue
        New-Item -ItemType Directory -Path "shared/gvsbuild/extract" -Force | Out-Null
    
        if (!(Test-Path $ZIP_FILE)) {
            Invoke-WebRequest -Uri "https://github.com/wingtk/gvsbuild/releases/download/{{ GVSBUILD_RELEASE }}/GTK4_Gvsbuild_{{ GVSBUILD_RELEASE }}_x64.zip" -OutFile $ZIP_FILE
        }
    
        Expand-Archive -Path $ZIP_FILE -DestinationPath "shared/gvsbuild/extract/" -Force
        New-Item -ItemType File -Path $VERSION_FILE -Force | Out-Null
    }

[unix]
update-windows-libs GVSBUILD_RELEASE=WINDOWS_GVSBUILD_RELEASE: (download-and-extract-gvsbuild GVSBUILD_RELEASE)
    #! /bin/sh
    set -e

    mkdir -p lib/windows/x86_64

    cp -v $('find' 'shared/gvsbuild/extract/lib' '-type' 'f' '-name' '*.lib' '!' '-name' '*mm*' '!' '-name' '*.cp*') lib/windows/x86_64/

[windows]
update-windows-libs GVSBUILD_RELEASE=WINDOWS_GVSBUILD_RELEASE: (download-and-extract-gvsbuild GVSBUILD_RELEASE)
    #! pwsh.exe
    Set-PSDebug -Trace 1
    $ErrorActionPreference = "Stop"
    
    New-Item -ItemType Directory -Path "lib/windows/x86_64" -Force | Out-Null
    
    Get-ChildItem -Path "shared/gvsbuild/extract/lib" -Filter "*.lib" -File |
        Where-Object { $_.Name -notmatch "mm" -and $_.Name -notmatch "\.cp" } |
        ForEach-Object { Copy-Item -Path $_.FullName -Destination "lib/windows/x86_64/" -Verbose }

[unix]
install-windows-runtime BIN_DIR GVSBUILD_RELEASE=WINDOWS_GVSBUILD_RELEASE: (download-and-extract-gvsbuild GVSBUILD_RELEASE)
    #! /bin/sh
    set -e

    mkdir -p "{{ BIN_DIR }}"
    mkdir -p "{{ BIN_DIR / 'share' }}"

    log_file="/tmp/odin-gtk-install-windows-runtime-logs"

    for dyn_lib in $('find' 'shared/gvsbuild/extract/bin' '-type' 'f' '-name' '*.dll' '!' '-name' '*mm*')
    do
        cp -v $dyn_lib "{{ BIN_DIR }}" >> $log_file
    done
    for other_folder in 'share' 'etc'
    do
        for share_dir in $('find' 'shared/gvsbuild/extract/'$other_folder '-type' 'd' '!' '-name' '__pycache__')
        do
            rel_share_dir=$(realpath -s --relative-to=shared/gvsbuild/extract/ $share_dir)
            mkdir -vp "{{ BIN_DIR }}/$rel_share_dir" >> $log_file
        done
        for share_file in $('find' 'shared/gvsbuild/extract/'$other_folder '-type' 'f' '!' '-wholename' '*/__pycache__/*')
        do
            rel_share_file=$(realpath -s --relative-to=shared/gvsbuild/extract/ $share_file)
            cp -v $share_file "{{ BIN_DIR }}/$rel_share_file" >> $log_file
        done
    done

    /bin/cat $log_file
    rm $log_file

[windows]
install-windows-runtime BIN_DIR GVSBUILD_RELEASE=WINDOWS_GVSBUILD_RELEASE: (download-and-extract-gvsbuild GVSBUILD_RELEASE)
    #! pwsh.exe
    $ErrorActionPreference = "Stop"
    
    New-Item -ItemType Directory -Path "{{ BIN_DIR }}" -Force | Out-Null
    New-Item -ItemType Directory -Path "{{ BIN_DIR }}/share" -Force | Out-Null
    New-Item -ItemType Directory -Path "{{ BIN_DIR }}/etc" -Force | Out-Null
    New-Item -ItemType Directory -Path "C:\temp" -Force | Out-Null
    
    # Copy DLL files, excluding ones containing "mm"
    Get-ChildItem -Path "shared/gvsbuild/extract/bin" -Filter "*.dll" -File |
        Where-Object { $_.Name -notmatch "mm" } |
        ForEach-Object {
            Copy-Item -Path $_.FullName -Destination "{{ BIN_DIR }}" -Verbose | Out-Null
        }
    
    # Process 'share' and 'etc' directories
    foreach ($other_folder in "share", "etc") {
        # Create directories excluding "__pycache__"
        Get-ChildItem -Path "shared/gvsbuild/extract/$other_folder" -Directory -Recurse |
            Where-Object { $_.Name -ne "__pycache__" } |
            ForEach-Object {
                $ShareDir = $_.FullName;
                $BinShareDir = Resolve-Path -Path $ShareDir -RelativeBasePath "shared/gvsbuild/extract/" -Relative | Join-Path -Path "{{ BIN_DIR }}" -ChildPath { $_ };
                New-Item -ItemType Directory -Path $BinShareDir -Force | Out-Null
            }
    
        # Copy files excluding those inside "__pycache__"
        Get-ChildItem -Path "shared/gvsbuild/extract/$other_folder" -File -Recurse |
            Where-Object { $_.FullName -notmatch "__pycache__" } |
            ForEach-Object {
                $ShareFile = $_.FullName;
                $BinShareDir = Resolve-Path -Path $ShareFile -RelativeBasePath "shared/gvsbuild/extract/" -Relative | Split-Path -Path { $_ } -Parent | Join-Path -Path "{{ BIN_DIR }}" -ChildPath { $_ };
                Copy-Item -Path $ShareFile -Destination $BinShareDir -Verbose | Out-Null
            }
    }
    
[unix]
clean-windows-gvsbuild:
    rm -r shared/gvsbuild

[unix]
make-directory DIR:
    @mkdir -p "{{ DIR }}"

[windows]
make-directory DIR:
  @New-Item -Path "{{ DIR }}" -ItemType Directory -Force | Out-Null
