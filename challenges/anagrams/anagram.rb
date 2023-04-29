# same word is not an anagram
# case doesn't matter
# list of matching anagrams should be in alphabetical order

class Anagram
  def initialize(anagram)
    @anagram = anagram
  end

  private

  attr_reader :anagram
end
