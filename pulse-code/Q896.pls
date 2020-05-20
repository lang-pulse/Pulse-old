~Soumya
var obj_foc_len = 0.8
print("Focal length of the objective lens = ", obj_foc_len)
print(" cm")
var eye_foc_len = 2.5
print("Focal length of the eye piece = ", eye_foc_len)
print(" cm")
var obj_dis_lens = -0.9
print("Object distance for the objective lens = ", obj_dis_lens)
print(" cm")
var least_dis_vis = 25
print("Least distance of distant vision = ", least_dis_vis)
print(" cm")
var im_eye_dis = -25
print("Image distance for the eyepiece = ", im_eye_dis)
print(" cm")
print("")
var obj_dis_eye = -1/((1/eye_foc_len)-(1/im_eye_dis))
print("Using Len's formula")
print("Object distance for the eyepiece = ",obj_dis_eye)
print(" cm")
var im_dis_oblens = 1/((1/obj_foc_len)+(1/obj_dis_lens))
print("value of the image distance for the objective lens = ",im_dis_oblens)
print(" cm")
print("")
var sep_lens_value = -(obj_dis_eye) + im_dis_oblens
print("so separation = ", sep_lens_value)
print(" cm")
var mag_power_scope = -(im_dis_oblens/obj_dis_lens)*(1+(least_dis_vis/eye_foc_len))
print("The magnifying power of the microscope = ",  mag_power_scope)          
