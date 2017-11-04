require_relative '../lib/change.rb'
require 'rspec'

describe Change do
  context 'is not a valid amount' do
    it 'should return false on string input' do
      expect(Change.new("amount").change).to eq(false)
    end

    it 'should return false on negative value' do
      expect(Change.new(-5).change).to eq(false)
    end
  end

  context 'is a valid amount' do
    it 'should return true on valid amount' do
      expect(Change.new(56).change).to eq([50, 5, 1])
    end

    it 'should return true on valid large amount' do
      expect(Change.new(527).change).to eq([100, 100, 100, 100, 100, 20, 5, 1, 1])
    end
  end
end