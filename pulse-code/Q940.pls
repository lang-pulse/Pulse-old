~KAUSTUV
var rad_small_bl1
rad_small_bl1 = 2
var rad_org_bal_1
rad_org_bal_1 = 1/4*rad_small_bl1
var rad_big_ball
rad_big_ball = 4*rad_small_bl1
var piio
piio = 22/7
var vol_big_speh_bl_11
vol_big_speh_bl_11 = 4/3*piio*(rad_big_ball^3)
var vol_smal_bal_12
vol_smal_bal_12 = 4/3*piio*(rad_small_bl1^3)
var n_init
n_init = (vol_big_speh_bl_11)/(vol_smal_bal_12)
print("the no of balls are ", n_init)
