class TakeHome
  # def self.say_hello(name) #practice/prep
  #   # require 'pry';binding.pry
  #   name = "there" if name.empty?
  #   # unless name.empty?
  #     # p "Hello" + name
  #   # else
  #     # name = "there"
  #     p "Hello," + name + "!"
  #   # end
  # end

  # def self.part_two(nums) #increment by 1
  #   # require 'pry';binding.pry
  #   new_num = nums.join.to_i 
  #   new_num += 1
  #   # require 'pry';binding.pry
  # end

  # def self.part_three(string) #true or false... any repeating letters
  #   con = string.bytes
  #   con.sort.uniq == con.sort 
  #   # require 'pry';binding.pry
  # end

  # def self.part_four(string) #need to finish ; replace all elements in string except for the last four digits with a '#'
  #   if string.length >= 5
  #     string = ""
  #     string_size = string.chars.count -4
  #     # require 'pry';binding.pry

  #     string_size.times do 
  #       string << "#"
  #     else
  #     string.length <= 4
  #     string
  #   end
  # end 

  # def self.part_five(string) # find middle letters #need to finish
  #   str = string.bytes
  #   pull_1 = str.length/2 +1 
  #   pull_2 = str.length/2 +1 
  #   letter_1 = str.fetch(pull_element)
  #   letter_1 = str.fetch(-pull_element)
  #   require 'pry';binding.pry
  
  # end


  def self.part_six(int)
    #position values [100, 50, 20]
    hundred = Hash.new(0)
    fifty = Hash.new(0)
    twenty = Hash.new(0)
require 'pry';binding.pry

    hundred[100] = int.to_f/100
    hundred[50] = int.to_f/50
    hundred[20] = int.to_f/20
    
    
    x = int.digits.reverse
    x[0] * 100

  end
end

# t1 =TakeHome.say_hello("Joe")
# t2 =TakeHome.say_hello("")

# t3 =TakeHome.part_two([4,2]) # 43
# t4 =TakeHome.part_two([5,5]) #56
# t5 =TakeHome.part_two([9,9]) #100

# # t6 =TakeHome.part_three("abcs")
# t7 =TakeHome.part_three("zbacta")
# # t8 =TakeHome.part_three("a")

# tt1 = TakeHome.part_four("12345") => #2345
# tt2 = TakeHome.part_four("123") => 123
# tt3 = TakeHome.part_four("12345678910") => #######8910

# tt4 = TakeHome.part_five("12345") #3
# # tt5 = TakeHome.part_five("123") #2
# # tt6 =  TakeHome.part_five("12345678910") #6
# # tt7 = TakeHome.part_five("middle") #'dd'

tt7 = TakeHome.part_six(230) #[1,1,4]
# tt8 = TakeHome.part_six(60)
# tt9 = TakeHome.part_six(5000)

require 'pry';binding.pry