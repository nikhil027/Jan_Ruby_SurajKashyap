numbers = (1..50).to_a
numbers.each do |number|
	if number % 3 == 0 
		puts "FIZZ"
	elsif number % 5 == 0 
		puts "BUZZ"
	else
		puts number
	end
end

