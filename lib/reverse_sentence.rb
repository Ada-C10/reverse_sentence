# A method to reverse the words in a sentence, in place.
def reverse_letters(my_string)

  return my_string if my_string.length == 1

  while my_string != nil
    i = 0
    j = (my_string.length - 1)
    while i < j
      temp = my_string[j]
      my_string[j] = my_string[i]
      my_string[i] = temp
      j -= 1
      i += 1
    end
    return my_string
  end
  return nil
end

def reverse_sentence(my_string)

  return my_string if my_string == nil

  results = ""
  i = 0
  temp = ""
  j = (my_string.length - 1)

while j >= 0
    if j == 0
      temp += my_string[j]
      results << reverse_letters(temp)
    elsif my_string[j] != " "
      temp += my_string[j]
    else
      results << reverse_letters(temp)
      temp = ""
      results += " "
    end
    j -= 1
  end


  u = 0
  while u < results.length
    my_string[u] = results[u]
    u += 1
  end
  return my_string
end
