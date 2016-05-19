# RomanNumber
class RomanNumber
  def self.roman(n)
    return one * n if n < 5
    five
  end

  def self.one
    'I'
  end

  def self.two
    one * 2
  end

  def self.three
    one * 3
  end

  def self.four
    one * 4 || 'IV'
  end

  def self.five
    'V'
  end
end
