class PublicationsController < ApplicationController

	def index
		@publications = Publication.all
	end

	def new 
		@publication = Publication.new
	end

	def create
		@publication = Publication.new(publication_params)
		if @publication.save
      		redirect_to publication_path(@publication), notice: "Successfully created Publication Id"
      	else
      		render action: "new"
      	end
    end

    def show
    	@publication = Publication.find(params[:id])
    end

    def edit 
    	@publication = Publication.find(params[:id])
    end

    def update
    	@publication = Publication.find(params[:id])
    	if @publication.update_attributes(publication_params)
    		redirect_to publication_path(@publication), notice: "Successfully updated Student Id"
    	else
    		render action: "edit"
    	end
    end

    def destroy
    	@publication = Publication.find(params[:id])
		if @publication.destroy
			redirect_to publications_path, notice: "Successfully deleted Student Id"
		else
			redirect_to :back
		end
	end

    private
		def publication_params
			params[:publication].permit(:instructor_id, :title, :link )
		end
	end


end
