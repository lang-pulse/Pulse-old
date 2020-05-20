~Srivatsan
var Ffocal
Ffocal=25
var least_distanct_vision
least_distanct_vision=25
var v_imag
v_imag=-least_distanct_vision
var u_object
u_object=(v_imag*Ffocal)/(Ffocal-v_imag)
var closest_d
closest_d=u_object
print("Thus the closest Distance is")
print(closest_d)
print("MEtres m")
var farthest_u
farthest_u=-5
print("Thus the Farthest Distance is")
print(farthest_u)
print("mEtres m")
var maximum_angular
maximum_angular=least_distanct_vision/closest_d
print("Maximum Angular Magnification ")
print(maximum_angular)
var minimum_angular
minimum_angular=least_distanct_vision/-farthest_u
print("Minimum Angular Magnification ")
print(minimum_angular)
