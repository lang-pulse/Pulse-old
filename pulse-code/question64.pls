var decn=79
var rmd
var q
var dn=0
var m
var l
var i=1
var j 
var tmp
q = decn
l = q
while(l>0);
	l = l/16
tmp = l%16
if(tmp<10):
	tmp = tmp + 48
else:
	tmp = tmp + 55
	dn = dn*100 + tmp
m = dn
while(m>0):
	m = m / 100
	s = m % 100
	print(s)
