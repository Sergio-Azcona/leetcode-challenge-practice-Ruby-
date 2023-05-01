# Given an integer array nums, 
# return true if any value appears at least twice in the array, 
# and return false if every element is distinct.

# Input: nums = [1,1,1,3,3,4,3,2,4,2]
# Output: true

# Input: nums = [2,14,18,22,22]
# Output: true

class ContainsDuplicates
  def self.contains_duplicate(nums)
      s = nums.sort  # runtime: 96-140 ms
      
      s.each_with_index do |num, index|
        if index.next != nil #check that the next element position exists
          if num == s[index.next] #if the current number is == to the num in the next element
            return true
          # else #don't need else false in block bc we just care about true at this point
          #  false 
          end
        end 
        false #MUST return false if all conditions above are false; otherwise, method will return the array
      end
  end
end



test1 = ContainsDuplicates.contains_duplicate([1,1,1,3,3,4,3,2,4,2])
test2 = ContainsDuplicates.contains_duplicate([2,14,18,22,22])
test3 = ContainsDuplicates.contains_duplicate([1,8,5,3,0,4,3,7,4,2])
require 'pry';binding.pry