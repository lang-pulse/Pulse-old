~Siddhartha
var n_sin = input("Enter the angle in degrees to compute sine of: ", "d")
n_sin = n_sin * (3.142 / 180.0)
var x1_sin = n_sin
var sinx = n_sin
var i_sin = 1
var denominator_sin = 0
while(i_sin <= 10):
	denominator_sin = 2 * i_sin * (2 * i_sin + 1)
	x1_sin = (-1 * x1_sin) * n_sin * n_sin / denominator_sin
	sinx = sinx + x1_sin
	i_sin = i_sin + 1
print("The sine value is = ", sinx)
