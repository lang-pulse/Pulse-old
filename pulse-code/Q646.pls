~Siddhartha
var n_pattern_1 = input("Enter n: ", "i")
var c_pattern_1 = 0
var row_pattern_1 = 0
var t_pattern_1 = 1
while(row_pattern_1 <= n_pattern_1):
	c_pattern_1 = 1
	while(c_pattern_1 <= (n_pattern_1 - row_pattern_1)):
		print(" ", "")
		c_pattern_1 = c_pattern_1 + 1
	t_pattern_1 = row_pattern_1
	c_pattern_1 = 1
	while(c_pattern_1 <= row_pattern_1):
		print(t_pattern_1, "")
		c_pattern_1 = c_pattern_1 + 1
		t_pattern_1 = t_pattern_1 + 1
	t_pattern_1 = t_pattern_1 - 2
	c_pattern_1 = 1
	while(c_pattern_1 < row_pattern_1):
		print(t_pattern_1, "")
		c_pattern_1 = c_pattern_1 + 1
		t_pattern_1 = t_pattern_1 - 1
	print("")
	row_pattern_1 = row_pattern_1 + 1
