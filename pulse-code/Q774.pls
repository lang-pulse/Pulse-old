~ Harishankar
var speed_train_A_km_s = 72
var speed_train_A_m_s = speed_train_A_km_s *(5/18)
var speed_train_B_km_s = 72
var speed_train_B_m_s = speed_train_B_km_s * (5/18)
var lenght_train = 400
var acceleration = 1
var time_gap = 50
var distance_covered_train_B = speed_train_B_m_s * time_gap + (1/2)*acceleration*(time_gap)^2
var distance_covered_train_A = speed_train_B_m_s*time_gap
var distance_between_trains  = distance_covered_train_B - distance_covered_train_A
print("Original distance between tow trains is")
print(distance_between_trains)
