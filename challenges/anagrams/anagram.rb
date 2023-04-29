# same word is not an anagram
# case doesn't matter
# return empty list if no anagrams

class Anagram
  def initialize(anagram)
    @anagram = anagram
  end

  def match(array)
    matches = []

    array.each do |word|
      word = word.downcase
      next if word == anagram
      matches << word if word.chars.sort == anagram.chars.sort
    end

    matches
  end

  private

  attr_reader :anagram
end
