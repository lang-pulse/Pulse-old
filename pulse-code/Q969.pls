~suryanshoo
var radius_cone300 = 3.5
var csa_hemisphere300 = "2*3.14*r^2"
var csa_hemisphere400 = (2*22*3.5*3.5)/7
var csa_cone300 = "3.14*rl"
var height_cone300 = 15.5
var height_cone400 = height_cone300-radius_cone300
var slant_height300 = "h^2 + r^2"
var slant_height400 = 25/2
var curved_area300 = (22*3.5*12.5)/7
var surface_areatoy = csa_hemisphere400+curved_area300
var volume_toy300 = (22*12*3.5*3.5)/7
print("Volume of the toy is:")
print(volume_toy300,"cm^3")
print("Hence, the total surface area is:")
print(surface_areatoy,"cm^2")
