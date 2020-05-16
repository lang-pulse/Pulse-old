~ Harishankar
var angle_theta = 30
var smaller_radius = 7
var bigger_radius = 21
var pi =3.14
var area_larger_sector = (30/360) * pi *  bigger_radius^2
var area_smaller_sector = (30/360) * pi *  smaller_radius^2
var area_shaded_region = area_larger_sector -area_smaller_sector
print("Area of shaded region:")
print(area_shaded_region)
