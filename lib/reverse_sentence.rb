require 'pry'

# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil || my_sentence.length == 0

  low = 0
  high = my_sentence.length - 1
  while low < high
    temp = my_sentence[low]
    my_sentence[low] = my_sentence[high]
    my_sentence[high] = temp
    low += 1
    high -= 1

  end

  index_of_spaces = []
  my_sentence.length.times do |i|
    if my_sentence[i] == " "
      index_of_spaces << i
    end
  end
  index_of_spaces << my_sentence.length

  low = 0
  high = index_of_spaces[0]-1

  index_of_spaces.length.times do |i|
    while low < high
      temp = my_sentence[low]
      my_sentence[low] = my_sentence[high]
      my_sentence[high] = temp
      low += 1
      high -= 1
    end
    if i == index_of_spaces.length-1
      return my_sentence
    end
    low = index_of_spaces[i]+1
    high = index_of_spaces[i+1]-1
  end
end
