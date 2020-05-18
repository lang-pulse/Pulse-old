~KAUSTUV
var exp = 1500
var class_mark = 3250
var variation = 2000
var mod_class_low = exp
var class_int = exp-1000
var freq1 = 40
var freq0 = 24
var freq2 = 33
var mode = exp+((freq1-freq0)/(2*(freq1)-freq0-freq2)*class_int)
print("modal monthly expediture is " , mode)
var freqi = 200
var freqi_ui = -235
var mean = class_mark+class_int*(freqi_ui/freqi)
print("mean expediture" , mean)
