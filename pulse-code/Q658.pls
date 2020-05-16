~Siddhartha
var string_paren = input("Enter string to match parantheses: ")
var parentheses_count = 0
var braces_count = 0
var brackets_count = 0
var iter_paren = 0
var char_paren = ""
while((string_paren % iter_paren) != "~"):
	char_paren = string_paren % iter_paren
	if(char_paren == "("):
		parentheses_count = parentheses_count + 1
	if(char_paren == ")"):
		parentheses_count = parentheses_count - 1
	if(char_paren == "{"):
		braces_count = braces_count + 1
	if(char_paren == "}"):
		braces_count = braces_count - 1
	if(char_paren == "["):
		brackets_count = brackets_count + 1
	if(char_paren == "]"):
		brackets_count = brackets_count - 1
	iter_paren = iter_paren + 1
if(parentheses_count == 0):
	print("All parantheses matched!")
else:
	print("Parantheses not matching!")
if(braces_count == 0):
	print("All braces matched!")
else:
	print("Braces not matching!")
if(brackets_count == 0):
	print("All brackets matched!")
else:
	print("Brackets not matching!")
