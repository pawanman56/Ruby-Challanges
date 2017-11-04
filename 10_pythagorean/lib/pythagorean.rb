class Pythagorean

  def initialize(number)
    @n = number
  end

  def pythagorean
    return false if (@n.is_a? Numeric) == false
    return false if @n > 1000

    for x in 1..@n
      y = x+1
      z = y+1
      while z <= @n
        while z * z < x * x + y * y
          z = z + 1
        end
        if z * z == x * x + y * y and z <= @n and x + y + z == 1000 then
          #puts ("a = #{x}, b = #{y}, c = #{z}")
          return ("Product = #{x*y*z}")
        end
        y = y + 1
      end
    end
  end

end