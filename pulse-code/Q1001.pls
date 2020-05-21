~Soumya
print("Given:")
var p_alu = 2.63
print("pAl = ", p_alu)
print(" x 10^-8 Ωm")
var p_Cop = 1.72
print("pCu = ", p_Cop)
print(" x 10^-8 Ωm")
var rel_den_AL = 2.7
print("relative density of Aluminium is = ", rel_den_AL)
print("")
var rel_den_Cu = 8.9
print("relative density of Copper is = ", rel_den_Cu) 
print("")
print("Since mass = density × base area × length")
var ratio_lighter = (rel_den_AL * p_alu)/(rel_den_Cu * p_Cop)
print("The ratio value = ",ratio_lighter)
print("Here it is clear that M_{Al} < M_{cu}")
print("thus, the aluminum with for the same resistance is very light than copper and")
print("that is why aluminum wire are preferred for overhead power cable.")
