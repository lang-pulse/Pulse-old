~Barath
var bowl_rad942=input("Enter the radius of the bowl: ","d")
var bottle_dia942=input("Enter the diameter of the bottle: ","d")
var bottle_rad942
var bottle_height942=input("Enter the height of the bottle: ","d")
var vol_bowl942
var vol_bottle942
vol_bowl942=(2/3)*3.14*(bowl_rad942^3)
bottle_rad942=bottle_dia942/2
vol_bottle942=3.14*bottle_height942*(bottle_rad942^2)
var num_bottles942
num_bottles942=vol_bowl942/vol_bottle942
num_bottles942=num_bottles942*10
var l_dig942
l_dig942=num_bottles942%10
if(l_dig942>=5):
	num_bottles942=num_bottles942+10
	num_bottles942=num_bottles942//10
else:
	num_bottles942=num_bottles942//10
print("")
print("The radius of the bowl is: ",bowl_rad942)
print(" cm")
print("The diameter of the bottle is: ",bottle_dia942)
print(" cm")
print("The height of the bottle is: ",bottle_height942)
print(" cm")
print("")
print("The bowl can hold ",vol_bowl942)
print(" ml of liquid")
print("The bottle can hold ",vol_bottle942)
print(" ml of liquid")
print("Therefore, the number of bottles required to empty the bowl is: ",num_bottles942)
print("")
