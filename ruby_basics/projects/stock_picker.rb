def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 0
  best_profit = 0
  
  # Try each day as a potential buy day
  prices.each_with_index do |buy_price, buy_day|
    # For each buy day, find the best sell day that comes after it
    prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        profit = sell_price - buy_price
        if profit > best_profit
          best_profit = profit
          best_buy_day = buy_day
          best_sell_day = sell_day
        end
      end
    end
  end
  
  [best_buy_day, best_sell_day]
end
puts stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
