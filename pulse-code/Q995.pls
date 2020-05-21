~Barath
var res_995=input("Enter the observed resistance of the element: ","d")
var res_room995=input("Enter the resistance of the element at room temperature: ","d")
var coeff_995=input("Enter the coefficient the material: ","d")
var temp_995
temp_995=(res_995/res_room995)-1
temp_995=temp_995/coeff_995
temp_995=temp_995+27
print("")
print("The resistance at room temperature is: ",res_room995)
print(" ohms")
print("The resistance at the particular temperature is: ",res_995)
print(" ohms")
print("The coefficient of the material of the resistor is: ",coeff_995)
print(" C^-1")
print("")
print("Therefore, the temperature of the element when the resistance is ",res_995)
print(" is: ",temp_995)
print(" deg")
