~Pranshul
var n = input("Enter the total number of elements ", "i")
var m_index1 = -1
var m_index = 0
var median_261 = 0
var median2_261 = -1
if(n%2 == 0):
	m_index = n/2 - 1
	m_index1 = n/2
else :
	m_index = (n-1)/2
var i261 = 0
var sum261 = 0
while(i261<n):
	var t = input(" ","i")
	sum261 = sum261+t
	if(i261 == m_index):
		median_261 = t
	else:
		if(m_index1 != -1):
			if(i261 == m_index1):
				median2_261 = t
	i261 = i261+1
var mean261 = sum261/n
print("Mean = ",mean261)
if(m_index1==-1):
	print("Median = ", median_261)
else:
	print("Medians are, ",median_261)
	print("and ", median2_261)
