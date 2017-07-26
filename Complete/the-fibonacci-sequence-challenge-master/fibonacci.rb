def iterative_nth_fibonacci_number(n)
  return 0 if n == 0
  return 1 if n == 1
  fib_array = [0, 1]
  i = 1

  while i < n
    fib_array << fib_array[-1] + fib_array[-2]
    i += 1
  end
  fib_array[-1]
end


def recursive_nth_fibonacci_number(n)
  return 0 if n == 0
  return 1 if n == 1
  recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
end
