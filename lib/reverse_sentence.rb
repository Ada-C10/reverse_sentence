require 'pry'
# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  reversed_sentence = ""

  if my_sentence == nil
    return nil
  end

  string_length = (my_sentence.length - 1)
  reversed_sentence_index = 0
  sentence_index = string_length

  until reversed_sentence_index > string_length do

    if my_sentence[sentence_index] =~ /\S/
      word_start = sentence_index
      word_end = sentence_index
      until my_sentence[word_start] =~ /\s/ || word_start == 0
        word_start -= 1
      end
      sentence_index = word_start
      if word_start != 0
        word_start += 1
      end
      until word_start > word_end do
        reversed_sentence[reversed_sentence_index] = my_sentence[word_start]
        word_start += 1
        reversed_sentence_index += 1
      end
    else
      my_sentence[sentence_index] =~ /\s/
      space_start = sentence_index
      space_end = sentence_index
      until my_sentence[space_start] =~ /\S/ || word_start == 0
        space_start -= 1
      end
      sentence_index = space_start
      space_start += 1
      until space_start > space_end do
        reversed_sentence[reversed_sentence_index] = my_sentence[space_start]
        space_start += 1
        reversed_sentence_index += 1
      end
    end

  end

  i = 0
  until i > string_length
    my_sentence[i] = reversed_sentence[i]
    i += 1
  end

  return my_sentence
end
