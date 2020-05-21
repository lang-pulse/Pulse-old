~KAUSTUV
var upp_lim1
upp_lim1 = 127
var lowe_lim12
lowe_lim12 = 126
var lengt_leav1
lengt_leav1 = 40
var gap_obser_io
gap_obser_io = upp_lim1-lowe_lim12
var class_inte_cont1
class_inte_cont1 =(gap_obser_io)/2 
var n_init_d_fi
n_init_d_fi = 40
var half_n_init_d_fi1
half_n_init_d_fi1 = (n_init_d_fi)/2
var med_class_star_1
med_class_star_1 = 144.5
var med_class_end_12
med_class_end_12 = 153.5
var low_lim_12_1
low_lim_12_1 = 144.5
var lengt_str_in
lengt_str_in = 117.5
var leng_end_fin1
leng_end_fin1 = 126.5
var class_int_192
class_int_192 = leng_end_fin1-lengt_str_in
var cf_freq_1
cf_freq_1 = 17
var med_class_in_qw
med_class_in_qw = 12
var median_132
median_132 = (low_lim_12_1)+((half_n_init_d_fi1-cf_freq_1)/(med_class_in_qw)*(class_int_192))
print("the median length of leaves",median_132 )
