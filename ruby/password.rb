=begin
puts "Enter your password"
password = gets.chomp
password_length = password.length
#if password.length > 6 
if password_length > 6
	puts "Password is strong"
else
	puts "Password is weak"
end
=end

puts "Enter your password"
password = gets.chomp
puts "Confirm password"
password_confirmation = gets.chomp

=begin
if password == password_confirmation
  if password.length > 6
  	puts "Password is strong"
  else
  	puts "Password is weak"
  end
else
  puts "Password does not match"	
end
=end

if password != password_confirmation
	puts "Password does not match"
elsif password.length > 6
	puts "Password is strong"
else 
	puts "Password is weak"
end
