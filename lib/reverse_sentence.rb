# A method to reverse the words in a sentence, in place.


#space complexity: 0(1) or constant. As the size of the input changes, there is no need for added space. This is because we are updating the indices in place.

#time complexity: 0(n). First, each character in my_words moves indices with the reverse_string method. This takes O(n) times because the loop runs n/2 times due to the fact that 2 variables get updated each time. Then my_words goes through the 'if' loop to determine the start and end of the word. This takes O(n) times where n is the length of the string. Finally, each word then goes through the reverse_words method. This method also takes O(n) times because it will scale proportionately with the length of the string. Therefore, the time complexity for this entire method is O(n).

def reverse_sentence(my_sentence)
  # raise NotImplementedError

  return if (my_sentence == nil || my_sentence.length == 0)

  length = my_sentence.length
  my_sentence = reverse_string(my_sentence, length)

  x = 0

  while x < length

    first_index = x

    if my_sentence[x] == " "
      while my_sentence[x + 1] == " "
        x += 1
      end
    elsif my_sentence[x] != " "
      while (my_sentence[x + 1] != " " && my_sentence[x + 1] != nil)
        x += 1
      end
    end

    last_index = x

    my_sentence = reverse_words(my_sentence, first_index, last_index)

    x += 1
  end

end


def reverse_string(my_sentence, length)
  first_index = 0
  last_index = (length - 1)
  temp = " "

  while first_index < last_index

    temp = my_sentence[first_index]
    my_sentence[first_index] = my_sentence[last_index]
    my_sentence[last_index] = temp
    first_index += 1
    last_index -= 1
  end

  return my_sentence
end


def reverse_words(my_sentence, first_index, last_index)
  temp = " "

  while first_index < last_index
    temp = my_sentence[first_index]
    my_sentence[first_index] = my_sentence[last_index]
    my_sentence[last_index] = temp

    first_index += 1
    last_index -= 1
  end
  return my_sentence
end
