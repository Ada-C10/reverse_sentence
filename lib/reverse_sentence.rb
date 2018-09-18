# A method to reverse the words in a sentence, in place.
def string_reverse(my_string)
  return my_string if my_string.nil? || my_string == ""
  i = 0
  j = my_string.length - 1

  while i < j
    placeholder = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = placeholder
    i += 1
    j -= 1
  end
  return my_string
end


def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence == ""

  string_reverse(my_sentence)

  word = []
  word_indexes = []
  i = 0
  while i < my_sentence.length
    if my_sentence[i] != " "
      word << my_sentence[i]
      word_indexes << i
    else
      string_reverse(word)
      if word_indexes != nil && word != nil
        f = 0
        while f < word_indexes.length
          my_sentence[word_indexes[f]] = word[f]
          f += 1
        end
      end
      word = []
      word_indexes = []
    end
    i += 1
  end

  string_reverse(word)
  f = 0
  while f < word_indexes.length
    my_sentence[word_indexes[f]] = word[f]
    f += 1
  end

  return my_sentence
end
