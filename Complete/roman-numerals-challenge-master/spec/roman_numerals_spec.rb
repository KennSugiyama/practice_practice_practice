require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end

    it 'converts 6 to VI' do
      expect(convert_to_roman(6)).to eq "VI"
    end

    it 'converts 9 to VIIII' do
      expect(convert_to_roman(9)).to eq "VIIII"
    end

    it 'converts 10 to X' do
      expect(convert_to_roman(10)).to eq "X"
    end

    it 'converts 13 to XIII' do
      expect(convert_to_roman(13)).to eq "XIII"
    end

    it 'converts 15 to XV' do
      expect(convert_to_roman(15)).to eq "XV"
    end

    it 'converts 16 to XVI' do
      expect(convert_to_roman(16)).to eq "XVI"
    end

    it 'converts 27 to XXVII' do
      expect(convert_to_roman(27)).to eq "XXVII"
    end

    it 'converts 48 to XXXXVIII' do
      expect(convert_to_roman(48)).to eq "XXXXVIII"
    end

    it 'converts 50 to L' do
      expect(convert_to_roman(50)).to eq "L"
    end

    it 'converts 78 to LXXVII' do
      expect(convert_to_roman(78)).to eq "LXXVIII"
    end

    it 'converts 100 to C' do
      expect(convert_to_roman(100)).to eq "C"
    end

    it 'converts 178 to CLXXVIII' do
      expect(convert_to_roman(178)).to eq "CLXXVIII"
    end

    it 'converts 778 to DCCLXXVIII' do
      expect(convert_to_roman(778)).to eq "DCCLXXVIII"
    end

    it 'converts 3778 to MMMDCCLXXVIII' do
      expect(convert_to_roman(3778)).to eq "MMMDCCLXXVIII"
    end
  end



  describe 'modern Roman numerals' do
    it 'converts 3 to III' do
      expect(convert_to_modern_roman(3)).to eq "III"
    end

    it 'converts 4 to IV' do
      expect(convert_to_modern_roman(4)).to eq "IV"
    end

    it 'converts 9 to IX' do
      expect(convert_to_modern_roman(9)).to eq "IX"
    end

    it 'converts 11 to XI' do
      expect(convert_to_modern_roman(11)).to eq "XI"
    end

    it 'converts 39 to XXXIX' do
      expect(convert_to_modern_roman(39)).to eq "XXXIX"
    end
  end
end
