~Siddhartha
var n_x_pattern = input("Enter n for x pattern: ", "i")
var i_x_pattern = 1
var j_x_pattern = 0
var count_x_pattern = n_x_pattern * 2 - 1
while(i_x_pattern <= count_x_pattern):
	j_x_pattern = 1
	while(j_x_pattern <= count_x_pattern):
		if(j_x_pattern == i_x_pattern or (j_x_pattern == count_x_pattern - i_x_pattern + 1)):
			print("#", "")
		else:
			print(" ", "")
		j_x_pattern = j_x_pattern + 1
	i_x_pattern = i_x_pattern + 1
	print("")
