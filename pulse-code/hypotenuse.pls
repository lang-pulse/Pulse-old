var a=3
var b=4
var c
var sqrt
c=(a^2)+(b^2)
sqrt=c/2
var temp=0
while(sqrt!=temp):
	temp=sqrt
	sqrt=((c/temp)+temp)/2
print("the hypotenuse is: ")
print(sqrt)
