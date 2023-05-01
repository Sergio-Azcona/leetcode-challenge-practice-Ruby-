# Given an array nums containing n distinct numbers in the range [0, n], 
# return the only number in the range that is missing from the array.
# https://leetcode.com/problems/missing-number/

class FindNum
  # Runtime 1373 ms (Beats 5% ); Memory 213 MB (Beats 45%)
  def self.missing_number(nums)
    #sort nums
   nums.sort!
 
    require 'pry';binding.pry
    #account for 0 not being in the array
    unless nums.first == 0
      return 0
    else
      #does nums[0] == nums[0].next
      # if not, return nums.next
      nums.map { |n| return n.next unless nums.include?(n.next) }
    end  
  end
end

test1 = FindNum.missing_number([3,0,1])
test2 = FindNum.missing_number([0,1])
test3 = FindNum.missing_number([9,6,4,2,3,5,7,0,1])
test4 = FindNum.missing_number([6,4,2,3,5,1])

require 'pry';binding.pry