require 'tile'

class Board

  attr_reader :grid, :mines

  def initialize(n=2)
    @mines = generate_mines(n)
    # @num_mines = (n * n) / 4
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

  def generate_mines(n)
    mines = Hash.new { |h, k| h[k] = [] } #key = y_value; value = array of x_values

    number_of_mines = (n * n) / 4
    number_of_mines.times do
      x_value = rand(0...n)
      y_value = rand(0...n)

      while mines[x_value].include?(y_value)
        x_value = rand(0...n)
        y_value = rand(0...n)
      end

      mines[x_value] << y_value
    end

    mines
  end

  def make_grid(n)
    final_arr = []

    n.times do |y_idx|
      subarray = []
      n.times do |x_idx|
        subarray << Tile.new(x_idx, y_idx)
      end
      final_arr << subarray
    end

    @mines.each do |y_value, subarray|
      subarray.each do |x_value|
        # p final_arr[y_value][x_value]
        final_arr[y_value][x_value].mine = true
      end
    end

    final_arr
  end

end
