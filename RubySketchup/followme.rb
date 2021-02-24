# Listing 3.5: followme.rb
# Access the Entities container
model = Sketchup.active_model
ent = model.entities
# Create the primary face
circle = ent.add_circle [0,0,0], [0,0,1], 2
circle_face = ent.add_face circle
# Create the path
path = ent.add_curve [10,0,0], [10,0,5], [10,5,5],
[10,5,0], [10,0,0]
# Extrude the circle along the path
circle_face.followme path