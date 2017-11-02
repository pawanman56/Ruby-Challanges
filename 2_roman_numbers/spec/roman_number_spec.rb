require_relative '../lib/roman_numbers.rb'
require 'rspec'

describe RomanNumbers do
  context 'input is not a number' do
    it 'returns false' do
      expect(RomanNumbers.new('alphabets').to_roman).to eq(false)
    end
  end

  context 'input is a number' do
    it 'returns false' do
      expect(RomanNumbers.new(-123).to_roman).to eq(false)
    end
  
    it 'return true' do
      expect(RomanNumbers.new(123).to_roman).to eq(true)
    end

    it 'return true' do
      expect(RomanNumbers.new('string').to_roman).to eq(false)
    end

    it 'return true' do
      expect(RomanNumbers.new(-567).to_roman).to eq(false)
    end
  end
end