require 'spec_helper'

describe RomanNumber do
  describe '.roman' do
    {
      1 => 'I',
      2 => 'II',
      4 => 'IV',
      5 => 'V'
    }.each do |number, roman_number|
      it "converts the number #{number} to the string #{roman_number}" do
        expect(described_class.roman(number)).to eq(roman_number)
      end
    end
  end
end
