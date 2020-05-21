~Barath
var ulim_median367=input("Enter the lower limit of the median class: ","d")
var llim_median367=input("Enter the upper limit of the median class: ","d")
var f1_367=2
var f2_367=4
var f3_367=18
var f4_367=21
var fmedian_367=input("Enter the frequency of the median class: ","d")
var f6_367=11
var f7_367=3
var f8_367=6
var f9_367=2
var sum_freq367=f1_367+f2_367+f3_367+f4_367+fmedian_367+f6_367+f7_367+f8_367+f9_367
var cf2_367=f2_367+f1_367
var cf3_367=cf2_367+f3_367
var cf4_367=cf3_367+f4_367
var class_height367=llim_median367-ulim_median367
var median_367
median_367=((sum_freq367/2)-cf4_367)/fmedian_367
median_367=median_367*class_height367
median_367=median_367+ulim_median367
print("")
print("The intervals of the median class is: ",ulim_median367)
print("-",llim_median367)
print("")
print("The frequency of the median class is: ",fmedian_367)
print("")
print("The cumulative frequency of the class before the median class is: ",cf4_367)
print("")
print("The class height is: ",class_height367)
print("")
print("")
print("Therefore, the median age is: ",median_367)
print("")
