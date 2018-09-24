
def reverse_sentence(my_sentence)
  reverse_words(my_sentence)
  string_reverse(my_sentence)
end

def reverse_words(my_words)
  starting = 0
  ending = 0
  # put in a case for nil no word
  while my_words != nil && ending <= my_words.length
    if my_words[ending] == ' ' || ending == my_words.length
      front_index = starting
      back_index = ending - 1
      while front_index < back_index
        random_variable = my_words[front_index]
        my_words[front_index] = my_words[back_index]
        my_words[back_index] = random_variable
        front_index += 1
        back_index -= 1
      end
      starting = ending + 1
    end
    ending += 1
  end
end

def string_reverse(my_string)
  if my_string == nil || my_string.length == 1
    return my_string
  end
  y = my_string.length - 1
  x = 0
  while y > x
    z = my_string[x]
    my_string[x] = my_string[y]
    my_string[y] = z
    y -= 1
    x += 1
  end
end
