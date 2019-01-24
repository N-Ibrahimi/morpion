
# Ajout de la Gem awesome_print qui permet d'ajouter des couleurs à un élément affiché.
require 'awesome_print'

class Board
  # Ici redéclare ici l'array pour pouvoir l'utiliser dans cette class.
  def initialize
    # (le 0 permet de considérer la première case comme l'élément 1 de l'array).
    @@array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end

  # Cette méthode permet d'afficher le plateau initial.
  def initial_board
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

