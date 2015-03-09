class UploadsController < ApplicationController
  protect_from_forgery except: :create
  before_filter :authenticate_user!
  
  # include 'Feedback'
  # HardWorker.perform_async('bob', 5)

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

  def new
    #  @upload = Upload.new
    respond_to do |format|
        format.js { render :render_new_upload_form }
    end
  end

  def create
    params[:user_id] = current_user.id
    @upload = Upload.new(upload_params)
    @upload.user_id = current_user.id
    respond_to do |format|
      if @upload.save
        # format.js { render :'upload_confirm' }
        # format.html { render :'dashboard/index' }
        format.html {redirect_to dashboard_index_path, notice: "The upload #{@upload.name} has been uploaded."}
      else
        format.js { render :upload_fail }
      end
    end
  end

  # def trigger
  #   uploads = Upload.where(user_id: current_user.id)
  #   num = rand(1..uploads.length)
  #   @upload = uploads[num]
  #   current_id = current_user.id
  #   HardWorker.perform_async(current_id)
  #   respond_to do |format|
  #       format.js { render :render_feed }
  #       format.html {redirect_to dashboard_index_path}
  #   end
  # end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to uploads_path, notice:  "The upload #{@upload.name} has been deleted."
  end

private
  def upload_params
    params.require(:upload).permit(:attachment, :text, :user_id)
  end
end
