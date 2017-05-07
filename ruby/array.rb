numbers = []
team = "RCB"
player_scores = [10,20,45,50,9]
product_prices = [12,15,25,30,45.5]
players = ["virat", "dhoni", "sachin", "dravid"]
teams = ["rcb", "dd", "csk", "srh", "rcb", "dd"] 

puts numbers.class # Array
puts numbers.is_a? Array # checks whether the object is an Array. true or can be also be written numbers.class == Array
puts team.is_a? Array # false
puts player_scores[0] # 10
puts player_scores[2] # 45
puts "#{player_scores}" # player_scores.to_s
ayers : #{players.length}"
puts "unique teams : #{teams.uniq}" #returns only the unique values
puts "unique teams : #{teams.uniq.sort}" #returns only the unique values with sort order

players.push("Jadeja") # add a value to the end of the array
puts "#{players}"
players.push("Raina", "Yuvraj")
puts "#{players}"

players.pop #re
puts "#{players}"
puts "#{players.join(',')}"
puts "#{player_scores.sort}" #sorts in the ascending order
puts "#{players.sort}" #sorts in alphabetical order

puts "total plmoves the last value ie yuvaraj from the array
puts "#{players}"

players.shift #removes the first value from the array
puts "#{players}"

players.unshift("Virat") #adds the value at the begining of the array
puts "#{players}"

players.insert(1, "Murali") #adds value at a certain index, 1st argument is index and 2nd argument is value
puts "#{players}"

players.insert(3, "Ashwin")
puts "#{players}"