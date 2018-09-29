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

end

def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil || my_sentence.length < 2

  beginning = 0
  ending = my_sentence.length - 1

  # Reverse entire string sentence
  string_reverse(my_sentence, beginning, ending)
  j = 0

  while j < my_sentence.length

    while my_sentence[j] == " "
      j += 1
    end

    i = j

    while my_sentence[j] != " " && my_sentence[j] != nil
      j += 1
    end

    beginning = i
    ending = j - 1

    # Loop through each word and reverse each string back to be readable
    string_reverse(my_sentence, beginning, ending)
  end
  return my_sentence
end
