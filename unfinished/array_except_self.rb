# https://leetcode.com/problems/product-of-array-except-self/

# 238. Product of Array Except Self
# Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
# You must write an algorithm that runs in O(n) time and without using the division operation.

class ArrayExceptSelf
  def self.product_except_self(nums) #passes but times out in leetcode
    
    # unless nums.
    # # require 'pry';binding.pry
    # product_array = Array.new
    # nums.length.times do
    #   num = nums.shift
    #   product_array.push(nums.inject(:*))
    #   nums.push(num)
    # end
    # product_array


  # def self.product_except_self(nums)
  #   product_array = Hash.new
      
  #   nums.length.times do |i|
  #     # require 'pry';binding.pry
  #     num = nums.shift
  #     product_array[i] = nums.inject(:*)
  #     nums.push(num)
  #   end
  #   product_array.values
  # end
end

# t1 = ArrayExceptSelf.product_except_self([1,2,3,4]) #  [24,12,8,6]
t2 = ArrayExceptSelf.product_except_self([-1,1,0,-3,3]) #[0,0,9,0,0]
# t3 = ArrayExceptSelf.product_except_self([0,0]) # [0,0]
# t1 = ArrayExceptSelf.product_except_self()

require 'pry';binding.pry