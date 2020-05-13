~KAUSTUV
var angle = 60
var radius = 21
var base = 21
var height = (3^1/2)/2*21
var length_arc = angle/360*2*22/7*radius
print(length_arc)
var area_sector = angle/360*22/7*radius^2
print(area_sector)
var area_triangle = 1/2*base*height
var area_segment = area_sector-area_triangle
print(area_segment)
