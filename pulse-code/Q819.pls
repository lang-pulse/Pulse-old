~Siddhartha
var mass_man = 70
var radius_drum = 3
var coeff_fric_man_drum = 0.15
var freq_of_rotation = 200
var freq_man_fall = (10 / (coeff_fric_man_drum * radius_drum))^(1/2)
print("The man will not fall until the frequency of rotation = ", freq_man_fall)
print(" rad/s")
