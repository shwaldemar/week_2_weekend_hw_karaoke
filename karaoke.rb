class Karaoke

  require_relative('room.rb')
  require_relative('guest.rb')
  require_relative('song.rb')

  def initialize
    karaoke_management_and_booking_application()
    return_to_menu()
  end


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

  def return_to_menu
    puts `clear`
    karaoke_management_and_booking_application()
  end

  def karaoke_management_and_booking_application()

    puts "
    -----------------------------------------------------------------
                        Hey Karaoke booker!
    -----------------------------------------------------------------

    Welcome to the Kareoke bar management & booking application!

    -----------------------------------------------------------------
    Please select one of the following options:
    -----------------------------------------------------------------
    press 0 & Enter to EXIT.

    Press 1 & Enter to ADD A CUSTOMER to a room.
    Press 2 & Enter to REMOVE A CUSTOMER from a room.
    Press 3 & Enter to ADD a song to a room's song list.
    Press 4 & Enter to REMOVE a song from a room's play list.

    -----------------------------------------------------------------

    Press 5 & Enter to ADD a room to the facility.
    Press 6 & Enter to REMOVE a room from the facility.
    Press 7 & Enter to ADD a song to the bank of songs available.
    Press 8 & Enter to REMOVE a song from the bank of songs available.

    -----------------------------------------------------------------
                  Copyright: Simon Hall's Systems PLC
    -----------------------------------------------------------------

    "
    input = gets.chomp

    case input
    when 0 # Exit system.
      return "Thank you for using the Kareoke bar management & booking application! We hope you had a great shift & that your facility is fun & profitable!"

    when 1 # check guest in to room.
      puts "Please enter name of guest you are checking in."
      gets.chomp = guest
      check_in_guest(guest)
      return_to_menu()

    when 2 # check guest out of room.
      puts "Please enter name of guest you are checking out"
      gets.chomp = guest
      check_out_guest(guest)
      return_to_menu()

    when 3 # Add a song to a room's song_list array.
      puts Song.song_name.join # Show list of songs on screen.

      puts "What song would you like to add to the guest's room?"
      gets.chomp = song_to_add_to_guests_room
      add_song(song_to_add_to_guests_room)
      return_to_menu()

    when 4 # Remove a song from a room's song_list array.
      puts Song.song_name.join # Show list of songs on screen.

      puts "What song would you like to remove from the guest's room?"
      gets.chomp = song_to_remove_from_guests_room
      remove_song(song_to_remove_from_guests_room)
      return_to_menu()

    when 5 # Add new room.

      puts Room.name.join # Show list of rooms on screen.

      puts "If the room is not one of the above. Please enter the name of the room you are adding & press enter."

      #get new room name & save to variable new_room_name.
      gets.chomp = new_room_name

      #check new room doen't already exist by looping over and checking against existing rooms.
      Room.name.each do |x|
        if new_room_name != x

          # As new name doesen't exist having checked records - get new room capacity from user and save to variable new_room_capacity.
          puts "Please enter the capacity of the new room."
          gets.chomp = new_room_capacity

          #Create system_numbered_new_room_name.
          #step 1. Get number of existing rooms + 1 to total and save number to new_room_number variable.
          new_room_number = Room.name.count + 1
          new_room_number_to_string = new_room_number.to_s
          #step 2.
          #Concatenate "@" + new_room_name + new_room_number_to_string
          system_numbered_new_room_name = "@room" << new_room_number_to_string

          system_numbered_new_room_name = Room.new(new_room_name, new_room_capacity)
          return_to_menu()

        else
          puts "that room already exists"
          #Call starting menu & process.
          return_to_menu()

        end #end for add room conditional if statement.
      end #end for add room loop.

    when 6 # Remove existing room.

      puts Room.name.join  # Show list of rooms on screen.

      puts "If the room is not one of the above. Please enter the name of the room you are removing."

      #get name of room to be removed & save to variable remove_room_name.
      gets.chomp = remove_room_name

      #check new room doen't already exist by looping over and checking against existing rooms.
      Room.name.each do |x|
        if remove_room_name == x
          @room.delete(remove_room_name)
          return_to_menu
        else
          puts "
          Hey Karaoke booker!
          That room is not on file.
          Have you removed it already?
          Did you spell it's name #{remove_room_name} right?
          Try again please."
          return_to_menu()

        end #end for remove room conditional if statement.
    end #end for remove room loop.

    when 7 # Add song to the facilities Bank of songs.

      puts Song.song_name.join # Show list of songs on screen.

      puts "If the somg is not one of the above. Please enter the name of the song you are adding & press enter."

      #get new room name & save to variable new_room_name.
      gets.chomp = new_song_name

      #check new song doen't already exist by looping over and checking against existing songs.
      Song.song_name.each do |x|
        if new_song_name != x

          #Create system_numbered_new_song_name.
          #step 1. Get number of existing songs + 1 to total and save number to new_song_number variable.
          new_song_number = Room.song_name.count + 1
          new_song_number_to_string = new_song_number.to_s
          #step 2.
          #Concatenate "@song_name" + new_song_number_to_string
          system_numbered_new_song_name = "@song" << new_song_number_to_string

          system_numbered_new_song_name = Song.new(new_song_name)
          return_to_menu()

        else
          puts "that song already exists"
          #Call starting menu & process.
          return_to_menu()

        end #end for add_song_name condotional if statement.
      end #end for add song loop.

    when 8 # Remove a song from the facilities Bank of songs.

      puts Song.song_name.join  # Show list of songs on screen.

      puts "If the song is not one of the above. Please enter the name of the song you are removing."

      #get name of song to be removed & save to variable remove_song_name.
      gets.chomp = remove_song_name

      #check new song doen't already exist by looping over and checking against existing songs.
      Song.song_name.each do |x|
        if remove_song_name == x
          @song.delete(remove_song_name)
          return_to_menu()
        else
          puts "
          Hey Karaoke booker!
          That song is not on file.
          Have you removed it already?
          Did you spell it's name #{remove_song_name} right?
          Try again please."
          return_to_menu()

        end #end for remove_song_name condotional if statement.
      end #end for remove song loop.

    end #end for main menu conditional case statement.

  end #end for Karaoke_management_and_booking_application def.
  return_to_menu()
end #end for Karaoke class.
