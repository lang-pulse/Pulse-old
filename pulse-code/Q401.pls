~ Harishankar 
var pi=3.14
var radius = 3.5
var sector_angle = 90
var area_sector = sector_angle/360 * pi * radius^2
var base = 3.5
var height =2
var area_triangle = 1/2*base*height
var area_shaded_region
area_shaded_region = area_sector - area_triangle
print("Area of the shaded region:")
print(area_shaded_region )
