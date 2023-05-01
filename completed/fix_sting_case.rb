# In this Kata, you will be given a string that may have mixed uppercase and lowercase letters 
# and your task is to convert that string to either lowercase only or uppercase only based on:
    # if the string contains equal number of uppercase and lowercase letters, 
        # convert the string to lowercase.
    # make as few changes as possible.
# https://www.codewars.com/kata/5b180e9fedaa564a7000009a

class FixStringCase
  def self.convert(word)
  letters = word.chars

    if word == word.upcase || word == word.downcase 
      return word
    else
      # upcase_count(letters)
        if upcase_count(letters)/word.length.to_f <= 0.50
          word.downcase!
        else
          word.upcase!
        end
    end
  end

  def self.upcase_count(letters)
    upcase = []

    letters.each do |l|
       upcase << l  if l == l.upcase
    end
    upcase.length
  end

end

class SameCase
  def self.convert(s)
    var_arr = s.split('')
    down_arr = s.downcase.split('')
    require 'pry';binding.pry
    if (down_arr - var_arr).length <= (s.length.to_f / 2)
      s.downcase
    else
      s.upcase
    end
  end
end

# require 'pry';binding.pry
test1 = FixStringCase.convert("coDe")
test2 = FixStringCase.convert("CODe")
test3 = FixStringCase.convert("coDE")

# test4 = SameCase.convert("coDe")
# test5 = SameCase.convert("CODe")
# test6 = SameCase.convert("coDE")
test7 = SameCase.convert("AHBEDUEDOKF")