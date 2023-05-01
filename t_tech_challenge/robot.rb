# In this challenge, you are working with a computer simulation of a mobile robot. 
# The robot moves on a plane, and its movements are described by a command string consisting of one or more of the following letters:

#   G instructs the robot to move forward one step
#   L instructs the robot to turn left # face L direction ## needs a G to trigger
#   R instructs the robot to turn right  # face R direction  ## needs a G to trigger
# The robot CANNOT go backwards - poor robot. After running all of the movement commands, 
# you want to know if the robot returns to its original starting location.

#split string into combos of 2 elements ## the combo indicates a movement if G is involved
# could you make a dictionary for the turns
