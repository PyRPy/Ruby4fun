# https://www.ruby-lang.org/en/documentation/quickstart/
# Ruby in Twenty Minutes
# first program in Ruby
print "hello world !\n"
puts "hello"

# calculate
num = 3 + 2
puts num 

square_root = Math.sqrt(9)
puts square_root

# Modules Group Code by Topic
a = 3**2
b = 4**2
puts Math.sqrt(a + b)

# define a function
def hi 
    puts "hello world!"
end

hi
hi()

# another function with input parameters
def hi(name)
    puts "hello #{name}!"
end

hi("Dave")

# Holding Spots in a String
def hi(name = "world")
    puts "hello #{name.capitalize}!"
end

hi("chris")

# how to define a class
class Greeter
    def initialize(name = "world")
        @name = name 
    end

    def say_hi
        puts "hi #{@name}!"
    end

    def say_bye
        puts "bye #{@name}, come back soon."
    end
end

greeter = Greeter.new("Pat")
greeter.say_hi

# greeter.@name
# Under the Object’s Skin
puts Greeter.instance_methods(false)

# Altering Classes—It’s Never Too Late
class Greeter
    attr_accessor :name 
end

greeter = Greeter.new("Rudy")
greeter.say_bye