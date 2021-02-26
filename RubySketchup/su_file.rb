# Create a new design
Sketchup.file_new
ents = Sketchup.active_model.entities
face = ents.add_face [-1, -1, 0], [-1, 1, 0], [1, 1, 0], [1, -1, 0]
face.pushpull 1
# Save the design and open it in SketchUp
Sketchup.active_model.save "example.skp"
Sketchup.open_file "example.skp"