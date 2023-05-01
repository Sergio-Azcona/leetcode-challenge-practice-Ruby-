# 1446. Consecutive Characters
# The power of the string is the maximum length of a non-empty substring that contains only one unique character.
# Given a string s, return the power of s.
# https://leetcode.com/problems/consecutive-characters/

class ConsCharacters
  def self.max_power(s)
    collection = Hash.new(0)
    letters = Array.new
    # letters = s.chars#.bytes
    
    # require 'pry';binding.pry
    s.chars.each_with_index do |l, i|
      if l == s[i.next]
        letters.push(l)
      elsif
        l == letters.last
        letters.push(l)
      else
        next
      end
    end
    
    require 'pry';binding.pry
    unless collection.empty?
      collection.values.max
    else
      1
    end

    # if l == s[i.next]
    #   collection[l] += 1 
    # elsif
    #   l == s[i-1]
    #   collection[l] += 1 
    # else
    #   l != s[i.next] || l == s[i-1]
    #   collection[l] += 1 
    #   # next  
    #   #if the collection includes l but l is not the next letter and l == 1
    #   #empty the collection has of l (reset collect to 0 count of l is l == 1) 
    # end
    
    # letters.each_with_index do |l, i|
    #   # collection.push(l) if l == collection.last
    #   if l == letters[i.next] 
    #     collection.push(i)
    #     # collection.push(letters[i.next]) 
    #   end
    # end

    # collection.each_with_index do |e, i|
    #   if e+1 == collection[i.next]
    #     index << e
        
    #   end
    # end
    # require 'pry';binding.pry

  end
end

# test1 = ConsCharacters.max_power("leetcode") #2 (e)
# test2 = ConsCharacters.max_power("abbcccddddeeeeedcba") #5 (e)
# test3 = ConsCharacters.max_power("abcdefghijklmnopqrstuvwxyz") #0 (no repeats)
# test4 = ConsCharacters.max_power("tourist")
test5 = ConsCharacters.max_power("ccbccbb")
# require 'pry';binding.pry