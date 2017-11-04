require_relative '../lib/word_count.rb'
require 'rspec'

describe WordCount do
  context 'is not a valid word' do
    it 'should return false on number' do
      expect(WordCount.new(123).counter).to eq(false)
    end
  end

  context 'is a valid word' do
    it 'should return false on empty input' do
      expect(WordCount.new('').counter).to eq(false)
    end

    it 'should return true on a word' do
      expect(WordCount.new('this').counter).to eq(true)
    end

    it 'should return true on a sentence' do
      expect(WordCount.new('This is joy, this is summer. Keep alive.').counter).to eq(true)
    end
  end
end