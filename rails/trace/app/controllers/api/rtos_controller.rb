class Api::RtosController < ApplicationController

	def index
   		if params[:vehicle_number]
   		@rto = Rto.find_by_vehicle_number(params[:vehicle_number])
   end
  end
end
