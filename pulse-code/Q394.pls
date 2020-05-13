~KAUSTUV
var side = 4
var area_square = side^2
var radius_middle_circle = 1
var area_middle_circle = 22/7*radius_middle_circle^2
var quad_radius = 1
var area_quad = 1/4*22/7*quad_radius^2
var area_4_quad = 4*area_quad
var area_remaining = area_square-area_middle_circle-area_4_quad
print(area_remaining)
