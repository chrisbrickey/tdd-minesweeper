require 'rspec'
require 'board'
require 'tile'

describe Board do

  let(:subject2) { Board.new() }
  let(:subject3) { Board.new(3) }

  describe "Board#grid" do # may be testing implementation instead of behaviour

    it "provides access to a grid of tiles" do
      actual_getter = subject2.grid[0][0]
      expect(actual_getter.class).to eq(Tile)
    end

    # having trouble creating read-only access because making a copy also copies underlying objects and mutating those objects changes original AND copy
    # it "provides read-only access to a grid" do
    #   p subject2.grid
    #   subject2.read_grid[0][0] = "Y"
    #   p subject2.grid
    #   actual_cell = subject2.read_grid[0][0]
    #   expect(actual_cell).not_to eq("Y")
    #   expect(actual_cell.class).to eq(Tile)
    # end


  end

  describe "Board#mines" do # may be testing implementation instead of behaviour

    it "reveals mines of which there should be about 1 mine for every 4 tiles" do
      expect(subject2.mines).to eq(1)
      expect(subject3.mines).to eq(2)
    end

    it "randomly places mines in grid" do
      actual_count_of_mines = 0
      subject3.grid.each do |subarray|
        subarray.each do |tile|
          actual_count_of_mines += 1 if tile.mine == true
        end
      end
      expect(actual_count_of_mines).to eq(subject3.mines)
      expect(actual_count_of_mines).to eq(3)
    end

  end

  describe "Board#display" do

    it "shows a 2x2 grid" do
      expected_two_by_two = "X X \nX X \n"
      actual_two_by_two = subject2.display
      expect(actual_two_by_two).to eq(expected_two_by_two)
    end

    it "shows a 2D square grid of variable side lengths" do
      expected_three_by_three = "X X X \nX X X \nX X X \n"
      actual_three_by_three = subject3.display
      expect(actual_three_by_three).to eq(expected_three_by_three)
    end

  end
end
