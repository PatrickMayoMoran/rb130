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
class Diamond
  def self.make_diamond(letter)
    letters = ('A'..letter).to_a + ('A'...letter).to_a.reverse
  end
end
