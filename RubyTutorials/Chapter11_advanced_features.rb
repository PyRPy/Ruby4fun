# Chapter 11 Advanced Ruby Features
# Dynamic Code Execution
eval "puts 2 + 2"

my_number = 15
my_code = %{#{my_number} * 2}
puts eval(my_code)

# Bindings
def binding_elsewhere
    x = 20
    return binding
end
remote_binding = binding_elsewhere
x = 10
eval("puts x")
eval("puts x", remote_binding)

# Other Forms of eval
class Person
end

def add_accessor_to_person(accessor_name)
    Person.class_eval %{
        attr_accessor :#{accessor_name}
    }
end

person = Person.new
add_accessor_to_person :name
add_accessor_to_person :gender
person.name = "Carleton DiLeo"
person.gender = "male"
puts "#{person.name} is #{person.gender}"

# Running Other Programs from Ruby
# Basic Ruby Threads in Action
threads = []
10.times do
    thread = Thread.new do
        10.times { |i| print i; $stdout.flush; sleep rand(2) }
    end
    threads << thread
end
threads.each { |thread| thread.join }

# A Fiber in Action
sg = Fiber.new do
    s = 0
    loop do
        square = s * s
        Fiber.yield square
        s += 1
    end
end
10.times { puts sg.resume }