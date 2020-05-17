~ Harishankar
var velocity_of_poilice_vp = 30 * (5/18)
var velocity_of_theif_vt =  190 * (5/18)
var velocity_bullet_police_fire_vb = 150
var finial_velocity_of_bullet_muzzle_from_gun = velocity_bullet_police_fire_vb + velocity_of_poilice_vp
var velocity_bullet_wrt_theif_Vbt = finial_velocity_of_bullet_muzzle_from_gun  -velocity_of_theif_vt
print("The speed with which the bullet must hit the theif's car is:")
print(velocity_bullet_wrt_theif_Vbt)
