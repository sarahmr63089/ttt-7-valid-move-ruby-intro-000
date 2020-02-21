# code your #valid_move? method here
def valid_move?(board, index)
    if  position_taken?(board, index)
        return true
    elsif index.between?(0, 8) #both of these need to be true but how? && didn't work?
      return true
    elsif not position_taken?(board, index) #can't get this to work
      return false
    elsif board[index] == "X" || "O" #also this isn't it?
      return false
    else index > 8
      return false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
        return false
    else
        return true
    end
end

# if position is on board and empty (position taken false) return true
# if position is not on board, return false -- use range for index
# if position is taken (position take return true) return false
