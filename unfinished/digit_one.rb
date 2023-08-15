# https://leetcode.com/problems/number-of-digit-one/

# Given an integer n, count the total number of digit 1 appearing in all non-negative integers less than or equal to n.

 class DigitOne
  # def self.num_appearing(n)
  #   # require 'pry';binding.pry
  #   return 0 if n <= 0
  #   counter = 0 #counter keep resetting to 0
  #   if n == 1
  #     return 1
  #   elsif n >= 10

  #     # (10..n).digits.each do |x|
  #       (10..n).each do |num| 
  #         if num.digits.include?(1)
  #           num.digits.each do |one|
  #             # require 'pry';binding.pry
  #               counter += 1 if one == 1
  #           end
  #         end
  #       end
  #     return counter + 1
  #   else
  #   return 0
  #   end
  # end

  def self.num_appearing(n)

    # n (poisitive ns only)
    # 1 ... counter += 1 
    # 2  next number counter remains the same
    # 3...9 1 next counter remains the same   
    # 10: [0,1] digit == 1 counter would increase by the number of times the digit 1 is found
    # 11: 1, 1            2 ... counter would add 1 two times ... +=2
    # 12: 1, 0  counter +=1

    # 111: 1,1,1  counter += 3
    # 12 - string "12"...split ["1","2"]... evalate the string and see if i.to_i == 1 
    # if yes: number_counter +=1
    # #BO(n)
    
    return 0 if n <= 0
    collector = 0
      (1..n).each do |number| #BO(n-1)
        number.digits.each do |num| #BO(10) bc the length of the number can be 10 digits
          collector += 1 if  num == 1
        end
      end
      collector
  end
end  

 t1 = DigitOne.num_appearing(13)  #6 = # 1, 10, 11, 12, 13 
#  t2 = DigitOne.num_appearing(0) #0
#  t3 = DigitOne.num_appearing(212) #145
#  t4 = DigitOne.num_appearing(7011510) # 2510928
#  t5 = DigitOne.num_appearing(-7011510) #0
#  t6 = DigitOne.num_appearing(824883294) #295064856 (test 36/38)

