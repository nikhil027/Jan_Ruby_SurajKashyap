class Api::StatesController < ApplicationController

  def index
   if params[:name]
   		@state = State.find_by_name(params[:name].capitalize)
   end
  end


end
