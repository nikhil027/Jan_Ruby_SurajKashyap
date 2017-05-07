=begin 
items = {
	"starters" => ["soup", "masala papad", "gobi manchurian"],
	"main_course" => ["butter kulcha", "panner butter masala"],
	"deserts" => ["gudbud icecream"],
	"bill_amount" => 500,
	"restaurant" => "UD",
	"location" => "Jayanagar",
}
puts "starters : #{items["starters"]}"
puts "main_course : #{items["main_course"]}"
puts "Total Bill : #{items["bill_amount"]}"
=end

resume = {
	"Name" => "MANNY FACTURE",
	"E-mail" => "mfacture@andrew.cmu.edu",
	"Address" => ["Current Address", "Permanent Address"],
	"Current Address :" => "SMC 123, 5032 Forbes Avenue. Pittsburgh, PA 15289 Cell: (412) 511-4422 ",
	"Permanent Address :" => "21 School Avenue, New York, NY 10014",

	"Objective" => "To obtain a summer internship in the Mechanical Engineering Industry that will utilize my analytical and leadership skills",
    "Education" => ["Carnegie Mellon Universities","New York High School"],
    "Carnegie Mellon Universities" => ["Pittsburgh,PA", "Bachelor of Science in Mechanical Engineering, May 2017", "Double Major in Engineering & Pblic Policy", "Major GPA: 3.0/4.0"],
    "New York High School" => ["New York, NY", "Hogh School Diploma, June 2013", "GPA 3.8/4.0"]
}
puts "Name : #{resume["Name"]}"
puts "E-mail : #{resume["E-mail"]}"
puts "Address : #{resume["Current Address"],["Permanent Address"]}"