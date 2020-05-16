~ Harishankar
var r1_upper = 20
var r2_lower = 8
var height = 16
var pi =3.14
var slantheight_frustum
slantheight_frustum  = ((r1_upper-r2_lower)^2 + height^2 )^(1/2)
var capacity_volume
capacity_volume = 1/3 * pi* height* (r1_upper^2 + r2_lower^2 + r1_upper*r2_lower)
var milk_cost_perlitre = 20
var milk_cost = 0.001 *capacity_volume *milk_cost_perlitre
var area_metalsheet
area_metalsheet = pi*(r1_upper + r2_lower)*slantheight_frustum + pi*r2_lower^2
var cost_100sqcm_metalsheet = 8
var cost_metalsheet = 624 * pi * 8 /100
print("the cost of the milk which can completely fill the container, at the rate of Rs.20 per litre:")
print(milk_cost)
print("cost of metal sheet used to make the container:")
print(cost_metalsheet)
