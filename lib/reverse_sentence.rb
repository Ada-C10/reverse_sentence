# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  return my_sentence if (my_sentence.length == 0 || my_sentence.length == 1)

  #first reverse each word in place

  i = 0
  last = my_sentence.length - 1

  while i < my_sentence.length

      start_of_word = i
      end_of_word = i

      until my_sentence[i + 1] == " " || end_of_word == last
        end_of_word += 1
        i += 1
      end

      temp = ""
      step = start_of_word
      backstep = end_of_word
      while step <= (start_of_word + end_of_word) / 2
        temp = my_sentence[step]
        my_sentence[step] = my_sentence[backstep]
        my_sentence[backstep] = temp
        step += 1
        backstep -= 1
      end

      i += 1

      i += 1 while my_sentence[i] == " "
    end

  #next reverse the entire string
  middle = my_sentence.length / 2
  last = my_sentence.length - 1
  temp = ""
  i = 0
  while i < middle
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[last - i]
    my_sentence[last - i] = temp
    i += 1
  end
end
