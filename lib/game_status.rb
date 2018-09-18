# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # row1
  [3,4,5],  # row2
  [6,7,8],  # row3
  [0,3,6],  # column1
  [1,4,7],  # column2
  [2,5,8],  # column3
  [0,4,8],  # diag left to right
  [2,4,6]   # diag right to left
]

# def won?(board) 

#   WIN_COMBINATIONS.detect do |win_combos|
#     win_index_1 = win_combos[0]
#     win_index_2 = win_combos[1]
#     win_index_3 = win_combos[2]
    
#     position_1 = board[win_index_1]
#     position_2 = board[win_index_2]
#     position_3 = board[win_index_3]
    
#     if position_1 == "X" && position_2 == "X" && position_3 == "X"
#       return win_combos
  
#     elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
#       return win_combos
      
#     else
#       return false
#     end
#   end
# end

# def won?
#   WIN_COMBINATIONS.detect do |combo|
#     position(combo[0]) == position(combo[1]) &&
#     position(combo[1]) == position(combo[2]) &&
#     position_taken?(combo[0])
#   end
# end

def won?(board) WIN_COMBINATIONS.each do |wincombo| 
  if (board[wincombo[0]]) == "X" && (board[wincombo[1]]) == "X" && (board[wincombo[2]]) == "X" return wincombo elsif (board[wincombo[0]]) == "O" && (board[wincombo[1]]) == "O" && (board[wincombo[2]]) == "O" 
    return wincombo end end false end



def full?(board)
  if board.detect {|i| i == " " || i == nil}
    return false
  else
    return true
  end
end


def draw?(board)
  # returns true if the board has not been won but is full, 
  # false if the board is not won and the board is not full,
  # false if the board is won
  
  if won?(board) == false && full?(board) == true
    return true
  end
  if won?(board) == false && full?(board) == false
    return false
  end
  if won?(board) == true
    return false
  end
end


def over?(board)
  if full?(board) || draw?(board)
    return true
  else
    return false
  end
end


def winner(board)
 if win_combos == won?(board)
   board[win_combos.first]
 end
end




