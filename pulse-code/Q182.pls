~Pranshul
var str = "Hello, have a good day"
var i = 0
while((str%i)!="~"):
	var c = (str%i)
	if((c!="a") and (c!="e") and (c!="i") and (c!="o") and (c!="u") and (c!="A") and (c!="E") and (c!="I") and (c!="O") and (c!="U")):
		print(c)
	else:
		print(" ")
	i = i+1
