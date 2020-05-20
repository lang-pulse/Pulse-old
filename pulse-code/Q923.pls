~Siddhartha
var number_duck = "1023"
var i_duck = 0
var n_duck = 0
while((number_duck % i_duck) != "~"):
	n_duck = n_duck + 1
	i_duck = i_duck + 1
i_duck = 0
while((i_duck < n_duck) and (number_duck % i_duck == "0")):
	i_duck = i_duck + 1
i_duck = 0
var flag_duck = 0
while(i_duck < n_duck):
	if((number_duck % i_duck) == "0"):
		flag_duck = 1
	i_duck = i_duck + 1
if(flag_duck == 1):
	print("The number is a duck number")
else:
	print("The number is not a duck number")
