var a=2
var b=5
var c=3
var sqrt
var temp=0
var r1
var r2
var d
d=((b^2)-(4*a*c))
sqrt=d/2
while(sqrt!=temp):
	temp=sqrt
	sqrt=((d/temp)+temp)/2
r1=((-b)+sqrt)/(2*a)
r2=((-b)-sqrt)/(2*a)
print("first root is: ")
print(r1)
print("second root is: ")
print(r2)
