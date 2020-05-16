~Barath
var tulip_bulbs=input("Enter the total number of tulip bulbs: ","i")
var red_bulb=input("Enter the number of red bulbs: ","i")
var yellow_bulb=input("Enter the number of yellow bulbs: ","i")
var purple_bulb=input("Enter the number of purple bulbs: ","i")
var prob_red=red_bulb/tulip_bulbs
var prob_redrep=(red_bulb-1)/(tulip_bulbs-1)
var prob_bothred=prob_red*prob_redrep
var prob_yellowrep=yellow_bulb/(tulip_bulbs-1)
var prob_redyell=prob_red*prob_yellowrep
var prob_yellow=yellow_bulb/tulip_bulbs
var prob_redrepl=red_bulb/(tulip_bulbs-1)
var prob_yellred=prob_yellow*prob_redrepl
var prob_redyellow=prob_redyell+prob_yellred
print("")
print("The total number of tulip bulbs in the bag: ",tulip_bulbs)
print("")
print("The number of red bulbs: ",red_bulb)
print("")
print("The number of yellow bulbs: ",yellow_bulb)
print("")
print("The number of purple bulbs: ",purple_bulb)
print("")
print("")
print("The probability of 2 selected bulbs being red(without replacement) is: ",prob_bothred)
print("")
print("The probability of first bulb being red and second one being yellow(without replacement) is: ",prob_redyell)
print("")
print("The probability of first bulb being yellow and second one being red(without replacement) is: ",prob_yellred)
print("")
print("The probability of the one bulb being red and the other bulb being yellow(without replacement) is: ",prob_redyellow)
print("")
