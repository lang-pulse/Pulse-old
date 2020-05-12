~ Harishankar
var right_triangle_base = 3
var right_triangle_height = 4
var hypotunuse_AC = (right_triangle_base^2 + right_triangle_height^2)^(1/2)
var area_triangle = 1/2 *right_triangle_base *right_triangle_height
var radius_cone_base = area_triangle*2/5
var heights_of_cone = hypotunuse_AC
var vol_double_cone = 1/3 * 3.14 * radius_cone_base^2 *heights_of_cone
var surface_area_cone1 = 3.14 * radius_cone_base *right_triangle_base
var surface_area_cone2 = 3.14 * radius_cone_base * right_triangle_height
var surface_area_double_cone =surface_area_cone1 +surface_area_cone2
print("The volume of the resulting solid/double cone:")
print(vol_double_cone)
print("The surface area of the resulting solid/double cone:")
print(surface_area_double_cone)
