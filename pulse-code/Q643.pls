~Siddhartha
var limit = 20
var a_pytha = 0
var b_pytha = 0
var c_pytha = 0
var m_pytha = 2
var n_pytha = 1
while(c_pytha < limit):
	n_pytha = 1
	while(n_pytha < m_pytha):
		a_pytha = (m_pytha^2) - (n_pytha^2)
		b_pytha = (2 * m_pytha * n_pytha)
		c_pytha = (m_pytha^2) + (n_pytha^2)
		n_pytha = n_pytha + 1
		print(a_pytha, " ")
		print(b_pytha, " ")
		print(c_pytha)
	m_pytha = m_pytha + 1
print("")
print("All pythagorean triplets within limits are generated!")
