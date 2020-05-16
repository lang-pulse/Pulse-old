~Barath
var num_of_ppl=input("Enter the number of people: ","i")
var num_of_days=30
var diff_days=num_of_days-num_of_ppl
var powerr=num_of_days^num_of_ppl
var fac_days1=1
while(num_of_days!=0):
	fac_days1=fac_days1*num_of_days
	num_of_days=num_of_days-1
var fac_days2=1
while(diff_days!=0):
	fac_days2=fac_days2*diff_days
	diff_days=diff_days-1
var prob_diff
var prob_percntage
prob_diff=1-(fac_days1/(fac_days2*powerr))
prob_percntage=prob_diff*100
print("")
print("The number of people: ",num_of_ppl)
print("")
print("")
print("The probability that at least 2 people share a birthday in the month of june is: ",prob_diff)
print(" or ",prob_percntage)
print("%")
