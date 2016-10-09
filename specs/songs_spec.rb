require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../songs')

class TestSongs <  MiniTest::Test


  def setup
    @song1 = Songs.new("Ray Parker Jr", "Ghostbusters")
    @song2 = Songs.new("Beastie Boys", "Girls")
    @song3 = Songs.new("The Breeders", "Seether")
    @song4 = Songs.new("Weezer", "Buddy Holly")
    @song5 = Songs.new("Young Fathers", "Shame")
    @song6 = Songs.new("The Hives", "Hate To Say I Told You So")

  end


  def test_song_artist
    assert_equal("Ray Parker Jr", @song1.artist)
  end

  def test_song_title
    assert_equal("Girls", @song2.title)
  end

  def test_artist_and_title_together
    assert_equal("Weezer", @song4.artist)
    assert_equal("Buddy Holly", @song4.title)
  end



end