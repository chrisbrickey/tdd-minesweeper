require 'rspec'
require 'board'

describe Board do

  let(:subject) { Board.new }

  describe "Board Class" do


  end

  describe "Board#display" do

    it "shows a 2D grid of tiles" do
      expected_two_by_two = "X X \nX X \n"
      actual_two_by_two = subject.display()
      expect(actual_two_by_two).to eq(expected_two_by_two)
    end

    it "shows a multi-D grid of tiles" do
      expected_three_by_three = "X X X \nX X X \nX X X \n"
      actual_three_by_three = subject.display(3)
      expect(actual_three_by_three).to eq(expected_three_by_three)
    end

  end
end
