~KAUSTUV
var no_surnames_fi = 100
var half_no_surnames_fi = 50
var med_class_start = 7
var med_end = 10
var low_lim = 7
var class_int1 = 3
var cummulative_freq = 36
var freq1 = 40
var median1_letters = low_lim+(((half_no_surnames_fi-cummulative_freq)/freq1)*class_int1)
print(median1_letters)
var l_dist = 1500
var modal_class_start = 7
var modal_class_end = 10
var low_mod = 7
var h_int = 3
var freq2 = 40
var freq3 = 30
var freq4 = 16
var freqi0 = 24
var frei1 = 33
var mode12 = l_dist+(((freq2-freqi0)/2*freq2-freqi0-frei1)*500)
print("modal size of the surnames" , mode12)
var assumed_mean = 11.5
var freqi100 = 100
var freqi_ui_01 = -106
var mean12 = assumed_mean+h_int*(freqi_ui_01/freqi100)
print("mean no of letters " , mean12)
