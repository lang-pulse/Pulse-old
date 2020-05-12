~ Harishankar
var pi = 3.14
var radius_quadrant  =14
var base_triangle = 14
var height_triangle = 14
var hypotunuse_triangle = (14^2 + 14^2 )^(1/2)
var radius_semicircle = hypotunuse_triangle/2
var area_semicircle = 1/2 * pi * radius_semicircle^2
var area_quadrant
area_quadrant = 1/4 * pi *radius_quadrant^2
var area_triangle = 1/2 * base_triangle * height_triangle
var area_shaded_region
area_shaded_region = area_semicircle - (area_quadrant - area_triangle)
print("Area of shaded region is:")
print(area_shaded_region)
