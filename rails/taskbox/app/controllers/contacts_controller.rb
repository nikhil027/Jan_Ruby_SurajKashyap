class ContactsController < ApplicationController
def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new
	end
	
	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			redirect_to contact_path(@contact), notice: "Successfully created Contact"
		else
			render action: "new"
		end
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update_attributes(contact_params)
			redirect_to contact_path(@contact), notice: "Successfully updated Contact"
		else
			render action: "edit"
		end
	end

	def destroy
		@contact = Contact.find(params[:id])
		if @contact.destroy
			redirect_to contacts_path, notice: "Successfully deleted contact"
		else
			redirect_to :back
		end
	end

	private
	def contact_params
        params[:contact].permit(:first_name , :mobile, :email)
    end
end



