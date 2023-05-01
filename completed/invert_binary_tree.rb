# 226. Given the root of a binary tree, invert the tree, and return its root.
      # The number of nodes in the tree is in the range [0, 100].
      # -100 <= Node.val <= 100


# https://leetcode.com/problems/invert-binary-tree/

class InvertBinaryTree

  def self.invert_tree(root)
    # require 'pry';binding.pry
    if root.empty?
      return root 
    else 
        #remove base root + first node from array - leaving just the branches/"nodes"
        base = root.shift
        base_first_node_reversed = root.shift(2).reverse.unshift(base)
               
      unless root.empty?
        #if root has elements
        new_root = slice_nodes(root)
        #flatten the array - add the base root as the first element in the array response
        #add base back to array in the first element position
        # require 'pry';binding.pry
        result = new_root.unshift(base_first_node_reversed).flatten
      else
       result = base_first_node_reversed
      end
    end
    result 
  end

  def self.slice_nodes(root)
    #nodes are sets of 2
      #collect each node into sets of twos 
    reversed_nodes = []
    result = []

    root.each_slice(2) do |node| 
      #reverse the order of the elements in each sub array
      reversed_nodes.push(node.reverse) 
    end
        # require 'pry';binding.pry
    reversed_nodes.each_slice(2) do |n|
      #reverse the order of the node "pods" in the array 
      result.push(n.reverse) 
    end
    # require 'pry';binding.pry
    result.flatten!
    # require 'pry';binding.pry
  end

end


# test1 = InvertBinaryTree.invert_tree([4,2,7,1,3,6,9]) #[4,7,2,9,6,3,1]
# test2 = InvertBinaryTree.invert_tree([2,1,3]) # [2,3,1]
# test3 = InvertBinaryTree.invert_tree([]) # []
# test4 = InvertBinaryTree.invert_tree([4,2,7,1,3,6,9,2,5,7,8]) #[4, 7, 2, 9, 6, 3, 1, 8, 7, 5, 2]
test5 = InvertBinaryTree.invert_tree([4, 2, 7, 1, 3, 6, 9, 2, 5, 7, 8, 0, 5, 8, 9, 55, 1, 66, 2, 77, 3, 88, 4, 99, 5, 0, 6, 77, 8, 88, 9])
require 'pry';binding.pry