require 'rspec'
require 'tile'

describe Tile do

  describe "Tile attributes" do

    it "has attributes x, y, mine, revealed that are readable" do
      subject = Tile.new(1, 5, false)
      expect(subject.x).to eq(1)
      expect(subject.y).to eq(5)
      expect(subject.mine).to eq(false)
      expect(subject.revealed).to eq(false)
    end


  end
end
