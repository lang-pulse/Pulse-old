~Barath
var bucket_dia1=45
var bucket_dia2=25
var bucket_rad1
var bucket_rad2
var bucket_h=40
var frustum_h
var cylinder_height=6
var bucket_rad_sum
var frustum_vol
var frustum_l
var frustum_csa
var bucket_base
var cylinder_csa
var metallic_sheet
bucket_rad1=bucket_dia1/2
bucket_rad2=bucket_dia2/2
frustum_h=bucket_h-cylinder_height
bucket_rad_sum=(bucket_rad1^2)+(bucket_rad2^2)+(bucket_rad1*bucket_rad2)
frustum_vol=(1/3)*3.14*frustum_h*bucket_rad_sum
frustum_vol=frustum_vol/1000
frustum_l=((frustum_h^2)+((bucket_rad1-bucket_rad2)^2))^(1/2)
frustum_csa=3.14*frustum_l*(bucket_rad1+bucket_rad2)
bucket_base=3.14*(bucket_rad2^2)
cylinder_csa=2*3.14*bucket_rad2*cylinder_height
metallic_sheet=frustum_csa+bucket_base+cylinder_csa
print("the height of the bucket is: ",bucket_h)
print(" cm")
print("the diameter of the upper end of the bucket is: ",bucket_dia1)
print(" cm")
print("the diameter of the lower end of the bucket is: ",bucket_dia2)
print(" cm")
print("the height of the bucket is: ",bucket_h)
print(" cm")
print("the curved surface area of the frustum is: ",frustum_csa)
print(" cm.sq")
print("the curved surface area of the cylinderical part of the bucket is: ",cylinder_csa)
print(" cm.sq")
print("the base area of the bucket is: ",bucket_base)
print(" cm.sq")
print("Therefore, the area of metallic sheet required to make the bucket is: ",metallic_sheet)
print(" cm.sq")
print("the amount of water the bucket can hold is: ",frustum_vol)
print(" L")
