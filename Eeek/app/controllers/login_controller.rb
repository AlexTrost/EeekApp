class LoginController < ApplicationController

	def index
		if user_signed_in?
			redirect_to :controller => 'home', :action => 'index'
		end
	end

	private

	def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
