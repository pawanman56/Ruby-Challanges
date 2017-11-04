require_relative '../lib/pangram.rb'
require 'rspec'

describe Pangram do 
  context 'sentence count is less than 26' do
    it 'should returns false on sentence of less count' do
      expect(Pangram.new('abc').pangram?).to eq(false)
    end
  end
#  
  context 'sentence count is greater than 26' do
    it 'should return false on incomplete letters of alphabet' do
      expect(Pangram.new('abcdefghijklmnopqrstuvwxyy').pangram?).to eq(false)
    end
#
    it 'should return true on all letters included of alphabet' do
      expect(Pangram.new('The quick brown fox jumps over the lazy dog').pangram?).to eq(true)
    end

    it 'should return false on incorrect input' do
      expect(Pangram.new('something').pangram?).to eq(false)
    end
  end
end
