def solution(params = {})
  n = params.fetch(:n)
  matrix = params.fetch(:matrix)
  diagonal1 = sum_of_diagonal(id_primary_diagonal(n,matrix))
  diagonal2 = sum_of_diagonal(id_secondary_diagonal(n,matrix))
  (diagonal2 - diagonal1).abs
end

def input_parser(string)
  string_array = string.split("\n")
  params = {:n => string_array.shift.to_i}
  string_array.map! { |integers| integers.split(" ") }
  string_array.each { |array| array.map!(&:to_i) }
  params[:matrix] = string_array
  params
end


def id_primary_diagonal(n, matrix)
  primary_diagonal = []
  for i in 0..n-1
    primary_diagonal << matrix[i][i]
    i += 1
  end
  primary_diagonal
end

def id_secondary_diagonal(n, matrix)
  secondary_diagonal = []
  for i in 0..n-1
    secondary_diagonal << matrix[i][n-1]
    i += 1
    n -= 1
  end
  secondary_diagonal
end

def sum_of_diagonal(diagonal)
  diagonal.reduce {|sum, i| sum += i}
end