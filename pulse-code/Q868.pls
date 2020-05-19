~Siddhartha
var frequency_whistle = 400
var speed_train_vt = 10
var speed_sound_v = 340
var apparent_frequency_train = ((speed_sound_v)/(speed_sound_v - speed_train_vt)) * frequency_whistle
print("The apprarent frequency of the whistle as the train approaches the platform = ", apparent_frequency_train)
print(" Hz")
var apparent_frequency_train_go = (speed_sound_v/(speed_sound_v + speed_train_vt)) * frequency_whistle
print("The apparent frequency of the whistle as the train recedes from the platform = ", apparent_frequency_train_go)
print(" Hz")
