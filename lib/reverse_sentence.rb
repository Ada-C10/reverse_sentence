# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  reverse_words(my_sentence)
  reverse(my_sentence, 0, my_sentence.length - 1)
end

def reverse_words(my_words)
  return nil if my_words == nil

  word_start = 0
  word_end = 0
  counter = 0

  until counter > my_words.length
    if my_words[counter] != " " && my_words[counter] != nil
      counter += 1
    else # my_words[counter] == nil || my_words[counter] == " "
      word_end = counter - 1
      counter += 1
      reverse(my_words, word_start, word_end)
      word_start = counter
      word_end = counter
    end
  end
end

def reverse(my_words, word_start, word_end)
  while word_start < word_end
    temp = my_words[word_start]
    my_words[word_start] = my_words[word_end]
    my_words[word_end] = temp
    word_start += 1
    word_end -= 1
  end
end
