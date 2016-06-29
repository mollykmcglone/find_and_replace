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
        if word == 'i'
          word.capitalize!()
        end
        new_word_array.push(word)
      else
        if word == 'i'
          word.capitalize!()
        end
        new_word_array.push(word)
      end
    end
    first_word = new_word_array.shift()#.capitalize()
    first_word.capitalize!()
    new_word_array.unshift(first_word)
    new_word_array.join(' ')
  end
end
