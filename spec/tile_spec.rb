require 'rspec'
require 'tile'

describe Tile do

  before (:all) do
    subject = Tile.new(1, 5, false)
  end

  describe "Tile attributes" do

    it "has attributes x, y, mine, revealed that are readable" do
      expect(tile.x).to eq(1)
      expect(tile.x).to eq(5)
      expect(tile.x).to eq(false)
      expect(tile.x).to eq(false)
    end


  end
end
