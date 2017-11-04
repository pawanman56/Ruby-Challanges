require_relative '../lib/anagram.rb'
require 'rspec'

describe Anagram do
  context 'is not a valid word' do
    it 'should return false on numbers input' do
      expect(Anagram.new(123, 456).anagram).to eq(false)
    end
  end

  context 'is a valid word' do
    it 'should return false on inputs of different data types' do
      expect(Anagram.new("word", 456).anagram).to eq(false)
    end

    it 'should return false on empty or incomplete inputs' do
      expect(Anagram.new("word", []).anagram).to eq(false)
    end

    it 'should return false on wrong candidates' do
      expect(Anagram.new("word", ["apple", "ball"]).anagram).to eq(false)
    end

    it 'should return true on correct candidates' do
      expect(Anagram.new("anagram", ["apple", "ball", "nagaram"]).anagram).to eq(true)
    end
  end
end