require_relative '../lib/isogram.rb'
require 'rspec'

describe Isogram do 
  context 'is not a valid word' do
    it 'return false' do
      expect(Isogram.new(123).isogram).to eq(false)
    end
  end

  context 'is a valid word' do
    it 'return false' do
      expect(Isogram.new("apple").isogram).to eq(false)
    end

    it 'return true' do
      expect(Isogram.new("subdermatoglyphic").isogram).to eq(true)
    end
  end
end
