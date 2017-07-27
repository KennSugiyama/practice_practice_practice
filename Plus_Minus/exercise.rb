def solution(n, array)
  solution = ""
  total = array.length
  counts = []
  counts << positives_integers = array.select {|i| i > 0 }.count.to_f
  counts << negative_integers = array.select {|i| i < 0 }.count.to_f
  counts << zeros = array.select {|i| i ==0 }.count.to_f
  counts.each do |count|
    solution << "%0.6f" % (count / total) + "\n"
  end
  solution.chomp
end
