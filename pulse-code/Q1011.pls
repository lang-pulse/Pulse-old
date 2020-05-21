~Pranshul
var R1011 = 10
var pi1011 = 3.14
#Assume height = 20, value wont matter as 'h' gets cancelled in our calculation
var H1011 = 20
#First Cone
var r_1_1011 = 5
var h_1_1011 = H1011/2
var V_1_1011 = 1/3*pi1011*r_1_1011^2*h_1_1011
#Second Cone
var r_2_1011 = 5
var R_2_1011 = 10
var h_2_1011 = H1011/2
var sumsq_1011 = r_2_1011^2+ R_2_1011^2
var V_2_1011 = 1/3*pi1011*h_2_1011*(sumsq_1011+ R_2_1011*r_2_1011)
var Ratio = V_1_1011/V_2_1011
print("Volume of Smaller cone divided by Volume of frustrum = ",Ratio)
