class Board

  def initialize(n=2)
    @grid = make_grid(n)
  end

  def display
    @grid
  end

  private

  def make_grid(n)
    main_string = ""
    n.times do
      substring = ""
      n.times { substring += "X "}
      substring += "\n"
      main_string += substring
    end
    main_string
  end

end
