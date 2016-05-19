require 'spec_helper'

describe RomanNumber do
  describe '.roman' do
    {
      1   => 'I',
      2   => 'II',
      3   => 'III',
      4   => 'IV',
      5   => 'V',
      6   => 'VI',
      7   => 'VII',
      8   => 'VIII',
      9   => 'IX',
      10  => 'X',
      11  => 'XI',
      12  => 'XII',
      13  => 'XIII'
    }.each do |number, roman_number|
      it "converts the number #{number} to the string #{roman_number}" do
        expect(described_class.roman(number)).to eq(roman_number)
      end
    end
  end
end
