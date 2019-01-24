require 'awesome_print'
#this gems helps us to create the beautiful table in this project with the very interesting methods for other cases

class Board
  def initialize
  	# these numbers will be the serial number for each celle and they will be appearing in the celles.	
  	#the player must select one of them for putting the symbole in the selected celle.
  	# we have put "0" for defining the position of players before starting the game 
  	#and make it more raisonnable the game which starting of one instead of zero. 
    @@array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end

 
  def initial_board 
  	#this method is for showing the table for starting the game
    puts top_top = '     |     |     '
    puts top_middle = "  #{@@array[1]}  |  #{@@array[2]}  |  #{@@array[3]}  "
    puts top_bottom = '_____|_____|_____'
    puts middle_top = '     |     |     '
    puts middle_middle = "  #{@@array[4]}  |  #{@@array[5]}  |  #{@@array[6]}  "
    puts middle_bottom = '_____|_____|_____'
    puts bottom_top = '     |     |     '
    puts bottom_middle = "  #{@@array[7]}  |  #{@@array[8]}  |  #{@@array[9]}  "
    puts bottom_bottom = '     |     |     '
  end
end

