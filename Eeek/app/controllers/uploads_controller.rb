class UploadsController < ApplicationController
  protect_from_forgery except: :index
  # include 'Feedback'
  # HardWorker.perform_async('bob', 5)

  def index
    @uploads = Upload.all
  end

  def new
    # @upload = Upload.new
    respond_to do |format|
        format.js { render :render_new_upload_form }
    end
  end

  def create
    p current_user * 80
    param[:user_id] = current_user.id
    @upload = Upload.new(upload_params)
    @upload.user_id = current_user.id
    respond_to do |format|
      if @upload.save
        p "ho" * 100
        format.js { render :upload_confirm }
        # session[:upload_success] = "Upload successful"
        # redirect_to dashboard_index_path, notice: "The upload #{@upload.name} has been uploaded."
      else
        format.js { render :upload_fail }
        # session[:upload_error] = @upload.errors
      end
    end
  end

  def trigger
    p current_user.id * 100
    uploads = Upload.where(user_id: current_user.id)
    num = rand(1..uploads.length)
    @upload = uploads[num]
    # HardWorker.perform_async("howdy")
    respond_to do |format|
        format.js { render :render_feed }
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to uploads_path, notice:  "The upload #{@upload.name} has been deleted."
  end

private
  def upload_params
    params.require(:upload).permit(:name, :attachment, :user_id)
  end
end
