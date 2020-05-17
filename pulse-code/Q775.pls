~ Harishankar
var speed_car_A_kmhr = 36
var speed_car_A_ms = speed_car_A_kmhr *(5/18)
var speed_car_B_km_hr = 54
var speed_car_C_kmhr = 54
var speed_car_B_ms = speed_car_B_km_hr *(5/18)
var speed_car_C_ms = speed_car_C_kmhr * (5/18)
var relative_speed_A_wrt_C = speed_car_A_ms + speed_car_C_ms
var distance = 1000
var time_taken_C_overtake_A = distance/relative_speed_A_wrt_C
var distance_travelled_A_all_time = speed_car_A_ms *time_taken_C_overtake_A
var distance_covered_by_B =distance +  distance_travelled_A_all_time
var min_acceleration_car_B 
min_acceleration_car_B = 2*(distance_covered_by_B - (speed_car_B_ms * time_taken_C_overtake_A))/time_taken_C_overtake_A^2
print("minimum accleration of car B to avoid an accident:")
print(min_acceleration_car_B)
