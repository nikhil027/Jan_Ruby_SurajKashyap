cont = "y"
while cont == "y"
	puts "Enter the numerator"
	numerator = gets.to_i #
	puts "Enter the denominator"
	denominator = gets.to_i
	if numerator || denominator.zero? #denominator == 0
		#next #go to the begining of the loop
	    break # comes out of the loop
        #exit # comes out the program
       else
	puts numerator / denominator
end
	puts "Do you wish to continue (y/n)"
	cont = gets.chomp
end
puts "We are outside the loop"
