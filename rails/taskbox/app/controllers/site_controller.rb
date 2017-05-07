class SiteController < ApplicationController
  def home
  	@contacts = Contact.order('first_name ASC') #DESC
  	@student = Student.all
  end

  def contact
  end

  def about
  end

  def services
  end
  
end
