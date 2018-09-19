# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil?

  i = 0
  j = my_sentence.length - 1
  n = 0
  while i < j
    n = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = n
    j -= 1
    i += 1
  end

  return reverse_words(my_sentence)
end


def reverse_words(my_words)
  i = 0
  j = my_words.length
  n = 0

  j.times do |index|
    if (my_words[index] == " " && index != 0) || index == j - 1
      k = 0
      if index == j - 1
        k = index
      else
        k = index - 1
      end

      my_words[i..k] = reverse_word(my_words[i..k])
      i =  index + 1
    end
  end

  return my_words

end

def reverse_word(string)
  i = 0
  j = string.length - 1
  n = 0
  while i < j
    n = string[i]
    string[i] = string[j]
    string[j] = n
    j -= 1
    i += 1
  end
  return string
end
