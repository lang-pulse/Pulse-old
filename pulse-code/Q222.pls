~Siddhartha
var diameter = 1.4
var radius = diameter / 2
var height = 2.4
var csa_cylinder = 2 * (22 / 7) * radius * height
var area_cylinder_base = (22 / 7) * (radius ^ 2)
var radius_cone = radius
var height_cone = height
var slant_height_cone = ((height_cone ^ 2) + (radius_cone ^ 2)) ^ (0.5)
var csa_cone = (22 / 7) * radius_cone * slant_height_cone
var total_sa = csa_cylinder + area_cylinder_base + csa_cone
print(total_sa, " cm2")
