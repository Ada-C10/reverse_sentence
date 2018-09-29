# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  if my_sentence.nil? || my_sentence.length <= 1
    return my_sentence
  end

  # Reverse entire sentence
  i = 0
  j = my_sentence.length - 1

  while i < j
    temp = my_sentence[j]
    my_sentence[j] = my_sentence[i]
    my_sentence[i] = temp
    i += 1
    j -= 1
  end

  # Reverse each word in sentence
  start = 0
  ending = 0

  while ending < my_sentence.length

    until my_sentence[ending] == " " || my_sentence[ending].nil?
      ending += 1
    end

    k = start
    m = ending - 1

    while k < m
      temp = my_sentence[m]
      my_sentence[m] = my_sentence[k]
      my_sentence[k] = temp
      k += 1
      m -= 1
    end

    start = ending + 1
    ending += 1
  end

  return my_sentence
end
