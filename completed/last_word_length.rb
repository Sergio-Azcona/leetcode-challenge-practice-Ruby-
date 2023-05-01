# num 58. Given a string s consisting of words and spaces, return the length of the last word in the string.
# A word is a maximal  substring consisting of non-space characters only.
# Input: s = "Hello World" ; Output: 5
# Explanation: The last word is "World" with length 5.

# Input: s = "   fly me   to   the moon  " ; Output: 4
# Explanation: The last word is "moon" with length 4.

class LastWordLength
  def self.length_of_last_word(s)
    word = s.split(' ').last
    word.chars.count
    # runtime 76 ms
    # Memory 210.9 MB
  end
end

test1 = LastWordLength.length_of_last_word("Hello World")
test2 = LastWordLength.length_of_last_word("   fly me   to   the moon  ")
require 'pry';binding.pry