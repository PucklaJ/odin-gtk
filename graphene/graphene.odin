#+build linux amd64, linux arm64
package graphene

SIMD_S :: "scalar"
PI :: 3.1415926535897932384626434
PI_2 :: 1.5707963267948966192313217
VEC2_LEN :: 2
VEC3_LEN :: 3
VEC4_LEN :: 4

simd4f_t :: struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
}
simd4x4f_t :: struct {
    x: simd4f_t,
    y: simd4f_t,
    z: simd4f_t,
    w: simd4f_t,
}
_graphene_vec2_t :: struct {
    __graphene_private_value: simd4f_t,
}
vec2_t :: _graphene_vec2_t
_graphene_vec3_t :: struct {
    __graphene_private_value: simd4f_t,
}
vec3_t :: _graphene_vec3_t
_graphene_vec4_t :: struct {
    __graphene_private_value: simd4f_t,
}
vec4_t :: _graphene_vec4_t
_graphene_matrix_t :: struct {
    __graphene_private_value: simd4x4f_t,
}
matrix_t :: _graphene_matrix_t
_graphene_point_t :: struct {
    x: f32,
    y: f32,
}
point_t :: _graphene_point_t
_graphene_size_t :: struct {
    width: f32,
    height: f32,
}
size_t :: _graphene_size_t
_graphene_rect_t :: struct {
    origin: point_t,
    size: size_t,
}
rect_t :: _graphene_rect_t
_graphene_point3d_t :: struct {
    x: f32,
    y: f32,
    z: f32,
}
point3d_t :: _graphene_point3d_t
_graphene_quad_t :: struct {
    __graphene_private_points: [4]point_t,
}
quad_t :: _graphene_quad_t
_graphene_quaternion_t :: struct {
    __graphene_private_x: f32,
    __graphene_private_y: f32,
    __graphene_private_z: f32,
    __graphene_private_w: f32,
}
quaternion_t :: _graphene_quaternion_t
euler_order_t :: enum i32 {DEFAULT = -1, XYZ = 0, YZX = 1, ZXY = 2, XZY = 3, YXZ = 4, ZYX = 5, SXYZ = 6, SXYX = 7, SXZY = 8, SXZX = 9, SYZX = 10, SYZY = 11, SYXZ = 12, SYXY = 13, SZXY = 14, SZXZ = 15, SZYX = 16, SZYZ = 17, RZYX = 18, RXYX = 19, RYZX = 20, RXZX = 21, RXZY = 22, RYZY = 23, RZXY = 24, RYXY = 25, RYXZ = 26, RZXZ = 27, RXYZ = 28, RZYZ = 29 }
_graphene_euler_t :: struct {
    __graphene_private_angles: vec3_t,
    __graphene_private_order: euler_order_t,
}
euler_t :: _graphene_euler_t
_graphene_plane_t :: struct {
    __graphene_private_normal: vec3_t,
    __graphene_private_constant: f32,
}
plane_t :: _graphene_plane_t
_graphene_frustum_t :: struct {
    __graphene_private_planes: [6]plane_t,
}
frustum_t :: _graphene_frustum_t
_graphene_sphere_t :: struct {
    __graphene_private_center: vec3_t,
    __graphene_private_radius: f32,
}
sphere_t :: _graphene_sphere_t
_graphene_box_t :: struct {
    __graphene_private_min: vec3_t,
    __graphene_private_max: vec3_t,
}
box_t :: _graphene_box_t
_graphene_triangle_t :: struct {
    __graphene_private_a: vec3_t,
    __graphene_private_b: vec3_t,
    __graphene_private_c: vec3_t,
}
triangle_t :: _graphene_triangle_t
_graphene_ray_t :: struct {
    __graphene_private_origin: vec3_t,
    __graphene_private_direction: vec3_t,
}
ray_t :: _graphene_ray_t
ray_intersection_kind_t :: enum u32 {NONE = 0, ENTER = 1, LEAVE = 2 }

@(default_calling_convention = "c")
foreign graphene_runic {
    @(link_name = "graphene_simd4f_init")
    simd4f_init :: proc(x: f32, y: f32, z: f32, w: f32) -> simd4f_t ---

    @(link_name = "graphene_simd4f_init_zero")
    simd4f_init_zero :: proc() -> simd4f_t ---

    @(link_name = "graphene_simd4f_init_4f")
    simd4f_init_4f :: proc(v: ^f32) -> simd4f_t ---

    @(link_name = "graphene_simd4f_init_3f")
    simd4f_init_3f :: proc(v: ^f32) -> simd4f_t ---

    @(link_name = "graphene_simd4f_init_2f")
    simd4f_init_2f :: proc(v: ^f32) -> simd4f_t ---

    @(link_name = "graphene_simd4f_dup_4f")
    simd4f_dup_4f :: proc(s: simd4f_t, v: ^f32) ---

    @(link_name = "graphene_simd4f_dup_3f")
    simd4f_dup_3f :: proc(s: simd4f_t, v: ^f32) ---

    @(link_name = "graphene_simd4f_dup_2f")
    simd4f_dup_2f :: proc(s: simd4f_t, v: ^f32) ---

    @(link_name = "graphene_simd4f_get")
    simd4f_get :: proc(s: simd4f_t, i: u32) -> f32 ---

    @(link_name = "graphene_simd4f_get_x")
    simd4f_get_x :: proc(s: simd4f_t) -> f32 ---

    @(link_name = "graphene_simd4f_get_y")
    simd4f_get_y :: proc(s: simd4f_t) -> f32 ---

    @(link_name = "graphene_simd4f_get_z")
    simd4f_get_z :: proc(s: simd4f_t) -> f32 ---

    @(link_name = "graphene_simd4f_get_w")
    simd4f_get_w :: proc(s: simd4f_t) -> f32 ---

    @(link_name = "graphene_simd4f_splat")
    simd4f_splat :: proc(v: f32) -> simd4f_t ---

    @(link_name = "graphene_simd4f_splat_x")
    simd4f_splat_x :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_splat_y")
    simd4f_splat_y :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_splat_z")
    simd4f_splat_z :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_splat_w")
    simd4f_splat_w :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_add")
    simd4f_add :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_sub")
    simd4f_sub :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_mul")
    simd4f_mul :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_div")
    simd4f_div :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_sqrt")
    simd4f_sqrt :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_reciprocal")
    simd4f_reciprocal :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_rsqrt")
    simd4f_rsqrt :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_cross3")
    simd4f_cross3 :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_dot3")
    simd4f_dot3 :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_dot3_scalar")
    simd4f_dot3_scalar :: proc(a: simd4f_t, b: simd4f_t) -> f32 ---

    @(link_name = "graphene_simd4f_min")
    simd4f_min :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_max")
    simd4f_max :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_shuffle_wxyz")
    simd4f_shuffle_wxyz :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_shuffle_zwxy")
    simd4f_shuffle_zwxy :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_shuffle_yzwx")
    simd4f_shuffle_yzwx :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_zero_w")
    simd4f_zero_w :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_zero_zw")
    simd4f_zero_zw :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_merge_high")
    simd4f_merge_high :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_merge_low")
    simd4f_merge_low :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_merge_w")
    simd4f_merge_w :: proc(s: simd4f_t, v: f32) -> simd4f_t ---

    @(link_name = "graphene_simd4f_flip_sign_0101")
    simd4f_flip_sign_0101 :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_flip_sign_1010")
    simd4f_flip_sign_1010 :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_cmp_eq")
    simd4f_cmp_eq :: proc(a: simd4f_t, b: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_cmp_neq")
    simd4f_cmp_neq :: proc(a: simd4f_t, b: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_cmp_lt")
    simd4f_cmp_lt :: proc(a: simd4f_t, b: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_cmp_le")
    simd4f_cmp_le :: proc(a: simd4f_t, b: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_cmp_ge")
    simd4f_cmp_ge :: proc(a: simd4f_t, b: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_cmp_gt")
    simd4f_cmp_gt :: proc(a: simd4f_t, b: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_neg")
    simd4f_neg :: proc(s: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4x4f_transpose_in_place")
    simd4x4f_transpose_in_place :: proc(s: ^simd4x4f_t) ---

    @(link_name = "graphene_vec2_alloc")
    vec2_alloc :: proc() -> ^vec2_t ---

    @(link_name = "graphene_vec2_free")
    vec2_free :: proc(v: ^vec2_t) ---

    @(link_name = "graphene_vec2_init")
    vec2_init :: proc(v: ^vec2_t, x: f32, y: f32) -> ^vec2_t ---

    @(link_name = "graphene_vec2_init_from_vec2")
    vec2_init_from_vec2 :: proc(v: ^vec2_t, src: ^vec2_t) -> ^vec2_t ---

    @(link_name = "graphene_vec2_init_from_float")
    vec2_init_from_float :: proc(v: ^vec2_t, src: ^f32) -> ^vec2_t ---

    @(link_name = "graphene_vec2_to_float")
    vec2_to_float :: proc(v: ^vec2_t, dest: ^f32) ---

    @(link_name = "graphene_vec2_add")
    vec2_add :: proc(a: ^vec2_t, b: ^vec2_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_subtract")
    vec2_subtract :: proc(a: ^vec2_t, b: ^vec2_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_multiply")
    vec2_multiply :: proc(a: ^vec2_t, b: ^vec2_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_divide")
    vec2_divide :: proc(a: ^vec2_t, b: ^vec2_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_dot")
    vec2_dot :: proc(a: ^vec2_t, b: ^vec2_t) -> f32 ---

    @(link_name = "graphene_vec2_length")
    vec2_length :: proc(v: ^vec2_t) -> f32 ---

    @(link_name = "graphene_vec2_normalize")
    vec2_normalize :: proc(v: ^vec2_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_scale")
    vec2_scale :: proc(v: ^vec2_t, factor: f32, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_negate")
    vec2_negate :: proc(v: ^vec2_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_near")
    vec2_near :: proc(v1: ^vec2_t, v2: ^vec2_t, epsilon: f32) -> b8 ---

    @(link_name = "graphene_vec2_equal")
    vec2_equal :: proc(v1: ^vec2_t, v2: ^vec2_t) -> b8 ---

    @(link_name = "graphene_vec2_min")
    vec2_min :: proc(a: ^vec2_t, b: ^vec2_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_max")
    vec2_max :: proc(a: ^vec2_t, b: ^vec2_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_interpolate")
    vec2_interpolate :: proc(v1: ^vec2_t, v2: ^vec2_t, factor: f64, res: [^]vec2_t) ---

    @(link_name = "graphene_vec2_get_x")
    vec2_get_x :: proc(v: ^vec2_t) -> f32 ---

    @(link_name = "graphene_vec2_get_y")
    vec2_get_y :: proc(v: ^vec2_t) -> f32 ---

    @(link_name = "graphene_vec2_zero")
    vec2_zero :: proc() -> ^vec2_t ---

    @(link_name = "graphene_vec2_one")
    vec2_one :: proc() -> ^vec2_t ---

    @(link_name = "graphene_vec2_x_axis")
    vec2_x_axis :: proc() -> ^vec2_t ---

    @(link_name = "graphene_vec2_y_axis")
    vec2_y_axis :: proc() -> ^vec2_t ---

    @(link_name = "graphene_vec3_alloc")
    vec3_alloc :: proc() -> ^vec3_t ---

    @(link_name = "graphene_vec3_free")
    vec3_free :: proc(v: ^vec3_t) ---

    @(link_name = "graphene_vec3_init")
    vec3_init :: proc(v: ^vec3_t, x: f32, y: f32, z: f32) -> ^vec3_t ---

    @(link_name = "graphene_vec3_init_from_vec3")
    vec3_init_from_vec3 :: proc(v: ^vec3_t, src: ^vec3_t) -> ^vec3_t ---

    @(link_name = "graphene_vec3_init_from_float")
    vec3_init_from_float :: proc(v: ^vec3_t, src: ^f32) -> ^vec3_t ---

    @(link_name = "graphene_vec3_to_float")
    vec3_to_float :: proc(v: ^vec3_t, dest: ^f32) ---

    @(link_name = "graphene_vec3_add")
    vec3_add :: proc(a: ^vec3_t, b: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_subtract")
    vec3_subtract :: proc(a: ^vec3_t, b: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_multiply")
    vec3_multiply :: proc(a: ^vec3_t, b: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_divide")
    vec3_divide :: proc(a: ^vec3_t, b: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_cross")
    vec3_cross :: proc(a: ^vec3_t, b: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_dot")
    vec3_dot :: proc(a: ^vec3_t, b: ^vec3_t) -> f32 ---

    @(link_name = "graphene_vec3_length")
    vec3_length :: proc(v: ^vec3_t) -> f32 ---

    @(link_name = "graphene_vec3_normalize")
    vec3_normalize :: proc(v: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_scale")
    vec3_scale :: proc(v: ^vec3_t, factor: f32, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_negate")
    vec3_negate :: proc(v: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_equal")
    vec3_equal :: proc(v1: ^vec3_t, v2: ^vec3_t) -> b8 ---

    @(link_name = "graphene_vec3_near")
    vec3_near :: proc(v1: ^vec3_t, v2: ^vec3_t, epsilon: f32) -> b8 ---

    @(link_name = "graphene_vec3_min")
    vec3_min :: proc(a: ^vec3_t, b: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_max")
    vec3_max :: proc(a: ^vec3_t, b: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_interpolate")
    vec3_interpolate :: proc(v1: ^vec3_t, v2: ^vec3_t, factor: f64, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_get_x")
    vec3_get_x :: proc(v: ^vec3_t) -> f32 ---

    @(link_name = "graphene_vec3_get_y")
    vec3_get_y :: proc(v: ^vec3_t) -> f32 ---

    @(link_name = "graphene_vec3_get_z")
    vec3_get_z :: proc(v: ^vec3_t) -> f32 ---

    @(link_name = "graphene_vec3_get_xy")
    vec3_get_xy :: proc(v: ^vec3_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec3_get_xy0")
    vec3_get_xy0 :: proc(v: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec3_get_xyz0")
    vec3_get_xyz0 :: proc(v: ^vec3_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec3_get_xyz1")
    vec3_get_xyz1 :: proc(v: ^vec3_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec3_get_xyzw")
    vec3_get_xyzw :: proc(v: ^vec3_t, w: f32, res: [^]vec4_t) ---

    @(link_name = "graphene_vec3_zero")
    vec3_zero :: proc() -> ^vec3_t ---

    @(link_name = "graphene_vec3_one")
    vec3_one :: proc() -> ^vec3_t ---

    @(link_name = "graphene_vec3_x_axis")
    vec3_x_axis :: proc() -> ^vec3_t ---

    @(link_name = "graphene_vec3_y_axis")
    vec3_y_axis :: proc() -> ^vec3_t ---

    @(link_name = "graphene_vec3_z_axis")
    vec3_z_axis :: proc() -> ^vec3_t ---

    @(link_name = "graphene_vec4_alloc")
    vec4_alloc :: proc() -> ^vec4_t ---

    @(link_name = "graphene_vec4_free")
    vec4_free :: proc(v: ^vec4_t) ---

    @(link_name = "graphene_vec4_init")
    vec4_init :: proc(v: ^vec4_t, x: f32, y: f32, z: f32, w: f32) -> ^vec4_t ---

    @(link_name = "graphene_vec4_init_from_vec4")
    vec4_init_from_vec4 :: proc(v: ^vec4_t, src: ^vec4_t) -> ^vec4_t ---

    @(link_name = "graphene_vec4_init_from_vec3")
    vec4_init_from_vec3 :: proc(v: ^vec4_t, src: ^vec3_t, w: f32) -> ^vec4_t ---

    @(link_name = "graphene_vec4_init_from_vec2")
    vec4_init_from_vec2 :: proc(v: ^vec4_t, src: ^vec2_t, z: f32, w: f32) -> ^vec4_t ---

    @(link_name = "graphene_vec4_init_from_float")
    vec4_init_from_float :: proc(v: ^vec4_t, src: ^f32) -> ^vec4_t ---

    @(link_name = "graphene_vec4_to_float")
    vec4_to_float :: proc(v: ^vec4_t, dest: ^f32) ---

    @(link_name = "graphene_vec4_add")
    vec4_add :: proc(a: ^vec4_t, b: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_subtract")
    vec4_subtract :: proc(a: ^vec4_t, b: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_multiply")
    vec4_multiply :: proc(a: ^vec4_t, b: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_divide")
    vec4_divide :: proc(a: ^vec4_t, b: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_dot")
    vec4_dot :: proc(a: ^vec4_t, b: ^vec4_t) -> f32 ---

    @(link_name = "graphene_vec4_length")
    vec4_length :: proc(v: ^vec4_t) -> f32 ---

    @(link_name = "graphene_vec4_normalize")
    vec4_normalize :: proc(v: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_scale")
    vec4_scale :: proc(v: ^vec4_t, factor: f32, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_negate")
    vec4_negate :: proc(v: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_equal")
    vec4_equal :: proc(v1: ^vec4_t, v2: ^vec4_t) -> b8 ---

    @(link_name = "graphene_vec4_near")
    vec4_near :: proc(v1: ^vec4_t, v2: ^vec4_t, epsilon: f32) -> b8 ---

    @(link_name = "graphene_vec4_min")
    vec4_min :: proc(a: ^vec4_t, b: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_max")
    vec4_max :: proc(a: ^vec4_t, b: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_interpolate")
    vec4_interpolate :: proc(v1: ^vec4_t, v2: ^vec4_t, factor: f64, res: [^]vec4_t) ---

    @(link_name = "graphene_vec4_get_x")
    vec4_get_x :: proc(v: ^vec4_t) -> f32 ---

    @(link_name = "graphene_vec4_get_y")
    vec4_get_y :: proc(v: ^vec4_t) -> f32 ---

    @(link_name = "graphene_vec4_get_z")
    vec4_get_z :: proc(v: ^vec4_t) -> f32 ---

    @(link_name = "graphene_vec4_get_w")
    vec4_get_w :: proc(v: ^vec4_t) -> f32 ---

    @(link_name = "graphene_vec4_get_xy")
    vec4_get_xy :: proc(v: ^vec4_t, res: [^]vec2_t) ---

    @(link_name = "graphene_vec4_get_xyz")
    vec4_get_xyz :: proc(v: ^vec4_t, res: [^]vec3_t) ---

    @(link_name = "graphene_vec4_zero")
    vec4_zero :: proc() -> ^vec4_t ---

    @(link_name = "graphene_vec4_one")
    vec4_one :: proc() -> ^vec4_t ---

    @(link_name = "graphene_vec4_x_axis")
    vec4_x_axis :: proc() -> ^vec4_t ---

    @(link_name = "graphene_vec4_y_axis")
    vec4_y_axis :: proc() -> ^vec4_t ---

    @(link_name = "graphene_vec4_z_axis")
    vec4_z_axis :: proc() -> ^vec4_t ---

    @(link_name = "graphene_vec4_w_axis")
    vec4_w_axis :: proc() -> ^vec4_t ---

    @(link_name = "graphene_matrix_alloc")
    matrix_alloc :: proc() -> ^matrix_t ---

    @(link_name = "graphene_matrix_free")
    matrix_free :: proc(m: ^matrix_t) ---

    @(link_name = "graphene_matrix_init_identity")
    matrix_init_identity :: proc(m: ^matrix_t) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_from_float")
    matrix_init_from_float :: proc(m: ^matrix_t, v: ^f32) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_from_vec4")
    matrix_init_from_vec4 :: proc(m: ^matrix_t, v0: ^vec4_t, v1: ^vec4_t, v2: ^vec4_t, v3: ^vec4_t) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_from_matrix")
    matrix_init_from_matrix :: proc(m: ^matrix_t, src: ^matrix_t) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_perspective")
    matrix_init_perspective :: proc(m: ^matrix_t, fovy: f32, aspect: f32, z_near: f32, z_far: f32) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_ortho")
    matrix_init_ortho :: proc(m: ^matrix_t, left: f32, right: f32, top: f32, bottom: f32, z_near: f32, z_far: f32) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_look_at")
    matrix_init_look_at :: proc(m: ^matrix_t, eye: ^vec3_t, center: ^vec3_t, up: ^vec3_t) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_frustum")
    matrix_init_frustum :: proc(m: ^matrix_t, left: f32, right: f32, bottom: f32, top: f32, z_near: f32, z_far: f32) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_scale")
    matrix_init_scale :: proc(m: ^matrix_t, x: f32, y: f32, z: f32) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_translate")
    matrix_init_translate :: proc(m: ^matrix_t, p: ^point3d_t) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_rotate")
    matrix_init_rotate :: proc(m: ^matrix_t, angle: f32, axis: [^]vec3_t) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_skew")
    matrix_init_skew :: proc(m: ^matrix_t, x_skew: f32, y_skew: f32) -> ^matrix_t ---

    @(link_name = "graphene_matrix_init_from_2d")
    matrix_init_from_2d :: proc(m: ^matrix_t, xx: f64, yx: f64, xy: f64, yy: f64, x_0: f64, y_0: f64) -> ^matrix_t ---

    @(link_name = "graphene_matrix_is_identity")
    matrix_is_identity :: proc(m: ^matrix_t) -> b8 ---

    @(link_name = "graphene_matrix_is_2d")
    matrix_is_2d :: proc(m: ^matrix_t) -> b8 ---

    @(link_name = "graphene_matrix_is_backface_visible")
    matrix_is_backface_visible :: proc(m: ^matrix_t) -> b8 ---

    @(link_name = "graphene_matrix_is_singular")
    matrix_is_singular :: proc(m: ^matrix_t) -> b8 ---

    @(link_name = "graphene_matrix_to_float")
    matrix_to_float :: proc(m: ^matrix_t, v: ^f32) ---

    @(link_name = "graphene_matrix_to_2d")
    matrix_to_2d :: proc(m: ^matrix_t, xx: ^f64, yx: ^f64, xy: ^f64, yy: ^f64, x_0: ^f64, y_0: ^f64) -> b8 ---

    @(link_name = "graphene_matrix_get_row")
    matrix_get_row :: proc(m: ^matrix_t, index_: u32, res: [^]vec4_t) ---

    @(link_name = "graphene_matrix_get_value")
    matrix_get_value :: proc(m: ^matrix_t, row: u32, col: u32) -> f32 ---

    @(link_name = "graphene_matrix_multiply")
    matrix_multiply :: proc(a: ^matrix_t, b: ^matrix_t, res: [^]matrix_t) ---

    @(link_name = "graphene_matrix_determinant")
    matrix_determinant :: proc(m: ^matrix_t) -> f32 ---

    @(link_name = "graphene_matrix_transform_vec4")
    matrix_transform_vec4 :: proc(m: ^matrix_t, v: ^vec4_t, res: [^]vec4_t) ---

    @(link_name = "graphene_matrix_transform_vec3")
    matrix_transform_vec3 :: proc(m: ^matrix_t, v: ^vec3_t, res: [^]vec3_t) ---

    @(link_name = "graphene_matrix_transform_point")
    matrix_transform_point :: proc(m: ^matrix_t, p: ^point_t, res: [^]point_t) ---

    @(link_name = "graphene_matrix_transform_point3d")
    matrix_transform_point3d :: proc(m: ^matrix_t, p: ^point3d_t, res: [^]point3d_t) ---

    @(link_name = "graphene_matrix_transform_rect")
    matrix_transform_rect :: proc(m: ^matrix_t, r: ^rect_t, res: [^]quad_t) ---

    @(link_name = "graphene_matrix_transform_bounds")
    matrix_transform_bounds :: proc(m: ^matrix_t, r: ^rect_t, res: [^]rect_t) ---

    @(link_name = "graphene_matrix_transform_sphere")
    matrix_transform_sphere :: proc(m: ^matrix_t, s: ^sphere_t, res: [^]sphere_t) ---

    @(link_name = "graphene_matrix_transform_box")
    matrix_transform_box :: proc(m: ^matrix_t, b: ^box_t, res: [^]box_t) ---

    @(link_name = "graphene_matrix_transform_ray")
    matrix_transform_ray :: proc(m: ^matrix_t, r: ^ray_t, res: [^]ray_t) ---

    @(link_name = "graphene_matrix_project_point")
    matrix_project_point :: proc(m: ^matrix_t, p: ^point_t, res: [^]point_t) ---

    @(link_name = "graphene_matrix_project_rect_bounds")
    matrix_project_rect_bounds :: proc(m: ^matrix_t, r: ^rect_t, res: [^]rect_t) ---

    @(link_name = "graphene_matrix_project_rect")
    matrix_project_rect :: proc(m: ^matrix_t, r: ^rect_t, res: [^]quad_t) ---

    @(link_name = "graphene_matrix_untransform_point")
    matrix_untransform_point :: proc(m: ^matrix_t, p: ^point_t, bounds: [^]rect_t, res: [^]point_t) -> b8 ---

    @(link_name = "graphene_matrix_untransform_bounds")
    matrix_untransform_bounds :: proc(m: ^matrix_t, r: ^rect_t, bounds: [^]rect_t, res: [^]rect_t) ---

    @(link_name = "graphene_matrix_unproject_point3d")
    matrix_unproject_point3d :: proc(projection: ^matrix_t, modelview: ^matrix_t, point: ^point3d_t, res: [^]point3d_t) ---

    @(link_name = "graphene_matrix_translate")
    matrix_translate :: proc(m: ^matrix_t, pos: [^]point3d_t) ---

    @(link_name = "graphene_matrix_rotate")
    matrix_rotate :: proc(m: ^matrix_t, angle: f32, axis: [^]vec3_t) ---

    @(link_name = "graphene_matrix_rotate_x")
    matrix_rotate_x :: proc(m: ^matrix_t, angle: f32) ---

    @(link_name = "graphene_matrix_rotate_y")
    matrix_rotate_y :: proc(m: ^matrix_t, angle: f32) ---

    @(link_name = "graphene_matrix_rotate_z")
    matrix_rotate_z :: proc(m: ^matrix_t, angle: f32) ---

    @(link_name = "graphene_matrix_rotate_quaternion")
    matrix_rotate_quaternion :: proc(m: ^matrix_t, q: ^quaternion_t) ---

    @(link_name = "graphene_matrix_rotate_euler")
    matrix_rotate_euler :: proc(m: ^matrix_t, e: ^euler_t) ---

    @(link_name = "graphene_matrix_scale")
    matrix_scale :: proc(m: ^matrix_t, factor_x: f32, factor_y: f32, factor_z: f32) ---

    @(link_name = "graphene_matrix_skew_xy")
    matrix_skew_xy :: proc(m: ^matrix_t, factor: f32) ---

    @(link_name = "graphene_matrix_skew_xz")
    matrix_skew_xz :: proc(m: ^matrix_t, factor: f32) ---

    @(link_name = "graphene_matrix_skew_yz")
    matrix_skew_yz :: proc(m: ^matrix_t, factor: f32) ---

    @(link_name = "graphene_matrix_transpose")
    matrix_transpose :: proc(m: ^matrix_t, res: [^]matrix_t) ---

    @(link_name = "graphene_matrix_inverse")
    matrix_inverse :: proc(m: ^matrix_t, res: [^]matrix_t) -> b8 ---

    @(link_name = "graphene_matrix_perspective")
    matrix_perspective :: proc(m: ^matrix_t, depth: f32, res: [^]matrix_t) ---

    @(link_name = "graphene_matrix_normalize")
    matrix_normalize :: proc(m: ^matrix_t, res: [^]matrix_t) ---

    @(link_name = "graphene_matrix_get_x_translation")
    matrix_get_x_translation :: proc(m: ^matrix_t) -> f32 ---

    @(link_name = "graphene_matrix_get_y_translation")
    matrix_get_y_translation :: proc(m: ^matrix_t) -> f32 ---

    @(link_name = "graphene_matrix_get_z_translation")
    matrix_get_z_translation :: proc(m: ^matrix_t) -> f32 ---

    @(link_name = "graphene_matrix_get_x_scale")
    matrix_get_x_scale :: proc(m: ^matrix_t) -> f32 ---

    @(link_name = "graphene_matrix_get_y_scale")
    matrix_get_y_scale :: proc(m: ^matrix_t) -> f32 ---

    @(link_name = "graphene_matrix_get_z_scale")
    matrix_get_z_scale :: proc(m: ^matrix_t) -> f32 ---

    @(link_name = "graphene_matrix_interpolate")
    matrix_interpolate :: proc(a: ^matrix_t, b: ^matrix_t, factor: f64, res: [^]matrix_t) ---

    @(link_name = "graphene_matrix_near")
    matrix_near :: proc(a: ^matrix_t, b: ^matrix_t, epsilon: f32) -> b8 ---

    @(link_name = "graphene_matrix_equal")
    matrix_equal :: proc(a: ^matrix_t, b: ^matrix_t) -> b8 ---

    @(link_name = "graphene_matrix_equal_fast")
    matrix_equal_fast :: proc(a: ^matrix_t, b: ^matrix_t) -> b8 ---

    @(link_name = "graphene_matrix_print")
    matrix_print :: proc(m: ^matrix_t) ---

    @(link_name = "graphene_matrix_decompose")
    matrix_decompose :: proc(m: ^matrix_t, translate: ^vec3_t, scale: ^vec3_t, rotate: ^quaternion_t, shear: ^vec3_t, perspective: ^vec4_t) -> b8 ---

    @(link_name = "graphene_point_alloc")
    point_alloc :: proc() -> ^point_t ---

    @(link_name = "graphene_point_free")
    point_free :: proc(p: ^point_t) ---

    @(link_name = "graphene_point_init")
    point_init :: proc(p: ^point_t, x: f32, y: f32) -> ^point_t ---

    @(link_name = "graphene_point_init_from_point")
    point_init_from_point :: proc(p: ^point_t, src: ^point_t) -> ^point_t ---

    @(link_name = "graphene_point_init_from_vec2")
    point_init_from_vec2 :: proc(p: ^point_t, src: ^vec2_t) -> ^point_t ---

    @(link_name = "graphene_point_equal")
    point_equal :: proc(a: ^point_t, b: ^point_t) -> b8 ---

    @(link_name = "graphene_point_distance")
    point_distance :: proc(a: ^point_t, b: ^point_t, d_x: ^f32, d_y: ^f32) -> f32 ---

    @(link_name = "graphene_point_near")
    point_near :: proc(a: ^point_t, b: ^point_t, epsilon: f32) -> b8 ---

    @(link_name = "graphene_point_interpolate")
    point_interpolate :: proc(a: ^point_t, b: ^point_t, factor: f64, res: [^]point_t) ---

    @(link_name = "graphene_point_to_vec2")
    point_to_vec2 :: proc(p: ^point_t, v: ^vec2_t) ---

    @(link_name = "graphene_point_zero")
    point_zero :: proc() -> ^point_t ---

    @(link_name = "graphene_size_alloc")
    size_alloc :: proc() -> ^size_t ---

    @(link_name = "graphene_size_free")
    size_free :: proc(s: ^size_t) ---

    @(link_name = "graphene_size_init")
    size_init :: proc(s: ^size_t, width: f32, height: f32) -> ^size_t ---

    @(link_name = "graphene_size_init_from_size")
    size_init_from_size :: proc(s: ^size_t, src: ^size_t) -> ^size_t ---

    @(link_name = "graphene_size_equal")
    size_equal :: proc(a: ^size_t, b: ^size_t) -> b8 ---

    @(link_name = "graphene_size_scale")
    size_scale :: proc(s: ^size_t, factor: f32, res: [^]size_t) ---

    @(link_name = "graphene_size_interpolate")
    size_interpolate :: proc(a: ^size_t, b: ^size_t, factor: f64, res: [^]size_t) ---

    @(link_name = "graphene_size_zero")
    size_zero :: proc() -> ^size_t ---

    @(link_name = "graphene_rect_alloc")
    rect_alloc :: proc() -> ^rect_t ---

    @(link_name = "graphene_rect_free")
    rect_free :: proc(r: ^rect_t) ---

    @(link_name = "graphene_rect_init")
    rect_init :: proc(r: ^rect_t, x: f32, y: f32, width: f32, height: f32) -> ^rect_t ---

    @(link_name = "graphene_rect_init_from_rect")
    rect_init_from_rect :: proc(r: ^rect_t, src: ^rect_t) -> ^rect_t ---

    @(link_name = "graphene_rect_equal")
    rect_equal :: proc(a: ^rect_t, b: ^rect_t) -> b8 ---

    @(link_name = "graphene_rect_normalize")
    rect_normalize :: proc(r: ^rect_t) -> ^rect_t ---

    @(link_name = "graphene_rect_normalize_r")
    rect_normalize_r :: proc(r: ^rect_t, res: [^]rect_t) ---

    @(link_name = "graphene_rect_get_center")
    rect_get_center :: proc(r: ^rect_t, p: ^point_t) ---

    @(link_name = "graphene_rect_get_top_left")
    rect_get_top_left :: proc(r: ^rect_t, p: ^point_t) ---

    @(link_name = "graphene_rect_get_top_right")
    rect_get_top_right :: proc(r: ^rect_t, p: ^point_t) ---

    @(link_name = "graphene_rect_get_bottom_right")
    rect_get_bottom_right :: proc(r: ^rect_t, p: ^point_t) ---

    @(link_name = "graphene_rect_get_bottom_left")
    rect_get_bottom_left :: proc(r: ^rect_t, p: ^point_t) ---

    @(link_name = "graphene_rect_get_vertices")
    rect_get_vertices :: proc(r: ^rect_t, vertices: [^]vec2_t) ---

    @(link_name = "graphene_rect_get_x")
    rect_get_x :: proc(r: ^rect_t) -> f32 ---

    @(link_name = "graphene_rect_get_y")
    rect_get_y :: proc(r: ^rect_t) -> f32 ---

    @(link_name = "graphene_rect_get_width")
    rect_get_width :: proc(r: ^rect_t) -> f32 ---

    @(link_name = "graphene_rect_get_height")
    rect_get_height :: proc(r: ^rect_t) -> f32 ---

    @(link_name = "graphene_rect_get_area")
    rect_get_area :: proc(r: ^rect_t) -> f32 ---

    @(link_name = "graphene_rect_union")
    rect_union :: proc(a: ^rect_t, b: ^rect_t, res: [^]rect_t) ---

    @(link_name = "graphene_rect_intersection")
    rect_intersection :: proc(a: ^rect_t, b: ^rect_t, res: [^]rect_t) -> b8 ---

    @(link_name = "graphene_rect_contains_point")
    rect_contains_point :: proc(r: ^rect_t, p: ^point_t) -> b8 ---

    @(link_name = "graphene_rect_contains_rect")
    rect_contains_rect :: proc(a: ^rect_t, b: ^rect_t) -> b8 ---

    @(link_name = "graphene_rect_offset")
    rect_offset :: proc(r: ^rect_t, d_x: f32, d_y: f32) -> ^rect_t ---

    @(link_name = "graphene_rect_offset_r")
    rect_offset_r :: proc(r: ^rect_t, d_x: f32, d_y: f32, res: [^]rect_t) ---

    @(link_name = "graphene_rect_inset")
    rect_inset :: proc(r: ^rect_t, d_x: f32, d_y: f32) -> ^rect_t ---

    @(link_name = "graphene_rect_inset_r")
    rect_inset_r :: proc(r: ^rect_t, d_x: f32, d_y: f32, res: [^]rect_t) ---

    @(link_name = "graphene_rect_round_to_pixel")
    rect_round_to_pixel :: proc(r: ^rect_t) -> ^rect_t ---

    @(link_name = "graphene_rect_round")
    rect_round :: proc(r: ^rect_t, res: [^]rect_t) ---

    @(link_name = "graphene_rect_round_extents")
    rect_round_extents :: proc(r: ^rect_t, res: [^]rect_t) ---

    @(link_name = "graphene_rect_interpolate")
    rect_interpolate :: proc(a: ^rect_t, b: ^rect_t, factor: f64, res: [^]rect_t) ---

    @(link_name = "graphene_rect_expand")
    rect_expand :: proc(r: ^rect_t, p: ^point_t, res: [^]rect_t) ---

    @(link_name = "graphene_rect_zero")
    rect_zero :: proc() -> ^rect_t ---

    @(link_name = "graphene_rect_scale")
    rect_scale :: proc(r: ^rect_t, s_h: f32, s_v: f32, res: [^]rect_t) ---

    @(link_name = "graphene_point3d_alloc")
    point3d_alloc :: proc() -> ^point3d_t ---

    @(link_name = "graphene_point3d_free")
    point3d_free :: proc(p: ^point3d_t) ---

    @(link_name = "graphene_point3d_init")
    point3d_init :: proc(p: ^point3d_t, x: f32, y: f32, z: f32) -> ^point3d_t ---

    @(link_name = "graphene_point3d_init_from_point")
    point3d_init_from_point :: proc(p: ^point3d_t, src: ^point3d_t) -> ^point3d_t ---

    @(link_name = "graphene_point3d_init_from_vec3")
    point3d_init_from_vec3 :: proc(p: ^point3d_t, v: ^vec3_t) -> ^point3d_t ---

    @(link_name = "graphene_point3d_to_vec3")
    point3d_to_vec3 :: proc(p: ^point3d_t, v: ^vec3_t) ---

    @(link_name = "graphene_point3d_equal")
    point3d_equal :: proc(a: ^point3d_t, b: ^point3d_t) -> b8 ---

    @(link_name = "graphene_point3d_near")
    point3d_near :: proc(a: ^point3d_t, b: ^point3d_t, epsilon: f32) -> b8 ---

    @(link_name = "graphene_point3d_scale")
    point3d_scale :: proc(p: ^point3d_t, factor: f32, res: [^]point3d_t) ---

    @(link_name = "graphene_point3d_cross")
    point3d_cross :: proc(a: ^point3d_t, b: ^point3d_t, res: [^]point3d_t) ---

    @(link_name = "graphene_point3d_dot")
    point3d_dot :: proc(a: ^point3d_t, b: ^point3d_t) -> f32 ---

    @(link_name = "graphene_point3d_length")
    point3d_length :: proc(p: ^point3d_t) -> f32 ---

    @(link_name = "graphene_point3d_normalize")
    point3d_normalize :: proc(p: ^point3d_t, res: [^]point3d_t) ---

    @(link_name = "graphene_point3d_distance")
    point3d_distance :: proc(a: ^point3d_t, b: ^point3d_t, delta: ^vec3_t) -> f32 ---

    @(link_name = "graphene_point3d_interpolate")
    point3d_interpolate :: proc(a: ^point3d_t, b: ^point3d_t, factor: f64, res: [^]point3d_t) ---

    @(link_name = "graphene_point3d_normalize_viewport")
    point3d_normalize_viewport :: proc(p: ^point3d_t, viewport: ^rect_t, z_near: f32, z_far: f32, res: [^]point3d_t) ---

    @(link_name = "graphene_point3d_zero")
    point3d_zero :: proc() -> ^point3d_t ---

    @(link_name = "graphene_quad_alloc")
    quad_alloc :: proc() -> ^quad_t ---

    @(link_name = "graphene_quad_free")
    quad_free :: proc(q: ^quad_t) ---

    @(link_name = "graphene_quad_init")
    quad_init :: proc(q: ^quad_t, p1: ^point_t, p2: ^point_t, p3: ^point_t, p4: ^point_t) -> ^quad_t ---

    @(link_name = "graphene_quad_init_from_rect")
    quad_init_from_rect :: proc(q: ^quad_t, r: ^rect_t) -> ^quad_t ---

    @(link_name = "graphene_quad_init_from_points")
    quad_init_from_points :: proc(q: ^quad_t, points: [^]point_t) -> ^quad_t ---

    @(link_name = "graphene_quad_contains")
    quad_contains :: proc(q: ^quad_t, p: ^point_t) -> b8 ---

    @(link_name = "graphene_quad_bounds")
    quad_bounds :: proc(q: ^quad_t, r: ^rect_t) ---

    @(link_name = "graphene_quad_get_point")
    quad_get_point :: proc(q: ^quad_t, index_: u32) -> ^point_t ---

    @(link_name = "graphene_quaternion_alloc")
    quaternion_alloc :: proc() -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_free")
    quaternion_free :: proc(q: ^quaternion_t) ---

    @(link_name = "graphene_quaternion_init")
    quaternion_init :: proc(q: ^quaternion_t, x: f32, y: f32, z: f32, w: f32) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_init_identity")
    quaternion_init_identity :: proc(q: ^quaternion_t) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_init_from_quaternion")
    quaternion_init_from_quaternion :: proc(q: ^quaternion_t, src: ^quaternion_t) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_init_from_vec4")
    quaternion_init_from_vec4 :: proc(q: ^quaternion_t, src: ^vec4_t) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_init_from_matrix")
    quaternion_init_from_matrix :: proc(q: ^quaternion_t, m: ^matrix_t) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_init_from_angles")
    quaternion_init_from_angles :: proc(q: ^quaternion_t, deg_x: f32, deg_y: f32, deg_z: f32) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_init_from_radians")
    quaternion_init_from_radians :: proc(q: ^quaternion_t, rad_x: f32, rad_y: f32, rad_z: f32) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_init_from_angle_vec3")
    quaternion_init_from_angle_vec3 :: proc(q: ^quaternion_t, angle: f32, axis: [^]vec3_t) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_init_from_euler")
    quaternion_init_from_euler :: proc(q: ^quaternion_t, e: ^euler_t) -> ^quaternion_t ---

    @(link_name = "graphene_quaternion_to_vec4")
    quaternion_to_vec4 :: proc(q: ^quaternion_t, res: [^]vec4_t) ---

    @(link_name = "graphene_quaternion_to_matrix")
    quaternion_to_matrix :: proc(q: ^quaternion_t, m: ^matrix_t) ---

    @(link_name = "graphene_quaternion_to_angles")
    quaternion_to_angles :: proc(q: ^quaternion_t, deg_x: ^f32, deg_y: ^f32, deg_z: ^f32) ---

    @(link_name = "graphene_quaternion_to_radians")
    quaternion_to_radians :: proc(q: ^quaternion_t, rad_x: ^f32, rad_y: ^f32, rad_z: ^f32) ---

    @(link_name = "graphene_quaternion_to_angle_vec3")
    quaternion_to_angle_vec3 :: proc(q: ^quaternion_t, angle: ^f32, axis: [^]vec3_t) ---

    @(link_name = "graphene_quaternion_equal")
    quaternion_equal :: proc(a: ^quaternion_t, b: ^quaternion_t) -> b8 ---

    @(link_name = "graphene_quaternion_dot")
    quaternion_dot :: proc(a: ^quaternion_t, b: ^quaternion_t) -> f32 ---

    @(link_name = "graphene_quaternion_invert")
    quaternion_invert :: proc(q: ^quaternion_t, res: [^]quaternion_t) ---

    @(link_name = "graphene_quaternion_normalize")
    quaternion_normalize :: proc(q: ^quaternion_t, res: [^]quaternion_t) ---

    @(link_name = "graphene_quaternion_slerp")
    quaternion_slerp :: proc(a: ^quaternion_t, b: ^quaternion_t, factor: f32, res: [^]quaternion_t) ---

    @(link_name = "graphene_quaternion_multiply")
    quaternion_multiply :: proc(a: ^quaternion_t, b: ^quaternion_t, res: [^]quaternion_t) ---

    @(link_name = "graphene_quaternion_scale")
    quaternion_scale :: proc(q: ^quaternion_t, factor: f32, res: [^]quaternion_t) ---

    @(link_name = "graphene_quaternion_add")
    quaternion_add :: proc(a: ^quaternion_t, b: ^quaternion_t, res: [^]quaternion_t) ---

    @(link_name = "graphene_euler_alloc")
    euler_alloc :: proc() -> ^euler_t ---

    @(link_name = "graphene_euler_free")
    euler_free :: proc(e: ^euler_t) ---

    @(link_name = "graphene_euler_init")
    euler_init :: proc(e: ^euler_t, x: f32, y: f32, z: f32) -> ^euler_t ---

    @(link_name = "graphene_euler_init_with_order")
    euler_init_with_order :: proc(e: ^euler_t, x: f32, y: f32, z: f32, order: euler_order_t) -> ^euler_t ---

    @(link_name = "graphene_euler_init_from_matrix")
    euler_init_from_matrix :: proc(e: ^euler_t, m: ^matrix_t, order: euler_order_t) -> ^euler_t ---

    @(link_name = "graphene_euler_init_from_quaternion")
    euler_init_from_quaternion :: proc(e: ^euler_t, q: ^quaternion_t, order: euler_order_t) -> ^euler_t ---

    @(link_name = "graphene_euler_init_from_vec3")
    euler_init_from_vec3 :: proc(e: ^euler_t, v: ^vec3_t, order: euler_order_t) -> ^euler_t ---

    @(link_name = "graphene_euler_init_from_euler")
    euler_init_from_euler :: proc(e: ^euler_t, src: ^euler_t) -> ^euler_t ---

    @(link_name = "graphene_euler_init_from_radians")
    euler_init_from_radians :: proc(e: ^euler_t, x: f32, y: f32, z: f32, order: euler_order_t) -> ^euler_t ---

    @(link_name = "graphene_euler_equal")
    euler_equal :: proc(a: ^euler_t, b: ^euler_t) -> b8 ---

    @(link_name = "graphene_euler_get_x")
    euler_get_x :: proc(e: ^euler_t) -> f32 ---

    @(link_name = "graphene_euler_get_y")
    euler_get_y :: proc(e: ^euler_t) -> f32 ---

    @(link_name = "graphene_euler_get_z")
    euler_get_z :: proc(e: ^euler_t) -> f32 ---

    @(link_name = "graphene_euler_get_order")
    euler_get_order :: proc(e: ^euler_t) -> euler_order_t ---

    @(link_name = "graphene_euler_get_alpha")
    euler_get_alpha :: proc(e: ^euler_t) -> f32 ---

    @(link_name = "graphene_euler_get_beta")
    euler_get_beta :: proc(e: ^euler_t) -> f32 ---

    @(link_name = "graphene_euler_get_gamma")
    euler_get_gamma :: proc(e: ^euler_t) -> f32 ---

    @(link_name = "graphene_euler_to_vec3")
    euler_to_vec3 :: proc(e: ^euler_t, res: [^]vec3_t) ---

    @(link_name = "graphene_euler_to_matrix")
    euler_to_matrix :: proc(e: ^euler_t, res: [^]matrix_t) ---

    @(link_name = "graphene_euler_to_quaternion")
    euler_to_quaternion :: proc(e: ^euler_t, res: [^]quaternion_t) ---

    @(link_name = "graphene_euler_reorder")
    euler_reorder :: proc(e: ^euler_t, order: euler_order_t, res: [^]euler_t) ---

    @(link_name = "graphene_plane_alloc")
    plane_alloc :: proc() -> ^plane_t ---

    @(link_name = "graphene_plane_free")
    plane_free :: proc(p: ^plane_t) ---

    @(link_name = "graphene_plane_init")
    plane_init :: proc(p: ^plane_t, normal: ^vec3_t, constant: f32) -> ^plane_t ---

    @(link_name = "graphene_plane_init_from_vec4")
    plane_init_from_vec4 :: proc(p: ^plane_t, src: ^vec4_t) -> ^plane_t ---

    @(link_name = "graphene_plane_init_from_plane")
    plane_init_from_plane :: proc(p: ^plane_t, src: ^plane_t) -> ^plane_t ---

    @(link_name = "graphene_plane_init_from_point")
    plane_init_from_point :: proc(p: ^plane_t, normal: ^vec3_t, point: ^point3d_t) -> ^plane_t ---

    @(link_name = "graphene_plane_init_from_points")
    plane_init_from_points :: proc(p: ^plane_t, a: ^point3d_t, b: ^point3d_t, c: ^point3d_t) -> ^plane_t ---

    @(link_name = "graphene_plane_normalize")
    plane_normalize :: proc(p: ^plane_t, res: [^]plane_t) ---

    @(link_name = "graphene_plane_negate")
    plane_negate :: proc(p: ^plane_t, res: [^]plane_t) ---

    @(link_name = "graphene_plane_equal")
    plane_equal :: proc(a: ^plane_t, b: ^plane_t) -> b8 ---

    @(link_name = "graphene_plane_distance")
    plane_distance :: proc(p: ^plane_t, point: ^point3d_t) -> f32 ---

    @(link_name = "graphene_plane_get_normal")
    plane_get_normal :: proc(p: ^plane_t, normal: ^vec3_t) ---

    @(link_name = "graphene_plane_get_constant")
    plane_get_constant :: proc(p: ^plane_t) -> f32 ---

    @(link_name = "graphene_plane_transform")
    plane_transform :: proc(p: ^plane_t, matrix_p: ^matrix_t, normal_matrix: ^matrix_t, res: [^]plane_t) ---

    @(link_name = "graphene_frustum_alloc")
    frustum_alloc :: proc() -> ^frustum_t ---

    @(link_name = "graphene_frustum_free")
    frustum_free :: proc(f: ^frustum_t) ---

    @(link_name = "graphene_frustum_init")
    frustum_init :: proc(f: ^frustum_t, p0: ^plane_t, p1: ^plane_t, p2: ^plane_t, p3: ^plane_t, p4: ^plane_t, p5: ^plane_t) -> ^frustum_t ---

    @(link_name = "graphene_frustum_init_from_frustum")
    frustum_init_from_frustum :: proc(f: ^frustum_t, src: ^frustum_t) -> ^frustum_t ---

    @(link_name = "graphene_frustum_init_from_matrix")
    frustum_init_from_matrix :: proc(f: ^frustum_t, matrix_p: ^matrix_t) -> ^frustum_t ---

    @(link_name = "graphene_frustum_contains_point")
    frustum_contains_point :: proc(f: ^frustum_t, point: ^point3d_t) -> b8 ---

    @(link_name = "graphene_frustum_intersects_sphere")
    frustum_intersects_sphere :: proc(f: ^frustum_t, sphere: ^sphere_t) -> b8 ---

    @(link_name = "graphene_frustum_intersects_box")
    frustum_intersects_box :: proc(f: ^frustum_t, box: ^box_t) -> b8 ---

    @(link_name = "graphene_frustum_get_planes")
    frustum_get_planes :: proc(f: ^frustum_t, planes: [^]plane_t) ---

    @(link_name = "graphene_frustum_equal")
    frustum_equal :: proc(a: ^frustum_t, b: ^frustum_t) -> b8 ---

    @(link_name = "graphene_sphere_alloc")
    sphere_alloc :: proc() -> ^sphere_t ---

    @(link_name = "graphene_sphere_free")
    sphere_free :: proc(s: ^sphere_t) ---

    @(link_name = "graphene_sphere_init")
    sphere_init :: proc(s: ^sphere_t, center: ^point3d_t, radius: f32) -> ^sphere_t ---

    @(link_name = "graphene_sphere_init_from_points")
    sphere_init_from_points :: proc(s: ^sphere_t, n_points: u32, points: [^]point3d_t, center: ^point3d_t) -> ^sphere_t ---

    @(link_name = "graphene_sphere_init_from_vectors")
    sphere_init_from_vectors :: proc(s: ^sphere_t, n_vectors: u32, vectors: [^]vec3_t, center: ^point3d_t) -> ^sphere_t ---

    @(link_name = "graphene_sphere_get_center")
    sphere_get_center :: proc(s: ^sphere_t, center: ^point3d_t) ---

    @(link_name = "graphene_sphere_get_radius")
    sphere_get_radius :: proc(s: ^sphere_t) -> f32 ---

    @(link_name = "graphene_sphere_is_empty")
    sphere_is_empty :: proc(s: ^sphere_t) -> b8 ---

    @(link_name = "graphene_sphere_equal")
    sphere_equal :: proc(a: ^sphere_t, b: ^sphere_t) -> b8 ---

    @(link_name = "graphene_sphere_contains_point")
    sphere_contains_point :: proc(s: ^sphere_t, point: ^point3d_t) -> b8 ---

    @(link_name = "graphene_sphere_distance")
    sphere_distance :: proc(s: ^sphere_t, point: ^point3d_t) -> f32 ---

    @(link_name = "graphene_sphere_get_bounding_box")
    sphere_get_bounding_box :: proc(s: ^sphere_t, box: ^box_t) ---

    @(link_name = "graphene_sphere_translate")
    sphere_translate :: proc(s: ^sphere_t, point: ^point3d_t, res: [^]sphere_t) ---

    @(link_name = "graphene_box_alloc")
    box_alloc :: proc() -> ^box_t ---

    @(link_name = "graphene_box_free")
    box_free :: proc(box: ^box_t) ---

    @(link_name = "graphene_box_init")
    box_init :: proc(box: ^box_t, min: ^point3d_t, max: ^point3d_t) -> ^box_t ---

    @(link_name = "graphene_box_init_from_points")
    box_init_from_points :: proc(box: ^box_t, n_points: u32, points: [^]point3d_t) -> ^box_t ---

    @(link_name = "graphene_box_init_from_vectors")
    box_init_from_vectors :: proc(box: ^box_t, n_vectors: u32, vectors: [^]vec3_t) -> ^box_t ---

    @(link_name = "graphene_box_init_from_box")
    box_init_from_box :: proc(box: ^box_t, src: ^box_t) -> ^box_t ---

    @(link_name = "graphene_box_init_from_vec3")
    box_init_from_vec3 :: proc(box: ^box_t, min: ^vec3_t, max: ^vec3_t) -> ^box_t ---

    @(link_name = "graphene_box_expand")
    box_expand :: proc(box: ^box_t, point: ^point3d_t, res: [^]box_t) ---

    @(link_name = "graphene_box_expand_vec3")
    box_expand_vec3 :: proc(box: ^box_t, vec: ^vec3_t, res: [^]box_t) ---

    @(link_name = "graphene_box_expand_scalar")
    box_expand_scalar :: proc(box: ^box_t, scalar: f32, res: [^]box_t) ---

    @(link_name = "graphene_box_union")
    box_union :: proc(a: ^box_t, b: ^box_t, res: [^]box_t) ---

    @(link_name = "graphene_box_intersection")
    box_intersection :: proc(a: ^box_t, b: ^box_t, res: [^]box_t) -> b8 ---

    @(link_name = "graphene_box_get_width")
    box_get_width :: proc(box: ^box_t) -> f32 ---

    @(link_name = "graphene_box_get_height")
    box_get_height :: proc(box: ^box_t) -> f32 ---

    @(link_name = "graphene_box_get_depth")
    box_get_depth :: proc(box: ^box_t) -> f32 ---

    @(link_name = "graphene_box_get_size")
    box_get_size :: proc(box: ^box_t, size: ^vec3_t) ---

    @(link_name = "graphene_box_get_center")
    box_get_center :: proc(box: ^box_t, center: ^point3d_t) ---

    @(link_name = "graphene_box_get_min")
    box_get_min :: proc(box: ^box_t, min: ^point3d_t) ---

    @(link_name = "graphene_box_get_max")
    box_get_max :: proc(box: ^box_t, max: ^point3d_t) ---

    @(link_name = "graphene_box_get_vertices")
    box_get_vertices :: proc(box: ^box_t, vertices: [^]vec3_t) ---

    @(link_name = "graphene_box_get_bounding_sphere")
    box_get_bounding_sphere :: proc(box: ^box_t, sphere: ^sphere_t) ---

    @(link_name = "graphene_box_contains_point")
    box_contains_point :: proc(box: ^box_t, point: ^point3d_t) -> b8 ---

    @(link_name = "graphene_box_contains_box")
    box_contains_box :: proc(a: ^box_t, b: ^box_t) -> b8 ---

    @(link_name = "graphene_box_equal")
    box_equal :: proc(a: ^box_t, b: ^box_t) -> b8 ---

    @(link_name = "graphene_box_zero")
    box_zero :: proc() -> ^box_t ---

    @(link_name = "graphene_box_one")
    box_one :: proc() -> ^box_t ---

    @(link_name = "graphene_box_minus_one")
    box_minus_one :: proc() -> ^box_t ---

    @(link_name = "graphene_box_one_minus_one")
    box_one_minus_one :: proc() -> ^box_t ---

    @(link_name = "graphene_box_infinite")
    box_infinite :: proc() -> ^box_t ---

    @(link_name = "graphene_box_empty")
    box_empty :: proc() -> ^box_t ---

    @(link_name = "graphene_triangle_alloc")
    triangle_alloc :: proc() -> ^triangle_t ---

    @(link_name = "graphene_triangle_free")
    triangle_free :: proc(t: ^triangle_t) ---

    @(link_name = "graphene_triangle_init_from_point3d")
    triangle_init_from_point3d :: proc(t: ^triangle_t, a: ^point3d_t, b: ^point3d_t, c: ^point3d_t) -> ^triangle_t ---

    @(link_name = "graphene_triangle_init_from_vec3")
    triangle_init_from_vec3 :: proc(t: ^triangle_t, a: ^vec3_t, b: ^vec3_t, c: ^vec3_t) -> ^triangle_t ---

    @(link_name = "graphene_triangle_init_from_float")
    triangle_init_from_float :: proc(t: ^triangle_t, a: ^f32, b: ^f32, c: ^f32) -> ^triangle_t ---

    @(link_name = "graphene_triangle_get_points")
    triangle_get_points :: proc(t: ^triangle_t, a: ^point3d_t, b: ^point3d_t, c: ^point3d_t) ---

    @(link_name = "graphene_triangle_get_vertices")
    triangle_get_vertices :: proc(t: ^triangle_t, a: ^vec3_t, b: ^vec3_t, c: ^vec3_t) ---

    @(link_name = "graphene_triangle_get_area")
    triangle_get_area :: proc(t: ^triangle_t) -> f32 ---

    @(link_name = "graphene_triangle_get_midpoint")
    triangle_get_midpoint :: proc(t: ^triangle_t, res: [^]point3d_t) ---

    @(link_name = "graphene_triangle_get_normal")
    triangle_get_normal :: proc(t: ^triangle_t, res: [^]vec3_t) ---

    @(link_name = "graphene_triangle_get_plane")
    triangle_get_plane :: proc(t: ^triangle_t, res: [^]plane_t) ---

    @(link_name = "graphene_triangle_get_bounding_box")
    triangle_get_bounding_box :: proc(t: ^triangle_t, res: [^]box_t) ---

    @(link_name = "graphene_triangle_get_barycoords")
    triangle_get_barycoords :: proc(t: ^triangle_t, p: ^point3d_t, res: [^]vec2_t) -> b8 ---

    @(link_name = "graphene_triangle_get_uv")
    triangle_get_uv :: proc(t: ^triangle_t, p: ^point3d_t, uv_a: ^vec2_t, uv_b: ^vec2_t, uv_c: ^vec2_t, res: [^]vec2_t) -> b8 ---

    @(link_name = "graphene_triangle_contains_point")
    triangle_contains_point :: proc(t: ^triangle_t, p: ^point3d_t) -> b8 ---

    @(link_name = "graphene_triangle_equal")
    triangle_equal :: proc(a: ^triangle_t, b: ^triangle_t) -> b8 ---

    @(link_name = "graphene_ray_alloc")
    ray_alloc :: proc() -> ^ray_t ---

    @(link_name = "graphene_ray_free")
    ray_free :: proc(r: ^ray_t) ---

    @(link_name = "graphene_ray_init")
    ray_init :: proc(r: ^ray_t, origin: ^point3d_t, direction: ^vec3_t) -> ^ray_t ---

    @(link_name = "graphene_ray_init_from_ray")
    ray_init_from_ray :: proc(r: ^ray_t, src: ^ray_t) -> ^ray_t ---

    @(link_name = "graphene_ray_init_from_vec3")
    ray_init_from_vec3 :: proc(r: ^ray_t, origin: ^vec3_t, direction: ^vec3_t) -> ^ray_t ---

    @(link_name = "graphene_ray_get_origin")
    ray_get_origin :: proc(r: ^ray_t, origin: ^point3d_t) ---

    @(link_name = "graphene_ray_get_direction")
    ray_get_direction :: proc(r: ^ray_t, direction: ^vec3_t) ---

    @(link_name = "graphene_ray_get_position_at")
    ray_get_position_at :: proc(r: ^ray_t, t: f32, position: ^point3d_t) ---

    @(link_name = "graphene_ray_get_distance_to_point")
    ray_get_distance_to_point :: proc(r: ^ray_t, p: ^point3d_t) -> f32 ---

    @(link_name = "graphene_ray_get_distance_to_plane")
    ray_get_distance_to_plane :: proc(r: ^ray_t, p: ^plane_t) -> f32 ---

    @(link_name = "graphene_ray_equal")
    ray_equal :: proc(a: ^ray_t, b: ^ray_t) -> b8 ---

    @(link_name = "graphene_ray_get_closest_point_to_point")
    ray_get_closest_point_to_point :: proc(r: ^ray_t, p: ^point3d_t, res: [^]point3d_t) ---

    @(link_name = "graphene_ray_intersect_sphere")
    ray_intersect_sphere :: proc(r: ^ray_t, s: ^sphere_t, t_out: ^f32) -> ray_intersection_kind_t ---

    @(link_name = "graphene_ray_intersects_sphere")
    ray_intersects_sphere :: proc(r: ^ray_t, s: ^sphere_t) -> b8 ---

    @(link_name = "graphene_ray_intersect_box")
    ray_intersect_box :: proc(r: ^ray_t, b: ^box_t, t_out: ^f32) -> ray_intersection_kind_t ---

    @(link_name = "graphene_ray_intersects_box")
    ray_intersects_box :: proc(r: ^ray_t, b: ^box_t) -> b8 ---

    @(link_name = "graphene_ray_intersect_triangle")
    ray_intersect_triangle :: proc(r: ^ray_t, t: ^triangle_t, t_out: ^f32) -> ray_intersection_kind_t ---

    @(link_name = "graphene_ray_intersects_triangle")
    ray_intersects_triangle :: proc(r: ^ray_t, t: ^triangle_t) -> b8 ---

    @(link_name = "graphene_simd4f_madd_wrapper")
    simd4f_madd :: proc(m1: simd4f_t, m2: simd4f_t, a: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_sum_wrapper")
    simd4f_sum :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_sum_scalar_wrapper")
    simd4f_sum_scalar :: proc(v: simd4f_t) -> f32 ---

    @(link_name = "graphene_simd4f_dot4_wrapper")
    simd4f_dot4 :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_dot2_wrapper")
    simd4f_dot2 :: proc(a: simd4f_t, b: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_length4_wrapper")
    simd4f_length4 :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_length3_wrapper")
    simd4f_length3 :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_length2_wrapper")
    simd4f_length2 :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_normalize4_wrapper")
    simd4f_normalize4 :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_normalize3_wrapper")
    simd4f_normalize3 :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_normalize2_wrapper")
    simd4f_normalize2 :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_is_zero4_wrapper")
    simd4f_is_zero4 :: proc(v: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_is_zero3_wrapper")
    simd4f_is_zero3 :: proc(v: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_is_zero2_wrapper")
    simd4f_is_zero2 :: proc(v: simd4f_t) -> b8 ---

    @(link_name = "graphene_simd4f_interpolate_wrapper")
    simd4f_interpolate :: proc(a: simd4f_t, b: simd4f_t, f: f32) -> simd4f_t ---

    @(link_name = "graphene_simd4f_clamp_wrapper")
    simd4f_clamp :: proc(v: simd4f_t, min: simd4f_t, max: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_clamp_scalar_wrapper")
    simd4f_clamp_scalar :: proc(v: simd4f_t, min: f32, max: f32) -> simd4f_t ---

    @(link_name = "graphene_simd4f_min_val_wrapper")
    simd4f_min_val :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4f_max_val_wrapper")
    simd4f_max_val :: proc(v: simd4f_t) -> simd4f_t ---

    @(link_name = "graphene_simd4x4f_init_wrapper")
    simd4x4f_init :: proc(x: simd4f_t, y: simd4f_t, z: simd4f_t, w: simd4f_t) -> simd4x4f_t ---

    @(link_name = "graphene_simd4x4f_init_identity_wrapper")
    simd4x4f_init_identity :: proc(m: ^simd4x4f_t) ---

    @(link_name = "graphene_simd4x4f_init_from_float_wrapper")
    simd4x4f_init_from_float :: proc(m: ^simd4x4f_t, f: ^f32) ---

    @(link_name = "graphene_simd4x4f_to_float_wrapper")
    simd4x4f_to_float :: proc(m: ^simd4x4f_t, v: ^f32) ---

    @(link_name = "graphene_simd4x4f_sum_wrapper")
    simd4x4f_sum :: proc(a: ^simd4x4f_t, res: [^]simd4f_t) ---

    @(link_name = "graphene_simd4x4f_vec4_mul_wrapper")
    simd4x4f_vec4_mul :: proc(a: ^simd4x4f_t, b: ^simd4f_t, res: [^]simd4f_t) ---

    @(link_name = "graphene_simd4x4f_vec3_mul_wrapper")
    simd4x4f_vec3_mul :: proc(m: ^simd4x4f_t, v: ^simd4f_t, res: [^]simd4f_t) ---

    @(link_name = "graphene_simd4x4f_point3_mul_wrapper")
    simd4x4f_point3_mul :: proc(m: ^simd4x4f_t, p: ^simd4f_t, res: [^]simd4f_t) ---

    @(link_name = "graphene_simd4x4f_transpose_wrapper")
    simd4x4f_transpose :: proc(s: ^simd4x4f_t, res: [^]simd4x4f_t) ---

    @(link_name = "graphene_simd4x4f_inv_ortho_vec3_mul_wrapper")
    simd4x4f_inv_ortho_vec3_mul :: proc(a: ^simd4x4f_t, b: ^simd4f_t, res: [^]simd4f_t) ---

    @(link_name = "graphene_simd4x4f_inv_ortho_point3_mul_wrapper")
    simd4x4f_inv_ortho_point3_mul :: proc(a: ^simd4x4f_t, b: ^simd4f_t, res: [^]simd4f_t) ---

    @(link_name = "graphene_simd4x4f_matrix_mul_wrapper")
    simd4x4f_matrix_mul :: proc(a: ^simd4x4f_t, b: ^simd4x4f_t, res: [^]simd4x4f_t) ---

    @(link_name = "graphene_simd4x4f_init_perspective_wrapper")
    simd4x4f_init_perspective :: proc(m: ^simd4x4f_t, fovy_rad: f32, aspect: f32, z_near: f32, z_far: f32) ---

    @(link_name = "graphene_simd4x4f_init_ortho_wrapper")
    simd4x4f_init_ortho :: proc(m: ^simd4x4f_t, left: f32, right: f32, bottom: f32, top: f32, z_near: f32, z_far: f32) ---

    @(link_name = "graphene_simd4x4f_init_look_at_wrapper")
    simd4x4f_init_look_at :: proc(m: ^simd4x4f_t, eye: simd4f_t, center: simd4f_t, up: simd4f_t) ---

    @(link_name = "graphene_simd4x4f_init_frustum_wrapper")
    simd4x4f_init_frustum :: proc(m: ^simd4x4f_t, left: f32, right: f32, bottom: f32, top: f32, z_near: f32, z_far: f32) ---

    @(link_name = "graphene_simd4x4f_perspective_wrapper")
    simd4x4f_perspective :: proc(m: ^simd4x4f_t, depth: f32) ---

    @(link_name = "graphene_simd4x4f_translation_wrapper")
    simd4x4f_translation :: proc(m: ^simd4x4f_t, x: f32, y: f32, z: f32) ---

    @(link_name = "graphene_simd4x4f_scale_wrapper")
    simd4x4f_scale :: proc(m: ^simd4x4f_t, x: f32, y: f32, z: f32) ---

    @(link_name = "graphene_simd4x4f_rotation_wrapper")
    simd4x4f_rotation :: proc(m: ^simd4x4f_t, rad: f32, axis: simd4f_t) ---

    @(link_name = "graphene_simd4x4f_add_wrapper")
    simd4x4f_add :: proc(a: ^simd4x4f_t, b: ^simd4x4f_t, res: [^]simd4x4f_t) ---

    @(link_name = "graphene_simd4x4f_sub_wrapper")
    simd4x4f_sub :: proc(a: ^simd4x4f_t, b: ^simd4x4f_t, res: [^]simd4x4f_t) ---

    @(link_name = "graphene_simd4x4f_mul_wrapper")
    simd4x4f_mul :: proc(a: ^simd4x4f_t, b: ^simd4x4f_t, res: [^]simd4x4f_t) ---

    @(link_name = "graphene_simd4x4f_div_wrapper")
    simd4x4f_div :: proc(a: ^simd4x4f_t, b: ^simd4x4f_t, res: [^]simd4x4f_t) ---

    @(link_name = "graphene_simd4x4f_inverse_wrapper")
    simd4x4f_inverse :: proc(m: ^simd4x4f_t, res: [^]simd4x4f_t) -> b8 ---

    @(link_name = "graphene_simd4x4f_determinant_wrapper")
    simd4x4f_determinant :: proc(m: ^simd4x4f_t, det_r: ^simd4f_t, invdet_r: ^simd4f_t) ---

    @(link_name = "graphene_simd4x4f_is_identity_wrapper")
    simd4x4f_is_identity :: proc(m: ^simd4x4f_t) -> b8 ---

    @(link_name = "graphene_simd4x4f_is_2d_wrapper")
    simd4x4f_is_2d :: proc(m: ^simd4x4f_t) -> b8 ---

}

when (ODIN_ARCH == .amd64) {

when #config(GRAPHENE_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import graphene_runic { "../lib/linux/x86_64/libgraphene-1.0.a", "../lib/linux/x86_64/libgraphene-wrapper.a" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .amd64) {
    foreign import graphene_runic { "system:graphene-1.0", "../lib/linux/x86_64/libgraphene-wrapper.a" }
} 
}

}

when (ODIN_ARCH == .arm64) {

when #config(GRAPHENE_STATIC, false) {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import graphene_runic { "../lib/linux/aarch64/libgraphene-1.0.a", "../lib/linux/aarch64/libgraphene-wrapper.a" }
} 
} else {
    when (ODIN_OS == .Linux) && (ODIN_ARCH == .arm64) {
    foreign import graphene_runic { "system:graphene-1.0", "../lib/linux/aarch64/libgraphene-wrapper.a" }
} 
}

}

