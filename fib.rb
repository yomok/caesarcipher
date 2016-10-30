def fib(num)
  return 0 if num == 0
  return 1  if num == 1
  fib(num - 1) + fib(num - 2)
end

puts fib(6)
puts fib(25)