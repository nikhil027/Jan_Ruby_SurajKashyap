#initialization, conditon  & incrementation

#times
numbers = []
10.times do
 	#puts "Jai Hind"
 	numbers.push(Random.rand(100))	
end
puts "#{numbers}"

#.each

numbers.each do |number|
	puts number * 3
end

#for in
for num in numbers
	puts num + 3
end
