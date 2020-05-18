~Pranshul
var mass_1 = 8
var mass_2 = 12
var gravity_ = 10
var f_1 = mass_1 * gravity_
var f_2 = mass_2 * gravity_
#We assume an acceleration  = a for both the masses and a tension T in string
var Tension = (mass_2 * f_1 + mass_1 * f_2)/(mass_1+mass_2)
print("Tension in String = ", Tension)
print("N     ")
# We are assuming that upward acceleration is positive
var a_1 = (Tension - f_1)/mass_1
var a_2 = (Tension - f_2)/mass_2
print("Acceleration for ", mass_1)
print("Kg Object  = ", a_1)
print(" ")
print("Acceleration for ", mass_2)
print("Kg Object = ",a_2)
