#include "graphene-wrapper.h"

graphene_simd4f_t graphene_simd4f_madd_wrapper(const graphene_simd4f_t m1, const graphene_simd4f_t m2, const graphene_simd4f_t a) {
    return graphene_simd4f_madd(m1, m2, a);
}

graphene_simd4f_t graphene_simd4f_sum_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_sum(v);
}

float graphene_simd4f_sum_scalar_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_sum_scalar(v);
}

graphene_simd4f_t graphene_simd4f_dot4_wrapper(const graphene_simd4f_t a, const graphene_simd4f_t b) {
    return graphene_simd4f_dot4(a, b);
}

graphene_simd4f_t graphene_simd4f_dot2_wrapper(const graphene_simd4f_t a, const graphene_simd4f_t b) {
    return graphene_simd4f_dot2(a, b);
}

graphene_simd4f_t graphene_simd4f_length4_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_length4(v);
}

graphene_simd4f_t graphene_simd4f_length3_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_length3(v);
}

graphene_simd4f_t graphene_simd4f_length2_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_length2(v);
}

graphene_simd4f_t graphene_simd4f_normalize4_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_normalize4(v);
}

graphene_simd4f_t graphene_simd4f_normalize3_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_normalize3(v);
}

graphene_simd4f_t graphene_simd4f_normalize2_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_normalize2(v);
}

_Bool graphene_simd4f_is_zero4_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_is_zero4(v);
}

_Bool graphene_simd4f_is_zero3_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_is_zero3(v);
}

_Bool graphene_simd4f_is_zero2_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_is_zero2(v);
}

graphene_simd4f_t graphene_simd4f_interpolate_wrapper(const graphene_simd4f_t a, const graphene_simd4f_t b, float f) {
    return graphene_simd4f_interpolate(a, b, f);
}

graphene_simd4f_t graphene_simd4f_clamp_wrapper(const graphene_simd4f_t v, const graphene_simd4f_t min, const graphene_simd4f_t max) {
    return graphene_simd4f_clamp(v, min, max);
}

graphene_simd4f_t graphene_simd4f_clamp_scalar_wrapper(const graphene_simd4f_t v, float min, float max) {
    return graphene_simd4f_clamp_scalar(v, min, max);
}

graphene_simd4f_t graphene_simd4f_min_val_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_min_val(v);
}

graphene_simd4f_t graphene_simd4f_max_val_wrapper(const graphene_simd4f_t v) {
    return graphene_simd4f_max_val(v);
}

graphene_simd4x4f_t graphene_simd4x4f_init_wrapper(graphene_simd4f_t x, graphene_simd4f_t y, graphene_simd4f_t z, graphene_simd4f_t w) {
    return graphene_simd4x4f_init(x, y, z, w);
}

void graphene_simd4x4f_init_identity_wrapper(graphene_simd4x4f_t * m) {
    graphene_simd4x4f_init_identity(m);
}

void graphene_simd4x4f_init_from_float_wrapper(graphene_simd4x4f_t * m, const float * f) {
    graphene_simd4x4f_init_from_float(m, f);
}

void graphene_simd4x4f_to_float_wrapper(const graphene_simd4x4f_t * m, float * v) {
    graphene_simd4x4f_to_float(m, v);
}

void graphene_simd4x4f_sum_wrapper(const graphene_simd4x4f_t * a, graphene_simd4f_t * res) {
    graphene_simd4x4f_sum(a, res);
}

void graphene_simd4x4f_vec4_mul_wrapper(const graphene_simd4x4f_t * a, const graphene_simd4f_t * b, graphene_simd4f_t * res) {
    graphene_simd4x4f_vec4_mul(a, b, res);
}

void graphene_simd4x4f_vec3_mul_wrapper(const graphene_simd4x4f_t * m, const graphene_simd4f_t * v, graphene_simd4f_t * res) {
    graphene_simd4x4f_vec3_mul(m, v, res);
}

void graphene_simd4x4f_point3_mul_wrapper(const graphene_simd4x4f_t * m, const graphene_simd4f_t * p, graphene_simd4f_t * res) {
    graphene_simd4x4f_point3_mul(m, p, res);
}

void graphene_simd4x4f_transpose_wrapper(const graphene_simd4x4f_t * s, graphene_simd4x4f_t * res) {
    graphene_simd4x4f_transpose(s, res);
}

void graphene_simd4x4f_inv_ortho_vec3_mul_wrapper(const graphene_simd4x4f_t * a, const graphene_simd4f_t * b, graphene_simd4f_t * res) {
    graphene_simd4x4f_inv_ortho_vec3_mul(a, b, res);
}

void graphene_simd4x4f_inv_ortho_point3_mul_wrapper(const graphene_simd4x4f_t * a, const graphene_simd4f_t * b, graphene_simd4f_t * res) {
    graphene_simd4x4f_inv_ortho_point3_mul(a, b, res);
}

void graphene_simd4x4f_matrix_mul_wrapper(const graphene_simd4x4f_t * a, const graphene_simd4x4f_t * b, graphene_simd4x4f_t * res) {
    graphene_simd4x4f_matrix_mul(a, b, res);
}

void graphene_simd4x4f_init_perspective_wrapper(graphene_simd4x4f_t * m, float fovy_rad, float aspect, float z_near, float z_far) {
    graphene_simd4x4f_init_perspective(m, fovy_rad, aspect, z_near, z_far);
}

void graphene_simd4x4f_init_ortho_wrapper(graphene_simd4x4f_t * m, float left, float right, float bottom, float top, float z_near, float z_far) {
    graphene_simd4x4f_init_ortho(m, left, right, bottom, top, z_near, z_far);
}

void graphene_simd4x4f_init_look_at_wrapper(graphene_simd4x4f_t * m, graphene_simd4f_t eye, graphene_simd4f_t center, graphene_simd4f_t up) {
    graphene_simd4x4f_init_look_at(m, eye, center, up);
}

void graphene_simd4x4f_init_frustum_wrapper(graphene_simd4x4f_t * m, float left, float right, float bottom, float top, float z_near, float z_far) {
    graphene_simd4x4f_init_frustum(m, left, right, bottom, top, z_near, z_far);
}

void graphene_simd4x4f_perspective_wrapper(graphene_simd4x4f_t * m, float depth) {
    graphene_simd4x4f_perspective(m, depth);
}

void graphene_simd4x4f_translation_wrapper(graphene_simd4x4f_t * m, float x, float y, float z) {
    graphene_simd4x4f_translation(m, x, y, z);
}

void graphene_simd4x4f_scale_wrapper(graphene_simd4x4f_t * m, float x, float y, float z) {
    graphene_simd4x4f_scale(m, x, y, z);
}

void graphene_simd4x4f_rotation_wrapper(graphene_simd4x4f_t * m, float rad, graphene_simd4f_t axis) {
    graphene_simd4x4f_rotation(m, rad, axis);
}

void graphene_simd4x4f_add_wrapper(const graphene_simd4x4f_t * a, const graphene_simd4x4f_t * b, graphene_simd4x4f_t * res) {
    graphene_simd4x4f_add(a, b, res);
}

void graphene_simd4x4f_sub_wrapper(const graphene_simd4x4f_t * a, const graphene_simd4x4f_t * b, graphene_simd4x4f_t * res) {
    graphene_simd4x4f_sub(a, b, res);
}

void graphene_simd4x4f_mul_wrapper(const graphene_simd4x4f_t * a, const graphene_simd4x4f_t * b, graphene_simd4x4f_t * res) {
    graphene_simd4x4f_mul(a, b, res);
}

void graphene_simd4x4f_div_wrapper(const graphene_simd4x4f_t * a, const graphene_simd4x4f_t * b, graphene_simd4x4f_t * res) {
    graphene_simd4x4f_div(a, b, res);
}

_Bool graphene_simd4x4f_inverse_wrapper(const graphene_simd4x4f_t * m, graphene_simd4x4f_t * res) {
    return graphene_simd4x4f_inverse(m, res);
}

void graphene_simd4x4f_determinant_wrapper(const graphene_simd4x4f_t * m, graphene_simd4f_t * det_r, graphene_simd4f_t * invdet_r) {
    graphene_simd4x4f_determinant(m, det_r, invdet_r);
}

_Bool graphene_simd4x4f_is_identity_wrapper(const graphene_simd4x4f_t * m) {
    return graphene_simd4x4f_is_identity(m);
}

_Bool graphene_simd4x4f_is_2d_wrapper(const graphene_simd4x4f_t * m) {
    return graphene_simd4x4f_is_2d(m);
}

