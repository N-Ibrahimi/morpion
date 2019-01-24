require 'game'

class Player
  attr_accessor :name, :player_value
  attr_writer :win
  # we are fixing the name and the value of each player 
  # the value is the symbole of each one 
  def initialize(name, player_value)
    @name = name.capitalize
    @player_value = player_value
   @win = win = false
  end
end