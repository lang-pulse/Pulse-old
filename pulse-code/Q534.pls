~Pranshul
var tot_socks = 5+7+6
#When We draw 2 socks 
var P_2W_atleast = 5/18 * 4/17
#When We Draw 3 socks
var P_2W_atleast_ = 5/18 * 4/17 * 13/16 + 5/18 * 13/17 * 4/16 + 13/18 * 5/17 * 4/16 + 5/18 * 4/17 * 3/16
if(P_2W_atleast > 25):
	print("We should draw 2 socks")
else if(P_2W_atleast_ >25):
          print("We should draw 3 socks")
