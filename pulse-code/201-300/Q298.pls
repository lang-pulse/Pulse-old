~Barath
var speed_trains=72
var time_elapsed=50
var train_l=400
var dist_train1
var dist_train2
var travel_dist
var dist_bet_trains
var accel=1
speed_trains=speed_trains*(5/18)
dist_train1=speed_trains*time_elapsed
dist_train2=(speed_trains*time_elapsed)+(1/2)*accel*(time_elapsed^2)
if(dist_train2>dist_train1):
	travel_dist=dist_train2-dist_train1
else:
	travel_dist=dist_train1-dist_train2
dist_bet_trains=travel_dist-train_l
print("The length of both the trains are: ",train_l)
print(" m")
print("The speed of both the trains are: ",speed_trains)
print(" mps")
print("The acceleration of train 2 is: ",accel)
print(" mps.sq")
print("Therefore, the original distance between the trains was: ",dist_bet_trains)
print(" m")
