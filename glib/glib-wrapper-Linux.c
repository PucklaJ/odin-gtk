#include "glib-wrapper-Linux.h"

gint g_bit_nth_lsf_impl_wrapper(gulong mask, gint nth_bit) {
    return g_bit_nth_lsf_impl(mask, nth_bit);
}

gint g_bit_nth_msf_impl_wrapper(gulong mask, gint nth_bit) {
    return g_bit_nth_msf_impl(mask, nth_bit);
}

guint g_bit_storage_impl_wrapper(gulong number) {
    return g_bit_storage_impl(number);
}

GMutexLocker * g_mutex_locker_new_wrapper(GMutex * mutex) {
    return g_mutex_locker_new(mutex);
}

void g_mutex_locker_free_wrapper(GMutexLocker * locker) {
    g_mutex_locker_free(locker);
}

GRecMutexLocker * g_rec_mutex_locker_new_wrapper(GRecMutex * rec_mutex) {
    return g_rec_mutex_locker_new(rec_mutex);
}

void g_rec_mutex_locker_free_wrapper(GRecMutexLocker * locker) {
    g_rec_mutex_locker_free(locker);
}

GRWLockWriterLocker * g_rw_lock_writer_locker_new_wrapper(GRWLock * rw_lock) {
    return g_rw_lock_writer_locker_new(rw_lock);
}

void g_rw_lock_writer_locker_free_wrapper(GRWLockWriterLocker * locker) {
    g_rw_lock_writer_locker_free(locker);
}

GRWLockReaderLocker * g_rw_lock_reader_locker_new_wrapper(GRWLock * rw_lock) {
    return g_rw_lock_reader_locker_new(rw_lock);
}

void g_rw_lock_reader_locker_free_wrapper(GRWLockReaderLocker * locker) {
    g_rw_lock_reader_locker_free(locker);
}

gpointer g_steal_pointer_wrapper(gpointer pp) {
    return g_steal_pointer(pp);
}

GMainContextPusher * g_main_context_pusher_new_wrapper(GMainContext * main_context) {
    return g_main_context_pusher_new(main_context);
}

void g_main_context_pusher_free_wrapper(GMainContextPusher * pusher) {
    g_main_context_pusher_free(pusher);
}

unsigned int g_steal_handle_id_wrapper(unsigned int * handle_pointer) {
    return g_steal_handle_id(handle_pointer);
}

int g_steal_fd_wrapper(int * fd_ptr) {
    return g_steal_fd(fd_ptr);
}

char * g_strdup_inline_wrapper(const char * str) {
    return g_strdup_inline(str);
}

gboolean g_set_str_wrapper(char ** str_pointer, const char * new_str) {
    return g_set_str(str_pointer, new_str);
}

GString * g_string_append_c_inline_wrapper(GString * gstring, gchar c) {
    return g_string_append_c_inline(gstring, c);
}

GString * g_string_append_len_inline_wrapper(GString * gstring, const char * val, gssize len) {
    return g_string_append_len_inline(gstring, val, len);
}

GString * g_string_truncate_inline_wrapper(GString * gstring, gsize len) {
    return g_string_truncate_inline(gstring, len);
}

void g_autoptr_cleanup_generic_gfree_wrapper(void * p) {
    g_autoptr_cleanup_generic_gfree(p);
}

void g_autoptr_cleanup_gstring_free_wrapper(GString * string) {
    g_autoptr_cleanup_gstring_free(string);
}

void glib_autoptr_clear_GAsyncQueue_wrapper(GAsyncQueue * _ptr) {
    glib_autoptr_clear_GAsyncQueue(_ptr);
}

void glib_autoptr_cleanup_GAsyncQueue_wrapper(GAsyncQueue ** _ptr) {
    glib_autoptr_cleanup_GAsyncQueue(_ptr);
}

void glib_autoptr_destroy_GAsyncQueue_wrapper(void * _ptr) {
    glib_autoptr_destroy_GAsyncQueue(_ptr);
}

void glib_listautoptr_cleanup_GAsyncQueue_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GAsyncQueue(_l);
}

void glib_slistautoptr_cleanup_GAsyncQueue_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GAsyncQueue(_l);
}

void glib_queueautoptr_cleanup_GAsyncQueue_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GAsyncQueue(_q);
}

void glib_autoptr_clear_GBookmarkFile_wrapper(GBookmarkFile * _ptr) {
    glib_autoptr_clear_GBookmarkFile(_ptr);
}

void glib_autoptr_cleanup_GBookmarkFile_wrapper(GBookmarkFile ** _ptr) {
    glib_autoptr_cleanup_GBookmarkFile(_ptr);
}

void glib_autoptr_destroy_GBookmarkFile_wrapper(void * _ptr) {
    glib_autoptr_destroy_GBookmarkFile(_ptr);
}

void glib_listautoptr_cleanup_GBookmarkFile_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GBookmarkFile(_l);
}

void glib_slistautoptr_cleanup_GBookmarkFile_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GBookmarkFile(_l);
}

void glib_queueautoptr_cleanup_GBookmarkFile_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GBookmarkFile(_q);
}

void glib_autoptr_clear_GBytes_wrapper(GBytes * _ptr) {
    glib_autoptr_clear_GBytes(_ptr);
}

void glib_autoptr_cleanup_GBytes_wrapper(GBytes ** _ptr) {
    glib_autoptr_cleanup_GBytes(_ptr);
}

void glib_autoptr_destroy_GBytes_wrapper(void * _ptr) {
    glib_autoptr_destroy_GBytes(_ptr);
}

void glib_listautoptr_cleanup_GBytes_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GBytes(_l);
}

void glib_slistautoptr_cleanup_GBytes_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GBytes(_l);
}

void glib_queueautoptr_cleanup_GBytes_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GBytes(_q);
}

void glib_autoptr_clear_GChecksum_wrapper(GChecksum * _ptr) {
    glib_autoptr_clear_GChecksum(_ptr);
}

void glib_autoptr_cleanup_GChecksum_wrapper(GChecksum ** _ptr) {
    glib_autoptr_cleanup_GChecksum(_ptr);
}

void glib_autoptr_destroy_GChecksum_wrapper(void * _ptr) {
    glib_autoptr_destroy_GChecksum(_ptr);
}

void glib_listautoptr_cleanup_GChecksum_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GChecksum(_l);
}

void glib_slistautoptr_cleanup_GChecksum_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GChecksum(_l);
}

void glib_queueautoptr_cleanup_GChecksum_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GChecksum(_q);
}

void glib_autoptr_clear_GDateTime_wrapper(GDateTime * _ptr) {
    glib_autoptr_clear_GDateTime(_ptr);
}

void glib_autoptr_cleanup_GDateTime_wrapper(GDateTime ** _ptr) {
    glib_autoptr_cleanup_GDateTime(_ptr);
}

void glib_autoptr_destroy_GDateTime_wrapper(void * _ptr) {
    glib_autoptr_destroy_GDateTime(_ptr);
}

void glib_listautoptr_cleanup_GDateTime_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GDateTime(_l);
}

void glib_slistautoptr_cleanup_GDateTime_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GDateTime(_l);
}

void glib_queueautoptr_cleanup_GDateTime_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GDateTime(_q);
}

void glib_autoptr_clear_GDate_wrapper(GDate * _ptr) {
    glib_autoptr_clear_GDate(_ptr);
}

void glib_autoptr_cleanup_GDate_wrapper(GDate ** _ptr) {
    glib_autoptr_cleanup_GDate(_ptr);
}

void glib_autoptr_destroy_GDate_wrapper(void * _ptr) {
    glib_autoptr_destroy_GDate(_ptr);
}

void glib_listautoptr_cleanup_GDate_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GDate(_l);
}

void glib_slistautoptr_cleanup_GDate_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GDate(_l);
}

void glib_queueautoptr_cleanup_GDate_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GDate(_q);
}

void glib_autoptr_clear_GDir_wrapper(GDir * _ptr) {
    glib_autoptr_clear_GDir(_ptr);
}

void glib_autoptr_cleanup_GDir_wrapper(GDir ** _ptr) {
    glib_autoptr_cleanup_GDir(_ptr);
}

void glib_autoptr_destroy_GDir_wrapper(void * _ptr) {
    glib_autoptr_destroy_GDir(_ptr);
}

void glib_listautoptr_cleanup_GDir_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GDir(_l);
}

void glib_slistautoptr_cleanup_GDir_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GDir(_l);
}

void glib_queueautoptr_cleanup_GDir_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GDir(_q);
}

void glib_autoptr_clear_GError_wrapper(GError * _ptr) {
    glib_autoptr_clear_GError(_ptr);
}

void glib_autoptr_cleanup_GError_wrapper(GError ** _ptr) {
    glib_autoptr_cleanup_GError(_ptr);
}

void glib_autoptr_destroy_GError_wrapper(void * _ptr) {
    glib_autoptr_destroy_GError(_ptr);
}

void glib_listautoptr_cleanup_GError_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GError(_l);
}

void glib_slistautoptr_cleanup_GError_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GError(_l);
}

void glib_queueautoptr_cleanup_GError_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GError(_q);
}

void glib_autoptr_clear_GHashTable_wrapper(GHashTable * _ptr) {
    glib_autoptr_clear_GHashTable(_ptr);
}

void glib_autoptr_cleanup_GHashTable_wrapper(GHashTable ** _ptr) {
    glib_autoptr_cleanup_GHashTable(_ptr);
}

void glib_autoptr_destroy_GHashTable_wrapper(void * _ptr) {
    glib_autoptr_destroy_GHashTable(_ptr);
}

void glib_listautoptr_cleanup_GHashTable_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GHashTable(_l);
}

void glib_slistautoptr_cleanup_GHashTable_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GHashTable(_l);
}

void glib_queueautoptr_cleanup_GHashTable_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GHashTable(_q);
}

void glib_autoptr_clear_GHmac_wrapper(GHmac * _ptr) {
    glib_autoptr_clear_GHmac(_ptr);
}

void glib_autoptr_cleanup_GHmac_wrapper(GHmac ** _ptr) {
    glib_autoptr_cleanup_GHmac(_ptr);
}

void glib_autoptr_destroy_GHmac_wrapper(void * _ptr) {
    glib_autoptr_destroy_GHmac(_ptr);
}

void glib_listautoptr_cleanup_GHmac_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GHmac(_l);
}

void glib_slistautoptr_cleanup_GHmac_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GHmac(_l);
}

void glib_queueautoptr_cleanup_GHmac_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GHmac(_q);
}

void glib_autoptr_clear_GIOChannel_wrapper(GIOChannel * _ptr) {
    glib_autoptr_clear_GIOChannel(_ptr);
}

void glib_autoptr_cleanup_GIOChannel_wrapper(GIOChannel ** _ptr) {
    glib_autoptr_cleanup_GIOChannel(_ptr);
}

void glib_autoptr_destroy_GIOChannel_wrapper(void * _ptr) {
    glib_autoptr_destroy_GIOChannel(_ptr);
}

void glib_listautoptr_cleanup_GIOChannel_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GIOChannel(_l);
}

void glib_slistautoptr_cleanup_GIOChannel_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GIOChannel(_l);
}

void glib_queueautoptr_cleanup_GIOChannel_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GIOChannel(_q);
}

void glib_autoptr_clear_GKeyFile_wrapper(GKeyFile * _ptr) {
    glib_autoptr_clear_GKeyFile(_ptr);
}

void glib_autoptr_cleanup_GKeyFile_wrapper(GKeyFile ** _ptr) {
    glib_autoptr_cleanup_GKeyFile(_ptr);
}

void glib_autoptr_destroy_GKeyFile_wrapper(void * _ptr) {
    glib_autoptr_destroy_GKeyFile(_ptr);
}

void glib_listautoptr_cleanup_GKeyFile_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GKeyFile(_l);
}

void glib_slistautoptr_cleanup_GKeyFile_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GKeyFile(_l);
}

void glib_queueautoptr_cleanup_GKeyFile_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GKeyFile(_q);
}

void glib_autoptr_clear_GList_wrapper(GList * _ptr) {
    glib_autoptr_clear_GList(_ptr);
}

void glib_autoptr_cleanup_GList_wrapper(GList ** _ptr) {
    glib_autoptr_cleanup_GList(_ptr);
}

void glib_autoptr_destroy_GList_wrapper(void * _ptr) {
    glib_autoptr_destroy_GList(_ptr);
}

void glib_listautoptr_cleanup_GList_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GList(_l);
}

void glib_slistautoptr_cleanup_GList_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GList(_l);
}

void glib_queueautoptr_cleanup_GList_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GList(_q);
}

void glib_autoptr_clear_GArray_wrapper(GArray * _ptr) {
    glib_autoptr_clear_GArray(_ptr);
}

void glib_autoptr_cleanup_GArray_wrapper(GArray ** _ptr) {
    glib_autoptr_cleanup_GArray(_ptr);
}

void glib_autoptr_destroy_GArray_wrapper(void * _ptr) {
    glib_autoptr_destroy_GArray(_ptr);
}

void glib_listautoptr_cleanup_GArray_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GArray(_l);
}

void glib_slistautoptr_cleanup_GArray_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GArray(_l);
}

void glib_queueautoptr_cleanup_GArray_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GArray(_q);
}

void glib_autoptr_clear_GPtrArray_wrapper(GPtrArray * _ptr) {
    glib_autoptr_clear_GPtrArray(_ptr);
}

void glib_autoptr_cleanup_GPtrArray_wrapper(GPtrArray ** _ptr) {
    glib_autoptr_cleanup_GPtrArray(_ptr);
}

void glib_autoptr_destroy_GPtrArray_wrapper(void * _ptr) {
    glib_autoptr_destroy_GPtrArray(_ptr);
}

void glib_listautoptr_cleanup_GPtrArray_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GPtrArray(_l);
}

void glib_slistautoptr_cleanup_GPtrArray_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GPtrArray(_l);
}

void glib_queueautoptr_cleanup_GPtrArray_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GPtrArray(_q);
}

void glib_autoptr_clear_GByteArray_wrapper(GByteArray * _ptr) {
    glib_autoptr_clear_GByteArray(_ptr);
}

void glib_autoptr_cleanup_GByteArray_wrapper(GByteArray ** _ptr) {
    glib_autoptr_cleanup_GByteArray(_ptr);
}

void glib_autoptr_destroy_GByteArray_wrapper(void * _ptr) {
    glib_autoptr_destroy_GByteArray(_ptr);
}

void glib_listautoptr_cleanup_GByteArray_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GByteArray(_l);
}

void glib_slistautoptr_cleanup_GByteArray_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GByteArray(_l);
}

void glib_queueautoptr_cleanup_GByteArray_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GByteArray(_q);
}

void glib_autoptr_clear_GMainContext_wrapper(GMainContext * _ptr) {
    glib_autoptr_clear_GMainContext(_ptr);
}

void glib_autoptr_cleanup_GMainContext_wrapper(GMainContext ** _ptr) {
    glib_autoptr_cleanup_GMainContext(_ptr);
}

void glib_autoptr_destroy_GMainContext_wrapper(void * _ptr) {
    glib_autoptr_destroy_GMainContext(_ptr);
}

void glib_listautoptr_cleanup_GMainContext_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GMainContext(_l);
}

void glib_slistautoptr_cleanup_GMainContext_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GMainContext(_l);
}

void glib_queueautoptr_cleanup_GMainContext_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GMainContext(_q);
}

void glib_autoptr_clear_GMainContextPusher_wrapper(GMainContextPusher * _ptr) {
    glib_autoptr_clear_GMainContextPusher(_ptr);
}

void glib_autoptr_cleanup_GMainContextPusher_wrapper(GMainContextPusher ** _ptr) {
    glib_autoptr_cleanup_GMainContextPusher(_ptr);
}

void glib_autoptr_destroy_GMainContextPusher_wrapper(void * _ptr) {
    glib_autoptr_destroy_GMainContextPusher(_ptr);
}

void glib_listautoptr_cleanup_GMainContextPusher_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GMainContextPusher(_l);
}

void glib_slistautoptr_cleanup_GMainContextPusher_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GMainContextPusher(_l);
}

void glib_queueautoptr_cleanup_GMainContextPusher_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GMainContextPusher(_q);
}

void glib_autoptr_clear_GMainLoop_wrapper(GMainLoop * _ptr) {
    glib_autoptr_clear_GMainLoop(_ptr);
}

void glib_autoptr_cleanup_GMainLoop_wrapper(GMainLoop ** _ptr) {
    glib_autoptr_cleanup_GMainLoop(_ptr);
}

void glib_autoptr_destroy_GMainLoop_wrapper(void * _ptr) {
    glib_autoptr_destroy_GMainLoop(_ptr);
}

void glib_listautoptr_cleanup_GMainLoop_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GMainLoop(_l);
}

void glib_slistautoptr_cleanup_GMainLoop_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GMainLoop(_l);
}

void glib_queueautoptr_cleanup_GMainLoop_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GMainLoop(_q);
}

void glib_autoptr_clear_GSource_wrapper(GSource * _ptr) {
    glib_autoptr_clear_GSource(_ptr);
}

void glib_autoptr_cleanup_GSource_wrapper(GSource ** _ptr) {
    glib_autoptr_cleanup_GSource(_ptr);
}

void glib_autoptr_destroy_GSource_wrapper(void * _ptr) {
    glib_autoptr_destroy_GSource(_ptr);
}

void glib_listautoptr_cleanup_GSource_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GSource(_l);
}

void glib_slistautoptr_cleanup_GSource_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GSource(_l);
}

void glib_queueautoptr_cleanup_GSource_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GSource(_q);
}

void glib_autoptr_clear_GMappedFile_wrapper(GMappedFile * _ptr) {
    glib_autoptr_clear_GMappedFile(_ptr);
}

void glib_autoptr_cleanup_GMappedFile_wrapper(GMappedFile ** _ptr) {
    glib_autoptr_cleanup_GMappedFile(_ptr);
}

void glib_autoptr_destroy_GMappedFile_wrapper(void * _ptr) {
    glib_autoptr_destroy_GMappedFile(_ptr);
}

void glib_listautoptr_cleanup_GMappedFile_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GMappedFile(_l);
}

void glib_slistautoptr_cleanup_GMappedFile_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GMappedFile(_l);
}

void glib_queueautoptr_cleanup_GMappedFile_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GMappedFile(_q);
}

void glib_autoptr_clear_GMarkupParseContext_wrapper(GMarkupParseContext * _ptr) {
    glib_autoptr_clear_GMarkupParseContext(_ptr);
}

void glib_autoptr_cleanup_GMarkupParseContext_wrapper(GMarkupParseContext ** _ptr) {
    glib_autoptr_cleanup_GMarkupParseContext(_ptr);
}

void glib_autoptr_destroy_GMarkupParseContext_wrapper(void * _ptr) {
    glib_autoptr_destroy_GMarkupParseContext(_ptr);
}

void glib_listautoptr_cleanup_GMarkupParseContext_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GMarkupParseContext(_l);
}

void glib_slistautoptr_cleanup_GMarkupParseContext_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GMarkupParseContext(_l);
}

void glib_queueautoptr_cleanup_GMarkupParseContext_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GMarkupParseContext(_q);
}

void glib_autoptr_clear_GNode_wrapper(GNode * _ptr) {
    glib_autoptr_clear_GNode(_ptr);
}

void glib_autoptr_cleanup_GNode_wrapper(GNode ** _ptr) {
    glib_autoptr_cleanup_GNode(_ptr);
}

void glib_autoptr_destroy_GNode_wrapper(void * _ptr) {
    glib_autoptr_destroy_GNode(_ptr);
}

void glib_listautoptr_cleanup_GNode_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GNode(_l);
}

void glib_slistautoptr_cleanup_GNode_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GNode(_l);
}

void glib_queueautoptr_cleanup_GNode_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GNode(_q);
}

void glib_autoptr_clear_GOptionContext_wrapper(GOptionContext * _ptr) {
    glib_autoptr_clear_GOptionContext(_ptr);
}

void glib_autoptr_cleanup_GOptionContext_wrapper(GOptionContext ** _ptr) {
    glib_autoptr_cleanup_GOptionContext(_ptr);
}

void glib_autoptr_destroy_GOptionContext_wrapper(void * _ptr) {
    glib_autoptr_destroy_GOptionContext(_ptr);
}

void glib_listautoptr_cleanup_GOptionContext_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GOptionContext(_l);
}

void glib_slistautoptr_cleanup_GOptionContext_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GOptionContext(_l);
}

void glib_queueautoptr_cleanup_GOptionContext_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GOptionContext(_q);
}

void glib_autoptr_clear_GOptionGroup_wrapper(GOptionGroup * _ptr) {
    glib_autoptr_clear_GOptionGroup(_ptr);
}

void glib_autoptr_cleanup_GOptionGroup_wrapper(GOptionGroup ** _ptr) {
    glib_autoptr_cleanup_GOptionGroup(_ptr);
}

void glib_autoptr_destroy_GOptionGroup_wrapper(void * _ptr) {
    glib_autoptr_destroy_GOptionGroup(_ptr);
}

void glib_listautoptr_cleanup_GOptionGroup_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GOptionGroup(_l);
}

void glib_slistautoptr_cleanup_GOptionGroup_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GOptionGroup(_l);
}

void glib_queueautoptr_cleanup_GOptionGroup_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GOptionGroup(_q);
}

void glib_autoptr_clear_GPatternSpec_wrapper(GPatternSpec * _ptr) {
    glib_autoptr_clear_GPatternSpec(_ptr);
}

void glib_autoptr_cleanup_GPatternSpec_wrapper(GPatternSpec ** _ptr) {
    glib_autoptr_cleanup_GPatternSpec(_ptr);
}

void glib_autoptr_destroy_GPatternSpec_wrapper(void * _ptr) {
    glib_autoptr_destroy_GPatternSpec(_ptr);
}

void glib_listautoptr_cleanup_GPatternSpec_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GPatternSpec(_l);
}

void glib_slistautoptr_cleanup_GPatternSpec_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GPatternSpec(_l);
}

void glib_queueautoptr_cleanup_GPatternSpec_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GPatternSpec(_q);
}

void glib_autoptr_clear_GQueue_wrapper(GQueue * _ptr) {
    glib_autoptr_clear_GQueue(_ptr);
}

void glib_autoptr_cleanup_GQueue_wrapper(GQueue ** _ptr) {
    glib_autoptr_cleanup_GQueue(_ptr);
}

void glib_autoptr_destroy_GQueue_wrapper(void * _ptr) {
    glib_autoptr_destroy_GQueue(_ptr);
}

void glib_listautoptr_cleanup_GQueue_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GQueue(_l);
}

void glib_slistautoptr_cleanup_GQueue_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GQueue(_l);
}

void glib_queueautoptr_cleanup_GQueue_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GQueue(_q);
}

void glib_auto_cleanup_GQueue_wrapper(GQueue * _ptr) {
    glib_auto_cleanup_GQueue(_ptr);
}

void glib_autoptr_clear_GRand_wrapper(GRand * _ptr) {
    glib_autoptr_clear_GRand(_ptr);
}

void glib_autoptr_cleanup_GRand_wrapper(GRand ** _ptr) {
    glib_autoptr_cleanup_GRand(_ptr);
}

void glib_autoptr_destroy_GRand_wrapper(void * _ptr) {
    glib_autoptr_destroy_GRand(_ptr);
}

void glib_listautoptr_cleanup_GRand_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GRand(_l);
}

void glib_slistautoptr_cleanup_GRand_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GRand(_l);
}

void glib_queueautoptr_cleanup_GRand_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GRand(_q);
}

void glib_autoptr_clear_GRegex_wrapper(GRegex * _ptr) {
    glib_autoptr_clear_GRegex(_ptr);
}

void glib_autoptr_cleanup_GRegex_wrapper(GRegex ** _ptr) {
    glib_autoptr_cleanup_GRegex(_ptr);
}

void glib_autoptr_destroy_GRegex_wrapper(void * _ptr) {
    glib_autoptr_destroy_GRegex(_ptr);
}

void glib_listautoptr_cleanup_GRegex_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GRegex(_l);
}

void glib_slistautoptr_cleanup_GRegex_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GRegex(_l);
}

void glib_queueautoptr_cleanup_GRegex_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GRegex(_q);
}

void glib_autoptr_clear_GMatchInfo_wrapper(GMatchInfo * _ptr) {
    glib_autoptr_clear_GMatchInfo(_ptr);
}

void glib_autoptr_cleanup_GMatchInfo_wrapper(GMatchInfo ** _ptr) {
    glib_autoptr_cleanup_GMatchInfo(_ptr);
}

void glib_autoptr_destroy_GMatchInfo_wrapper(void * _ptr) {
    glib_autoptr_destroy_GMatchInfo(_ptr);
}

void glib_listautoptr_cleanup_GMatchInfo_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GMatchInfo(_l);
}

void glib_slistautoptr_cleanup_GMatchInfo_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GMatchInfo(_l);
}

void glib_queueautoptr_cleanup_GMatchInfo_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GMatchInfo(_q);
}

void glib_autoptr_clear_GScanner_wrapper(GScanner * _ptr) {
    glib_autoptr_clear_GScanner(_ptr);
}

void glib_autoptr_cleanup_GScanner_wrapper(GScanner ** _ptr) {
    glib_autoptr_cleanup_GScanner(_ptr);
}

void glib_autoptr_destroy_GScanner_wrapper(void * _ptr) {
    glib_autoptr_destroy_GScanner(_ptr);
}

void glib_listautoptr_cleanup_GScanner_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GScanner(_l);
}

void glib_slistautoptr_cleanup_GScanner_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GScanner(_l);
}

void glib_queueautoptr_cleanup_GScanner_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GScanner(_q);
}

void glib_autoptr_clear_GSequence_wrapper(GSequence * _ptr) {
    glib_autoptr_clear_GSequence(_ptr);
}

void glib_autoptr_cleanup_GSequence_wrapper(GSequence ** _ptr) {
    glib_autoptr_cleanup_GSequence(_ptr);
}

void glib_autoptr_destroy_GSequence_wrapper(void * _ptr) {
    glib_autoptr_destroy_GSequence(_ptr);
}

void glib_listautoptr_cleanup_GSequence_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GSequence(_l);
}

void glib_slistautoptr_cleanup_GSequence_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GSequence(_l);
}

void glib_queueautoptr_cleanup_GSequence_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GSequence(_q);
}

void glib_autoptr_clear_GSList_wrapper(GSList * _ptr) {
    glib_autoptr_clear_GSList(_ptr);
}

void glib_autoptr_cleanup_GSList_wrapper(GSList ** _ptr) {
    glib_autoptr_cleanup_GSList(_ptr);
}

void glib_autoptr_destroy_GSList_wrapper(void * _ptr) {
    glib_autoptr_destroy_GSList(_ptr);
}

void glib_listautoptr_cleanup_GSList_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GSList(_l);
}

void glib_slistautoptr_cleanup_GSList_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GSList(_l);
}

void glib_queueautoptr_cleanup_GSList_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GSList(_q);
}

void glib_autoptr_clear_GString_wrapper(GString * _ptr) {
    glib_autoptr_clear_GString(_ptr);
}

void glib_autoptr_cleanup_GString_wrapper(GString ** _ptr) {
    glib_autoptr_cleanup_GString(_ptr);
}

void glib_autoptr_destroy_GString_wrapper(void * _ptr) {
    glib_autoptr_destroy_GString(_ptr);
}

void glib_listautoptr_cleanup_GString_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GString(_l);
}

void glib_slistautoptr_cleanup_GString_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GString(_l);
}

void glib_queueautoptr_cleanup_GString_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GString(_q);
}

void glib_autoptr_clear_GStringChunk_wrapper(GStringChunk * _ptr) {
    glib_autoptr_clear_GStringChunk(_ptr);
}

void glib_autoptr_cleanup_GStringChunk_wrapper(GStringChunk ** _ptr) {
    glib_autoptr_cleanup_GStringChunk(_ptr);
}

void glib_autoptr_destroy_GStringChunk_wrapper(void * _ptr) {
    glib_autoptr_destroy_GStringChunk(_ptr);
}

void glib_listautoptr_cleanup_GStringChunk_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GStringChunk(_l);
}

void glib_slistautoptr_cleanup_GStringChunk_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GStringChunk(_l);
}

void glib_queueautoptr_cleanup_GStringChunk_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GStringChunk(_q);
}

void glib_autoptr_clear_GStrvBuilder_wrapper(GStrvBuilder * _ptr) {
    glib_autoptr_clear_GStrvBuilder(_ptr);
}

void glib_autoptr_cleanup_GStrvBuilder_wrapper(GStrvBuilder ** _ptr) {
    glib_autoptr_cleanup_GStrvBuilder(_ptr);
}

void glib_autoptr_destroy_GStrvBuilder_wrapper(void * _ptr) {
    glib_autoptr_destroy_GStrvBuilder(_ptr);
}

void glib_listautoptr_cleanup_GStrvBuilder_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GStrvBuilder(_l);
}

void glib_slistautoptr_cleanup_GStrvBuilder_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GStrvBuilder(_l);
}

void glib_queueautoptr_cleanup_GStrvBuilder_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GStrvBuilder(_q);
}

void glib_autoptr_clear_GThread_wrapper(GThread * _ptr) {
    glib_autoptr_clear_GThread(_ptr);
}

void glib_autoptr_cleanup_GThread_wrapper(GThread ** _ptr) {
    glib_autoptr_cleanup_GThread(_ptr);
}

void glib_autoptr_destroy_GThread_wrapper(void * _ptr) {
    glib_autoptr_destroy_GThread(_ptr);
}

void glib_listautoptr_cleanup_GThread_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GThread(_l);
}

void glib_slistautoptr_cleanup_GThread_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GThread(_l);
}

void glib_queueautoptr_cleanup_GThread_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GThread(_q);
}

void glib_auto_cleanup_GMutex_wrapper(GMutex * _ptr) {
    glib_auto_cleanup_GMutex(_ptr);
}

void glib_autoptr_clear_GMutexLocker_wrapper(GMutexLocker * _ptr) {
    glib_autoptr_clear_GMutexLocker(_ptr);
}

void glib_autoptr_cleanup_GMutexLocker_wrapper(GMutexLocker ** _ptr) {
    glib_autoptr_cleanup_GMutexLocker(_ptr);
}

void glib_autoptr_destroy_GMutexLocker_wrapper(void * _ptr) {
    glib_autoptr_destroy_GMutexLocker(_ptr);
}

void glib_listautoptr_cleanup_GMutexLocker_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GMutexLocker(_l);
}

void glib_slistautoptr_cleanup_GMutexLocker_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GMutexLocker(_l);
}

void glib_queueautoptr_cleanup_GMutexLocker_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GMutexLocker(_q);
}

void glib_autoptr_clear_GRecMutexLocker_wrapper(GRecMutexLocker * _ptr) {
    glib_autoptr_clear_GRecMutexLocker(_ptr);
}

void glib_autoptr_cleanup_GRecMutexLocker_wrapper(GRecMutexLocker ** _ptr) {
    glib_autoptr_cleanup_GRecMutexLocker(_ptr);
}

void glib_autoptr_destroy_GRecMutexLocker_wrapper(void * _ptr) {
    glib_autoptr_destroy_GRecMutexLocker(_ptr);
}

void glib_listautoptr_cleanup_GRecMutexLocker_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GRecMutexLocker(_l);
}

void glib_slistautoptr_cleanup_GRecMutexLocker_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GRecMutexLocker(_l);
}

void glib_queueautoptr_cleanup_GRecMutexLocker_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GRecMutexLocker(_q);
}

void glib_autoptr_clear_GRWLockWriterLocker_wrapper(GRWLockWriterLocker * _ptr) {
    glib_autoptr_clear_GRWLockWriterLocker(_ptr);
}

void glib_autoptr_cleanup_GRWLockWriterLocker_wrapper(GRWLockWriterLocker ** _ptr) {
    glib_autoptr_cleanup_GRWLockWriterLocker(_ptr);
}

void glib_autoptr_destroy_GRWLockWriterLocker_wrapper(void * _ptr) {
    glib_autoptr_destroy_GRWLockWriterLocker(_ptr);
}

void glib_listautoptr_cleanup_GRWLockWriterLocker_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GRWLockWriterLocker(_l);
}

void glib_slistautoptr_cleanup_GRWLockWriterLocker_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GRWLockWriterLocker(_l);
}

void glib_queueautoptr_cleanup_GRWLockWriterLocker_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GRWLockWriterLocker(_q);
}

void glib_autoptr_clear_GRWLockReaderLocker_wrapper(GRWLockReaderLocker * _ptr) {
    glib_autoptr_clear_GRWLockReaderLocker(_ptr);
}

void glib_autoptr_cleanup_GRWLockReaderLocker_wrapper(GRWLockReaderLocker ** _ptr) {
    glib_autoptr_cleanup_GRWLockReaderLocker(_ptr);
}

void glib_autoptr_destroy_GRWLockReaderLocker_wrapper(void * _ptr) {
    glib_autoptr_destroy_GRWLockReaderLocker(_ptr);
}

void glib_listautoptr_cleanup_GRWLockReaderLocker_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GRWLockReaderLocker(_l);
}

void glib_slistautoptr_cleanup_GRWLockReaderLocker_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GRWLockReaderLocker(_l);
}

void glib_queueautoptr_cleanup_GRWLockReaderLocker_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GRWLockReaderLocker(_q);
}

void glib_auto_cleanup_GCond_wrapper(GCond * _ptr) {
    glib_auto_cleanup_GCond(_ptr);
}

void glib_autoptr_clear_GTimer_wrapper(GTimer * _ptr) {
    glib_autoptr_clear_GTimer(_ptr);
}

void glib_autoptr_cleanup_GTimer_wrapper(GTimer ** _ptr) {
    glib_autoptr_cleanup_GTimer(_ptr);
}

void glib_autoptr_destroy_GTimer_wrapper(void * _ptr) {
    glib_autoptr_destroy_GTimer(_ptr);
}

void glib_listautoptr_cleanup_GTimer_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GTimer(_l);
}

void glib_slistautoptr_cleanup_GTimer_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GTimer(_l);
}

void glib_queueautoptr_cleanup_GTimer_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GTimer(_q);
}

void glib_autoptr_clear_GTimeZone_wrapper(GTimeZone * _ptr) {
    glib_autoptr_clear_GTimeZone(_ptr);
}

void glib_autoptr_cleanup_GTimeZone_wrapper(GTimeZone ** _ptr) {
    glib_autoptr_cleanup_GTimeZone(_ptr);
}

void glib_autoptr_destroy_GTimeZone_wrapper(void * _ptr) {
    glib_autoptr_destroy_GTimeZone(_ptr);
}

void glib_listautoptr_cleanup_GTimeZone_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GTimeZone(_l);
}

void glib_slistautoptr_cleanup_GTimeZone_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GTimeZone(_l);
}

void glib_queueautoptr_cleanup_GTimeZone_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GTimeZone(_q);
}

void glib_autoptr_clear_GTree_wrapper(GTree * _ptr) {
    glib_autoptr_clear_GTree(_ptr);
}

void glib_autoptr_cleanup_GTree_wrapper(GTree ** _ptr) {
    glib_autoptr_cleanup_GTree(_ptr);
}

void glib_autoptr_destroy_GTree_wrapper(void * _ptr) {
    glib_autoptr_destroy_GTree(_ptr);
}

void glib_listautoptr_cleanup_GTree_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GTree(_l);
}

void glib_slistautoptr_cleanup_GTree_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GTree(_l);
}

void glib_queueautoptr_cleanup_GTree_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GTree(_q);
}

void glib_autoptr_clear_GVariant_wrapper(GVariant * _ptr) {
    glib_autoptr_clear_GVariant(_ptr);
}

void glib_autoptr_cleanup_GVariant_wrapper(GVariant ** _ptr) {
    glib_autoptr_cleanup_GVariant(_ptr);
}

void glib_autoptr_destroy_GVariant_wrapper(void * _ptr) {
    glib_autoptr_destroy_GVariant(_ptr);
}

void glib_listautoptr_cleanup_GVariant_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GVariant(_l);
}

void glib_slistautoptr_cleanup_GVariant_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GVariant(_l);
}

void glib_queueautoptr_cleanup_GVariant_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GVariant(_q);
}

void glib_autoptr_clear_GVariantBuilder_wrapper(GVariantBuilder * _ptr) {
    glib_autoptr_clear_GVariantBuilder(_ptr);
}

void glib_autoptr_cleanup_GVariantBuilder_wrapper(GVariantBuilder ** _ptr) {
    glib_autoptr_cleanup_GVariantBuilder(_ptr);
}

void glib_autoptr_destroy_GVariantBuilder_wrapper(void * _ptr) {
    glib_autoptr_destroy_GVariantBuilder(_ptr);
}

void glib_listautoptr_cleanup_GVariantBuilder_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GVariantBuilder(_l);
}

void glib_slistautoptr_cleanup_GVariantBuilder_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GVariantBuilder(_l);
}

void glib_queueautoptr_cleanup_GVariantBuilder_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GVariantBuilder(_q);
}

void glib_auto_cleanup_GVariantBuilder_wrapper(GVariantBuilder * _ptr) {
    glib_auto_cleanup_GVariantBuilder(_ptr);
}

void glib_autoptr_clear_GVariantIter_wrapper(GVariantIter * _ptr) {
    glib_autoptr_clear_GVariantIter(_ptr);
}

void glib_autoptr_cleanup_GVariantIter_wrapper(GVariantIter ** _ptr) {
    glib_autoptr_cleanup_GVariantIter(_ptr);
}

void glib_autoptr_destroy_GVariantIter_wrapper(void * _ptr) {
    glib_autoptr_destroy_GVariantIter(_ptr);
}

void glib_listautoptr_cleanup_GVariantIter_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GVariantIter(_l);
}

void glib_slistautoptr_cleanup_GVariantIter_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GVariantIter(_l);
}

void glib_queueautoptr_cleanup_GVariantIter_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GVariantIter(_q);
}

void glib_autoptr_clear_GVariantDict_wrapper(GVariantDict * _ptr) {
    glib_autoptr_clear_GVariantDict(_ptr);
}

void glib_autoptr_cleanup_GVariantDict_wrapper(GVariantDict ** _ptr) {
    glib_autoptr_cleanup_GVariantDict(_ptr);
}

void glib_autoptr_destroy_GVariantDict_wrapper(void * _ptr) {
    glib_autoptr_destroy_GVariantDict(_ptr);
}

void glib_listautoptr_cleanup_GVariantDict_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GVariantDict(_l);
}

void glib_slistautoptr_cleanup_GVariantDict_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GVariantDict(_l);
}

void glib_queueautoptr_cleanup_GVariantDict_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GVariantDict(_q);
}

void glib_auto_cleanup_GVariantDict_wrapper(GVariantDict * _ptr) {
    glib_auto_cleanup_GVariantDict(_ptr);
}

void glib_autoptr_clear_GVariantType_wrapper(GVariantType * _ptr) {
    glib_autoptr_clear_GVariantType(_ptr);
}

void glib_autoptr_cleanup_GVariantType_wrapper(GVariantType ** _ptr) {
    glib_autoptr_cleanup_GVariantType(_ptr);
}

void glib_autoptr_destroy_GVariantType_wrapper(void * _ptr) {
    glib_autoptr_destroy_GVariantType(_ptr);
}

void glib_listautoptr_cleanup_GVariantType_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GVariantType(_l);
}

void glib_slistautoptr_cleanup_GVariantType_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GVariantType(_l);
}

void glib_queueautoptr_cleanup_GVariantType_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GVariantType(_q);
}

void glib_auto_cleanup_GStrv_wrapper(GStrv * _ptr) {
    glib_auto_cleanup_GStrv(_ptr);
}

void glib_autoptr_clear_GRefString_wrapper(GRefString * _ptr) {
    glib_autoptr_clear_GRefString(_ptr);
}

void glib_autoptr_cleanup_GRefString_wrapper(GRefString ** _ptr) {
    glib_autoptr_cleanup_GRefString(_ptr);
}

void glib_autoptr_destroy_GRefString_wrapper(void * _ptr) {
    glib_autoptr_destroy_GRefString(_ptr);
}

void glib_listautoptr_cleanup_GRefString_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GRefString(_l);
}

void glib_slistautoptr_cleanup_GRefString_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GRefString(_l);
}

void glib_queueautoptr_cleanup_GRefString_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GRefString(_q);
}

void glib_autoptr_clear_GUri_wrapper(GUri * _ptr) {
    glib_autoptr_clear_GUri(_ptr);
}

void glib_autoptr_cleanup_GUri_wrapper(GUri ** _ptr) {
    glib_autoptr_cleanup_GUri(_ptr);
}

void glib_autoptr_destroy_GUri_wrapper(void * _ptr) {
    glib_autoptr_destroy_GUri(_ptr);
}

void glib_listautoptr_cleanup_GUri_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GUri(_l);
}

void glib_slistautoptr_cleanup_GUri_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GUri(_l);
}

void glib_queueautoptr_cleanup_GUri_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GUri(_q);
}

void glib_autoptr_clear_GPathBuf_wrapper(GPathBuf * _ptr) {
    glib_autoptr_clear_GPathBuf(_ptr);
}

void glib_autoptr_cleanup_GPathBuf_wrapper(GPathBuf ** _ptr) {
    glib_autoptr_cleanup_GPathBuf(_ptr);
}

void glib_autoptr_destroy_GPathBuf_wrapper(void * _ptr) {
    glib_autoptr_destroy_GPathBuf(_ptr);
}

void glib_listautoptr_cleanup_GPathBuf_wrapper(GList ** _l) {
    glib_listautoptr_cleanup_GPathBuf(_l);
}

void glib_slistautoptr_cleanup_GPathBuf_wrapper(GSList ** _l) {
    glib_slistautoptr_cleanup_GPathBuf(_l);
}

void glib_queueautoptr_cleanup_GPathBuf_wrapper(GQueue ** _q) {
    glib_queueautoptr_cleanup_GPathBuf(_q);
}

void glib_auto_cleanup_GPathBuf_wrapper(GPathBuf * _ptr) {
    glib_auto_cleanup_GPathBuf(_ptr);
}

