def substrings(input, dictionary)
	result = {}
	inp_spl = input.split(" ")
	inp_spl.each do |inp|
		dictionary.each do |word|
			if match = Regexp.new(word).match(inp.downcase)
				if result.include?(word)
					result[word] += 1
				else
					result[word] = 1
				end
			end
		end
	end
	p result
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input = gets.chomp
substrings(input, dictionary)