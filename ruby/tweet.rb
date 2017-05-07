#body, user, id
class Twitter
	attr_accessor :tweet, :user

	#we use attr_reader because we just want to return the value
	attr_reader :id

	#this is thr constructor
	def initialize
	 @id = Random.rand(1..1000)
	end

	def display_tweet
		if self.tweet.length <= 20 
			"(#{self.id}) #{self.user} tweeted, \"#{self.tweet}\""
		else
			"Tweet is too long. Try shortening it."
	    end
	end
end

t1 = Twitter.new
t1.user = "rahul"
t1.tweet = "Bangalore Aero Show is Awesome"

puts t1.display_tweet
#t1.id = 111
