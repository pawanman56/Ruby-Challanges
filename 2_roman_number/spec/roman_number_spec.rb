require_relative '../lib/roman_number.rb'
require 'rspec'

describe RomanNumber do
  context 'input is not a number' do
    it 'should return false on wrong input' do
      expect(RomanNumber.new('alphabets').to_roman).to eq(false)
    end
  end

  context 'input is a number' do
    it 'should return false on negative numbers' do
      expect(RomanNumber.new(-123).to_roman).to eq(false)
    end
  
    it 'should return true on valid numbers' do
      expect(RomanNumber.new(123).to_roman).to eq(true)
    end
  end
end