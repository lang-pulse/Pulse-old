~Siddhartha
var length_of_solid = 108
var diameter_hemi_ends = 36
var radius_hemi_ends = diameter_hemi_ends / 2
var height_cylinder_comp = length_of_solid - 2 * radius_hemi_ends
print("The height of the cylinder = ", height_cylinder_comp)
print(" cm")
var csa_of_solid_obj = 2 * (22/7) * radius_hemi_ends * height_cylinder_comp + 2 * 2 * (22/7) * radius_hemi_ends^2
print("CSA of the solid object = ", csa_of_solid_obj)
print(" cm")
var cost_of_prod = (csa_of_solid_obj * 70) / 100
print("Cost of production = Rs.", cost_of_prod)
