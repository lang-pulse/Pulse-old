var a = "This is the umbrella"
var len1 = 0
var len2 = 0
var len3 = 0
var len4 = 0
var pos1 = 0
var pos2 = 0
var pos3 = 0
var pos4 = 0
var i = 0
while((a % i) != " "):
	i = i + 1
	len1 = len1 + 1
pos2 = len1 + 1
i = pos2
while((a % i) != " "):
	i = i + 1
	len2 = len2 + 1
pos3 = len1 + len2 + 2
i = pos3
while((a % i) != " "):
	i = i + 1
	len3 = len3 + 1
pos4 = len1 + len2 + len3 + 3
i = pos4
while((a % i) != "~"):
	i = i + 1
	len4 = len4 + 1
if((len1 < len2) and (len1 < len3) and (len1 < len4)):
	print("Minimum:", " ")
	while((a % pos1) != " "):
		print((a % pos1), " ")
		pos1 = pos1 + 1
if((len2 < len1) and (len2 < len3) and (len2 < len4)):
	print("Minimum:", " ")
	while((a % pos2) != " "):
		print((a % pos2), " ")
		pos2 = pos2 + 1
if((len3 < len1) and (len3 < len2) and (len3 < len4)):
	print("Minimum:", " ")
	while((a % pos3) != " "):
		print((a % pos3), " ")
		pos3 = pos3 + 1
if((len4 < len1) and (len4 < len2) and (len4 < len3)):
	print("Minimum:", " ")
	while((a % pos4) != " "):
		print((a % pos4), "~")
		pos4 = pos4 + 1
print(" ")
if((len1 > len2) and (len1 > len3) and (len1 > len4)):
	print("Maximum:", " ")
	while((a % pos1) != " "):
		print((a % pos1), " ")
		pos1 = pos1 + 1
if((len2 > len1) and (len2 > len3) and (len2 > len4)):
	print("Maximum:", " ")
	while((a % pos2) != " "):
		print((a % pos2), " ")
		pos2 = pos2 + 1
if((len3 > len1) and (len3 > len2) and (len3 > len4)):
	print("Maximum:", " ")
	while((a % pos3) != " "):
		print((a % pos3), " ")
		pos3 = pos3 + 1
if((len4 > len1) and (len4 > len2) and (len4 > len3)):
	print("Maximum:", " ")
	while((a % pos4) != "~"):
		print((a % pos4), " ")
		pos4 = pos4 + 1
