~Barath
var num_code=input("Enter the number of letters used in the code: ","i")
var num_alpha=input("Enter the number of alphabets that can be used: ","i")
var jet=0
var no_rep=1
while(jet<num_code):
	no_rep=no_rep*num_alpha
	num_alpha=num_alpha-1
	jet=jet+1
print("")
print("The number of letters in the code is: ",num_code)
print("")
print("The number of alphabets that can be used: ",num_alpha)
print("")
print("")
print("The amount of ",num_code)
print(" letter code that can be formed using ",num_alpha)
print(" alphabets without repetition is: ",no_rep)
print("")
