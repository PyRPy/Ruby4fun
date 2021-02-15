# Chapter03_building_blocks
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021
# basic expression
print (100 - 5 * (2 - 1)).to_s + "\n"

# variables
x = 10
y = 100 
puts x + y
x += y
puts x

# comparison 
age = 10
puts "you are too you" if age < 18

age = 24
puts "you'are a teenager" if age > 12 && age < 20
puts "you are not a teenager" unless age > 12 && age < 20

puts "you are 24!" if age == 24

puts "you are either very young or very old" if age > 80 || age < 10

gender = "male"
age = 6
puts "a very young or old man" if gender == "male" && (age < 18 || age > 85)

# looping through numbers
5.times do puts "test" end

5.times { puts "Test" }

1.upto(5) {|number| puts number }

1.upto(5) do |number|
    puts number 
end

# floating point numbers
puts 10 / 3
puts 10.0 / 3.0

x = 10
y = 3
puts x.to_f / y.to_f 

puts 5.7.to_i

# constants
Pi = 3.141592
Pi = 500 # you got a warning

# text and strings
puts "hello world".class 

x = "Test"
y = "String"
puts "success!" if x + y == "TestString"

x = %q{this is a test
of the multi line 
capabilities}

puts x

# string expressions
puts "success!" if "test" + "string" == "teststring"

puts "abc" * 5
puts "y" > "x"
puts "x".ord
puts "A".ord

# integer to character
puts 120.chr 

# interpolation
x = 10
y = 20
puts "#{x} + #{y} = #{x + y}"

x = "cat"
puts "the #{x} in the hat"

# use type conversion
x = 10
y = 20
puts x.to_s + " + " + y.to_s + " = " + (x + y).to_s
puts "#{x} + #{y} = #{x + y}"

# string method
puts "this is a test".length

# Regular Expressions and String Manipulation
# Substitutions
puts "foobar".sub('bar', 'foo')
puts "this is a test".gsub('i', '')

x = "This is a test"
puts x.sub(/^../, 'Hello')

x = "This is a test"
puts x.sub(/..$/, 'Hello')

# Iteration with a Regular Expression
"xyz".scan(/./) { |letter| puts letter }
"This is a test".scan(/../) { |x| puts x }
"This is a test".scan(/\w\w/) { |x| puts x }

# extract numbers from a sentence
"The car costs $1000 and the cat costs $10".scan(/\d+/) do |x|
    puts x
end

"This is a test".scan(/[aeiou]/) { |x| puts x }
"This is a test".scan(/[a-m]/) { |x| puts x }