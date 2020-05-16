~Harishankar
var n=1011011
var dec=0
var oct=0
var rev=0
var i=0
var rem=0
var j=1
var pow=1
while(n!=0):
	rem=n%10
	pow=2^i
	i=i+1
	dec=dec+(rem*pow)
	n=n//10
while(dec!=0):
	oct=oct+(dec%8)*j
	dec=dec//8
	j=j*10
print("Octal:")
print(oct)
