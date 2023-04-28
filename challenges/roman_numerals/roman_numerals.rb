=begin
GOAL: convert a base 10 integer its Roman equivalent as a string

INPUT: Integer
OUTPUT: string

RULES
  numbers can't be above 3000
  if digit is one, two or three, write more of that digit
  if digit is four, write one unit before 5 unit
  if digit is five, six, seven, or eight, write 5 plus ones
  if digit is nine, write next 10 unit minus one

DATA STRUCTURES

ALGORITHM
  count digits of the number to know how many places we start at
  number of times we'll iterate is number of digits

  ### Current divisor for 1000 is 1 - iteration number
  1 -> 1000 % 10*3
  2 -> 1000 % 10*2
  3 -> 1000 % 10*1
  4 -> 1000 % 0

CODE
  single digit number
    return '' if number is 0
    return 'MARKER' * number if number is 1, 2, 3
    return 'MARKER' + '5_MARKER' if number is 4
    return '5_MARKER' if number is 5
    return '5_MARKER' + 'MARKER' * number % 5 if number is 6, 7, 8
    return 'MARKER' + '10_MARKER' if number is 9
=end

class RomanNumeral
  NUMERALS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  def initialize(number)
    self.number = number
  end

  def to_roman
    return '' if number is 0
    return self::MARKER * number if number is 1, 2, 3
    return self::MARKER + self::FIVE_MARKER if number is 4
    return self::FIVE_MARKER if number is 5
    return self::FIVE_MARKER + self::MARKER * number % 5 if number is 6, 7, 8
    return self::MARKER + self::TEN_MARKER if number is 9

  end

  private

  attr_accessor :number
end

class Single < RomanNumeral
  MARKER = 'I'
  FIVE_MARKER = 'V'
  TEN_MARKER = 'X'
end

class Ten < RomanNumeral; end
class Hundred < RomanNumeral; end
class Thousand < RomanNumeral; end
