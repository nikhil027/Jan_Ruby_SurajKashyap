puts"Enter a sentence"
sentence = gets.chomp
arrays = sentence.split(',')
output = []
arrays.each do |array|
	puts array.length
	output.pusharray.length
end
puts output