def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

board=[" ", " ", " ", " ", " ", " ", " ", " ", " "]

def input_to_index(user_input)
  index=(user_input).to_i - 1

end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index >= 0 && index <= 8 then
    return true
  else return false

  end
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else return true
  end
end

def turn(board)

  puts "Please enter 1-9:"
  user_input=gets.strip
  index_2 = input_to_index(user_input)
  player_move = valid_move?(board, index_2)

  if player_move == false then
    puts "Please enter 1-9:"
    user_input=gets.strip
end
end


turn(board)
