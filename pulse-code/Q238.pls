~Barath
var num1=96
var num2=420
var e_num1=num1
var e_num2=num2
var temp1=num1
var temp2=num2
var t
var gcd
while(num2!=0):
	t=num2
	num2=num1%num2
	num1=t
gcd=num1
print("GCD of ",temp1)
print(" and ",temp2)
print("(using normal method): ",num1)
print("")
while(e_num1!=0 and e_num2!=0):
	if(e_num1>e_num2):
		e_num1=e_num1%e_num2
	else:
		e_num2=e_num2%e_num1
if(e_num1>e_num2):
	print("GCD of ",temp1)
	print(" and ",temp2)
	print("(using euclids algorithm): ",e_num1)
	print("")
else:
	print("GCD of ",temp1)
	print(" and ",temp2)
	print("(using euclids algorithm): ",e_num2)
	print("")
print("Hence it is proved that euclids algorithm computes the GCD of two given positive integers")
