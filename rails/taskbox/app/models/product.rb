class Product < ActiveRecord::Base
#first name, mobile, email
validates_presence_of :name, :price

validates_numericality_of :price, greater_than: 1
end
