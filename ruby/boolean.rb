names = []
numbers = [1,2]
products = {"ipad" => 10 , "macbook" => 5}

puts names.empty? #true
puts 10.between?(9,13) #true
puts numbers.include? 11
puts products.has_key? ("iphone")
puts products.has_value? (5)