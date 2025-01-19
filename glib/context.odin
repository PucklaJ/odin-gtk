package glib

import "base:runtime"
import "core:mem"
import "core:strconv"
import "core:strings"

DEFAULT_ALIGNMENT :: size_of(rawptr)

@(thread_local)
global_temp_allocator_arena: runtime.Arena

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
                runtime.mem_copy(new_mem, old_memory, old_size)
                aligned_free(old_memory)
                return (cast([^]byte)new_mem)[:alloc_size], .None
            } else {
                new_mem := realloc(old_memory, size(alloc_size))
                if alloc_size > old_size {
                    runtime.mem_zero(
                        &(cast([^]byte)new_mem)[old_size],
                        alloc_size - old_size,
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
                runtime.mem_copy(new_mem, old_memory, old_size)
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

    context = ctx
    ctx.temp_allocator = runtime.arena_allocator(&global_temp_allocator_arena)

    when !ODIN_DISABLE_ASSERT {
        ctx.assertion_failure_proc =
        proc(prefix, message: string, loc: runtime.Source_Code_Location) -> ! {
            // NOTE: this probably crashes if a string is above 1KB
            block_of_memory: [1024]u8
            stack_block: mem.Arena
            mem.arena_init(&stack_block, block_of_memory[:])
            stack_alloc := mem.arena_allocator(&stack_block)

            file_path_cstr := strings.clone_to_cstring(
                loc.file_path,
                stack_alloc,
            )
            printerr("%s", file_path_cstr)
            mem.arena_free_all(&stack_block)

            printerr(":%d:%d \"", loc.line, loc.column)
            procedure_cstr := strings.clone_to_cstring(
                loc.procedure,
                stack_alloc,
            )
            printerr("%s", procedure_cstr)
            mem.arena_free_all(&stack_block)

            printerr("\" ")
            prefix_cstr := strings.clone_to_cstring(prefix, stack_alloc)
            printerr("%s", prefix_cstr)
            mem.arena_free_all(&stack_block)

            printerr(": ")
            message_cstr := strings.clone_to_cstring(message, stack_alloc)
            printerr("%s", message_cstr)
            mem.arena_free_all(&stack_block)

            printerr("\n")

            runtime.trap()
        }
    }

    ctx.logger.procedure =
    proc(
        data: rawptr,
        level: runtime.Logger_Level,
        text: string,
        options: runtime.Logger_Options,
        location := #caller_location,
    ) {
        glib_log_level: LogLevelFlags = ---
        switch level {
        case .Debug:
            glib_log_level = .LOG_LEVEL_DEBUG
        case .Info:
            glib_log_level = .LOG_LEVEL_INFO
        case .Warning:
            glib_log_level = .LOG_LEVEL_WARNING
        case .Error:
            glib_log_level = .LOG_LEVEL_ERROR
        case .Fatal:
            glib_log_level = .LOG_FLAG_FATAL | .LOG_LEVEL_ERROR
        }

        text_cstr := strings.clone_to_cstring(text)
        file_cstr := strings.clone_to_cstring(location.file_path)
        proc_cstr := strings.clone_to_cstring(location.procedure)

        int_buf: [256]u8
        line_str := strconv.append_uint(int_buf[:], u64(location.line), 10)
        int_buf[len(line_str)] = 0
        line_cstr := cstring(&int_buf[0])

        log_structured_standard(
            nil,
            glib_log_level,
            file_cstr,
            line_cstr,
            proc_cstr,
            "%s",
            text_cstr,
        )

        delete(text_cstr)
        delete(file_cstr)
        delete(proc_cstr)
    }

    ctx.random_generator.procedure =
    proc(data: rawptr, mode: runtime.Random_Generator_Mode, p: []byte) {
        read_u64 :: proc() -> u64 {
            return u64(random_int()) | (u64(random_int()) << 32)
        }

        switch mode {
        case .Read:
            switch len(p) {
            case size_of(u64):
                next_val := read_u64()
                runtime.mem_copy(raw_data(p), &next_val, len(p))
            case:
                pos := i8(0)
                val := u64(0)
                for &v in p {
                    if pos == 0 {
                        val = read_u64()
                        pos = 7
                    }
                    v = byte(val)
                    val >>= 8
                    pos -= 1
                }
            }
        case .Reset:
            seed: u64 = ---
            runtime.mem_copy_non_overlapping(
                &seed,
                raw_data(p),
                min(size_of(seed), len(p)),
            )
            random_set_seed(uint32(seed))
        case .Query_Info:
            if len(p) != size_of(runtime.Random_Generator_Query_Info) {
                return
            }
            info := (^runtime.Random_Generator_Query_Info)(raw_data(p))
            info^ += {.Uniform, .Resettable}
        }

    }
    return
}

