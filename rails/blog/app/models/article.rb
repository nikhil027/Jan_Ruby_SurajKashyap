 class Article < ActiveRecord::Base
	
	has_many :article_categories
	has_many :categories, through: :article_categories


	has_many :comments
	validates_presence_of :title, :body
	validates_length_of :body, minimum: 10

	validate :check_published_date

	private

	def check_published_date
		if self.published_date > Date.today + 1.month
			errors.add(:published_date," can not be greater than 1 month")
		end
	end

	def check_published_date
		if self.published_date <= Date.today && self.published == false
			errors.add(:published,"Cannot be added")
		end
	end

end


