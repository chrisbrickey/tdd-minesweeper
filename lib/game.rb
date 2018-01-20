require 'board'
require 'tile'

class Game
  def self.hi
    puts "I'm a minesweeper game!"
  end

  def self.play
    board = Board.new
    board.display
  end
end
