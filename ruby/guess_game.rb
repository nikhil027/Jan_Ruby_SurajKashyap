puts "Enter player name: "
name = gets.chomp
puts "Welcome to the game " + name
target = Random.rand(1..100)
player_guess_count = 0
max_guess_count = 10
puts target
while player_guess_count < max_guess_count
	puts "chances remaining : #{max_guess_count - player_guess_count}" #string interpolation -inside a ring to execute ruby code
	puts "Guess my number : "
	guess = gets.to_i # to_i : type conversion , from string to integer
	if guess < target
        puts "Oops.Your guess was LOW"
        min = guess
	elsif guess > target
		puts "Oops.Your guess was HIGH"
		max = guess
	else
		puts "Good Job, #{name}"
		break
	end
	player_guess_count += 1
end

if player_guess_count == 10
	puts "Sorry.You did'nt get my number.My number was #{target}"
end