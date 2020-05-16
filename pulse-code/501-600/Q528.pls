~Barath
var paper_clips=input("Enter the total number of paper clips: ","i")
var red_clips=input("Enter the number of red clips: ","i")
var yellow_clips=input("Enter the number of yellow clips: ","i")
var blue_clips=input("Enter the number of blue clips: ","i")
var push_pins=input("Enter the total number of push pins: ","i")
var white_pin=input("Enter the number of white pins: ","i")
var orange_pin=input("Enter the number of orange pins: ","i")
var green_pin=input("Enter the number of green pins: ","i")
var prob_blueclip=blue_clips/paper_clips
var prob_yellowclip=yellow_clips/paper_clips
var prob_bory=prob_blueclip+prob_yellowclip
var prob_redclip=red_clips/paper_clips
var prob_pushpin=push_pins/push_pins
var prob_redpush=prob_redclip*prob_pushpin
var prob_greenpin=green_pin/push_pins
var prob_orangepin=orange_pin/push_pins
var prob_oandg=prob_greenpin*prob_orangepin
print("")
print("The number of paper clips: ",paper_clips)
print("")
print("The number of red clips: ",red_clips)
print("")
print("The number of yellow clips: ",yellow_clips)
print("")
print("The number of blue clips: ",blue_clips)
print("")
print("The number of push pins: ",push_pins)
print("")
print("The number of white pins: ",white_pin)
print("")
print("The number of orange pins: ",orange_pin)
print("")
print("The number of green pins: ",green_pin)
print("")
print("")
print("Therefore, the probability of sharon picking up a blue or yellow clip is: ",prob_bory)
print("")
print("Therefore, the probability of sharon picking up a red clip and a random push pin is: ",prob_redpush)
print("")
print("Therefore, the probability of sharon picking up an orange pin and a green pin with replacement is: ",prob_oandg)
print("")
