# GR is the Golden Ratio: (1 + sqrt(5))/2
GR = 1.618
# Create the points in the mesh
pt0 = Geom::Point3d.new 0, 1, GR
pt1 = Geom::Point3d.new 0, -1, GR
pt2 = Geom::Point3d.new GR, 0, 1
pt3 = Geom::Point3d.new -GR, 0, 1
pt4 = Geom::Point3d.new 1, -GR, 0
pt5 = Geom::Point3d.new -1, -GR, 0
pt6 = Geom::Point3d.new 0, 1, -GR
pt7 = Geom::Point3d.new 0, -1, -GR
pt8 = Geom::Point3d.new GR, 0, -1
pt9 = Geom::Point3d.new -GR, 0, -1
pt10 = Geom::Point3d.new 1, GR, 0
pt11 = Geom::Point3d.new -1, GR, 0

# The PolygonMesh contains 12 points and 20 triangular faces
pm = Geom::PolygonMesh.new 12, 20
# Top half
pm.add_polygon pt0, pt1, pt2
pm.add_polygon pt0, pt1, pt3
pm.add_polygon pt1, pt4, pt5
pm.add_polygon pt1, pt4, pt2
pm.add_polygon pt1, pt3, pt5
# Middle
pm.add_polygon pt4, pt5, pt7
pm.add_polygon pt2, pt8, pt4
pm.add_polygon pt10, pt11, pt0
pm.add_polygon pt3, pt9, pt5
pm.add_polygon pt2, pt8, pt10
pm.add_polygon pt2, pt0, pt10
pm.add_polygon pt9, pt5, pt7
pm.add_polygon pt7, pt8, pt4
pm.add_polygon pt11, pt9, pt3
pm.add_polygon pt11, pt3, pt0

# Bottom half
pm.add_polygon pt6, pt7, pt8
pm.add_polygon pt6, pt7, pt9
pm.add_polygon pt6, pt10, pt11
pm.add_polygon pt6, pt10, pt8
pm.add_polygon pt6, pt9, pt11

# Draw the Faces in the mesh
ents = Sketchup.active_model.entities
ents.add_faces_from_mesh pm
