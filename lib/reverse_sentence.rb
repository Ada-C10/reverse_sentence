# A method to reverse the words in a sentence, in place.
# Time Complexity: O(3n) * O(n) + O(n) = O(n^2) + O(n) = O(n^2)
# Space Complexity: O(1)

def reverse_sentence(my_sentence)
  return nil if my_sentence == nil

  i = 0
  m = 0
  j = my_sentence.length

  i += 1 while my_sentence == " "

  while i < j do

    while my_sentence[i] != " " && i != j do
      i += 1
    end

    k = i
    while m < k do
      temp = my_sentence[m]
      my_sentence[m] = my_sentence[k - 1]
      my_sentence[k - 1] = temp
      m += 1
      k -= 1
    end

    while my_sentence[i] == " "
      i += 1
    end

    m = i
  end

  l = 0
  j -= 1
  
  while l < j
    temp = my_sentence[l]
    my_sentence[l] = my_sentence[j]
    my_sentence[j] = temp
    l += 1
    j -= 1
  end

  return my_sentence
end
