# Chapter 7 Projects and Libraries
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021

# Documentation
# Generating Documentation with RDoc

# Exceptions and Error Handling
# Raising Exceptions
class Person
    def initialize(name)
    raise ArgumentError, "No name present" if name.empty?
    end
end
fred = Person.new('fred')

class BadDataException < RuntimeError
end
class Person2
    def initialize(name)
        raise BadDataException, "No name present" if name.empty?
    end
end
# fred = Person2.new('')

# Handling Exceptions
begin
    puts 10 / 0
rescue
    puts "You caused an error!"
end

# Handling Passed Exceptions
begin
    puts 10 / 0
rescue => e
    puts "You caused the error -> #{e.class}"
end

# Catch and Throw
# catch(:finish) do
#     1000.times do
#         x = rand(1000)
#         throw :finish if x == 123
#     end
#     puts "Generated 1000 random numbers without generating 123!"
# end

def generate_random_number_except_123
    x = rand(1000)
    throw :finish if x > 123 && x < 125
end
    
catch(:finish) do
    1000.times { generate_random_number_except_123 }
    puts "Generated 1000 random numbers without generating 123 - 200!"
end

# The Philosophy of Test-Driven Development
# see seperate files

# Unit testing
# see separate file

# Benchmarking and Profiling
# Simple Benchmarking
require 'benchmark'
puts Benchmark.measure { 10000.times { print "." } }

# Profiling
# see separate file