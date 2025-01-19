package glib

import "base:runtime"
import "core:fmt"
import odin_log "core:log"
import "core:math/rand"
import ts "core:testing"

@(test)
test_allocator :: proc(t: ^ts.T) {
    context = create_context()

    {
        i := new(int_)
        ts.expect_value(t, i^, 0)

        i^ = 5
        ts.expect_value(t, i^, 5)

        runtime.free(i)
    }

    {
        structy :: struct {
            i: int_,
            b: char,
            c: size,
            d: short,
        }

        s := new(structy)
        ts.expect_value(t, s.i, 0)
        ts.expect_value(t, s.b, 0)
        ts.expect_value(t, s.c, 0)
        ts.expect_value(t, s.d, 0)

        s.i = 5
        s.b = 1
        s.c = 2
        s.d = 25
        ts.expect_value(t, s.i, 5)
        ts.expect_value(t, s.b, 1)
        ts.expect_value(t, s.c, 2)
        ts.expect_value(t, s.d, 25)

        runtime.free(s)
    }

    {
        structy :: struct #packed {
            i: int_,
            b: char,
            c: size,
            d: short,
        }

        s := new(structy)
        ts.expect_value(t, s.i, 0)
        ts.expect_value(t, s.b, 0)
        ts.expect_value(t, s.c, 0)
        ts.expect_value(t, s.d, 0)

        s.i = 5
        s.b = 1
        s.c = 2
        s.d = 25
        ts.expect_value(t, s.i, 5)
        ts.expect_value(t, s.b, 1)
        ts.expect_value(t, s.c, 2)
        ts.expect_value(t, s.d, 25)

        runtime.free(s)
    }

    {
        arr := make([dynamic]int_, len = 0, cap = 5)
        defer delete(arr)

        append(&arr, 1)
        append(&arr, 2)
        append(&arr, 3)
        append(&arr, 4)
        append(&arr, 5)

        ts.expect_value(t, arr[0], 1)
        ts.expect_value(t, arr[1], 2)
        ts.expect_value(t, arr[2], 3)
        ts.expect_value(t, arr[3], 4)
        ts.expect_value(t, arr[4], 5)

        append(&arr, 6)
        append(&arr, 7)

        ts.expect_value(t, arr[0], 1)
        ts.expect_value(t, arr[1], 2)
        ts.expect_value(t, arr[2], 3)
        ts.expect_value(t, arr[3], 4)
        ts.expect_value(t, arr[4], 5)
        ts.expect_value(t, arr[5], 6)
        ts.expect_value(t, arr[6], 7)
    }

    {
        mp := make(map[int_]cstring)
        defer delete(mp)

        mp[0] = "foo"
        mp[5] = "bar"
        mp[10] = "baz"
        mp[20] = "egg"

        ts.expect_value(t, mp[0], "foo")
        ts.expect_value(t, mp[5], "bar")
        ts.expect_value(t, mp[10], "baz")
        ts.expect_value(t, mp[20], "egg")

        _, ok := mp[6]
        ts.expect(t, !ok)
    }

    {
        list: [dynamic]cstring
        append(&list, "apple")
        append(&list, "banana")
        append(&list, "cherry")
        append(&list, "kiwi")

        str := fmt.aprintf(
            "width={} height={} title={} list={}",
            1920,
            1080,
            "Hello World",
            list,
        )
        delete(list)

        ts.expect_value(
            t,
            str,
            "width=1920 height=1080 title=Hello World list=[\"apple\", \"banana\", \"cherry\", \"kiwi\"]",
        )
        delete(str)
    }
}

@(test)
test_logger :: proc(t: ^ts.T) {
    context = create_context()
    odin_log.info("this is an info test using the glib logger")
}

@(test)
test_random :: proc(t: ^ts.T) {
    context = create_context()

    for _ in 0 ..< 10 {
        print("%lu\n", rand.uint64())
    }

    for _ in 0 ..< 10 {
        print("%f\n", rand.float64_range(-10.0, 10.0))
    }
}

