# A method to reverse the words in a sentence, in place.
# def reverse_sentence(my_sentence)
#
#   if my_sentence == nil || my_sentence.length <= 1
#     return my_sentence
#
#   else
#     start_index = 0
#     finish_index= 0
#     counter = 0
#     sentence_length = my_sentence.length
#
#     while start_index < sentence_length
#       if my_sentence[counter] != " "
#         finish_index += 1
#         counter += 1
#       else
#         word_length = finish_index - start_index
#
#         new_start = sentence_length - finish_index
#         new_end = sentence_length - start_index
#
#         #move old letters to temp
#         temp = my_sentence[[new_start]..my_sentence[new_end]]
#
#         #move letters to new place
#         move_index = 0
#         until move_index == word_length
#           move_new = new_start
#           move_end = new_finish
#           my_sentence[move_new]=my_sentence[start_index]
#
#         end
#         start_index += word_length
#       end
#
#       return my_sentence
#     end
#   end
# end

def reverse_sentence(my_sentence)

  if my_sentence == nil || my_sentence.length <= 1
    return my_sentence
  else
    counter = 0
    original_start = 0
    original_end = 0
    reversed_start = 0
    reversed_end = my_sentence.length - 1

    until counter == my_sentence.length
      if my_sentence[counter] != " "
        counter += 1
      elsif my_sentence[counter] == " " || my_sentence[counter] == nil
        original_end = counter - 1
        reversed_start = reversed_end - original_end
        word_length = original_end + 1 - original_start

        end_move_index = reversed_start
        start_move_index = original_start

        until end_move_index == my_sentence.length / 2
          temp = my_sentence[end_move_index]

          my_sentence[end_move_index] = my_sentence[start_move_index]
          my_sentence[original_start] = temp
          end_move_index += 1
          start_move_index += 1
        end

        counter += 1
        original_start += 1
      end
    end
  end
end
