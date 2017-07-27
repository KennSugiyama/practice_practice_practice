require_relative './exercise.rb'

describe 'find_outlier' do
  it 'returns 11' do
    integers = [2, 4, 0, 100, 4, 11, 2602, 36]
    expect(find_outlier(integers)).to eq 11
  end

  it 'returns 160' do
    integers = [160, 3, 1719, 19, 11, 13, -21]
    expect(find_outlier(integers)).to eq 160
  end

  it 'returns 1' do
    integers = [0, 1, 2]
    expect(find_outlier(integers)).to eq 1
  end

end

describe 'even_set?' do
  context'if an array is predominately even' do
    it 'returns true' do
      integers1 = [0,2,4,6,1,8,10]
      expect(even_set?(integers1)).to be_truthy
    end
    it 'returns true' do
      integers = [0, 1, 2]
      expect(even_set?(integers)).to be_truthy
    end
  end


  context'if an array is predominately odd' do
    it 'returns false' do
      integers = [1,3,7,6,9]
      expect(even_set?(integers)).to be_falsey
    end
  end
end

