~KAUSTUV
var chloroform_1
chloroform_1 = 119.5
var lev_cont_12
lev_cont_12 = 15
var soln_1
soln_1 = 1000000
var mass_1_chcl3
mass_1_chcl3 = 15
var solv_1
solv_1 = soln_1-mass_1_chcl3
var perc_by_mas1
perc_by_mas1 = (((mass_1_chcl3)/(soln_1))*100)
var moll_1 
moll_1 = ((mass_1_chcl3/(chloroform_1*(soln_1-mass_1_chcl3)))*1000)
print("percent by mass is " , perc_by_mas1)
print("the molality of chloroform in the water sample is ", moll_1 )
