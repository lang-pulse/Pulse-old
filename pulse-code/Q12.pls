~Barath
var i_it
var j_it
var rows_it=10
var space_it
i_it=rows_it
while(i_it>=1):
	space_it=0
	while(space_it<=(rows_it-i_it)):
		print(""," ")
		space_it=space_it+1
	j_it=i_it
	while(j_it<=(2*(i_it-1))):
		print("#"," ")
		j_it=j_it+1
	j_it=0
	while(j_it<=(i_it-1)):
		print("","")
		j_it=j_it+1
	print("")
	i_it=i_it-1
