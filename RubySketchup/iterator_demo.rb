# Define the array
five_array = ["one", "two", "three", "four", "five"]
# Print the element indices
print "The array indices: "
five_array.each_index { |index| print index.to_s + " "}
# Capitalize the name of each element and add "o'clock"
five_array = five_array.collect { |name|
name.capitalize + " o'clock"
}
# Print the new element names
print "\n\nThe array elements: "
five_array.each { |name| print name + " "}
# Print the first element whose first letter is less than "G"
print "\n\nFirst element less than G: "
puts five_array.find { |name| name < "G"}