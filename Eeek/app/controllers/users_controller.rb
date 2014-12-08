class UsersController < ApplicationController

	def index
	end

	def login
		user = User.find_by(email: params[:email])
		if user.password == params[:passoword]
			redirect_to ""
		end
	end

	def create
		user = User.new(user_params)
	 	if user.save
	 		redirect_to ""
	 	end
	end

	private

	def user_params
		 params.require(:user).permit(:name, :email, :password)
	end

end
