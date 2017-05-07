require 'pry'
players = "virat virat sachin sachin dhoni rahul rahul"
team_players = players.split('')
player_hash = {}
binding.pry 
team_players.each do |player|
	binding.pry
	player_hash[player] = team_players.count(player)
	binding.pry
end

binding.pry
player_hash.each do |player.count| # player = key, count = value
	binding.pry
	puts "#{player} - #{"*" * count}"
end

=begin
virat - **
sachin - **
dhoni - *
rahul - **
=end
