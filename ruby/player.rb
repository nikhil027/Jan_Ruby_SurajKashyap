class Player
	#name,team,strike rate 
	def name=(name)
		@name = name
	end

	def name
		@name
	end

	def team=(team)
		@team = team
    end

    def team
    	@team
    end

    def strike_rate=(strike_rate)
    	@strike_rate = strike_rate
    end

    def strike_rate
    	@strike_rate
    end

    def details
    	"#{@name.upcase} - #{@team.upcase} - #{@strike_rate}"
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
players.push(p1,p2,p3)
puts "Total number of players is "




