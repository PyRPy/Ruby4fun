# Listing 5.7: dir_demo.rb
# Create the directory and its files
Dir.mkdir "colors"
File.new("./colors/red", "w+").close
File.new("./colors/yellow", "w+").close
File.new("./colors/blue", "w+").close
# Create a Dir object and populate the file array
color_dir = Dir.new "colors"
file_array = []
color_dir.each {|f|
    if f[0].chr != "."
        file_array << File.new("./colors/" + f)

    end
}
# Display the names of the files in the file array
file_array.each {|f| puts f.path}
# Close and delete the files
file_array.each {|f|
    filename = f.path
    f.close
    File.delete filename
    puts "Deleted " + filename
}
# Close and delete the directory
color_dir.close
Dir.rmdir "colors"