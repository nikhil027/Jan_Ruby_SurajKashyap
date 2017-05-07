puts "Enter the sentence"
sentence = gets.chomp

arrays = sentence.split(' ')
reverse_array = arrays.reverse
join_array = reverse_array.join(' ')
puts join_array



