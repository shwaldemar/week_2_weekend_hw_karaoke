

class Room

attr_reader :name, :guest, :capacity,

  def initialize(name, capacity, song_list)
    @name = name
    @guest = []
    @song_list = []
    @capacity = capacity
  end

##########################################################

  def check_in_guest(guest)
    if @guest.count < @capacity
      @guest.push(guest)
    else
      return "fail no availability try another room"
    end


    #1. ask if there is availability to add a customer.
    #2. search (LOOP THROUGH) rooms for availability & when you find open a room with
    # open space add guest to guest-list for that room.
    #3. reduce room capacity by 1.

  end

  ##########################################################


  def check_out_guest(guest)
        @guest.delete(guest)

    #1. locate customer in room guest list.
    #2. delete customer from room guest list.
    #3. increase room capacity by 1.
  end

  ##########################################################

  def add_song(song)
      @song_list.push(song)
    #1. search room song array for song.
    #2. if song is not there .push song to room song array.
  end

  ##########################################################

  def remove_song(song)
    @song_list.delete(song)
    #1. search room song array for song.
    #2. if song is there .delete song from room song array.
  end

  ##########################################################

end
