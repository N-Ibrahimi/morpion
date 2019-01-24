require'player'
require'board'
require 'awesome_print'


class Game 
  def initialize
  	# in the Board file we have explain why we have put in array between 0 and 9
    @@array = [ "0","1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end

  def text_delay(phrase,n=0.10)
    i=0
    while(phrase[i]!=nil)
      print phrase[i]
      sleep(n)
      i+=1
    end
    puts
  end

  def start
 	#by this method we are going to create two instance for players including their names and the symbols which are selected for each one.
    puts 'player n°1 enter a name'
    print '> '
    @player1 = Player.new(gets.chomp, 'X'.red )
    puts "🤓 #{@player1.name} your symbole #{@player1.player_value}"
    # for 2ed palyer 
    puts 'player n°2 enter a name'
    print '> '
    @player2 = Player.new(gets.chomp, 'O'.green)
    puts "🤠 #{@player2.name} your symbole #{@player2.player_value}"
    puts " " * 40
    # alert for starting the game
    text_delay("       are you Ready ???")
    text_delay("We are going to start the game")
    text_delay(  "#" * 30)
    text_delay(  "#" * 30)
  end


  # this method define the winner during the game 
  def win_condition
    return true if @@array[1] == @@array[2] && @@array[2] == @@array[3]
    return true if @@array[4] == @@array[5] && @@array[5] == @@array[6]
    return true if @@array[7] == @@array[8] && @@array[8] == @@array[9]
    return true if @@array[1] == @@array[4] && @@array[4] == @@array[7]
    return true if @@array[2] == @@array[5] && @@array[5] == @@array[8]
    return true if @@array[3] == @@array[6] && @@array[6] == @@array[9]
    return true if @@array[1] == @@array[5] && @@array[5] == @@array[9]
    return true if @@array[3] == @@array[5] && @@array[5] == @@array[7]
  else 
  	return false 
  end 

  def turn
  	# this method is for starting the game and turning the rounds
    i = 0
    puts  "🤓 #{@player1.name} select a number :"
    print '> '
    i = gets.chomp
    @@array[i.to_i] = 'X'.red 

    puts top_top = '     |     |     '
    puts top_middle = "  #{@@array[1]}  |  #{@@array[2]}  |  #{@@array[3]}  "
    puts top_bottom = '_____|_____|_____'
    puts middle_top = '     |     |     '
    puts middle_middle = "  #{@@array[4]}  |  #{@@array[5]}  |  #{@@array[6]}  "
    puts middle_bottom = '_____|_____|_____'
    puts bottom_top = '     |     |     '
    puts bottom_middle = "  #{@@array[7]}  |  #{@@array[8]}  |  #{@@array[9]}  "
    puts bottom_bottom = '     |     |     '
    # when the player win the game this message will be display 
    return puts "🎊🎊🎊 #{@player1.name} you Win! 🎊🎊🎊" if win_condition == true
    #return win_condition == true ? (puts "#{@player2.name} à gagné ! 🎉") : (puts "égalité")


# this part is for 2ed palyer selection 
    i = 0
    puts "🤠 #{@player2.name} select a number :"
    print '> '

    i = gets.chomp
    @@array[i.to_i] = 'O'.green

    puts top_top = '     |     |     '
    puts top_middle = "  #{@@array[1]}  |  #{@@array[2]}  |  #{@@array[3]}  "
    puts top_bottom = '_____|_____|_____'
    puts middle_top = '     |     |     '
    puts middle_middle = "  #{@@array[4]}  |  #{@@array[5]}  |  #{@@array[6]}  "
    puts middle_bottom = '_____|_____|_____'
    puts bottom_top = '     |     |     '
    puts bottom_middle = "  #{@@array[7]}  |  #{@@array[8]}  |  #{@@array[9]}  "
    puts bottom_bottom = '     |     |     '
    # when the player win the game this message will be display 
    return puts "🎊🎊🎊 #{@player2.name} you Win ! 🎊🎊🎊" if win_condition == true
    #return win_condition == true ? (puts "#{@player2.name} à gagné ! 🎉") : (puts "égalité")

    turn
  end
end

# the principal method for running the game 
def perform
  game = Game.new
  game.start
  Board.new.initial_board
  game.turn
  puts 'Would you like to retry the game ? (Yes/No)'
  return perform if gets.chomp == 'Yes'  
end

perform
