class DashboardController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user = current_user
		@uploads = Upload.where(user_id: @user.id)
	end

end
