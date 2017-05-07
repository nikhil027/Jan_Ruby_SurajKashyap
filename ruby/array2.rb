numbers = [45,55,70,65,70,58,50]
=begin
puts "Enter the number : "
search_number = gets.to_i

output = numbers.find_all{|number| number == search_number}
if output.empty?
	puts "No numbers found"
else
	puts "searched number is found, it appears #{output.count} times"
end
=end

names = ["virat", "virat", "virat", "sachin", "dhoni", "dhoni"]

virat = names.find_all{|name| name == "virat"}
sachin = names.find_all{|name| name == "sachin"}
dhoni = names.find_all{|name| name == "dhoni"}

puts "virat #{"*" * virat.count}"
puts "sachin #{"$" * sachin.count}"
puts "dhoni #{"#" * dhoni.count}"