~KAUSTUV
var radius_circle = 6
var equi_side = 12
var angle_doe = 60
var area = 22/7*radius_circle^2
var area_equi_triangle = (3^1/2)/4*equi_side^2
var area_sector = angle_doe/360*22/7*radius_circle^2
var area_shaded_region = area+area_equi_triangle-area_sector
print(area_shaded_region)
