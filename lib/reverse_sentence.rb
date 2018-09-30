# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return if my_sentence == nil || my_sentence == ''

  i = 0
  end_of_s = my_sentence.length - 1

  # reverse the whole sentence
  reverse_string(my_sentence, i, end_of_s)

  # reverse the words
  reverse_words(my_sentence)

  return
  raise NotImplementedError
end


def reverse_words(my_words)
  i = 0
  all_words_end = my_words.length

  while i < all_words_end

    while my_words[i] == ' ' && i < all_words_end
      i += 1
    end
    start_of_word = i

    while my_words[i] != ' ' && i < all_words_end
      i += 1
    end
    end_of_word = i - 1

    reverse_string(my_words, start_of_word, end_of_word)
  end

  return my_words
  raise NotImplementedError
end

def reverse_string(string, start_of_word, end_of_word)

  i = start_of_word
  j = end_of_word

  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp

    i += 1
    j -= 1
  end

  return string
end


=begin
Time complexity is linear O(3n), where n is the length of the input(my_sentence)

Space complexity is constant O(1), because the storage remains the same
even if the input (my_sentece) increases.
=end
