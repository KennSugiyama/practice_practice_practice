def solver(n,array)
  array.sort!
  array.select {|num| num == array[-1]}.count.to_s
end
