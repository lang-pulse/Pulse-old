~Soumya
var points = 21
var fact_chord = 1
var i = 1
print("The number of points ", points)
print("")
while(i<=points):
	fact_chord = fact_chord * i
	i = i + 1
var d1 = 19
var fact_d1 = 1
var d1i = 1
while(d1i<=d1):
	fact_d1 = fact_d1 * d1i
	d1i = d1i + 1
var d2 = 2
var fact_d2 = 1
var d2i = 1
while(d2i<=d2):
	fact_d2 = fact_d2 * d2i
	d2i = d2i + 1
var chord_fvalue = fact_chord/(fact_d1 * fact_d2)
print("The total number of chords are ", chord_fvalue)
