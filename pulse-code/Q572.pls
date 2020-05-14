~Barath
var usable_digits=input("Enter the number of usable digits: ","i")
var dig_store=usable_digits
var numb_dig=input("Enter the number of digits: ","i") 
var num_digrep=1
var iterate=0
while(iterate<numb_dig):
	num_digrep=num_digrep*usable_digits
	iterate=iterate+1
var num_digwrep=1
iterate=0
while(iterate<numb_dig):
	num_digwrep=num_digwrep*usable_digits
	usable_digits=usable_digits-1
	iterate=iterate+1
print("")
print("The number of usable digits is: ",dig_store)
print("")
print("The number of digits in the number to be formed is: ",numb_dig)
print("")
print("")
print("The number of ",numb_dig)
print(" digit numbers that can be formed with repetition is: ",num_digrep)
print("")
print("The number of ",numb_dig)
print(" digit numbers that can be formed without repetition is: ",num_digwrep)
print("")
