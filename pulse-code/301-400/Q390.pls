~KAUSTUV
var side_a = 24
var side_b = 7
var side_c = (side_a^2 + side_b^2)^1/2
var radius = 25/2
var area_semicircle = 1/2*22/7*radius^2
var area_triangle = 1/2*side_a*side_b
var area_shaded = area_semicircle-area_triangle
print(area_shaded)
