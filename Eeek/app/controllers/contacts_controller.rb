class ContactsController < ApplicationController

	def index
	end

	def create
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