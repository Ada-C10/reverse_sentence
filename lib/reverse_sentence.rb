# A method to reverse the words in a sentence, in place.
# This is close but not quite enough. Need to somehow track the spaces between each word
# def reverse_sentence(my_sentence)

# p reverse_sentence("Yoda is awesome")
# p reverse_sentence("I'm a better engineer than i was yesterday")
# p reverse_sentence("   I     can      do      this")

# Go through sentence
# While i < J (beginning vs end )
# Find first word at start of sentence
# Find last word at end of sentence
# Swap where the words start (end now starts at beginning/beginning now starts at end)
# Increment i to find next start word
# Decrement j to find next end word

def string_reverse(my_string)
  return if my_string.nil? || my_string.empty?
  i = 0
  j = my_string.length - 1

    while i < j
      temp = my_string[i]
      my_string[i] = my_string[j]
      my_string[j] = temp
      i += 1
      j -= 1
    end
    return my_string
end

def reverse_single_word(string, start_index, end_index)
  # return nil if str.nil?
  return nil if string.nil?
  # Return empty string if length is zero
  return "" if string.length == 0

  while start_index < end_index
    temp = string[start_index]
    string[start_index] = string[end_index]
    string[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return string
end


def reverse_sentence(my_sentence)
  return if my_sentence.nil? || my_sentence.empty?

  length = my_sentence.length
  # Reverses entire sentence
  my_sentence = string_reverse(my_sentence)
  i = 0
  while i < length
    first_index = i
    # If element is a space and the next element is space, increase index by 1
    if my_sentence[i] == " "
      # Checking if next element is a space
      while my_sentence[i + 1] == " "
        # While current elemetn is a space and next element is a space, increase i
        i += 1
      end
    # Else current index is not a space
    else
      # While the current element is not a space and the next element
      # Is not a space/not nil - Increase i to find end of word
       while my_sentence[i + 1] != " " && my_sentence[i + 1] != nil
        i += 1
       end
    end
    # End of word will be i where next element is a space or is nil
    end_index = i
    # Reversing word (currently in reverse order so this will make it correct order)
    my_sentence = reverse_single_word(my_sentence, first_index, end_index)
    # Increasing i
    i += 1
  end
  return my_sentence
end

sen = "Yoda is awesome"
p reverse_sentence(sen)

# Time - O(n) - Going through entire array
# Space - O(1) - Reversing in place, requires same number of elements regardless of the size of n
