# 2535. Difference Between Element Sum and Digit Sum of an Array
# You are given a positive integer array nums.

# The element sum is the sum of all the elements in nums.
# The digit sum is the sum of all the digits (not necessarily distinct) that appear in nums.
# Return the absolute difference between the element sum and digit sum of nums.

# Note that the absolute difference between two integers x and y is defined as |x - y|.
# https://leetcode.com/problems/difference-between-element-sum-and-digit-sum-of-an-array/

class ElementSumorDigit
  # Memory 212 MB # 122 ms

  def self.difference_of_sum(nums)
    numbers = []
    #sum = array total; add each element of the array to each other
      # elements = nums.sum
  
      #digitsum = seperate ever number in the array into individual elements, then add the elements to each other
    nums.each { |n| numbers << n.digits.reverse }
    # element_sum= numbers.flatten.sum
    
    # diff = #sum - #digit
    difference = nums.sum - numbers.flatten.sum
  end
end

test1 =  ElementSumorDigit.difference_of_sum([1,15,6,3])
test2 =  ElementSumorDigit.difference_of_sum([1,2,3,4])
test3 =  ElementSumorDigit.difference_of_sum([10,55,69,03]) 

require 'pry';binding.pry