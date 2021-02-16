# Chapter03_building_blocks
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021
# matching
puts "String has vowels" if "This is a test" =~ /[aeiou]/

puts "String contains no digits" unless "This is a test" =~ /[0-9]/

x = "This is a test".match(/(\w+) (\w+)/)
puts x[0]
puts x[1]
puts x[2]

# Arrays and Lists
# basic arrays
x = [1, 2, 3, 4]
puts x[2]

x[2] += 1
puts x[2]

# push
x.push("word")
puts x

# pop
y = []
y.push("word")
y.push("play")
y.push("fun")

puts y.length
puts y.pop 
puts y.pop 
puts y.pop 
puts y.length

# join 
x = ["Word", "Play", "Fun"]
puts x.join

x = ["Word", "Play", "Fun"]
puts x.join(', ')

# Splitting Strings into Arrays
puts "This is a test".scan(/\w/).join(',')

puts "Short sentence. Another. No more.".split(/\./).inspect
puts "Words with lots of spaces".split(/\s+/).inspect

# Array Iteration
[1, "test", 2, 3, 4].each { |element| puts element.to_s + "X" }

puts [1, 2, 3, 4].collect { |element| element * 2 }

a = [1, "test", 2, 3, 4]
i = 0
while (i < a.length)
    puts a[i].to_s + "Y"
    i += 1
end

# Array Addition and Concatenation
x = [1, 2, 3]
y = ["a", "b", "c"]
z = x + y
p z

# Array Subtraction and Difference
x = [1, 2, 3, 4, 5]
y = [1, 2, 3]
z = x - y
p z

# Checking for an Empty Array
x = []
puts "x is empty" if x.empty?

# Checking an Array for a Certain Item
x = [1, 2, 3]
p x.include?("x")
p x.include?(3)

# Accessing the First and Last Elements of the Array
x = [1, 2, 3]
puts x.first
puts x.last

x = [1, 2, 3]
puts x.first(2).join("-")

# Reversing the Order of the Array’s Elements
x = [1, 2, 3]
p x.reverse

# hashes
dictionary = { cat: "feline animal", dog: "canine animal" }
puts dictionary.size

puts dictionary[:cat]

# changes to values
dictionary[:cat] = "fluffy animal"
puts dictionary[:cat]

# Basic Hash Methods
# Iterating Through Hash Elements
x = { "a" => 1, "b" => 2 }
x.each { |key, value| puts "#{key} equals #{value}" }

# Retrieving Keys
x = { a: 1, b: 2, c: 3 }
p x.keys 

# Deleting Hash Elements
x = { a: 1, b: 2 }
x.delete(:a)
p x

# Deleting Hash Elements Conditionally
x = { a: 100, b: 20 }
x.delete_if { |key, value| value < 25 }
p x

# Hashes Within Hashes
people = {
    fred: {
        name: "Fred Elliott",
        age: 63,
        gender: "male",
        favorite_painters: ["Monet", "Constable", "Da Vinci"]
    },
    janet: {
        name: "Janet S Porter",
        age: 55,
        gender: "female"
    }
}

puts people[:fred][:age]
puts people[:janet][:gender]
puts people[:janet]

puts people[:fred][:favorite_painters].length
puts people[:fred][:favorite_painters].join(", ")
