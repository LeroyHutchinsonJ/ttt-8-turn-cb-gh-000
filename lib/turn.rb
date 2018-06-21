def display_board(board)
puts " #{b[0]} | #{b[1]} | #{b[2]} "
puts "-----------"
puts " #{b[3]} | #{b[4]} | #{b[5]} "
puts "-----------"
puts " #{b[6]} | #{b[7]} | #{b[8]} "
end


def valid_move?(board,index)
if(index >= 0 && index <= 8 && position_taken?(board,index) == false)
true
end
end

def position_taken?(board, index)
if(board[index] == "" || board[index] == " " || board[index] == nil)
false
elsif board[index] == "X" || board[index] == "O"
true
end
end

def move(board,index, token = 'X')
  board[index] = token
end
