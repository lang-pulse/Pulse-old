~Pranshul
var rad_top_978 = 21
var rad_bot_978 = 7
var h978 = 30
var pi978 = 22/7
var sum_sq978 = rad_top_978^2 + rad_bot_978^2
var V978 = 1/3 * pi978*(sum_sq978 + rad_top_978 * rad_bot_978 )* h978
V978 = V978/1000
print("Volume of the bucket = ",V978)
print("l")
var l978 = (h978^2+(rad_top_978-rad_bot_978)^2)^0.5
var CSA = pi978*(rad_top_978+rad_bot_978)*l978
var bot_area_978 = pi978*rad_bot_978^2
var Tot_area = CSA+bot_area_978
print("Total Sheet Required = ",Tot_area)
print("sq cm")
