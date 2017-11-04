class Pythagorean

  def pythagorean(n)
    for x in 1..n
      y = x+1
      z = y+1
      while z <= n
        while z * z < x * x + y * y
          z = z + 1
        end
        if z * z == x * x + y * y and z <= n and x + y + z == 1000 then
          puts ("h = #{z}, p = #{x}, b = #{y}")
          puts ("h*p*b = #{z*x*y}")
        end
        y = y + 1
      end
    end
  end

end