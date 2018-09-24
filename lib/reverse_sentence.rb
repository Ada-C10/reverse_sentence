require 'pry'

# A method to reverse the words in a sentence, in place.
def string_reverse(my_string, start_index, end_index)
  i = start_index
  j = end_index
  while i < j
    #flipflop characters using holding variable as a place to put one character while the other goes in its place.
    holding = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = holding

    #move up and move down the string.
    i += 1
    j -= 1
  end
  return my_string
end

def reverse_words(my_words)
  # if there's nothing to reverse...
  if my_words == nil || my_words == 0
    return my_words
  end

  i = 0
  length = my_words.length
  #run it as many times as there are characters
  while i < length
    # increase index if there are spaces, skipping the actual reversing
    while my_words[i] == ' ' && i < length
      i += 1
    end
    # Once finished skipping spaces, call that character the starting index.
    start_index = i

    # Find the end of the word.
    while my_words[i] != ' ' && i < length
      i += 1
    end
    end_index = i - 1

    reversed_string = string_reverse(my_words, start_index, end_index)
#
  end
  return reversed_string
end

def reverse_sentence(my_sentence)
  if my_sentence == nil || my_sentence == 0
    return my_sentence
  end

  length = my_sentence.length
  i = 0
  j = length - 1

  while i < j
    holding = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = holding

    i += 1
    j -= 1
  end


  final_answer = reverse_words(my_sentence)
  # binding.pry
  return final_answer

end

# example = reverse_sentence("Hello my name is Carly")
# puts "#{example}"
