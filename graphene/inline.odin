package graphene

import "core:math"

/*
  + [x] "graphene_simd4f_madd"
  + [x] "graphene_simd4f_sum"
  + [x] "graphene_simd4f_sum_scalar"
  + [x] "graphene_simd4f_dot4"
  + [x] "graphene_simd4f_dot2"
  + [x] "graphene_simd4f_length4"
  + [x] "graphene_simd4f_length3"
  + [x] "graphene_simd4f_length2"
  + [x] "graphene_simd4f_normalize4"
  + [x] "graphene_simd4f_normalize3"
  + [x] "graphene_simd4f_normalize2"
  + [x] "graphene_simd4f_is_zero4"
  + [x] "graphene_simd4f_is_zero3"
  + [x] "graphene_simd4f_is_zero2"
  + [x] "graphene_simd4f_interpolate"
  + [x] "graphene_simd4f_clamp"
  + [x] "graphene_simd4f_clamp_scalar"
  + [x] "graphene_simd4f_min_val"
  + [x] "graphene_simd4f_max_val"
  + [ ] "graphene_simd4x4f_init"
  + [ ] "graphene_simd4x4f_init_identity"
  + [ ] "graphene_simd4x4f_init_from_float"
  + [ ] "graphene_simd4x4f_to_float"
  + [ ] "graphene_simd4x4f_sum"
  + [ ] "graphene_simd4x4f_vec4_mul"
  + [ ] "graphene_simd4x4f_vec3_mul"
  + [ ] "graphene_simd4x4f_point3_mul"
  + [ ] "graphene_simd4x4f_transpose"
  + [ ] "graphene_simd4x4f_inv_ortho_vec3_mul"
  + [ ] "graphene_simd4x4f_inv_ortho_point3_mul"
  + [ ] "graphene_simd4x4f_matrix_mul"
  + [ ] "graphene_simd4x4f_init_perspective"
  + [ ] "graphene_simd4x4f_init_ortho"
  + [ ] "graphene_simd4x4f_init_look_at"
  + [ ] "graphene_simd4x4f_init_frustum"
  + [ ] "graphene_simd4x4f_perspective"
  + [ ] "graphene_simd4x4f_translation"
  + [ ] "graphene_simd4x4f_scale"
  + [ ] "graphene_simd4x4f_rotation"
  + [ ] "graphene_simd4x4f_add"
  + [ ] "graphene_simd4x4f_sub"
  + [x] "graphene_simd4x4f_mul"
  + [ ] "graphene_simd4x4f_div"
  + [ ] "graphene_simd4x4f_inverse"
  + [ ] "graphene_simd4x4f_determinant"
  + [ ] "graphene_simd4x4f_is_identity"
  + [ ] "graphene_simd4x4f_is_2d"
*/

simd4f_madd :: #force_inline proc "contextless" (
    m1, m2, a: simd4f_t,
) -> simd4f_t {
    return simd4f_add(simd4f_mul(m1, m2), a)
}

simd4f_sum :: #force_inline proc "contextless" (v: simd4f_t) -> simd4f_t {
    x := simd4f_splat_x(v)
    y := simd4f_splat_y(v)
    z := simd4f_splat_z(v)
    w := simd4f_splat_w(v)

    return simd4f_add(simd4f_add(x, y), simd4f_add(z, w))
}

simd4f_sum_scalar :: #force_inline proc "contextless" (v: simd4f_t) -> f32 {
    return simd4f_get_x(simd4f_sum(v))
}

simd4f_dot4 :: #force_inline proc "contextless" (a, b: simd4f_t) -> simd4f_t {
    return simd4f_sum(simd4f_mul(a, b))
}

simd4f_dot2 :: #force_inline proc "contextless" (a, b: simd4f_t) -> simd4f_t {
    m := simd4f_mul(a, b)
    x := simd4f_splat_x(m)
    y := simd4f_splat_y(m)

    return simd4f_add(x, y)
}

simd4f_length4 :: #force_inline proc "contextless" (v: simd4f_t) -> simd4f_t {
    return simd4f_sqrt(simd4f_dot4(v, v))
}

simd4f_length3 :: #force_inline proc "contextless" (v: simd4f_t) -> simd4f_t {
    return simd4f_sqrt(simd4f_dot3(v, v))
}

simd4f_length2 :: #force_inline proc "contextless" (v: simd4f_t) -> simd4f_t {
    return simd4f_sqrt(simd4f_dot2(v, v))
}

simd4f_normalize4 :: #force_inline proc "contextless" (
    v: simd4f_t,
) -> simd4f_t {
    invlen := simd4f_rsqrt(simd4f_dot4(v, v))
    return simd4f_mul(v, invlen)
}

simd4f_normalize3 :: #force_inline proc "contextless" (
    v: simd4f_t,
) -> simd4f_t {
    invlen := simd4f_rsqrt(simd4f_dot3(v, v))
    return simd4f_mul(v, invlen)
}

simd4f_normalize2 :: #force_inline proc "contextless" (
    v: simd4f_t,
) -> simd4f_t {
    invlen := simd4f_rsqrt(simd4f_dot2(v, v))
    return simd4f_mul(v, invlen)
}

simd4f_is_zero4 :: #force_inline proc "contextless" (v: simd4f_t) -> b8 {
    zero := simd4f_init_zero()
    return simd4f_cmp_eq(v, zero)
}

simd4f_is_zero3 :: #force_inline proc "contextless" (v: simd4f_t) -> b8 {
    return(
        math.abs(simd4f_get_x(v)) <= math.F32_EPSILON &&
        math.abs(simd4f_get_y(v)) <= math.F32_EPSILON &&
        math.abs(simd4f_get_z(v)) <= math.F32_EPSILON \
    )
}

simd4f_is_zero2 :: #force_inline proc "contextless" (v: simd4f_t) -> b8 {
    return(
        math.abs(simd4f_get_x(v)) <= math.F32_EPSILON &&
        math.abs(simd4f_get_y(v)) <= math.F32_EPSILON \
    )
}

simd4f_interpolate :: #force_inline proc "contextless" (
    a, b: simd4f_t,
    f: f32,
) -> simd4f_t {
    one_minus_f := simd4f_sub(simd4f_splat(1.0), simd4f_splat(f))

    return simd4f_add(
        simd4f_mul(one_minus_f, a),
        simd4f_mul(simd4f_splat(f), b),
    )
}

simd4f_clamp :: #force_inline proc "contextless" (
    v, min, max: simd4f_t,
) -> simd4f_t {
    tmp := simd4f_max(min, v)
    return simd4f_min(tmp, max)
}

simd4f_clamp_scalar :: #force_inline proc "contextless" (
    v: simd4f_t,
    min, max: f32,
) -> simd4f_t {
    return simd4f_clamp(v, simd4f_splat(min), simd4f_splat(max))
}

simd4f_min_val :: #force_inline proc "contextless" (v: simd4f_t) -> simd4f_t {
    s := v

    s = simd4f_min(s, simd4f_shuffle_wxyz(s))
    s = simd4f_min(s, simd4f_shuffle_zwxy(s))

    return s
}

simd4f_max_val :: #force_inline proc "contextless" (v: simd4f_t) -> simd4f_t {
    s := v

    s = simd4f_max(s, simd4f_shuffle_wxyz(s))
    s = simd4f_max(s, simd4f_shuffle_zwxy(s))

    return s
}

simd4x4f_mul :: #force_inline proc "contextless" (a, b, res: ^simd4x4f_t) {
    res.x = simd4f_mul(a.x, b.x)
    res.y = simd4f_mul(a.y, b.y)
    res.z = simd4f_mul(a.z, b.z)
    res.w = simd4f_mul(a.w, b.w)
}
