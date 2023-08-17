# https://leetcode.com/problems/3sum/
# 15. 3Sum
# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] 
# such that i != j, i != k, and j != k, 
# and nums[i] + nums[j] + nums[k] == 0.

# Notice that the solution set must not contain duplicate triplets.



class ThreeSumClass
  # def self.three_sum(nums)
  #   sorted_nums = nums.sort
  #   collector = Array.new

  #   return nums if nums.length == 3 && nums.sum == 0
    
    # sorted_nums.each_with_index do |number, index|
    #   unless sorted_nums[index + 1].nil?
    #     for i in sorted_nums[1..] do 
    #       # require 'pry';binding.pry
    #       # if i != number && i != sorted_nums[index + 1] 
    #         if number + sorted_nums[index + 1] + i == 0
    #             unless collector.include?(([number, sorted_nums[index + 1], i]).sort)
    #               collector << ([number, sorted_nums[index + 1], i]).sort
    #             end
    #           end
    #         end
    #       # end
    #     end
    #   end
    #   collector
    # end

    def self.three_sum(nums) # slow and memory heavy
      # Runtime 1224ms Beats 26.81%
      # Memory 214.42mb Beats 38.30%

      return [nums] if nums.length == 3 && nums.sum == 0
      nums.sort!
      collector = Array.new

      nums[0..-3].each_with_index do |number, index|
        lindex = index + 1
        rindex = nums.length - 1

        while lindex < rindex 
          collection_sum = number + nums[lindex] + nums[rindex]

          if collection_sum == 0
            collector << ([number, nums[lindex], nums[rindex]])

            while lindex < rindex && nums[rindex] == nums[rindex - 1]
              rindex -= 1 
            end
            
            while lindex < rindex && nums[lindex] == nums[lindex + 1]
              lindex += 1 
            end
            lindex += 1
            rindex -= 1
          elsif collection_sum < 0
            lindex += 1
          elsif collection_sum > 0  
            rindex -= 1 
          end
        end 
      end
        collector.uniq
    end
end

t1 = ThreeSumClass.three_sum([-1,0,1,2,-1,- 4]) #[[-1,-1,2],[-1,0,1]]
t2 = ThreeSumClass.three_sum([0,1,1]) # []
t3 = ThreeSumClass.three_sum([0,0,0]) # [0,0,0]
t4 = ThreeSumClass.three_sum([5,-6,11,1,0,-21,7]) # [-6,1,5]
t5 = ThreeSumClass.three_sum([50,-16,101,-51,0,-21,7,1]) # [-51,1,50]
t6 = ThreeSumClass.three_sum([0,0,0,0]) #[[0,0,0]]
t7 = ThreeSumClass.three_sum([3,5,3,1,0,-6,-1]) # [[-6,5,1], [-1,0,1], [-6,3,3]]
t8 = ThreeSumClass.three_sum([3,4,3,-6,-1]) # [-6,3,3]]
require 'pry';binding.pry