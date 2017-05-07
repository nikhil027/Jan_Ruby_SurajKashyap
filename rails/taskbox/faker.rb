1000.times do
	product = Product.new
	product.name = Faker::Commerce.product_name
	product.price = Faker::Commerce.price(1..1000)
	product.category = Faker::Commerce.department(1)
	product.save	
end