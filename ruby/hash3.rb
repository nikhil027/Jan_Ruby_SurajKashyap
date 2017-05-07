given_numbers = "4538559310"
# output 0101111000
output = ""
numbers = given_numbers.split("")
numbers.each do |number|
	if number.to_i >= 5
		output += 1.to_s #output = output + 1
	else
		output += 0.to_s #output = output + 0
    end
  end
 puts given_numbers
 puts output

output = []
numbers = given_numbers.split("")
numbers.each do |number|
	if number.to_i >= 5
		output.push(1)
	else
		output.push(0)
	end
end

puts output.join("")