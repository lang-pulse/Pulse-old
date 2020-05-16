~KAUSTUV
var length = 15
var breadth = 10
var height = 3.5
var radius = 0.5
var height1 = 1.4
var volume_cuboid = length*breadth*height
var volume_cone = 1/3*22/7*radius^2*height1
var volume_4_cone = 4*volume_cone
var volume_wood = volume_cuboid-volume_4_cone
print(volume_wood)
