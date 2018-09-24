# A method to reverse the words in a sentence, in place.
require 'pry'
def reverse_sentence(my_sentence)
  return if my_sentence == nil || my_sentence.length < 1
  i = 0
  j = my_sentence.length - 1
  until i == j
    # if my_sentence[j] == nil
    #   my_sentence[j] = " "
    # elsif my_sentence[i] == nil
    #   my_sentence[i] = " "
    # end
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temp
    i += 1
    j -= 1
  end
  return reverse_words(my_sentence)
end



def reverse_words(my_words)
  # puts my_words
  unless my_words == nil || my_words.empty?
    last = 0
    first = 0
    until last == my_words.length - 1
      while my_words[first] == " " && first != my_words.length - 1
        first += 1
      end
      last = first
      while my_words[last] != " " && last != my_words.length - 1
        last += 1
      end
      if first == last || last == my_words.length - 1
        my_words[first..last] = string_reverse(my_words[first..last])
      else
        my_words[first..last - 1] = string_reverse(my_words[first..last - 1])
      end
      first = last
    end
  end
  # puts "finished #{my_words}"
end


def string_reverse(my_string)
  return if my_string == nil || my_string.length < 1
  i = 0 #first ele
  j = my_string.length - 1 #last ele
  while i < j # until position of first ele meets last, so there is the center element in between
    temp = my_string[i] #stores frist ele in temp
    my_string[i] = my_string[j] #sets first ele to the last ele's position
    my_string[j] = temp #sets last element to first ele's position
    i += 1 #increment
    j -= 1
  end
  return my_string
end
