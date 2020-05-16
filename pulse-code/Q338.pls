~ Harishankar
var volume_one_cube = 64
var side
side = volume_one_cube^(1/3)
var lenght_after_joining_2_cubes = side*2
var breadth = side
var height = side
var TSA_cuboid
TSA_cuboid = 2*(lenght_after_joining_2_cubes*breadth + breadth*height +height*lenght_after_joining_2_cubes)
print("The surface area of the resulting cuboid:")
print(TSA_cuboid)
