require_relative '../lib/word_count.rb'
require 'rspec'

describe WordCount do
  context 'is not a valid word' do
    it 'return false' do
      expect(WordCount.new(123).counter).to eq(false)
    end
  end

  context 'is a valid word' do
    it 'return false' do
      expect(WordCount.new('').counter).to eq(false)
    end

    it 'return true' do
      expect(WordCount.new('this').counter).to eq(true)
    end

    it 'return true' do
      expect(WordCount.new('This is joy, this is summer. Keep alive.').counter).to eq(true)
    end

    it 'return true' do
      expect(WordCount.new(789).counter).to eq(false)
    end
  end
end