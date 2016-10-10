
require ('minitest/autorun')
require ('minitest/rg')
require ('pry-byebug')
require_relative ('../rooms')
require_relative ('../songs')
require_relative ('../guests')

class TestRooms < MiniTest::Test

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

  def test_check_in_guests_in_room
    @karaoke_room.checked_in(@new_guests)
    assert_equal(4, @karaoke_room.guests.count)
  end

  def test_check_out_guests
    @karaoke_room.checked_in(@new_guests)
    assert_equal(4, @karaoke_room.guests.count)
  end

  def room_name
    assert_equal("Karaoke Room", @karaoke_room.name)
  end

  def test_room_song_name
    assert_equal("Ghostbusters", @karaoke_room.songs[0].title)
  end

  def test_room_artist
    assert_equal("Ray Parker Jr", @karaoke_room.songs[0].artist)
  end

end
