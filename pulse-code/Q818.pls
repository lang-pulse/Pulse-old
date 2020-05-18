~Siddhartha
var radius_of_disc = 0.15
var freq_revol = 5 / 9
var coeff_fric_coin = 0.15
print("When coin is placed at 4 cm")
var radius_rev_four_cm = 0.04
var angu_frew_four_cm = 2 * (22/7) * freq_revol
var frictional_force = coeff_fric_coin * 10
var f_centripetal = radius_rev_four_cm * (angu_frew_four_cm^2)
print("Frictional Force = ", frictional_force)
print(" N")
print("Centripetal Force = ", f_centripetal)
print(" N")
print("Since frictional force > centripetal force, the coin will revolve along with the record.")
print("When coin placed at 14 cm")
var radius_rev_fourteen_cm = 0.14
var angu_frew_fourteen_cm = 3.49
var frictional_force_fourteen = 1.5
print("Frcitional Force (14 cm) = ", frictional_force_fourteen)
print(" N")
var f_centripetal_fourteen = radius_rev_fourteen_cm * (angu_frew_fourteen_cm^2)
print("Centripetal Force(14 cm) = ", f_centripetal_fourteen)
print(" N")
print("Since frictional force < centripetal force, the coin will slip from the surface of the record.")
