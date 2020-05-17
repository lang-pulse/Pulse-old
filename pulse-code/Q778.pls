~Soumya
var market_distance = 2.5
print("Home to market distance =", market_distance)
print("km")
var marketway_speed = 5
print("Home to market speed =", marketway_speed)
print("km h-1")
var return_market_speed = 7.5
print("Market return to home speed = ", return_market_speed)
print("km h-1")
var T_home_market = market_distance / marketway_speed
print("Time taken from home to market =", T_home_market )
print(" hr")
var T_market_home = market_distance / return_market_speed
print("Time taken from Market to home during return =", T_market_home)
print(" hr")
var Man_Total_Time = T_market_home + T_home_market
print("Total time taken = ", Man_Total_Time)
print(" hr")
var avgv_totjourney = market_distance / 0.5
print("The average velocity of the man = ", avgv_totjourney)
print("km/hr")
