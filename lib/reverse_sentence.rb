# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end

  i = 0
  j = my_sentence.length - 1

  while i < j
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temp
    i += 1
    j -= 1
  end

  index = 0

  while index < my_sentence.length - 1
    i = index

    while my_sentence[index] != ' ' && my_sentence[index] != nil
      index += 1
    end

    j = index - 1

    while i < j
      temp = my_sentence[i]
      my_sentence[i] = my_sentence[j]
      my_sentence[j] = temp

      i += 1
      j -= 1
    end

    index += 1
  end

  return my_sentence
end
