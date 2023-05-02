# same word is not an anagram
# case doesn't matter
# return empty list if no anagrams

class Anagram
  def initialize(anagram)
    @anagram = anagram
  end

  def match(array)
    matches = []

    array.each_with_object(matches) do |word, matches|
      normalized = word.downcase
      next if normalized == anagram.downcase
      matches << word if normalized.chars.sort == anagram.downcase.chars.sort
    end
  end

  private

  attr_reader :anagram
end
