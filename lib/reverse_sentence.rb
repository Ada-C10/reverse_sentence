

def string_reverse(my_string)
  # if my_string == nil || my_string.length <= 1
  #   return my_string
  # else
  unless my_string == nil || my_string.length <= 1
    i = 0
    j = my_string.length - 1
    while i < j
      temp = my_string[i]
      my_string[i] = my_string[j]
      my_string[j]=temp
      i += 1
      j -= 1
    end
  end

  return my_string
end

def reverse_words(sentence)
  if sentence == nil || sentence.length < 2
    return sentence
  else
    index = 0
    start_index = 0
    finish_index = 0

    until finish_index > sentence.length
      if sentence[index] == " " || index + 1 == sentence.length
        a = start_index

        if sentence[index] == " "
          b = finish_index - 1
        elsif index + 1 == sentence.length
          b = finish_index
        end

        while a < b
          temp = sentence[b]
          sentence[b] = sentence[a]
          sentence[a] = temp
          a += 1
          b -= 1
        end
        index += 1
        finish_index += 1
        start_index = finish_index

      elsif sentence[index] != " "
        index += 1
        finish_index += 1
      end
    end

    return sentence

  end
end

def reverse_sentence(my_sentence)
  reversed = string_reverse(my_sentence)

  return reverse_words(reversed)
end
