class LeapYear

  def initialize(year)
    @year = year
  end

  def leap
    return false if (@year.is_a? Numeric) != true
    return false if @year < 0
    
    return true if @year%4 == 0
    false
  end

end