require 'pry'
# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_words)

  string_reverse(my_words)

  if my_words == nil
    return nil
  end

  length = (my_words.length - 1)
  i = 0
  while i < length

    while my_words[i] == " "
      i = i + 1
    end

    start = i

    while my_words[i] != " "
      i = i + 1
      break if my_words[i].nil?
    end

    end_i = i - 1

    reverse_word(my_words, start, end_i)

  end
  return my_words
end



def reverse_word(my_words, start, end_i)

  first = my_words[start] #b
  last = my_words[end_i] #e

  while start < end_i
    my_words[start] = last
    my_words[end_i] = first
    start = start + 1
    end_i = end_i - 1
    first = my_words[start]
    last = my_words[end_i]
  end
  return
end



def string_reverse(my_string)

  if my_string == nil
    return nil
  end

  length = my_string.length

  i = 0
  j = length - 1

  first = my_string[i]
  last = my_string[j]

  while i < j
    my_string[i] = last
    my_string[j] = first
    i = i + 1
    j = j - 1
    first = my_string[i]
    last = my_string[j]
  end
  return my_string
end
