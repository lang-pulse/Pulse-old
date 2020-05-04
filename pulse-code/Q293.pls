~Barath
var train1_l=100
var train2_l=100
var train1_time=10
var train2_time=20
var train1_v
var train2_v
var ovrtaking_rv
var crossing_rv
var total_dist
total_dist=train1_l+train2_l
ovrtaking_rv=total_dist/train2_time
crossing_rv=total_dist/train1_time
train1_v=(ovrtaking_rv+crossing_rv)/2
train2_v=train1_v-ovrtaking_rv
print("the length of train 1 is: ",train1_l)
print(" m")
print("the length of train 2 is: ",train2_l)
print(" m")
print("time taken to overtake the other train: ",train1_time)
print(" s")
print("time to taken cross the other train is: ",train2_time)
print(" s")
print("Therefore, the velocity of train 1 is: ",train1_v)
print(" m/s")
print("Therefore, the velocity of train 2 is: ",train2_v)
print(" m/s")
