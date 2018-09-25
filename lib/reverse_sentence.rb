# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  reversed_string = string_reverse(my_sentence)
  return reverse_words(reversed_string)
end

def reverse_words(my_words)
  if my_words == nil || my_words.length == 0
    return my_words
  end
  string_length = my_words.length
  i = 0
  while i < string_length
    space = find_next_space_index(my_words, i)
    if space == 0
      j = 0
    else j = space - 1
    end
    my_words[i..j] = string_reverse(my_words[i..j])
    i = space + 1
  end
  return my_words
end

def find_next_space_index(string, i)
    while string[i] !=  " " &&  i < string.length
    i += 1
    end
  space = i
  return space
end

def string_reverse(my_string)
  if my_string != nil
    i = 0
    j = my_string.length - 1
    while i < j
      temp = my_string[i]
      my_string[i] = my_string[j]
      my_string[j] = temp
      i += 1
      j -= 1
    end
    return my_string
  end
  return nil
end
