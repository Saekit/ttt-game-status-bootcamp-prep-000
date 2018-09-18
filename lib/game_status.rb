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
  #return false/nil if there is no win combination present in the board
  #return the winning combination indexes as an array if there is a win
  
  board.each do |space|
    if space == "" || space == " "
      return false
    end
    if (space == "X" || space == "O") do
      WIN_COMBINATIONS.each do |combo|
        combo.each do |index|
          board[index] == combo[index]
          return false
        end
      end
    end
  
  
  
  if WIN_COMBINATIONS[0].all? do |i|
      board[i] == "X" || board[i] == "O"
      return WIN_COMBINATIONS[0]
    end
  end
  
  if WIN_COMBINATIONS[1].all? do |i|
      i == "X" || i == "O"
      return WIN_COMBINATIONS[1]
    end
  end  
  
  if WIN_COMBINATIONS[2].all? do |i|
      i == "X" || i == "O"
      return WIN_COMBINATIONS[2]
    end
  end
  
  if WIN_COMBINATIONS[3].all? do |i|
      i == "X" || i == "O"
      return WIN_COMBINATIONS[3]
    end
  end  
  
  if WIN_COMBINATIONS[4].all? do |i|
      i == "X" || i == "O"
      return WIN_COMBINATIONS[4]
    end
  end  
  
  if WIN_COMBINATIONS[5].all? do |i|
      i == "X" || i == "O"
      return WIN_COMBINATIONS[5]
    end
  end
  
  if WIN_COMBINATIONS[6].all? do |i|
      i == "X" || i == "O"
      return WIN_COMBINATIONS[6]
    end
  end
  
  if WIN_COMBINATIONS[7].all? do |i|
      i == "X" || i == "O"
      return WIN_COMBINATIONS[7]
    end
  end
  
  if WIN_COMBINATIONS[8].all? do |i|
      i == "X" || i == "O"
      return WIN_COMBINATIONS[8]
    end
  end  

end
















