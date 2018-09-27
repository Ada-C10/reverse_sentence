#A method to reverse the words in a sentence, in place.
# The time complexity:
# The first iteration is done when the entire sentence is reversed.
# The second iteration when the start and end indices are found.
# The third time the iterations are (each_word.length)/2 times for reversing the word.
# Since the iterations happen sequentially, the time complexity is O(n)
#
# The space complexity is O(1) as the sentence is reversed in place.
def reverse_sentence(my_sentence)
  #Reverses a string that is passed
  def string_reverse(string, start_index, end_index)
      index = 0
      length = end_index - start_index
      while length != 0 && index <= (length/2)
        swapped_element = string[start_index + index]
        string[start_index + index] = string[end_index - index]
        string[end_index - index] = swapped_element
        index += 1
      end
      return string
  end

  if my_sentence != nil && my_sentence.length >= 3
    length = my_sentence.length

    #Reverses the sentence entirely
    my_sentence = string_reverse(my_sentence, 0, length - 1)

    index = 0
    start_index = 0

    while index < length

      while my_sentence[index] == " "
        if index + 1 != " "
          start_index = index + 1
        end
        index += 1
      end

      while my_sentence[index] != " " && index < length
        end_index = index
        index += 1
      end

      #Reverses each reverses word of the sentence seperately
      string_reverse(my_sentence, start_index, end_index)

    end
  end
end
