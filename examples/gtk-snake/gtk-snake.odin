package main

import cairo "../../cairo"
import glib "../../glib"
import gio "../../glib/gio"
import gobj "../../glib/gobject"
import gtk "../../gtk"

TILE_SIZE :: 24
DEFAULT_WINDOW_WIDTH :: TILE_SIZE * 30
DEFAULT_WINDOW_HEIGHT :: TILE_SIZE * 30
EYE_SIZE :: TILE_SIZE / 7
WHITE_EYE_SIZE :: EYE_SIZE * 4
EYE_WIGGLE_ROOM :: WHITE_EYE_SIZE / 3
SNAKE_TIME :: 0.1
SNAKE_MULTIPLIER :: 0.03
SNAKE_SIZE_LIMIT :: 100

ctx: struct {
    snake:           [SNAKE_SIZE_LIMIT]SnakePart,
    snake_size:      int,
    food:            [2]int,
    cur_dir:         Direction,
    next_dir:        Direction,
    snake_time:      f64,
    time_multiplier: f64,
    paused:          bool,
    start_time:      glib.int64,
    shutdown:        bool,
}

SnakePart :: struct {
    start:  [2]int,
    target: [2]int,
}

Direction :: enum {
    UP,
    DOWN,
    LEFT,
    RIGHT,
}

init :: proc "c" (area: ^gtk.DrawingArea, user_data: glib.pointer) {

    ctx.start_time = glib.get_monotonic_time()

    ctx.snake_size = 3
    ctx.snake[0] = {{15, 15}, {15, 15}}
    ctx.snake[1] = {{16, 15}, {16, 15}}
    ctx.snake[2] = {{17, 15}, {17, 15}}

    ctx.food = {10, 10}
    ctx.time_multiplier = 1

    gobj.object_ref(area)
    glib.timeout_add(1, proc "c" (user_data: glib.pointer) -> glib.boolean {
            area := gobj.type_cast(
                gtk.DrawingArea,
                cast(^gtk.DrawingArea)user_data,
                gtk.TYPE_DRAWING_AREA(),
            )

            if ctx.shutdown {
                gobj.object_unref(area)
                return false
            }

            gtk.widget_queue_draw(cast(^gtk.Widget)area)

            return true
        }, area)
}

input :: proc "c" (
    self: ^gtk.EventControllerKey,
    keyval: glib.uint_,
    keycode: glib.uint_,
    state: gtk.ModifierType,
    user_data: glib.pointer,
) -> glib.boolean {
    lower_keyval := gtk.gdk_keyval_to_lower(keyval)
    switch lower_keyval {
    case gtk.KEY_p:
        ctx.paused = !ctx.paused
    case gtk.KEY_w, gtk.KEY_Up:
        if ctx.cur_dir != .DOWN do ctx.next_dir = .UP
    case gtk.KEY_s, gtk.KEY_Down:
        if ctx.cur_dir != .UP do ctx.next_dir = .DOWN
    case gtk.KEY_a, gtk.KEY_Left:
        if ctx.cur_dir != .RIGHT do ctx.next_dir = .LEFT
    case gtk.KEY_d, gtk.KEY_Right:
        if ctx.cur_dir != .LEFT do ctx.next_dir = .RIGHT
    case:
        return false
    }

    return true
}

draw :: proc "c" (
    area: ^gtk.DrawingArea,
    cr: ^cairo.context_t,
    width: glib.int_,
    height: glib.int_,
    user_data: glib.pointer,
) {
    defer ctx.start_time = glib.get_monotonic_time()
    end_time := glib.get_monotonic_time()
    delta_time := f64(end_time - ctx.start_time) / 1000000

    anim_time := SNAKE_TIME / ctx.time_multiplier

    // Get Size of the window
    window_width := gtk.widget_get_width(cast(^gtk.Widget)area)
    window_height := gtk.widget_get_height(cast(^gtk.Widget)area)

    // Update game
    if !ctx.paused {
        ctx.snake_time += delta_time
        if ctx.snake_time > SNAKE_TIME / ctx.time_multiplier {
            ctx.snake_time = 0.0
            ctx.cur_dir = ctx.next_dir

            #reverse for &snake, idx in ctx.snake[:ctx.snake_size] {
                snake.start = snake.target

                if idx == 0 {
                    switch ctx.cur_dir {
                    case .UP:
                        snake.target[1] -= 1
                    case .DOWN:
                        snake.target[1] += 1
                    case .LEFT:
                        snake.target[0] -= 1
                    case .RIGHT:
                        snake.target[0] += 1
                    }

                    if snake.target[0] == -1 {
                        snake.target[0] = int(window_width / TILE_SIZE - 1)
                    } else if snake.target[0] ==
                       int(window_width / TILE_SIZE) {
                        snake.target[0] = 0
                    }
                    if snake.target[1] == -1 {
                        snake.target[1] = int(window_height / TILE_SIZE - 1)
                    } else if snake.target[1] ==
                       int(window_height / TILE_SIZE) {
                        snake.target[1] = 0
                    }
                } else {
                    snake.target = ctx.snake[idx - 1].target
                }
            }
        }
    }


    if ctx.snake[0].start == ctx.food {
        if ctx.snake_size < SNAKE_SIZE_LIMIT {
            ctx.snake[ctx.snake_size] = ctx.snake[ctx.snake_size - 1]
            ctx.snake_size += 1
        }

        ctx.food[0] = int(glib.random_int_range(0, window_width / TILE_SIZE))
        ctx.food[1] = int(glib.random_int_range(0, window_height / TILE_SIZE))
        ctx.time_multiplier += SNAKE_MULTIPLIER
    }

    if !gtk.widget_contains(
        cast(^gtk.Widget)area,
        f64(ctx.food[0] * TILE_SIZE),
        f64(ctx.food[1] * TILE_SIZE),
    ) {
        ctx.food[0] = int(glib.random_int_range(0, window_width / TILE_SIZE))
        ctx.food[1] = int(glib.random_int_range(0, window_height / TILE_SIZE))
    }

    for snake, idx in ctx.snake[:ctx.snake_size] {
        if idx != 0 && snake.target == ctx.snake[0].target {
            new_food_x := int(
                glib.random_int_range(0, window_width / TILE_SIZE),
            )
            new_food_y := int(
                glib.random_int_range(0, window_width / TILE_SIZE),
            )
            ctx.food = {new_food_x, new_food_y}

            new_x_pos := int(
                glib.random_int_range(0, window_width / TILE_SIZE - 3),
            )
            new_y_pos := int(
                glib.random_int_range(0, window_height / TILE_SIZE - 3),
            )
            ctx.snake_size = 3
            ctx.snake[0] = {{new_x_pos, new_y_pos}, {new_x_pos, new_y_pos}}
            ctx.snake[1] = {
                {new_x_pos + 1, new_y_pos},
                {new_x_pos + 1, new_y_pos},
            }
            ctx.snake[2] = {
                {new_x_pos + 2, new_y_pos},
                {new_x_pos + 2, new_y_pos},
            }
            ctx.cur_dir = .LEFT
            ctx.next_dir = .LEFT
            ctx.time_multiplier = 1.0
        }
    }

    // Render game
    cairo.set_source_rgba(cr, 1, 1, 1, 1)
    cairo.paint(cr)

    // Render food
    cairo.set_source_rgba(cr, 0.9, 0, 0, 1)
    if ctx.paused do cairo.set_source_rgba(cr, 0.5, 0.5, 0.5, 1.0)
    cairo.rectangle(
        cr,
        x = f64(ctx.food[0] * TILE_SIZE),
        y = f64(ctx.food[1] * TILE_SIZE),
        width = TILE_SIZE,
        height = TILE_SIZE,
    )
    cairo.fill(cr)

    // Render snake
    for snake, idx in ctx.snake[:ctx.snake_size] {
        // Render body part. Need to change target to have a smooth transition off screen
        target_x := snake.target[0]
        if snake.start[0] == 0 &&
           snake.target[0] == int(window_width / TILE_SIZE - 1) {
            target_x = -1
        } else if snake.start[0] == int(window_width / TILE_SIZE - 1) &&
           target_x == 0 {
            target_x = snake.start[0] + 1
        }
        target_y := snake.target[1]
        if snake.start[1] == 0 &&
           snake.target[1] == int(window_height / TILE_SIZE - 1) {
            target_y = -1
        } else if snake.start[1] == int(window_height / TILE_SIZE - 1) &&
           target_y == 0 {
            target_y = snake.start[1] + 1
        }

        pos_x :=
            (f64(target_x) - f64(snake.start[0])) *
                (ctx.snake_time / anim_time) +
            f64(snake.start[0])
        pos_y :=
            (f64(target_y) - f64(snake.start[1])) *
                (ctx.snake_time / anim_time) +
            f64(snake.start[1])

        cairo.set_source_rgba(cr, 102 / 255, 255 / 255, 51 / 255, 1)
        if ctx.paused do cairo.set_source_rgba(cr, 0.5, 0.5, 0.5, 1.0)
        cairo.rectangle(
            cr,
            x = pos_x * TILE_SIZE,
            y = pos_y * TILE_SIZE,
            width = TILE_SIZE,
            height = TILE_SIZE,
        )
        cairo.fill(cr)

        cairo.set_source_rgba(cr, 0, 153 / 255, 51 / 255, 1)
        if ctx.paused do cairo.set_source_rgba(cr, 0.5, 0.5, 0.5, 1)
        cairo.rectangle(
            cr,
            x = pos_x * TILE_SIZE,
            y = pos_y * TILE_SIZE,
            width = TILE_SIZE,
            height = TILE_SIZE,
        )
        cairo.stroke(cr)

        // Render eyes
        if idx == 0 {
            left_eye_pos_x := pos_x * TILE_SIZE
            left_eye_pos_y := pos_y * TILE_SIZE
            right_eye_pos_x := pos_x * TILE_SIZE
            right_eye_pos_y := pos_y * TILE_SIZE

            switch ctx.next_dir {
            case .UP:
                left_eye_pos_x += TILE_SIZE / 4
                right_eye_pos_x += 3 * TILE_SIZE / 4
                left_eye_pos_y += TILE_SIZE / 4
                right_eye_pos_y += TILE_SIZE / 4
            case .DOWN:
                left_eye_pos_x += TILE_SIZE / 4
                right_eye_pos_x += 3 * TILE_SIZE / 4
                left_eye_pos_y += 3 * TILE_SIZE / 4
                right_eye_pos_y += 3 * TILE_SIZE / 4
            case .LEFT:
                left_eye_pos_x += TILE_SIZE / 4
                right_eye_pos_x += TILE_SIZE / 4
                left_eye_pos_y += 3 * TILE_SIZE / 4
                right_eye_pos_y += TILE_SIZE / 4
            case .RIGHT:
                left_eye_pos_x += 3 * TILE_SIZE / 4
                right_eye_pos_x += 3 * TILE_SIZE / 4
                left_eye_pos_y += TILE_SIZE / 4
                right_eye_pos_y += 3 * TILE_SIZE / 4
            }

            wiggle_left_eye_x, wiggle_left_eye_y, wiggle_right_eye_x, wiggle_right_eye_y: f64

            wiggle_value := glib.random_int_range(0, 10)
            switch wiggle_value {
            case 0 ..= 2:
                wiggle_left_eye_x = glib.random_double_range(
                    -EYE_WIGGLE_ROOM,
                    EYE_WIGGLE_ROOM,
                )
                wiggle_left_eye_y = glib.random_double_range(
                    -EYE_WIGGLE_ROOM,
                    EYE_WIGGLE_ROOM,
                )
            case 8 ..= 10:
                wiggle_right_eye_x = glib.random_double_range(
                    -EYE_WIGGLE_ROOM,
                    EYE_WIGGLE_ROOM,
                )
                wiggle_right_eye_y = glib.random_double_range(
                    -EYE_WIGGLE_ROOM,
                    EYE_WIGGLE_ROOM,
                )
            }

            cairo.set_source_rgba(cr, 1, 1, 1, 1)
            cairo.rectangle(
                cr,
                x = left_eye_pos_x - WHITE_EYE_SIZE / 2,
                y = left_eye_pos_y - WHITE_EYE_SIZE / 2,
                width = WHITE_EYE_SIZE,
                height = WHITE_EYE_SIZE,
            )
            cairo.fill(cr)
            cairo.set_source_rgba(cr, 0, 153 / 255, 51 / 255, 255 / 255)
            cairo.rectangle(
                cr,
                x = left_eye_pos_x - WHITE_EYE_SIZE / 2,
                y = left_eye_pos_y - WHITE_EYE_SIZE / 2,
                width = WHITE_EYE_SIZE,
                height = WHITE_EYE_SIZE,
            )
            cairo.stroke(cr)

            cairo.set_source_rgba(cr, 1, 1, 1, 1)
            cairo.rectangle(
                cr,
                x = right_eye_pos_x - WHITE_EYE_SIZE / 2,
                y = right_eye_pos_y - WHITE_EYE_SIZE / 2,
                width = WHITE_EYE_SIZE,
                height = WHITE_EYE_SIZE,
            )
            cairo.fill(cr)
            cairo.set_source_rgba(cr, 0, 153 / 255, 51 / 255, 255 / 255)
            cairo.rectangle(
                cr,
                x = right_eye_pos_x - WHITE_EYE_SIZE / 2,
                y = right_eye_pos_y - WHITE_EYE_SIZE / 2,
                width = WHITE_EYE_SIZE,
                height = WHITE_EYE_SIZE,
            )
            cairo.stroke(cr)

            cairo.set_source_rgba(cr, 0, 0, 0, 1)
            cairo.rectangle(
                cr,
                x = left_eye_pos_x + wiggle_left_eye_x - EYE_SIZE / 2,
                y = left_eye_pos_y + wiggle_left_eye_y - EYE_SIZE / 2,
                width = EYE_SIZE,
                height = EYE_SIZE,
            )
            cairo.fill(cr)
            cairo.rectangle(
                cr,
                x = right_eye_pos_x + wiggle_right_eye_x - EYE_SIZE / 2,
                y = right_eye_pos_y + wiggle_right_eye_y - EYE_SIZE / 2,
                width = EYE_SIZE,
                height = EYE_SIZE,
            )
            cairo.fill(cr)
        }

        // Render "shadow" to have a smooth movement from offscreen. For this you need to render one rect moving off the screen on one side and enter the screen on the other side
        start_x := snake.start[0]
        if start_x == 0 &&
           snake.target[0] == int(window_width / TILE_SIZE - 1) {
            start_x = snake.target[0] + 1
        } else if start_x == int(window_width / TILE_SIZE - 1) &&
           snake.target[0] == 0 {
            start_x = -1
        }
        start_y := snake.start[1]
        if start_y == 0 &&
           snake.target[1] == int(window_height / TILE_SIZE - 1) {
            start_y = snake.target[1] + 1
        } else if start_y == int(window_height / TILE_SIZE - 1) &&
           snake.target[1] == 0 {
            start_y = -1
        }

        if start_x != snake.start[0] || start_y != snake.start[1] {
            pos_x =
                (f64(snake.target[0]) - f64(start_x)) *
                    (ctx.snake_time / anim_time) +
                f64(start_x)
            pos_y =
                (f64(snake.target[1]) - f64(start_y)) *
                    (ctx.snake_time / anim_time) +
                f64(start_y)

            cairo.set_source_rgba(cr, 102 / 255, 255 / 255, 51 / 255, 1)
            if ctx.paused do cairo.set_source_rgba(cr, 0.5, 0.5, 0.5, 1)
            cairo.rectangle(
                cr,
                x = pos_x * TILE_SIZE,
                y = pos_y * TILE_SIZE,
                width = TILE_SIZE,
                height = TILE_SIZE,
            )
            cairo.fill(cr)

            cairo.set_source_rgba(cr, 0, 153 / 255, 51 / 255, 1)
            if ctx.paused do cairo.set_source_rgba(cr, 0.5, 0.5, 0.5, 1)
            cairo.rectangle(
                cr,
                x = pos_x * TILE_SIZE,
                y = pos_y * TILE_SIZE,
                width = TILE_SIZE,
                height = TILE_SIZE,
            )
            cairo.stroke(cr)

            // Render eyes of shadow
            if idx == 0 {
                left_eye_pos_x := pos_x * TILE_SIZE
                left_eye_pos_y := pos_y * TILE_SIZE
                right_eye_pos_x := pos_x * TILE_SIZE
                right_eye_pos_y := pos_y * TILE_SIZE

                switch ctx.next_dir {
                case .UP:
                    left_eye_pos_x += TILE_SIZE / 4
                    right_eye_pos_x += 3 * TILE_SIZE / 4
                    left_eye_pos_y += TILE_SIZE / 4
                    right_eye_pos_y += TILE_SIZE / 4
                case .DOWN:
                    left_eye_pos_x += TILE_SIZE / 4
                    right_eye_pos_x += 3 * TILE_SIZE / 4
                    left_eye_pos_y += 3 * TILE_SIZE / 4
                    right_eye_pos_y += 3 * TILE_SIZE / 4
                case .LEFT:
                    left_eye_pos_x += TILE_SIZE / 4
                    right_eye_pos_x += TILE_SIZE / 4
                    left_eye_pos_y += 3 * TILE_SIZE / 4
                    right_eye_pos_y += TILE_SIZE / 4
                case .RIGHT:
                    left_eye_pos_x += 3 * TILE_SIZE / 4
                    right_eye_pos_x += 3 * TILE_SIZE / 4
                    left_eye_pos_y += TILE_SIZE / 4
                    right_eye_pos_y += 3 * TILE_SIZE / 4
                }

                wiggle_left_eye_x, wiggle_left_eye_y, wiggle_right_eye_x, wiggle_right_eye_y: f64

                wiggle_value := glib.random_int_range(0, 10)
                switch wiggle_value {
                case 0 ..= 2:
                    wiggle_left_eye_x = glib.random_double_range(
                        -EYE_WIGGLE_ROOM,
                        EYE_WIGGLE_ROOM,
                    )
                    wiggle_left_eye_y = glib.random_double_range(
                        -EYE_WIGGLE_ROOM,
                        EYE_WIGGLE_ROOM,
                    )
                case 8 ..= 10:
                    wiggle_right_eye_x = glib.random_double_range(
                        -EYE_WIGGLE_ROOM,
                        EYE_WIGGLE_ROOM,
                    )
                    wiggle_right_eye_y = glib.random_double_range(
                        -EYE_WIGGLE_ROOM,
                        EYE_WIGGLE_ROOM,
                    )
                }

                cairo.set_source_rgba(cr, 1, 1, 1, 1)
                cairo.rectangle(
                    cr,
                    x = left_eye_pos_x - WHITE_EYE_SIZE / 2,
                    y = left_eye_pos_y - WHITE_EYE_SIZE / 2,
                    width = WHITE_EYE_SIZE,
                    height = WHITE_EYE_SIZE,
                )
                cairo.fill(cr)
                cairo.set_source_rgba(cr, 0, 153 / 255, 51 / 255, 255 / 255)
                cairo.rectangle(
                    cr,
                    x = left_eye_pos_x - WHITE_EYE_SIZE / 2,
                    y = left_eye_pos_y - WHITE_EYE_SIZE / 2,
                    width = WHITE_EYE_SIZE,
                    height = WHITE_EYE_SIZE,
                )
                cairo.stroke(cr)

                cairo.set_source_rgba(cr, 1, 1, 1, 1)
                cairo.rectangle(
                    cr,
                    x = right_eye_pos_x - WHITE_EYE_SIZE / 2,
                    y = right_eye_pos_y - WHITE_EYE_SIZE / 2,
                    width = WHITE_EYE_SIZE,
                    height = WHITE_EYE_SIZE,
                )
                cairo.fill(cr)
                cairo.set_source_rgba(cr, 0, 153 / 255, 51 / 255, 255 / 255)
                cairo.rectangle(
                    cr,
                    x = right_eye_pos_x - WHITE_EYE_SIZE / 2,
                    y = right_eye_pos_y - WHITE_EYE_SIZE / 2,
                    width = WHITE_EYE_SIZE,
                    height = WHITE_EYE_SIZE,
                )
                cairo.stroke(cr)

                cairo.set_source_rgba(cr, 0, 0, 0, 1)
                cairo.rectangle(
                    cr,
                    x = left_eye_pos_x + wiggle_left_eye_x - EYE_SIZE / 2,
                    y = left_eye_pos_y + wiggle_left_eye_y - EYE_SIZE / 2,
                    width = EYE_SIZE,
                    height = EYE_SIZE,
                )
                cairo.fill(cr)
                cairo.rectangle(
                    cr,
                    x = right_eye_pos_x + wiggle_right_eye_x - EYE_SIZE / 2,
                    y = right_eye_pos_y + wiggle_right_eye_y - EYE_SIZE / 2,
                    width = EYE_SIZE,
                    height = EYE_SIZE,
                )
                cairo.fill(cr)
            }
        }
    }

    print_buf: [256]byte

    // Draw Score
    SCORE_TEXT_PADDING :: 20
    SCORE_TEXT_FONT_SIZE :: 64
    SCORE_TEXT_BGR_PADDING :: 10

    score_txt := cstring(&print_buf[0])
    glib.snprintf(score_txt, 256, "%ld", ctx.snake_size)

    cairo.select_font_face(cr, "Monospace", .NORMAL, .BOLD)
    cairo.set_font_size(cr, SCORE_TEXT_FONT_SIZE)

    score_999_extents, score_txt_extents: cairo.text_extents_t = ---, ---
    cairo.text_extents(cr, score_txt, &score_txt_extents)
    cairo.text_extents(cr, "999", &score_999_extents)

    cairo.set_source_rgba(cr, 0.9, 0.9, 0.9, 0.5)
    cairo.rectangle(
        cr,
        x = f64(window_width) -
        score_999_extents.width -
        SCORE_TEXT_PADDING -
        SCORE_TEXT_BGR_PADDING,
        y = SCORE_TEXT_PADDING - SCORE_TEXT_BGR_PADDING,
        width = score_999_extents.width + SCORE_TEXT_BGR_PADDING * 2,
        height = score_999_extents.height + SCORE_TEXT_BGR_PADDING * 2,
    )
    cairo.fill(cr)
    cairo.set_source_rgba(cr, 0.2, 0.2, 0.2, 0.9)
    cairo.rectangle(
        cr,
        x = f64(window_width) -
        score_999_extents.width -
        SCORE_TEXT_PADDING -
        SCORE_TEXT_BGR_PADDING,
        y = SCORE_TEXT_PADDING - SCORE_TEXT_BGR_PADDING,
        width = score_999_extents.width + SCORE_TEXT_BGR_PADDING * 2,
        height = score_999_extents.height + SCORE_TEXT_BGR_PADDING * 2,
    )
    cairo.stroke(cr)


    cairo.move_to(
        cr,
        f64(window_width) - score_txt_extents.width - SCORE_TEXT_PADDING,
        score_txt_extents.height + SCORE_TEXT_PADDING,
    )
    cairo.set_source_rgb(cr, 0, 0, 0)
    cairo.show_text(cr, score_txt)

    // Draw FPS
    FPS_TEXT_PADDING :: 0
    FPS_TEXT_FONT_SIZE :: 10

    fps_txt := cstring(&print_buf[0])
    glib.snprintf(fps_txt, 256, "%.0f", 1 / delta_time)

    // Set text color (black)
    cairo.set_source_rgb(cr, 1, 0, 0.2)

    // Select font and size
    cairo.select_font_face(cr, "Monospace", .NORMAL, .BOLD)
    cairo.set_font_size(cr, FPS_TEXT_FONT_SIZE)

    // Move to position and show text
    fps_txt_extents: cairo.text_extents_t = ---
    cairo.text_extents(cr, fps_txt, &fps_txt_extents)
    cairo.move_to(
        cr,
        FPS_TEXT_PADDING,
        fps_txt_extents.height + FPS_TEXT_PADDING,
    )
    cairo.show_text(cr, fps_txt)
}

main :: proc() {
    glib.print("---- Odin Snake ----\n")

    app := gtk.application_new("org.snake", .APPLICATION_DEFAULT_FLAGS)
    defer gobj.object_unref(app)

    gobj.signal_connect(app, "activate", cast(gobj.Callback)activate, nil)

    status := gio.application_run(
        gobj.type_cast(gio.Application, app, gio.TYPE_APPLICATION()),
        0,
        nil,
    )

    assert(status == 0)
}

activate :: proc "c" (app: ^gtk.Application, user_data: glib.pointer) {
    window := gobj.type_cast(
        gtk.Window,
        gtk.application_window_new(app),
        gtk.TYPE_WINDOW(),
    )

    gtk.window_set_default_size(
        window,
        DEFAULT_WINDOW_WIDTH,
        DEFAULT_WINDOW_HEIGHT,
    )
    gobj.signal_connect(
        window,
        "close-request",
        cast(gobj.Callback)proc "c" (
            self: ^gtk.Window,
            user_data: glib.pointer,
        ) -> glib.boolean {
            glib.print("---- Bye Snake ----\n")
            ctx.shutdown = true
            return false
        },
        nil,
    )

    econ := gtk.event_controller_key_new()
    gobj.signal_connect(econ, "key-pressed", cast(gobj.Callback)input, nil)
    gtk.widget_add_controller(cast(^gtk.Widget)window, econ)

    drawing_area := gobj.type_cast(
        gtk.DrawingArea,
        gtk.drawing_area_new(),
        gtk.TYPE_DRAWING_AREA(),
    )
    gtk.drawing_area_set_draw_func(drawing_area, draw, nil, nil)
    gobj.signal_connect(drawing_area, "realize", cast(gobj.Callback)init, nil)

    gtk.window_set_child(window, cast(^gtk.Widget)drawing_area)
    gtk.window_present(window)
}

