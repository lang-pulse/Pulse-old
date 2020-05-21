~KAUSTUV
var tim_1_start 
tim_1_start  = 2
var time_12_end
time_12_end = 6
var time_init1
time_init1 = 5
var vel_fin_123
vel_fin_123 = 12
var acc_ini1
acc_ini1 = (vel_fin_123)/(time_init1)
var veloc_1
veloc_1 = acc_ini1*tim_1_start
var dist_trav_2_3
dist_trav_2_3 = 3
var dist_s1_1
dist_s1_1 = (veloc_1*dist_trav_2_3)+(1/2)*(acc_ini1)*(dist_trav_2_3^2)
var tim_start_ini1
tim_start_ini1 = 5
var tim_end_fin1
tim_end_fin1 = 10
var vel_i1
vel_i1 = 12
var acceler_io1
acceler_io1 = (-vel_i1)/(tim_start_ini1)
var distan_poi_5_6
distan_poi_5_6 = 1
var distanc_qwe_s2 
distanc_qwe_s2 = (vel_i1)*(distan_poi_5_6)+(1/2)*(acceler_io1)*(distan_poi_5_6^2)
var tot_distanc_qwrs
tot_distanc_qwrs = dist_s1_1 + distanc_qwe_s2
var org_tim1
org_tim1 = 4
var averag_speed_1345
averag_speed_1345 = (tot_distanc_qwrs)/(org_tim1)
print("the average speed of the particle over the intervals",averag_speed_1345 )
