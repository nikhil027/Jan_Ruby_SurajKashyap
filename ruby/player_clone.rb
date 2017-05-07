class Player
	# name,team,strike_rate
	# sets up the reader mathods for our attributes
	#attr_reader :name, :team, :strike_rate

	# sets up the writer methods for our attributes
	#attr_writer :name, :team, :strike_rate

	# sets up  both the reader methods and writer methods for our attributes
	attr_accessor :name, :team, :strike_rate

	def details
		"#{@name} - #{@team} - #{@strike_rate}"
	end
end

p1 = Player.new
p1.name = "Virat"
p1.team = "India"
p1.strike_rate = 48.8
puts p1.details

p2 = Player.new
p2.name = "Dhoni"
p2.team = "India"
p2.strike_rate = 50.5
puts p2.details

p3 = Player.new
p3.name = "Yuvraj"
p3.team = "India"
p3.strike_rate = 49.8
puts p3.details

players = []
#puts "#{players}"
players.push(p1,p2,p3)
#puts "#{players}"

puts "*" * 50
puts "\t\t Player Details"
puts "*" * 50
puts "Total Players : #{players.length}"

sum = 0
#iterating over array of objects
players.each do |player| #here player is a block variable holding the player object
	sum += player.strike_rate
	puts player.details
    # puts player.name + " " + player.team + " " player.strike_rate.to_s
end

puts "*" * 50
puts "Average Strike Rate : #{(sum / players.length).round(2)}"

# working with a single object
puts p1.name
puts p1.details

