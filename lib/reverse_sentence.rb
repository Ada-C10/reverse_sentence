def string_reverse(my_string, beginning, ending)
  front_index = beginning
  back_index = ending

  while front_index < back_index
    front_value = my_string[front_index]
    back_value = my_string[back_index]

    my_string[front_index] = back_value
    my_string[back_index] = front_value

    front_index += 1
    back_index -= 1
  end
  return my_string
end

def reverse_words(my_words)
  return if my_words == nil

  i = 0
  length = my_words.length

  while i < length
    while my_words[i] == ' ' && i < length
      i += 1
    end

    beginning = i

    while my_words[i] != ' ' && i < length
      i += 1
    end

    ending = i - 1

    string_reverse(my_words, beginning, ending)
  end
  return my_words
end


def reverse_sentence(my_sentence)
  return if my_sentence.nil? || my_sentence.length < 2
  reverse_words(my_sentence)
  string_reverse(my_sentence, 0, my_sentence.length - 1)
end
