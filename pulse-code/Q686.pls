~Barath
var profit_year1=input("Enter the profit earned in year 1: ","d")
var profit_year2=input("Enter the profit earned in year 2: ","d")
var profit_year3=input("Enter the profit earned in year 3: ","d")
var profit_year4=input("Enter the profit earned in year 4: ","d")
var profit_year5=input("Enter the profit earned in year 5: ","d")
var average_profit_5years
average_profit_5years=profit_year1+profit_year2+profit_year3+profit_year4+profit_year5
average_profit_5years=average_profit_5years/5
var average_profit_4years
average_profit_4years=profit_year2+profit_year3+profit_year4+profit_year5
average_profit_4years=average_profit_4years/4
var good_will_pp
if(average_profit_5years>average_profit_4years):
	good_will_pp=average_profit_5years*5
else:
	good_will_pp=average_profit_4years*4
print("")
print("The profit earned in year 1 is: Rs ",profit_year1)
print("")
print("The profit earned in year 2 is: Rs ",profit_year2)
print("")
print("The profit earned in year 3 is: Rs ",profit_year3)
print("")
print("The profit earned in year 4 is: Rs ",profit_year4)
print("")
print("The profit earned in year 5 is: Rs ",profit_year5)
print("")
print("")
print("Therefore, the value of good will is: Rs ",good_will_pp)
print("")
