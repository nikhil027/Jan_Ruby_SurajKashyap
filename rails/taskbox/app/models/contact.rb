class Contact < ActiveRecord::Base
#first name, mobile, email
validates_presence_of :first_name, :email, :mobile

validates_numericality_of :mobile
validates_length_of :mobile, is:10
validates_uniqueness_of :mobile, :email
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

end

