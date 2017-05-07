require 'httparty'
key = "pRPLCejozFwCHFbVCR"
puts "Enter your first name"
name = gets.chomp
response = HTTParty.get("https://www.gender-api.com/get?name=#{name}&key=#{key}")
gender = response.parsed_response["gender"]
puts "The Gender of #{name} is #{gender}"
