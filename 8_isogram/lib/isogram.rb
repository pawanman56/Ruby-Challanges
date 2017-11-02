class Isogram

  def initialize(word)
    @word = word
  end

  def isogram
    temp = []
    return false if (@word.is_a? Numeric) == true

    @word.split('').each do |c|
      return false if temp.include? (c)
      temp << c
    end

    return true
  end

end