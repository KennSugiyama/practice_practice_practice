def find_anagrams(word, list)
  response = []
  i = 0
  key = list.each do |possible_word|
    if anagrams?(possible_word,word)
      response << i
    end
    i += 1
  end
  response.map! { |i| list[i] }
end


def anagrams?(word1, word2)
  anagram_canonical_form(word1) == anagram_canonical_form(word2)
end

def anagram_canonical_form(word)
  word.split('').sort!.join('').downcase
end