def caesar(str, shift)
	str_split = str.split("").map do |letter|
		ordinal = letter.ord - shift
		ordinal.chr
	end
	puts str_split.join
end
str = gets.chomp
nr = gets.chomp.to_i
caesar(str, nr)