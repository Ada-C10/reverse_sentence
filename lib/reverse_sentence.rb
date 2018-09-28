# A method to reverse the words in a sentence, in place.
require 'pry'

def partial_reverse(my_string, start_index, end_index)
   i = start_index
   j = end_index

   while i < j
     temp = my_string[i]
     my_string[i] = my_string[j]
     my_string[j] = temp
     i += 1
     j -= 1
   end
   return
end

def reverse_words(my_words)
  return if my_words.nil? || my_words.length == 0

  i=0
  length = my_words.length
  while i < length
    while my_words[i] == " " && i < length
      i += 1
    end

    start_index = i

    while my_words[i] != " " && i < length
      i += 1
    end

    end_index = i-1

    partial_reverse(my_words, start_index, end_index)
  end

  return
end

def reverse_sentence(my_sentence)
  return if my_sentence.nil? || my_sentence.length == 0

  i = 0
  length = my_sentence.length
  j = length - 1

  partial_reverse(my_sentence, i, j)
  reverse_words(my_sentence)

  return my_sentence
end
