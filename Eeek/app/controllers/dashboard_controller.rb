class DashboardController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user = current_user
		@uploads = Upload.where(user_id: @user.id)
		# if @uploads.length > 0
			num = rand(0..@uploads.length)
			@upload = @uploads[num]
		# end 
	end

end
