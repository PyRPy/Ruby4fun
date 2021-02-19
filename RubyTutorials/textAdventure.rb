# Chapter 6 Classes, Objects, and Modules
# Beginning Ruby 3 by Carleton Dileo, Peter Cooper 2021
# Dungeon Concepts
# Creating the Initial Classes
class Dungeon
    attr_accessor :player
    def initialize(player)
        @player = player
        @rooms = {}
    end
end
class Player
    attr_accessor :name, :location
    def initialize(player_name)
        @name = player_name
    end
end
class Room
    attr_accessor :reference, :name, :description, :connections
    def initialize (reference, name, description, connections)
        @reference = reference
        @name = name
        @description = description
        @connections = connections
    end
end
me = Player.new("Fred Bloggs")
my_dungeon = Dungeon.new(me)
puts my_dungeon.player.name