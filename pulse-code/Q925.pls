var n_round_10 = 12345
var a_round_10 = (n_round_10 // 10) * 10
var b_round_10 = a_round_10 + 10
if((n_round_10 - a_round_10) > (b_round_10 - n_round_10)):
	print(b_round_10)
else:
	print(a_round_10)
