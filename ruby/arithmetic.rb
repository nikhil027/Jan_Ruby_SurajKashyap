
def arithmetic(n1,n2,operator)
	result = 0
	case operator # equality of operator
	when "add"
		result = n1+ n2
		#return n1 + n2
	when "multiply"
		result = n1 * n2
		#return n1 * n2
	when "sub"
		result = n1 - n2
		#return n1 - n2
	else
	    result = "Invalid Operator"
	    #return "Invalid Operator"
	end
end

puts arithmetic(5,2, "add")
puts arithmetic(5,2, "multiply")
puts arithmetic(5,2, "sub")
