class Tile

  attr_reader :x, :y
  attr_accessor :mine, :revealed

  def initialize(x, y, mine=false)
    @x = x
    @y = y
    @mine = mine
    @revealed = false
  end

end # end of Tile class


#HOW TO PRINT UNICODE (see Unicode Character Table)
# checkmark = "\u2713"
# puts checkmark.encode('utf-8')

# box = "\u20DE"
# puts box.encode('utf-8')

# bomb = "\u1F4A3"
# puts bomb.encode('utf-8')

# black_flag = "\u2691"
# puts black_flag.encode('utf-8')
