~Siddhartha
var str = "Hello there how are you"
var i = 0
var pos = 0
var length = 0
while((str % i) != "~"):
	if((str % i) == " "):
		length = 0
	length = length + 1
	i = i + 1
print(length - 1)
