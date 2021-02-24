# Listing 3.7: chamfer.rb
# Create the box
ents = Sketchup.active_model.entities
main_face = ents.add_face [0,0,0], [5,0,0], [5,8,0], [0,8,0]
main_face.reverse!
main_face.pushpull 6, true
# Draw a line across a corner
cut = ents.add_line [5, 7, 6], [5, 8, 5]
# Create the chamfer
cut.faces[0].followme main_face.edges