class StudentsController < ApplicationController

	def index
		@student = Student.all
	end

	def new 
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
      		redirect_to student_path(@student), notice: "Successfully created Student Id"
      	else
      		render action: "new"
      	end
    end

    def show
    	@student = Student.find(params[:id])
    end

    def edit 
    	@student = Student.find(params[:id])
    end

    def update
    	@student = Student.find(params[:id])
    	if @student.update_attributes(student_params)
    		redirect_to student_path(@student), notice: "Successfully updated Student Id"
    	else
    		render action: "edit"
    	end
    end

    def destroy
    	@student = Student.find(params[:id])
		if @student.destroy
			redirect_to students_path, notice: "Successfully deleted Student Id"
		else
			redirect_to :back
		end
	end

    private
		def student_params
			params[:student].permit(:student_name, :email, :major )
		end
	end



