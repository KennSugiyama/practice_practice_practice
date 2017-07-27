def generate_chessboard
  board = Array.new(8) { Array.new(8) }

  board[0] = ['B Rook', 'B Knight', 'B Bishop', 'B Queen', 'B King', 'B Bishop', 'B Knight', 'B Rook']
  board[-1] = ["W Rook", "W Knight", "W Bishop", "W Queen", "W King", "W Bishop", "W Knight", "W Rook"]
  board[1] = Array.new(8) { 'B Pawn' }
  board[-2] = Array.new(8) { 'W Pawn' }

  board
end