require 'httparty'

puts "Enter the State name"
state_name = gets.chomp

response = HTTParty.get("http://localhost:3000/api/states?name=#{state_name}")

puts "state: #{response["name"]}"
puts "Transport.Code: #{response["transport_code"]}"
puts "Total RTO's : #{response["rtos"].size}" 
puts "*" * 50
puts "\t\t Listing RTO's"
puts "*" * 50

response["rtos"].each do|rto_details|
	rto_details.each do |key, value|
		puts "#{key} : #{value}"
	end
	puts "*" * 50
end