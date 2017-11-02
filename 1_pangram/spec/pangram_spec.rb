require_relative '../lib/pangram.rb'
require 'rspec'

describe Pangram do 
  context 'sentence count is less than 26' do
    it 'returns false' do
      expect(Pangram.new('abc').pangram?).to eq(false)
    end
  end
#  
  context 'sentence count is greater than 26' do
    it 'return false' do
      expect(Pangram.new('abcdefghijklmnopqrstuvwxyy').pangram?).to eq(false)
    end
#
    it 'return true' do
      expect(Pangram.new('The quick brown fox jumps over the lazy dog').pangram?).to eq(true)
    end

    it 'return true' do
      expect(Pangram.new('something').pangram?).to eq(false)
    end
  end
end
