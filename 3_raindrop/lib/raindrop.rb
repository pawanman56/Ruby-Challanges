class Raindrop

  def initialize(number)
    @n = number
  end

  def raindrop
    return false if (@n.is_a? Numeric) != true
    return false if @n < 0

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
      return @n
    end
  end

end