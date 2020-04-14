var dec=31
var t=dec
var oct=0
var j=1
while(dec!=0):
	oct=oct+(dec%8)*j
	dec=dec//8
	j=j*10
print("Decimal:")
print(t)
print("Octal:")
print(oct)
