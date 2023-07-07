# <!-- https://leetcode.com/problems/contains-duplicate-ii/ -->
# <!-- 219. Contains Duplicate II -->
# Given an integer array nums and an integer k, 
# return true if there are two distinct indices i and j in the array such that
# nums[i] == nums[j] and abs(i - j) <= k.

class ContainsDuplicateII
  def self.contains_nearby_duplicate(nums, k)

    num_hash = Hash.new([])
    
    # if number appears multiple times in nums
    # { numbers  => [indexes] }
    nums.each_with_index do |number, index|
      if nums.count(number) > 1 
        num_hash[number] += [index]
      end
    end

    #subtract the index position # from each other = result
    #is the result <= k
    num_hash.values.each do |indexes|
     return (indexes[-1] - indexes[-2]) <= k
    end    
  end
end

t1 = ContainsDuplicateII.contains_nearby_duplicate([1,2,3,1], 3) #true
t2 = ContainsDuplicateII.contains_nearby_duplicate([1,0,1,1], 1) #true 
t3 = ContainsDuplicateII.contains_nearby_duplicate([1,2,3,1,2,3], 2) #false
# t4 = ContainsDuplicateII.contains_nearby_duplicate(
require 'pry';binding.pry