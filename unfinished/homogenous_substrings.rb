# https://leetcode.com/problems/count-number-of-homogenous-substrings/
# Given a string s, return the number of homogenous substrings of s. 
# Since the answer may be too large, return it modulo 10^9 + 7.

# A string is homogenous if all the characters of the string are the same.

# A substring is a contiguous sequence of characters within a string.



class HomogenousSubstrings
  def self.homogenous_num(str)

    combos = Hash.new(0)

    str.chars.each_with_index do |l, i|
      if
        l != str[i.next]
        combos[l] += 1
      elsif
        l == str[i.next]
        combos[l, str[i.next]] += 1
        # combos.push([l, str[i.next]])
      else
        
        l == combos.last && l == str[i.next]
          combos[l, str[i.next], combos.last] +=  1 # count number of else and represent it l.times(x)
        
        #else until l != combo[..-1]
        # end
      end
    end
    require 'pry';binding.pry
  end
end


t1 = HomogenousSubstrings.homogenous_num("abbcccaa") #13 #3 + 1 + 2 + 1 + 3 + 2 + 1 = 13  ## "a"   appears 3 times."aa"  appears 1 time."b"   appears 2 times. "bb"  appears 1 time."c"   appears 3 times."cc"  appears 2 times. "ccc" appears 1 time.
# t2 = HomogenousSubstrings.homogenous_num("xy") #2
# t3 = HomogenousSubstrings.homogenous_num("zzzzz") #15
# t4 = HomogenousSubstrings.homogenous_num()
# t5 = HomogenousSubstrings.homogenous_num()