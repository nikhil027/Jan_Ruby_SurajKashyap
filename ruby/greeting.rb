puts "Enter your name: "
name = gets.chomp # .chomp removes the new line character
current_hour = Time.now.hour 

if current_hour > 0 && current_hour < 12
	puts "Good Morning " + name
elsif current_hour >= 12 && current_hour < 16
	puts "Good Afternoon " + name
elsif current_hour >= 16 && current_hour < 21
	puts "Good Evening " + name
else
	puts "Good Night" + name
end
	 