# Listing 3.4: cutbox.rb
# Create the box
ent = Sketchup.active_model.entities
main_face = ent.add_face [0,0,0], [6,0,0], [6,8,0], [0,8,0]
main_face.reverse!
main_face.pushpull 5
# Draw a line across the upper-right corner
cut = ent.add_line [6,6,5], [4,8,5]
# Remove the new face
cut.faces[1].pushpull -5