numbers = [1,2,3,4,5,6,7,8,9,0]

n1 = numbers.join.slice 0..2 
n2 = numbers.join.slice 3..5
n3 = numbers.join.slice 6..9

output = n1  + " " + n2 + "-" + n3
puts "#{output}"
