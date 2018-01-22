class Board

  def display(n=2)
    result = ""
    n.times do
      substring = ""
      n.times { substring += "X "}
      substring += "\n"
      result += substring
    end
    result
  end

end
