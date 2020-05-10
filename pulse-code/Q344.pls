~Barath
var well_dia=3
var well_rad
var well_d=14
var well_vol
well_rad=well_dia/2
well_vol=3.14*well_d*(well_rad^2)
var internal_rad=well_rad
var external_rad
var embank_w=4
var rad_sum
var embank_vol
var embank_height
external_rad=internal_rad+embank_w
rad_sum=(external_rad^2)-(internal_rad^2)
embank_vol=3.14*rad_sum
embank_height=well_vol/embank_vol
print("The radius of the well is: ",well_rad)
print(" m")
print("The depth of the well is: ",well_d)
print(" m")
print("The volume of the well is: ",well_vol)
print(" m.cb")
print("The width of the embankment is: ",embank_w)
print(" m")
print("Therefore, the height of the embankment is: ",embank_height)
print(" m")
