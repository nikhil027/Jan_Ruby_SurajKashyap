class DramasController < ApplicationController

	def index 
		@dramas = Drama.all #it fetches the data from the table Drama and all the rows are objects which are placed in dramas variable
	end

	def new
		@drama = Drama.new
	end

	def create
		@drama = Drama.new(drama_params)
		if @drama.save
			redirect_to drama_path(@drama), notice: "Successfully created drama"
		else
			render action: "new"
		end
	end

	def show
		@drama = Drama.find(params[:id])
	end

	def edit
		@drama = Drama.find(params[:id])
	end

	def update
		@drama = Drama.find(params[:id])
		if @drama.update_attributes(drama_params)
			redirect_to drama_path(@drama), notice: "Successfully updated Drama"
		else
			render action: "edit"
		end
	end

	def destroy
		@drama = Drama.find(params[:id])
		if @drama.destroy
			redirect_to dramas_path, notice: "Successfully deleted drama"
		else
			redirect_to :back
		end
	end

	private
	#strong parameters # mass parameters
	def drama_params
		params[:drama].permit(:name, :language, :description, :release_date)
	end

end
