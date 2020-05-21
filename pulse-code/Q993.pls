~Barath
var res1_993=input("Enter the value of Resistance 1: ","d")
var res2_993=input("Enter the value of Resistance 2: ","d")
var res3_993=input("Enter the value of Resistance 3: ","d")
var battery_volt993=input("Enter the value of battery voltage: ","d")
var neg_res993=input("Enter the value of internal resistance of the circuit: ","d")
var total_res993
total_res993=res1_993+res2_993+res3_993
var current_993
current_993=battery_volt993/(total_res993+neg_res993)
var pot1_drop993
var pot2_drop993
var pot3_drop993
pot1_drop993=current_993*res1_993
pot2_drop993=current_993*res2_993
pot3_drop993=current_993*res3_993
print("")
print("Resistance 1: ",res1_993)
print(" ohm")
print("Resistance 2: ",res2_993)
print(" ohm")
print("Resistance 3: ",res3_993)
print(" ohm")
print("The battery voltage: ",battery_volt993)
print(" V")
print("The internal resistance value: ",neg_res993)
print(" ohm")
print("")
print("Therefore, the potential drop across:-")
print("Resistor 1 is: ",pot1_drop993)
print(" V")
print("Resistor 2 is: ",pot2_drop993)
print(" V")
print("Resistor 3 is: ",pot3_drop993)
print(" V")
