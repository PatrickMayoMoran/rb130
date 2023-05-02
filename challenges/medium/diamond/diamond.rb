# Goal: produce a diamond with all the letters up to given letter
#
# Rules:
#   given letter only appears once
#   other letters appear twice
#   given letter is center
#   all other lines are that same width
#   so diamond is a square
#   a returns by itself
#
# ALGORITHM
#   Build an array of all the letters we need
#   range from 'A' to given letter converted to Array PLUS range 
#   from 'A' to given letter non-inclusive, reversed
#
#   iterate through array of all letters with array
#     for each letter, make a row for that letter and add to array
#   end
#
#   join array of rows with new lines
#     Add new line in case it's A where it's by itself and nothing to join
#
#   HELPER METHODS
class Diamond
  def self.make_diamond(letter)
    letters = ('A'..letter).to_a + ('A'...letter).to_a.reverse
    diamond_width = max_width(letter)

    letters.each_with_object([]) do |let, arr|
      arr << make_row(let).center(diamond_width)
    end.join("\n") + "\n"
  end

  class << self
    private

    def make_row(letter)
      return 'A' if letter == 'A'
      return 'B B' if letter == 'B'

      letter + determine_spaces(letter) + letter
    end

    def determine_spaces(letter)
      all_letters = ['B']
      spaces = 1

      until all_letters.include?(letter)
        current_letter = all_letters.last
        all_letters << current_letter.next
        spaces += 2
      end

      ' ' * spaces
    end

    def max_width(letter)
      alphabet_position(letter) * 2 - 1
    end

    def alphabet_position(letter)
      letter.ord - 64
    end

  end
end
