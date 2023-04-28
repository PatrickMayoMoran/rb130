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
    digits = number.digits
    Single.new(digits.last).roman_digit
  end

  def roman_digit
  end

  private

  def ones(digit)
    marker = 'I'
    five_marker = 'V'
    ten_marker = 'X'
    convert_digit(digit, marker, five_marker, ten_marker)
  end

  def tens(digit)
    marker = 'X'
    five_marker = 'L'
    ten_marker = 'C'
    convert_digit(digit, marker, five_marker, ten_marker)
  end

  def hundreds(digit)
    marker = 'C'
    five_marker = 'D'
    ten_marker = 'M'
    convert_digit(digit, marker, five_marker, ten_marker)
  end

  def thousands(digit)
    marker = 'M'
    five_marker = ''
    ten_marker = ''
    convert_digit(digit, marker, five_marker, ten_marker)
  end

  def convert_digit(digit, marker, five_marker, ten_marker)
    case digit
    when 0      then ''
    when (1..3) then marker * digit
    when 4      then marker + five_marker
    when 5      then five_marker
    when (6..8) then five_marker + marker * digit % 5
    when 9      then marker + ten_marker
    end
  end

  attr_accessor :number

end
