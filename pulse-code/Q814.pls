~Barath
var actual_prof1=input("Enter the amount gained in the first year: ","d")
var actual_loss2=input("Enter the loss amount in the second year: ","d")
var actual_prof3=input("Enter the amount gained in the third year: ","d")
var abnorm_loss1=input("Enter the amount due to loss of stock: ","d")
var abnorm_loss2=input("Enter the amount due voluntary retirement: ","d")
var abnorm_gain3=input("Enter the amount due to sale of fixed assets: ","d")
var n_yr=input("Enter the number of years of purchase: ","i")
var norm_prf1
var norm_prf2
var norm_prf3
norm_prf1=actual_prof1+abnorm_loss1
norm_prf2=actual_loss2-abnorm_loss2
if(norm_prf2<0):
	norm_prf2=norm_prf2*(-1)
norm_prf3=actual_prof3-abnorm_gain3
if(norm_prf3<0):
	norm_prf3=norm_prf3*(-1)
var average_normal_prf
average_normal_prf=norm_prf1+norm_prf2+norm_prf3
average_normal_prf=average_normal_prf/3
var goo_wl
goo_wl=average_normal_prf*n_yr
print("")
print("The profits earned in the first year: Rs ",actual_prof1)
print("")
print("The loss amount in the second year: Rs ",actual_loss2)
print("")
print("The profits earned in the third year is: Rs ",actual_prof3)
print("")
print("The amount after debiting loss of stock: Rs ",abnorm_loss1)
print("")
print("The amount paid due to voluntary retirement: Rs ",abnorm_loss2)
print("")
print("The amount gained due to sale of fixed assets: Rs ",abnorm_gain3)
print("")
print("")
print("Therefore, the good will value is: Rs ",goo_wl)
print("")
