# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
# 167. Two Sum II - Input Array Is Sorted
# Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. 
# Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 < numbers.length.
# Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.
# The tests are generated such that there is exactly one solution. You may not use the same element twice.
# Your solution must use only constant extra space.
#do not use a hash



class TwoSumII
  def self.two_sum(numbers, target)
    # Runtime 97 ms Beats 51.43%
    # Memory 212.1 MB Beats 41.43%

    li = 0
    rindex = -1
    
    loop do 
      if numbers[rindex] + numbers[li] == target
        return [(li+1),(numbers.count + (rindex+1))]
      elsif 
        target > numbers[rindex] + numbers[li]
        li += 1
      elsif
        target < numbers[rindex] + numbers[li]
        rindex -= 1
      end
    end
  end
end

t1 = TwoSumII.two_sum([2,7,11,15,20],9) #1,2
t2 = TwoSumII.two_sum([2,3,4],6) #1,3
t3 = TwoSumII.two_sum([-1,0],-1) #1,2
t4 = TwoSumII.two_sum([0,1,5], 5) # 1,3
# t5 = TwoSumII.two_sum([1,10,7,6,77,50,0,5,1,90,60], 57) # 3,6
require 'pry';binding.pry