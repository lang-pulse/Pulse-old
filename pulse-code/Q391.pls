~KAUSTUV
var small_angle = 40
var rad_big = 14
var rad = 7
var area_sector_bod = small_angle/360*22/7*rad^2
var area_sector_aoc = small_angle/360*22/7*rad_big^2
var area_shaded = area_sector_aoc-area_sector_bod
print(area_shaded)
