require_relative './exercise.rb'

describe 'solution' do
  context 'Example' do
    it 'solves the the example problem' do
      n = 6
      array = array = [-4, 3, -9, 0, 4, 1]
      solution ="0.500000\n0.333333\n0.166667"
      expect(solution(n, array)).to eq solution
    end
  end
end
