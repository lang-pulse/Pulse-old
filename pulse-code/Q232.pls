~KAUSTUV
var radius = 2.5
var height = 10
var pi = 3.14
var volume_of_hemisphere = 2/3*pi*radius^3
var apparent_capacity_of_glass = pi*radius^2*height
print("the apparent capacity of glass is " , apparent_capacity_of_glass)
var actual_capacity_of_glass = apparent_capacity_of_glass - volume_of_hemisphere
print("the actual capacity of glass " , actual_capacity_of_glass)
