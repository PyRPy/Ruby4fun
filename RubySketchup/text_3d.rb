# Access the Entities container
ents = Sketchup.active_model.entities
# Draw in Times New Roman, left-aligned, tolerance = 100
string1 = "This text is printed in \n \
left-aligned Times New Roman \n with a tolerance of 100."
ents.add_3d_text string1, TextAlignLeft, "Times",
false, false, 10, 100, 0, true, 10
ents.transform_entities [0, 60, 0], ents.to_a
# Draw in bold Arial, center-aligned, tolerance = 10
string2 = "This text is printed in \n \
center-aligned bold Arial \n with a tolerance of 10."
ents.add_3d_text string2, TextAlignCenter, "Arial",
true, false, 10, 10, 0, true, 10
ents.transform_entities [0, 60, 0], ents.to_a
# Draw in outline, italicized Courier New, tolerance = 1

string3 = "This text outline is printed in \n \
right-aligned, italicized \n Courier New with a tolerance of 1."
ents.add_3d_text string3, TextAlignRight, "Courier New",
false, true, 10, 1, 0, false, 10