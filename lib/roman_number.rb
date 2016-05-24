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
    result = ''
    ROMAN_MAP.each do |arabic, roman_number|
      result << roman_number * (number / arabic)
      number = number % arabic
    end
    result
  end

  # def self.roman(number = 0)
  #   return 'invalid data type' unless number.is_a?(Numeric)
  #   return '' if number.zero?
  #   return 'invalid number' unless valid?(number)
  #   arabic, roman_number = conversion_factors_for(number)
  #   roman_number + roman(number - arabic)
  # end

  # def self.conversion_factors_for(number)
  #   ROMAN_MAP.find { |arabic, _| arabic <= number }
  # end

  def self.valid?(number)
    number > 0 && number < 5000
  end
end
