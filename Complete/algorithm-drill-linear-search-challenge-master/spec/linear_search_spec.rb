require_relative '../linear_search'

describe 'linear_search' do
  let(:symbols) { [:Q, :O, :A, :A, :C, :G, :S, :U] }

  context 'when the array contains the searched-for element' do
    it 'returns the index of the first occurrence of the element' do
      index_of_a = linear_search(:A, symbols)
      expect(index_of_a).to eq 2
    end
  end

  context 'when the array does not contain the searched-for element' do
    it 'returns nil if the element cannot be found' do
      index_of_z = linear_search(:Z, symbols)
      expect(index_of_z).to be_nil
    end
  end
end


describe 'global_linear_search' do
  let(:symbols) { [:Q, :O, :A, :A, :C, :G, :S, :U] }

  context 'when array contains multiple searched-for elements' do
    it 'returns an array of all indexes' do
      index_of_a = global_linear_search(:A, symbols)
      expect(index_of_a).to eq [2,3]
    end
  end

  context 'When an array does not contain the earched-for element' do
    it 'returns an empty array' do
      index_of_z = global_linear_search(:Z, symbols)
      expect(index_of_z).to eq []
    end
  end
end
