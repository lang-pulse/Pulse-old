~Srivatsan
var n1=3
var n2=4
var n3=7
var s1=1
var s2=1
var s3=1
while(n1>=1):
	s1=s1*(n1)
	s2=s2*(n2)
	s3=s3*(n3)
	n1=n1-1
	n2=n2-1
	n3=n3-1
while(n3>=1):
	s3=s3*n3
	n3=n3-1
print(s1)
print(s2)
print(s3)
var s12=n1+n2
if(s12==s3):
	print("Yes they are equal")
else:
	print("3!+4! !=7!")
