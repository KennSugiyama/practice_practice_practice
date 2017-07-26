def containing_quotes(sentences)
  sentences.select { |sentence| contains_quote?(sentence) }
end

def balance(expenses, starting_balance)
  expenses.reduce(starting_balance) { |balance, expense| balance - expense }
end

def even_length_word(words)
  words.find { |word| word.length != 0 && word.length%2 == 0 }
end

def snippets(sentences, desired_word_count = 3)
  sentences.map { |sentence| snippet(sentence, desired_word_count) }
end

def initials(names)
  names.map { |name| convert_to_initials(name) }
end

def pair_abbreviations(pair_data)
  pair_data.map { |data| data.rotate }.to_h
end


# Helper methods, do not refactor ...
def snippet(sentence, desired_word_count = 3)
  sentence.sub(/\A(?<first_x_words>(\w+ ){#{desired_word_count}})(?<the_rest>.*)/, '\k<first_x_words>...')
end

def contains_quote?(sentence)
  sentence =~ /(".+")/
end

def convert_to_initials(name)
  name.scan(/\b[a-z]/i).join.upcase
end





# def containing_quotes(sentences)
#   sentences_with_quotes = []

#   sentences.each do |sentence|
#     sentences_with_quotes << sentence if contains_quote?(sentence)
#   end

#   sentences_with_quotes
# end

# def balance(expenses, starting_balance)
#   remaining_balance = starting_balance

#   expenses.each do |expense|
#     remaining_balance -= expense
#   end

#   remaining_balance
# end

# def even_length_word(words)
#   words.each do |word|
#     return word if word.length.even? && !word.empty?
#   end

#   nil
# end

# def snippets(sentences, desired_word_count = 3)
#   snipped_sentences = []

#   sentences.each do |sentence|
#     snipped_sentences << snippet(sentence, desired_word_count)
#   end

#   snipped_sentences
# end

# def initials(names)
#   names_as_initials = []

#   names.each do |name|
#     names_as_initials << convert_to_initials(name)
#   end

#   names_as_initials
# end

# def pair_abbreviations(pair_data)
#   pairs = {}

#   pair_data.each do |data|
#     abbreviation = data[0]
#     full_form    = data[1]

#     pairs[full_form] = abbreviation
#   end

#   pairs
# end


