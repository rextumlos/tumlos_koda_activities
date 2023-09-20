# John Rexpearl Tumlos
# Exercise 9 - Best Time to Buy and Sell Stock

def maxProfit(prices)
  low_price = nil
  high_price = nil

  prices.each_with_index do |price, index|
    unless low_price and high_price
      low_price = price
      high_price = price
    end

    if price < low_price
      low_price = price
      high_price = 0
    end

    if price > high_price
      high_price = price
    end

    puts "Loop #{index} - High: #{high_price}, Low: #{low_price}"
  end

  profit = high_price - low_price
  profit < 0 ? 0 : profit
end


input_1 = [7, 1, 5, 3, 6, 4]
input_2 = [7, 6, 4, 3, 1]

print maxProfit(input_2)