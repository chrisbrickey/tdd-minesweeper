require 'tile'

class Board

  attr_reader :grid

  def initialize(n=2)
    @grid = make_grid(n)
  end

  def display
    main_string = ""
    box_code = "\u20DE"
    @grid.each do |subarray|
      substring = ""
      subarray.each do |tile|

        if tile.revealed == false
          substring += "X "
        else
          substring += "#{box_code.encode('utf-8')} "
        end
      end
      substring += "\n"
      main_string += substring
    end

    main_string
  end

  private

  def make_grid(n)
    final_arr = []
    
    n.times do |y_idx|
      subarray = []
      n.times do |x_idx|
        subarray << Tile.new(x_idx, y_idx)
      end
      final_arr << subarray
    end

    final_arr
  end

end
