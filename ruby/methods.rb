def greeting(title,name) #greeting method name, name is the parameter
	puts "Good Evening #{title}. #{name}"
end
 greeting("Mr","Ravi") # here "Ravi" is an argument
 greeting("Mrs","Smitha")
 greeting("Rekha","Ms") # order passing arguments matter
 #greeting() 0 for 1
 #greeting("Mr","Ravi") #2 for 1

 def addition(n1,n2)
 	number1 = n1 + 5
 	number2 = n2 + 5
 	return (number1 + number2 + n2)
    #return (number1 + number2 + n2), "hello" # multiple values can be returned, it will be sent back as an array
    "Hello"
 end

 puts addition(10,20)
 #puts "#{addition(10,20)}"