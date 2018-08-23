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
  if index.between?(0, 8)
    return true
  else
    return false
  end 
end 

def valid_move?(board, index)
  if !position_taken?(board, index) && on_board?(index)
    return true
  else
    return false
  end 
end 

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end 
end 

def turn_count(board)
  turns = 0 
  
  board.each do |space|
    if space == "X" || space == "O"
      turns += 1
    end 
  end 
  
  return turns
end 

def current_player(board)
  turns = turn_count(board)
  
  if turns % 2 == 0 
    player = "X" 
  else 
    player = "O" 
  end 
  
  return player 
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
  
  def won?(board)
    WIN_COMBINATIONS.each { |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" &&
      position_2 == "X" &&
      position_3 == "X"
      
      return win_combination
      
    elsif position_1 == "O" &&
    position_2 == "O" &&
    position_3 == "O"
    
    return win_combination
    
    
  end 
  
  
  