~Barath
var int1=13
var int2=25
var sum_int
var rem_int
var temp_var
var count_int=0
sum_int=int1+int2
temp_var=sum_int
while(sum_int!=0):
	rem_int=sum_int%10
	count_int=count_int+1
	sum_int=sum_int//10
print("Integer 1: ",int1)
print("")
print("Integer 2: ",int2)
print("")
print("The sum of given integers are: ",temp_var)
print("")
print("Digit number of the sum of the given integers is: ",count_int)
print("")
