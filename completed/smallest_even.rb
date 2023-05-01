# Given a positive integer n, return the smallest positive integer that is a multiple of both 2 and n.
# https://leetcode.com/problems/smallest-even-multiple/


class SmallestEven
  def self.smallest_even_multiple(n)
    # Runtime 68 ms (75%)
    # Memory 211 MB (91.67%)
    require 'pry';binding.pry
   unless n.even?
    return n*2
  else
    return n
   end
  end
end

test1 = SmallestEven.smallest_even_multiple(5)
# test2 = SmallestEven.smallest_even_multiple(6)
# test3 = SmallestEven.smallest_even_multiple(100)
# require 'pry';binding.pry