def fibi(num)
  arr = [1]
  y = 1
  if num == 0
    0
  elsif num == 1
    1
  else
    (1...num).each do |x|
      arr << y
      y = arr[-2] + arr[-1]
    end
  end
  arr[-1]
end

puts fibi(6)
puts fibi(25)

def fib(num)
  return 0 if num == 0
  return 1  if num == 1
  fib(num - 1) + fib(num - 2)
end

puts fib(6)
puts fib(25)

def merge_sort(arr)
  return arr if arr.length <= 1
  half_array = arr.length / 2
  left = merge_sort(arr[0..half_array-1])
  right = merge_sort(arr[half_array..-1])
  sorted = []
  until left.empty? || right.empty? 
    left[0] <= right[0] ? sorted << left.shift : sorted << right.shift
  end
  return sorted + left + right
end

arr = 30.times.map{rand(200) + 1}
puts merge_sort(arr)