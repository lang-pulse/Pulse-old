~ Harishankar
var radius = 8
var pi= 3.14
var side = radius
var area_square = side^2
var area_1_quadrant = 1/4 * pi * (radius)^2
var area_square_not_covered_by_1_quadrant = area_square -  area_1_quadrant
var area_shaded_region
area_shaded_region = area_square - 2*area_square_not_covered_by_1_quadrant
print("Area of shaded region :")
print(area_shaded_region)
