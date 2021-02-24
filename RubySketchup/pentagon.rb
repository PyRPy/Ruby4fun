# Listing 3.3: pentagon.rb
# Create the five points of the pentagon
pt1 = [0, 1, 0]
pt2 = [-0.951, 0.309, 0]
pt3 = [-0.588, -0.809, 0]
pt4 = [ 0.588, -0.809, 0]
pt5 = [ 0.951, 0.309, 0]
# Draw the face
pent = Sketchup.active_model.entities.add_face pt1, pt2, pt3,
pt4, pt5
# Display the locations of the stored vertices
puts "Point 0: " + pent.vertices[0].position.to_s
puts "Point 1: " + pent.vertices[1].position.to_s
puts "Point 2: " + pent.vertices[2].position.to_s
puts "Point 3: " + pent.vertices[3].position.to_s
puts "Point 4: " + pent.vertices[4].position.to_s