~Barath
var wire_dia=3
var wire_dia_cm
var wire_rad
var wire_l
var total_l
var cylinder_length=12
var cylinder_dia=10
var cylinder_rad
var density=8.88
var mass
var rounds
var vol_wire
wire_dia_cm=wire_dia/10
wire_rad=wire_dia_cm/2
rounds=cylinder_length/wire_dia_cm
cylinder_rad=cylinder_dia/2
wire_l=2*3.14*cylinder_rad
total_l=wire_l*rounds
vol_wire=3.14*total_l*(wire_rad^2)
mass=density*vol_wire
print("The diameter of the wire is: ",wire_dia)
print(" mm")
print("The radius of the wire is: ",wire_rad)
print(" cm")
print("The length of the cylinder is: ",cylinder_length)
print(" cm")
print("The diameter of the cylinder is: ",cylinder_dia)
print(" cm")
print("The radius of the cylinder is: ",cylinder_rad)
print(" cm")
print("The number of rounds taken to cover the cylinder is: ",rounds)
print(" rounds")
print("The length of the wire to cover one round is: ",wire_l)
print(" cm")
print("Therefore, the total length of the wire used to cover the cylinder is: ",total_l)
print(" cm")
print("The density of the wire is: ",density)
print(" g/cm.cb")
print("Therefore, the mass of the wire used is: ",mass)
print(" g")
