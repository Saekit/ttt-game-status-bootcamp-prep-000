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

def won?(board) 

  WIN_COMBINATIONS.detect do |win_combos|
    win_index_1 = win_combos[0]
    win_index_2 = win_combos[1]
    win_index_3 = win_combos[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combos
  
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combos
      
    else
      return false
    end
  end
  WIN_COMBINATIONS.detect do |win_combos|
    win_index_4 = win_combos[3]
    win_index_5 = win_combos[4]
    win_index_6 = win_combos[5]
    
    position_4 = board[win_index_4]
    position_5 = board[win_index_5]
    position_6 = board[win_index_6]
    
    if position_4 == "X" && position_5 == "X" && position_6 == "X"
      return win_combos
  
    elsif position_4 == "O" && position_2 == "O" && position_3 == "O"
      return win_combos
      
    else
      return false
    end
  end
    
  
  
end
















