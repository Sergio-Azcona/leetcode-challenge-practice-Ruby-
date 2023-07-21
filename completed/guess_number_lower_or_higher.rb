# https://leetcode.com/problems/guess-number-higher-or-lower/
# 374. Guess Number Higher or Lower

# We are playing the Guess Game. The game is as follows:
#   I pick a number from 1 to n. You have to guess which number I picked.
#   Every time you guess wrong, I will tell you whether the number I picked is higher or lower than your guess.

# You call a pre-defined API int guess(int num), which returns three possible results:
# -1: Your guess is higher than the number I picked (i.e. num > pick).
# 1: Your guess is lower than the number I picked (i.e. num < pick).
# 0: your guess is equal to the number I picked (i.e. num == pick).
# Return the number that I picked.

def pick
  @pick = pick
end

def generate_random_number(max_limit)
  range = 1..(max_limit)
  @pick = rand(range)
end

def guess(num)
  if num > 2 #@pick
    return -1
  elsif  num < 2#@pick
    return 1
  elsif num == 2#@pick
    return 0
  end
end

def guessNumber(n) #fast but lots of memory  
  # Runtime 76 ms Beats 78.5%
  # Memory 210.8 MB Beats 19.51%
  generate_random_number(n)

  l = 1
  r = n
  mid = (n / 2 == 0) ? 1 : n / 2
  # unless n/2 == 0
  #   mid = n/2
  # else
  #   mid = 1
  # end

  while guess(mid) != 0
    if guess(mid) == 1 # num < pick
      l = mid
      mid = (mid + mid/2 == mid) ? (mid+1) : (mid + mid/2)        
    elsif guess(mid) == -1  # num > pick  
        r = mid - 1
        mid = (l + mid)/2
    end
  end

  return mid if guess(mid) == 0
end

t1 = guessNumber(85)
t2 = guessNumber(855)
t3 = guessNumber(85)
t4 = guessNumber(5)
t5 = guessNumber(90154512347931346465)
t6 = guessNumber(1)
t6 = guessNumber(2)
require 'pry';binding.pry