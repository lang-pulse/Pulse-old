~Siddhartha
var diameter_wire = 0.6
var diameter_copper_sphere = 18
var radius_copper_sphere = diameter_copper_sphere / 2
var length_cylindrical_wire = 10800
var radius_cylindrical_wire = (((4/3) * radius_copper_sphere^3) / (length_cylindrical_wire))^(1/2)
print("The radius of cylindrical wire = ", radius_cylindrical_wire)
print(" cm")
