~Pranshul
var a = "ABCD"
var b = "CABD"
var lena = 0
var lenb = 0
var i =0
while((a%i)!="~"):
	lena = lena + 1
	i = i+1
i = 0
while((b%i)!="~"):
        lenb = lenb + 1
        i = i+1
if(lena != lenb):
	print("NO")
else:
	i = 0
	var j = 0
	var flag = 0
	while((i<lena) and (flag == 0)):
		var flag2 = 0
		j = 0
		while(j<lenb):
			var t1 = (a%i)
			var t2 = (b%j)
			if(t1 == t2):
				flag2 = 1
			j = j+1
		i = i+1
		if(flag2 == 0):
			flag = 1
	if(flag != 1):
		print("YES")
	else :
		print("NO")
