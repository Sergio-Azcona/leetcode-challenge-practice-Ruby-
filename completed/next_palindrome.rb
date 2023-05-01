# A palindrome is any number, word, or phrase that reads the same forward as it does backward. 
# In this challenge, we are going to focus on palindromic numbers. 
# For example, 12321 is a palindromic number, whereas 123 is not.

# Your goal is to write a method/function that takes in an integer and returns the finding_next palindrome. 
# It is safe to assume you are working with only whole numbers, no decimals, and no negatives.

#recursion 
class NextPalindrome
  # def self.finding_next(nums)
  #   #if nums.length == 1
  #   # return nums + 1
  #   #else
  #   #nums += 1 until  # new_number[0] ==  new_number[-1] 
  #   #while shifting  and popping, if  the values are equal
  #   # return if nums.length == 1
  
  #   #return new_number


  #   #check to see if new_number nums.length == 1
  #   #else 
  #   # evaluate to see it is a pal
    

    new_number = nums + 1 
    edited_num = new_number.digits
    # if new_number.digits.reverse.length == 1
    #   return new_number
    # end
    if  edited_num.length <= 1
      return new_number 
    elsif
      edited_num.length >= 2
      # require 'pry';binding.pry
      while edited_num[0] == edited_num[-1]
        edited_num.shift  
        edited_num.pop 
      end
    end
    finding_next(new_number)
    # else

    
  #     # require 'pry';binding.pry
      
      
    


  #   # end 

  #   #base case
  #     # new_number.length == 1
  #   #recursive case
  #   # finding_next(nums + 1)

  # end

  def self.finding_next(nums)
    #my code: further breakdown
    num = nums + 1
    reverse_num = []
    current_number = num.to_s.chars #convert integer into a string and then split it up
    next_pal = []
    
    current_number.each do |n|  
      reverse_num.unshift(n)    #put the current number into the FRONT/element position 0 of the array
      # require 'pry';binding.pry
    end
    
    # current_number.each_with_index do |n1, i1| #GOT TO compare the characters and the return when successful, or continue
    #   reverse_num.each_with_index do |n2, i2|
    #     while i1 == i2 
    #       if n1 == n2
    #         next_pal.push(n1)
    #       end
    #     end
    #     next_pal
    #   end
    # end
    
    #my code:
    num = nums + 1
    reverse_num = num.digits
    
    if num.digits.reverse == reverse_num
      return num
    else
      # require 'pry';binding.pry
      finding_next(num)
    end
  end

  ###GPT version of my code: eliminate the recursion with while loop
    # num = nums + 1
    # reverse_num = num.digits
    
    # while num.digits.reverse != reverse_num
    #   num += 1
    #   require 'pry';binding.pry
    #   reverse_num = num.digits #reassign the value of reverse_num from line 75; this reverse_num will live in the loop only!!
    # end
    # num

  ###Smash code w GPT input: replace the array with a string
  # def next_palindrome(n)
  #   str = n.to_s #small optimization: covert n to a string to eliminate the need to convert n to a string twice in each iteration of the loop
  #   n += 1 until str == str.reverse
  #   n
  # end

  end
end

# t1 = NextPalindrome.finding_next(9) #11
# t2 = NextPalindrome.finding_next(100) #101
# t3 = NextPalindrome.finding_next(101) #111
# t4 = NextPalindrome.finding_next(500) #505
t5 = NextPalindrome.finding_next(5050) #5115
require 'pry';binding.pry
