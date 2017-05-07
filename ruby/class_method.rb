class Product
	@@products = [] #class variables used to hold all objects
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def details # instance
		"#{name} - INR #{price}"
	end

	def self.add_to_list(product) # method defined to add product to array
		@@products.push(product)
	end


	def self.all #class method defined to return values of class variable
		@@products
	end
 
 

end

p1 = Product.new("Marker", 25)
Product.add_to_list(p1)
p2 = Product.new("Marker", 10)
Product.add_to_list(p2)
p3 = Product.new("scale", 10)
Product.add_to_list(p3)
p4 = Product.new("Eraser", 5)
Product.add_to_list(p4)

puts "*" * 50
puts "\t\t Listing Products (#{Product.all.length})"
puts "*" * 50
sl_no = 1
Product.all.each do |product|
	puts "#{sl_no}. #{product.details}"
	sl_no += 1
end

puts "*" * 50
puts "\t\t Listing P"

