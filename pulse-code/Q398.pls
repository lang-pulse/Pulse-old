~ Harishankar
var pi= 3.14
var radius_big_circle = 7
var dia_small_circle = 7
var radius_small_circle =  dia_small_circle/2
var height_traingle = 7
var base_triangle = 14
var area_triangle = 1/2*base_triangle*height_traingle
var area_big_semicircle = 1/2*pi*radius_big_circle^2
var area_small_circle = pi*radius_small_circle^2
var area_shaded_region
area_shaded_region = area_small_circle +area_big_semicircle -area_triangle
print("Area of shaded region:")
print(area_shaded_region)
