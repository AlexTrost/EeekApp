class ContactsController < ApplicationController

	def index
		p "index" * 50
	end

	def create
		@contact = Contact.new(contact_params)
		@contact.user_id = current_user.id
		respond_to do |format|
			if @contact.save
				format.js { render :create_contact_success }
			else
				format.js { render :create_contact_fail }
			end
		end
	end

	def new
		respond_to do |format|
				format.js { render :render_new_contact_form }
		end
	end

	def update
	end

	def destroy
	end

	private
 
  def contact_params
    params.require(:contact).permit(:contact_name, :phone_number, :user_id)
  end


end