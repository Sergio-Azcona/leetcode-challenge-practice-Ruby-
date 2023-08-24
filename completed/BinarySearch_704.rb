# https://leetcode.com/problems/binary-search/
# Binary Search
# Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. 
# If target exists, then return its index. Otherwise, return -1.

# You must write an algorithm with O(log n) runtime complexity.

# Constraints:
# 1 <= nums.length <= 104
# -10^4 < nums[i], target < 10^4
# All the integers in nums are unique. # nums is sorted in ascending order.

def search(nums, target) #fast but high on memory 
  # Runtime 70ms Beats 85.71%
  # Memory 214.30MB Beats 9.68%

  # establish L & R pointers # [L,1,2,3,R]
  # establish a midway pointer ((R+L)/2); L || R become the midway +/- 1 to narrow the elements we inspect

  return 0 if nums.length == 1 && nums[0] == target

  left = 0
  right = nums.length - 1 

  while left <= right
    mid_way = (right + left)/2

    if nums[mid_way] == target
      return mid_way
    elsif nums[mid_way] > target
      right = mid_way - 1
      nums.slice!(mid_way...) #removed irrelevant elements from array
    elsif nums[mid_way] < target
      left = mid_way + 1
    end
  end
  return -1
end

t1 = search([-1,0,3,5,9,12],9)
t2 = search([-1,0,3,5,9,12],2)
t3 = search([11], 11) 
t4 = search([2,5], 5)  

require 'pry';binding.pry