~Harishankar
var num=35
var den=14
var a=num
var b=den
var gcd
while(a!=b):
	if(a>b):
		a=a-b
	else:
		b=b-a
gcd = a
num=num/gcd
den=den/gcd
print("the reduced fraction is")
print(num)
print(den)
