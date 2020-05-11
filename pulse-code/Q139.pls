~Barath
var prediction=3
var true_output_value=4
var difference_of_val
var rmse
difference_of_val=(prediction^2)-(true_output_value^2)
if(difference_of_val<0):
	difference_of_val=difference_of_val*(-1)
rmse=difference_of_val^(0.5)
print("the value of prediction is:")
print(prediction)
print("the value of true_output_value is:")
print(true_output_value)
print("the root mean squared error of prediction and true_output_value is:")
print(rmse)
