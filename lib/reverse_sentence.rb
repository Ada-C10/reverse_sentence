# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)

  reverse_words(my_sentence)

  string_reverse(my_sentence)

end

# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  word_index_start = 0
  word_index_end = 0
  while my_words != nil && word_index_end <= my_words.length
    if my_words[word_index_end] == ' ' || word_index_end == my_words.length
      front_index = word_index_start
      back_index = word_index_end - 1

      while front_index < back_index
        temp = my_words[front_index]
        my_words[front_index] = my_words[back_index]
        my_words[back_index] = temp
        front_index += 1
        back_index -= 1
      end
      word_index_start = word_index_end + 1
    end

    word_index_end += 1
  end
end

# A method to reverse a string in place.
def string_reverse(my_string)
  unless my_string == nil || my_string.empty? || my_string.length == 1

    index = 0
    last = my_string.length - 1

    while index <= last
      temp = my_string[index]
      my_string[index] = my_string[last]
      my_string[last] = temp
      index += 1
      last -= 1
    end
  end
end
