~Barath
var num_of_dig=input("Enter the number of digits: ","i")
var num_usable_dig=input("Enter the amount of usable digits: ","i")
var num_num=1
var it=0
while(it<(num_of_dig-1)):
	num_num=num_num*num_usable_dig
	it=it+1
num_num=num_num*(num_usable_dig//2)
print("")
print("The number of usable digits to form the number is: ",num_usable_dig)
print("")
print("The number of digits in the number: ",num_of_dig)
print("")
print("")
print("The ",num_of_dig)
print(" digit even numbers that can be formed(with repetition) is: ",num_num)
print("")
