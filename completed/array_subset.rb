#return two elements from input that sum up 

# in an array of integers, divide the array into 2 subsets A and B where:
# -the interaction of A and B is null
# -union of A and B == original array
# - the number of elements in subset A is minimal
# - the sum of A elements is greater than the sum of B elements. 
# if more than one subset of A exists, return the one wiht the maximum sum.

def subset(input_array)
  # require 'pry';binding.pry
  return input_array.sort! if input_array.length < 3

  input_array.sort!.reverse!
  
  set_a = [] 
  set_a << input_array[1]
  set_a << input_array[0]
  input_array.shift(2)
  
  while set_a.sum <= input_array.sum
    set_a.unshift(input_array[0])
    input_array.shift
  end
  return set_a
end



t1 = subset([3,7,5,6,2]) # [6,7] 
t2 = subset([5,3,2,4,1,2]) #[4,5]
t3 = subset([4,2,5,1,6]) #[5,6]
t4 = subset([5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]) #[5,6]
t5 = subset([5,8,0,6,55,41,57,8,99,3,6,5,7,18,33,65,9,1,2,27]) #[57, 65, 99]
t6 = subset([2,3,4,4,5,9,7,8,6,10,4,5,10,10,8,4,6,4,10,1])
require 'pry';binding.pry