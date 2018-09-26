
def reverse(my_sentence, s, e)
  while s < e
    temp = my_sentence[s]
    my_sentence[s] = my_sentence[e]
    my_sentence[e] = temp
    s += 1
    e -= 1
  end
end


def reverse_sentence(my_words)
  return if my_words == nil || my_words.length == 0

  reverse(my_words, 0, my_words.length - 1)

  i = 0
  while i < my_words.length

    while my_words[i] == " " && i < my_words.length
      i += 1
    end
    s = i

    while my_words[i] != " " && i < my_words.length
      i += 1
    end
    e = i - 1

    reverse(my_words, s, e)
  end

  return my_words
end

# string = "Yoda is awesome"
#
# puts reverse_sentence(string)
