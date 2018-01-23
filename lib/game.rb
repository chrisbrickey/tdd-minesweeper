require 'board'
require 'tile'

class Game

  def self.play
    size = prompt_user
    board = Board.new(size)
    board.display
  end

  def self.prompt_user
    puts "What size of board do you want to play on? (type an integer between 3 and 100, inclusive)\n"
    size = gets.chomp
    while !size.to_i.between?(3, 100)
      puts "Please type an integer between 3 and 100, inclusive.\n"
      size = gets.chomp
    end

    size.to_i
  end

end

if __FILE__ == $0
  Game.play
end
