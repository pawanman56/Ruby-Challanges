class WordCount
  
  def initialize(sentence)
    @sentence = sentence
  end

  def counter
    return false if (@sentence.is_a? Numeric) == true
    return false if @sentence.length <= 0

    words = @sentence.downcase.split(" ")
    result = words.each_with_object(Hash.new(0)) {
      |words, counts| counts[words] += 1
    }
  end

end
