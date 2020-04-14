var n=45
var sq
var count=0
var rem
var sum=0
var temp=n
sq=n^2
while(n!=0):
	rem=n%10
	count=count+1
	n=n//10
if(count==1):
	while(sq!=0):
		rem=sq%10
		sum=sum+rem
		sq=sq//10
else:
	if(count==2):
		while(sq!=0):
			rem=sq%100
			sum=sum+rem
			sq=sq//100
	else:
		if(count==3):
			while(sq!=0):
				rem=sq%1000
				sum=sum+rem
				sq=sq//1000
		else:
			if(count==4):
				while(sq!=0):
					rem=sq%10000
					sum=sum+rem
					sq=sq//10000
			else:
				print("Too many digits")
if(sum==temp):
	print("it is a kaprekar number")
else:
	print("it is not a kaprekar number")
