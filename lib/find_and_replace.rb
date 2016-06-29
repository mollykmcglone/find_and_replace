require('pry')

class String
  define_method(:find_and_replace) do |word1, word2|
    word_array = self.downcase().split(' ')
    new_word_array = []
    word1_lower = word1.downcase()
    word2_lower = word2.downcase()
    word_array.each do |word|
      if word.include?(word1_lower)
        position = word.index(word1_lower)
        value_to_add = word1_lower.length - 1
        end_position = position + value_to_add
        word[position..end_position] = word2_lower
        new_word_array.push(word)
      else
        new_word_array.push(word)
      end
    end
    new_word_array.join(' ').capitalize()
  end
end





# #  example_word = self
#   if example_word.include?(word1_lower)
#     position = example_word.index(word1)
#     value_to_add = word1.length - 1
#     end_position = position + value_to_add
#     example_word[position..end_position] = word2_l
#     example_word
#   else
#     example_word
#   end
#
#
# word_array.each do |word|
#   if word == word1
#     # word = word2
#     new_word_array.push(word2)
#   else
#     new_word_array.push(word)
#   end
#   # new_word_array.concat(word)
# end
# new_word_array.join(' ')
