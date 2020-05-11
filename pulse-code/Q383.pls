~KAUSTUV
var radius = 12
var theta = 120
var pi = 3.14
var number = 1.73
var base = 12*number
var height = 6
var area_sector = theta/360*pi*radius^2
var area_triangle = 1/2*base*height
var area_segment = area_sector-area_triangle
print(area_segment)
