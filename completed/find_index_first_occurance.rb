# Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, 
# or -1 if needle is not part of haystack.
# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/

class FirstOccurance
  def self.find_needles(haystack, needle)
    # does the haystack include the needle?
    
    

    #   characters = needle.length
    # else
    #   return -1 
    # end

    # if 
    # word = needle.charsa
    # letters = haystack.chars
    # collect = []
    # position = []   
    needle_count = needle.length
    
    unless haystack.include?(needle)
      return -1
    else
      letters.each_with_index do |letter, i|
        # require 'pry';binding.pry
        # unless 
        unless collect.join.include?(needle) && collect.join == needle #until
          #  position
          
        # elsif !collect.join.include?(needle)# && collect.join != needle
          # if 
            # needle.include?(letter)    
            #   collect << letter 
            #   position << i 
          # end

        else collect.join.include?(needle) && collect.join != needle
          until collect.join == needle
            require 'pry';binding .pry
            element_count = collect.length 
            position.shift(element_count - needle_count) && collect.shift(element_count - needle_count)
            
            position
          end

        end
        position
      end
    end

    position.first
  end

  def collection_of_letters(haystack, needle)
    letters = haystack.chars
    collect = []
    position = []  
  
    letters.each_with_index do |letter, i|
      needle.include?(letter)    
      collect << letter 
      position << i 
    end
    collect
    position
  end
end

# test1 = FirstOccurance.find_needles('sadbutsad','sad')
# test2 = FirstOccurance.find_needles('leetcode','leeto')
# test3 = FirstOccurance.find_needles('whybulbbybay','by')
test4 = FirstOccurance.find_needles('aroundthewrongeraaaarrenofaaron','aaron')

# require 'pry';binding.pry