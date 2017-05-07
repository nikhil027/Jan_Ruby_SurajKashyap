sentence = " Tomorrow Is a holiday"
letters = sentence.downcase.split("")
puts "#{letters}"
vowels = []
letters.each do |letter|
	if ['a','e','i','o','u'].include? letter
		vowels.push(letter)
	end
end

puts "Total Vowels : #{vowels.length}"