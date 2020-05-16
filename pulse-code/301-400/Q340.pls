~ Harishankar
var pi=3.14
var side_cube = 7
var diameter_hemisphere = side_cube
var TSA_solid
var CSA_hemisphere
var TSA_cube
var area_base_hemisphere
TSA_cube = 6* side_cube^2
CSA_hemisphere = 2*pi* (diameter_hemisphere/2)^2
area_base_hemisphere = pi*(diameter_hemisphere/2)^2
TSA_solid = TSA_cube - area_base_hemisphere + CSA_hemisphere
print("The resulting total surface area of solid is:")
print(TSA_solid)
