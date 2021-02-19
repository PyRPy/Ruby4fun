# Chapter 6 Classes, Objects, and Modules
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021

# inheritance
class ParentClass
    def method1
        puts "Hello from method1 in the parent class"
    end
    def method2
        puts "Hello from method2 in the parent class"
    end
end

class ChildClass < ParentClass 
    def method2 
        puts "hello from method2 in the child class"
    end
end

my_object = ChildClass.new 
my_object.method1
my_object.method2

# another example
class Person
    def initialize(name)
    @name = name
    end
    def name
        @name
    end
end

class Doctor < Person 
    def name 
        "Dr. " + super 
    end 
end

# Overriding Existing Methods
x = "This is a test"
puts x.class
puts x.length
puts x.upcase

# overriding the length method of the String class
class String
    def length
    20
    end
end
puts "This is a test".length
puts "a".length
puts "A really long line of text".length

# override your own methods
class Dog
    def talk
    puts "Woof!"
    end
end
my_dog = Dog.new
my_dog.talk

class Dog
    def talk
    puts "Howl!"
    end
end
my_dog.talk

# Reflection and Discovering an Object’s Methods
a = "This is a test"
# puts a.methods.join(' ')

class Person2
    attr_accessor :name, :age
end
p = Person2.new
p.name = "Fred"
p.age = 20
puts p.instance_variables

# Encapsulation
class Person
    def initialize(name)
        set_name(name)
    end
    def name
        @first_name + ' ' + @last_name
    end
    def set_name(name)
        first_name, last_name = name.split(/\s+/)
        set_first_name(first_name)
        set_last_name(last_name)
    end
    def set_first_name(name)
        @first_name = name
    end
    def set_last_name(name)
        @last_name = name
    end
end

p = Person.new("Fred Bloggs")
puts p.name

p = Person.new("Fred Bloggs")
p.set_last_name("Smith")
puts p.name

# Luckily, encapsulation lets you solve the problem
class Person3
    def initialize(name)
        set_name(name)
    end
    def name
        @first_name + ' ' + @last_name
    end
private
    def set_name(name)
        first_name, last_name = name.split(/\s+/)
        set_first_name(first_name)
        set_last_name(last_name)
    end
    def set_first_name(name)
        @first_name = name
    end
    def set_last_name(name)
        @last_name = name
    end
end

p = Person3.new("Fred Bloggs")
# p.set_last_name("Smith") # error

# protected method
class Person4
    def initialize(age)
        @age = age
    end
    def age
        @age
    end
    def age_difference_with(other_person)
        (self.age - other_person.age).abs
    end
    protected :age
end
fred = Person4.new(34)
chris = Person4.new(25)
puts chris.age_difference_with(fred)
# puts chris.age # error

# Polymorphism
class Animal
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    end
class Cat < Animal
    def talk
        "Meaow!"
    end
end

class Dog2 < Animal
    def talk
        "Woof!"
    end
end

animals = [Cat.new("Flossie"), Dog2.new("Clive"), Cat.new("Max")]
animals.each do |animal|
    puts animal.talk 
end

# cannot have two classes, override the other one ?

puts 1000.to_s
puts [1,2,3].to_s
puts ({ name: 'Fred', age:10 }).to_s

# Nested Classes
class Drawing
    def self.give_me_a_circle
        Circle.new
    end
    class Line
    end
    class Circle
        def what_am_i
            "This is a circle"
        end
    end
end

a = Drawing.give_me_a_circle
puts a.what_am_i

b = Drawing::Circle.new
puts b.what_am_i
c = Circle.new
puts c.what_am_i