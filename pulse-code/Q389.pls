~KAUSTUV
var radius = 28
var base = 28
var height = 14*1.7
var sum_angles = 360
var angle_made_one_design = sum_angles/6
var area_sector = (angle_made_one_design/360)*22/7*radius^2
var area_triangle = 1/2*base*height
var area_segment = area_sector-area_triangle
var area_design = 6*area_segment
var cost = 0.35
var cost1 = cost*area_design
print(cost1)
