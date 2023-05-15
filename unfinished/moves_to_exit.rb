# Question One:
# Given an array of positive integers nums , you start at the first index. 
# Each element in the array represents the length you move forward by. Determine the number of moves you need to exit the array. 
# you may assume that the array will never be empty

# Example 1:
# nums = [3,1,1,4,3]
# output: 2
# explanation: move1 > Index0 -> Index3
                      # move2  > Index 3 -> Exit

# Example 2:
# nums = [1,2,5,2,1,1]
# output: 4
# explanation: move 1: Index 0 -> Index 1
#                       move 2: Index 1 -> Index 3
#                       move 3: Index 3 -> Index 5
#                       move 4: Index 5 -> Exit (edited)                      

class MovesToExit
  # def self.num_moves(data)
  #   #find legth of data
  #   size =  data.count
    
  #   move_collector = Array.new
  #   move_hash = Hash.new(0)

  #   data.each_with_index do |e, i|
  #   #   require 'pry';binding.pry
  #     # unless move_collector.sum >= size
  #     #   if i == 0
  #     #     move_collector << e 

  #     #   # if move_collector.include?()
  #       move_collector << data[i+e] 
  #     # end
  #   # end
    
  #   data.each_with_index do |e, i|
  #     move_hash[i] = e
  #   end

  #   move_hash.each do |k, v|
  #     require 'pry';binding.pry
            
  #     move_collector << e   if i == 0
  #     unless move_collector.sum >= size
  #       move_collector << k + move_hash[v]
  #     end
  #   end


  # end

  def self.num_moves(data)
    index = 0
    count = 0
    # num = 0
    data_length = data.length

    while data_length > index 
      count += 1 
      index += data[index] #current index plus the value in data[index]
    end
      count
  

  end
end

t1 = MovesToExit.num_moves([3,1,1,4,3]) #2
t2 = MovesToExit.num_moves([2,0,1,2,0]) #3
t3 = MovesToExit.num_moves([1,2,5,2,1,1]) #4

