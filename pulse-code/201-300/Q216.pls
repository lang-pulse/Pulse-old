~Barath
var side1=3
var side2=4
var hypotenuse
var height1
var height2
var rad 
var csa1
var csa2
var total_csa
var vol1
var vol2
var total_vol
var area1
hypotenuse=((side1^2)+(side2^2))^(1/2)
area1=(0.5)*3*4
rad=area1/((0.5)*hypotenuse)
height1=((side1^2)-(rad^2))^(0.5)
height2=((side2^2)-(rad^2))^(0.5)
csa1=3.14*rad*side1
csa2=3.14*rad*side2
total_csa=csa1+csa2
vol1=(1/3)*3.14*height1*(rad^2)
vol2=(1/3)*3.14*height2*(rad^2)
total_vol=vol1+vol2
print("the slant height of cone 1 is: ",side1)
print(" cm")
print("the height of cone 1 is: ",height1)
print(" cm")
print("the slant height of cone 2 is: ",side2)
print(" cm")
print("the height cone 2 is: ",height2)
print(" cm")
print("the common radius is: ",rad)
print(" cm")
print("the curved surface area of cone 1 is: ",csa1)
print(" cm.sq")
print("the curved surface area of cone 2 is: ",csa2)
print(" cm.sq")
print("the volume of cone 1 is: ",vol1)
print(" cm.cb")
print("the volume of cone 2 is: ",vol2)
print(" cm.cb")
print("Therefore, the curved surface area of the double cone is: ",total_csa)
print(" cm.sq")
print("Therefore, the volume of the double cone is: ",total_vol)
print(" cm.cb")
