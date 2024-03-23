require 'pry-byebug'

def bubble_sort(array)
  swapped = false
  comparisons = array.length - 1
  
  array.length.times do
    i = 0
    while i < comparisons
      if array[i] > array[i + 1]
        tempNum = array[i]
        array[i] = array[i + 1]
        array[i + 1] = tempNum
        swapped = true
      end
      i += 1
    end
    return array if swapped == false
    comparisons -= 1
  end
  
  array
end

p bubble_sort([4,3,78,2,0,2])
# [0,2,2,3,4,78]

