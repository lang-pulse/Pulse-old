~Pranshul
var str = "www.google.com"
var t
var  i = 0
var curr = 0
var prev = 0
while((str%i)!="~"):
	t = (str%i)
	if(t == " " or t == "-" or t =="." or t=="\t"):
		curr = i-1
		while(curr>prev):
			print((str%curr),"")
			curr = curr-1
		prev = i
	i=i+1
