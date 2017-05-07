class Restaurant 
	attr_accessor :name, :location
	attr_reader :id

	def initialize(name,location)
		@id = Random.rand(1..100)
		@name = name
		@location = location
	end

	def details
		"#{self.id} - #{self.name} - #{self.location}"
	end

	def book_a_table
		"Your table has been book in #{self.name}"
	end

end

r1 = Restaurant.new("MTR", "Jayanagar")
puts r1.details
puts r1.book_a_table

r2 = Restaurant.new("Lavonne", "Indiranagar")
puts r2.details
puts r2.book_a_table

#instance and class methods cannot be exchanged
