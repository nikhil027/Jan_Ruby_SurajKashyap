numbers = {"suraj" => "9741940937", "gokul" => "8123440326", "vishnu" => "9645002001"}

puts numbers.class
puts numbers["suraj"] # return value
puts numbers["suraj"] = "0123456789"
puts numbers.key("8123440326") #return key
puts numbers["mahesh"] #returns nil when key not found
puts numbers.key("0987654321") # returns nil when value not found
puts "#{numbers.keys}" #returns an array of keys
puts "#{numbers.values}"#returns an array of values
puts numbers.length # returns the number of key:value pairs in hash
puts "#{numbers.to_a}" #returns a 2 dimentional array

# to add a new k:v pair we need to assign a key some value
numbers["sujith"] = "9912343257"
puts numbers

#interation over a hash
puts "*" * 50
puts "\t\tContact Book"
puts "*" * 50
numbers.each do |key,value|
	puts "#{key.capitalize} : #{value}"
end