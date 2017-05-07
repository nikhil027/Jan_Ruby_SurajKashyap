class HomeController < ApplicationController
  def search
  end

  def results
  	technology = params[:technology]
      city = params[:city]
      @response = HTTParty.get("http://api.indeed.com/ads/apisearch?publisher=7277146494571922&q=#{technology}&l=#{city}&co=in&v=2&limit=25&format=json")
  end
end
