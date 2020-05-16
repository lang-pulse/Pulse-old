~Pranshul
var num_vowels = 5
var num_con = 3
#Let number of ways vowels can be arranged be Arr_V, then Arr_V = 5P5
var Arr_V = 120
#Let number of ways consonents can be arranged be Arr_C, then Arr_C = 3P3
var Arr_C = 6
var Answer = 2 *(Arr_V * Arr_C)
print("Total number of ways in which vowels and consonent occur together = ", Answer)
