require 'spec_helper'

describe RomanNumber do
  describe '.roman' do
    {
      1     => 'I',
      2     => 'II',
      4     => 'IV',
      5     => 'V',
      10    => 'X',
      40    => 'XL',
      50    => 'L',
      100   => 'C',
      500   => 'D',
      1000  => 'M',
      4376  => 'MMMMCCCLXXVI'
    }.each do |number, roman_number|
      it "converts the number #{number} to the string #{roman_number}" do
        expect(described_class.roman(number)).to eq(roman_number)
      end
    end
  end
end
