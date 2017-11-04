require_relative '../lib/raindrop.rb'
require 'rspec'

describe Raindrop do
  context 'is an invalid number' do
    it 'should return false on string' do
      expect(Raindrop.new("String").raindrop).to eq(false)
    end
  end

  context 'is a valid number' do
    it 'should return flase on negative number' do
      expect(Raindrop.new(-123).raindrop).to eq(false)  
    end

    it 'should return true on positive number' do
      expect(Raindrop.new(105).raindrop).to eq("PlingPlongPlang")
    end

    it 'should return number without factors' do
      expect(Raindrop.new(34).raindrop).to eq(34)
    end
  end
end