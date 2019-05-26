

class Room

attr_reader :name, :capacity, :guest, :song_list
#1. & 2. test attr_reader for room names.
#3. 4. & 5. test attr_reader for room capacity.
#6. Totals room capacity.

  def initialize(name, capacity)
    @name = name
    @guest = []
    @song_list = []
    @capacity = capacity
  end

#7. Adds guest to guest array for room specified.
  def check_in_guest(guest)
    if @guest.count < @capacity
      @guest.push(guest)
    else
      return "fail no availability try another room"
    end
  end

#8. 9. & 10. Removes guest from guest array for room specified.
  def check_out_guest(guest)
        @guest.delete(guest)
  end

#11. Adds song to rooms song_list array for room specified.
  def add_song(song)
      @song_list.push(song)
  end

#12. Removes song from rooms song_list array.
  def remove_song(song)
    @song_list.delete(song)
  end

end
