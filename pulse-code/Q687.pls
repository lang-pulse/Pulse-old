~Barath
var year1_profit=input("Enter the profit gained in the first year: ","d")
var year2_profit=input("Enter the profit earned in the second year: ","d")
var year3_profit=input("Enter the profit gained in the third year: ","d")
var year4_profit=input("Enter the profit gained in the fourth year: ","d")
var avg_3year_profit
avg_3year_profit=year1_profit+year2_profit+year3_profit
avg_3year_profit=avg_3year_profit/3
var avg_4year_profit
avg_4year_profit=year1_profit+year2_profit+year3_profit+year4_profit
avg_4year_profit=avg_4year_profit/4
print("")
print("The profits gained in the first year: Rs ",year1_profit)
print("")
print("The profits gained in the second year: Rs ",year2_profit)
print("")
print("The profits gained in the third year: Rs ",year3_profit)
print("")
print("The profits gained in the fourth year is: Rs ",year4_profit)
print("")
print("")
print("Therefore, the good will value is: Rs ","")
if(avg_3year_profit>avg_4year_profit):
	print(avg_3year_profit)
else:
	print(avg_4year_profit)
