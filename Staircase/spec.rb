require_relative './exercise.rb'

describe 'staircase_creator' do
  context 'solves the problem' do
    it 'creates 1 level when n = 1' do
      n = 1
    solution = "#"
      expect(staircase_creator(n)).to eq solution
    end
    it 'creates 2 level when n = 2' do
      n = 2
    solution =" #\n##"
      expect(staircase_creator(n)).to eq solution
    end
    it 'creates 3 level when n = 3' do
      n = 3
    solution ="  #\n ##\n###"
      expect(staircase_creator(n)).to eq solution
    end
    it 'creates 6 levels when n=6' do
    n = 6
    solution = "     #\n    ##\n   ###\n  ####\n #####\n######"
    expect(staircase_creator(n)).to eq solution
    end
  end
end