def display_board
puts "   |   |   "
puts "-----------"
puts "   |   |   "
puts "-----------"
puts "   |   |   "
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
