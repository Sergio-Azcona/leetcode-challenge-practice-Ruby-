
# Lacey's tech challenge Question Two:
# Given an array of positive integers nums , you start at the first index. 
# Each element in the array represents the maximum length you can move forward by (e.g. if current element is 3, you can move forward by either 1,2, or 3).
# Determine the maximum number of moves you need to exit the array. You may assume that the array will never be empty.

# Example 1:
#  nums = [1,2,5,2,1,1]
# output: 3
# explanation: move 1: Index 0 -> Index 1
#                       move2: Index 1-> Index 2
#                       move 3: Index 2 -> Exit
# Example 2:
# nums = [4,2,1,5,1,2]
# output : 2
# Explain: move 1: Index 0 -> Index 3
#               move 2: Index 3 -> Exit

# https://www.interviewbit.com/blog/minimum-number-of-jumps/
# find maximum or next value that is the maximum value

class MaxMovesToExit
  def self.move_count(data)
    num_hash = Hash.new

    data.each_with_index do |n, i|
      num_hash[i] = n
    end

    # require 'pry';binding.pry

  end
end

t1 = MaxMovesToExit.move_count([1,2,5,2,1,1]) #3
t2 = MaxMovesToExit.move_count([4,2,1,5,1,2]) #2