# A method to reverse the words in a sentence, in place.
require 'pry'
def reverse_sentence(my_sentence)
  # binding.pry
  if my_sentence == nil || my_sentence.length == 1 || my_sentence.length == 0
    return my_sentence
  end
  my_sentence = reverse_words(my_sentence)
  # binding.pry
  my_sentence = string_reverse(my_sentence, 0, (my_sentence.length - 1))
  # binding.pry
  return my_sentence
end

# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)
  i = 0
  j = 0

  if my_words == nil
    return
  end

  loop do
        # binding.pry
    until my_words[i] != " "
      i += 1
      break if i >= my_words.length - 1
    end
    j = i
    until my_words[j + 1] == " " || j == (my_words.length - 1)
      j += 1
    end
    # binding.pry
    string_reverse(my_words, i, j)
    i = j + 2
    # binding.pry
    break if i >= my_words.length - 1
  end
  return my_words
end


def string_reverse(my_string, i, j)
  if my_string == nil || i == j
    return
  end
  temp = ""
  temp2 = ""
  while i < j do
    temp = my_string[i]
    temp2 = my_string[j]
    my_string[j] = temp
    my_string[i] = temp2
    i += 1
    j -= 1
  end
  return my_string
end
