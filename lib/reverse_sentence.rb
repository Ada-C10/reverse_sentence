def reverse_sentence(my_words)
  unless my_words.nil?
    n = my_words.length - 1
    i = 0
    while i <= n
      temp = my_words[n]
      my_words[n] = my_words[i]
      my_words[i] = temp
      i += 1
      n -= 1
    end

    # iterate through reversed string and send each word to
    # reverse in place
    iter = 0
    index = 0
    full_length = my_words.length
    while index <= full_length
      if my_words[index] == ' ' || index == full_length
        word_end = index
        reverse_single_word(iter, word_end, my_words)
        iter = index + 1
      end
      index += 1
    end

    return my_words
  end

end


def reverse_single_word(index, word_end, my_words)
  while index < word_end
    temp = my_words[index]
    my_words[index] = my_words[word_end - 1]
    my_words[word_end - 1] = temp
    index += 1
    word_end -= 1
  end
  return my_words
end



# my_words = "awesome! is Yoda"
# reverse_sentence(my_words)
# p my_words
