class DashboardController < ApplicationController 
	before_filter :authenticate_user!

	def index
    @user = current_user
    @uploads = Upload.where(user_id: @user.id)
    @user_uploads = []
    @complimentary_uploads = []
    @uploads.each do |upload| 
      if upload.complimentary == "true" 
        @complimentary_uploads << upload
      else
        @user_uploads << upload
      end
    end
  end


end