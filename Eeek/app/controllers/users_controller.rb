class UsersController < ApplicationController

	def index
	end

	def login
		user = User.find_by(email: params[:email])
		if user.password == params[:passoword]
			sign_in(:user, user)
			redirect_to controller: 'dashboard', action: 'index'
		end

	end

	def create	
		User.
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
