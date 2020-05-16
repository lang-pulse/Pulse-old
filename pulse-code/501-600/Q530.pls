~Barath
var traffic_prob=1/3
var arrival_times1=input("Enter the number of times you arrive at the light (1): ","i")
var arrival_times2=input("Enter the number of times you arrive at the light (2): ","i")
var arrival_times3=input("Enter the number of times you arrive at the light (3): ","i")
var arrival_times4=input("Enter the number of times you arrive at the light (4): ","i")
var prob_50times
var prob_25times
var prob_27times
var prob_2times
var last_digit
prob_50times=arrival_times1*traffic_prob
prob_50times=prob_50times*10
last_digit=prob_50times%10
if(last_digit>=5):
	prob_50times=prob_50times+10
	prob_50times=prob_50times//10
else:
	prob_50times=prob_50times//10
prob_25times=arrival_times2*traffic_prob
prob_25times=prob_25times*10
last_digit=prob_25times%10
if(last_digit>=5):
	prob_25times=prob_25times+10
	prob_25times=prob_25times//10
else:
	prob_25times=prob_25times//10
prob_27times=arrival_times3*traffic_prob
prob_27times=prob_27times*10
last_digit=prob_27times%10
if(last_digit>=5):
	prob_27times=prob_27times+10
	prob_27times=prob_27times//10
else:
	prob_27times=prob_27times//10
prob_2times=arrival_times4*traffic_prob
prob_2times=prob_2times*10
last_digit=prob_2times%10
if(last_digit>=5):
	prob_2times=prob_2times+10
	prob_2times=prob_2times//10
else:
	prob_2times=prob_2times//10
print("")
print("The probability of arriving at the stop at any light is: ",traffic_prob)
print("")
print("")
print("The number of times you will have to stop and wait for more than 4 seconds if......")
print("a) You arrive at the light ", arrival_times1)
print(" times is: ",prob_50times)
print("")
print("b) You arrive at the light ",arrival_times2)
print(" times is: ",prob_25times)
print("")
print("c) You arrive at the light ",arrival_times3)
print(" times is: ",prob_27times)
print("")
print("d) You arrive at the light ",arrival_times4)
print(" times is: ",prob_2times)
print("")
