require_relative '../lib/pythagorean.rb'
require 'rspec'

describe Pythagorean do 
  context 'is not a valid number' do
    it 'should return false on string input' do
      expect(Pythagorean.new("string").pythagorean).to eq(false)
    end
  end

  context 'is a valid number' do
    it 'should return false on number greater than 1000' do
      expect(Pythagorean.new(1001).pythagorean).to eq(false)
    end

    it 'should return true on correct input' do
      expect(Pythagorean.new(567).pythagorean).to eq("Product = 31875000")
    end
  end
end
