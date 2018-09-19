# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)

  if my_string == nil || my_string.length <= 1
    return my_string
  else
    i = 0
    j = my_string.length - 1
    while i < j
      temp = my_string[i]
      my_string[i] = my_string[j]
      my_string[j]=temp
      i += 1
      j -= 1
    end
    return my_string
  end

end
