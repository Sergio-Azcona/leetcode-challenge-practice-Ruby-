# 2395. Find Subarrays With Equal Sum
# Given a 0-indexed integer array nums, determine whether there exist two subarrays of length 2 with equal sum. 
# Note that the two subarrays must begin at different indices.

# Return true if these subarrays exist, and false otherwise.

# A subarray is a contiguous non-empty sequence of elements within an array.
# https://leetcode.com/problems/find-subarrays-with-equal-sum/

class SubarrayEquals
  def self.find_subarrays(nums)

    numbers = Hash.new(0)

    nums.each do |n|
      numbers[n] += 1
    end

    return false if numbers.keys.count <= 1 || numbers.values.uniq <= 1
    

   key_total = numbers.keys.sum

    numbers.each do |num, count|
    require 'pry';binding.pry

    # nums.each_with_index do |k,v|

    end



  end
end

test1 = SubarrayEquals.find_subarrays([4,2,4])
test2 = SubarrayEquals.find_subarrays([1,2,3,4,5])
test3 = SubarrayEquals.find_subarrays([0,0,0])
test4 = SubarrayEquals.find_subarrays([3,3,3])
test5 = SubarrayEquals.find_subarrays([4,1,3])
test6 = SubarrayEquals.find_subarrays([77,95,90,98,8,100,88,96,6,40,86,56,98,96,40,52,30,33,97,72,54,15,33,77,78,8,21,47,99,48])