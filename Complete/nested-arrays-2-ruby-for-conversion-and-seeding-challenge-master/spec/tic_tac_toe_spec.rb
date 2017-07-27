require_relative '../tic_tac_toe'

describe 'generating a tic-tac-toe board' do
  let(:board) { generate_tic_tac_toe }

  describe 'board structure' do
    it 'has three rows' do
      expect(board.length).to eq 3
    end

    it 'has three spaces' do
      # row_lengths = board.map {|row| row.length}
      row_lengths = board.map(&:length)
      expect(row_lengths).to all(be 3)
    end
  end

  describe 'placement of x & o' do
  end

end

