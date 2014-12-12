class UsersController < ApplicationController

	def index
		render action: "main"
	end

	def login
		p "hloe" * 50
		user = User.find_by(email: params[:email])
		if user.password == params[:passoword]
			redirect_to action: 'index'
		end
	end

	def create
	 		
	end

	def destory
		
	end

	private
 
  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

end
