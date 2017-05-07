class InstructorsController < ApplicationController

	def index
		@instructor = Instructor.all
	end

	def new 
		@instructor = Instructor.new
	end

	def create
		@instructor = Instructor.new(instructor_params)
		if @instructor.save
      		redirect_to instructor_path(@instructor), notice: "Successfully created Instructor Id"
      	else
      		render action: "new"
      	end
    end

    def show
    	@instructor = Instructor.find(params[:id])
    end

    def edit 
    	@instructor = Instructor.find(params[:id])
    end

    def update
    	@instructor = Instructor.find(params[:id])
    	if @instructor.update_attributes(instructor_params)
    		redirect_to instructor_path(@instructor), notice: "Successfully updated Instructor Id"
    	else
    		render action: "edit"
    	end
    end

    def destroy
    	@instructor = Instructor.find(params[:id])
		if @instructor.destroy
			redirect_to instructors_path, notice: "Successfully deleted Instructor Id"
		else
			redirect_to :back
		end
	end

    private
		def instructor_params
			params[:instructor].permit(:instructor_name, :email, :biography )
		end
	end


end
