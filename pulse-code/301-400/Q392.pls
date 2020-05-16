~KAUSTUV
var side_square = 14
var area_square = side_square^2
var radius_semi_circle = 7
var area_semi_circle_apd = 1/2*22/7*radius_semi_circle^2
var area_semi_circle_bpc = area_semi_circle_apd
var area_shaded = area_square-area_semi_circle_apd-area_semi_circle_bpc
print(area_shaded)
