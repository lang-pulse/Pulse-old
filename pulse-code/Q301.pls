~Barath
var total_dist=200
var half_dist
var speed_fhalf=40
var speed_shalf
var avg_spd=48
var total_time
var time_s
var time_f
speed_fhalf=speed_fhalf*(5/18)
half_dist=total_dist/2
avg_spd=avg_spd*(5/18)
total_time=total_dist/avg_spd
time_f=half_dist/speed_fhalf
time_s=total_time-time_f
speed_shalf=half_dist/time_s
print("The total distance is: ",total_dist)
print(" m")
print("The average speed of the car is: ",avg_spd)
print(" mps")
print("The speed travelled in the first half is: ",speed_fhalf)
print(" mps")
print("Total time taken to cover entire distance: ",total_time)
print(" s")
print("The time taken to travel the first half is: ",time_f)
print(" s")
print("The time taken to travel the second half is: ",time_s)
print(" s")
print("Therefore the speed travelled by the car to cover the other is: ",speed_shalf)
print(" mps")
