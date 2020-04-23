~Barath
var a="abcd e12"
var cv=0
var cc=0
var cd=0
var cs=0
var b
var i=0
while((a%i)!="~"):
	b=a%i
	if(b=="a" or b=="e" or b=="i" or b=="o" or b=="u"):
		cv=cv+1
	else:
		if(b=="b" or b=="c" or b=="d" or b=="f" or b=="g" or b=="h" or b=="j" or b=="k" or b=="l" or b=="m" or b=="n" or b=="p" or b=="q" or b=="r" or b=="s" or b=="t" or b=="v" or b=="w" or b=="x" or b=="y" or b=="z"):
			cc=cc+1
	if(b=="1" or b=="2" or b=="3" or b=="4" or b=="5" or b=="6" or b=="7" or b=="8" or b=="9"):
		cd=cd+1
	else:
		if(b==" "):
			cs=cs+1
	i=i+1
print("the string is:")
print(a)
print("the number of vowels in the string is:")
print(cv)
print("the number of consonants in the string is:")
print(cc)
print("the number of digits in the string is:")
print(cd)
print("the number of white spaces in the string are:")
print(cs)
