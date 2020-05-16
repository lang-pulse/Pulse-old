~ Harishankar
var speed = 200
var height = 300
var g = 9.8
var time
var distance
var dist_foodpacked_victim
time = (2* height /g )^(1/2)
distance = speed * time
dist_foodpacked_victim = (distance^2 + height^2)^(1/2)
print("The distance between food packet and victim before release:")
print(dist_foodpacked_victim)
