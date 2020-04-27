~Barath
var dc=1.75
var rc
var hc=2
var hccm
var l=5.5
var b=10
var h=3.5
var n
var volc
var volcube
hccm=hc/10
rc=dc/2
volc=3.14*hccm*(rc^2)
volcube=l*b*h
n=volcube/volc
n=n*10
n=n//10
print("the diameter of the coin is: ",dc)
print(" cm")
print("the radius of the coin is: ",rc)
print(" cm")
print("the height of the coin in cm: ",hccm)
print(" cm")
print("the volume of the coin is: ",volc)
print(" cm.cb")
print("the length of the cuboid is: ",l)
print(" cm")
print("the width of the cuboid is: ",b)
print(" cm")
print("the height of the cuboid is: ",h)
print(" cm")
print("the volume of the cuboid is: ",volcube)
print(" cm.cb")
print("Therefore, the number of coins required to form the cuboid is: ",n)
print(" coins")
