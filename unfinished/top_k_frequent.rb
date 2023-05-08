# 347. Top K Frequent Elements
# https://leetcode.com/problems/top-k-frequent-elements/

# Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

class TopKFrequent  
  def self.top_k_frequent(nums, k)
    # Runtime 117 ms Beats 18.35%
    # Memory 212 MB Beats 87.97%

    num_hash = Hash.new(0)
    output = Array.new

    nums.each do |n|
      num_hash[n] += 1
    end
  
    sorted_values = num_hash.values.sort.reverse

    k.times do
      # require 'pry';binding.pry

      output << num_hash.key(sorted_values[t])
      num_hash.delete(num_hash.key(sorted_values[t]))
    end
    output
  end

  def  self.top_k_frequent(nums, k)
    # Runtime 147 ms Beats 7.60%
    # Memory 236.7 MB Beats 5.6%

    num_hash = Hash.new(0)
    output = Array.new

    nums.each do |n|
      num_hash[n] += 1
    end

    k.times do
      # require 'pry';binding.pry
      output << num_hash.key(num_hash.values.max)
      num_hash.delete(num_hash.key(num_hash.values.max))
    end
    output
  end
end

t1 = TopKFrequent.top_k_frequent([1,1,1,2,2,3], 2) #[1,2]
t2 = TopKFrequent.top_k_frequent([1], 1) # [1]
t3 = TopKFrequent.top_k_frequent([1,1,1,2,2,33,33,33,101,101,101,101,101,5,6,5,5,4,5], 3) # [1,5,101]
t4 = TopKFrequent.top_k_frequent([1,2], 2) # [1,2]
t5 = TopKFrequent.top_k_frequent([44,44,3,22,44,1,22,44,22], 2) #[44,22]

# require 'pry';binding.pry