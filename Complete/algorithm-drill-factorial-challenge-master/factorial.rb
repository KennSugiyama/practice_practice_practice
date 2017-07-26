def factorial_iterative(n)
  return 1 if n <= 1
  factorial = n
  until n == 1
    factorial *= (n - 1)
    n -= 1
  end
  factorial
end

def factorial_recursive(n)
  return 1 if n <= 1
  n * factorial_recursive(n - 1)
end
