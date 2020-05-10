~ Harishankar
var trainA_speed = 20
var trainA_time = 50
var trainA_distance
trainA_distance = trainA_speed * trainA_time
var trainB_speed = 20
var trainB_time = 50
var trainB_acceleration = 1
var trainB_distance
trainB_distance =  trainB_speed * trainB_time + 1/2 * trainB_acceleration * trainB_time^2
var diff_distance = trainB_distance - trainA_distance
var length_train = 400
var distance_between_AB = diff_distance - length_train
print("Original distance b/n the train A and train B:")
print(distance_between_AB)
