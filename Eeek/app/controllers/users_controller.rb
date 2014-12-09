class UsersController < ApplicationController

	def index
	end

	def login
		p "hloe" *50
		user = User.find_by(email: params[:email])
		if user.password == params[:passoword]
			render action: "main"
		end
	end

	def create
		user = User.new(user_params)
	 	if user.save
	 		render action: "main"
	 	end
	end

	private

	def user_params
		 params.require(:user).permit(:name, :email, :password)
	end

end
