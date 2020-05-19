~Siddhartha
var freq_sound_whistle = 400
var speed_sound = 340
var velocity_wind = 10
print("For the stationary observer")
var effective_speed_sound = speed_sound + velocity_wind
print("The effective speed of sound ve = ", effective_speed_sound)
print(" m/s")
var wavelength_observer = effective_speed_sound / freq_sound_whistle
print("The wavelength of the sound heard by the observer is = ", wavelength_observer)
print(" m")
print("For the running oberserver")
var velocity_observer = 10
var delta_frequency = ((speed_sound + velocity_wind) / (speed_sound)) * freq_sound_whistle
print("The change in frequency = ", delta_frequency)
print(" Hz")
var apparent_speed = speed_sound
print("The effective speed of sound = ", apparent_speed)
print(" m/s")
print("The wavelength of sound = ", wavelength_observer)
print(" m")
