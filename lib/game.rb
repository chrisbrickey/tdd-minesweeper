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

if __FILE__ == $0
  Game.hi
end
