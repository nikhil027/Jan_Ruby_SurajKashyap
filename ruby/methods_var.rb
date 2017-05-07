#variable number of arguments

# parameter == arguments

def total(*prices) # * as parameter, we are denoting variable number of args and it is of type array
=begin
	sum = 0
	prices.each do |price|
		sum = sum + price
	end
	return sum
=end
 return prices.inject(:+)
end
puts total(100)
puts total(10,20,30)
puts total(25,100,25,75)
