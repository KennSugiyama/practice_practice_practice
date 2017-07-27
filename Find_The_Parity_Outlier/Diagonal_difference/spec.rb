require_relative './exercise.rb'

describe 'input_parser' do
  it 'returns n and the matrix' do
    input = {n: 3, matrix:[[11, 2, 4],[4, 5, 6],[10, 8, -12]]}
    string = "3\n11 2 4\n4 5 6\n10 8 -12"
  expect(input_parser(string)).to eq input
  end
end

describe 'id_primary_diagonal' do
  it 'returns an array with the values along the primary diagonal' do
    n = 3
    matrix = [[11, 2, 4],
              [4, 5, 6],
              [10, 8, -12]]
    diagonal_array = [11, 5, -12]
    expect(id_primary_diagonal(n, matrix)).to match_array(diagonal_array)
  end

  it 'returns an array with the values along the primary diagonal' do
    n = 4
    matrix = [[11, 2, 4, 11],
              [4, 5, 6, 12],
              [10, 8, -12, 13],
              [1, 2, 3, 4]]
    diagonal_array = [11, 5, -12, 4]
    expect(id_primary_diagonal(n, matrix)).to match_array(diagonal_array)
  end
end


describe 'id_secondary_diagonal' do
  it 'returns an array with the values along the primary diagonal' do
    n = 3
    matrix = [[11, 2, 4],
              [4, 5, 6],
              [10, 8, -12]]
    diagonal_array = [4, 5, 10]
    expect(id_secondary_diagonal(n, matrix)).to match_array(diagonal_array)
  end

  it 'returns an array with the values along the primary diagonal' do
    n = 4
    matrix = [[11, 2, 4, 11],
              [4, 5, 6, 12],
              [10, 8, -12, 13],
              [1, 2, 3, 4]]
    diagonal_array = [11, 6, 8, 1]
    expect(id_secondary_diagonal(n, matrix)).to match_array(diagonal_array)
  end
end

describe'sum_of_diagonals' do
  let(:matrix) {matrix = [[11, 2, 4, 11],
                          [4, 5, 6, 12],
                          [10, 8, -12, 13],
                          [1, 2, 3, 4]]}
  let(:n) {4}

  context 'returns the sum of an array' do
    it 'returns 8' do
      diagonal = id_primary_diagonal(n, matrix)
      expect(sum_of_diagonal(diagonal)).to eq 8
    end
  end
end


describe 'solution' do
  it 'solves the problem' do
    params = {n: 3, matrix:[[11, 2, 4],[4, 5, 6],[10, 8, -12]]}
  expect(solution(params)).to eq 15
  end
end