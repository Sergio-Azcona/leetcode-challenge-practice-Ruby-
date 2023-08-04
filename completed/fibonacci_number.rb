# https://leetcode.com/problems/fibonacci-number/
# 509. Fibonacci Number
# The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, 
# such that each number is the sum of the two preceding ones, starting from 0 and 1. 
# That is,
#   F(0) = 0, F(1) = 1
#   F(n) = F(n - 1) + F(n - 2), for n > 1.
# Given n, calculate F(n).

# F(n) = F(n - 1) + F(n - 2)        , for n > 1.
# F(4) = F(3)      +F(2)#reassign n   = 2 + 1 = 3.


class FibonacciNumber
  # def self.fib(n)
  #   # Runtime 254ms Beats 37.23%
  #   # Memory 210.93mb Beats 79.79%
  #   return n if n <= 1
  #   (fib(n - 1) + fib(n - 2))
  # end

  def self.fib(n)
  #   # Runtime 66ms Beats 96%
  #   # Memory 210.95mb Beats 80%
    return n if n <= 1

    fib_collection = [0,1]
    
    (2..n).each do |number|
      fib_collection[number] = fib_collection[minus_one(number)] + fib_collection[minus_two(number)]
      # define each number in the collection by the calculation
      # calculation: add values found within the array and not the numbers themselves
    end
    fib_collection[n]
  end

  def self.minus_one(number)
    number - 1
  end

  def self.minus_two(number)
    number - 2
  end
end

t1 = FibonacciNumber.fib(2) # 1
t2 = FibonacciNumber.fib(3) # 2
t3 = FibonacciNumber.fib(4) # 3
t4 = FibonacciNumber.fib(1) # 1
t5 = FibonacciNumber.fib(0) # 0
t6 = FibonacciNumber.fib(6) # 8


require 'pry';binding.pry