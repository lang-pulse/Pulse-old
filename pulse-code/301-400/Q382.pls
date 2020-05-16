~ Harishankar
var radius=15
var theta = 60
var pi = 3.14
var area_circle
var area_sector
var area_triangle
var area_minor_segment
var area_major_segment
area_sector = pi * radius^2 * (theta/360)
area_triangle = 1/2 * radius^2 * 1.73/2
area_minor_segment = area_sector - area_triangle
area_circle = pi*radius^2
area_major_segment = area_circle - area_minor_segment
print("Area of minor segment is:")
print(area_minor_segment)
print("Area of major segment is:")
print(area_major_segment)
