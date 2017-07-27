def generate_tic_tac_toe
  player = ['X', 'O']
  board = Array.new(3,nil) { Array.new(3) }
  n = board.flatten.length
  until n == 0
    valid = false
    until valid
      row = rand(3)
      col = rand(3)
      valid = true
      board[row][col] == nil ? board[row][col] = player.first : valid = false
    end
    n -=1
    player.rotate!
  end
  p board
end
