~ Harishankar PV
var pi=3.14
var density_wire = 8.88
var mass_wire
var diameter_wire = 0.3
var diameter_cylinder = 10
var height_cylinder = 12
var wire_lenght_40rounds
var wire_volume
var no_of_rounds = height_cylinder/diameter_wire
var circumference = 2*pi*(diameter_cylinder/2)
wire_lenght_40rounds = circumference *40
wire_volume = pi* (diameter_wire/2)^2 * wire_lenght_40rounds
mass_wire = density_wire * wire_volume
print("The lenght of wire required:")
print(wire_lenght_40rounds)
print("The mass of the wire required:")
print(mass_wire)
