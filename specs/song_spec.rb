
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

require('minitest/autorun')
require('minitest/rg')
require('minitest/emoji')

class Tests < Minitest::Test


  def setup
    # (name, capacity) from room.rb additional guest, song
    @room1 = Room.new("kylie room", 2)
    @room2 = Room.new("mettalica room", 3)
    @room3 = Room.new("queen room", 4)

    #(guest_name) from guest.rb
    @guest_name1 = Guest.new("Bill Potplant")
    @guest_name2 = Guest.new("Ben Cabbage")
    @guest_name3 = Guest.new("Zippy Flower")

    #(song_name) from songs.rb
    @song1 = Song.new("Blue Hotel by Chris Isaak")
    @song2 = Song.new("Green Door by Shakin Stevens")
    @song3 = Song.new("Red Balloon by a nice German Lady")
    @song4 = Song.new("Orange Crush by REM")
  end

  def test_song_name1()
    actual = @song1.song_name
    assert_equal("Blue Hotel by Chris Isaak", actual)
  end

  def test_song_name2()
    actual = @song2.song_name
    assert_equal("Green Door by Shakin Stevens", actual)
  end

  def test_song_name3()
    actual = @song3.song_name
    assert_equal("Red Balloon by a nice German Lady", actual)
  end

  def test_song_name4()
    actual = @song4.song_name
    assert_equal("Orange Crush by REM", actual)
  end








end
