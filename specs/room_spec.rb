
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

#1. Test room1 name attr_reader
  def test_room_name1
    actual = @room1.name
    assert_equal("kylie room", actual )
  end

#2. Test room2 name attr_reader
  def test_room_name2()
    actual = @room2.name
    assert_equal("mettalica room", actual )
  end

#3. Test room1 capacity attr_reader
  def test_room_capacity1
    actual = @room1.capacity
    assert_equal(2, actual)
  end

#4. Test room2 capacity attr_reader
  def test_room_capacity2
    actual = @room2.capacity
    assert_equal(3, actual)
  end

#5. Test room3 capacity attr_reader
  def test_room_capacity3
    actual = @room3.capacity
    assert_equal(4, actual)
  end

#5. Test total room capacity attr_reader
  def test_total_room_capacity
    actual = (@room3.capacity + @room2.capacity + @room1.capacity)
    assert_equal(9, actual)
  end

#6. Test add guest to room guest array.
  def test_check_in_guest
    @room1.check_in_guest(@guest_name1)
    stepa = @room1.guest
    actual = stepa.count
    assert_equal(1, actual)
  end

#7. Test add and remove guest from room1 guest array.
  def test_check_out_guest_r1_capacity2
    @room1.check_in_guest(@guest_name1)
    @room1.check_in_guest(@guest_name2)
    @room1.check_out_guest(@guest_name1)
    stepa = @room1.guest
    actual = stepa.count
    assert_equal(1, actual)
  end

#8. Test add and remove guest from room2 guest array.
  def test_check_out_guest_r2_capacity3
    @room2.check_in_guest(@guest_name1)
    @room2.check_in_guest(@guest_name2)
    @room2.check_in_guest(@guest_name3)
    @room2.check_out_guest(@guest_name1)
    stepa = @room2.guest
    actual = stepa.count
    assert_equal(2, actual)
  end

#9. Test add and remove guest from room3 guest array.
  def test_check_out_guest_r3_capacity4
    @room3.check_in_guest(@guest_name1)
    @room3.check_in_guest(@guest_name2)
    @room3.check_in_guest(@guest_name3)
    @room3.check_in_guest(@guest_name4)
    @room3.check_out_guest(@guest_name1)
    stepa = @room3.guest
    actual = stepa.count
    assert_equal(3, actual)
  end

  #10. Test add songs to room1 song_list array.
  def test_add_song
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    @room1.add_song(@song3)
    @room1.add_song(@song4)

    stepa = @room1.song_list
    actual = stepa.count
    assert_equal(4, actual)
  end

#11. Test remove songs from room1 song_list array.
  def test_remove_song
      @room1.add_song(@song1)
      @room1.add_song(@song2)
      @room1.add_song(@song3)
      @room1.add_song(@song4)
      @room1.remove_song(@song4)

      stepa = @room1.song_list
      actual = stepa.count
      assert_equal(3, actual)
  end
end
