# Automatic SketchUp Creating 3-D Models in Ruby 
# by Matthew Scarpino

# use curve concept
pt1 = [0, 1, 0]
pt2 = [0.588, -0.809, 0]
pt3 = [-0.951, 0.309, 0]
pt4 = [0.951, 0.309, 0]
pt5 = [-0.588, -0.809, 0]
curve = Sketchup.active_model.entities.add_curve pt1, pt2, pt3,
pt4, pt5, pt1
puts "Point 4: " + pent.vertices[4].position.to_s
