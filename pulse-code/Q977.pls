~Siddhartha
var string_urlify = "Hello World"
var i_urlify = 0
print("The string with urlified spaces = ", "")
while((string_urlify % i_urlify) != "~"):
	if((string_urlify % i_urlify) == " "):
		print("%20", "")
	else:
		print((string_urlify % i_urlify), "")
	i_urlify = i_urlify + 1
print("")
