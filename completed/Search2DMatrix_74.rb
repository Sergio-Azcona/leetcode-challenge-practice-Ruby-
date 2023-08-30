# https://leetcode.com/problems/search-a-2d-matrix/
# You are given an m x n integer matrix matrix with the following two properties:
#   Each row is sorted in non-decreasing order.
#   The first integer of each row is greater than the last integer of the previous row.
#   Given an integer target, return true if target is in matrix or false otherwise.
# You must write a solution in O(log(m * n)) time complexity.

  # m == matrix.length
  # n == matrix[i].length
  # 1 <= m, n <= 100
  # -10^4 <= matrix[i][j], target <= 10^4

  def search_matrix(matrix, target) #fast and memory saving
    # Runtime 42ms Beats 99.59% / Runtime 62ms Beats 71.90%
    # Memory 211.09MB Beats 74.79%

    # acces the first and last elements in a sub array and compare it to target. 
    # if target wihtin range, explore subarray
      # if target not in range, move to next sub
      # l <= target && right is >= target  
        
      for set in matrix
        if set[0] <= target &&  target <= set[-1]
          return find_target(set, target)
        else 
          next
        end
      end
      return false 
  end

  def find_target(set, target)
    left = 0
    right = set.length - 1
    while left <= right
      mid = ((right + left)/2).nil? ? (right + left)/2 : left + 1

      if set[mid] == target
        return true
      elsif set[mid] < target
        left = mid + 1
      elsif target < set[mid]
        right = mid - 1
        set.slice!(mid...)
      end
    end
    return false
  end



  # t1 = search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3) # true
  # t2 = search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13) # false
  t3 = search_matrix([[1,3,5,7,10,11],[12,13,14,15,16,20],[23,30,34,60,61,70]], 16) # true
  # t1 = search_matrix(
  # t1 = search_matrix(
  require 'pry';binding.pry