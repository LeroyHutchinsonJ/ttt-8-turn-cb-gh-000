def display_board(b)
puts " #{b[0]} | #{b[1]} | #{b[2]} "
puts "-----------"
puts " #{b[3]} | #{b[4]} | #{b[5]} "
puts "-----------"
puts " #{b[6]} | #{b[7]} | #{b[8]} "
end

def input_to_index(input = 0)

index = input.to_i - 1
return index
end



def position_taken?(board, index)
if(board[index] == "" || board[index] == " " || board[index] == nil)
false
elsif board[index] == "X" || board[index] == "O"
true
end
end

def valid_move?(board,index)
if(index.between?(0,8) && position_taken?(board,index) == false)
true
end
end

def move(board,index, token = 'X')
  board[index] = token
end




def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip

  index = input_to_index(input)

  if valid_move?(board,index) == true
    move(board,index)
    display_board(board)

  else
    turn(board)
  end
end
