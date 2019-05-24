

class Room

attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @guest = []
    @song = []
    @capacity = capacity
  end

  def total_room_capacity()
    @room1.capacity + @room2.capacity + @room3.capacity
  end

  def check_in_guest
  end

  def check_in_guest(guest, room)
    #1. ask if there is availability to add a customer.
    #2. search (LOOP THROUGH) rooms for availability & when you find open a room with
    # open space add guest to guest-list for that room.
    #3. reduce room capacity by 1.
  end

  def check_out_guest
    #1. locate customer in room guest list.
    #2. delete customer from room guest list.
    #3. increase room capacity by 1.

  end

  def add_song
    #1. search room song array for song.
    #2. if song is not there .push song to room song array.
  end

  def remove_song
    #1. search room song array for song.
    #2. if song is there .delete song from room song array.
  end


end

# def add_customer_to_pub
#     if name.count < total_room_capacity
#       if name.count
#        if pub.drink_is_in_stock(drink)
#             if @wallet>=drink.price
#                  if check_age
#                       if check_drunkenness
#                            @wallet -= drink.price
#                            pub.till += drink.price
#                            pub.remove_drink(drink)
#                            @drunkenness+=drink.alcohol_level
#                            return "pass"
#                       else
#                            puts "sorry #{@name }, you're too drunk"
#                            return "fail"
#                       end
#                  else
#                       puts "sorry #{@name }, you're too young"
#                       return "fail"
#                  end
#             else
#                  puts "sorry #{@name }you don't have enough money"
#                  return "fail"
#             end
#        else
#             puts "sorry #{@name } we don't have this drink"
#             return "fail"
#        end
#   end
# end
