~Siddhartha
var a = "Hello#@World!*"
var i = 0
var special_count = 0
var char
while((a % i) != "~"):
	char = a % i
	if((char == "!") or (char == "@") or (char == "#") or (char == "$")):
		special_count = special_count + 1
	if((char == "%") or (char == "^") or (char == "&") or (char == "*")):
		special_count = special_count + 1
	if((char == "(") or (char == ")") or (char == "-") or (char == "_")):
		special_count = special_count + 1
	if((char == "=") or (char == "+") or (char == ":") or (char == ";")):
		special_count = special_count + 1
	if((char == "<") or (char == ",") or (char == ">") or (char == ".")):
		special_count = special_count + 1
	if((char == "?") or (char == "/") or (char == "|") or (char == "\")):
		specia_count = special_count + 1
	i = i + 1
print(special_count)
