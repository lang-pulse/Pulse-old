~Siddhartha
var age1 = 5
var age2 = 15
var age3 = 25
var age4 = 35
var age5 = 45
var age6 = 55
var num_patients1 = 6
var num_patients2 = 11
var num_patients3 = 21
var num_patients4 = 23
var num_patients5 = 14
var num_patients6 = 5
var class_mark1 = (age1 + age1 + 10) / 2
var class_mark2 = (age2 + age2 + 10) / 2
var class_mark3 = (age3 + age3 + 10) / 2
var class_mark4 = (age4 + age4 + 10) / 2
var class_mark5 = (age5 + age5 + 10) / 2
var class_mark6 = (age6 + age6 + 10) / 2
var fixi_1 = num_patients1 * class_mark1
var fixi_2 = num_patients2 * class_mark2
var fixi_3 = num_patients3 * class_mark3
var fixi_4 = num_patients4 * class_mark4
var fixi_5 = num_patients5 * class_mark5
var fixi_6 = num_patients6 * class_mark6
var sum_fixi = fixi_1 + fixi_2 + fixi_3 + fixi_4 + fixi_5 + fixi_6
var sum_fi = num_patients1 + num_patients2 + num_patients3 + num_patients4 + num_patients5 + num_patients6
var mean_fixi = sum_fixi / sum_fi
print("The mean of distribution is: ", mean_fixi)
print("")
var lower_limit_fixi = 35
var h_mode = age2 - age1
var f_modal_class = num_patients4
var f_before_modal_class = num_patients3
var f_after_modal_class = num_patients5
var mode_fixi = lower_limit_fixi + (((f_modal_class - f_before_modal_class) / (2 * f_modal_class - f_before_modal_class - f_after_modal_class))) * 10
print("The mode of distribution is: ", mode_fixi)
