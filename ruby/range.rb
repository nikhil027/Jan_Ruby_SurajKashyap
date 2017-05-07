numbers = 1..100 #inclusive
numbers_1 = 150...200 #exclusive

puts numbers.begin
puts numbers.end

puts numbers.include? 88 #true
puts numbers.include? 100 # true

puts numbers_1.include? 200 #false

#converts a range to an array
puts "#{numbers.to_a}"
puts "#{numbers_1.to_a}"
