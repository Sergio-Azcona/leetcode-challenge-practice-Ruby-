# 217. Contains Duplicate
#   Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
#   https://leetcode.com/problems/contains-duplicate/description/
  
  
class ContainsDuplicate
  # def self.duplicates?(nums) #slow but memory efficient
    # sort nums then iterate comparing instance to next index element
    # Runtime 184 ms Beats 7.54%
    # Memory 222.3 MB Beats 94.9%
  #   ordered = nums.sort     
  
  #   ordered.each_with_index do |n, i|
  #     return true if n == ordered[i.next]
  #   end
  #   return false
  # # end

  # def self.duplicates?(nums) # efficient 
    # hash; iterate through nums; see if hash INCLUDE? instance 
    # Runtime 141 ms Beats 66.39%
    # Memory 224.6 MB Beats 54.58%
  #   nums_hash = Hash.new
  #   nums.each do |n|
  #     # require 'pry';binding.pry
  #     unless nums_hash.include?(n)
  #       nums_hash[n] = true 
  #     else
  #       return true
  #     end
  #   end
  #   return false
  # end

  # def self.duplicates?(nums) #more efficient  (1st)
  #   ## hash; iterate through nums; see if hash HASH KEY of instance 
  #   ## Runtime 114 ms Beats 99.19%
  #   ## Memory 224.7 MB Beats 41.14%
  #   # Tim complexity: O(n); Space complexity: O(n)
  #   nums_hash = Hash.new
  #   nums.each do |n|
  #     # require 'pry';binding.pry
  #     unless nums_hash.has_key?(n)
  #       nums_hash[n] = true 
  #     else
  #       return true
  #     end
  #   end
  #   return false
  # end
  
  # def self.duplicates?(nums) #more efficient (2nd)
  #   #count the number of elements in the num and compare it to the count of nums uniq
    # Runtime 131 ms Beats 86.97%
    # Memory 222.9 MB Beats 76.99%
    # if nums.uniq.count == nums.count
    #   return false
    # else
    #   return true
    # end
  # end

  def self.duplicates?(nums) 
    collection_hash = Hash.new(0)
    nums.each do |number|
      if collection_hash.has_key?(number)
        return true
      else      
      collection_hash[number] += 1
      end
    end
    return false
  end

end

t1 = ContainsDuplicate.duplicates?([0]) #false
t2 = ContainsDuplicate.duplicates?([100,77,21,3,4,24,5,7]) #false
t3 = ContainsDuplicate.duplicates?([54321,321,21,1,2]) #false
t4 = ContainsDuplicate.duplicates?([1,2,3,1]) #true
t5 = ContainsDuplicate.duplicates?([1,1,1,3,3,4,3,2,4,2]) #true
t6 = ContainsDuplicate.duplicates?([54,7,22,5,1,2,13,11,17]) #false
require 'pry';binding.pry