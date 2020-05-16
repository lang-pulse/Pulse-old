~Siddhartha
var radius = 3.5
var height_cylinder = 10
var csa_cylinder = 2 * (22 / 7) * radius * height_cylinder
var r_hemisphere = 3.5
var sa_hemisphere = 2 * (22 / 7) * (radius ^ 2)
var sa_2_hemisphere = 2 * sa_hemisphere
var tsa_object = csa_cylinder + sa_2_hemisphere
print(tsa_object, " cm2")
