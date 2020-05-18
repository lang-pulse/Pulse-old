~Barath
var p_year1=input("Enter the profits gained in year 1: ","d")
var p_year2=input("Enter the profits gained in year 2: ","d")
var p_year3=input("Enter the profits gained in year 3: ","d")
var p_year4=input("Enter the profits gained in year 4: ","d")
var adjust_gain=input("Enter the abnormal loss amount in year 1: ","d")
var adjust_loss1=input("Enter the amount for the fixed asset: ","d")
var adjust_loss2=input("Enter the amount not insured in year 3: ","d")
var years_purr=input("Enter the number of years of purchase: ","i")
var norm_p1
var norm_p2
var norm_p3
norm_p1=p_year1+adjust_gain
norm_p2=p_year2-adjust_loss1
norm_p3=p_year3-adjust_loss2
var average_p
average_p=norm_p1+norm_p2+norm_p3+p_year4
average_p=average_p/4
var goods_wlls
goods_wlls=average_p*years_purr
print("")
print("The profits earned in year 1: Rs ",p_year1)
print("")
print("The profits earned in year 2: Rs ",p_year2)
print("")
print("The profits earned in year 3: Rs ",p_year3)
print("")
print("The profits earned in year 4: Rs ",p_year4)
print("")
print("The abnormal loss amount in year 1: Rs ",adjust_gain)
print("")
print("The abnormal gain amount in year 2: Rs ",adjust_loss1)
print("")
print("The abnormal gain amount in year 3: Rs ",adjust_loss2)
print("")
print("")
print("The good will value is: Rs ",goods_wlls)
print("")
