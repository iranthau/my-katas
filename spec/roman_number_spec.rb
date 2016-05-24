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
      445   => 'CDXLV',
      500   => 'D',
      900   => 'CM',
      999   => 'CMXCIX',
      1000  => 'M',
      21    => 'XXI',
      4376  => 'MMMMCCCLXXVI'
    }.each do |number, roman_number|
      it "converts the number #{number} to the string #{roman_number}" do
        expect(described_class.roman_loop(number)).to eq(roman_number)
      end
    end

    context 'when call with nothing' do
      it 'returns invalid number' do
        expect(described_class.roman_loop).to eq('invalid number')
      end
    end

    context 'when the given number is a negative number' do
      it 'returns invalid number' do
        expect(described_class.roman_loop(-1)).to eq('invalid number')
      end
    end

    context 'when the given number is 0' do
      it 'returns nothing' do
        expect(described_class.roman_loop(0)).to eq('invalid number')
      end
    end

    context 'when the given number is greater than 4999' do
      it 'returns invalid number' do
        expect(described_class.roman_loop(5000)).to eq('invalid number')
      end
    end
  end
end
