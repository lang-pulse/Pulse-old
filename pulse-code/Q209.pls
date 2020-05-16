~Barath
var dc=12
var rc
var hc=15
var volcy
var hco=12
var dco=6
var rco
var volco
var volh
var volic
var n
rc=dc/2
rco=dco/2
volcy=3.14*hc*(rc^2)
volco=(1/3)*3.14*hco*(rco^2)
volh=(2/3)*3.14*(rco^3)
volic=volco+volh
n=volcy/volic
print("the height of the container is: ",hc)
print(" m")
print("the diameter of the container is: ",dc)
print(" m")
print("the radius of the container is: ",rc)
print(" m")
print("the volume of the container/amount of ice-cream is: ",volcy)
print(" m.cb")
print("the height of the ice cream cone is: ",hco)
print(" m")
print("the diameter of the ice cream cone is: ",dco)
print(" m")
print("the radius of the ice cream cone is: ",rco)
print(" m")
print("the volume of the conical part of the ice cream cone is: ",volco)
print(" m.cb")
print("the volume of the hemispherical part of the ice cream is: ",volh)
print(" m.cb")
print("Therefore, the volume of the ice cream cone is: ",volic)
print(" m.cb")
print("Hence the number of the cones that can be filled is: ",n)
print(" cones")
