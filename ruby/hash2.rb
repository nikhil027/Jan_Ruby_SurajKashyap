
sentence = "virat virat sachin sachin dhoni rahul rahul"
names = sentence.split(" ")
name_hash = {}
 names.uniq.each do |name|
 	name_hash[name] = names.find_all{|n| n == name}.count
 end

 name_hash.each do |key,value|
 	puts "#{key} : #{"*" * value}"
 end


number
