# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  if my_sentence == nil || my_sentence.empty?
    return my_sentence
  end

  i = 0
  j = 0
  temp = []

  until i == my_sentence.length
    until my_sentence[j] == " " && my_sentence[j + 1] != " " || my_sentence[j] != " " && my_sentence[j + 1] == " " || j == my_sentence.length - 1
      j += 1
    end

    temp << my_sentence[i..j]

    j += 1
    i = j
  end

  total_index = my_sentence.length

  temp.each do |capture|
    total_index = total_index - capture.length
    my_sentence[total_index..(total_index + capture.length - 1)] = capture
  end
end
