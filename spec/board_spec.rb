require 'rspec'
require 'board'

describe Board do

  let(:subject) { Board.new }

  describe "Board#display" do

    it "shows a 5x5 grid" do

      expect(subject.display).to eq("")
    end


  end
end
