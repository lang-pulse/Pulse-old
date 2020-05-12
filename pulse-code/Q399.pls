~ Harishankar
var area_triangle = 17320.5
var pi = 3.14
var side
side = ((4 * area_triangle)/3^(1/2))^(1/2)
var radius = 200/2
var area_sector = 60/360 * pi * radius^2
var shaded_region
shaded_region = area_triangle - 3*area_sector
print("Area of shaded_region:")
print(shaded_region)
