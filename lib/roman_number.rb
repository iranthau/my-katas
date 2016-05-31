# RomanNumber
class RomanNumber
  ROMAN_MAP = {
    1000  => 'M',
    900   => 'CM',
    500   => 'D',
    400   => 'CD',
    100   => 'C',
    90    => 'XC',
    50    => 'L',
    40    => 'XL',
    10    => 'X',
    9     => 'IX',
    5     => 'V',
    4     => 'IV',
    1     => 'I'
  }.freeze

  def self.roman_loop(number = 0)
    return 'invalid number' unless valid?(number)
    roman(number)
  end

  def self.roman(number)
    ROMAN_MAP.map do |arabic, roman_number|
      result = roman_number * (number / arabic)
      number = number % arabic
      result
    end.join
  end

  def self.valid?(number)
    number > 0 && number < 5000
  end
end
