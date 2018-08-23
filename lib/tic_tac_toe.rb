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

def valid_move?(board, index)
  
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    elsif board[index] == "X" || board[index] == "O"
      return true
    end 
  end 
  
  def on_board?(index)
    if index.between?(0, 8) == true  
      return true 
    else 
      return false 
    end 
  end 
  
  if position_taken?(board, index) == false && on_board?(index) == true 
    return true 
  else
    return false 
  end 
end

def move(board, index, character = "X")
  board[index] = character
  return board
end 

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  
  if valid_move?(board, index) == true 
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

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
