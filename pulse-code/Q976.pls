~Siddhartha
var str_front_space = "Hello World this is a sentence"
var i_front_space = 0
var space_count_front = 0
var char_front_space = 0
while((str_front_space % i_front_space) != "~"):
	char_front_space = (str_front_space % i_front_space)
	if(char_front_space == " "):
		space_count_front = space_count_front + 1
	i_front_space = i_front_space + 1
i_front_space = 1
while(i_front_space != space_count_front):
	print(" ", "")
	i_front_space = i_front_space + 1
i_front_space = 0
while((str_front_space % i_front_space) != "~"):
	if((str_front_space % i_front_space) != " "):
		print((str_front_space % i_front_space), "")
	i_front_space = i_front_space + 1
print("")
