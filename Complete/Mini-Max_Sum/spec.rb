require_relative './exercise.rb'

describe 'solver' do
  it 'gets the max and min number' do
    array = [1, 2, 3, 4, 5]
    solution = "10 14"
    expect(solver(array)).to eq solution
  end
end

#