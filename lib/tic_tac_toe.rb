def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end 

def move(board, index, character)
  board[index] = character
end 

def position_taken?(board, index)
  !(board[index].nil || board[index] = " ")
end 

def on_board?(index)
  

def valid_move?(board, index)
  if position_taken?(board, index) && index.between?(0, 8)
    return false
  else
    return true
  end 

WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row 
  [6, 7, 8], #Bottom row
  [0, 3, 6], #Left column
  [1, 4, 7], #Middle column 
  [2, 5, 8], #Right column
  [0, 4, 8], #Top left to bottom right
  [2, 4, 6]  #Bottom left to top right
  ]