class Change

  def initialize(amount)
    @amount = amount
  end

  def change
    change_available = [100, 50, 20, 10, 5, 1]
    changes = []
    index = 0
    change = change_available[index]
    remaining_amount = @amount
    return false if (@amount.is_a? Numeric) == false
    return false if @amount < 0

    until remaining_amount == 0
      until remaining_amount >= change
        index += 1
        change = change_available[index]
      end
      changes << change
      remaining_amount -= change
    end

    changes
  end

end