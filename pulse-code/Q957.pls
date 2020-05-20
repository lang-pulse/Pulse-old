~Siddhartha
var rad_cone_shape = 120
var height_cone_shape = 160
var slant_cone_shape = (rad_cone_shape^2 + height_cone_shape^2)^(1/2)
print("The slant height of the cone = ", slant_cone_shape)
print(" cm")
var rad_sphere_shape = ((rad_cone_shape * slant_cone_shape) / (4))^(1/2)
print("The radius of sphere = ", rad_sphere_shape)
print(" cm")
