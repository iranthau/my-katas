# RomanNumber
class RomanNumber
  ROMAN_MAP = {
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def self.roman(number)
    return '' if number.zero?
    arabic, roman_number = conversion_factors_for(number)
    roman_number + roman(number - arabic)
  end

  def self.conversion_factors_for(number)
    ROMAN_MAP.find { |arabic, _| arabic <= number }
  end
end
