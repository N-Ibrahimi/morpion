require 'game'

class Player
  attr_accessor :name, :player_value
  attr_writer :win

  def initialize(name, player_value)
    @name = name.capitalize
    @player_value = player_value
   # @win = win = false
  end
end