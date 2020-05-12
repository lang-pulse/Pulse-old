~ Harishankar
var pi = 3.14
var radius = 32
var cos_60 = 1/2
var cos_30 = 3^(1/2)/2
var area_circle= pi*radius^2
var angle_BOM = 1/2 * 120
var OM =radius*cos_60
var BM = radius*cos_30
var BC = 2*BM
var area_triangle_BOC = 1/2*BC*OM
var area_triangle_ABC = 3*area_triangle_BOC
var area_design 
area_design = area_circle -area_triangle_ABC
print("Area of design:")
print(area_design)
