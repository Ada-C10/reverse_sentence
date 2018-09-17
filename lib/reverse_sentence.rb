# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  elsif my_sentence == ""
    return ""
  end

  index = 0
  while my_sentence[index] != nil

    if my_sentence[index] == " "
      index += 1
      next
    end

    count = 0
    while my_sentence[index] != " " && my_sentence[index] != nil
      count += 1
      index += 1
    end

    beg_index = index - count
    end_index = index - 1
    temp = ""
    while beg_index < end_index
      temp = my_sentence[beg_index]
      my_sentence[beg_index] = my_sentence[end_index]
      my_sentence[end_index] = temp
      beg_index += 1
      end_index -= 1
    end
  end

  beg_index = 0
  end_index = my_sentence.length - 1
  while beg_index < end_index
    temp = my_sentence[beg_index]
    my_sentence[beg_index] = my_sentence[end_index]
    my_sentence[end_index] = temp
    beg_index += 1
    end_index -= 1
  end
  return my_sentence
end
