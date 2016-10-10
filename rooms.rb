

class Rooms

  attr_reader :name, :songs, :guests 

  def initialize (name, songs)

    @name = name
    @songs = songs
    @guests = []

  end

  def checked_in(guests)
    guests.each do |guest|
      @guests << guest
    end
  end

  def checked_out()
    @guests = [] 
  end


end  