class Anagram

  def initialize(word, candidates)
    @word = word
    @candidates = candidates
  end

  def anagram
    result = []
    return false if (@word.is_a? Numeric) == true
    return false if (@candidates.is_a? Numeric) == true
    return false if @candidates.length <=0

    @candidates.each do |n|
      if ((n.split('') - @word.split('')) == []) && (n.length == @word.length)
        result << n
      end
    end
    return false if result.length == 0
    return true if result.length >= 1
  end

end