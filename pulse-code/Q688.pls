~Barath
var gain_year1=input("Enter the gain in year 1: ","d")
var abnormal_gain_year1=input("Enter the abnormal gain in year 1: ","d")
var gain_year2=input("Enter the gain in year 2: ","d")
var abnormal_gain_year2=input("Enter the abnormal gain in year 2: ","d")
var gain_year3=input("Enter the gain in year 3: ","d")
var abnormal_gain_year3=input("Enter the abnormal gain in year 3: ","d")
var years_purchase=input("Enter the number of years of purchase: ","i")
var norm_profit1=gain_year1-abnormal_gain_year1
var norm_profit2=gain_year2-abnormal_gain_year2
var norm_profit3=gain_year3-abnormal_gain_year3
var avg_profits_norm
avg_profits_norm=norm_profit1+norm_profit2+norm_profit3
avg_profits_norm=avg_profits_norm/3
var good_will_norm
good_will_norm=avg_profits_norm*years_purchase
print("")
print("The normal profit gained in year 1 is: Rs ",norm_profit1)
print("")
print("The normal profit gained in year 2 is: Rs ",norm_profit2)
print("")
print("The normal profit gained in year 3 is: Rs ",norm_profit3)
print("")
print("")
print("The good will value on the basis of ",years_purchase)
print(" years purchase is: ",good_will_norm)
print("")
