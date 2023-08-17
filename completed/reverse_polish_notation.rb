# 150. Evaluate Reverse Polish Notation
# https://leetcode.com/problems/evaluate-reverse-polish-notation/

# You are given an array of strings tokens that represents an arithmetic expression in a Reverse Polish Notation.
# Evaluate the expression. Return an integer that represents the value of the expression.

# Note that:
#   The valid operators are '+', '-', '*', and '/'.
#   Each operand may be an integer or another expression.
#   The division between two integers always truncates toward zero.
#   There will not be any division by zero.
#   The input represents a valid arithmetic expression in a reverse polish notation.
#   The answer and all the intermediate calculations can be represented in a 32-bit integer.

# if value == Integer push into numbers until 
#   if value != Integer push into operators


#     to calculate: 
#     stack numbers until an operator is hit
#     when operator is hit, calculate the last two numbers  
#     numbers.pop to get last values out of the numbers collector
#     push the calculated number into the numbers collector (replacing the values that were just calculated)
#       continue until number is empty

def eval_rpn(tokens) #good on speed; lackluster on memory
  # Runtime Details 72ms Beats 83.33%
  # Memory Details 214.01mb Beats 5.56%

  numbers = Array.new
  operators = Array.new

  tokens.each_index do |index|
    if operator_dictionary.key?(tokens[index]) && numbers.length <= 1
      operators.push(operator_dictionary[tokens[index]])
    elsif operator_dictionary.key?(tokens[index]) && numbers.length >= 2
      sum = calulate(numbers[-2], operator_dictionary[tokens[index]], numbers[-1])
      
      numbers.pop(2)

      numbers.push(sum)
    elsif !operator_dictionary.key?(tokens[index])
        numbers.push(Integer(tokens[index]))
    end
  end
  numbers[0]
end

def calulate(first_number, operator, second_number)
  unless  operator == :/
    first_number.send(operator, second_number)
  else
    if first_number % second_number == 0
      first_number.send(operator, second_number)
    else  
      div_sum = first_number.send(operator, second_number)
      if div_sum < 0
        div_sum +1
      else
        div_sum
      end
    end
  end
end


def operator_dictionary
  {
    "+" => :+, 
    "-" => :-,
    "*" => :*, 
    "/" => :/ 
  }
end


t1 = eval_rpn(["4","13","5","/","+"]) #6
t2 = eval_rpn(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]) #22
t3 = eval_rpn(["2","1","+","3","*"]) #9
t4 = eval_rpn(["4","-2","/","2","-3","-","-"]) #-7 ##test 16/21
# require 'pry';binding.pry
