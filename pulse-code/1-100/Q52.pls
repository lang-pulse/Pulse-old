~Pranav
var n_lucky = 50
var s_lucky = 0
var p_lucky = 0
var i_lucky = 1
while(i_lucky < n_lucky):
	s_lucky = i_lucky % 10
	if(( s_lucky == 4) or (s_lucky == 7)):
		print(i_lucky)
	i_lucky = i_lucky + 1
