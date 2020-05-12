~Barath
var ini_vel1=0
var fin_vel1=40
var accel1
var time1=20
var dist1
accel1=(fin_vel1-ini_vel1)/time1
dist1=(ini_vel1*time1)+(0.5*accel1*(time1^2))
var time2=20
var dist2
dist2=fin_vel1*time2
var ini_vel3=40
var time3=40
var accel3
var fin_vel3=0
var dist3
accel3=(fin_vel3-ini_vel3)/time3
dist3=(ini_vel3*time3)+(0.5*accel3*(time3^2))
var avg_spd
avg_spd=(dist1+dist2+dist3)/(time1+time2+time3)
print("Maximum speed obtained: ",fin_vel1)
print(" mps")
print("Time taken to reach maximum speed: ",time1)
print(" s")
print("The distance travelled during this period is: ",dist1)
print(" m")
print("Amount of time, maximum speed was maintained: ",time2)
print(" s")
print("The distance travelled at this interval of time is: ",dist2)
print(" m")
print("Time taken by the train to stop: ",time3)
print(" s")
print("Distance travelled during retardation is: ",dist3)
print(" m")
print("Therefore, the average velocity of the train  during this period is: ",avg_spd)
print(" mps")
