# 242. Valid Anagram
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.
# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
# https://leetcode.com/problems/valid-anagram/


class ValidAnagram
  # def self.is_anagram(s, t)
      # Runtime 159 ms (38.35%)
      # Memory 218 MB (19.89%)
    # require 'pry';binding.pry
    # s.chars.sort ==  t.chars.sort #compares values of letters

      # Runtime 95 ms (97.44%)
      # Memory 215.2 MB (75.85%)
    s.bytes.sort ==  t.bytes.sort #compares values of letters [97, 97, 97, 103, 109, 110, 114]

    #what if you created a hash with the bytes as the keys and count as values
  # end

  def self.is_anagram(s, t)
  end
end

test1 = ValidAnagram.is_anagram('anagram','nagaram') # true
test2 = ValidAnagram.is_anagram('rat','car') # false
test3 = ValidAnagram.is_anagram('bored','robed') # true
test4 = ValidAnagram.is_anagram('bot', 'robot') # false
require 'pry';binding.pry