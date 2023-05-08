# 49. Group Anagrams
# Given an array of strings strs, group the anagrams together.
#  You can return the answer in any order.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, 
# typically using all the original letters exactly once.
# strs[i] consists of lowercase English letters.

# https://leetcode.com/problems/group-anagrams/

class GroupAnagrams
  def self.group_anagrams(strs)
    # Runtime 178 ms Beats 96.50%
    # Memory 215.8 MB Beats 56%

    # count the letters in each string
    # group similar letter counts strings together in a subarray
    #bytes to convert letters to integers
    #sort in sequance for easier comparing
    hash_words = Hash.new(Array.new)
    
    # require 'pry';binding.pry
    strs.each { |word| hash_words[word.bytes.sort] += [word] }
    hash_words.values
  end
end

t1 = GroupAnagrams.group_anagrams(["eat","tea","tan","ate","nat","bat"]) #[["bat"],["nat","tan"],["ate","eat","tea"]]
t2 = GroupAnagrams.group_anagrams([""]) # [[""]]
t3 = GroupAnagrams.group_anagrams(["a"]) # [["a"]]
t4 = GroupAnagrams.group_anagrams(["515", "88", "2552","88","0", "515", "2552"]) #[["0"],]
require 'pry';binding.pry