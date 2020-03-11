var fib1=0
var fib2=1
var fib3
var i=3
var len=10
print(fib1)
print(fib2)
while(i<=len):
	fib3=fib1+fib2
	print(fib3)
	fib1=fib2
	fib2=fib3
	i=i+1
