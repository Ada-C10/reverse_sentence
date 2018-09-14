# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)

  unless my_sentence.nil?
    words = my_sentence.split(/(\s)/)

    new_sentence = reverse_array(words).join

    my_sentence.length.times do |i|
      my_sentence[i] = new_sentence[i]
    end
  end
end



def reverse_array(arr)

  unless arr.nil?  || arr.length < 2
    length = arr.length

    (length/2).times do |i|
      tmp = arr[length - i - 1]
      arr[length - i - 1] = arr[i]
      arr[i] = tmp
    end
  end

  return arr

end
