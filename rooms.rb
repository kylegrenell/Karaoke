require_relative('guests')
require_relative('songs')

class Rooms

  attr_reader :name, :songs, :guests 

def initialize (name, songs)

  @name = name
  @songs = songs
  @guests = []

end

def check_in(new_guests)
  new_guests.each { |guests| @guests << guests.name } 
end

def check_out(new_guests)
  new_guests.each { |guests| @guests.delete(guests.name) }  
end

end  