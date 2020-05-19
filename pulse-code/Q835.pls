~Barath
var man_swim_speed=input("Enter the speed of the man swimming: ","d")
var riverr_width=input("Enter the width of the river: ","d")
var riverr_speed=input("Enter the speed the river flows in: ","d")
var time_cross_river
var distance_swimmed
var dist_man
time_cross_river=riverr_width/man_swim_speed
distance_swimmed=riverr_speed*time_cross_river
dist_man=distance_swimmed*(10^3)
print("")
print("The speed the man swims in is: ",man_swim_speed)
print(" kmph")
print("The speed the river flows in: ",riverr_speed)
print(" kmph")
print("The width of the river is: ",riverr_width)
print(" km")
print("")
print("Therefore, the distance travelled by the man is(in kilometre): ",distance_swimmed)
print(" km")
print("The distance travelled by the man (in metres) is: ",dist_man)
print("m")
