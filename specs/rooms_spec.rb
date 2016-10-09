
require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../rooms')
require_relative ('../songs')
require_relative ('../guests')

class TestRooms < Minitest::Test

  def setup
    @song1 = Songs.new("Ray Parker Jr", "Ghostbusters")
    @song2 = Songs.new("Beastie Boys", "Girls")
    @song3 = Songs.new("The Breeders", "Seether")
    @song4 = Songs.new("Weezer", "Buddy Holly")
    @song5 = Songs.new("Young Fathers", "Shame")
    @song6 = Songs.new("The Hives", "Hate To Say I Told You So")
      
    @guest1 = Guests.new("Carrie")
    @guest2 = Guests.new("Cas")
    @guest3 = Guests.new("Granny")
    @guest4 = Guests.new("Grandpa")

    @karaoke_songs = [@song1, @song2, @song3, @song4, @song5, @song6]

    @karaoke_room = Rooms.new("Karaoke Room", @karaoke_songs)

    @new_guests = [@guest1, @guest2, @guest3, @guest4]

  end
end

def test_check_in_guests_in_room
 @karaoke_room.check_in(@new_guests)
 assert_equal(["Carrie","Cas","Granny","Grandpa"], @karaoke_room.new_guests)
end

def test_check_out_guests
  @karaoke_room.check_in(@new_guests)
  assert_equal(["Carrie","Cas","Granny","Grandpa"], @karaoke_room.guests)
end
         
def room_name
  assert_equal("Karaoke Room", @karaoke_room.name)
end

def test_room_song_name
  assert_equal("Hate To Say I Told You So", @karaoke_room.song6.title)
end

def test_room_artist
  assert_equal("The Hives", @karaoke_room.song6.artist)
end


