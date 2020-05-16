~Barath
var rain_height=10
var valley_area=7280
var river_l=1072
var river_w=75
var river_d=3
var vol_rain
var vol_river
var totalvol_river
rain_height=rain_height/10^5
vol_rain=valley_area*rain_height
vol_rain=vol_rain*1000
vol_rain=vol_rain//10
vol_rain=vol_rain/100
river_w=river_w/10^3
river_d=river_d/10^3
vol_river=river_l*river_d*river_w
totalvol_river=3*vol_river
totalvol_river=totalvol_river*1000
totalvol_river=totalvol_river//10
totalvol_river=totalvol_river/100
print("the height of the rain is: ",rain_height)
print(" km")
print("the area of the valley is; ",valley_area)
print(" km.sq")
print("the volume of rain produced is: ",vol_rain)
print(" km.cb")
print("the length of the river is: ",river_l)
print(" km")
print("the width of the river is: ",river_w)
print(" km")
print("the depth of the river is: ",river_d)
print(" km")
print("the volume of one river is: ",vol_river)
print(" km.cb")
print("the volume of 3 rivers is: ",totalvol_river)
print(" km.cb")
print("Therefore, the volume of rain produced in a fortnight is equal to the volume of water in 3 rivers")
