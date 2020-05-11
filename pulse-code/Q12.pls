~Barath
var i_it
var j_iterator
var rows_it=10
var space_it
i_it=rows_it
while(i_it>=1):
	space_it=0
	while(space_it<=(rows_it-i_it)):
		print(""," ")
		space_it=space_it+1
	j_iterator=i_it
	while(j_iterator<=(2*(i_it-1))):
		print("#"," ")
		j_iterator=j_iterator+1
	j_iterator=0
	while(j_iterator<=(i_it-1)):
		print("","")
		j_iterator=j_iterator+1
	print("")
	i_it=i_it-1
