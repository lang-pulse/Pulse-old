~Barath
var n=12
var r=5
var a
var b
var p
var fact=1
var facto=1
var factor=1
a=n-r
while(n>0):
	fact=fact*n
	n=n-1
print("n! : ")
print(fact)
while(r>0):
	facto=facto*r
	r=r-1
print("r! : ")
print(facto)
while(a>0):
	factor=factor*a
	a=a-1
print("(n-r)! : ")
print(factor)
b=facto*factor
p=fact/b
print("The combination of the given values is: ")
print(p)
