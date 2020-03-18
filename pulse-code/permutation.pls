var n=10
var r=3
var fact=1
var facto=1
var a
var p
a=n-r
while(n>0):
	fact=fact*n
	n=n-1
print("n! : ")
print(fact)
while(a>0):
	facto=facto*a
	a=a-1
print("(n-r)! : ")
print(facto)
p=fact/facto
print("the permutation of the given values are: ")
print(p)
