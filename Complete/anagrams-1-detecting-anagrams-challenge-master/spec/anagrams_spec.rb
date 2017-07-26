require_relative '../anagrams'

describe 'anagrams?' do
  context 'when two words are anagrams' do
    it 'returns true' do
      word1 = 'lemon'
      word2 = 'melon'
      expect(anagrams?(word1, word2)).to be_truthy
    end
  end

  context 'when two words are not anagrams' do
    it 'returns false' do
      word1 = 'lemonz'
      word2 = 'melon'
      expect(anagrams?(word1, word2)).to be_falsey
    end
  end
end


