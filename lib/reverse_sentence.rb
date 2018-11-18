# A method to reverse the words in a sentence, in place.

# time complexity is O(1)
# space complexity is O(1)
# Only 2 variables temporarily created to hold the sentence start and end points. Doesn't change based on the input size.
def reverse_sentence(my_sentence)
  # raise NotImplementedError
  return my_sentence if my_sentence.nil? || my_sentence.empty?

  sentence_start = 0
  sentence_end = my_sentence.length - 1

  word_reverse(my_sentence, sentence_start, sentence_end)
  reverse_words(my_sentence)
end

# helper method to reverse each word in the sentence in place
def reverse_words(my_words)
  # raise NotImplementedError
  return my_words if my_words.nil? || my_words.empty?

  i = 0 # starting point of sentence
  j = my_words.length # ending point of sentence

  while i < j
    while my_words[i] == " " && i < j
      i += 1
    end

    word_start = i # starting point of next word in sentence

    while my_words[i] != " " && i < j
      i += 1
    end

    word_end = i - 1 # end point of word in sentence

    word_reverse(my_words, word_start, word_end)
  end
  return
end

# helper method to reverse a word
def word_reverse(my_words, word_start, word_end)
  return nil if my_words == nil || my_words.length == 0

  i = word_start # first index of character word word
  j = word_end # last index of character in word

  while i < j
    temp = my_words[i] # swap with temporary variable
    my_words[i] = my_words[j]
    my_words[j] = temp
    i += 1
    j -= 1
  end
  return
end
