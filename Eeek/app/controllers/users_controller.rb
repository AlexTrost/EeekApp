class UsersController < ApplicationController

	def index
	end

	def login
		p "2" * 100
		if params[:email] == "" || params[:password] == ""
			flash[:error] = "Email and Password fields cannot be blank"
			redirect_to controller: 'login', action: 'index'
		elsif User.find_by(email: params[:email]) == nil
			flash[:error] = "Email invalid"
			redirect_to controller: 'login', action: 'index'
		else
			user = User.find_by(email: params[:email])	
			if user.valid_password?(params[:password])
				sign_in(:user, user)
				redirect_to controller: 'home', action: 'index'
			else
				flash[:error] = "Password invalid"
				redirect_to controller: 'login', action: 'index'
			end
		end
	end

	def sign_up
		p "hohi" * 100
	end

	def create	
		p "ho" * 100
	end

	def new
	end

	def destory
		# this needs to be a thing...
	end

	private
 
  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

end
