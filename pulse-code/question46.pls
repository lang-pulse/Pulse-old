var x=9
var y=24
var gcd
var lcm
var t
var a=x
var b=y
while(b!=0):
	t=b
	b=a%b
	a=t
gcd=a
lcm=(x*y)/gcd
print("The LCM of the given number is: ")
print(lcm)
