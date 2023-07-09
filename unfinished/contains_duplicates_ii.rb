# <!-- https://leetcode.com/problems/contains-duplicate-ii/ -->
# <!-- 219. Contains Duplicate II -->
# Given an integer array nums and an integer k, 
# return true if there are two distinct indices i and j in the array such that
# nums[i] == nums[j] and abs(i - j) <= k.

class ContainsDuplicateII
  def self.contains_nearby_duplicate(nums, k)
    # require 'pry';binding.pry
    # return false if nums.length < 2

    num_hash = Hash.new { |h, k| h[k] = [] }
    # index_sum = Array.new
    
    # if number appears multiple times in nums
    # { numbers  => [indexes] }
    nums.each_with_index do |number, index|
      if num_hash.key?(number)
        # require 'pry';binding.pry
        if index - num_hash[number].last <= k 
          return true
        else
          num_hash[number] += [index]
        end
      else
        num_hash[number] += [index]
      end
    end
  
    return false

    #subtract the index position # from each other = result
    #is the result <= k
    
    # index_values = num_hash.values.flatten

    # # if index_values.any?
    # index_values.each_with_index do |n, index| 
    #   require 'pry';binding.pry
    #   index_sum << (n - index_values[index + 1]).abs until index_values[index + 1].nil? == true
    # end
    # else
      # return false
    # end
  end
end

# t1 = ContainsDuplicateII.contains_nearby_duplicate([1,2,3,1], 3) #true
# t2 = ContainsDuplicateII.contains_nearby_duplicate([1,0,1,1], 1) #true 
# t3 = ContainsDuplicateII.contains_nearby_duplicate([1,2,3,1,2,3], 2) #false
# t4 = ContainsDuplicateII.contains_nearby_duplicate([1], 1)  #false
# t5 = ContainsDuplicateII.contains_nearby_duplicate([-1,-1], 1) #true
# t6 = ContainsDuplicateII.contains_nearby_duplicate([1,2], 2) #false
t7 = ContainsDuplicateII.contains_nearby_duplicate([0,1,2,3,4,0,0,7,8,9,10,11,12,0], 1) #true
require 'pry';binding.pry