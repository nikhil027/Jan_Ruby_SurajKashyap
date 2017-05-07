class Restaurant
	def name=(user_input_name) #writer method
		@name = user_input_name
	end

	def name #reader method
		@name
	end

	def location=(user_input_location) #writer method
		@location = user_input_location
	end

	def location #reader method
		@location
	end

	def ratings=(user_input_ratings)
		@ratings = user_input_ratings
	end

	def ratings
		@ratings
	end
end

r1 = Restaurant.new
r1.name = "1947"
r1.location = "Jayanagar"
puts r1.name + " " + r1.location

r2 = Restaurant.new
r2.ratings = "4"
r2.name = "Shiv Sagar"
puts r2.name+ " " +r2.ratings