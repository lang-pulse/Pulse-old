~Soummya
var battery_emf = 10
print("The EMf of the battery is = ", battery_emf)
print(" V")
var internal_resistant_r = 3
print("The internal resistance of the battery is = ", internal_resistant_r)
print(" ohm")
var cuurent_in_circuit = 0.5
print("current in th circuit = ", cuurent_in_circuit)
print(" A")
print("")
print("By ohm's Law")
var res_in_cuit = ((battery_emf/cuurent_in_circuit) - internal_resistant_r)
print("The Resistance is = ",res_in_cuit)
print(" ohm")
var ter_minal_volt = cuurent_in_circuit * res_in_cuit
print("Terminal Voltage = ",ter_minal_volt)
print(" V")
