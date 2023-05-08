# https://leetcode.com/problems/number-of-digit-one/

# Given an integer n, count the total number of digit 1 appearing in all non-negative integers less than or equal to n.

 class DigitOne
  # def self.num_appearing(n)
  #   found_ones = Hash.new(0) 
  #   # require 'pry';binding.pry
 

  #     number = n - 1  if n.positive? 

  #     #until n-1 until 
  #     # unless number
  #     if number.include?(1)
  #         number.digits.select do |num|
  #           require 'pry';binding.pry
  #           num = n.digits.sort 
  #           found_ones[1] += 1 if num == 1
  #         end
  #         return found_ones
  #       end
  #     end
  #   end 
  #   return 0

  # end

  def self.num_appearing(n) #
  #   # find number 1 in all nums <= n
  #   # only consider positive n
    
  #   return 0 if n < 1
    
    ones = 0
    num = 0
  #   # n - 1 = new_number (until n = 1)

    while num < n
      new_num =  num + 1 
      x = new_num.digits
      ones += x.count(1)
      num = new_num 
    end
    ones 
  #   # require 'pry';binding.pry

    
  #   # break up ever number into individual elements ## ..12 -> [1,2], 13 -> [1,3]...n
  #   # ones = []
  #   # n_string = all_num.to_s
  #   # n_string.chars.each do |number|
  #   #   ones.push(number) if number == "1"
  #   # end
  #   # ones.count
  #   # require 'pry';binding.pry
  
  end

end  

 t1 = DigitOne.num_appearing(13)  #6 = # 1, 10, 11, 12, 13 
 t2 = DigitOne.num_appearing(0) #0
 t3 = DigitOne.num_appearing(212) #145
#  t4 = DigitOne.num_appearing(7011510) # 2510928
#  t5 = DigitOne.num_appearing(-7011510) #0
 t6 = DigitOne.num_appearing(824883294) #295064856

 require 'pry';binding.pry