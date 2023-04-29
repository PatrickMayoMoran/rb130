class RomanNumeral
  def initialize(number)
    self.number = number
  end

  ROMAN_NUMERALS = {
    "I" => 1,
    "IV" => 4,
    "V" => 5,
    "IX" => 9,
    "X" => 10,
    "XL" => 40,
    "L" => 50,
    "XC" => 90,
    "C" => 100,
    "CD" => 400,
    "D" => 500,
    "CM" => 900,
    "M" => 1000
  }

  def to_roman
    roman_num = ''
    to_convert = number
    years = ROMAN_NUMERALS.values.sort { |a, b| b <=> a }

    years.each do |year|
      multiplier, remainder = to_convert.divmod(year)
      if multiplier > 0
        roman_letter = ROMAN_NUMERALS.key(year)
        roman_num << roman_letter * multiplier
      end
      to_convert = remainder
    end

    roman_num
  end

  private

  attr_accessor :number
end
