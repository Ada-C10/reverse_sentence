def partial_reverse(my_string, starting, ending)
  i = starting
  j = ending
  while i < j
    temp = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = temp
    i += 1
    j -= 1
  end
  return
end


# def string_reverse(my_string)
#   return nil if my_string == nil
#   mid = my_string.length / 2
#   last = my_string.length - 1
#   temp = ""
#   i = 0
#   while i < mid
#     temp = my_string[i]
#     my_string[i] = my_string[last - i]
#     my_string[last - i] = temp
#     i += 1
#   end
#   return temp
# end
def reverse_words(my_words)
  return if (my_words == nil || my_words.length == 0)

  i = 0
  total = my_words.length
  while i < total
    while my_words[i] == ' ' && i < total
      i += 1
    end
    starting = i

    while my_words[i] != ' ' && i < total
      i += 1
    end
    ending = i - 1

    partial_reverse(my_words, starting, ending)
  end
  return
end



def reverse_sentence(my_sentence)
return if (my_sentence == nil || my_sentence.length == 0)

starting = 0
ending = my_sentence.length - 1


   partial_reverse(my_sentence, starting, ending)
   
   reverse_words(my_sentence)

end
