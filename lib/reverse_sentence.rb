# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  if my_sentence == nil || my_sentence == ""
    return nil
  else
    reverse_words(my_sentence)
    string_reverse(my_sentence)
  end
  return my_sentence
end

def reverse_words(my_words)
  if my_words == nil || my_words.length == 0
    return nil
  else
    start = 0
    ender = 0

    my_words.length.times do |i|
      ender = i

      if my_words[i] == " "
        ender = i - 1
        while start < ender
          temp = my_words[ender]
          my_words[ender] = my_words[start]
          my_words[start] = temp
          start += 1
          ender -= 1
        end
        start = i + 1
      end
    end

    while start < ender
      temp = my_words[ender]
      my_words[ender] = my_words[start]
      my_words[start] = temp
      start += 1
      ender -= 1
    end
  end
  return my_words
end

def string_reverse(my_string)

  if my_string == nil
    return nil
  elsif my_string.length == 1
    return my_string
  elsif
    my_string.length > 1
    temp = ""
    i = 0
    j = (my_string.length - 1)
    while i < j
      temp = my_string[i]
      my_string[i] = my_string[j]
      my_string[j] = temp
      i += 1
      j -= 1
    end
    return my_string
  end
end
