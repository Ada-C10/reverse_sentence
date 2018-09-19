# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  # i divied up my thought process this way:
  # REVERSE WORDS:
  # before string[0] --> first space (occurs 1x)
  # previous space --> current space (can occur multiple times)
  # final space --> after string[-1] (occurs 1x)
  # REVERSE SENTENCE:
  # swap characters, from 0-->-1

  # gotta check for nil
  if my_sentence == nil
    return nil
  end

  # initialize some vars upfront; important for scope
  length = my_sentence.length
  counter = 0 #<-- use to reverse each word
  space_prev = -1 #<-- set up for first loop; like a pretend space before string's first char

  # reverse each word
  until counter > length
    if my_sentence[counter] == " "  || my_sentence[counter] == nil

      space = counter # <-- index where we found the space

      index_big = (space - 1) # <-- last char of word
      word_len = (index_big - space_prev) # <-- word length (not inclusive)
      index_small = (index_big - word_len) + 1 # <-- first char of word (inclusive)

      # normal string reverse business
      while index_small <= index_big
        temp_char = my_sentence[index_small]
        my_sentence[index_small] = my_sentence[index_big]
        my_sentence[index_big] = temp_char

        index_small += 1
        index_big -= 1
      end

      space_prev = space # <-- becomes previous space index; allows later comparison if new space is found
    end

    counter += 1 # <-- continue to iterate through string no matter what
  end

  # reset indices
  index_small = 0
  index_big = (length - 1)

  # reverse every char in the sentence for desired effect
  while index_small < index_big

    temp_char = my_sentence[index_small]
    my_sentence[index_small] = my_sentence[index_big]
    my_sentence[index_big] = temp_char

    index_small += 1
    index_big -= 1
  end

  return my_sentence # <-- reversed in place
end
