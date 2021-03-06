def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  # if index.between?(1,9)
  #   if !position_taken?(board, index)
  #     true
  #   end
  # end

  index.between?(0,8) && !position_taken?(board, index)
end

def input_to_index(what)
  what.to_i - 1
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, thing)
  board[index] = thing
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  if (valid_move?(board, index))
    move(board, index,"X")
    display_board(board)
  else
    turn(board)
  end
end
