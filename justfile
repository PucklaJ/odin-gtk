set windows-shell := ['powershell.exe']

[unix]
setup: glib-setup gdk-pixbuf-setup cairo-setup pango-setup graphene-setup gtk-setup adwaita-setup gtksourceview-setup

[unix]
bindings: glib-all gdk-pixbuf cairo pango-all graphene gtk gtk-layer-shell adwaita gtksourceview

[unix]
glib-all: glib gobject gmodule gio girepository

[unix]
pango-all: pango pangocairo

[unix]
build: glib-build cairo-build gtk-build gtksourceview-build

[unix]
clean: glib-clean gdk-pixbuf-clean gtk-clean adwaita-clean gtksourceview-clean

check-all: (check 'glib') (check 'glib/gobject') (check 'glib/gmodule') (check 'glib/gio') (check 'glib/girepository') (check 'gdk-pixbuf') (check 'cairo') (check 'pango') (check 'pango/pangocairo') (check 'graphene') (check 'gtk') (check 'gtk/layer-shell') (check 'adwaita') (check 'gtksourceview')

RUNIC := 'runic'
WINDOWS_GVSBUILD_RELEASE := '2026.4.1'

[unix]
glib-setup:
    cd shared/glib && meson setup \
         --reconfigure \
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

[unix]
glib-build:
    meson compile -C shared/glib/_build -j{{ num_cpus() }}
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    ln -srf shared/glib/_build/glib/libglib-2.0.a lib/{{ os() }}/{{ arch() }}/
    ln -srf shared/glib/_build/gio/libgio-2.0.a lib/{{ os() }}/{{ arch() }}/
    ln -srf shared/glib/_build/gmodule/libgmodule-2.0.a lib/{{ os() }}/{{ arch() }}/
    ln -srf shared/glib/_build/girepository/libgirepository-2.0.a lib/{{ os() }}/{{ arch() }}/
    ln -srf shared/glib/_build/gobject/libgobject-2.0.a lib/{{ os() }}/{{ arch() }}/

[unix]
glib-clean:
    rm -rf shared/glib/_build \
           lib/{{ os() }}/{{ arch() }}/libglib-2.0.a \
           lib/{{ os() }}/{{ arch() }}/libgio-2.0.a \
           lib/{{ os() }}/{{ arch() }}/libgmodule-2.0.a \
           lib/{{ os() }}/{{ arch() }}/libgirepository-2.0.a \
           lib/{{ os() }}/{{ arch() }}/libgobject-2.0.a \

[unix]
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
        -e '/^URI_/s/\\" \\"//g' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_G\1$##' \
        -e 's#^_G\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \
        -e '/^NSEC_PER_SEC/ {s#`##g; s#(##g; s#)##g; s#0[^0-9]\+#0#}' \
        -e 's#\(^\s\+[p]*data:\s*\)^#\1[^]#'

    sed 'glib/glib-Linux.odin' -i \
        -e '0,/glib_runic\s\+"system:glib-2.0"/ s#.*glib_runic\s\+"system:glib-2.0".*##'

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
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_G\1$##' \
        -e 's#^_G\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \

[unix]
gmodule:
    {{ RUNIC }} glib/gmodule/rune.yml
    sed glib/gmodule/gmodule*.odin -i \
        -e 's/\^glib.char/cstring/g' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_G\1$##' \
        -e 's#^_G\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \

[unix]
gio:
    rm -f glib/gio/gio*.odin

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
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_G\1$##' \
        -e 's#^_G\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \
        -e 's#\(^\s\+\)application_run\(\s*::\s*proc\)#\1@(private)\n\1g_application_run\2#'

    sed glib/gio/gio-Linux.odin -i \
        -e '0,/.*gio_runic "system:gio-2\.0"/ s#.*gio_runic "system:gio-2\.0".*##'
    
    just -f "{{ justfile() }}" gio-generate-type-casts

[unix]
gio-generate-type-casts:
    #! /bin/bash

    OUTPUT_FILE="./glib/gio/type_casts.odin"

    cat > "$OUTPUT_FILE" << 'EOF'
    package gio

    import "base:intrinsics"
    import glib ".."
    import gobj "../gobject"

    EOF

    while IFS= read -r line || [[ -n "$line" ]]; do
        if [[ "$line" =~ ^TYPE_([A-Z0-9_]+)[[:space:]]*::[[:space:]]*(.+)_get_type[[:space:]]*$ ]]; then
            UPPER_NAME="${BASH_REMATCH[1]}"
            GET_TYPE_NAME="${BASH_REMATCH[2]}"
            
            # If an error quark exists I don't want to generate something
            if grep "${GET_TYPE_NAME}_quark" "./glib/gio/gio.odin" > /dev/null; then
                continue
            fi
            
            PASCAL_NAME=$(echo "$GET_TYPE_NAME" | sed -r 's/(^|_)([a-z])/\U\2/g')
            
            CAST_PROC_NAME="$UPPER_NAME"
            IS_PROC_NAME="IS_$UPPER_NAME"
            
            if printf "$PASCAL_NAME" | grep 'Dbus' > /dev/null; then
                PASCAL_NAME=$(printf "$PASCAL_NAME" | sed -r 's#Dbus#DBus#')
            elif printf "$PASCAL_NAME" | grep '[a-z]Fd[A-Z]' > /dev/null; then
                PASCAL_NAME=$(printf "$PASCAL_NAME" | sed -r 's#(.*)Fd(.*)#\1FD\2#')
            elif printf "$PASCAL_NAME" | grep 'Io' > /dev/null; then
                PASCAL_NAME=$(printf "$PASCAL_NAME" | sed -r 's#Io#IO#')
            elif printf "$PASCAL_NAME" | grep 'Ip' > /dev/null; then
                PASCAL_NAME=$(printf "$PASCAL_NAME" | sed -r 's#Ip#IP#')
            fi

            cat >> "$OUTPUT_FILE" << EOF
    ${CAST_PROC_NAME} :: #force_inline proc "contextless" (
    	ptr: \$Ptr,
    ) -> ^${PASCAL_NAME} where intrinsics.type_is_pointer(Ptr) {
    	return gobj.type_cast(${PASCAL_NAME}, ptr, TYPE_${UPPER_NAME})
    }

    ${IS_PROC_NAME} :: #force_inline proc "contextless"(
    	ptr: \$Ptr,
    ) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    	return gobj.type_is(ptr, TYPE_${UPPER_NAME})
    }

    EOF
        fi
    done < "./glib/gio/gio.odin"
    
    
    cat >> "$OUTPUT_FILE" << 'EOF'
    
    @(private="file")
    just_do_absolutely_nothing :: #force_inline proc "contextless" () -> gobj.Type { return TYPE_CREDENTIALS() }
    
    EOF
    
    if command -v 'odinfmt' > /dev/null 2>&1; then
        odinfmt -w "$OUTPUT_FILE"
    fi

[unix]
girepository:
    rm -f glib/girepository/girepository*.odin

    {{ RUNIC }} glib/girepository/rune.yml
    sed glib/girepository/girepository*.odin -i \
        -e '/^\(TYPE_\|[A-Z]\+_ERROR\|\)/ {s/`//g; s/(gi_//g; s/())//g}' \
        -e 's/\(TYPE_TAG_N_TYPES :: \).*/\1int(TypeTag.UNICHAR) + 1/g' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_GI\1$##' \
        -e 's#^_GI\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \

[unix]
gdk-pixbuf-setup:
    cd shared/gdk-pixbuf && meson setup \
        --reconfigure \
        -Dgtk_doc=false \
        -Dintrospection=disabled \
        -Dman=false \
        -Dtests=false \
        -Dinstalled_tests=false \
        _build
    ninja -C shared/gdk-pixbuf/_build \
        'gdk-pixbuf/gdk-pixbuf-enum-types.h' \

[unix]
gdk-pixbuf-clean:
    rm -rf shared/gdk-pixbuf/_build

[unix]
gdk-pixbuf:
    {{ RUNIC }} gdk-pixbuf/rune.yml
    sed gdk-pixbuf/gdk-pixbuf.odin -i \
        -e '{s/\^glib.char/cstring/g; s/buf: cstring/buf: ^glib.char/g; s/data: ^cstring/data: ^^glib.char/g; s/buffer: ^cstring/buffer: ^^glib.char/g}' \
        -e '/^TYPE_/ {s/`//g; s/(gdk_//g; s/())//g}' \
        -e '/^ERROR/ {s/`//g; s/gdk_//g; s/()//g}' \
        -e '0,/^pixbuf_save/ {s/^pixbuf_save.*//}' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_Gdk\1$##' \
        -e 's#^_Gdk\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \

[unix]
cairo-setup:
    cd shared/cairo && meson setup \
        --default-library static \
         --reconfigure \
        -Dxcb=disabled \
        -Dxlib=disabled \
        -Dxlib-xcb=disabled \
        -Dtests=disabled \
        _build

[unix]
cairo-build:
    meson compile -C shared/cairo/_build -j{{ num_cpus() }}
    @mkdir -p lib/{{ os() }}/{{ arch() }}
    ln -srf shared/cairo/_build/src/libcairo.a lib/{{ os() }}/{{ arch() }}/

[unix]
cairo-clean:
    rm -rf shared/cairo/_build \
           lib/{{ os() }}/{{ arch() }}/libcairo.a

[unix]
cairo:
    {{ RUNIC }} cairo/rune.yml
    sed cairo/cairo.odin -i \
        -e '/^[A-Z_1-9]\+ :: / {s/`//g; s/\\//g; s/_CAIRO_//}' \
        -e '/^_cairo\s*::\s*/ s#.*##' \
        -e 's/^t\s*::\s*.*$/context_t :: struct #packed {}/g' \
        -e '/\^text/! s/\^t/\^context_t/g' \
        -e '/^path_data_t\s*::\s*/ s#.*##' \
        -e '/^_cairo_path_data_t\s*::\s*/ s#_t##' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)_t\s*::\s*_cairo_\1$##' \
        -e 's#^_cairo_\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1_t :: \2#' \

[unix]
pango-setup:
    cd shared/pango && meson setup \
         --reconfigure \
         _build
    ninja -C shared/pango/_build \
      'pango/pango-enum-types.h' \

[unix]
pango:
    rm -f pango/pango*.odin

    {{ RUNIC }} pango/rune.yml
    sed pango/pango.odin -i \
        -e '{s/\^glib\.char/cstring/g; s/\[\^\]glib.char/cstring/g}' \
        -e '/^\(TYPE_\|LAYOUT_\)/ {s/`//g; s/(//g; s/)//g; s/pango_//g}' \
        -e '/^SCALE_/ {s/`//g; s/(double)//g}' \
        -e '/^GLYPH_/ {s/`//g; s/(PangoGlyph)//g}' \
        -e '/^ATTR_/ {s/`//g; s/(guint)//g; s/UINT_MAX/glib.MAXUINT/g}' \
        -e '/^ANALYSIS_/ {s/`//g}' \
        -e '/^\(RENDER_TYPE\|ENGINE_TYPE\)/ {s/`//g; s/\\//g}' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_Pango\1$##' \
        -e 's#^_Pango\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \

[unix]
pangocairo:
    {{ RUNIC }} pango/pangocairo/rune.yml
    sed pango/pangocairo/pangocairo.odin -i \
        -e '/^TYPE_/ {s/`//g; s/(//g; s/)//g; s/pango_cairo_//g}' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_PangoCairo\1$##' \
        -e 's#^_PangoCairo\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \

[unix]
graphene-setup:
    cd shared/graphene && meson setup \
       --reconfigure \
       -Dsse2=false \
       -Darm_neon=false \
       -Dgcc_vector=false \
       -Dintrospection=disabled \
       -Dtests=false \
       -Dinstalled_tests=false \
       _build

[unix]
graphene:
    {{ RUNIC }} graphene/rune.yml
    sed graphene/graphene*.odin -i \
        -e '/^SIMD_S/ {s/`//g; s/\\//g}' \
        -e '/^PI/ {s/`//g; s/f//g}' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_graphene_\1$##' \
        -e 's#^_graphene_\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#'

[unix]
gtk-setup:
  cd shared/gtk && meson setup \
     --reconfigure \
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

  rm -rf shared/gtk/subprojects/.wraplock

[unix]
gtk-build:
    meson compile -C shared/gtk/_build -j{{ num_cpus() }}

    @mkdir -p lib/{{ os() }}/{{ arch() }}
    ln -sfr shared/gtk/_build/gtk/libgtk.a lib/{{ os() }}/{{ arch() }}/libgtk.a

[unix]
gtk-clean:
    rm -rf shared/gtk/_build

[unix]
gtk:
    {{ RUNIC }} gtk/rune.yml
    sed gtk/gtk.odin -i \
        -e 's/cairo.t/cairo.context_t/g' \
        -e '0,/Snapshot_queueautoptr/{s/Snapshot_.*//g}' \
        -e '/^\(TYPE_\|[A-Z_]\+ERROR\|ACCESSIBLE_LIST\)/ {s/`(//; s/())`//; s/ gtk_/ /}' \
        -e '/^\(BINARY_AGE\)\|\(INTERFACE_AGE\)/ {s/`//g}' \
        -e '/^_GdkSnapshotClass/ s#.*##' \
        -e '/^SnapshotClass\s*::\s*_GdkSnapshotClass$/ s#.*##' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_Gtk\1$##' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_Gdk\1$##' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_Gsk\1$##' \
        -e 's#^_Gtk\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \
        -e 's#^_Gdk\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#' \
        -e 's#^_Gsk\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#'
    
    just -f "{{ justfile() }}" gtk-generate-type-casts

[unix]
gtk-generate-type-casts:
    #! /bin/bash

    OUTPUT_FILE="./gtk/type_casts.odin"

    cat > "$OUTPUT_FILE" << 'EOF'
    package gtk

    import "base:intrinsics"
    import glib "../glib"
    import gobj "../glib/gobject"

    EOF

    while IFS= read -r line || [[ -n "$line" ]]; do
        if [[ "$line" =~ ^TYPE_([A-Z0-9_]+)[[:space:]]*::[[:space:]]*(gdk_)*(gsk_)*(.+)_get_type[[:space:]]*$ ]]; then
            UPPER_NAME="${BASH_REMATCH[1]}"
            GDK_PREFIX="${BASH_REMATCH[2]}"
            GSK_PREFIX="${BASH_REMATCH[3]}"
            GET_TYPE_NAME="${BASH_REMATCH[4]}"
            
            # If an error quark exists I don't want to generate something
            if grep "${GDK_PREFIX}${GSK_PREFIX}${GET_TYPE_NAME}_quark" "./gtk/gtk.odin" > /dev/null; then
                continue
            fi
            
            PASCAL_NAME=$(echo "$GET_TYPE_NAME" | sed -r 's/(^|_)([a-z])/\U\2/g')
            
            CAST_PROC_NAME="$UPPER_NAME"
            IS_PROC_NAME="IS_$UPPER_NAME"

            if [[ "$UPPER_NAME" == "RGBA" ]]; then
                CAST_PROC_NAME="RGBA_CAST"
                PASCAL_NAME="RGBA"
            elif [[ "$UPPER_NAME" == "GL_API" ]]; then
                PASCAL_NAME="GLAPI"
            elif [[ "$UPPER_NAME" == "CCLOSURE_EXPRESSION" ]]; then
                PASCAL_NAME="CClosureExpression"
            elif [[ "$UPPER_NAME" == "BUILDER_CSCOPE" ]]; then
                PASCAL_NAME="BuilderCScope"
            elif [[ "$UPPER_NAME" == "AT_CONTEXT" ]]; then
                PASCAL_NAME="ATContext"
            elif [[ "$UPPER_NAME" == "PARAM_SPEC_EXPRESSION" ]]; then
                PASCAL_NAME="ParamSpecExpression"
            elif echo "$PASCAL_NAME" | grep '^Gl[A-Z]' > /dev/null; then
                PASCAL_NAME=$(printf "$PASCAL_NAME" | sed -r 's#Gl(.*)#GL\1#')
            elif echo "$PASCAL_NAME" | grep '^Im[A-Z]' > /dev/null; then
                PASCAL_NAME=$(printf "$PASCAL_NAME" | sed -r 's#Im(.*)#IM\1#')
            elif echo "$PASCAL_NAME" | grep '^Dnd[A-Z]' > /dev/null; then
                PASCAL_NAME=$(printf "$PASCAL_NAME" | sed -r 's#Dnd(.*)#DND\1#')
            fi

            cat >> "$OUTPUT_FILE" << EOF
    ${CAST_PROC_NAME} :: #force_inline proc "contextless" (
    	ptr: \$Ptr,
    ) -> ^${PASCAL_NAME} where intrinsics.type_is_pointer(Ptr) {
    	return gobj.type_cast(${PASCAL_NAME}, ptr, TYPE_${UPPER_NAME})
    }

    ${IS_PROC_NAME} :: #force_inline proc "contextless"(
    	ptr: \$Ptr,
    ) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    	return gobj.type_is(ptr, TYPE_${UPPER_NAME})
    }

    EOF
        fi
    done < "./gtk/gtk.odin"
    
    
    cat >> "$OUTPUT_FILE" << 'EOF'
    
    @(private="file")
    just_do_absolutely_nothing :: #force_inline proc "contextless" () -> gobj.Type { return TYPE_BUTTON_EVENT() }
    
    EOF
    
    if command -v 'odinfmt' > /dev/null 2>&1; then
        odinfmt -w "$OUTPUT_FILE"
    fi

[unix]
gtk-layer-shell:
    {{ RUNIC }} gtk/layer-shell/rune.yml

[unix]
gtksourceview-setup:
    cd shared/gtksourceview && meson setup \
        --reconfigure \
        -Dintrospection=enabled \
        -Dvapi=false \
        _build

    ninja -C shared/gtksourceview/_build \
        gtksourceview/GtkSource-5.gir

[unix]
gtksourceview-generate-type-casts:
    #! /bin/bash

    OUTPUT_FILE="./gtksourceview/type_casts.odin"

    cat > "$OUTPUT_FILE" << 'EOF'
    package gtksourceview

    import "base:intrinsics"
    import glib "../glib"
    import gobj "../glib/gobject"

    EOF

    while IFS= read -r line || [[ -n "$line" ]]; do
        if [[ "$line" =~ ^TYPE_([A-Z0-9_]+)[[:space:]]*::[[:space:]]*(.+)_get_type[[:space:]]*$ ]]; then
            UPPER_NAME="${BASH_REMATCH[1]}"
            GET_TYPE_NAME="${BASH_REMATCH[2]}"

            PASCAL_NAME=$(echo "$GET_TYPE_NAME" | sed -r 's/(^|_)([a-z])/\U\2/g')

            cat >> "$OUTPUT_FILE" << EOF
    ${UPPER_NAME} :: #force_inline proc "contextless" (
        ptr: \$Ptr,
    ) -> ^${PASCAL_NAME} where intrinsics.type_is_pointer(Ptr) {
        return gobj.type_cast(${PASCAL_NAME}, ptr, TYPE_${UPPER_NAME})
    }

    IS_${UPPER_NAME} :: #force_inline proc "contextless"(
        ptr: \$Ptr,
    ) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
        return gobj.type_is(ptr, TYPE_${UPPER_NAME})
    }

    EOF
        fi
    done < "./gtksourceview/gtksourceview.odin"

    odinfmt -w "$OUTPUT_FILE" 2>/dev/null || true

[unix]
gtksourceview:
    just -f "{{ justfile() }}" gtksourceview-generate-type-casts
    {{ RUNIC }} gtksourceview/rune.yml
    sed gtksourceview/gtksourceview.odin -i \
        -e 's/\^glib.char/cstring/g' \
        -e '/^TYPE_/ {s/`//g; s/(//g; s/)//g; s/gtksource_//g}' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_GtkSource\1$##' \
        -e 's#^_GtkSource\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#'

[unix]
gtksourceview-build:
    meson compile -C shared/gtksourceview/_build -j{{ num_cpus() }}

    @mkdir -p lib/{{ os() }}/{{ arch() }}
    ln -srf shared/gtksourceview/_build/gtksourceview/libgtksourceview-5.a lib/{{ os() }}/{{ arch() }}/

[unix]
gtksourceview-clean:
    rm -rf shared/gtksourceview/_build \
           lib/{{ os() }}/{{ arch() }}/libgtksourceview-5.a

[unix]
adwaita-setup:
    cd shared/adwaita && meson setup \
          --reconfigure \
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

    rm -rf shared/adwaita/subprojects/.wraplock shared/adwaita/subprojects/libsass.wrap

[unix]
adwaita:
    {{ RUNIC }} adwaita/rune.yml
    sed adwaita/adwaita.odin -i \
        -e 's/focus: \[\^\]/focus: ^/' \
        -e '/^TYPE/ {s/`(//; s/())`//; s/ adw_/ /}' \
        -e '/^DURATION_INFINITE/ {s/`//g; s/([a-zA-Z0-9_]\+)//g}' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_Adw\1$##' \
        -e 's#^_Adw\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#'

    just -f "{{ justfile() }}" adwaita-generate-type-casts

[unix]
adwaita-generate-type-casts:
    #! /bin/bash

    OUTPUT_FILE="./adwaita/type_casts.odin"

    cat > "$OUTPUT_FILE" << 'EOF'
    package adwaita

    import "base:intrinsics"
    import glib "../glib"
    import gobj "../glib/gobject"

    EOF

    while IFS= read -r line || [[ -n "$line" ]]; do
        if [[ "$line" =~ ^TYPE_([A-Z0-9_]+)[[:space:]]*::[[:space:]]*(.+)_get_type[[:space:]]*$ ]]; then
            UPPER_NAME="${BASH_REMATCH[1]}"
            GET_TYPE_NAME="${BASH_REMATCH[2]}"

            PASCAL_NAME=$(echo "$GET_TYPE_NAME" | sed -r 's/(^|_)([a-z])/\U\2/g')

            CAST_PROC_NAME="$UPPER_NAME"
            IS_PROC_NAME="IS_$UPPER_NAME"

            cat >> "$OUTPUT_FILE" << EOF
    ${CAST_PROC_NAME} :: #force_inline proc "contextless" (
    	ptr: \$Ptr,
    ) -> ^${PASCAL_NAME} where intrinsics.type_is_pointer(Ptr) {
    	return gobj.type_cast(${PASCAL_NAME}, ptr, TYPE_${UPPER_NAME})
    }

    ${IS_PROC_NAME} :: #force_inline proc "contextless"(
    	ptr: \$Ptr,
    ) -> glib.boolean where intrinsics.type_is_pointer(Ptr) {
    	return gobj.type_is(ptr, TYPE_${UPPER_NAME})
    }

    EOF
        fi
    done < "./adwaita/adwaita.odin"


    cat >> "$OUTPUT_FILE" << 'EOF'
    
    @(private="file")
    just_do_absolutely_nothing :: #force_inline proc "contextless" () -> gobj.Type { return TYPE_BREAKPOINT() }
    
    EOF

    if command -v 'odinfmt' > /dev/null 2>&1; then
        odinfmt -w "$OUTPUT_FILE"
    fi

[unix]
adwaita-clean:
    rm -rf \
       shared/adwaita/_build

EXE_END := if os() == 'windows' {
    '.exe'
} else {
    ''
}
example NAME='hello-glib' KIND='shared': (make-directory 'build')
    odin build {{ 'examples' / NAME }} -debug -error-pos-style:unix -vet -out:{{ 'build' / NAME + EXE_END }} -define:GLIB_STATIC={{ if KIND == 'static' { 'true' } else { 'false' } }}

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
download-and-extract-gvsbuild GVSBUILD_RELEASE=WINDOWS_GVSBUILD_RELEASE:
    #! /bin/sh
    set -ex

    VERSION_FILE="shared/gvsbuild/extract/VERSION_{{ GVSBUILD_RELEASE }}"
    ZIP_FILE="shared/gvsbuild/{{ GVSBUILD_RELEASE }}.zip"

    if [ ! -f $VERSION_FILE ]
    then
        rm -rf shared/gvsbuild/extract
        mkdir -p shared/gvsbuild/extract

        if [ ! -f $ZIP_FILE ]
        then
            curl -SL https://github.com/wingtk/gvsbuild/releases/download/{{ GVSBUILD_RELEASE }}/GTK4_Gvsbuild_{{ GVSBUILD_RELEASE }}_x64.zip --output $ZIP_FILE
        fi

        unzip $ZIP_FILE -d shared/gvsbuild/extract/
        touch $VERSION_FILE
    fi

[windows]
download-and-extract-gvsbuild GVSBUILD_RELEASE=WINDOWS_GVSBUILD_RELEASE:
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

windows-gvsbuild-version RELEASE=WINDOWS_GVSBUILD_RELEASE:
    @echo "{{ RELEASE }}"

[unix]
clean-windows-gvsbuild:
    rm -r shared/gvsbuild

[unix]
make-directory DIR:
    @mkdir -p "{{ DIR }}"

[windows]
make-directory DIR:
  @New-Item -Path "{{ DIR }}" -ItemType Directory -Force | Out-Null
