~Siddhartha
var diameter_of_cylinder = 7
var radius_of_cylinder = diameter_of_cylinder / 2
var height_of_cylinder = 15
var radius_of_cone = 3
var height_of_cone = 4
var tsa_of_solid_cylinder = 2 * (22/7) * radius_of_cylinder * (radius_of_cylinder + height_of_cylinder)
print("The total surface area of the solid cylinder = ", tsa_of_solid_cylinder)
print(" cm2")
var area_base_both_cones = 2 * (22/7) * radius_of_cone^2
print("Area of base of both cones = ", area_base_both_cones)
print(" cm2")
var slant_height_of_cone = (height_of_cone^2 + radius_of_cone^2)^(1/2)
var csa_both_cones = 2 * (22/7) * radius_of_cone * slant_height_of_cone
print("The curved surface area of both cones = ", csa_both_cones)
print(" cm2")
var sa_rem_solid = tsa_of_solid_cylinder - area_base_both_cones + csa_both_cones
print("Surface area of the remaining solid cylinder = ", sa_rem_solid)
print(" cm2")
