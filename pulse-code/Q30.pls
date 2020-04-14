var x=1
var n=5
var i=1
var sum1=0
var sum2=0
var j=2
var finalsum
while(i<=n):
	sum1=sum1+((x^i)/i)
	i=i+2
while(j<=n):
	sum2=sum2+((x^j)/j)
	j=j+2
finalsum=sum1-sum2
print("the value of the given series till the given term is: ")
print(finalsum)
