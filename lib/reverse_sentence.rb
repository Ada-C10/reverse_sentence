# A method to reverse the my_sentences in a sentence, in place.
def reverse_sentence(my_sentence)

  if my_sentence == nil || my_sentence == "" || my_sentence.length == 1
     return my_sentence
  end
  reverse_string(0, my_sentence.length - 1, my_sentence)
  i = 0
  s = 0
  e = 0

    while i < my_sentence.length
      # skip space
      while my_sentence[i + 1] == " " || my_sentence[i] == " "
        i += 1
      end
      # define start of sentence
      if my_sentence[i] != " "
        s = i
      end

      # find end
      while my_sentence[i+1] != " " && my_sentence[i+1] != nil
        i += 1
      end

      e = i
      reverse_string(s, e, my_sentence)
      i += 1
    end
end

def reverse_string(startw, endw, string)
  i = startw
  j = endw
  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i += 1
    j -= 1
  end
end
