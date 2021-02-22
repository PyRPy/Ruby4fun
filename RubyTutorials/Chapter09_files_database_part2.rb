# Chapter09_files_database
# YAML
require 'yaml'
class Person
    attr_accessor :name, :age
end

fred = Person.new
fred.name = "Fred Bloggs"
fred.age = 45
laura = Person.new
laura.name = "Laura Smith"
laura.age = 23
test_data = [ fred, laura ]

puts test_data.to_yaml

# use data from yaml
require 'yaml'
class Person
    attr_accessor :name, :age
end
yaml_string = <<END_OF_DATA
---
- !ruby/object:Person
    age: 45
    name: Jimmy
- !ruby/object:Person
    age: 23
    name: Laura Smith
END_OF_DATA

test_data = YAML.load(yaml_string)
puts test_data[0].name
puts test_data[1].name

# how to install sqlite3
# https://www.sqlite.org/download.html
# https://www.tutorialspoint.com/sqlite/sqlite_installation.htm

require 'sqlite3'
puts "It's all okay!" if defined?(SQLite3::Database)

# Using SQLite with Ruby
require 'sqlite3'
$db = SQLite3::Database.new("dbfile")
$db.results_as_hash = true

def disconnect_and_quit
    $db.close
    puts "Bye!"
    exit
end

def create_table
    puts "Creating people table"
    $db.execute %q{
        CREATE TABLE people (
        id integer primary key,
        name varchar(50),
        job varchar(50),
        gender varchar(6),
        age integer)
    }
end

def add_person
    puts "Enter name:"
    name = gets.chomp
    puts "Enter job:"
    job = gets.chomp
    puts "Enter gender:"
    gender = gets.chomp
    puts "Enter age:"
    age = gets.chomp
    $db.execute("INSERT INTO people (name, job, gender, age) VALUES (?, ?, ?,
    ?)", name, job, gender, age)
end

def find_person
    puts "Enter name or ID of person to find:"
    id = gets.chomp
    person = $db.execute("SELECT * FROM people WHERE name = ? OR id = ?", id,
    id.to_i).first
    unless person
        puts "No result found"
        return
    end
        puts %Q{Name: #{person['name']}
    Job: #{person['job']}
    Gender: #{person['gender']}
    Age: #{person['age']}}
    end

loop do
    puts %q{Please select an option:
        1. Create people table
        2. Add a person
        3. Look for a person
        4. Quit}
    case gets.chomp
    when '1'
        create_table
    when '2'
        add_person
    when '3'
        find_person
    when '4'
        disconnect_and_quit
    end
end

# Connecting to Other Database Systems