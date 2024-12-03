#include "gobject-wrapper.h"

gboolean g_set_object_wrapper(GObject ** object_ptr, GObject * new_object) {
    return g_set_object(object_ptr, new_object);
}

void g_assert_finalize_object_wrapper(GObject * object) {
    g_assert_finalize_object(object);
}

void g_clear_weak_pointer_wrapper(gpointer * weak_pointer_location) {
    g_clear_weak_pointer(weak_pointer_location);
}

gboolean g_set_weak_pointer_wrapper(gpointer * weak_pointer_location, GObject * new_object) {
    return g_set_weak_pointer(weak_pointer_location, new_object);
}

void glib_autoptr_clear_GTypeModule_wrapper(GTypeModule * _ptr) {
    glib_autoptr_clear_GTypeModule(_ptr);
}

void glib_autoptr_cleanup_GTypeModule_wrapper(GTypeModule ** _ptr) {
    glib_autoptr_cleanup_GTypeModule(_ptr);
}

void glib_autoptr_destroy_GTypeModule_wrapper(void * _ptr) {
    glib_autoptr_destroy_GTypeModule(_ptr);
}

void glib_listautoptr_cleanup_GTypeModule_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GTypeModule(_l);
}

void glib_slistautoptr_cleanup_GTypeModule_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GTypeModule(_l);
}

void glib_queueautoptr_cleanup_GTypeModule_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GTypeModule(_q);
}

void glib_autoptr_clear_GClosure_wrapper(GClosure * _ptr) {
    glib_autoptr_clear_GClosure(_ptr);
}

void glib_autoptr_cleanup_GClosure_wrapper(GClosure ** _ptr) {
    glib_autoptr_cleanup_GClosure(_ptr);
}

void glib_autoptr_destroy_GClosure_wrapper(void * _ptr) {
    glib_autoptr_destroy_GClosure(_ptr);
}

void glib_listautoptr_cleanup_GClosure_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GClosure(_l);
}

void glib_slistautoptr_cleanup_GClosure_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GClosure(_l);
}

void glib_queueautoptr_cleanup_GClosure_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GClosure(_q);
}

void glib_autoptr_clear_GEnumClass_wrapper(GEnumClass * _ptr) {
    glib_autoptr_clear_GEnumClass(_ptr);
}

void glib_autoptr_cleanup_GEnumClass_wrapper(GEnumClass ** _ptr) {
    glib_autoptr_cleanup_GEnumClass(_ptr);
}

void glib_autoptr_destroy_GEnumClass_wrapper(void * _ptr) {
    glib_autoptr_destroy_GEnumClass(_ptr);
}

void glib_listautoptr_cleanup_GEnumClass_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GEnumClass(_l);
}

void glib_slistautoptr_cleanup_GEnumClass_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GEnumClass(_l);
}

void glib_queueautoptr_cleanup_GEnumClass_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GEnumClass(_q);
}

void glib_autoptr_clear_GFlagsClass_wrapper(GFlagsClass * _ptr) {
    glib_autoptr_clear_GFlagsClass(_ptr);
}

void glib_autoptr_cleanup_GFlagsClass_wrapper(GFlagsClass ** _ptr) {
    glib_autoptr_cleanup_GFlagsClass(_ptr);
}

void glib_autoptr_destroy_GFlagsClass_wrapper(void * _ptr) {
    glib_autoptr_destroy_GFlagsClass(_ptr);
}

void glib_listautoptr_cleanup_GFlagsClass_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GFlagsClass(_l);
}

void glib_slistautoptr_cleanup_GFlagsClass_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GFlagsClass(_l);
}

void glib_queueautoptr_cleanup_GFlagsClass_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GFlagsClass(_q);
}

void glib_autoptr_clear_GObject_wrapper(GObject * _ptr) {
    glib_autoptr_clear_GObject(_ptr);
}

void glib_autoptr_cleanup_GObject_wrapper(GObject ** _ptr) {
    glib_autoptr_cleanup_GObject(_ptr);
}

void glib_autoptr_destroy_GObject_wrapper(void * _ptr) {
    glib_autoptr_destroy_GObject(_ptr);
}

void glib_listautoptr_cleanup_GObject_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GObject(_l);
}

void glib_slistautoptr_cleanup_GObject_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GObject(_l);
}

void glib_queueautoptr_cleanup_GObject_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GObject(_q);
}

void glib_autoptr_clear_GInitiallyUnowned_wrapper(GInitiallyUnowned * _ptr) {
    glib_autoptr_clear_GInitiallyUnowned(_ptr);
}

void glib_autoptr_cleanup_GInitiallyUnowned_wrapper(GInitiallyUnowned ** _ptr) {
    glib_autoptr_cleanup_GInitiallyUnowned(_ptr);
}

void glib_autoptr_destroy_GInitiallyUnowned_wrapper(void * _ptr) {
    glib_autoptr_destroy_GInitiallyUnowned(_ptr);
}

void glib_listautoptr_cleanup_GInitiallyUnowned_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GInitiallyUnowned(_l);
}

void glib_slistautoptr_cleanup_GInitiallyUnowned_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GInitiallyUnowned(_l);
}

void glib_queueautoptr_cleanup_GInitiallyUnowned_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GInitiallyUnowned(_q);
}

void glib_autoptr_clear_GParamSpec_wrapper(GParamSpec * _ptr) {
    glib_autoptr_clear_GParamSpec(_ptr);
}

void glib_autoptr_cleanup_GParamSpec_wrapper(GParamSpec ** _ptr) {
    glib_autoptr_cleanup_GParamSpec(_ptr);
}

void glib_autoptr_destroy_GParamSpec_wrapper(void * _ptr) {
    glib_autoptr_destroy_GParamSpec(_ptr);
}

void glib_listautoptr_cleanup_GParamSpec_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GParamSpec(_l);
}

void glib_slistautoptr_cleanup_GParamSpec_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GParamSpec(_l);
}

void glib_queueautoptr_cleanup_GParamSpec_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GParamSpec(_q);
}

void glib_autoptr_clear_GTypeClass_wrapper(GTypeClass * _ptr) {
    glib_autoptr_clear_GTypeClass(_ptr);
}

void glib_autoptr_cleanup_GTypeClass_wrapper(GTypeClass ** _ptr) {
    glib_autoptr_cleanup_GTypeClass(_ptr);
}

void glib_autoptr_destroy_GTypeClass_wrapper(void * _ptr) {
    glib_autoptr_destroy_GTypeClass(_ptr);
}

void glib_listautoptr_cleanup_GTypeClass_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GTypeClass(_l);
}

void glib_slistautoptr_cleanup_GTypeClass_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GTypeClass(_l);
}

void glib_queueautoptr_cleanup_GTypeClass_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GTypeClass(_q);
}

void glib_auto_cleanup_GValue_wrapper(GValue * _ptr) {
    glib_auto_cleanup_GValue(_ptr);
}

