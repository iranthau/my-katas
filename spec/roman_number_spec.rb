require 'spec_helper'

describe RomanNumber do
  describe '.roman' do
    it 'converts the number 1 to the string I' do
      expect(RomanNumber.roman(1)).to eq('I')
    end

    it 'converts the number 2 to the string II' do
      expect(RomanNumber.roman(2)).to eq('II')
    end
  end
end
