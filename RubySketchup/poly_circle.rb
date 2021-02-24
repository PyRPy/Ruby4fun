# Listing 3.2: poly_circle.rb
ents = Sketchup.active_model.entities
normal = [0, 0, 1]
radius = 1
# Polygon with 8 sides
ents.add_ngon [0, 0, 0], normal, radius, 8
# Circle with 8 sides
ents.add_circle [3, 0, 0], normal, radius, 8
# Polygon with 24 sides
ents.add_ngon [6, 0, 0], normal, radius, 24
# Circle with 24 sides
ents.add_circle [9, 0, 0], normal, radius