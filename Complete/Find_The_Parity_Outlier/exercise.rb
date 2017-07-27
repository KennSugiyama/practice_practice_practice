def find_outlier(integers)
  if even_set?(integers)
    integers.each { |i| return i if i.odd? }
  else
    integers.each { |i| return i if i.even? }
  end
end

def even_set?(integers)
  test = []
  for i in 0..2
    integers[i].even?? test << true : test << false
  end
  test.count { |boo| boo == true } > 1? true : false
end


## Alternative
# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end