require 'spec_helper'

describe RomanNumber do
  describe '.roman' do
    {
      1     => 'I',
      2     => 'II',
      4     => 'IV',
      5     => 'V',
      9     => 'IX',
      10    => 'X',
      40    => 'XL',
      50    => 'L',
      90    => 'XC',
      100   => 'C',
      500   => 'D',
      900   => 'CM',
      999   => 'CMXCIX',
      1000  => 'M',
      4376  => 'MMMMCCCLXXVI'
    }.each do |number, roman_number|
      it "converts the number #{number} to the string #{roman_number}" do
        expect(described_class.roman(number)).to eq(roman_number)
      end
    end

    context 'when the given number is 0' do
      it 'returns nothing' do
        expect(described_class.roman(0)).to eq('')
      end
    end

    context 'when the given number is greater than 4999' do
      it 'returns out of range message' do
        expect(described_class.roman(5000)).to eq('number is out of range')
      end
    end
  end
end
