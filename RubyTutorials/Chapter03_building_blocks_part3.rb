# Chapter03_building_blocks
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021
# Flow Control
# if and unless
age = 10
puts "You're too young to use this system" if age < 18

age = 10
if age < 18
puts "You're too young to use this system"
end

age = 10
if age < 18
    puts "You're too young to use this system"
    puts "So we're going to exit your program now"
    # exit
end

age = 10
unless age >= 18
    puts "You're too young to use this system"
    puts "So we're going to exit your program now"
    # exit
end

age = 19
if age < 21
    puts "You can't drink in most of the United States"
    if age >= 18
        puts "But you can in the United Kingdom!"
    end
end

age = 10
if age < 18
    puts "You're too young to use this system"
else
    puts "You can use this system"
end

# ?, the Ternary Operator
age = 10
type = age < 18 ? "child" : "adult"
puts "You are a " + type

age = 10
if age < 18
    type = 'child'
else
    type = 'adult'
end
puts "You are a " + type

# elsif and case
fruit = "orange"
if fruit == "orange"
    color = "orange"
elsif fruit == "apple"
    color = "green"
elsif fruit == "banana"
    color = "yellow"
else
    color = "unknown"
end
puts color 

# use case
fruit = "orange"
color = case fruit
when "orange"
    "orange"
when "apple"
    "green"
when "banana"
    "yellow"
else
    "unknown"
end

# case pattern matching
response = { error: 'Bad Gateway', code: 502 }
case response
in { data: data, code: code }
    puts "Success #{data}, Code: #{code}"
in { error: error, code: code }
    puts "Error: #{error}, Code: #{code}"
end

# while and until
1.upto(5) { |number| puts number }

x = 1
while x < 100
    puts x
    x = x * 2
end

i = 1
i = i * 2 until i > 1000 
puts i 

# Code Blocks
x = [1, 2, 3]
x.each { |y| puts y }

x = [1, 2, 3]
x.each do |y|
    puts y
end

# define methods or functions
def each_vowel(&code_block)
    %w{a e i o u}.each { |vowel| code_block.call(vowel) }
end
each_vowel { |vowel| puts vowel }

def each_vowel2
    %w{a e i o u}.each { |vowel| yield vowel }
end
each_vowel2 { |vowel| puts vowel }

print_parameter_to_screen = Proc.new { |x| puts x }
print_parameter_to_screen.call(100)

# Other Useful Building Blocks
# Dates and Times
puts Time.now 

# define a class for time 
class Integer
    def seconds 
        self 
    end

    def minutes 
        self * 60 
    end 

    def hours 
        self * 60 * 60 
    end 

    def days
        self * 60 * 60 * 24 
    end 

end

puts Time.now 
puts Time.now + 10.minutes
puts Time.now + 16.hours 
puts Time.now - 7.days 


year = 2020
month = 1
day = 16
hour = 12
min = 57
sec = 10
msec = 42
Time.local(year, month, day, hour, min, sec, msec)
Time.gm(year, month, day, hour, min, sec, msec)
Time.utc(year, month, day, hour, min, sec, msec)
Time.gm(2020, 02).to_i

epoch_time = Time.gm(2020, 2).to_i
t = Time.at(epoch_time)
puts t.year, t.month, t.day

# Ranges
('A'..'Z').to_a.each { |letter| print letter }
('A'..'Z').each { |letter| print letter }

a = [2, 4, 6, 8, 10, 12]
p a[1..3]

a[1..3] = ["a", "b", "c"]
p a

# Symbols
current_situation = :good
puts "Everything is fine" if current_situation == :good
puts "PANIC!" if current_situation == :bad

current_situation = "good"
puts "Everything is fine" if current_situation == "good"
puts "PANIC!" if current_situation == "bad"
# not as efficient as symbols ?

# Converting Objects to Other Classes
puts "12".to_i + "10".to_i
puts 12.to_s + 10.to_s
