~Barath
var pipe_d=20
var pipe_r
var pipe_l
var water_spd=3
var tank_d=10
var tank_r
var tank_h=2
var vol_tank
var time
pipe_r=pipe_d/2
pipe_r=pipe_r/100
tank_r=tank_d/2
vol_tank=(tank_r^2)*tank_h
pipe_l=vol_tank/(pipe_r^2)
pipe_l=pipe_l/10^3
time=(pipe_l/water_spd)*60
print("the diameter of the pipe: ",pipe_d)
print(" cm")
print("the radius of the pipe: ",pipe_r)
print(" m")
print("the diameter of the tank: ",tank_d)
print(" m")
print("the radius of the tank: ",tank_r)
print(" m")
print("the depth of the tank: ",tank_h)
print(" m")
print("the volume of the tank is: ",vol_tank)
print(" m.cb")
print("the length of the pipe is: ",pipe_l)
print(" km")
print("the speed of water flowing through the ",pipe_l)
print(" km pipe is: ",water_spd)
print(" km/hr")
print("Therefore, the time taken to fill the entire tank is: ",time)
print(" min")
