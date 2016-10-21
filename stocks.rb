
def stock_picker(prices)
	best_days = []
    sell_day = 0
    buy_day = 0
    difference = 0
    	
    prices.each do |price|
    	prices.each do |day|
    		if day - price > difference && prices.index(day) > prices.index(price)
    			difference = day - price
    			sell_day = prices.index(day)
    			buy_day = prices.index(price)
    		end
    	end
	end
    		best_days = [buy_day, sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])