# Listing 4.1: translate.rb
# Create the face
ents = Sketchup.active_model.entities
tran_face = ents.add_face [-1, -1, 0],
[-1, 1, 0], [1, 1, 0], [1, -1, 0]
# Translate four units in the +x direction
t = Geom::Transformation.new [4, 0, 0]
ents.transform_entities t, tran_face
# Translate six units in the +y direction
t = Geom::Transformation.new [0, 6, 0]

ents.transform_entities t, tran_face
# Translate three units in the -x direction
ents.transform_entities [-3, 0, 0], tran_face