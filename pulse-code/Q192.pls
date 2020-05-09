~Barath
var str1="It's raining cats and dogs"
var str2="cats"
var alpha
var alphaa
var i=0
var j=0
var str2_l
var str2_pos=0
var str_count=0
var f_alpha
while((str2%i)!="~"):
	i=i+1
str2_l=i
f_alpha=str2%0
i=0
while((str1%i)!=f_alpha):
	str2_pos=str2_pos+1
	i=i+1
while((str1%str2_pos)!=" "):
	alpha=str1%str2_pos
	alphaa=str2%j
	if(alpha==alphaa):
		str_count=str_count+1
	str2_pos=str2_pos+1
	j=j+1
if(str_count==str2_l):
	print("The word '",str2)
	print("' is present in the string '",str1)
	print("'")
else:
	print("The word '",str2)
	print("' is not present in the string '",str1)
	print("'")
