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
    if (n % 5).between?(1, 3)
      return ROMAN_MAP[n - (n % 5)] + roman(n % 5)
    end
    ROMAN_MAP[n].to_s
  end
end
