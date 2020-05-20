~Pranshul
var v776 = 20
var t_opp = 6/60
var t_same = 18/60
#Using concept of relative velocity
var vbus776 =  (v776*t_same+v776*t_opp)/(t_same-t_opp)
print("The speed of bus = ",vbus776)
print("km/h")
var T776 = (vbus776-v776)*t_same/vbus776
print("Time taken by Bus = ","")
if(T776<1):
	print(T776*60," mins")
else :
	print(T776, "km/h")
