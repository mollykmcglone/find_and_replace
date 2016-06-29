require('pry')

class String
  define_method(:find_and_replace) do |word1, word2|
    word_array = self.split(' ')
    new_word_array = []
    word_array.each do |word|
      if word == word1
        # word = word2
        new_word_array.push(word2)
      else
        new_word_array.push(word)
      end
      # new_word_array.concat(word)
    end
    new_word_array.join(' ')
  end
end
