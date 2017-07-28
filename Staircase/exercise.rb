def staircase_creator(n, steps = 1, spaces = n-1, stairs = "")
  return stairs << '#'* n if spaces == 0

  stairs << " " * spaces + '#' * steps + "\n"
  steps +=1
  spaces -= 1
  staircase_creator(n, steps, spaces, stairs)
end