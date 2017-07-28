def solver(array)
  summations = []
  for i in 0...array.length
    summations << array[1..-1].reduce { |sum, n| sum += n }
    array.rotate!
  end
  summations.sort!
  "#{summations[0]} #{summations[-1]}"
end