~Dhairya
var mb983 = 0.012
var ub983 = 70
var mw983 = 0.4
var ublock983 = 0
var vf983 = ((mb983*ub983)+(mw983*ublock983))/ (mb983+mw983)
var masssytm983 = mb983+mw983
var velsys983 = vf983
var g983 = 9.8
var pi983 = 3.14
var h983 = (velsys983^2)/ (2*g983)
var heat983 = (mb983*(ub983^2) - masssytm983*(velsys983^2))/ 2
print(heat983)
