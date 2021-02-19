# Chapter 6 Classes, Objects, and Modules
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021

# The Scope of Constants
def circumference_of_circle(radius)
    2 * Pi * radius
end
Pi = 3.141592
puts circumference_of_circle(10)

Pi = 3.141592
class OtherPlanet
    Pi = 4.5
    def self.circumference_of_circle(radius)
        radius * 2 * Pi
    end
end
puts OtherPlanet.circumference_of_circle(10)

# override
puts OtherPlanet::Pi
puts Pi

# Modules, Namespaces, and Mix-Ins
module NumberStuff
    def self.random
        rand(1000000)
    end
end

module LetterStuff
    def self.random
        (rand(26) + 65).chr
    end
end
puts NumberStuff.random
puts LetterStuff.random

# Modules simply provide ways to organize methods, classes, and constants into
# separate namespaces

# classes with the same name, but in different modules:
module ToolBox
    class Ruler
        attr_accessor :length
    end
end
module Country
    class Ruler
        attr_accessor :name
    end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Genghis Khan from Moskau"

# mix ins
module UsefulFeatures
    def class_name
        self.class.to_s
    end
end
class Person
    include UsefulFeatures
end
x = Person.new
puts x.class_name

module AnotherModule
    def do_stuff
        puts "This is a test"
    end
end
include AnotherModule
do_stuff

# Enumerable
[1,2,3,4,5].each { |number| puts number }
my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
    longest_word = word if longest_word.length < word.length
end
puts longest_word

# find the largest (or smallest) number
my_array = %w{10 56 92 3 49 588 18}
highest_number = 0
my_array.each do |number|
    number = number.to_i
    highest_number = number if number > highest_number
end
puts highest_number

# more examples by enumerable
puts [1,2,3,4].collect { |i| i.to_s + "x" }
[1,2,3,4].detect { |i| i.between?(2,3) }
puts [1,2,3,4].select { |i| i.between?(2,4) }
[4,1,3,2].sort
[1,2,3,4].max
[1,2,3,4].min

# with a class
class AllVowels
    VOWELS = %w{a e i o u}
    def each
        VOWELS.each { |v| yield v }
    end
end
x = AllVowels.new 
x.each { |v| puts v }

# include enumerable
class AllVowels
    include Enumerable
    VOWELS = %w{a e i o u}
    def each
        VOWELS.each { |v| yield v }
    end
end

x = AllVowels.new 
print x.collect { |i| i + "x" }

# Comparable
puts 1 <=> 2

class Song
    include Comparable
    attr_accessor :length
    def <=>(other)
        @length <=> other.length
    end
    def initialize(song_name, length)
        @song_name = song_name
        @length = length
    end
end

a = Song.new('Rock around the clock', 143)
b = Song.new('Bohemian Rhapsody', 544)
c = Song.new('Minute Waltz', 60)
puts a < b
puts a.between?(c,b)

# Using Mix-Ins with Namespaces and Classes
module ToolBox
    class Ruler
    attr_accessor :length
    end
end
module Country
    class Ruler
    attr_accessor :name
    end
end
a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Genghis Khan of Moskau"

include Country
c = Ruler.new
c.name = "King Henry VIII"

# STATIC TYPING
count = 3
puts count.class