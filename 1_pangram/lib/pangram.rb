class Pangram
  def initialize(sentence)
    @sentence = sentence
  end

  def pangram?
    return false if @sentence.chars.count < 26
    check = ('a'..'z').to_a - @sentence.downcase.chars
    return true if check.empty?
    false
  end
end
