# In this challenge you are given an array of unique integers. 
# Your job is to return all the possible combinations of unique pairs (2 integers only). 
# No duplicate pairs are allowed.





class Subset
  #assuming:
            # input will be sorted
          
  def self.find_combo(input)
    # input.combination(2).to_a #ruby method
    


    combo = []

    #base 
    if input.length == 0
      return input
    elsif
      input.length > 0 && combo.empty?
      combo << [input[0], input[1]]
    end
    
    #recursive case
    combo.last[-1] == input[-1]
      input.each_with_index do |n, i|
        input.map do |n2|
          unless combo.last[-1] == input[-1]
            combo << [n, n2]            
          else
            input.shift
            # combo
            # find_combo(input)
        end
        
        require 'pry';binding.pry
      end
    # end
  end






# if input[0] != input[1]
  #   until combo.last[-1] == input[-1]
  #   combo << [input[0], input[1]]
  #   end



    # input.each_with_index do |n,i|
    #     input.each_with_index do |n2,i2|
    #       if combo.empty? && input.length >= 1
    #         # if i != i2 
    #           combo << [n, n2] if i != i2 
    #           # combo << n2 
    #           # combo_check(input, combo)
    #         # end
    #       # else
    #       #   unless combo.last[-1] == input[-1]
    #       #     input.shift
          
    #       elsif 
    #         !combo.empty?  && input.length >= 1
    #           unless combo.last[-1] == input[-1]
    #             combo << [n, n2] if i != i2 
    #           # require 'pry';binding.pry
    #           else
    #             input.shift
    #             find_combo(input)
    #           end
    #         end
    #       # elsif 
    #         # combo.empty? 
    #         # until combo.last[-1] == input[-1]
    #         #   if i != i2 
    #         #     combo << [n, n2] 
    #         #   else
    #         #   input.shift
    #         #   end
    #         # end
    #       # else
    #       #   input.length == 0
    #       #   []
    #       # end
    #     end
    #     require 'pry';binding.pry
    #   end


    # #     end
    # #   end
    # #   # require 'pry';binding.pry
  
    # # # else
    # # #   input.each_with_index do |n,i|
    # # #     input.each_with_index do |n2,i2|
    # # #       if i != i2 
    # # #         combo << [n, n2]
    # # #         # combo << n2 
    # #       end
    # #     end
    # #   end
    # # end
  end

  def self.combo_check(input, combo)
    if combo.last[-1] == input[-1]
      return  input.shift
    else
      return input
    end
  end


end



t1 = Subset.find_combo([1, 2, 3, 4]) # [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
# t2 = Subset.find_combo([54, 77]) # [[54, 77]]
# t3 = Subset.find_combo([]) # []

require 'pry';binding.pry