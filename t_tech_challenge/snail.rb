# Given an n x n array, write a method that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.
# A good way to visualize this is to picture the spiral shell of a snail!


class Snail
  def self.shell(nums)

    spiral = Array.new

    #returng the first array in order [0][0]
    nums[0].each do |n|
        spiral.push(n) # spiral.length == nums[0].length 
        # require 'pry';binding.pry
    end

    spiral.push(nums[1][-1])
    # require 'pry';binding.pry
    
    nums[-1].reverse.each do |n|
     
      spiral.push(n) 
    end

    nums[1].each_with_index do |n, i|
      # require 'pry';binding.pry
      spiral.push(n) unless spiral.include?(n) #until length - 1

    end
    #pop  elements of array 2 and 3 .. [-1]
    #pop elements of last array in decending order .. [0][-1]
    #shift elements arrays the second array / remaining elements .. [0]
    return spiral
    # end
  end
end

t1 = Snail.shell([[1, 2, 3],[4, 5, 6],[7, 8, 9]]) #[1, 2, 3, 6, 9, 8, 7, 4, 5]
t2 = Snail.shell([[9, 8, 7], [6, 5, 4],[3, 2, 1]]) #[9, 8, 7, 4, 1, 2, 3, 6, 5]
require 'pry';binding.pry
# [1, 2, 3],
# # 0, 1, 2
# [4, 5, 6],
# #-2,-1,-6
# [7, 8, 9]
#-3,-4,-5

#all arrays are of equal legnth 
#array elemtns are integers? ##idk if it matters