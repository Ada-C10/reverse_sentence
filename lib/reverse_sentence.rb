# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  def reverse_sentence(sentence)
  return nil if sentence.nil?

  finish = nil
  start = nil
  on_first_word = true

  is_finding_whitespace = sentence[-1] == ' '

  (sentence.length - 1).downto(0) do |current_index|
    current_char = sentence[current_index]

    if is_finding_whitespace
      if finish.nil? && current_char == ' '
        finish = current_index
      end

      if start.nil? && sentence[current_index - 1] != ' '
        start = current_index
      end
    else
      # a word
      if finish.nil? && current_char != ' '
        finish = current_index
      end

      if start.nil? && sentence[current_index - 1] == ' '
        start = current_index
      end
    end

    if start.nil? && current_index == 0
      start = current_index
    end

    if start && finish
      if on_first_word
        on_first_word = false
      else
        word = sentence.slice!(start..finish)
        sentence << word
      end

      start = nil
      finish = nil
      is_finding_whitespace = !is_finding_whitespace
    end
  end
end
end
