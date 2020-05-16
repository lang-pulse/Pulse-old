~Barath
var str1="daf"
var str2="fda"
var str_length
var rand1
var rand2
var i_str=0
var j_str=0
var count_str=0
while((str1%i_str)!="~"):
	i_str=i_str+1
while((str2%j_str)!="~"):
	j_str=j_str+1
if(i_str!=j_str):
	print(str1," is not a valid shuffle of ")
	print(str2)
str_length=i_str
i_str=0
while((str1%i_str)!="~"):
	rand1=str1%i_str
	j_str=0
	while((str2%j_str)!="~"):
		rand2=str2%j_str
		if(rand1==rand2):
			count_str=count_str+1
		j_str=j_str+1
	i_str=i_str+1
if(count_str==str_length):
	print(str1," is a valid shuffle of ")
	print(str2)
else:
	print(str1," is not a valid shuffle of ")
	print(str2)
