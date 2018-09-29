require 'pry'
def string_reverse(my_words, beginning, ending)
  front_index = beginning
  back_index = ending

  while front_index < back_index
    front_value = my_words[front_index]
    back_value = my_words[back_index]


    my_words[front_index] = back_value
    my_words[back_index] = front_value

    front_index += 1
    back_index -= 1
  end

end

def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil || my_sentence.length < 2

  beginning = 0
  ending = my_sentence.length - 1
  
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

    string_reverse(my_sentence, beginning, ending)
  end
  return my_sentence
end
