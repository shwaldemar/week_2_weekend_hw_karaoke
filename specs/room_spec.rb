
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
    @guest_name4 = Guest.new("Bungle Rainbow")
    @guest_name5 = Guest.new("George Playschool")

    #(song_name) from songs.rb
    @song1 = Song.new("Blue Hotel by Chris Isaak")
    @song2 = Song.new("Green Door by Shakin Stevens")
    @song3 = Song.new("Red Balloon by a nice German Lady")
    @song4 = Song.new("Orange Crush by REM")
  end

  def test_room_name1()
    actual = @room1.name
    assert_equal("kylie room", actual )
  end

  def test_room_name2()
    actual = @room2.name
    assert_equal("mettalica room", actual )
  end

  def test_room_capacity1
    actual = @room1.capacity
    assert_equal(2, actual)
  end

  def test_room_capacity2
    actual = @room2.capacity
    assert_equal(3, actual)
  end

  def test_room_capacity3
    actual = @room3.capacity
    assert_equal(4, actual)
  end

  def test_total_room_capacity
    actual = (@room3.capacity + @room2.capacity + @room1.capacity)
    assert_equal(9, actual)
  end

  def test_add_customer_to_room

  end









  # def test_guest_name
  # end
  #
  #
  # def test_check_in_guest
  # end
  #
  # def test_check_out_guest
  # end
  #
  # def test_add_song
  # end
  #
  # def test_check_capacity
  # end


end
