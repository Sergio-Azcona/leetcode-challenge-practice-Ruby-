# 125. Valid Palindrome
# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters,
#  it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.
# https://leetcode.com/problems/valid-palindrome/

class ValidPalindrom
  # def self.is_palindrome(s) #does not pass leetcode time constrain
  #   #downcase s
  #   #remove any special characters
  #   clean_s = s.downcase.gsub(/[0-9A-Za-z]/)
  #   clean_s.reverse_each ==  clean_s
  #   #collect all values in revese order
  #   reversed_clean_s = Array.new
  #   origin_order_s =  Array.new

  #   # origin_order_s.key("A")

  #   # require 'pry';binding.pry
  #   clean_s.each do |c|
  #     reversed_clean_s.unshift(c) #put letter in index[0] [3,2,1,0]
  #     origin_order_s.push(c) #append the letter [0,1,2,3] <<
  #   end
  #   # evalate if the two strings match
  #   # require 'pry';binding.pry
  #   reversed_clean_s  == origin_order_s
  # end

  def self.is_palindrome(s) #fast but memory intensive. passes leetcode time
    # Runtime 103 ms Beats 80.43%
    # Memory 217.1 MB Beats 18.1%

    if s.class == String
      new_s = s.gsub(/[^0-9a-zA-Z]/, '').downcase.bytes #converting string to bytes allows us to compare integers rather than characters 
    elsif
      s.class == Array
      new_s = s
    end

    if  new_s.length > 1 
      if new_s.shift == new_s.pop
        is_palindrome(new_s)
      else
        return false
      end
    elsif
      new_s.length <= 1 #new_s
      return true
    end
  end

  def self.compare_two_points(array)
  end
end

t1 = ValidPalindrom.is_palindrome("A man, a plan, a canal: Panama") #true 
t2 = ValidPalindrom.is_palindrome("I have 1 thing to do 2day") #fasle
t3 = ValidPalindrom.is_palindrome("I-4-I") #true 
t4 = ValidPalindrom.is_palindrome("1234321") #true 
t5 = ValidPalindrom.is_palindrome("") #true 
t6 = ValidPalindrom.is_palindrome("a.") #true
t7 = ValidPalindrom.is_palindrome("A man, a plan, a canal: Panama") #true
t8 = ValidPalindrom.is_palindrome("race a car") # false
require 'pry';binding.pry