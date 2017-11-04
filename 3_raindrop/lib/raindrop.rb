class Raindrop

  def initialize(number)
    @n = number
  end

  def raindrop
    if @n%3 == 0 && @n%5 == 0 && @n%7 == 0
      return "PlingPlongPlang"
    elsif @n%3 == 0 && @n%5 == 0
      return "PlingPlong"
    elsif @n%3 == 0 && @n%7 == 0
      return "PlingPlang"
    elsif @n%5 == 0 && @n%7 == 0
      return "PlongPlang"
    elsif @n%3 == 0
      return "Pling"
    elsif @n%5 == 0
      return "Plang"
    elsif @n%7 == 0
      return "Plong"
    else
      return "No rain"
    end
  end

end