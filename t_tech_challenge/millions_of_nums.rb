
class MillionOfNums
  def self.find_matches(a1, a2, a3)
    
    # #if the largest number is the same value in all arrays
    # if (a1[-1] <=> a2[1] && a1[-1] <=> a3[-1])
    #   # create a hash if value appears in a1 and a2
    #   h2 = Hash.new
    #   a1.map do |a1| 
    #     h2[a1] = true if a2.include?(a1)
    #   end
      
    #   if h2.keys.empty?
    #     return []
    #   else
    #     # create third hash if a3.inculdes(h2.keys)
    #     h3 = Hash.new
    #     a3.each do |e3|
    #       h3[e3] = true if h2.keys.include?(e3)
    #     end
    #   end

    # else
    #   []
    # end
      # require 'pry';binding.pry

    ##solution
    # # create a hash if number appears in a1
    # h1 = Hash.new
    # a1.each do |e|
    #   h1[e] = true
    # end

    # # create a second has if a2.includes(h1.key)
    # h2 = Hash.new
    # a2.each do |e2|
    #   h2[e2] = true if h1.keys.include?(e2)
    # end

    ##solution
    #create a hash if value appears in a1 and a2
    h2 = Hash.new
    h3 = Hash.new

    a1.map do |a1| 
      h2[a1] = true if a2.include?(a1)
    end
    
    unless h2.keys.empty?
      # create third hash if a3.inculdes(h2.keys)
      a3.map do |e3|
        h3[e3] = true if h2.keys.include?(e3)
      end
      return h3.keys
    else
      return [] 
    end

    # unless h3.keys.empty?
    #   h3.keys
    # else
    #   []
    # end
  #   # require 'pry';binding.pry
  end
end

t1 = MillionOfNums.find_matches([1, 2, 4, 5, 8], [2, 3, 5, 7, 9],[1, 2, 5, 8, 9]) #[2, 5]
t2 = MillionOfNums.find_matches([11, 12, 14, 15, 18, 19], [12, 13, 15, 17, 19],[1, 2, 5, 8, 9]) #[]
t3 = MillionOfNums.find_matches([101, 102, 104, 105, 108, 109], [1102, 1103, 1015, 107, 109],[11, 22, 55, 58, 109]) #[109]
t4 = MillionOfNums.find_matches([1201, 3102, 4104, 5105, 6108, 777109], [2, 103, 11015, 21017, 71019],[11, 22, 55, 58, 109]) #[]
require 'pry';binding.pry



# [1, 2, 4, 5, 8]
# [2, 3, 5, 7, 9]; [0] >=1(a1[0]) or <= (a1[-1])8
# [1, 2, 5, 8, 9]; [0] >=1 (a1[0]) or <= (a1[-1])8