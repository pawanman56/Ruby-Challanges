require_relative '../lib/roman_numbers.rb'
require 'rspec'

describe RomanNumber do
  context 'input is not a number' do
    it 'returns false' do
      expect(RomanNumber.new('alphabets').to_roman).to eq(false)
    end
  end

  context 'input is a number' do
    it 'returns false' do
      expect(RomanNumber.new(-123).to_roman).to eq(false)
    end
  
    it 'return true' do
      expect(RomanNumber.new(123).to_roman).to eq(true)
    end

    it 'return true' do
      expect(RomanNumber.new('string').to_roman).to eq(false)
    end

    it 'return true' do
      expect(RomanNumber.new(-567).to_roman).to eq(false)
    end
  end
end