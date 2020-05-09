~Pranshul
var string = "Hello, have a good day"
var i = 0
var t
while((string%i)!="~"):
	t = (string%i)
	if(t!= "a" and t!= "e" and t!= "i" and t!= "o" and t!="u"):
		print(" ","")
	else:
		print(t,"")
	i = i+1
