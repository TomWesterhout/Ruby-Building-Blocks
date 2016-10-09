def stock_picker(stocks)
	buy_day, sell_day = 
	low_dif = 0
	high_dif = 0 
	stocks.each_with_index do |stock1, index1|
		stocks.each_with_index do |stock2, index2|
			if stock1 < stock2 && index1 < index2
				buy_day, low_dif = stock1, stock2-stock1 if (stock2-stock1) > low_dif
			end
			if stock1 > stock2 && index1 > index2
				sell_day, high_dif = stock1, stock1-stock2 if (stock1-stock2) > high_dif
			end
		end
	end
	return [buy_day, sell_day]
end

puts "Enter a collection of stock prices, one for each hypothetical day, separated by commas."
input = gets.chomp.split(", ").map {|x| x.to_i}
puts stock_picker(input)