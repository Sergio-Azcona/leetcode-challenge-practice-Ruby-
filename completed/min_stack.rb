# https://leetcode.com/problems/min-stack/
# 155. Min Stack
# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# Implement the MinStack class:

# MinStack() initializes the stack object.
# void push(int val) pushes the element val onto the stack.
# void pop() removes the element on the top of the stack.
# int top() gets the top element of the stack.
# int getMin() retrieves the minimum element in the stack.
# You must implement a solution with O(1) time complexity for each function.

class MinStack
  def initialize()
    # Runtime 120 ms Beats 28.95%
    # Memory 213.6 MB Beats 71.5%

    @stack = Array.new    
    @min_stack = Array.new
  end

  def push(val)
    @stack.push(val)

    if @min_stack.empty?
      @min_stack.push(val)
    else 
      if @min_stack[-1][-1] >= val[-1]
        @min_stack.push(val)
      end
    end
  end

  def pop
    if @stack[-1] == @min_stack[-1]
      @min_stack.pop
    end
    @stack.pop
  end

def top()
    @stack[-1]
  end

  def get_min()
    @min_stack[-1]
  end
end




# ["MinStack","push","push","push","getMin","pop","top","getMin"]
# [[],[-2],[0],[-3],[],[],[],[]])
# obj = MinStack.new()
# obj.push([-2])
# obj.push([0])
# obj.push([-3])
# param_1 = obj.get_min()
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()

obj_2 = MinStack.new()
obj_2.push([0])
obj_2.push([1])
obj_2.push([0])
param_5 = obj_2.get_min()
param_6 = obj_2.pop()
param_7 = obj_2.get_min()

# require 'pry';binding.pry