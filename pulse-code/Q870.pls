~Siddhartha
var operating_frequency_sonar = 40
var speed_of_enemy_submarine = 360
var speed_of_sound_water = 1450
var apparent_frequency_f_prime = ((speed_of_sound_water + speed_of_enemy_submarine) / (speed_of_sound_water)) * operating_frequency_sonar
print("The apprarent frequency received and reflected by the submaring = ", apparent_frequency_f_prime)
print(" KHz")
