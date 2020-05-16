~Barath
var initial_spd=20
var final_spd=60
var time_train=4
var train_accel
var train_dist
train_accel=(final_spd-initial_spd)/time_train
train_dist=(initial_spd*time_train)+(0.5*train_accel*(time_train^2))
print("The initial speed of the train is: ",initial_spd)
print(" kmph")
print("The final speed of the train is: ",final_spd)
print(" kmph")
print("The time taken to increase the velocity is: ",time_train)
print(" hrs")
print("Therefore, the distance travelled by the train is: ",train_dist)
print(" km")
