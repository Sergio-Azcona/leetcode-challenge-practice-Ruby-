# 121. Best Time to Buy and Sell Stock
# You are given an array prices where prices[i] is the price of a given stock on the ith day.
# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

class BestTimeToBuy
  def self.max_profit(prices)
    buy = []
    sell = []
    # L =  find the lowest value
    # H = find the highest value that comes after the low value
    

    prices.minmax


    














    gains = Hash.new

    #hash of index postition and values
    prices.each_with_index do |num, index|
      gains[index] = num
    end

    # assess each value in the array - if less than previous, collect
    sorted = gains.values.sort
    x.
    # require 'pry';binding.pry


  end
end
  
test1 = BestTimeToBuy.max_profit([7,1,5,3,6,4]) # 5
# test2 = BestTimeToBuy.max_profit([7,6,4,3,1]) # 0
# test3 = BestTimeToBuy.max_profit([4,5,3,6,7,2]) #5