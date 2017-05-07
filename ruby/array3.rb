numbers = [10,20,-19,21,33,100,-99]
 
positive_numbers = numbers.find_all{|number| number > 0}
negative_numbers = numbers.find_all{|number| number < 0}
even_numbers = numbers.find_all{|number| number/2}
odd_numbers = numbers.find_all{|number| number%2==1}
puts "#{positive_numbers}"
puts "#{negative_numbers}"
puts "#{even_numbers}"
puts "#{odd_numbers}"
