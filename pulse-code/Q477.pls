~Barath
var man_woman_dist=input("Enter the distance between the man and woman: ","d")
var dog_distance
var dog_distance_km
var man_speed=input("Enter the speed of the man and woman: ","d")
man_speed=man_speed*(5/18)
var woman_speed=man_speed
var dog_speed=input("Enter the speed of the dog: ","d")
dog_speed=dog_speed*(5/18)
var meeting_timee
meeting_timee=man_woman_dist/(man_speed+woman_speed)
dog_distance=meeting_timee*dog_speed
dog_distance_km=dog_distance/10^3
print("")
print("The speed of the man and woman walking towards each other is: ",man_speed)
print(" mps")
print("The speed of the dog is: ",dog_speed)
print(" mps")
print("The distance between the man and woman is: ",man_woman_dist)
print(" m")
print("")
print("Therefore, the distance the dog ran is(in metres): ",dog_distance)
print(" m")
print("Therefore, the distance the dog ran is(in kilometres): ",dog_distance_km)
print(" km")
