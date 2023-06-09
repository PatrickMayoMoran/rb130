class RomanNumeral
  def initialize(number)
    self.number = number
  end

  def to_roman
    roman_numeral = ''

    digit, remainder = number.divmod(1000)
    roman_numeral << thousands(digit) unless digit == 0

    digit, remainder = remainder.divmod(100)
    roman_numeral << hundreds(digit) unless digit == 0

    digit, remainder = remainder.divmod(10)
    roman_numeral << tens(digit) unless digit == 0

    roman_numeral << ones(remainder) unless remainder == 0

    roman_numeral
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
    when (6..8) then five_marker + marker * (digit % 5)
    when 9      then marker + ten_marker
    end
  end

  attr_accessor :number
end
