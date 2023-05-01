# You are given a 0-indexed string word, consisting of lowercase English letters. 
# You need to select one index and remove the letter at that index from word so that the frequency of every letter present in word is equal.
# Return true if it is possible to remove one letter so that the frequency of all letters in word are equal, and false otherwise.

# Note:
# The frequency of a letter x is the number of times it occurs in the string.
# You must remove exactly one letter and cannot chose to do nothing.


class LetterFrequency

  def self.equal_frequency(word)
    letters = word.bytes.sort
    
    duplicates =  Hash.new(0)
    values = Hash.new(0)
    
    letters.each do |l|
      duplicates[l] += 1
    end 

    duplicates.each do |k, v|
      values[v] += 1
    end

    require 'pry';binding.pry
    if values.values.count == 1
      if values.values[0] > 2
        return true
      else
        return false
      end
    elsif values.values.count == 2 
      if values.values.sort[0] == 1 
        return true
      elsif
        values.values.sort[0] == ((values.values.sort[1]-1))
          return true
      else
        return false
      end
    else duplicates.values.count >= 3
      if duplicates.values.sort[0] == ((duplicates.values.sort[-1]-1))
        return true
      else
        return false
      end
    end
  end

end

# test1 = LetterFrequency.equal_frequency('abcc') #true
# test2 = LetterFrequency.equal_frequency('aazz') #false
test3 = LetterFrequency.equal_frequency('dklmndoazz') #false # 2 letters
# test4 = LetterFrequency.equal_frequency('dklmnoazk') #true
# test5 = LetterFrequency.equal_frequency('bac') #true
# test6 = LetterFrequency.equal_frequency('cccaa') # true
# test7 =  LetterFrequency.equal_frequency('cbccca') #false
# test8 =  LetterFrequency.equal_frequency('cccbaazzz') #false
# require 'pry';binding.pry


