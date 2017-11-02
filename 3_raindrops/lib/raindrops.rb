class Raindrops

  fac = []

  def initialize(number)
    @number = number
  end

  def factorila
    return false if @number < 0
    fac << 1 if @number == 0
    fac << 3 if (@number%3) == 0
    fac << 5 if (@number%5) == 0
    fac << 7 if (@number%7) == 0    
    return @number 
    #end
  end

end