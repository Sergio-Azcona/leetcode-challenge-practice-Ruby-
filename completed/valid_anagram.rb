# 242. Valid Anagram
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.
# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
# https://leetcode.com/problems/valid-anagram/


class ValidAnagram
  # def self.is_anagram(s, t) # more efficent
      # Runtime 159 ms (38.35%)
      # Memory 218 MB (19.89%)
    # require 'pry';binding.pry
    # s.chars.sort ==  t.chars.sort #compares values of letters

      # Runtime 95 ms (97.44%)
      # Memory 215.2 MB (75.85%)
    # s.bytes.sort ==  t.bytes.sort #compares values of letters [97, 97, 97, 103, 109, 110, 114]

    #what if you created a hash with the bytes as the keys and count as values
  # end

  def self.is_anagram(s, t) # more efficent
    # Runtime 95 ms Beats 97.46%
    # Memory 213.4 MB Beats 68.17%
    # time and memory complextion: O(s+t) 

    word_1 = Hash.new(0)
    word_2 = Hash.new(0)

    # require 'pry';binding.pry
    if s.length == t.length 

      s.bytes.each do |l|
        # require 'pry';binding.pry
        word_1[l] += 1
      end

      t.bytes.each do |l2|
        if word_1.key?(l2)
          word_2[l2] += 1
        else
          return false
        end
      end
      word_1.each do |k, v|
        unless v == word_2.values_at(k)[0]
          return false
        end
      end
      return true
    else
      return false
    end 
  end
end

test1 = ValidAnagram.is_anagram('anagram','nagaram') # true
test2 = ValidAnagram.is_anagram('rat','car') # false
test3 = ValidAnagram.is_anagram('bored','robed') # true
test4 = ValidAnagram.is_anagram('bot', 'robot') # false
test5 = ValidAnagram.is_anagram('x', 'x') # true
test6 = ValidAnagram.is_anagram('x', 'd') # false
require 'pry';binding.pry