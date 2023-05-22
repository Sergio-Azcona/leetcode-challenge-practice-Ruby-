# # 20. Valid Parentheses
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.  !!!!!!
# Every close bracket has a corresponding open bracket of the same type.
# https://leetcode.com/problems/valid-parentheses/

class ValidParentheses
  
  def self.is_valid(s) #fast but uses lots of memory 
    # Runtime 74 ms Beats 89.64%
    # Memory 211.6 MB Beats  14.40%
    open_brackets = Array.new

    return false unless (s.length).even?

    s.split("").each do |b|
      if b == "(" ||  b == "[" ||  b == "{"
        open_brackets.push(b)
      elsif
        b == ")" && open_brackets[-1] == "("
          open_brackets.pop
      elsif
        b == "]" && open_brackets[-1] == "["
        open_brackets.pop 
      elsif
        b == "}" && open_brackets[-1] == "{"
        open_brackets.pop 
      else
        return false
      end
      open_brackets
    end
    open_brackets.empty?
  end

  # def self.is_valid(data) #slow and uses lots of memory 
  #   # Runtime 94 ms Beats 27.2%
  #   # Memory 211.1 MB Beats 37.22%

  #   open_brackets = Array.new

  #   return false if  data.length.odd?
  #   #char the input to break data/input array up
  #   data.chars.each do |b|
  #     if  bracket_combo.key?(b)
  #       #add b if it is a key found in our dictionary 
  #       open_brackets.push(b)
  #     elsif
  #       # if b a value in our dictionary  & if the key corresponding to b is last element in the array 
  #       bracket_combo.value?(b)

  #       if open_brackets[-1].eql?(bracket_combo.key(b))
  #       # delete the key related to b from the array container (should be the last in the container)
  #         open_brackets.pop 
  #       else
  #         return false
  #       end
        
  #     end
  #     open_brackets
  #   end
  #   # require 'pry';binding.pry
  #   if open_brackets.empty?
  #     return true
  #   else
  #     return false
  #   end
  # end

  def self.bracket_combo
    {
      "(" => ")",
      "[" => "]",
      "{" => "}"
    }
  end

  # def closed_bracket(bracket)
  # end

end

test1 = ValidParentheses.is_valid("()") #true
test2 = ValidParentheses.is_valid("()[]{}") #true
test3 = ValidParentheses.is_valid("(])[]") # false
test4 = ValidParentheses.is_valid("{[()}]}") # false
test5 = ValidParentheses.is_valid("([)]") #false
test6 = ValidParentheses.is_valid("[[[]")  #false
test7 = ValidParentheses.is_valid("([}}])") # false
require 'pry';binding.pry