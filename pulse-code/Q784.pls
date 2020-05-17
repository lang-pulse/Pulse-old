~Siddhartha
var n_heart = input("Enter the value of n for heart pattern: ", "i")
var i_heart = n_heart // 2
var j_heart = 0
while(i_heart <= n_heart):
	j_heart = 1
	while(j_heart < (n_heart - i_heart)):
		print(" ", "")
		j_heart = j_heart + 2
	j_heart = 1
	while(j_heart <= i_heart):
		print("$", "")
		j_heart = j_heart + 1
	j_heart = 1
	while(j_heart <= (n_heart - i_heart)):
		print(" ", "")
		j_heart = j_heart + 1
	j_heart = 1
	while(j_heart <= i_heart):
		print("$", "")
		j_heart = j_heart + 1
	i_heart = i_heart + 2
	print("")
i_heart = n_heart
while(i_heart >= 1):
	j_heart = i_heart
	while(j_heart < n_heart):
		print(" ", "")
		j_heart = j_heart + 1
	j_heart = 1
	while(j_heart <= (i_heart * 2 - 1)):
		print("$", "")
		j_heart = j_heart + 1
	i_heart = i_heart - 1
	print("")
