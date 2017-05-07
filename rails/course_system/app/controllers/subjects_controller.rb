class SubjectsController < ApplicationController

	def index
		@subjects = Subject.all
	end

	def new 
		@subject = Subject.new
	end

	def create
		@subject = Subject.new(subject_params)
		if @subject.save
      		redirect_to subject_path(@subject), notice: "Successfully created Subject Id"
      	else
      		render action: "new"
      	end
    end

    def show
    	@subject = Subject.find(params[:id])
    end

    def edit 
    	@subject = Subject.find(params[:id])
    end

    def update
    	@subject = Subject.find(params[:id])
    	if @subject.update_attributes(subject_params)
    		redirect_to subject_path(@subject), notice: "Successfully updated Subject Id"
    	else
    		render action: "edit"
    	end
    end

    def destroy
    	@subject = Subject.find(params[:id])
		if @subject.destroy
			redirect_to subjects_path, notice: "Successfully deleted Subject Id"
		else
			redirect_to :back
		end
	end

    private
		def subject_params
			params[:subject].permit(:subject_name, :instructor_id, :description )
		end
end


