~Siddhartha
var n_cos = input("Enter the angle in degree to compute cosine of: ", "d")
n_cos = n_cos * (3.142 / 180.0)
var x1_cos = 1
var cosx = x1_cos
var i_cos = 1
var denominator_cos = 2 * i_cos * (2 * i_cos - 1)
x1_cos = (-1 * x1_cos) * n_cos * n_cos / denominator_cos
cosx = cosx + x1_cos
i_cos = i_cos + 1
while(i_cos < 9):
	denominator_cos = 2 * i_cos * (2 * i_cos - 1)
	x1_cos = (-1 * x1_cos) * n_cos * n_cos / denominator_cos
	cosx = cosx + x1_cos
	i_cos = i_cos + 1
print("The cosine value is = ", cosx)
