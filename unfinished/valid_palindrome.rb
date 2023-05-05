# 125. Valid Palindrome
# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters,
#  it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.
# https://leetcode.com/problems/valid-palindrome/

class ValidPalindrom
  def self.is_palindrome(s)
    
    #downcase s
    #remove any special characters
    clean_s = s.downcase.gsub(/[0-9A-Za-z]/)
    clean_s.reverse_each ==  clean_s
    #collect all values in revese order
    reversed_clean_s = Array.new
    origin_order_s =  Array.new

    origin_order_s.key("A")

    # require 'pry';binding.pry
    clean_s.each_byte do |c|
      reversed_clean_s.unshift(c) #put letter in index[0] [3,2,1,0]
      origin_order_s.push(c) #append the letter [0,1,2,3] <<
    end
    # evalate if the two strings match
    # require 'pry';binding.pry
    reversed_clean_s  == origin_order_s
  end
end

t1 = ValidPalindrom.is_palindrome("A man, a plan, a canal: Panama") #true 
t2 = ValidPalindrom.is_palindrome("I have 1 thing to do 2day") #fasle
t3 = ValidPalindrom.is_palindrome("I-4-I") #true 
t4 = ValidPalindrom.is_palindrome("1234321") #true 
t5 = ValidPalindrom.is_palindrome("") #true 
t6 = ValidPalindrom.is_palindrome("a") #true
t7 = ValidPalindrom.is_palindrome("race a car") #false

require 'pry';binding.pry