~Pranshul
var string = "aaaabbbbcccccddddeeee"
var count = 1
var i = 1
var prev = (string%0)
while((string%i)!="~"):
	if((string%i)!=prev):
		print(prev,count)
		prev = (string%i)
		count = 1
	else:
		count = count+1
	i = i+1
