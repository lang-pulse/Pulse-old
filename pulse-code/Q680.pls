~Soumya
var people_to_sit = 6
print("Number of people to be seated = ", people_to_sit)
print("")
var ways_to_sit = 1
var counter_ways = 1
while(counter_ways <= people_to_sit):
	ways_to_sit = ways_to_sit * counter_ways
	counter_ways = counter_ways + 1
print("The number of ways they can be seated are = ", ways_to_sit)
