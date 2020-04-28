~Barath
var canal_width=6
var canal_depth=1.5
var water_spd=10
var req_height=8
var time=30
var l_30min
var vol_canal
var area
l_30min=(time/60)*water_spd
l_30min=l_30min*1000
vol_canal=canal_width*canal_depth*l_30min
area=vol_canal/(req_height/100)
print("the width of the canal is: ",canal_width)
print(" m")
print("the depth of the canal is: ",canal_depth)
print(" m")
print("the speed of the canal is: ",water_spd)
print(" km/hr")
print("the length of the canal in 30 min: ",l_30min)
print(" m")
print("the required height of standing water is: ",req_height)
print(" cm")
print("the area irrigated by the canal is: ",area)
print(" m.sq")
