# 36. Valid Sudoku
# Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

# Each row must contain the digits 1-9 without repetition.
# Each column must contain the digits 1-9 without repetition.
# Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
# Note:

# A Sudoku board (partially filled) could be valid but is not necessarily solvable.
# Only the filled cells need to be validated according to the mentioned rules.
# https://leetcode.com/problems/valid-sudoku/



class ValidSudoku
  def self.is_valid_sudoku(board) #not finished

    # only evalute cell with nums
    # no nums can repeate in a row
    # no nums can repeate in a column
    # no nums can repeate in a sub boxes (3x3)
    count = 0
    row_hash = Hash.new
    elements_hash = Hash.new(Array.new)
    # evaluate a full row
    board.each_with_index do |row, i|
      row.each_with_index do |e, i2|
        if e == "."
          next
        else
          row_hash[i] = e
          elements_hash[e] = [] << i2
          require 'pry';binding.pry
        end
      end
    end
    # evaluate a full column

    # create the 3x3 sub arrays and evaluate those (concate?)


  end
end

t1 = ValidSudoku.is_valid_sudoku([
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"],
  ]) #true

# t2 = ValidSudoku.is_valid_sudoku([["8","3",".",".","7",".",".",".","."]
#   ,["6",".",".","1","9","5",".",".","."]
#   ,[".","9","8",".",".",".",".","6","."]
#   ,["8",".",".",".","6",".",".",".","3"]
#   ,["4",".",".","8",".","3",".",".","1"]
#   ,["7",".",".",".","2",".",".",".","6"]
#   ,[".","6",".",".",".",".","2","8","."]
#   ,[".",".",".","4","1","9",".",".","5"]
#   ,[".",".",".",".","8",".",".","7","9"]]) #false
# # t3 = ValidSudoku.is_valid_sudoku()
# # t4 = ValidSudoku.is_valid_sudoku()