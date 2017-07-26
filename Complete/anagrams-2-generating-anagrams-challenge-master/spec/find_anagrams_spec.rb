require_relative '../find_anagrams'

describe 'find_anagrams' do
  it 'returns any anagrams from the provided list' do
    possible_anagrams = ['nighthawks', 'caret', 'react', 'trace', 'otters']
    found_anagrams    = find_anagrams('crate', possible_anagrams)

    expect(found_anagrams).to match_array ['caret', 'react', 'trace']
  end
end


# Anagrams are case-insensitive.
# A word is an anagram of itself.
# If the list contains no anagrams of the target word, the return value is empty.
# Neither the target word nor the words in the list need to be real English words.
# If the target word is in the list of words, it should be included in the return value.