# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)

  unless my_sentence.nil?
    back_start = my_sentence.length - 1
    back_end = back_start

    temp = []

    while back_start >= 0
      if back_start == 0 || my_sentence[back_start - 1] == ' '
        (back_start..back_end).each do |index|
          temp << my_sentence[index]
        end
        back_end = back_start - 1

        while my_sentence[back_end] == ' ' && back_end >= 0
          back_end -= 1
          temp << ' '
        end

        back_start = back_end + 1

      end
      back_start -= 1
    end

    temp.each_with_index do |letter, index|
      my_sentence[index] = letter
    end
  end

end





  # spaces = 0
  #
  # while last_index != my_sentence.length
  #   if my_sentence[last_index] == ' '
  #     space_index = last_index
  #     # start_index = last_index + 1
  #     while space_index > 0
  #       my_sentence[space_index] = my_sentence[space_index - 1]
  #       space_index -= 1
  #     end
  #   end
  #
  #   if my_sentence[last_index] != ' ' && my_sentence[last_index-1] == ' '
  #     start_index = last_index
  #     while my_sentence[last_index] != nil || my_sentence[last_index] != ' '
  #       last_index += 1
  #     end
  #
  #     (last_index - start_index).times do
  #       temp = my_sentence[last_index - 1]
  #       move_times = last_index - 1
  #       # last_index.times do |move|
  #       while move_times > 0
  #         my_sentence[move_times] = my_sentence[move_times - 1]
  #         move_times -= 1
  #       end
  #     end
  #   end
  #
  #
  #   last_index += 1

    # raise NotImplementedError
