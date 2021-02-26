# Listing 5.6: file_ops.rb
# Create/open a file in read-write mode
f = File.open "example.txt", "w+"
# Write an array of five Strings to the file
nums = ["One", "Two", "Three", "Four", "Five"]
f.puts nums
# Rewind the file, read its lines, and print the third line
f.rewind
arr = f.readlines
puts arr[2]
# Close the file
f.close
puts "Closed? " + f.closed?.to_s
# Delete the file
File.delete "example.txt"
puts "Exists? " + File.exists?("example.txt").to_s