# # 20. Valid Parentheses
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
# https://leetcode.com/problems/valid-parentheses/

class ValidParentheses
  def self.get_sum(num)
    if num.empty?
      return 0
    end
    num.shift + get_sum(num)
  end
  
  def self.is_valid(s)



    # input = s.bytes
    # # reversed = s.reverse.chars
    # collect = []
    
    # input.each do |s|
      # require 'pry';binding.pry
      #if we find a closing brace before it's opening brace: return false
    #   if  s == 40 ||  s == 91 ||  s == 123
    #     unless collect.include?(41) || collect.include?(93) || collect.include?(125)
    #       collect.push(s)
    #     else
    #       return false        
    #     end
    #   else s == 41 ||  s == 93 ||  s == 125
    #     unless collect.include?(40) || collect.include?(91) || collect.include?(123)
    #       collect.push(s)
    #     else
    #       return false        
    #     end
    
    #   end
  
    #   require 'pry';binding.pry
    # end
    # collect

    #

    # def dictionary
    #   {
    #   "(" => "(".bytes[0],
    #   ")" => ")".bytes[0],
    #   "[" => "[".bytes[0],
    #   "]" => "]".bytes[0],
    #   "{" => "{".bytes[0],
    #   "}" => "}".bytes[0],
    #   }
    # end

  end
end

# test1 = ValidParentheses.is_valid("()") #true
test2 = ValidParentheses.is_valid("()[]{}") #true
# test3 = ValidParentheses.is_valid("(]") # false
# test4 = ValidParentheses.is_valid("{[()}]}") # false
# test5 = ValidParentheses.is_valid("[[[[{}]]]]")

test11 = ValidParentheses.get_sum([1,2,3,4])
require 'pry';binding.pry