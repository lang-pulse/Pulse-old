~Barath
var prof_year1=input("Enter the profit gained in the 1st year: ","d")
var prof_year2=input("Enter the profit gained in the 2nd year: ","d")
var prof_year3=input("Enter the profit gained in the 3rd year: ","d")
var prof_year4=input("Enter the profit gained in the 4th year: ","d")
var prof_year5=input("Enter the profit gained in the 5th year: ","d")
var car_amount=input("Enter the price of the car: ","d")
var deprecate_percent=input("Enter the deprecation amount: ","d")
var interest_amount=input("Enter the interest amount: ","d")
var num_yrs=input("Enter the number of years of purchase: ","d")
var final_profyear4
var final_profyear5
var total_expen
var deprecate_amt
final_profyear4=prof_year4-interest_amount
deprecate_amt=(deprecate_percent/100)*car_amount
total_expen=car_amount-(deprecate_amt+interest_amount)
final_profyear5=prof_year5-total_expen
var avg_prof_norm
avg_prof_norm=prof_year1+prof_year2+prof_year3+final_profyear4+final_profyear5
avg_prof_norm=avg_prof_norm/5
var goodwill_norm
goodwill_norm=num_yrs*avg_prof_norm
print("")
print("The amount for the car: Rs ",car_amount)
print("")
print("The amount of deprecation: Rs ",deprecate_amt)
print("")
print("The amount of interest to be paid: Rs ",interest_amount)
print("")
print("The normal profit gained in the 1st year: Rs ",prof_year1)
print("")
print("The normal profit gained in the 2nd year: Rs ",prof_year2)
print("")
print("The normal profit gained in the 3rd year: Rs ",prof_year3)
print("")
print("The normal profit gained in the 4th year: Rs ",final_profyear4)
print("")
print("The normal profit gained in the 5th year: Rs ",final_profyear5)
print("")
print("")
print("The good will value is: Rs ",goodwill_norm)
print("")
