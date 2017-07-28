require_relative './exercise.rb'

describe 'solver' do
  it 'returns the number of tallest candles' do
    n = 4
    array = [3, 2, 1, 3]
    solution = "2"
    expect(solver(n,array)).to eq solution
  end
end