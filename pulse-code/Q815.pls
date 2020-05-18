~Siddhartha
var v_stream_water = 15
var area_cross_section_stream_water = 0.01
var density_of_water_stream = 1000
var mass_of_water_hitting = density_of_water_stream * area_cross_section_stream_water * v_stream_water
var force_exerted = mass_of_water_hitting * v_stream_water
print("Force exterted on the wall = ", force_exerted)
print(" N")
