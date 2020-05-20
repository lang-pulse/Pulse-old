~Siddhartha
var diameter_tank = 3
var radius_tank = diameter_tank / 2
var volume_tank = ((2/3) * (22/7) * radius_tank^3) * 1000
print("The volume of the tank = ", volume_tank)
print(" m3")
var emptying_rate = 25/7
var time_to_empty = (1/2) * volume_tank * (1/emptying_rate)
print("The time to empty the tank = ", time_to_empty)
print(" seconds")
