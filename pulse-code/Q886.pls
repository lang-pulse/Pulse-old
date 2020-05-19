~Barath
var height_needle=input("Enter the height of the needle: ","d")
var obj_dist=input("Enter the distance of the needle from the mirror: ","d")
obj_dist=obj_dist*(-1)
var focal_length_convex=input("Enter the focal length of the convex mirror: ","d")
var v_needle
var height_image
var magni_needle
v_needle=(1/focal_length_convex)-(1/obj_dist)
v_needle=1/v_needle
height_image=(v_needle*height_needle)
height_image=height_image/obj_dist
height_image=height_image*(-1)
magni_needle=height_image/height_needle
print("")
print("The height of the needle is: ",height_needle)
print(" cm")
print("The distance of the needle from the convex mirror is: ",obj_dist)
print(" cm")
print("The focal length of the mirror is: ",focal_length_convex)
print(" cm")
print("")
print("The image of the needle is formed ",v_needle)
print(" cm behind the convex mirror")
print("The height of the image formed is: ",height_image)
print(" cm")
print("The magnification of the image of the needle is: ",magni_needle)
print(" cm")
