# Chapter09_files_database
# Input and Output
# Opening and Reading Files
File.open("text9.txt").each { |line| puts line }

# another way
f = File.new("text9.txt", "r")
puts f.gets
f.close

# Your Position Within a File
f = File.open("text9.txt")
puts f.pos
puts f.gets
puts f.pos

# Writing to Files
File.open("text9.txt", "a+") do |f|
    f.puts "i beg you again, no more snow !"
end

# File Operations
# seek
f = File.open("text9.txt", "r+")
f.seek(-5, IO::SEEK_END)
f.putc "X"
f.close

# Finding Out When a File Was Last Modified
puts File.mtime("text.txt")

# Basic Databases
# Reading and Searching CSV Data
require 'csv'
CSV.open('data9.txt').each do |person|
    p person
end

require 'csv'
people = CSV.parse(File.read('data9.txt'))
puts people[0][0]
puts people[1][0]
puts people[2][0]

require 'csv'
people = CSV.read('data9.txt')
laura = people.find { |person| person[0] =~ /Laura/ }
p laura

# Storing Objects and Data Structures
class Person
    attr_accessor :name, :job, :gender, :age
end
   
fred = Person.new
fred.name = "Fred Bloggs"
fred.age = 45
laura = Person.new
laura.name = "Laura Smith"
laura.age = 23

require 'pstore'
store = PStore.new("storagefile")
    store.transaction do
    store[:people] ||= Array.new
    store[:people] << fred
    store[:people] << laura
end