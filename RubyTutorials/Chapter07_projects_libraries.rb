# Chapter 7 Projects and Libraries
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021

# Inclusions from Other Directories
$:.each { |d| puts d }

# Logic and Including Code
# Nested Inclusions
# Libraries
# The Standard Libraries
# net/http
require 'net/http'
uri = URI.parse('https://ruby-doc.org/')
http_request = Net::HTTP.new(uri.host, uri.port)
http_request.use_ssl = true
response = http_request.get('/')
puts response.body.force_encoding("ISO-8859-1")

# OpenStruct
require 'ostruct'
person = OpenStruct.new
person.name = "Fred Bloggs"
person.age = 25

# RubyGems
gem list 