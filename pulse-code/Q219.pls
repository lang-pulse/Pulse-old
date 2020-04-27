~Siddhartha
var r_cone = 3.5
var r_hemisphere = 3.5
var total_length = 15.5
var cone_length = total_length - r_hemisphere
var surface_area_hemisphere = 2 * (22 / 7) * (3.5 ^ 2)
var slant_height_cone = ((cone_length ^ 2) + (r_cone ^ 2))^(0.5)
var surface_area_cone = (22 / 7) * r_cone * slant_height_cone
var total_surface_area = surface_area_hemisphere + surface_area_cone
print(total_surface_area, " cm2")
