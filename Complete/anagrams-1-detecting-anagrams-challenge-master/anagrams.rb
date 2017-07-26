def anagrams?(word1, word2)
  anagram_canonical_form(word1) == anagram_canonical_form(word2)
end

def anagram_canonical_form(word)
  word.split('').sort!.join('').downcase
end