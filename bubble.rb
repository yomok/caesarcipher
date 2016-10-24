def bubble_sort(array)
  counter = 0
  x = true
  while x
    array.each_with_index do |value, index|
      if array.length-1 > index
        if array[index] > array[index+1]
          counter += 1
          array[index], array[index+1] = array[index+1], array[index]
        end
      end
    end
    if counter != 0
      counter = 0
    else
      x = false
    end
end
  return array
end
puts bubble_sort([4,3,78,2,0,2])
puts bubble_sort([5,100,2, 25, 1, 10, -7, 4, 200, 75])