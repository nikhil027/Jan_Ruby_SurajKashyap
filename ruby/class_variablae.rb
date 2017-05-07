=begin 
@name - instance variable

@@account - class variable
=end
class Product
	@@count = 0
	attr_accessor :name, :price

	def initialize(name,price)
		@name = name
		@price = price
		@@count += 1
	end

	def details #instance
		"#{name} - INR #{price}"
	end

	def self.count #classs method / Product.count
		@@count
	end
end

p1 = Product.new("Marker", 25)
p2 = Product.new("Eraser", 10)
p3 = Product.new("Scale", 10)

puts "There are #{Product.count} products"