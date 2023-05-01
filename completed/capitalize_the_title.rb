# You are given a string title consisting of one or more words separated by a single space, where each word consists of English letters. 
# Capitalize the string by changing the capitalization of each word such that:
#   If the length of the word is 1 or 2 letters, change all letters to lowercase.
#   Otherwise, change the first letter to uppercase and the remaining letters to lowercase.
#   Return the capitalized title.
# https://leetcode.com/problems/capitalize-the-title/

class Capitalize_words
  #split string into individual words array
  #count the number of letter in each word
  #when greater than 2 characters, capitalize
  #when less than than 2 characters, downcase
  # memory: 211.1 MB;  runtume 86 ms

  def self.evaluate_word(title)
    words = title.split(' ')
    words.each do |word|
      if word.length > 2
        word.capitalize!
      else
        word.downcase!
      end
      # word.length > 2 ? word.capitalize! : word.downcase! 
    end.join(' ')
  end
end
test1 = Capitalize_words.evaluate_word("capiTalIze tHe titLe")
test2 = Capitalize_words.evaluate_word("First leTTeR of EACH Word")
test3 = Capitalize_words.evaluate_word("i lOve leetcode")

require 'pry';binding.pry
