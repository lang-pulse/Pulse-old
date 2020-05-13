~ Harishankar
var lenght_track = 106
var dist_between_inner_parallel_line_segments = 60
var width_track = 10
var dist_along_inner_edge_track
var area_track
var pi_const = 3.14
var radius_inner_semicircle = dist_between_inner_parallel_line_segments/2
var circumference_semicirce = pi_const*radius_inner_semicircle
dist_between_inner_parallel_line_segments = lenght_track +circumference_semicirce +lenght_track +circumference_semicirce
print("The distance between the inner parallel line segemets of track:")
print(dist_between_inner_parallel_line_segments)
var area_rectangular_shape
area_rectangular_shape =lenght_track*width_track
var radius_outer_semicircle = radius_inner_semicircle +width_track
var area_outer_semicircle = (1/2)*pi_const * radius_outer_semicircle^2
var area_inne_semicircle = (1/2)*pi_const*radius_inner_semicircle^2
area_track = area_rectangular_shape + 2*(area_outer_semicircle-area_inne_semicircle) +area_rectangular_shape
print("Area of the track is:")
print(area_track)
