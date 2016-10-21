def stock_picker(prices)
  max_money = 0
  buy_day = 0
  sell_day = 0
  (0..(prices.length-1)).each do |day|
    sell = day + 1
    (sell..(prices.length-1)).each do |day2|
      diff = prices[day2] - prices[day]
      if diff > max_money
        max_money = diff
        buy_day = day
        sell_day = day2
      end
    end
  end
  "buy on day #{buy_day}, sell on day #{sell_day} for a profit of #{max_money}"
end


puts stock_picker([17,3,6,9,15,8,6,1,10])
