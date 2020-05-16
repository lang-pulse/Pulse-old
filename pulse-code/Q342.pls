~ Harishankar
var height = 10
var radius = 3.5
var pi = 3.14
var CSA_cylinder
var CSA_hemisphere
var TSA_article
CSA_cylinder = 2*pi*radius*height
CSA_hemisphere = 2*pi*radius^2
TSA_article = CSA_cylinder + 2*CSA_hemisphere
print("TSA of the article is:")
print(TSA_article)
