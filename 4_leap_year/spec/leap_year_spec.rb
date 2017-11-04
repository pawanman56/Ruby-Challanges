require_relative '../lib/leap_year.rb'
require 'rspec'

describe LeapYear do
  context 'is not a valid year' do
    it 'should return false on strings' do
      expect(LeapYear.new('string').leap).to eq(false)
    end

    it 'should return false on negative values' do
      expect(LeapYear.new(-3123).leap).to eq(false)
    end
  end

  context 'is a valid year' do
    it 'should return false on normal years' do
      expect(LeapYear.new(1990).leap).to eq(false)
    end

    it 'should return true on leap years' do
      expect(LeapYear.new(1996).leap).to eq(true)
    end
  end
end
