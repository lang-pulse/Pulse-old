~Siddhartha
var speed_sound_steel = 5200
var speed_sound_air = 332
var distance_source_observer = 1.00
var time_sound_wave_steel = distance_source_observer / speed_sound_steel
print("The time by sound wave in the steel = ", time_sound_wave_steel)
print(" s")
var time_sound_wave_air_tube = distance_source_observer / speed_sound_air
print("The time by sound wave in the air in the tube = ", time_sound_wave_air_tube)
print(" s")
var time_gap = time_sound_wave_air_tube - time_sound_wave_steel
print("Hence the time gap between the two hearings = ", time_gap)
print(" s")
