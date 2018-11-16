# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words unless my_words

  position = 0
  string_length = my_words.length

  while position < my_words.length
    until my_words[position] != ' ' || position >= string_length
      position += 1
    end

    start_point = position

    until my_words[position] == ' ' || position >= string_length
      position += 1
    end

  end_point = position - 1

  reverse_word(my_words, start_point, end_point)
  end

  return
end

def reverse_word(my_words, start_point, end_point)

  i = start_point
  j = end_point

  while i < j
    temp_char = my_words[i]
    my_words[i] = my_words[j]
    my_words[j] = temp_char
    i += 1
    j -= 1
  end

  return
end

def reverse_sentence(my_sentence)
  return my_sentence unless my_sentence

  start_point = 0
  end_point = my_sentence.length - 1

  reverse_word(my_sentence, start_point, end_point)

  reverse_words(my_sentence)
end
