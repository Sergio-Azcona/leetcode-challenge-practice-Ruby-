# https://leetcode.com/problems/number-of-digit-one/

# Given an integer n, count the total number of digit 1 appearing in all non-negative integers less than or equal to n.



 class DigitOne
  def self.num_appearing(n)
    found_ones = Hash.new(0) 
    # require 'pry';binding.pry
 

      number = n - 1  if n.positive? 

      #until n-1 until 
      # unless number
      if number.include?(1)
          number.digits.select do |num|
            require 'pry';binding.pry
            num = n.digits.sort 
            found_ones[1] += 1 if num == 1
          end
          return found_ones
        end
      end
    end 
    return 0

  end
 end

 t1 = DigitOne.num_appearing(13) # 1, 10, 11, 12, 13
#  t2 = DigitOne.num_appearing(0)
#  t3 = DigitOne.num_appearing(212)
#  t4 = DigitOne.num_appearing(7011510)
#  t5 = DigitOne.num_appearing(-7011510)
#  t6 = DigitOne.num_appearing(-1)

 require 'pry';binding.pry