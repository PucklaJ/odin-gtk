package glib

import "base:runtime"
import "core:c/libc"

when ODIN_ARCH == .amd64 || ODIN_ARCH == .arm64 {
    DEFAULT_ALIGNMENT :: 8
} else when ODIN_ARCH == .x86 || ODIN_ARCH == .arm {
    DEFAULT_ALIGNMENT :: 4
} else {
    #assert(
        "glib.Allocator: alignment for this architecture needs to be added",
    )
}

create_context :: proc "contextless" () -> (ctx: runtime.Context) {

    ctx.allocator.procedure =
    proc(
        allocator_data: rawptr,
        mode: runtime.Allocator_Mode,
        alloc_size, alloc_alignment: int,
        old_memory: rawptr,
        old_size: int,
        location := #caller_location,
    ) -> (
        []byte,
        runtime.Allocator_Error,
    ) {
        switch mode {
        case .Alloc:
            if alloc_alignment % DEFAULT_ALIGNMENT == 0 {
                new_mem := aligned_alloc0(
                    1,
                    size(alloc_size),
                    size(alloc_alignment),
                )
                return (cast([^]byte)new_mem)[:alloc_size], .None
            } else {
                new_mem := malloc0(size(alloc_size))
                return (cast([^]byte)new_mem)[:alloc_size], .None
            }
        case .Alloc_Non_Zeroed:
            if alloc_alignment % DEFAULT_ALIGNMENT == 0 {
                new_mem := aligned_alloc(
                    1,
                    size(alloc_size),
                    size(alloc_alignment),
                )
                return (cast([^]byte)new_mem)[:alloc_size], .None
            } else {
                new_mem := malloc(size(alloc_size))
                return (cast([^]byte)new_mem)[:alloc_size], .None
            }
        case .Free:
            if alloc_alignment % DEFAULT_ALIGNMENT == 0 {
                aligned_free(old_memory)
            } else {
                free(old_memory)
            }
            return nil, .None
        case .Free_All:
            return nil, .Mode_Not_Implemented
        case .Resize:
            if alloc_alignment % DEFAULT_ALIGNMENT == 0 {
                new_mem := aligned_alloc0(
                    1,
                    size(alloc_size),
                    size(alloc_alignment),
                )
                libc.memcpy(new_mem, old_memory, uint(alloc_size))
                aligned_free(old_memory)
                return (cast([^]byte)new_mem)[:alloc_size], .None
            } else {
                new_mem := realloc(old_memory, size(alloc_size))
                if alloc_size > old_size {
                    libc.memset(
                        &(cast([^]byte)new_mem)[old_size],
                        0,
                        uint(alloc_size - old_size),
                    )
                }
                return (cast([^]byte)new_mem)[:alloc_size], .None
            }
        case .Resize_Non_Zeroed:
            if alloc_alignment % DEFAULT_ALIGNMENT == 0 {
                new_mem := aligned_alloc(
                    1,
                    size(alloc_size),
                    size(alloc_alignment),
                )
                libc.memcpy(new_mem, old_memory, uint(alloc_size))
                aligned_free(old_memory)
                return (cast([^]byte)new_mem)[:alloc_size], .None
            } else {
                new_mem := realloc(old_memory, size(alloc_size))
                return (cast([^]byte)new_mem)[:alloc_size], .None
            }
        case .Query_Features:
            set := (^runtime.Allocator_Mode_Set)(old_memory)
            if set != nil {
                set^ = {
                    .Alloc,
                    .Alloc_Non_Zeroed,
                    .Free,
                    .Resize,
                    .Resize_Non_Zeroed,
                    .Query_Features,
                }
            }
            return nil, nil
        case .Query_Info:
            return nil, .Mode_Not_Implemented
        }

        assert(false, "glib.Allocator: unreachable reached")
        return nil, .Invalid_Argument
    }

    return
}

