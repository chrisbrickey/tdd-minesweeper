class Tile

  attr_reader :x, :y, :mine, :revealed

  def initialize(x, y, mine=false)
    @x = x
    @y = y
    @mine = mine
    @revealed = false
  end




end # end of Tile class
