var num=123
var orgNum
var rem
var res=0
orgNum = num
while (orgNum !=0):
	rem = orgNum % 10
	res = res+(rem*rem*rem)
	orgNum=orgNum/10
if(res==num):
	print("it is an armstrong number")
else:
	print("it is not an armstrong number")
