# RomanNumber
class RomanNumber
  ROMAN_MAP = {
    1   => 'I',
    4   => 'IV',
    5   => 'V',
    9   => 'IX',
    10  => 'X'
  }.freeze

  def self.roman(n)
    return ROMAN_MAP[1] * n if n < 4
    if n >= 6 && n <= 8
      return ROMAN_MAP[5] + roman(n - 5)
    end
    if n >= 11 && n <= 13
      return ROMAN_MAP[10] + roman(n - 10)
    end
    ROMAN_MAP[n].to_s
  end
end
