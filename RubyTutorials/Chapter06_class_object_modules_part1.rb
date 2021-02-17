# Chapter 6 Classes, Objects, and Modules
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021

# use functions
def perimeter_of_square(side_length)
    side_length * 4
    end

    def area_of_square(side_length)
    side_length * side_length
end

def perimeter_of_triangle(side1, side2, side3)
    side1 + side2 + side3
end

def area_of_triangle(base_width, height)
    base_width * height / 2
end

class Shape
end

# square shape
class Square < Shape
    def initialize(side_length)
        @side_length = side_length
    end
    def area
        @side_length * @side_length
    end
    def perimeter
        @side_length * 4
    end
end

# triangle shape
class Triangle < Shape
    def initialize(base_width, height, side1, side2, side3)
        @base_width = base_width
        @height = height
        @side1 = side1
        @side2 = side2
        @side3 = side3
    end
    def area
        @base_width * @height / 2
    end
    def perimeter
        @side1 + @side2 + @side3
    end

end

# do some calculations
puts area_of_triangle(6,6)
puts perimeter_of_square(5)

my_square = Square.new(5)
puts my_square.area 
puts my_square.perimeter

my_triangle = Triangle.new(6, 6, 7.81, 7.81, 7.81)
puts my_triangle.area
puts my_triangle.perimeter

# Local, Global, Object, and Class Variables
class Square
    def initialize(side_length)
    @side_length = side_length
    end
    def area
    @side_length * @side_length
    end
end

a = Square.new(10)
b = Square.new(5)
puts a.area
puts b.area

# Local Variables
x = 10
puts x

def basic_method
    puts x
end
x = 10
# basic_method # error

def basic_method
    x = 50
    puts x
end
x = 10
basic_method
puts x

# Global Variables
def basic_method
    puts $x # use $ to declare global 
end
$x = 10
basic_method

# basic_method
class Square
    def initialize(side_length)
        @side_length = side_length
    end
    def area
        @side_length * @side_length
    end
end
a = Square.new(10)
b = Square.new(5)
puts a.area
puts b.area

# Class Variables
class Square
    def initialize
        if defined?(@@number_of_squares)
            @@number_of_squares += 1
        else
            @@number_of_squares = 1
        end
    end
    def self.count
        @@number_of_squares
    end
end

a = Square.new
b = Square.new
puts Square.count

# Class Methods vs. Instance Methods
class Square
    def self.test_method
        puts "Hello from the Square class!"
    end
    def test_method
        puts "Hello from an instance of class Square!"
    end
end

Square.test_method
Square.new.test_method

# object counter
class Square
    def initialize
        if defined?(@@number_of_squares)
            @@number_of_squares += 1
        else
            @@number_of_squares = 1
        end
    end
    def self.count
        @@number_of_squares
    end
end

a = Square.new
puts Square.count
b = Square.new
puts Square.count
c = Square.new
puts Square.count