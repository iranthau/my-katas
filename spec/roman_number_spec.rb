require 'spec_helper'

describe RomanNumber do
  describe '.roman' do
    context 'when number is less than 5' do
      (1...5).each do |i|
        it "converts the number #{i} to the string I" do
          expect(described_class.roman(i)).to eq('I' * i)
        end
      end
    end

    it 'converts the number 5 to the string V' do
      expect(described_class.roman(5)).to eq('V')
    end
  end
end
