~Barath
var a=12
var b=6
var c=15
var s
var ar
var sqrt
var temp=0
s=(a+b+c)/2
ar=s*(s-a)*(s-b)*(s-c)
sqrt=ar/2
while(sqrt!=temp):
	temp=sqrt
	sqrt=((ar/temp)+temp)/2
print("the area of the triangle is: ")
print(sqrt)
